uint64_t sub_1B0436D1C()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1B0E46A78();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xB0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.mailboxSpecificAppendLimit = 0x494C444E45505041;
  *algn_1EB738088 = 0xEB0000000054494DLL;
  qword_1EB738090 = v0;
  byte_1EB738098 = v4 & 1;
  return result;
}

uint64_t sub_1B0436E04()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1B0E46A78();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x40000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.idle = 1162626121;
  *algn_1EB738028 = 0xE400000000000000;
  qword_1EB738030 = v0;
  byte_1EB738038 = v5 & 1;
  return result;
}

void sub_1B0436EE0(uint64_t a1)
{
  if (!qword_1EB6DD140)
  {
    type metadata accessor for ClientCommand(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6DD140);
    }
  }
}

void sub_1B0436F48(uint64_t a1)
{
  type metadata accessor for ClientCommand(319);
  if (v1 <= 0x3F)
  {
    sub_1B0436EE0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1B0436FE0(uint64_t a1)
{
  result = sub_1B0E43DF8();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UnauthenticatedStateWithTasks(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B0437068(uint64_t a1)
{
  sub_1B043710C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnauthenticatedState(319);
    if (v2 <= 0x3F)
    {
      sub_1B043B4CC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B043710C(uint64_t a1)
{
  if (!qword_1EB6DAD88)
  {
    sub_1B0437168();
    v1 = sub_1B0E45588();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6DAD88);
    }
  }
}

unint64_t sub_1B0437168()
{
  result = qword_1EB6DCEE8;
  if (!qword_1EB6DCEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCEE8);
  }

  return result;
}

unint64_t sub_1B04371C0()
{
  result = qword_1EB6DCEE0;
  if (!qword_1EB6DCEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCEE0);
  }

  return result;
}

uint64_t type metadata accessor for UnauthenticatedState(uint64_t a1)
{
  result = qword_1EB6DCDF8;
  if (!qword_1EB6DCDF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B0437260(uint64_t a1)
{
  sub_1B0437328(319);
  if (v1 <= 0x3F)
  {
    sub_1B043739C();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Authenticator(319);
      if (v3 <= 0x3F)
      {
        sub_1B043B15C(319);
        if (v4 <= 0x3F)
        {
          sub_1B043B450(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B0437328(uint64_t a1)
{
  if (!qword_1EB6DB640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E53D8, &qword_1B0ECFC78);
    v1 = sub_1B0E45D88();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6DB640);
    }
  }
}

void sub_1B043739C()
{
  if (!qword_1EB6DB648)
  {
    v0 = sub_1B0E45358();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DB648);
    }
  }
}

void sub_1B04373EC(uint64_t a1)
{
  sub_1B04374F0();
  if (v1 <= 0x3F)
  {
    sub_1B0437540(319, &qword_1EB6DAD80, sub_1B04375A0, &type metadata for MechanismKind);
    if (v2 <= 0x3F)
    {
      sub_1B0437540(319, &qword_1EB6DAD70, sub_1B0437648, &type metadata for AuthenticationFailure);
      if (v3 <= 0x3F)
      {
        sub_1B0439D0C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B04374F0()
{
  if (!qword_1EB6DB450)
  {
    v0 = sub_1B0E45358();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DB450);
    }
  }
}

void sub_1B0437540(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1B0E45588();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1B04375A0()
{
  result = qword_1EB6DCE98;
  if (!qword_1EB6DCE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCE98);
  }

  return result;
}

unint64_t sub_1B04375F4()
{
  result = qword_1EB6DCE90;
  if (!qword_1EB6DCE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCE90);
  }

  return result;
}

unint64_t sub_1B0437648()
{
  result = qword_1EB6DCDF0;
  if (!qword_1EB6DCDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCDF0);
  }

  return result;
}

unint64_t sub_1B04376A0(uint64_t a1)
{
  v5 = qword_1EB6DECE0;
  if (!qword_1EB6DECE0)
  {
    sub_1B0E43108();
    v4 = sub_1B0E45D88();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EB6DECE0);
      return v2;
    }
  }

  return v5;
}

void sub_1B043773C(uint64_t a1)
{
  sub_1B0E443C8();
  if (v1 <= 0x3F)
  {
    sub_1B04377C8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B04377C8()
{
  if (!qword_1EB6DCA50)
  {
    v0 = sub_1B0E45D88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DCA50);
    }
  }
}

void OUTLINED_FUNCTION_8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_13(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

uint64_t type metadata accessor for Authenticator(uint64_t a1)
{
  result = qword_1EB6DCEA0;
  if (!qword_1EB6DCEA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *OUTLINED_FUNCTION_9(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void OUTLINED_FUNCTION_0_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_0_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_0_8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 2u);
}

uint64_t sub_1B04379A8(uint64_t *x0_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1B043A7A4(x0_0, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    type metadata accessor for ResponsePayload(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_1B04379F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  result = sub_1B0D9F404(a1, a2, a3);
  if (!v4)
  {
    v10 = result;
    sub_1B0DFE880(0x45474E5550584520uLL, 0xE800000000000000, 0, 0, a1, a2, a3);
    *a4 = v10;
    type metadata accessor for MessageData(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_1B0437A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, void *a9@<X8>, unint64_t a10, void (*a11)(uint64_t, uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = sub_1B0DFE880(a8, a10, 0, 0, a1, a2, a3);
  if (!v11)
  {
    v21 = MEMORY[0x1E69E7CC0];

    a11(a1, &v21, a2, a3, a4, a5, a6, a7);

    *a9 = v21;
    type metadata accessor for MessageData(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_1B0437B90(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v13 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_26;
  }

  v11 = a3;
  if (v13 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v17 = v11;
    goto LABEL_7;
  }

  v7 = a1;
  v10 = a7;
  v9 = *a1;
  v12 = a1[1];
  v37 = *(a1 + 10);
  v38 = *(a1 + 4);
  v36 = *(a1 + 22);

  sub_1B0DFE880(0x204449uLL, 0xE300000000000000, 0, 0, v7, v13, v11);
  if (v8)
  {

LABEL_5:
    *v7 = v9;
    v7[1] = v12;
    *(v7 + 4) = v38;
    *(v7 + 10) = v37;
    *(v7 + 22) = v36;
LABEL_7:
    swift_willThrow();
    return v10;
  }

  v10 = sub_1B0DB4BEC(v7, v13, v11, a4, a5, a6, v10);
  if (v13 + 1 >= v11)
  {
    sub_1B0439BCC();
    v21 = swift_allocError();
    *v22 = v11;
LABEL_30:
    swift_willThrow();
    v40 = v21;
    v30 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {

      return v10;
    }

    goto LABEL_5;
  }

  v33 = *(v7 + 2);
  v35 = *(v7 + 12);
  v32 = *(v7 + 10);
  v31 = *(v7 + 22);
  v34 = *v7;
  if (sub_1B0E46A78())
  {
LABEL_26:

    if (v13 + 2 < v11)
    {
      v19 = 10;
      goto LABEL_17;
    }

LABEL_28:
    v28 = v34;

    sub_1B0439BCC();
    v21 = swift_allocError();
    *v29 = v11;
    v20 = v33;
    goto LABEL_29;
  }

  result = sub_1B0E44818();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  result = sub_1B0C04CF0(0x2BuLL, 0xE100000000000000);
  if ((result & 0x100000000) != 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if ((result & 0xFFFFFF80) != 0)
  {
    goto LABEL_34;
  }

  result = sub_1B0C04CF0(0x2BuLL, 0xE100000000000000);
  if ((result & 0x100000000) == 0)
  {
    v19 = result;
    if ((result & 0xFFFFFF00) == 0)
    {
      if (v13 + 2 < v11)
      {
LABEL_17:
        v20 = v33;
        if (v35 == v33)
        {
          sub_1B0D3EA30();
          v21 = swift_allocError();
LABEL_24:
          swift_willThrow();
          v28 = v34;

LABEL_29:
          swift_willThrow();
          *v7 = v28;
          *(v7 + 2) = v20;
          *(v7 + 12) = v35;
          *(v7 + 10) = v32;
          *(v7 + 22) = v31;
          goto LABEL_30;
        }

        result = swift_beginAccess();
        if (v33 != -1)
        {
          v23 = *(*(v34 + 24) + (v31 | (v32 << 8)) + v33);
          *(v7 + 2) = v33 + 1;
          if (v23 == v19)
          {

            return v10;
          }

          sub_1B0E46298();

          strcpy(v39, "looking for ");
          BYTE5(v39[1]) = 0;
          HIWORD(v39[1]) = -5120;
          v24 = sub_1B0E469C8();
          MEMORY[0x1B2726E80](v24);

          MEMORY[0x1B2726E80](0x20646E756F6620, 0xE700000000000000);
          LOBYTE(v40) = v23;
          v25 = sub_1B0E469C8();
          MEMORY[0x1B2726E80](v25);

          v26 = v39[1];
          sub_1B0436554();
          v21 = swift_allocError();
          *v27 = v39[0];
          v27[1] = v26;
          v27[2] = 0xD000000000000020;
          v27[3] = 0x80000001B0F2FA10;
          v27[4] = 295;
          v20 = v33;
          goto LABEL_24;
        }

        goto LABEL_36;
      }

      goto LABEL_28;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1B04380C8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v127 = a3;
  v128 = a2;
  v119 = a1;
  v110 = sub_1B0E429A8();
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v108 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  MEMORY[0x1EEE9AC00](v117);
  v118 = (&v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5468, &qword_1B0ED0458);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v123 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v116 = &v106 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v113 = &v106 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v111 = &v106 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v112 = &v106 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v122 = &v106 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v121 = &v106 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v115 = &v106 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v114 = &v106 - v22;
  v23 = sub_1B0E441D8();
  v120 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v106 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v106 - v30;
  v32 = sub_1B0E43DF8();
  v124 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v106 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v106 - v36;
  v38 = type metadata accessor for ConnectionEvent(0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v106 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v125 = *(v41 - 8);
  v126 = v41;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v106 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0446B60(v128, v40, type metadata accessor for ConnectionEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v106 = v31;
    v107 = v28;
    v49 = v121;
    v50 = v122;
    v51 = v37;
    v52 = v123;
    v53 = v124;
    v54 = v32;
    v55 = v120;
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v56 = v51;
        v57 = v54;
        (*(v124 + 32))(v51, v40, v54);
        (*(v53 + 16))(v34, v56, v57);
        v58 = (*(v53 + 88))(v34, v57);
        v59 = v23;
        if (v58 == *MEMORY[0x1E6977C18])
        {
          (*(v53 + 96))(v34, v57);
          v60 = v107;
          (*(v55 + 32))(v107, v34, v59);
          v61 = v118;
          (*(v55 + 16))(v118, v60, v59);
          swift_storeEnumTagMultiPayload();
          v62 = v115;
          CommandConnection.RecentErrors.Error.init(time:kind:)(v119, v61, v115);
          sub_1B0438FB0(v128, type metadata accessor for ConnectionEvent);
          (*(v55 + 8))(v60, v59);
          (*(v53 + 8))(v56, v57);
          v45 = v125;
          v47 = v126;
          v63 = (*(v125 + 48))(v62, 1, v126);
          v46 = v127;
          if (v63)
          {
            v64 = v62;
LABEL_25:
            sub_1B0398EFC(v64, &qword_1EB6E5468, &qword_1B0ED0458);
            v48 = 1;
            return (*(v45 + 56))(v46, v48, 1, v47);
          }

          v90 = v62;
          v65 = v43;
        }

        else
        {
          v79 = v23;
          v47 = v126;
          v46 = v127;
          v80 = v118;
          if (v58 != *MEMORY[0x1E6977C10])
          {
            sub_1B0438FB0(v128, type metadata accessor for ConnectionEvent);
            v96 = *(v53 + 8);
            v96(v56, v57);
            v96(v34, v57);
            v48 = 1;
            v45 = v125;
            return (*(v45 + 56))(v46, v48, 1, v47);
          }

          (*(v53 + 96))(v34, v57);
          v81 = v106;
          v82 = v34;
          v83 = v79;
          (*(v55 + 32))(v106, v82, v79);
          (*(v55 + 16))(v80, v81, v79);
          swift_storeEnumTagMultiPayload();
          v84 = v114;
          CommandConnection.RecentErrors.Error.init(time:kind:)(v119, v80, v114);
          sub_1B0438FB0(v128, type metadata accessor for ConnectionEvent);
          (*(v55 + 8))(v81, v83);
          (*(v124 + 8))(v56, v57);
          v45 = v125;
          if ((*(v125 + 48))(v84, 1, v47))
          {
            v64 = v84;
            goto LABEL_25;
          }

          v90 = v84;
          v65 = v43;
        }

LABEL_58:
        sub_1B0C25A4C(v90, v65, type metadata accessor for CommandConnection.RecentErrors.Error);
        sub_1B0C25A4C(v65, v46, type metadata accessor for CommandConnection.RecentErrors.Error);
        v48 = 0;
        return (*(v45 + 56))(v46, v48, 1, v47);
      }

      type metadata accessor for ConnectionEvent.FailureReason(0);
      v72 = swift_getEnumCaseMultiPayload();
      if (v72 > 1)
      {
        v45 = v125;
        if (v72 == 2)
        {
          goto LABEL_37;
        }

        v87 = v43;
        v88 = v118;
        swift_storeEnumTagMultiPayload();
        CommandConnection.RecentErrors.Error.init(time:kind:)(v119, v88, v50);
        sub_1B0438FB0(v128, type metadata accessor for ConnectionEvent);
        v47 = v126;
        v89 = (*(v45 + 48))(v50, 1, v126);
        v46 = v127;
        if (v89)
        {
          v64 = v50;
          goto LABEL_25;
        }

        v90 = v50;
        v65 = v87;
        goto LABEL_58;
      }

      v45 = v125;
      v65 = v43;
      if (v72)
      {
        v91 = v25;
        v92 = v25;
        v93 = v23;
        (*(v55 + 32))(v92, v40, v23);
        v94 = v118;
        (*(v55 + 16))(v118, v91, v23);
        swift_storeEnumTagMultiPayload();
        v95 = v112;
        CommandConnection.RecentErrors.Error.init(time:kind:)(v119, v94, v112);
        sub_1B0438FB0(v128, type metadata accessor for ConnectionEvent);
        (*(v55 + 8))(v91, v93);
        v47 = v126;
        if ((*(v45 + 48))(v95, 1, v126))
        {
          v75 = v95;
          goto LABEL_41;
        }

        v90 = v95;
      }

      else
      {
        v73 = *(v40 + 2);
        v74 = v118;
        *v118 = *v40;
        *(v74 + 16) = v73;
        swift_storeEnumTagMultiPayload();
        CommandConnection.RecentErrors.Error.init(time:kind:)(v119, v74, v49);
        sub_1B0438FB0(v128, type metadata accessor for ConnectionEvent);
        v47 = v126;
        if ((*(v45 + 48))(v49, 1, v126))
        {
          v75 = v49;
LABEL_41:
          sub_1B0398EFC(v75, &qword_1EB6E5468, &qword_1B0ED0458);
          v48 = 1;
          v46 = v127;
          return (*(v45 + 56))(v46, v48, 1, v47);
        }

        v90 = v49;
      }

      goto LABEL_57;
    }

    v65 = v43;
    if (EnumCaseMultiPayload == 2)
    {
      type metadata accessor for UntaggedResponse(0);
      v66 = swift_getEnumCaseMultiPayload();
      v45 = v125;
      v67 = v119;
      if ((v66 - 1) >= 2)
      {
        if (v66 != 4)
        {
          sub_1B0438FB0(v128, type metadata accessor for ConnectionEvent);
          v71 = type metadata accessor for UntaggedResponse;
          v70 = v40;
          goto LABEL_38;
        }

        v85 = *(v40 + 2);
        v86 = v118;
        *v118 = *v40;
        *(v86 + 16) = v85;
        swift_storeEnumTagMultiPayload();
        CommandConnection.RecentErrors.Error.init(time:kind:)(v67, v86, v52);
        sub_1B0438FB0(v128, type metadata accessor for ConnectionEvent);
        v47 = v126;
        if ((*(v45 + 48))(v52, 1, v126))
        {
          v75 = v52;
          goto LABEL_41;
        }

        v90 = v52;
LABEL_57:
        v46 = v127;
        goto LABEL_58;
      }

      v68 = *v40;
      v69 = *(v40 + 2);
      v47 = v126;
      v46 = v127;
    }

    else
    {
      v68 = *v40;
      v69 = *(v40 + 2);
      v76 = v40[24];
      v45 = v125;
      v67 = v119;
      if (!v40[24])
      {
        sub_1B0447F00(*v40);

        goto LABEL_37;
      }

      v47 = v126;
      v46 = v127;
      if (v76 == 1)
      {
        if ((~v68 & 0xF000000000000007) != 0 && v68 == 0x800000000000006CLL)
        {
          v97 = v65;
          v129 = *(&v68 + 1);
          v130 = v69;
          sub_1B04420D8(0x800000000000006CLL);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v98 = v108;
          sub_1B0E42948();
          sub_1B07C7F5C();
          v99 = sub_1B0E45F08();
          v101 = v100;
          (*(v109 + 8))(v98, v110);

          v102 = HIBYTE(v101) & 0xF;
          if ((v101 & 0x2000000000000000) == 0)
          {
            v102 = v99 & 0xFFFFFFFFFFFFLL;
          }

          if (!v102)
          {

            v99 = 0;
            v101 = 0;
          }

          v103 = v118;
          *v118 = v99;
          *(v103 + 8) = v101;
          swift_storeEnumTagMultiPayload();
          v104 = v111;
          CommandConnection.RecentErrors.Error.init(time:kind:)(v67, v103, v111);
          sub_1B0447F00(0x800000000000006CLL);

          sub_1B0438FB0(v128, type metadata accessor for ConnectionEvent);
          v78 = v104;
          if (!(*(v45 + 48))(v104, 1, v47))
          {
            v90 = v104;
            v65 = v97;
            goto LABEL_58;
          }

          goto LABEL_24;
        }

        v77 = v118;
        *v118 = v68;
        *(v77 + 16) = v69;
        swift_storeEnumTagMultiPayload();
        v78 = v113;
LABEL_23:
        CommandConnection.RecentErrors.Error.init(time:kind:)(v67, v77, v78);
        sub_1B0438FB0(v128, type metadata accessor for ConnectionEvent);
        if (!(*(v45 + 48))(v78, 1, v47))
        {
          v90 = v78;
          goto LABEL_58;
        }

LABEL_24:
        v64 = v78;
        goto LABEL_25;
      }
    }

    v77 = v118;
    *v118 = v68;
    *(v77 + 16) = v69;
    swift_storeEnumTagMultiPayload();
    v78 = v116;
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    v45 = v125;
    sub_1B0438FB0(v128, type metadata accessor for ConnectionEvent);
    v70 = v40;
    v71 = type metadata accessor for ConnectionEvent;
LABEL_38:
    sub_1B0438FB0(v70, v71);
    v48 = 1;
    v47 = v126;
    v46 = v127;
    return (*(v45 + 56))(v46, v48, 1, v47);
  }

  v45 = v125;
  if (EnumCaseMultiPayload == 6)
  {
LABEL_37:
    v71 = type metadata accessor for ConnectionEvent;
    v70 = v128;
    goto LABEL_38;
  }

  v47 = v126;
  v46 = v127;
  sub_1B0438FB0(v128, type metadata accessor for ConnectionEvent);
  v48 = 1;
  return (*(v45 + 56))(v46, v48, 1, v47);
}

uint64_t sub_1B0438FB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0439010(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1B0439080(void *__dst, const void *__src, size_t __len)
{
  if ((__len & 0x8000000000000000) == 0)
  {
    return memmove(__dst, __src, __len);
  }

  __break(1u);
  return __dst;
}

Swift::Void __swiftcall ByteBuffer._ensureAvailableCapacity(_:at:)(Swift::UInt32 _, Swift::UInt32 at)
{
  v3 = *(v2 + 10);
  v4 = *(v2 + 22);
  v5 = v4 | (v3 << 8);
  v6 = v5 + at;
  if (__CFADD__(v5, at))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = v6 + _;
  if (__CFADD__(v6, _))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(v2 + 4);
  if (v8 >= v7)
  {
    return;
  }

  v11 = *v2;
  v12 = swift_beginAccess();
  v13 = *(v11 + 16);
  if (v13 < v7)
  {
    v12 = at + _;
    if (!__CFADD__(at, _))
    {
      if (v5)
      {
        v14 = v8 - v5;
        if (v8 >= v5)
        {
          v15 = v2;
          v16 = ByteBuffer._Storage.allocateStorage(capacity:)(v12);
          v17 = *(v11 + 56);
          swift_beginAccess();
          v18 = *(v16 + 24);
          swift_beginAccess();
          v17(v18, *(v11 + 24) + v5, v14);

          v2 = v15;
          *v15 = v16;
          v11 = v16;
LABEL_12:
          swift_beginAccess();
          LOWORD(v3) = 0;
          LOBYTE(v4) = 0;
          v13 = *(v11 + 16);
          goto LABEL_13;
        }

LABEL_18:
        __break(1u);
        return;
      }

LABEL_11:
      ByteBuffer._Storage.reallocStorage(capacity:)(v12);
      goto LABEL_12;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v13 < v5)
  {
    __break(1u);
    goto LABEL_11;
  }

LABEL_13:
  *(v2 + 4) = v13;
  *(v2 + 10) = v3;
  *(v2 + 22) = v4;
}

unint64_t sub_1B04391FC(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  v5 = a3 - a2;
  if (a2)
  {
    v6 = a3 - a2;
  }

  else
  {
    v6 = 0;
  }

  result = sub_1B0433338(0, v6, a2, a3);
  if (!v4)
  {
    if (!a2)
    {
      return 0;
    }

LABEL_12:
    if (v5 >= v4)
    {
      return v4;
    }

    goto LABEL_15;
  }

  if (result < v4)
  {
    v4 = v5;
    if (a2)
    {
      return v4;
    }

    return 0;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

char *sub_1B043929C()
{
  v1 = MEMORY[0x1E69E7CC0];
  while (*(v0 + 44) != *(v0 + 40))
  {
    sub_1B0433D28();
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    sub_1B04343F8(v2, v4, v6);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1B043939C(0, *(v1 + 2) + 1, 1, v1);
    }

    v11 = *(v1 + 2);
    v10 = *(v1 + 3);
    if (v11 >= v10 >> 1)
    {
      v1 = sub_1B043939C((v10 > 1), v11 + 1, 1, v1);
    }

    *(v1 + 2) = v11 + 1;
    v12 = &v1[32 * v11];
    *(v12 + 4) = v3;
    *(v12 + 5) = v5;
    *(v12 + 6) = v7;
    *(v12 + 7) = v9;
    if (v7 >> 62 == 1)
    {
      break;
    }

    sub_1B043440C(v3, v5, v7);
  }

  return v1;
}

char *sub_1B043939C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7A10, &qword_1B0EF9F98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

uint64_t ByteBufferView.init(buffer:range:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (a4 < 0 || (a3 - (BYTE6(a3) | (a3 >> 24) & 0xFFFF00)) < a5)
  {
    __break(1u);
  }

  else
  {
    *a6 = result;
    *(a6 + 8) = a2;
    *(a6 + 16) = a3;
    *(a6 + 20) = WORD2(a3);
    *(a6 + 22) = BYTE6(a3);
    *(a6 + 24) = a4;
    *(a6 + 32) = a5;
  }

  return result;
}

uint64_t sub_1B0439548@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B044218C;
  *(v17 + 24) = v16;
  v45[0] = sub_1B0442174;
  v45[1] = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  result = swift_allocObject();
  *(result + 16) = sub_1B0442358;
  *(result + 24) = v18;
  v45[2] = sub_1B0442378;
  v45[3] = result;
  v20 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    swift_retain_n();
    v21 = 0;
    for (i = 0; ; i = 1)
    {
      v42 = v21;
      *(swift_allocObject() + 16) = *&v45[2 * i];
      if (v20 >= a3)
      {
        sub_1B0439BCC();
        v30 = swift_allocError();
        *v31 = a3;
      }

      else
      {
        v23 = *a1;
        v24 = a1[1];
        v25 = *(a1 + 4);
        v41 = v9;
        v26 = v20;
        v27 = *(a1 + 10);
        v28 = *(a1 + 22);

        v29 = v26;
        sub_1B043D840(a1, v26, a3);
        v30 = v41;
        if (!v41)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          result = swift_arrayDestroy();
          v35 = v55;
          *(a8 + 128) = v54;
          *(a8 + 144) = v35;
          *(a8 + 160) = v56;
          *(a8 + 176) = v57;
          v36 = v51;
          *(a8 + 64) = v50;
          *(a8 + 80) = v36;
          v37 = v53;
          *(a8 + 96) = v52;
          *(a8 + 112) = v37;
          v38 = v47;
          *a8 = v46;
          *(a8 + 16) = v38;
          v39 = v49;
          *(a8 + 32) = v48;
          *(a8 + 48) = v39;
          return result;
        }

        *a1 = v23;
        a1[1] = v24;
        *(a1 + 4) = v25;
        *(a1 + 10) = v27;
        *(a1 + 22) = v28;
        v20 = v29;
      }

      swift_willThrow();
      v44 = v30;
      v32 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v44 = v30;
        v33 = v30;
        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          swift_arrayDestroy();
        }
      }

      v9 = 0;
      v21 = 1;
      if (v42)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
        swift_arrayDestroy();
        sub_1B0436554();
        swift_allocError();
        *v34 = 0xD000000000000019;
        v34[1] = 0x80000001B0F2FF00;
        v34[2] = 0xD000000000000020;
        v34[3] = 0x80000001B0F2FA10;
        v34[4] = 294;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B04399C0()
{

  return swift_deallocObject();
}

uint64_t sub_1B04399F8()
{

  return swift_deallocObject();
}

uint64_t *sub_1B0439A40(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v16 = a3;
    }

    else
    {
      v10 = result;
      v14 = *result;
      v15 = result[1];
      v19 = *(result + 10);
      v20 = *(result + 4);
      v18 = *(result + 22);

      sub_1B0DFE880(0x202AuLL, 0xE200000000000000, 0, 0, v10, v8, a3);
      if (!v7)
      {
        sub_1B043D060(v10, v8, a3, a4, a5, a6, a7);
        sub_1B0448078(v10, v8, a3);
      }

      *v10 = v14;
      *(v10 + 8) = v15;
      *(v10 + 16) = v20;
      *(v10 + 20) = v19;
      *(v10 + 22) = v18;
    }

    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1B0439BCC()
{
  result = qword_1EB6E6FB8;
  if (!qword_1EB6E6FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6FB8);
  }

  return result;
}

unint64_t sub_1B0439C20(uint64_t a1)
{
  v4 = sub_1B043B0C8(319);
  if (v1 <= 0x3F)
  {
    v4 = _s31PreviouslyDownloadedMessageDataVMa(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

void sub_1B0439D0C(uint64_t a1)
{
  if (!qword_1EB6DCE08)
  {
    type metadata accessor for AuthenticationTask(255);
    v1 = sub_1B0E45D88();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6DCE08);
    }
  }
}

uint64_t sub_1B0439D64(uint64_t a1)
{
  result = sub_1B0E439A8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0439E28(void *a1)
{
  v14 = a1;
  v27 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2BB8, &qword_1B0E9FBA8);
  v16 = *(v15 - 8);
  v17 = v15 - 8;
  v18 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v19 = v6 - v18;
  v27 = v1;
  v21 = v1[3];
  v22 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v21);
  sub_1B043BCAC();
  v2 = v20;
  sub_1B0E46D18();
  v23 = v2;
  v24 = v2;
  if (v2)
  {
    v6[4] = v24;
    v6[0] = v24;
    __swift_destroy_boxed_opaque_existential_0(v14);
    return v6[1];
  }

  else
  {
    v26 = 0;
    v3 = sub_1B0E46878();
    v11 = 0;
    v12 = v3;
    v13 = 0;
    v7 = v3;
    v28 = v3;
    v25 = 1;
    v4 = sub_1B0E46878();
    v8 = 0;
    v9 = v4;
    v10 = 0;
    v6[5] = v4;
    v29 = v4;
    (*(v16 + 8))(v19, v15);
    __swift_destroy_boxed_opaque_existential_0(v14);
    return v7;
  }
}

double sub_1B043A0CC(double a1, double a2, double a3)
{
  if (a1 - a2 <= 0.0)
  {
    return a3;
  }

  pow(0.999997144, a1 - a2);
  if ((sub_1B0E453C8() & 1) == 0)
  {
    return 0.0;
  }

  sub_1B0E46B78();
  sub_1B0E46B68();
  return v5;
}

void sub_1B043A1E8(uint64_t a1)
{
  if (!qword_1EB6DB4F0)
  {
    _s25MessageSectionsToDownloadVMa(255);
    v1 = sub_1B0E45358();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6DB4F0);
    }
  }
}

uint64_t sub_1B043A260@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = v8;
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B0D9FBA8;
  *(v18 + 24) = v17;
  v42 = sub_1B043DC40;
  v43 = v18;
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B043DC58;
  *(v20 + 24) = v19;
  v44 = sub_1B043DC28;
  v45 = v20;
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  result = swift_allocObject();
  *(result + 16) = sub_1B043E6D0;
  *(result + 24) = v21;
  v46 = sub_1B043DC28;
  v47 = result;
  v23 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    swift_retain_n();
    v24 = 32;
    while (1)
    {
      *(swift_allocObject() + 16) = *&v41[v24];
      if (v23 >= a3)
      {
        sub_1B0439BCC();
        v9 = swift_allocError();
        *v30 = a3;
      }

      else
      {
        v25 = *a1;
        v26 = a1[1];
        v39 = *(a1 + 4);
        v27 = a3;
        v28 = *(a1 + 10);
        v29 = *(a1 + 22);

        sub_1B043D890(a1, v23, v27);
        if (!v9)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          result = swift_arrayDestroy();
          v34 = v55;
          a8[6] = v54;
          a8[7] = v34;
          a8[8] = v56;
          v35 = v51;
          a8[2] = v50;
          a8[3] = v35;
          v36 = v53;
          a8[4] = v52;
          a8[5] = v36;
          v37 = v49;
          *a8 = v48;
          a8[1] = v37;
          return result;
        }

        *a1 = v25;
        a1[1] = v26;
        *(a1 + 4) = v39;
        *(a1 + 10) = v28;
        *(a1 + 22) = v29;
        a3 = v27;
      }

      swift_willThrow();
      v40 = v9;
      v31 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v40 = v9;
        v32 = v9;
        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          swift_arrayDestroy();
        }
      }

      v9 = 0;
      v24 += 16;
      if (v24 == 80)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
        swift_arrayDestroy();
        sub_1B0436554();
        swift_allocError();
        *v33 = 0xD000000000000019;
        v33[1] = 0x80000001B0F2FF00;
        v33[2] = 0xD000000000000020;
        v33[3] = 0x80000001B0F2FA10;
        v33[4] = 148;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B043A71C()
{

  return swift_deallocObject();
}

uint64_t sub_1B043A754()
{

  return swift_deallocObject();
}

uint64_t sub_1B043A7A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B043EFD0;
  *(v17 + 24) = v16;
  v47 = sub_1B0DA9340;
  v48 = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B04465C8;
  *(v19 + 24) = v18;
  v49 = sub_1B0DA938C;
  v50 = v19;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1B043AF00;
  *(v21 + 24) = v20;
  v51 = sub_1B0DA938C;
  v52 = v21;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1B043EFF0;
  *(v23 + 24) = v22;
  v53 = sub_1B0DA938C;
  v54 = v23;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1B0446770;
  *(v25 + 24) = v24;
  v55 = sub_1B0DA938C;
  v56 = v25;
  v26 = a2 + 1;
  v27 = __OFADD__(a2, 1);

  if (!v27)
  {
    swift_retain_n();
    v29 = 32;
    v30 = a1;
    while (1)
    {
      *(swift_allocObject() + 16) = *&v46[v29];
      if (v26 >= a3)
      {
        sub_1B0439BCC();
        v38 = swift_allocError();
        *v39 = a3;
      }

      else
      {
        v44 = v29;
        v31 = *v30;
        v32 = v30[1];
        v33 = *(v30 + 4);
        v43 = *(v30 + 10);
        v34 = v26;
        v35 = *(v30 + 22);

        v36 = v8;
        v37 = v34;
        sub_1B0DA9370(v30, v34, a3);
        v38 = v36;
        if (!v36)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          return swift_arrayDestroy();
        }

        *v30 = v31;
        v30[1] = v32;
        *(v30 + 4) = v33;
        *(v30 + 10) = v43;
        *(v30 + 22) = v35;
        v26 = v37;
        v29 = v44;
      }

      swift_willThrow();
      v45 = v38;
      v40 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v45 = v38;
        v41 = v38;
        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          swift_arrayDestroy();
        }
      }

      v8 = 0;
      v29 += 16;
      if (v29 == 112)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
        swift_arrayDestroy();
        sub_1B0436554();
        swift_allocError();
        *v42 = 0xD000000000000019;
        v42[1] = 0x80000001B0F2FF00;
        v42[2] = 0xD000000000000020;
        v42[3] = 0x80000001B0F2FA10;
        v42[4] = 72;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B043ACDC()
{

  return swift_deallocObject();
}

uint64_t sub_1B043AD14()
{

  return swift_deallocObject();
}

uint64_t sub_1B043AD78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_1B0DFE880(0x44454853494E4156uLL, 0xE900000000000020, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v18 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (v18 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    else
    {

      sub_1B0DB29B0(a1, v18, a3, a4, a5, a6, a7, a8);

      type metadata accessor for MessageData(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  return result;
}

uint64_t sub_1B043AF40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X8>)
{
  result = sub_1B0437B90(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    *a8 = result;
    a8[1] = v11;
    a8[2] = v12;
    type metadata accessor for ResponsePayload(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

unint64_t sub_1B043AF90()
{
  result = qword_1EB6DCDE8;
  if (!qword_1EB6DCDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCDE8);
  }

  return result;
}

void sub_1B043AFE4(uint64_t a1)
{
  _s6LoggerVMa_0(319);
  if (v1 <= 0x3F)
  {
    sub_1B0437328(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1B043B0C8(uint64_t a1)
{
  v5 = qword_1EB6DB5E0;
  if (!qword_1EB6DB5E0)
  {
    v4 = sub_1B0E45358();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EB6DB5E0);
      return v2;
    }
  }

  return v5;
}

void sub_1B043B15C(uint64_t a1)
{
  if (!qword_1EB6DB638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E53D8, &qword_1B0ECFC78);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6DB638);
    }
  }
}

unint64_t sub_1B043B1E8()
{
  v2 = qword_1EB6DED58;
  if (!qword_1EB6DED58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DED58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B043B29C(uint64_t a1)
{
  v8 = qword_1EB6DE3E0;
  if (!qword_1EB6DE3E0)
  {
    v1 = sub_1B041C1E8();
    v6 = type metadata accessor for MessageIdentifierSet(a1, &type metadata for UID, v1, v2);
    v8 = v6;
    if (!v3)
    {
      v4 = v6;
      atomic_store(v6, &qword_1EB6DE3E0);
      return v4;
    }
  }

  return v8;
}

void sub_1B043B338(uint64_t a1)
{
  _s19MessageHeaderStatusOMa(319);
  if (v1 <= 0x3F)
  {
    sub_1B041D6E0(319, &qword_1EB6DB4E0);
    if (v2 <= 0x3F)
    {
      sub_1B041D6E0(319, &qword_1EB6DB5E0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for AuthenticationTask(uint64_t a1)
{
  result = qword_1EB6DCE10;
  if (!qword_1EB6DCE10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B043B450(uint64_t a1)
{
  if (!qword_1EB6DD100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E53D8, &qword_1B0ECFC78);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB6DD100);
    }
  }
}

void sub_1B043B4CC(uint64_t a1)
{
  if (!qword_1EB6DB440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E5708, ",w\b");
    v1 = sub_1B0E45358();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6DB440);
    }
  }
}

uint64_t sub_1B043B530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  MEMORY[0x1E69E5928](a2);
  v7(a2, a3, a4);
  return MEMORY[0x1E69E5920](a2);
}

void sub_1B043B5A8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  memset(__b, 0, 0x29uLL);
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v19 = a4;
  v20 = a5;
  MEMORY[0x1E69E5928](a1);
  sub_1B043B754(a1, &v13);
  if (v15)
  {
    __b[0] = v13;
    __b[1] = v14;
    __b[2] = v15;
    __b[3] = v16;
    __b[4] = v17;
    LOBYTE(__b[5]) = v18 & 1;
    v10[0] = v13;
    v10[1] = v14;
    v10[2] = v15;
    v10[3] = v16;
    v10[4] = v17;
    v11 = v18 & 1;
    a4(v10);
  }
}

void sub_1B043B754(void *a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, 0x29uLL);
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v45 = a1;
  v27 = [a1 objectAtIndexedSubscript_];
  v28 = [v27 int64Value];
  MEMORY[0x1E69E5920](v27);
  MailboxRowID.init(_:)(v28, &v43);
  v29 = v43;
  if (v44)
  {
    goto LABEL_14;
  }

  v42 = v43;
  v23 = [a1 objectAtIndexedSubscript_];
  v2 = [v23 stringValue];
  v24 = v2;
  if (v2)
  {
    v19 = sub_1B0E44AD8();
    v20 = v3;
    MEMORY[0x1E69E5920](v24);
    v21 = v19;
    v22 = v20;
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  if (!v22)
  {
    MEMORY[0x1E69E5920](v23);
LABEL_14:
    MEMORY[0x1E69E5920](a1);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    return;
  }

  v40 = v21;
  v41 = v22;
  MEMORY[0x1E69E5920](v23);
  v17 = [a1 objectAtIndexedSubscript_];
  v4 = [v17 dataValue];
  v18 = v4;
  if (v4)
  {
    v13 = sub_1B0E42F38();
    v14 = v5;
    MEMORY[0x1E69E5920](v18);
    v15 = v13;
    v16 = v14;
  }

  else
  {
    v15 = 0;
    v16 = 0xF000000000000000;
  }

  MEMORY[0x1E69E5920](v17);
  v36[0] = v15;
  v36[1] = v16;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1FC8, &unk_1B0E9B250);
  sub_1B039A570(sub_1B043C52C, 0, v6, MEMORY[0x1E69E73E0], &unk_1F26DC9C8, v12, &v37);
  sub_1B043C03C(v36);
  v9 = v37;
  v10 = v38;
  v11 = v39;
  v33 = v37;
  v34 = v38;
  v35 = v39 & 1;
  v30 = v29;
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  sub_1B043C0EC(&v30, v7, v8, v9, v10, v11 & 1, v31);
  __b[0] = v31[0];
  __b[1] = v31[1];
  __b[2] = v31[2];
  __b[3] = v31[3];
  __b[4] = v31[4];
  LOBYTE(__b[5]) = v32 & 1;
  sub_1B043C08C(__b, a2);
  MEMORY[0x1E69E5920](a1);
  sub_1B043C118(__b);
}

unint64_t sub_1B043BBB4()
{
  v2 = qword_1EB6DA738;
  if (!qword_1EB6DA738)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA738);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B043BC30()
{
  v2 = qword_1EB6DA740;
  if (!qword_1EB6DA740)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA740);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B043BCAC()
{
  v2 = qword_1EB6DA748;
  if (!qword_1EB6DA748)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA748);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B043BDE8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1B043C5BC();
  sub_1B0E42878();
  sub_1B043BF98(v8, v9);
  v5 = v3;

  sub_1B0391D50(a1, a2);
  return v5;
}

void sub_1B043BF98(uint64_t a1, uint64_t a2)
{
  sub_1B043B1E8();
  sub_1B0E453D8();
  sub_1B0E453D8();
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
}

uint64_t sub_1B043C03C(uint64_t a1)
{
  if ((*(a1 + 8) & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_1B0391D50(*a1, *(a1 + 8));
  }

  return a1;
}

__n128 sub_1B043C08C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 16) = v4;
  result = *(a1 + 24);
  *(a2 + 24) = result;
  *(a2 + 40) = *(a1 + 40);
  return result;
}

void *sub_1B043C0EC@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = *result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6 & 1;
  return result;
}

void sub_1B043C144(double *a1, uint64_t a2, uint64_t a3)
{
  memset(__b, 0, 0x29uLL);
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v9 = a1[3];
  v10 = a1[4];
  v5 = *(a1 + 40);
  *__b = *a1;
  __b[1] = v3;
  __b[2] = v4;
  *&__b[3] = v9;
  *&__b[4] = v10;
  LOBYTE(__b[5]) = v5 & 1;
  if (v5)
  {
    v6 = 0.0;
    v7 = 1;
  }

  else
  {
    v6 = sub_1B043C320(v9, v10);
    v7 = 0;
  }

  if ((v7 & 1) == 0 && v6 >= 0.01)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2B08, &qword_1B0E9F570);
    sub_1B0E452E8();
  }
}

uint64_t sub_1B043C37C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (a3)
    {
      *(result + 16) = 1;
    }
  }

  else if (a3)
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t sub_1B043C52C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *a1;
  v8 = a1[1];
  sub_1B03B2000(*a1, v8);
  sub_1B0E428A8();
  v2 = sub_1B0E42888();
  result = sub_1B043BDE8(v6, v8, v2);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

unint64_t sub_1B043C5BC()
{
  v2 = qword_1EB6DA728;
  if (!qword_1EB6DA728)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA728);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B043C638@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B0439E28(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_1B043C6AC(void *a1, uint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v30 = a1;
  v28 = a2;
  v29 = a3;
  sub_1B0E44838();
  v17 = sub_1B0E44AC8();

  v18 = [a1 preparedStatementForQueryString_];
  MEMORY[0x1E69E5920](v17);
  if (v18)
  {
    v10 = v18;
    v27 = v18;
    v31 = 0;
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = a3;

    v6 = v9;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1B043B73C;
    *(v7 + 24) = v9;

    v25 = sub_1B043B748;
    v26 = v7;
    aBlock = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    v22 = 0;
    v23 = sub_1B043B530;
    v24 = &block_descriptor_95;
    v8 = v7;
    v12 = _Block_copy(&aBlock);

    v19 = v31;
    v13 = [v18 executeUsingBlock:v12 error:&v19];
    v11 = v19;
    MEMORY[0x1E69E5928](v19);
    v3 = v31;
    v31 = v11;
    MEMORY[0x1E69E5920](v3);
    _Block_release(v12);
    if (v13)
    {
      MEMORY[0x1E69E5920](v18);
      sub_1B04197E4(sub_1B043B73C, v9);
      return sub_1B04197E4(sub_1B043B748, v7);
    }
  }

  else
  {
    sub_1B0E44838();
    sub_1B0E465B8();
    __break(1u);
  }

  v5 = v31;
  sub_1B0E42CD8();
  MEMORY[0x1E69E5920](v5);
  swift_willThrow();
  MEMORY[0x1E69E5920](v10);
  sub_1B04197E4(sub_1B043B73C, v6);
  return sub_1B04197E4(sub_1B043B748, v8);
}

unint64_t sub_1B043CAE0()
{
  result = qword_1EB6DD1D8;
  if (!qword_1EB6DD1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD1D8);
  }

  return result;
}

unint64_t sub_1B043CB48()
{
  result = qword_1EB6DD1B8;
  if (!qword_1EB6DD1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD1B8);
  }

  return result;
}

void sub_1B043CB9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1B043CC04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1B043CC6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1B0E45588();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1B043CCCC(uint64_t a1)
{
  sub_1B043CB9C(319, &qword_1EB6DAD90, sub_1B0451ED8, &type metadata for SyncStep, MEMORY[0x1E69E64E8]);
  if (v1 <= 0x3F)
  {
    _s18InProgressMessagesVMa(319);
    if (v2 <= 0x3F)
    {
      sub_1B043CB9C(319, &qword_1EB6DE3E0, sub_1B041C1E8, &type metadata for UID, type metadata accessor for MessageIdentifierSet);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B043CE24(uint64_t a1)
{
  sub_1B043CF0C(319);
  if (v1 <= 0x3F)
  {
    sub_1B043B29C(319);
    if (v2 <= 0x3F)
    {
      sub_1B041D6E0(319, &qword_1EB6DB4E8);
      if (v3 <= 0x3F)
      {
        sub_1B043A1E8(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B043CF0C(uint64_t a1)
{
  if (!qword_1EB6DB790)
  {
    sub_1B043CF70();
    v1 = sub_1B0E44708();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6DB790);
    }
  }
}

unint64_t sub_1B043CF70()
{
  v2 = qword_1EB6DE1F0;
  if (!qword_1EB6DE1F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DE1F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B043D008(uint64_t a1)
{
  v1 = type metadata accessor for MessageHeader(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1B043D060(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B0442590;
  *(v17 + 24) = v16;
  v58 = sub_1B0DA9340;
  v59 = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B043EFB0;
  *(v19 + 24) = v18;
  v60 = sub_1B0DA938C;
  v61 = v19;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1B043AF20;
  *(v21 + 24) = v20;
  v62 = sub_1B0DA938C;
  v63 = v21;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1B04380A8;
  *(v23 + 24) = v22;
  v64 = sub_1B0DA938C;
  v65 = v23;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1B0442B4C;
  *(v25 + 24) = v24;
  v66 = sub_1B0DA938C;
  v67 = v25;
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v26[5] = a7;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1B0442B6C;
  *(v27 + 24) = v26;
  v68 = sub_1B0DA938C;
  v69 = v27;
  v28 = swift_allocObject();
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v28[5] = a7;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1B0442B8C;
  *(v29 + 24) = v28;
  v70 = sub_1B0DA938C;
  v71 = v29;
  v30 = swift_allocObject();
  v30[2] = a4;
  v30[3] = a5;
  v30[4] = a6;
  v30[5] = a7;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1B0442ED8;
  *(v31 + 24) = v30;
  v72 = sub_1B0DA938C;
  v73 = v31;
  v32 = swift_allocObject();
  v32[2] = a4;
  v32[3] = a5;
  v32[4] = a6;
  v32[5] = a7;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1B04433F8;
  *(v33 + 24) = v32;
  v74 = sub_1B0DA938C;
  v75 = v33;
  v34 = swift_allocObject();
  v34[2] = a4;
  v34[3] = a5;
  v34[4] = a6;
  v34[5] = a7;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1B0DAF4A4;
  *(v35 + 24) = v34;
  v76 = sub_1B0DA938C;
  v77 = v35;
  v36 = __OFADD__(a2, 1);
  v37 = a2 + 1;
  v38 = v36;
  result = swift_retain_n();
  if ((v38 & 1) == 0)
  {
    swift_retain_n();
    v40 = 32;
    v41 = a1;
    while (1)
    {
      *(swift_allocObject() + 16) = *&v57[v40];
      if (v37 >= a3)
      {
        sub_1B0439BCC();
        v49 = swift_allocError();
        *v50 = a3;
      }

      else
      {
        v55 = v40;
        v42 = *v41;
        v43 = v41[1];
        v44 = *(v41 + 4);
        v54 = *(v41 + 10);
        v45 = v37;
        v46 = *(v41 + 22);

        v47 = v8;
        v48 = v45;
        sub_1B0DA9370(v41, v45, a3);
        v49 = v47;
        if (!v47)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          return swift_arrayDestroy();
        }

        *v41 = v42;
        v41[1] = v43;
        *(v41 + 4) = v44;
        *(v41 + 10) = v54;
        *(v41 + 22) = v46;
        v37 = v48;
        v40 = v55;
      }

      swift_willThrow();
      v56 = v49;
      v51 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v56 = v49;
        v52 = v49;
        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          swift_arrayDestroy();
        }
      }

      v8 = 0;
      v40 += 16;
      if (v40 == 192)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
        swift_arrayDestroy();
        sub_1B0436554();
        swift_allocError();
        *v53 = 0xD000000000000019;
        v53[1] = 0x80000001B0F2FF00;
        v53[2] = 0xD000000000000020;
        v53[3] = 0x80000001B0F2FA10;
        v53[4] = 180;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B043D768()
{

  return swift_deallocObject();
}

uint64_t sub_1B043D7A0()
{

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_12(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = a3;
  *(a2 + 12) = 2112;
  *(a2 + 14) = result;
  return result;
}

uint64_t sub_1B043D858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[1] = a3;
  v4 = *(v3 + 16);
  v6[0] = a2;
  return v4(a1, v6);
}

unint64_t sub_1B043D8AC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v38 = v6;
  v7 = 4 * v6;
  v8 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v8) = 1;
  }

  v9 = 4 << v8;
  v35 = a4 & 0xFFFFFFFFFFFFFFLL;
  v34 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v41 = v9;
  v42 = v10;
  v40 = 4 * v10;
  v45 = a1;
  v11 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v11) = 1;
  }

  v12 = 4 << v11;
  v36 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = a2 & 0xFFFFFFFFFFFFFFLL;
  result = 15;
  v14 = 15;
  while (1)
  {
    v15 = v14 >> 14;
    v16 = v14 >> 14 == v7;
    if (v14 >> 14 == v7)
    {
      v17 = 0;
      goto LABEL_28;
    }

    v18 = v14;
    if ((v14 & 0xC) == v41)
    {
      v21 = result;
      v18 = sub_1B0A6D6C4(v14, a3, a4);
      result = v21;
    }

    v19 = v18 >> 16;
    if (v18 >> 16 >= v38)
    {
      goto LABEL_49;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      v31 = result;
      v17 = sub_1B0E44E08();
      result = v31;
    }

    else
    {
      if ((a4 & 0x2000000000000000) != 0)
      {
        v43 = a3;
        v44 = v35;
        v20 = &v43;
      }

      else
      {
        v20 = v34;
        if ((a3 & 0x1000000000000000) == 0)
        {
          v30 = result;
          v20 = sub_1B0E46368();
          result = v30;
        }
      }

      v17 = *(v20 + v19);
    }

    if ((v14 & 0xC) == v41)
    {
      v22 = result;
      v14 = sub_1B0A6D6C4(v14, a3, a4);
      result = v22;
      if ((a4 & 0x1000000000000000) == 0)
      {
LABEL_23:
        v14 = (v14 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_28;
      }
    }

    else if ((a4 & 0x1000000000000000) == 0)
    {
      goto LABEL_23;
    }

    if (v38 <= v14 >> 16)
    {
      goto LABEL_51;
    }

    v23 = result;
    v14 = sub_1B0E44DD8();
    result = v23;
LABEL_28:
    if (v40 == result >> 14)
    {
      return v16;
    }

    v24 = result & 0xC;
    v25 = result;
    if (v24 == v12)
    {
      v29 = result;
      v25 = sub_1B0A6D6C4(result, v45, a2);
      result = v29;
    }

    v26 = v25 >> 16;
    if (v25 >> 16 >= v42)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v33 = result;
      v28 = sub_1B0E44E08();
      result = v33;
      if (v24 != v12)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v43 = v45;
        v44 = v37;
        v27 = &v43;
      }

      else
      {
        v27 = v36;
        if ((v45 & 0x1000000000000000) == 0)
        {
          v32 = result;
          v27 = sub_1B0E46368();
          result = v32;
        }
      }

      v28 = *(v27 + v26);
      if (v24 != v12)
      {
LABEL_38:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_43;
      }
    }

    result = sub_1B0A6D6C4(result, v45, a2);
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_39:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      if (v15 == v7)
      {
        return 0;
      }

      goto LABEL_45;
    }

LABEL_43:
    if (v42 <= result >> 16)
    {
      goto LABEL_50;
    }

    result = sub_1B0E44DD8();
    if (v15 == v7)
    {
      return 0;
    }

LABEL_45:
    if (((v28 ^ v17) & 0xDF) != 0)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_1B043DCA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X7>, _OWORD *a5@<X8>, uint64_t (*a6)(_OWORD *))
{
  result = sub_1B0DFF3DC(a1, a2, a3, 1);
  if (!v6)
  {
    if (result < 0)
    {
      sub_1B0436554();
      swift_allocError();
      *v18 = 0xD000000000000011;
      v18[1] = 0x80000001B0F2FEE0;
      v18[2] = 0xD000000000000020;
      v18[3] = 0x80000001B0F2FA10;
      v18[4] = 202;
      return swift_willThrow();
    }

    else
    {
      v13 = result;
      sub_1B0DFE880(a4, 0xE700000000000000, 0, 0, a1, a2, a3);
      *&v19[0] = v13;
      result = a6(v19);
      v14 = v19[7];
      a5[6] = v19[6];
      a5[7] = v14;
      a5[8] = v19[8];
      v15 = v19[3];
      a5[2] = v19[2];
      a5[3] = v15;
      v16 = v19[5];
      a5[4] = v19[4];
      a5[5] = v16;
      v17 = v19[1];
      *a5 = v19[0];
      a5[1] = v17;
    }
  }

  return result;
}

void sub_1B043DDD8(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, unint64_t *a5@<X8>)
{
  v10 = __OFADD__(a2, 1);
  v11 = a2 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    if (v11 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v19 = a3;
      goto LABEL_6;
    }

    v12 = result;
    v9 = a4;
    v8 = a5;
    v13 = *result;
    v14 = *(result + 8);
    v15 = *(result + 16);
    v16 = *(result + 20);
    v17 = *(result + 22);
    sub_1B043E32C(result, &v57);
    if (v5)
    {
      *v12 = v13;
      *(v12 + 8) = v14;
      *(v12 + 16) = v15;
      *(v12 + 20) = v16;
      *(v12 + 22) = v17;
LABEL_6:
      swift_willThrow();
      return;
    }

    v7 = 0xD000000000000020;
    v6 = 0x80000001B0F2FA10;
    sub_1B0DFF2E8(v57, v58, v59 | (v60 << 32) | (v61 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 216);
    v20 = HIBYTE(v11) & 0xF;
    v21 = result & 0xFFFFFFFFFFFFLL;
    if ((v11 & 0x2000000000000000) != 0)
    {
      v22 = HIBYTE(v11) & 0xF;
    }

    else
    {
      v22 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v22)
    {
      goto LABEL_71;
    }

    if ((v11 & 0x1000000000000000) == 0)
    {
      v23 = v8;
      v24 = v9;
      if ((v11 & 0x2000000000000000) != 0)
      {
        v57 = result;
        v58 = v11 & 0xFFFFFFFFFFFFFFLL;
        if (result == 43)
        {
          if (v20)
          {
            v21 = v20 - 1;
            if (v20 != 1)
            {
              v27 = 0;
              v35 = &v57 + 1;
              while (1)
              {
                v36 = *v35 - 48;
                if (v36 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v27, 0xAuLL))
                {
                  break;
                }

                v30 = __CFADD__(10 * v27, v36);
                v27 = 10 * v27 + v36;
                if (v30)
                {
                  break;
                }

                ++v35;
                if (!--v21)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_69;
          }

LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        if (result != 45)
        {
          if (v20)
          {
            v27 = 0;
            v38 = &v57;
            while (1)
            {
              v39 = *v38 - 48;
              if (v39 > 9)
              {
                break;
              }

              if (!is_mul_ok(v27, 0xAuLL))
              {
                break;
              }

              v30 = __CFADD__(10 * v27, v39);
              v27 = 10 * v27 + v39;
              if (v30)
              {
                break;
              }

              v38 = (v38 + 1);
              if (!--v20)
              {
                goto LABEL_68;
              }
            }
          }

          goto LABEL_69;
        }

        if (v20)
        {
          v21 = v20 - 1;
          if (v20 != 1)
          {
            v27 = 0;
            v31 = &v57 + 1;
            while (1)
            {
              v32 = *v31 - 48;
              if (v32 > 9)
              {
                break;
              }

              if (!is_mul_ok(v27, 0xAuLL))
              {
                break;
              }

              v30 = 10 * v27 >= v32;
              v27 = 10 * v27 - v32;
              if (!v30)
              {
                break;
              }

              ++v31;
              if (!--v21)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_69;
        }
      }

      else
      {
        if ((result & 0x1000000000000000) != 0)
        {
          v25 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v51 = result;
          v56 = v11;
          v52 = sub_1B0E46368();
          v24 = v9;
          v23 = v8;
          v25 = v52;
          result = v51;
          v21 = v53;
          v11 = v56;
        }

        v26 = *v25;
        if (v26 == 43)
        {
          if (v21 >= 1)
          {
            if (--v21)
            {
              v27 = 0;
              if (v25)
              {
                v33 = v25 + 1;
                while (1)
                {
                  v34 = *v33 - 48;
                  if (v34 > 9)
                  {
                    goto LABEL_69;
                  }

                  if (!is_mul_ok(v27, 0xAuLL))
                  {
                    goto LABEL_69;
                  }

                  v30 = __CFADD__(10 * v27, v34);
                  v27 = 10 * v27 + v34;
                  if (v30)
                  {
                    goto LABEL_69;
                  }

                  ++v33;
                  if (!--v21)
                  {
                    goto LABEL_70;
                  }
                }
              }

              goto LABEL_68;
            }

            goto LABEL_69;
          }

          goto LABEL_84;
        }

        if (v26 != 45)
        {
          if (v21)
          {
            v27 = 0;
            if (v25)
            {
              while (1)
              {
                v37 = *v25 - 48;
                if (v37 > 9)
                {
                  goto LABEL_69;
                }

                if (!is_mul_ok(v27, 0xAuLL))
                {
                  goto LABEL_69;
                }

                v30 = __CFADD__(10 * v27, v37);
                v27 = 10 * v27 + v37;
                if (v30)
                {
                  goto LABEL_69;
                }

                ++v25;
                if (!--v21)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_68;
          }

LABEL_69:
          v27 = 0;
          LOBYTE(v21) = 1;
LABEL_70:
          v62 = v21;
          if (v21)
          {
LABEL_71:
            v57 = 0;
            v58 = 0xE000000000000000;
            v40 = result;
            v41 = v11;
            sub_1B0E46298();

            v57 = v40;
            v58 = v41;
            MEMORY[0x1B2726E80](v7 - 16, 0x80000001B0F304C0);
            v42 = v57;
            v43 = v58;
            sub_1B0436554();
            swift_allocError();
            *v44 = v42;
            *(v44 + 8) = v43;
            *(v44 + 16) = v7;
            *(v44 + 24) = v6;
            v45 = 218;
LABEL_72:
            *(v44 + 32) = v45;
            swift_willThrow();

            return;
          }

          goto LABEL_76;
        }

        if (v21 >= 1)
        {
          if (--v21)
          {
            v27 = 0;
            if (v25)
            {
              v28 = v25 + 1;
              while (1)
              {
                v29 = *v28 - 48;
                if (v29 > 9)
                {
                  goto LABEL_69;
                }

                if (!is_mul_ok(v27, 0xAuLL))
                {
                  goto LABEL_69;
                }

                v30 = 10 * v27 >= v29;
                v27 = 10 * v27 - v29;
                if (!v30)
                {
                  goto LABEL_69;
                }

                ++v28;
                if (!--v21)
                {
                  goto LABEL_70;
                }
              }
            }

LABEL_68:
            LOBYTE(v21) = 0;
            goto LABEL_70;
          }

          goto LABEL_69;
        }

        __break(1u);
      }

      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }
  }

  v62 = 0;
  v54 = result;
  v55 = v11;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v27 = sub_1B0B6D434(v54, v55, 10);
  v47 = v46;

  result = v54;
  v11 = v55;
  if (v47)
  {
    goto LABEL_71;
  }

  v24 = v9;
  v23 = v8;
LABEL_76:
  if (v24)
  {
LABEL_80:
    *v23 = v27;
    v49 = v23;
    v50 = sub_1B0E44CF8();

    v49[1] = v50;
    return;
  }

  v48 = sub_1B0C704E4(result, v11);
  if ((v48 & 0x100) == 0)
  {
    v23 = v8;
    if (v48 == 48)
    {

      sub_1B0436554();
      swift_allocError();
      strcpy(v44, "starts with 0");
      *(v44 + 14) = -4864;
      *(v44 + 16) = v7;
      *(v44 + 24) = v6;
      v45 = 221;
      goto LABEL_72;
    }

    goto LABEL_80;
  }

LABEL_86:
  __break(1u);
}

uint64_t *sub_1B043E32C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 2);
  v2 = *(result + 3);
  if (v2 < v3)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v4 = *(result + 4);
  v5 = *(result + 10);
  v6 = *(result + 22);
  if (v4 - (v6 | (v5 << 8)) < v2)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v20 = *(result + 10);
  v21 = *result;
  v38 = *result;
  v39 = v3;
  v40 = v2;
  v18 = v4;
  v41 = v4;
  v42 = v5;
  v19 = v6;
  v43 = v6;
  v44 = v3;
  v45 = v2;
  if (v2 == v3)
  {
LABEL_9:

    sub_1B04394F4(&v38);
    sub_1B0D3EA30();
    swift_allocError();
    return swift_willThrow();
  }

  v7 = 0;
  v8 = v3 + (v5 << 8) + v6;
  while (1)
  {
    if (v3 + v7 < v39)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v3 + v7 - v39 >= v40 - v39)
    {
      goto LABEL_20;
    }

    result = swift_beginAccess();
    if (*(*(v38 + 24) + (v43 | (v42 << 8)) + v3 + v7) - 58 < 0xFFFFFFF6)
    {
      break;
    }

    ++v8;
    ++v7;
    if (!(v3 - v2 + v7))
    {
      goto LABEL_9;
    }
  }

  sub_1B04394F4(&v38);
  v30 = v21;
  v31 = v3;
  v32 = v2;
  v33 = v18;
  v34 = v20;
  v35 = v19;
  v36 = v3;
  v37 = v2;

  result = sub_1B04394F4(&v30);
  if (v3 + v7 == v36)
  {
    v22 = v21;
    v23 = v3;
    v24 = v2;
    v25 = v18;
    v26 = v20;
    v27 = v19;
    v28 = v3;
    v29 = v2;
    if (v7 >= (v2 - v3))
    {
      goto LABEL_24;
    }

    swift_beginAccess();
    v12 = *(v21 + 24);
    v13 = *(v12 + v8);
    v14 = *(v12 + v8);

    sub_1B04394F4(&v22);
    sub_1B0E46298();
    MEMORY[0x1B2726E80](0xD000000000000011, 0x80000001B0F304E0);
    v15 = ((v14 >> 6) & 0xFFFFC0FF | ((v14 & 0x3F) << 8)) + 33217;
    if (v13 >= 0)
    {
      v15 = v14 + 1;
    }

    v46 = (v15 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v15) >> 3))));
    sub_1B0E44C78();
    sub_1B0E44858();

    sub_1B0436554();
    swift_allocError();
    *v16 = 0;
    v16[1] = 0xE000000000000000;
    v16[2] = 0xD000000000000020;
    v16[3] = 0x80000001B0F2FA10;
    v16[4] = 118;
    return swift_willThrow();
  }

  v22 = v21;
  v23 = v3;
  v24 = v2;
  v25 = v18;
  v26 = v20;
  v27 = v19;
  v28 = v3;
  v29 = v2;
  v9 = v3 + v7;

  sub_1B04394F4(&v22);
  result = (v9 - v28);
  if (__OFSUB__(v9, v28))
  {
    goto LABEL_23;
  }

  result = ByteBuffer.readSlice(length:)(result);
  if (result)
  {
    *a2 = result;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
    *(a2 + 20) = WORD2(v11);
    *(a2 + 22) = BYTE6(v11);
    return result;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_1B043E71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    v29[0] = v10;

    sub_1B0E0581C(v4, v29, v8, v7, v25, v28, v26, v27);
    if (v6)
    {

      swift_willThrow();
      v9 = v23;
      v16 = v24;
      v18 = v22;
      goto LABEL_9;
    }

    sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, v4, v8, v7);
    goto LABEL_16;
  }

  v29[7] = v14;
  v29[8] = v13;
  v29[12] = v9;
  v29[13] = v8;
  v29[15] = v7;
  v29[16] = v6;
  v29[17] = v4;
  v29[18] = v3;
  v29[19] = v11;
  v29[20] = v12;
  if (a2 + 1 < a3)
  {
    v4 = a1;
    v3 = *a1;
    v13 = *(a1 + 8);
    v16 = *(a1 + 16);
    v9 = *(a1 + 20);
    v17 = a2 + 2;
    v18 = *(a1 + 22);
    if (a2 + 2 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v20 = a3;
      goto LABEL_8;
    }

    sub_1B0436204(v4);
    if (v5)
    {

LABEL_8:
      swift_willThrow();
LABEL_9:
      *v4 = v3;
      *(v4 + 8) = v13;
      *(v4 + 16) = v16;
      *(v4 + 20) = v9;
      *(v4 + 22) = v18;
      goto LABEL_10;
    }

    sub_1B0DFE880(0x6C696EuLL, 0xE300000000000000, 0, 0, v4, v17, a3);

    v9 = MEMORY[0x1E69E7CC0];
    sub_1B0436204(v4);

    sub_1B0DFE880(0x6C696EuLL, 0xE300000000000000, 0, 0, v4, v17, a3);

    sub_1B0436204(v4);

    sub_1B0DFE880(0x6C696EuLL, 0xE300000000000000, 0, 0, v4, v17, a3);
LABEL_16:

    return v9;
  }

  sub_1B0439BCC();
  swift_allocError();
  *v19 = a3;
LABEL_10:
  swift_willThrow();
  return v9;
}

uint64_t OUTLINED_FUNCTION_7(uint64_t result, uint64_t a2, float a3)
{
  *result = a3;
  *(result + 4) = a2;
  return result;
}

uint64_t sub_1B043F064(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E75D8, &qword_1B0EF5000);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B0EF4FF0;
  *(v11 + 32) = 0x5452454C41;
  *(v11 + 40) = 0xE500000000000000;
  *(v11 + 48) = sub_1B0DAC4CC;
  *(v11 + 56) = 0;
  strcpy((v11 + 64), "ALREADYEXISTS");
  *(v11 + 78) = -4864;
  *(v11 + 80) = sub_1B0DAC4DC;
  *(v11 + 88) = 0;
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a7;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1B0DAF5A4;
  *(v13 + 24) = v12;
  *(v11 + 96) = 0x4955444E45505041;
  *(v11 + 104) = 0xE900000000000044;
  *(v11 + 112) = sub_1B04403D0;
  *(v11 + 120) = v13;
  *(v11 + 128) = 0xD000000000000014;
  *(v11 + 136) = 0x80000001B0F30070;
  *(v11 + 144) = sub_1B0DAC4EC;
  *(v11 + 152) = 0;
  *(v11 + 160) = 0xD000000000000013;
  *(v11 + 168) = 0x80000001B0F30090;
  *(v11 + 176) = sub_1B0DAC4FC;
  *(v11 + 184) = 0;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1B0DAF5C4;
  *(v15 + 24) = v14;
  *(v11 + 192) = 0x5352414843444142;
  *(v11 + 200) = 0xEA00000000005445;
  *(v11 + 208) = sub_1B0DAFD90;
  *(v11 + 216) = v15;
  *(v11 + 224) = 0x544F4E4E4143;
  *(v11 + 232) = 0xE600000000000000;
  *(v11 + 240) = sub_1B0DAC50C;
  *(v11 + 248) = 0;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B044111C;
  *(v17 + 24) = v16;
  *(v11 + 256) = 0x494C494241504143;
  *(v11 + 264) = 0xEA00000000005954;
  *(v11 + 272) = sub_1B0DAFD90;
  *(v11 + 280) = v17;
  *(v11 + 288) = 0x5542544E45494C43;
  *(v11 + 296) = 0xE900000000000047;
  *(v11 + 304) = sub_1B0DAC51C;
  *(v11 + 312) = 0;
  *(v11 + 320) = 0x4445534F4C43;
  *(v11 + 328) = 0xE600000000000000;
  *(v11 + 336) = sub_1B0DAC52C;
  *(v11 + 344) = 0;
  *(v11 + 352) = 0xD000000000000011;
  *(v11 + 360) = 0x80000001B0F300B0;
  *(v11 + 368) = sub_1B0DAC53C;
  *(v11 + 376) = 0;
  strcpy((v11 + 384), "CONTACTADMIN");
  *(v11 + 397) = 0;
  *(v11 + 398) = -5120;
  *(v11 + 400) = sub_1B0DAC54C;
  *(v11 + 408) = 0;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B0DAF5E4;
  *(v19 + 24) = v18;
  *(v11 + 416) = 0x44495559504F43;
  *(v11 + 424) = 0xE700000000000000;
  *(v11 + 432) = sub_1B0DAFD90;
  *(v11 + 440) = v19;
  *(v11 + 448) = 0x4954505552524F43;
  *(v11 + 456) = 0xEA00000000004E4FLL;
  *(v11 + 464) = sub_1B0DAC55C;
  *(v11 + 472) = 0;
  *(v11 + 480) = 0x44455249505845;
  *(v11 + 488) = 0xE700000000000000;
  *(v11 + 496) = sub_1B0DAC56C;
  *(v11 + 504) = 0;
  strcpy((v11 + 512), "EXPUNGEISSUED");
  *(v11 + 526) = -4864;
  *(v11 + 528) = sub_1B0DAC57C;
  *(v11 + 536) = 0;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1B0DAF604;
  *(v21 + 24) = v20;
  strcpy((v11 + 544), "HIGHESTMODSEQ");
  *(v11 + 558) = -4864;
  *(v11 + 560) = sub_1B0DAFD90;
  *(v11 + 568) = v21;
  *(v11 + 576) = 0x4553554E49;
  *(v11 + 584) = 0xE500000000000000;
  *(v11 + 592) = sub_1B0DAC58C;
  *(v11 + 600) = 0;
  *(v11 + 608) = 0x54494D494CLL;
  *(v11 + 616) = 0xE500000000000000;
  *(v11 + 624) = sub_1B0DAC59C;
  *(v11 + 632) = 0;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1B0DAF624;
  *(v23 + 24) = v22;
  *(v11 + 640) = 0x49584F424C49414DLL;
  *(v11 + 648) = 0xE900000000000044;
  *(v11 + 656) = sub_1B0DAFD90;
  *(v11 + 664) = v23;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1B0DAF644;
  *(v25 + 24) = v24;
  *(v11 + 672) = 0x415441444154454DLL;
  *(v11 + 680) = 0xE800000000000000;
  *(v11 + 688) = sub_1B0DAFD90;
  *(v11 + 696) = v25;
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v26[5] = a7;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1B0DAF664;
  *(v27 + 24) = v26;
  *(v11 + 704) = 0x4445494649444F4DLL;
  *(v11 + 712) = 0xE800000000000000;
  *(v11 + 720) = sub_1B0DAFD90;
  *(v11 + 728) = v27;
  v28 = swift_allocObject();
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v28[5] = a7;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1B0DAF684;
  *(v29 + 24) = v28;
  *(v11 + 736) = 0x43415053454D414ELL;
  *(v11 + 744) = 0xE900000000000045;
  *(v11 + 752) = sub_1B0DAFD90;
  *(v11 + 760) = v29;
  *(v11 + 768) = 0x514553444F4D4F4ELL;
  *(v11 + 776) = 0xE800000000000000;
  *(v11 + 784) = sub_1B0DAC5AC;
  *(v11 + 792) = 0;
  *(v11 + 800) = 0x54534958454E4F4ELL;
  *(v11 + 808) = 0xEB00000000544E45;
  *(v11 + 816) = sub_1B0DAC5BC;
  *(v11 + 824) = 0;
  *(v11 + 832) = 0x4D5245504F4ELL;
  *(v11 + 840) = 0xE600000000000000;
  *(v11 + 848) = sub_1B0DAC5CC;
  *(v11 + 856) = 0;
  *(v11 + 864) = 0x4445564153544F4ELL;
  *(v11 + 872) = 0xE800000000000000;
  *(v11 + 880) = sub_1B0DAC5DC;
  *(v11 + 888) = 0;
  *(v11 + 896) = 0x544F55515245564FLL;
  *(v11 + 904) = 0xE900000000000041;
  *(v11 + 912) = sub_1B0DAC5EC;
  *(v11 + 920) = 0;
  *(v11 + 928) = 0x4553524150;
  *(v11 + 936) = 0xE500000000000000;
  *(v11 + 944) = sub_1B0DAC5FC;
  *(v11 + 952) = 0;
  v30 = swift_allocObject();
  v30[2] = a4;
  v30[3] = a5;
  v30[4] = a6;
  v30[5] = a7;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1B0DAF6A4;
  *(v31 + 24) = v30;
  strcpy((v11 + 960), "PERMANENTFLAGS");
  *(v11 + 975) = -18;
  *(v11 + 976) = sub_1B0DAFD90;
  *(v11 + 984) = v31;
  *(v11 + 992) = 0x5259434156495250;
  *(v11 + 1000) = 0xEF44455249555145;
  *(v11 + 1008) = sub_1B0DAC60C;
  *(v11 + 1016) = 0;
  *(v11 + 1024) = 0x4C4E4F2D44414552;
  *(v11 + 1032) = 0xE900000000000059;
  *(v11 + 1040) = sub_1B0DAC61C;
  *(v11 + 1048) = 0;
  *(v11 + 1056) = 0x4952572D44414552;
  *(v11 + 1064) = 0xEA00000000004554;
  *(v11 + 1072) = sub_1B0DAC62C;
  *(v11 + 1080) = 0;
  v32 = swift_allocObject();
  v32[2] = a4;
  v32[3] = a5;
  v32[4] = a6;
  v32[5] = a7;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1B0DAF6C4;
  *(v33 + 24) = v32;
  *(v11 + 1088) = 0x4C41525245464552;
  *(v11 + 1096) = 0xE800000000000000;
  *(v11 + 1104) = sub_1B0DAFD90;
  *(v11 + 1112) = v33;
  *(v11 + 1120) = 0x5542524556524553;
  *(v11 + 1128) = 0xE900000000000047;
  *(v11 + 1136) = sub_1B0DAC63C;
  *(v11 + 1144) = 0;
  *(v11 + 1152) = 0x5441455243595254;
  *(v11 + 1160) = 0xE900000000000045;
  *(v11 + 1168) = sub_1B0DAC64C;
  *(v11 + 1176) = 0;
  v34 = swift_allocObject();
  v34[2] = a4;
  v34[3] = a5;
  v34[4] = a6;
  v34[5] = a7;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1B0DAF6E4;
  *(v35 + 24) = v34;
  *(v11 + 1184) = 0x5458454E444955;
  *(v11 + 1192) = 0xE700000000000000;
  *(v11 + 1200) = sub_1B0DAFD90;
  *(v11 + 1208) = v35;
  strcpy((v11 + 1216), "UIDNOTSTICKY");
  *(v11 + 1229) = 0;
  *(v11 + 1230) = -5120;
  *(v11 + 1232) = sub_1B0DAC65C;
  *(v11 + 1240) = 0;
  *(v11 + 1248) = 0x4955514552444955;
  *(v11 + 1256) = 0xEB00000000444552;
  *(v11 + 1264) = sub_1B0DAC66C;
  *(v11 + 1272) = 0;
  v36 = swift_allocObject();
  v36[2] = a4;
  v36[3] = a5;
  v36[4] = a6;
  v36[5] = a7;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1B0DAF704;
  *(v37 + 24) = v36;
  *(v11 + 1280) = 0x44494C4156444955;
  *(v11 + 1288) = 0xEB00000000595449;
  *(v11 + 1296) = sub_1B0DAFD90;
  *(v11 + 1304) = v37;
  *(v11 + 1312) = 0x414C494156414E55;
  *(v11 + 1320) = 0xEB00000000454C42;
  *(v11 + 1328) = sub_1B0DAC67C;
  *(v11 + 1336) = 0;
  v38 = swift_allocObject();
  v38[2] = a4;
  v38[3] = a5;
  v38[4] = a6;
  v38[5] = a7;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_1B0DAF724;
  *(v39 + 24) = v38;
  *(v11 + 1344) = 0x4E4545534E55;
  *(v11 + 1352) = 0xE600000000000000;
  *(v11 + 1360) = sub_1B0DAFD90;
  *(v11 + 1368) = v39;
  v40 = swift_allocObject();
  v40[2] = a4;
  v40[3] = a5;
  v40[4] = a6;
  v40[5] = a7;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1B0DAF744;
  *(v41 + 24) = v40;
  *(v11 + 1376) = 0x4843454D4C5255;
  *(v11 + 1384) = 0xE700000000000000;
  *(v11 + 1392) = sub_1B0DAFD90;
  *(v11 + 1400) = v41;
  *(v11 + 1408) = 0x52545441455355;
  *(v11 + 1416) = 0xE700000000000000;
  *(v11 + 1424) = sub_1B0DAC68C;
  *(v11 + 1432) = 0;
  swift_retain_n();
  v43 = sub_1B0DA9080(v11, v42);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7550, &qword_1B0EF4668);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E75E0, &qword_1B0EF5008);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC3500;
  v45 = swift_allocObject();
  v45[2] = a4;
  v45[3] = a5;
  v45[4] = a6;
  v45[5] = a7;
  v45[6] = v43;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_1B0440424;
  *(v46 + 24) = v45;
  *(inited + 32) = sub_1B0DAFD90;
  *(inited + 40) = v46;
  v47 = swift_allocObject();
  v47[2] = a4;
  v47[3] = a5;
  v47[4] = a6;
  v47[5] = a7;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_1B0DAF764;
  *(v48 + 24) = v47;
  *(inited + 48) = sub_1B0DAFD90;
  *(inited + 56) = v48;
  swift_retain_n();
  sub_1B0440090(inited, a1, a2, a3, 0xD000000000000020, 0x80000001B0F2FA10, 436);
  v50 = v49;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
  swift_arrayDestroy();
  return v50;
}

uint64_t sub_1B043FFD0()
{

  return swift_deallocObject();
}

void sub_1B0440090(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 16);
  if (!v8)
  {
LABEL_13:
    sub_1B0436554();
    swift_allocError();
    *v22 = 0xD000000000000019;
    v22[1] = 0x80000001B0F2FF00;
    v22[2] = a5;
    v22[3] = a6;
    v22[4] = a7;
    swift_willThrow();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return;
  }

  v28 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v9 = v7;
    v12 = (a1 + 32);
    while (1)
    {
      *(swift_allocObject() + 16) = *v12;
      if (v28 >= a4)
      {
        sub_1B0439BCC();
        v9 = swift_allocError();
        *v19 = a4;
      }

      else
      {
        v26 = v12;
        v27 = v8;
        v13 = *a2;
        v14 = a2[1];
        v15 = *(a2 + 4);
        v16 = *(a2 + 10);
        v17 = a4;
        v18 = *(a2 + 22);

        sub_1B04403B8(a2, v28, v17, &v29);
        if (!v9)
        {

          return;
        }

        *a2 = v13;
        a2[1] = v14;
        *(a2 + 4) = v15;
        *(a2 + 10) = v16;
        *(a2 + 22) = v18;
        a4 = v17;
        v12 = v26;
        v8 = v27;
      }

      swift_willThrow();
      v30 = v9;
      v20 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v30 = v9;
        v21 = v9;
        if (!swift_dynamicCast())
        {

          return;
        }
      }

      v9 = 0;
      ++v12;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1B0440364()
{

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_11(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

uint64_t sub_1B04403E8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(v3 + 16))(a1, *a2, a2[1]);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_1B0440440@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  v2 = *(result + 12);
  if (v2 < v3)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v4 = *(result + 16);
  v5 = *(result + 20);
  v6 = *(result + 22);
  if (v4 - (v6 | (v5 << 8)) < v2)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v19 = *(result + 20);
  v20 = *result;
  v37 = *result;
  v38 = v3;
  v39 = v2;
  v17 = v4;
  v40 = v4;
  v41 = v5;
  v18 = v6;
  v42 = v6;
  v43 = v3;
  v44 = v2;
  if (v2 == v3)
  {
LABEL_12:

    sub_1B04394F4(&v37);
    sub_1B0D3EA30();
    swift_allocError();
    return swift_willThrow();
  }

  v7 = 0;
  v8 = v3 + (v5 << 8) + v6;
  while (1)
  {
    if (v3 + v7 < v38)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v3 + v7 - v38 >= v39 - v38)
    {
      goto LABEL_23;
    }

    swift_beginAccess();
    v9 = *(*(v37 + 24) + (v42 | (v41 << 8)) + v3 + v7);
    result = isalnum(v9);
    if (!result && (v9 - 45) >= 2)
    {
      break;
    }

    ++v8;
    ++v7;
    if (!(v3 - v2 + v7))
    {
      goto LABEL_12;
    }
  }

  sub_1B04394F4(&v37);
  v29 = v20;
  v30 = v3;
  v31 = v2;
  v32 = v17;
  v33 = v19;
  v34 = v18;
  v35 = v3;
  v36 = v2;

  result = sub_1B04394F4(&v29);
  if (v3 + v7 == v35)
  {
    v21 = v20;
    v22 = v3;
    v23 = v2;
    v24 = v17;
    v25 = v19;
    v26 = v18;
    v27 = v3;
    v28 = v2;
    if (v7 >= (v2 - v3))
    {
      goto LABEL_27;
    }

    swift_beginAccess();
    v13 = *(*(v20 + 24) + v8);

    sub_1B04394F4(&v21);
    sub_1B0E46298();
    MEMORY[0x1B2726E80](0xD000000000000011, 0x80000001B0F304E0);
    v14 = ((v13 >> 6) & 0xFFFFC0FF | ((v13 & 0x3F) << 8)) + 33217;
    if (v13 >= 0)
    {
      v14 = v13 + 1;
    }

    v45 = (v14 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v14) >> 3))));
    sub_1B0E44C78();
    sub_1B0E44858();

    sub_1B0436554();
    swift_allocError();
    *v15 = 0;
    v15[1] = 0xE000000000000000;
    v15[2] = 0xD000000000000020;
    v15[3] = 0x80000001B0F2FA10;
    v15[4] = 118;
    return swift_willThrow();
  }

  v21 = v20;
  v22 = v3;
  v23 = v2;
  v24 = v17;
  v25 = v19;
  v26 = v18;
  v27 = v3;
  v28 = v2;

  sub_1B04394F4(&v21);
  result = v3 + v7 - v27;
  if (__OFSUB__(v3 + v7, v27))
  {
    goto LABEL_26;
  }

  result = ByteBuffer.readSlice(length:)(result);
  if (result)
  {
    *a2 = result;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 20) = WORD2(v12);
    *(a2 + 22) = BYTE6(v12);
    return result;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1B04407F4(uint64_t *a1)
{
  v2 = a1[3];
  v1 = a1[4];
  v3 = *a1;
  v5 = *(a1 + 2);
  v4 = *(a1 + 3);
  v6 = *(a1 + 10);
  v7 = *(a1 + 22);
  v8 = sub_1B0440FC0(0, (v1 - v2) & ~((v1 - v2) >> 63), 0, MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  v9 = v3;
  v10 = 0;
  v11 = 0;
  v12 = v5 + (v4 - v5);
  v13 = v7 | (v6 << 8);
  v14 = 8 * v1;
  v15 = xmmword_1B0EE0600;
  v16 = xmmword_1B0EE0610;
  v17 = xmmword_1B0EE0620;
  result = 49376;
  v19 = v2;
  while (1)
  {
    LODWORD(v55) = v10;
    BYTE4(v55) = v11;
    if (!v11)
    {
      break;
    }

    if ((v10 & 0x80) == 0)
    {
      v46 = v17;
      v48 = v16;
      v50 = v15;
      v52 = v14;
      v35 = v13;
      v36 = v12;
      v37 = v9;
      sub_1B0CB1F34();
      result = sub_1B0C14AB0();
      v39 = *(v38 + 4);
      if (!v39)
      {
        goto LABEL_79;
      }

      *v38 >>= 8;
      *(v38 + 4) = v39 - 8;
      (result)(v54, 0);
      v22 = (v10 + 1);
      v9 = v37;
      v12 = v36;
      v13 = v35;
      v14 = v52;
      v16 = v48;
      v15 = v50;
      v17 = v46;
      result = 49376;
      goto LABEL_49;
    }

LABEL_11:
    if (v19 == v1)
    {
      goto LABEL_12;
    }

    if (v19 < v2 || v19 >= v1)
    {
      goto LABEL_76;
    }

    if (v19 < v5)
    {
      goto LABEL_77;
    }

    if (v19 >= v12)
    {
      goto LABEL_78;
    }

    v24 = v19 + 1;
    v10 = (*(*(v9 + 24) + v13 + v19) << v11) | ((-255 << v11) - 1) & v10;
    v23 = v11 + 8;
    if ((v11 + 8) > 0x1Fu)
    {
      goto LABEL_44;
    }

    if (v24 == v1)
    {
      goto LABEL_12;
    }

    if (v19 < v2 || v24 >= v1)
    {
      goto LABEL_76;
    }

    if (v19 < v5)
    {
      goto LABEL_77;
    }

    if (v12 == v24)
    {
      goto LABEL_78;
    }

    v25 = v19 + 2;
    v10 = (*(*(v9 + 24) + v13 + v24) << v23) | ((-255 << v23) - 1) & v10;
    v23 = v11 + 16;
    if ((v11 + 16) > 0x1Fu)
    {
      v19 += 2;
    }

    else
    {
      if (v25 == v1)
      {
        goto LABEL_12;
      }

      if (v19 < v2 || v25 >= v1)
      {
        goto LABEL_76;
      }

      if (v19 < v5)
      {
        goto LABEL_77;
      }

      if (v12 == v25)
      {
        goto LABEL_78;
      }

      v24 = v19 + 3;
      v10 = (*(*(v9 + 24) + v13 + v25) << v23) | ((-255 << v23) - 1) & v10;
      v23 = v11 + 24;
      if ((v11 + 24) > 0x1Fu)
      {
LABEL_44:
        v19 = v24;
        goto LABEL_45;
      }

      if (v24 == v1)
      {
        goto LABEL_12;
      }

      if (v19 < v2 || v24 >= v1)
      {
        goto LABEL_76;
      }

      if (v19 < v5)
      {
        goto LABEL_77;
      }

      if (v12 == v24)
      {
        goto LABEL_78;
      }

      v26 = v19 + 4;
      v10 = (*(*(v9 + 24) + v13 + v24) << v23) | ((-255 << v23) - 1) & v10;
      if (v11 >= 0xE0u)
      {
        if (v26 != v1)
        {
          if (v19 < v2 || v26 >= v1)
          {
            goto LABEL_76;
          }

          if (v19 < v5)
          {
            goto LABEL_77;
          }

          if (v12 == v26)
          {
            goto LABEL_78;
          }

          v19 += 5;
          v10 = (*(*(v9 + 24) + v13 + v26) << v11) | ((-255 << v11) - 1) & v10;
          v23 = v11 + 40;
          goto LABEL_45;
        }

LABEL_12:
        v23 = v14 + v11 - 8 * v19;
        v19 = v1;
        if (!v23)
        {
LABEL_72:
          v54[0] = 0;
          v54[1] = 0xE000000000000000;
          v55 = v8;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E64F8, &qword_1B0EE7580);
          sub_1B0440FD4();
          sub_1B0E44C48();

          return v54[0];
        }

        goto LABEL_45;
      }

      v23 = v11 + 32;
      v19 += 4;
    }

LABEL_45:
    if ((v10 & 0xC0E0) == 0x80C0)
    {
      if ((v10 & 0x1E) == 0)
      {
        goto LABEL_71;
      }

      v27 = 16;
    }

    else if ((v10 & 0xC0C0F0) == 0x8080E0)
    {
      if ((v10 & 0x200F) == 0 || (v10 & 0x200F) == 0x200D)
      {
        goto LABEL_71;
      }

      v27 = 24;
    }

    else
    {
      if ((v10 & 0xC0C0C0F8) != 0x808080F0 || (v10 & 0x3007) == 0 || __rev16(v10 & 0x3007) > 0x400)
      {
LABEL_71:
        v43 = sub_1B0E46D58();
        LODWORD(v55) = v10 >> ((8 * v43) & 0x38);
        BYTE4(v55) = v23 - 8 * v43;

        return 0;
      }

      v27 = 32;
    }

    LODWORD(v55) = v10 >> v27;
    BYTE4(v55) = v23 - v27;
    v22 = ((1 << (v27 >> 1) << (v27 >> 1)) - 1) & (v10 + 16843009);
LABEL_49:
    v28 = __clz(v22) >> 3;
    switch(v28)
    {
      case 1u:
        v29 = ((v22 - 65793) >> 2) & 0xFC0 | ((v22 - 65793) >> 16) & 0x3F | (((v22 - 65793) & 0xF) << 12);
        break;
      case 2u:
        v29 = (((v22 - 257) & 0x1F) << 6) | ((v22 - 257) >> 8) & 0x3F;
        break;
      case 3u:
        v29 = v22 - 1;
        break;
      default:
        v30 = vdupq_n_s32(v22 - 16843009);
        v31.i64[0] = vshlq_u32(v30, v15).u64[0];
        v31.i64[1] = vshlq_u32(v30, v16).i64[1];
        v32 = vandq_s8(v31, v17);
        *v32.i8 = vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
        v29 = v32.i32[0] | v32.i32[1];
        break;
    }

    v10 = v55;
    v11 = BYTE4(v55);
    v34 = *(v8 + 2);
    v33 = *(v8 + 3);
    if (v34 >= v33 >> 1)
    {
      v44 = v12;
      v45 = v9;
      v40 = v8;
      v41 = v13;
      v53 = v14;
      v49 = v16;
      v51 = v15;
      v47 = v17;
      v42 = sub_1B0440FC0((v33 > 1), v34 + 1, 1, v40);
      v17 = v47;
      v16 = v49;
      v15 = v51;
      v14 = v53;
      v13 = v41;
      v12 = v44;
      v9 = v45;
      v8 = v42;
      result = 49376;
    }

    *(v8 + 2) = v34 + 1;
    *&v8[4 * v34 + 32] = v29;
  }

  if (v19 == v1)
  {
    goto LABEL_72;
  }

  if (v19 >= v2 && v19 < v1)
  {
    if (v19 < v5)
    {
      goto LABEL_74;
    }

    if (v19 >= v12)
    {
      goto LABEL_75;
    }

    v20 = *(*(v9 + 24) + v13 + v19);
    v21 = *(*(v9 + 24) + v13 + v19++);
    if ((v20 & 0x80000000) == 0)
    {
      v22 = v21 + 1;
      goto LABEL_49;
    }

    v10 = v10 & 0xFFFFFF00 | v21;
    v11 = 8;
    goto LABEL_11;
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
  return result;
}

char *sub_1B0440EC4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

unint64_t sub_1B0440FD4()
{
  result = qword_1EB6DADD8;
  if (!qword_1EB6DADD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E64F8, &qword_1B0EE7580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DADD8);
  }

  return result;
}

unint64_t sub_1B0441064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1B0E46A78())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1B044113C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_allocObject();
  v17 = MEMORY[0x1E69E7CC0];

  sub_1B0E06504(a1, &v17, a2, a3, a4, a5, a6, a7);

  if (v7)
  {

    return swift_deallocUninitializedObject();
  }

  else
  {
    *(v15 + 16) = v17;
    return v15 | 4;
  }
}

uint64_t sub_1B0441228()
{

  return swift_deallocObject();
}

uint64_t *sub_1B0441264@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 2);
  v2 = *(result + 3);
  if (v2 < v3)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v4 = *(result + 4);
  v5 = *(result + 10);
  v6 = *(result + 22);
  if (v4 - (v6 | (v5 << 8)) < v2)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v24 = *(result + 22);
  v25 = *result;
  v42 = *result;
  v43 = v3;
  v44 = v2;
  v23 = v4;
  v45 = v4;
  v46 = v5;
  v47 = v6;
  v48 = v3;
  v49 = v2;
  if (v2 == v3)
  {
LABEL_4:

    sub_1B04394F4(&v42);
    sub_1B0D3EA30();
    swift_allocError();
    return swift_willThrow();
  }

  v7 = 0;
  v8 = v3 + (v5 << 8) + v6;
  while (1)
  {
    if (v3 + v7 < v43)
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v3 + v7 - v43 >= v44 - v43)
    {
      goto LABEL_28;
    }

    result = swift_beginAccess();
    v9 = *(*(v42 + 24) + (v47 | (v46 << 8)) + v3 + v7);
    v10 = v9 - 32;
    if (v9 < 0x20)
    {
      break;
    }

    v11 = v10 > 0x3D;
    v12 = (1 << v10) & 0x3000000000000725;
    v13 = v11 || v12 == 0;
    if (!v13 || v9 == 123 || (v9 & 0x80) != 0)
    {
      break;
    }

    ++v8;
    ++v7;
    if (!(v3 - v2 + v7))
    {
      goto LABEL_4;
    }
  }

  sub_1B04394F4(&v42);
  v34 = v25;
  v35 = v3;
  v36 = v2;
  v37 = v23;
  v38 = v5;
  v39 = v24;
  v40 = v3;
  v41 = v2;

  result = sub_1B04394F4(&v34);
  if (v3 + v7 == v40)
  {
    v26 = v25;
    v27 = v3;
    v28 = v2;
    v29 = v23;
    v30 = v5;
    v31 = v24;
    v32 = v3;
    v33 = v2;
    if (v7 >= (v2 - v3))
    {
      goto LABEL_32;
    }

    swift_beginAccess();
    v17 = *(v25 + 24);
    v18 = *(v17 + v8);
    v19 = *(v17 + v8);

    sub_1B04394F4(&v26);
    sub_1B0E46298();
    MEMORY[0x1B2726E80](0xD000000000000011, 0x80000001B0F304E0);
    v20 = ((v19 >> 6) & 0xFFFFC0FF | ((v19 & 0x3F) << 8)) + 33217;
    if (v18 >= 0)
    {
      v20 = v19 + 1;
    }

    v50 = (v20 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v20) >> 3))));
    sub_1B0E44C78();
    sub_1B0E44858();

    sub_1B0436554();
    swift_allocError();
    *v21 = 0;
    v21[1] = 0xE000000000000000;
    v21[2] = 0xD000000000000020;
    v21[3] = 0x80000001B0F2FA10;
    v21[4] = 118;
    return swift_willThrow();
  }

  v26 = v25;
  v27 = v3;
  v28 = v2;
  v29 = v23;
  v30 = v5;
  v31 = v24;
  v32 = v3;
  v33 = v2;
  v14 = v3 + v7;

  sub_1B04394F4(&v26);
  result = (v14 - v32);
  if (__OFSUB__(v14, v32))
  {
    goto LABEL_31;
  }

  result = ByteBuffer.readSlice(length:)(result);
  if (result)
  {
    *a2 = result;
    *(a2 + 8) = v15;
    *(a2 + 16) = v16;
    *(a2 + 20) = WORD2(v16);
    *(a2 + 22) = BYTE6(v16);
    return result;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1B0441638(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v3(&v5, v6);
  return v5;
}

uint64_t sub_1B0441680@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B04416B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x1B2726F90]();
  result = sub_1B0CFD188(v6, a1, a2);
  if (v9)
  {
    v10 = *(a3 + 40);
    v11 = __CFADD__(v10, 1);
    v12 = v10 + 1;
    if (!v11)
    {
      *(a3 + 40) = v12;
      return v8;
    }

    __break(1u);
  }

  else
  {
    v13 = *(a3 + 48);
    v11 = __CFADD__(v13, 1);
    v14 = v13 + 1;
    if (!v11)
    {
      *(a3 + 48) = v14;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0CFD270(v6, a1, a2);
      return a1;
    }
  }

  __break(1u);
  return result;
}

Swift::UInt64 sub_1B0441754(Swift::UInt64 result)
{
  if (result)
  {
    v1 = result;
    v2 = PCG32Random.next()();
    v3 = v2 * v1;
    result = (v2 * v1) >> 64;
    if (v3 < v1)
    {
      v4 = -v1 % v1;
      if (v4 > v3)
      {
        do
        {
          v5 = PCG32Random.next()();
        }

        while (v4 > v5 * v1);
        return (v5 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::UInt64 __swiftcall PCG32Random.next()()
{
  v1 = v0[1];
  v2 = v1 + 0x5851F42D4C957F2DLL * *v0;
  v3 = __ROR4__((*v0 >> 45) ^ (*v0 >> 27), *v0 >> 59);
  *v0 = v1 + 0x5851F42D4C957F2DLL * v2;
  return __ROR4__((v2 >> 45) ^ (v2 >> 27), v2 >> 59) | (v3 << 32);
}

unint64_t sub_1B0441810(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
  while (sub_1B0E44EA8() != a1 || v9 != a2)
  {
    v10 = sub_1B0E46A78();

    if (v10)
    {
      return v8;
    }

    v8 = sub_1B0E44D08();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

char *sub_1B0441900(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E59F0, &unk_1B0EDA820);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

uint64_t *sub_1B0441A0C(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v19 = a3;
LABEL_16:
      swift_willThrow();
      return v8;
    }

    v12 = result;
    v13 = *result;
    v14 = result[1];
    v15 = *(result + 4);
    v32 = *(result + 22);
    v33 = *(result + 10);
    v8 = a7;

    sub_1B0E034F8(v12, v9, a3, a4, a5, a6, v8);
    if (v7)
    {

LABEL_15:
      *v12 = v13;
      *(v12 + 8) = v14;
      *(v12 + 16) = v15;
      *(v12 + 20) = v33;
      *(v12 + 22) = v32;
      goto LABEL_16;
    }

    v8 = v18;

    if (v9 + 1 >= a3)
    {
      sub_1B0439BCC();
      v23 = swift_allocError();
      *v24 = a3;
    }

    else
    {
      v31 = *v12;
      v20 = *(v12 + 8);
      v21 = *(v12 + 16);
      v30 = *(v12 + 20);
      v22 = *(v12 + 22);
      if (v9 + 2 < a3)
      {
        sub_1B0436204(v12);
        goto LABEL_13;
      }

      sub_1B0439BCC();
      v23 = swift_allocError();
      *v25 = a3;
      swift_willThrow();
      *v12 = v31;
      *(v12 + 8) = v20;
      *(v12 + 16) = v21;
      *(v12 + 20) = v30;
      *(v12 + 22) = v22;
    }

    swift_willThrow();
    v26 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (!swift_dynamicCast())
    {

      sub_1B0447F00(v8);

      goto LABEL_15;
    }

LABEL_13:
    sub_1B0E00714(v12, v9, a3);
    sub_1B0DFF2E8(v28, v29, v27 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 219);

    return v8;
  }

  __break(1u);
  return result;
}

void sub_1B0441D28(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(uint64_t, uint64_t, uint64_t *, uint64_t, uint64_t)@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (a2 + 1 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v19 = a3;
      goto LABEL_6;
    }

    v14 = *a1;
    v15 = *(a1 + 8);
    v16 = *(a1 + 16);
    v17 = *(a1 + 20);
    v18 = *(a1 + 22);
    sub_1B0441264(a1, &v45);
    if (v10)
    {
      *a1 = v14;
      *(a1 + 8) = v15;
      *(a1 + 16) = v16;
      *(a1 + 20) = v17;
      *(a1 + 22) = v18;
LABEL_6:
      swift_willThrow();
      return;
    }

    sub_1B0DFF2E8(v45, v46, v47 | (v48 << 32) | (v49 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 115);
    v37 = a4();
    v38 = v20;

    sub_1B0436204(a1);
    v21 = sub_1B0441A0C(a1, a2, a3, a4, a5, a6, a7);
    v23 = v22;
    v25 = v24;
    sub_1B04420D8(v21);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v26 = a8(v37, v38, v21, v23, v25);
    if (v29 == -1)
    {
      v45 = 0;
      v46 = 0xE000000000000000;
      sub_1B0E46298();

      v45 = 0xD000000000000017;
      v46 = 0x80000001B0F30050;
      MEMORY[0x1B2726E80](v37, v38);

      v34 = v45;
      v35 = v46;
      sub_1B0436554();
      swift_allocError();
      *v36 = v34;
      v36[1] = v35;
      v36[2] = 0xD000000000000020;
      v36[3] = 0x80000001B0F2FA10;
      v36[4] = a10;
      swift_willThrow();
      sub_1B0447F00(v21);
    }

    else
    {
      v30 = v26;
      v31 = v27;
      v32 = v28;
      v33 = v29;
      sub_1B0447F00(v21);

      *a9 = v30;
      *(a9 + 8) = v31;
      *(a9 + 16) = v32;
      *(a9 + 24) = v33;
    }
  }
}

uint64_t sub_1B04420D8(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1B04420EC(result);
  }

  return result;
}

unint64_t sub_1B04420EC(unint64_t result)
{
  switch((result >> 59) & 0x1E | (result >> 2) & 1)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t *sub_1B04421AC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v14 = a3;
    }

    else
    {
      v7 = result;
      v9 = *result;
      v10 = result[1];
      v11 = *(result + 4);
      v12 = *(result + 10);
      v13 = *(result + 22);

      sub_1B0DFE880(0x202AuLL, 0xE200000000000000, 0, 0, v7, v5, a3);
      if (!v4)
      {
        v20 = sub_1B0D9EA70(v7, v5, a3);
        sub_1B0DFE880(0x2820484354454620uLL, 0xE800000000000000, 0, 0, v7, v5, a3);

        LODWORD(v21[0]) = v20;
        result = sub_1B041BA38(v21);
        v15 = v21[9];
        *(a4 + 128) = v21[8];
        *(a4 + 144) = v15;
        *(a4 + 160) = v21[10];
        *(a4 + 176) = v22;
        v16 = v21[5];
        *(a4 + 64) = v21[4];
        *(a4 + 80) = v16;
        v17 = v21[7];
        *(a4 + 96) = v21[6];
        *(a4 + 112) = v17;
        v18 = v21[1];
        *a4 = v21[0];
        *(a4 + 16) = v18;
        v19 = v21[3];
        *(a4 + 32) = v21[2];
        *(a4 + 48) = v19;
        return result;
      }

      *v7 = v9;
      *(v7 + 8) = v10;
      *(v7 + 16) = v11;
      *(v7 + 20) = v12;
      *(v7 + 22) = v13;
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t *sub_1B0442390@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v14 = a3;
    }

    else
    {
      v7 = result;
      v9 = *result;
      v10 = result[1];
      v11 = *(result + 4);
      v12 = *(result + 10);
      v13 = *(result + 22);

      sub_1B0DFE880(0x202AuLL, 0xE200000000000000, 0, 0, v7, v5, a3);
      if (!v4)
      {
        v20 = sub_1B0D9EA70(v7, v5, a3);
        sub_1B0DFE880(0x4354454644495520uLL, 0xEB00000000282048, 0, 0, v7, v5, a3);

        LODWORD(v21[0]) = v20;
        result = sub_1B0D043DC(v21);
        v15 = v21[9];
        *(a4 + 128) = v21[8];
        *(a4 + 144) = v15;
        *(a4 + 160) = v21[10];
        *(a4 + 176) = v22;
        v16 = v21[5];
        *(a4 + 64) = v21[4];
        *(a4 + 80) = v16;
        v17 = v21[7];
        *(a4 + 96) = v21[6];
        *(a4 + 112) = v17;
        v18 = v21[1];
        *a4 = v21[0];
        *(a4 + 16) = v18;
        v19 = v21[3];
        *(a4 + 32) = v21[2];
        *(a4 + 48) = v19;
        return result;
      }

      *v7 = v9;
      *(v7 + 8) = v10;
      *(v7 + 16) = v11;
      *(v7 + 20) = v12;
      *(v7 + 22) = v13;
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t type metadata accessor for ResponsePayload(uint64_t a1)
{
  result = qword_1EB6DE6A8;
  if (!qword_1EB6DE6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B04425B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  result = sub_1B043A260(a1, a2, a3, a4, a5, a6, a7, v15);
  if (!v8)
  {
    v11 = v15[7];
    a8[6] = v15[6];
    a8[7] = v11;
    a8[8] = v15[8];
    v12 = v15[3];
    a8[2] = v15[2];
    a8[3] = v12;
    v13 = v15[5];
    a8[4] = v15[4];
    a8[5] = v13;
    v14 = v15[1];
    *a8 = v15[0];
    a8[1] = v14;
    type metadata accessor for ResponsePayload(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t *sub_1B044262C(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v6 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v13 = a3;
    }

    else
    {
      v8 = result;
      v9 = *result;
      v10 = result[1];
      v11 = *(result + 4);
      v12 = *(result + 10);
      v5 = *(result + 22);

      sub_1B0DFE880(0x44454C42414E45uLL, 0xE700000000000000, 0, 0, v8, v6, a3);
      if (v4)
      {
      }

      else
      {
        v44 = v5;
        if (v6 + 1 >= a3)
        {
          sub_1B0439BCC();
          swift_allocError();
          *v31 = a3;
        }

        else
        {
          v14 = *v8;
          v15 = *(v8 + 8);
          v41 = *(v8 + 16);
          v42 = v12;
          v39 = *(v8 + 22);
          v40 = *(v8 + 20);

          if (v6 + 2 >= a3)
          {
            sub_1B0439BCC();
            v32 = swift_allocError();
            *v33 = a3;
            v5 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            v36 = v14;
            v37 = v11;
            v38 = v9;
            v16 = v6 + 3;
            v17 = *v8;
            v18 = *(v8 + 8);
            v19 = *(v8 + 16);
            v20 = *(v8 + 20);
            v21 = *(v8 + 22);
            if (v16 < a3)
            {
              v22 = MEMORY[0x1E69E7CC0];
              v43 = v16;
              do
              {
                swift_retain_n();
                sub_1B0436204(v8);

                sub_1B0441264(v8, v48);

                v46 = v46 & 0xFF00000000000000 | v49 | (v50 << 32) | (v51 << 48);
                sub_1B0DFF2E8(v48[0], v48[1], v46, 0xD000000000000020, 0x80000001B0F2FA10, 115);
                v23 = a4();
                v25 = v24;

                v26 = sub_1B0441810(61, 0xE100000000000000, v23, v25);
                v45 = v27;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v22 = sub_1B0441900(0, *(v22 + 2) + 1, 1, v22);
                }

                v29 = *(v22 + 2);
                v28 = *(v22 + 3);
                if (v29 >= v28 >> 1)
                {
                  v22 = sub_1B0441900((v28 > 1), v29 + 1, 1, v22);
                }

                *(v22 + 2) = v29 + 1;
                v30 = &v22[32 * v29];
                *(v30 + 4) = v23;
                *(v30 + 5) = v25;
                *(v30 + 6) = v26;
                v30[56] = v45 & 1;
                v17 = *v8;
                v18 = *(v8 + 8);
                v19 = *(v8 + 16);
                v20 = *(v8 + 20);
                v21 = *(v8 + 22);
              }

              while (v43 < a3);
            }

            sub_1B0439BCC();
            v32 = swift_allocError();
            *v34 = a3;

            v5 = MEMORY[0x1E69E7CC0];
            swift_willThrow();

            v14 = v36;
            *v8 = v17;
            *(v8 + 8) = v18;
            *(v8 + 16) = v19;
            *(v8 + 20) = v20;
            *(v8 + 22) = v21;
            v9 = v38;
            v11 = v37;
          }

          swift_willThrow();
          v52 = v32;
          v35 = v32;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
          if (swift_dynamicCast())
          {

            return v5;
          }

          *v8 = v14;
          *(v8 + 8) = v15;
          *(v8 + 16) = v41;
          *(v8 + 20) = v40;
          *(v8 + 22) = v39;
          v12 = v42;
        }

        swift_willThrow();

        v5 = v44;
      }

      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v5;
    }

    swift_willThrow();
    return v5;
  }

  __break(1u);
  return result;
}

void sub_1B0442BAC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      v20 = a7;
      sub_1B0439BCC();
      v21 = swift_allocError();
      *v22 = a3;
    }

    else
    {
      v12 = *a1;
      v13 = a1[1];
      v14 = *(a1 + 4);
      v15 = *(a1 + 10);
      v16 = *(a1 + 22);

      v19 = a6;
      v20 = a7;
      sub_1B0442EF8(a1, v9, a3, a4, a5, v19, a7, v34);
      v21 = v8;
      if (!v8)
      {
        v30 = v34[0];
        v32 = v34[1];
        v26 = v35;
LABEL_15:

        *a8 = v30;
        *(a8 + 16) = v32;
        *(a8 + 32) = v26;
        return;
      }

      *a1 = v12;
      a1[1] = v13;
      *(a1 + 4) = v14;
      *(a1 + 10) = v15;
      *(a1 + 22) = v16;
    }

    swift_willThrow();
    v33 = v21;
    v23 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v33 = v21;
      v24 = v21;
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }
    }

    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v25 = a3;
      swift_willThrow();
      return;
    }

    sub_1B0443174(a1, v9, a3, a4, a5, a6, v20, v36);
    v30 = v36[0];
    v32 = v36[1];
    v26 = v37;
    goto LABEL_15;
  }

  __break(1u);
}

void sub_1B0442E70(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1B0442BAC(a1, a2, a3, a4, a5, a6, a7, v11);
  if (!v8)
  {
    v10 = v11[1];
    *a8 = v11[0];
    *(a8 + 16) = v10;
    *(a8 + 32) = v12;
    type metadata accessor for ResponsePayload(0);
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1B0442EF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_1B0DFE880(0x415441444154454DuLL, 0xE900000000000020, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v36 = a8;
    v18 = sub_1B0DB3AC0(a1, a2, a3, a4, a5, a6, a7);
    v20 = v19;
    v30 = v21;
    v33 = HIDWORD(v21);
    swift_beginAccess();
    v22 = v33 - v30;
    if (v33 == v30)
    {
      v23 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v31 = ((v20 >> 24) & 0xFFFF00 | BYTE6(v20)) + v30;
      v34 = v18[3];
      __n = v22;
      v24 = sub_1B0C0C9F0(v22, 0);
      memcpy(v24 + 32, (v34 + v31), __n);
      v23 = v24;
    }

    v35 = _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v23);
    v32 = v25;

    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {

      sub_1B0439BCC();
      swift_allocError();
      *v26 = a3;
      return swift_willThrow();
    }

    else
    {

      sub_1B0436204(a1);

      result = sub_1B0D9AA80(a1, a2, a3, a4, a5, a6, a7);
      *v36 = result;
      *(v36 + 8) = v27;
      *(v36 + 16) = v28;
      *(v36 + 24) = v35;
      *(v36 + 32) = v32;
    }
  }

  return result;
}

uint64_t sub_1B0443174@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_1B0DFE880(0x415441444154454DuLL, 0xE900000000000020, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v34 = a8;
    v18 = sub_1B0DB3AC0(a1, a2, a3, a4, a5, a6, a7);
    v20 = v19;
    v28 = v21;
    v31 = HIDWORD(v21);
    swift_beginAccess();
    v22 = v31 - v28;
    if (v31 == v28)
    {
      v23 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v29 = ((v20 >> 24) & 0xFFFF00 | BYTE6(v20)) + v28;
      v32 = v18[3];
      __n = v22;
      v24 = sub_1B0C0C9F0(v22, 0);
      memcpy(v24 + 32, (v32 + v29), __n);
      v23 = v24;
    }

    v33 = _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v23);
    v30 = v25;

    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {

      sub_1B0439BCC();
      swift_allocError();
      *v26 = a3;
      return swift_willThrow();
    }

    else
    {

      sub_1B0436204(a1);

      result = sub_1B0D9B208(a1, a2, a3, a4, a5, a6, a7);
      *v34 = result;
      *(v34 + 8) = v33;
      *(v34 + 16) = v30 | 0x8000000000000000;
      *(v34 + 24) = 0;
      *(v34 + 32) = 0;
    }
  }

  return result;
}

uint64_t *sub_1B0443418(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v18 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = *result;
    v12 = result[1];
    v13 = *(result + 4);
    v19 = *(result + 22);
    v20 = *(result + 10);

    sub_1B0441D28(v10, v8, a3, a4, a5, a6, a7, sub_1B0E33560, &v21, 100);
    if (v7)
    {

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v20;
      *(v10 + 22) = v19;
      return swift_willThrow();
    }

    return v21;
  }

  return result;
}

uint64_t *sub_1B0443564@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_1B0443418(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    *a8 = result;
    *(a8 + 8) = v11;
    *(a8 + 16) = v12;
    *(a8 + 24) = v13;
    type metadata accessor for ResponsePayload(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_1B04435B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, void, uint64_t))
{
  if (a3)
  {

    v9 = sub_1B0455ECC();
    v10 = sub_1B0E43CB8();
  }

  else
  {
    v10 = 0;
    v9 = 1;
  }

  a6(v9, v10, a4 & 1, a5);

  return sub_1B044EF38(v9);
}

uint64_t sub_1B0443660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_1B0E441D8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC15IMAP2Connection10Connection_lastMessageTime) = static MonotonicTime.now()();
    if (a1 != 1)
    {
      sub_1B044390C(a1);
    }

    sub_1B03B5C80(a4, v9, &unk_1EB6E5A90, &unk_1B0EDC020);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_1B0398EFC(v9, &unk_1EB6E5A90, &unk_1B0EDC020);
      v15 = swift_allocObject();
      swift_weakInit();
      v16 = swift_allocObject();
      *(v16 + 16) = sub_1B0BF02EC;
      *(v16 + 24) = v15;
      swift_retain_n();
      sub_1B0E43CE8();
    }

    else
    {
      (*(v11 + 32))(v13, v9, v10);
      sub_1B0BEE394(v13);

      return (*(v11 + 8))(v13, v10);
    }
  }

  return result;
}

void sub_1B044390C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ConnectionEvent(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25[-1] - v10;
  if (a1)
  {
    sub_1B0443F28(a1);
  }

  else
  {
    v12 = v2 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
    sub_1B03FD208(v2 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, &v25[-1] - v10, _s6LoggerVMa_0);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v13 = sub_1B0E43988();
    v14 = sub_1B0E439A8();
    (*(*(v14 - 8) + 8))(v11, v14);
    v15 = sub_1B0E45908();
    if (os_log_type_enabled(v13, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25[0] = v17;
      *v16 = 68158210;
      *(v16 + 4) = 2;
      *(v16 + 8) = 256;
      v18 = v12 + *(v8 + 20);
      *(v16 + 10) = *v18;

      *(v16 + 11) = 2082;
      v19 = ConnectionID.debugDescription.getter(*(v18 + 4));
      v21 = sub_1B0399D64(v19, v20, v25);

      *(v16 + 13) = v21;
      _os_log_impl(&dword_1B0389000, v13, v15, "[%.*hhx-%{public}s] Did complete STARTTLS", v16, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x1B272C230](v17, -1, -1);
      MEMORY[0x1B272C230](v16, -1, -1);
    }

    else
    {
    }

    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5508, &unk_1B0ED0CC0);
    v22 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1B0EC1E70;
    sub_1B03FD208(v7, v23 + v22, type metadata accessor for ConnectionEvent);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1B0426318(v23);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_1B03D6AC4(v7, type metadata accessor for ConnectionEvent);
  }
}

void sub_1B0443F28(uint64_t a1)
{
  v98 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v77 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5528, &qword_1B0ED0CF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v79 = (&v70 - v6);
  v78 = type metadata accessor for Response(0);
  v7 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v80 = &v70 - v10;
  v81 = type metadata accessor for Response(0);
  MEMORY[0x1EEE9AC00](v81);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v91 = &v70 - v14;
  v82 = type metadata accessor for ConnectionEvent(0);
  v83 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v75 = (&v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v74 = &v70 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v90 = (&v70 - v19);
  v89 = type metadata accessor for ResponseOrContinuationRequest(0);
  v20 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + 16);
  if (!v23)
  {
    return;
  }

  v71 = v7;
  v72 = v1;
  v24 = sub_1B0444C78(0, v23, 0, MEMORY[0x1E69E7CC0]);
  v84 = OBJC_IVAR____TtC15IMAP2Connection10Connection_receiveTranscoder;
  v85 = v12;
  v25 = a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v88 = *(v20 + 72);
  do
  {
    sub_1B03FD208(v25, v22, type metadata accessor for ResponseOrContinuationRequest);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = v91;
      sub_1B0423D50(v22, v91, type metadata accessor for Response);
      sub_1B03FD208(v27, v12, type metadata accessor for Response);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v92 = v24;
        v28 = *(v12 + 2);
        v29 = *(v12 + 3);
        v30 = *(v12 + 4);
        v31 = v12[40];
        v94 = v29;
        v95 = v30;
        *&__dst = 0x4C54544F5248545BLL;
        *(&__dst + 1) = 0xEB000000005D4445;
        sub_1B0A91FD0(v28, v29, v30, v31);
        sub_1B07C7F5C();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v32 = sub_1B0E45F58();
        sub_1B0447F00(v28);
        swift_bridgeObjectRelease_n();
        if (v32)
        {
          sub_1B0BEE588();
        }

        sub_1B0BB6FE0(v28, v29, v30, v31);
        v24 = v92;
        v12 = v85;
      }

      else
      {
        sub_1B03D6AC4(v12, type metadata accessor for Response);
      }

      swift_beginAccess();
      v26 = v91;
      ServerResponseTranscoder.append(_:)(v91);
      swift_endAccess();
      sub_1B03D6AC4(v26, type metadata accessor for Response);
      goto LABEL_5;
    }

    v92 = v24;
    v33 = *v22;
    v34 = *(v22 + 1);
    v35 = *(v22 + 2);
    v36 = v22[24];
    v86 = v34;
    v87 = v33;
    if ((v36 & 1) == 0)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v41 = v35;
      goto LABEL_18;
    }

    swift_beginAccess();
    v37 = *(v33 + 24) + ((v35 >> 24) & 0xFFFF00 | BYTE6(v35));
    v96 = MEMORY[0x1E69E6290];
    v97 = MEMORY[0x1E6969DF8];
    v94 = v37 + v34;
    v95 = v37 + HIDWORD(v34);
    v38 = __swift_project_boxed_opaque_existential_0(&v94, MEMORY[0x1E69E6290]);
    v34 = *v38;
    if (*v38)
    {
      v39 = v38[1];
      v40 = v39 - v34;
      if (v39 != v34)
      {
        if (v40 <= 14)
        {
          *(&__dst + 6) = 0;
          *&__dst = 0;
          BYTE14(__dst) = v39 - v34;
          memcpy(&__dst, v34, v39 - v34);
          v34 = __dst;
          v41 = v73 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
          v73 = v41;
        }

        else
        {
          sub_1B0E42AD8();
          swift_allocObject();
          v45 = sub_1B0E42A88();
          v46 = v45;
          if (v40 >= 0x7FFFFFFF)
          {
            sub_1B0E42EC8();
            v34 = swift_allocObject();
            *(v34 + 16) = 0;
            *(v34 + 24) = v40;
            v41 = v46 | 0x8000000000000000;
          }

          else
          {
            v34 = v40 << 32;
            v41 = v45 | 0x4000000000000000;
          }
        }

        goto LABEL_15;
      }

      v34 = 0;
    }

    v41 = 0xC000000000000000;
LABEL_15:
    __swift_destroy_boxed_opaque_existential_0Tm(&v94);
LABEL_18:
    v42 = v90;
    *v90 = v34;
    v42[1] = v41;
    *(v42 + 16) = v36;
    swift_storeEnumTagMultiPayload();
    sub_1B0BD30C8(v34, v41, v36);
    v44 = v92[2];
    v43 = v92[3];
    if (v44 >= v43 >> 1)
    {
      v92 = sub_1B0444C78((v43 > 1), v44 + 1, 1, v92);
    }

    sub_1B0BCDEB0(v34, v41, v36);
    sub_1B0BEFC7C(v87, v86, v35, v36);
    v24 = v92;
    v92[2] = v44 + 1;
    sub_1B0423D50(v90, v24 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v44, type metadata accessor for ConnectionEvent);
    v12 = v85;
LABEL_5:
    v25 += v88;
    --v23;
  }

  while (v23);
  swift_beginAccess();
  v47 = v79;
  v48 = v72;
  ServerResponseTranscoder.parseNext()(v79);
  v49 = v48;
  if (v48)
  {
    swift_endAccess();
  }

  else
  {
    v50 = (v71 + 48);
    while (1)
    {
      swift_endAccess();
      if ((*v50)(v47, 1, v78) == 1)
      {
        break;
      }

      v63 = v47;
      v64 = v80;
      sub_1B0423D50(v63, v80, type metadata accessor for Response);
      v65 = v64;
      v66 = v76;
      sub_1B03FD208(v65, v76, type metadata accessor for Response);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v51 = v49;
        v52 = *v66;
        v53 = *(v66 + 4);
        v54 = *(v66 + 8);
        v55 = *(v66 + 16);
        v56 = *(v66 + 24);
        v57 = *(v66 + 32);
        v58 = v75;
        *v75 = v54;
        v58[1] = v55;
        v58[2] = v56;
        *(v58 + 24) = v57;
        *(v58 + 28) = v52;
        *(v58 + 8) = v53;
        swift_storeEnumTagMultiPayload();
        sub_1B0A91FD0(v54, v55, v56, v57);
        v60 = v24[2];
        v59 = v24[3];
        v61 = v60 + 1;
        if (v60 >= v59 >> 1)
        {
          v24 = sub_1B0444C78((v59 > 1), v60 + 1, 1, v24);
        }

        sub_1B0BB6FE0(v54, v55, v56, v57);
        v62 = v75;
        v49 = v51;
      }

      else
      {
        v67 = v66;
        v68 = v77;
        sub_1B0423D50(v67, v77, type metadata accessor for UntaggedResponse);
        sub_1B03FD208(v68, v74, type metadata accessor for UntaggedResponse);
        swift_storeEnumTagMultiPayload();
        v60 = v24[2];
        v69 = v24[3];
        v61 = v60 + 1;
        if (v60 >= v69 >> 1)
        {
          v24 = sub_1B0444C78((v69 > 1), v60 + 1, 1, v24);
        }

        sub_1B03D6AC4(v77, type metadata accessor for UntaggedResponse);
        v62 = v74;
      }

      sub_1B03D6AC4(v80, type metadata accessor for Response);
      v24[2] = v61;
      sub_1B0423D50(v62, v24 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v60, type metadata accessor for ConnectionEvent);
      swift_beginAccess();
      v47 = v79;
      ServerResponseTranscoder.parseNext()(v79);
    }

    sub_1B0398EFC(v47, &qword_1EB6E5528, &qword_1B0ED0CF0);
    if (v24[2] && swift_unknownObjectWeakLoadStrong())
    {
      sub_1B0426318(v24);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t type metadata accessor for Response(uint64_t a1)
{
  return sub_1B0390488(a1, &unk_1EB6DD0C0, &nominal type descriptor for Response);
}

{
  return sub_1B0390488(a1, &unk_1EB6DE068, &nominal type descriptor for Response);
}

void *sub_1B0444A9C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore216ResponseTextCodeOSg(void *a1)
{
  v1 = (((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3));
  v2 = v1 ^ 0x7E;
  v3 = 128 - v1;
  if (v2 >= 0x6E)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore216ResponseTextCodeO(void *a1)
{
  v1 = (*a1 >> 59) & 0x1E | (*a1 >> 2) & 1;
  if (v1 <= 0x10)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 17;
  }
}

void *ServerResponseTranscoder.append(_:)(uint64_t a1)
{
  result = *v1;
  v4 = *(*v1 + 24);
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v1;
    if (*(*v1 + 16) < v5 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B04467C8(isUniquelyReferenced_nonNull_native, v5, 0);
      v7 = *v1;
    }

    v8 = *(type metadata accessor for Response(0) - 8);
    return sub_1B0444DB8((v7 + 16), v7 + ((*(v8 + 80) + 40) & ~*(v8 + 80)), a1);
  }

  return result;
}

void *sub_1B0444DB8(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v5 = v4 + v3;
  if (!__OFADD__(v4, v3))
  {
    v8 = result;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v9))
      {
LABEL_9:
        v10 = type metadata accessor for Response(0);
        result = sub_1B0446A38(a3, a2 + *(*(v10 - 8) + 72) * v5, type metadata accessor for Response);
        v11 = v8[1];
        v9 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v9)
        {
          v8[1] = v12;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v9 = __OFADD__(v5, *result);
      v5 += *result;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void ServerResponseTranscoder.parseNext()(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6580, &unk_1B0EE7F58);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v47 = &v43 - v4;
  v5 = type metadata accessor for Response(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Response(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v43 - v18;
  v48 = v1;
  v20 = *v1;
  v21 = *(*v1 + 24);
  if (!v21)
  {
    (*(v6 + 56))(a1, 1, 1, v5, v17);
    return;
  }

  if (v21 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v43 = v16;
  v44 = v6;
  v45 = v5;
  v46 = a1;
  v22 = v20[4];
  v23 = v20[2];
  if (v22 < v23)
  {
    v23 = 0;
  }

  v24 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v25 = *(v9 + 72);
  sub_1B0446A38(v20 + v24 + (v22 - v23) * v25, v11, type metadata accessor for Response);
  sub_1B044533C(v11, v14, type metadata accessor for Response);
  sub_1B044533C(v14, v19, type metadata accessor for Response);
  v27 = v49;
  v26 = v50;
  sub_1B0D0677C(v49);
  if (!v26)
  {
    if (v20[3] < 1)
    {
      v40 = 1;
      v38 = v45;
      v37 = v46;
      v39 = v44;
      v32 = v47;
      goto LABEL_20;
    }

    v29 = v48;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B0D0B5C8();
    }

    v30 = *v29;
    v31 = *v29 + v24 + *(*v29 + 32) * v25;
    v32 = v47;
    sub_1B044533C(v31, v47, type metadata accessor for Response);
    v33 = v30[4];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (!v34)
    {
      v36 = v30[3];
      if (v35 >= v30[2])
      {
        v35 = 0;
      }

      v30[4] = v35;
      v38 = v45;
      v37 = v46;
      v39 = v44;
      if (!__OFSUB__(v36, 1))
      {
        v40 = 0;
        v30[3] = v36 - 1;
        v27 = v49;
LABEL_20:
        sub_1B0446AA0(v19, type metadata accessor for Response);
        (*(v9 + 56))(v32, v40, 1, v43);
        sub_1B0398EFC(v32, &qword_1EB6E6580, &unk_1B0EE7F58);
        sub_1B044533C(v27, v37, type metadata accessor for Response);
        (*(v39 + 56))(v37, 0, 1, v38);
        return;
      }

LABEL_24:
      __break(1u);
      return;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v54 = v26;
  v28 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (swift_dynamicCast() && (v53 & 1) == 0)
  {
    v41 = v51;
    v42 = v52;

    sub_1B0D06B78(v41 | ((v42 & 1) << 32), v46);
    sub_1B0446AA0(v19, type metadata accessor for Response);
  }

  else
  {

    swift_willThrow();
    sub_1B0446AA0(v19, type metadata accessor for Response);
  }
}

uint64_t sub_1B044533C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B04453A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1B044540C(uint64_t a1, uint64_t a2)
{
  v75 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5468, &qword_1B0ED0458);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v66 - v5;
  v7 = type metadata accessor for ConnectionEvent(0);
  v82 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v78 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v66 - v10;
  v79 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  MEMORY[0x1EEE9AC00](v79);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v66 - v15;
  v83 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v81 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v74 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v71 = &v66 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v76 = &v66 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v70 = &v66 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v69 = &v66 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v72 = (&v66 - v27);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v66 - v29;
  v31 = *v2;
  v32 = *(*v2 + 16);
  v80 = (*v2 + 16);
  if (v32)
  {
    v33 = 0;
    while (v33 < *v80)
    {
      v34 = v31;
      sub_1B038C9A4(v31 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v33, v30, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_1B038CB4C(&v30[*(v83 + 20)], v16, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if ((EnumCaseMultiPayload - 1) < 5)
      {
        sub_1B038D690(v16, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      }

      else if (EnumCaseMultiPayload != 6)
      {
        sub_1B038D690(v16, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        v73 = 0;
        v31 = v34;
        goto LABEL_10;
      }

      ++v33;
      v31 = v34;
      if (v32 == v33)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

LABEL_9:
  v73 = 1;
LABEL_10:
  v67 = v31;
  v68 = v2;
  v36 = *(a2 + 16);
  v37 = v75;
  if (v36)
  {
    v38 = a2 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
    v77 = v82[9];
    v39 = (v81 + 48);
    v82 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1B038C9A4(v38, v11, type metadata accessor for ConnectionEvent);
      v40 = v78;
      sub_1B038C9A4(v11, v78, type metadata accessor for ConnectionEvent);
      sub_1B04380C8(v37, v40, v6);
      sub_1B038D690(v11, type metadata accessor for ConnectionEvent);
      if ((*v39)(v6, 1, v83) == 1)
      {
        sub_1B0398EFC(v6, &qword_1EB6E5468, &qword_1B0ED0458);
      }

      else
      {
        v41 = v74;
        sub_1B038CB4C(v6, v74, type metadata accessor for CommandConnection.RecentErrors.Error);
        if (v73)
        {
          goto LABEL_18;
        }

        sub_1B038C9A4(v41 + *(v83 + 20), v13, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        v42 = swift_getEnumCaseMultiPayload();
        if ((v42 - 1) < 5)
        {
          sub_1B038D690(v13, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
LABEL_18:
          v43 = v71;
          sub_1B038CB4C(v41, v71, type metadata accessor for CommandConnection.RecentErrors.Error);
          sub_1B038CB4C(v43, v76, type metadata accessor for CommandConnection.RecentErrors.Error);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v82 = sub_1B0446C54(0, v82[2] + 1, 1, v82);
          }

          v45 = v82[2];
          v44 = v82[3];
          if (v45 >= v44 >> 1)
          {
            v82 = sub_1B0446C54((v44 > 1), v45 + 1, 1, v82);
          }

          v47 = v81;
          v46 = v82;
          v82[2] = v45 + 1;
          sub_1B038CB4C(v76, v46 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v45, type metadata accessor for CommandConnection.RecentErrors.Error);
          v37 = v75;
          goto LABEL_13;
        }

        if (v42)
        {
          goto LABEL_18;
        }

        sub_1B038D690(v13, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        sub_1B038D690(v41, type metadata accessor for CommandConnection.RecentErrors.Error);
      }

LABEL_13:
      v38 += v77;
      if (!--v36)
      {
        goto LABEL_26;
      }
    }
  }

  v82 = MEMORY[0x1E69E7CC0];
LABEL_26:
  v48 = MonotonicTime.init(seconds:since:)(v37, -4.0);
  v49 = *v80;
  if (!*v80)
  {
    v57 = 0;
    goto LABEL_42;
  }

  v50 = 0;
  v51 = (*(v81 + 80) + 32) & ~*(v81 + 80);
  v52 = *(v81 + 72);
  v83 = v51;
  v54 = v67;
  v53 = v68;
  while (1)
  {
    v55 = *(v67 + v51);
    v56 = v48 - v55;
    if (v48 >= v55)
    {
      if (__OFSUB__(v48, v55))
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (__OFSUB__(v55, v48))
      {
        goto LABEL_65;
      }

      v56 = v48 - v55;
      if (__OFSUB__(0, v55 - v48))
      {
        goto LABEL_66;
      }
    }

    if (v56 > 0)
    {
      break;
    }

    ++v50;
    v51 += v52;
    if (v49 == v50)
    {
      v57 = v49;
      goto LABEL_42;
    }
  }

  v57 = v50 + 1;
  if (__OFADD__(v50, 1))
  {
    goto LABEL_76;
  }

  if (v57 != v49)
  {
    v58 = v52 + v51;
    while (v57 < v49)
    {
      v59 = v54;
      v60 = v72;
      sub_1B038C9A4(v54 + v58, v72, type metadata accessor for CommandConnection.RecentErrors.Error);
      v61 = *v60;
      v62 = __OFSUB__(v48, *v60);
      v63 = v48 - *v60;
      if (v63 < 0 != v62)
      {
        v62 = __OFSUB__(v61, v48);
        v64 = v61 - v48;
        if (v62)
        {
          goto LABEL_69;
        }

        v63 = -v64;
        if (__OFSUB__(0, v64))
        {
          goto LABEL_70;
        }
      }

      else if (v62)
      {
        goto LABEL_68;
      }

      sub_1B038D690(v72, type metadata accessor for CommandConnection.RecentErrors.Error);
      if (v63 <= 0)
      {
        if (v57 != v50)
        {
          if ((v50 & 0x8000000000000000) != 0)
          {
            goto LABEL_71;
          }

          v65 = *v80;
          if (v50 >= *v80)
          {
            goto LABEL_72;
          }

          sub_1B038C9A4(v54 + v83 + v50 * v52, v69, type metadata accessor for CommandConnection.RecentErrors.Error);
          if (v57 >= v65)
          {
            goto LABEL_73;
          }

          sub_1B038C9A4(v54 + v58, v70, type metadata accessor for CommandConnection.RecentErrors.Error);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v59 = sub_1B0C0DF7C(v54);
          }

          sub_1B0BE2D30(v70, v59 + v83 + v50 * v52);
          if (v57 >= v59[2])
          {
            goto LABEL_74;
          }

          sub_1B0BE2D30(v69, v59 + v58);
          v54 = v59;
          *v53 = v59;
        }

        ++v50;
      }

      ++v57;
      v49 = v54[2];
      v80 = v54 + 2;
      v58 += v52;
      if (v57 == v49)
      {
        goto LABEL_41;
      }
    }

LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v57 = v49;
LABEL_41:
  v49 = v50;
  if (v57 >= v50)
  {
LABEL_42:
    sub_1B0445E64(v49, v57);
    sub_1B0445F24(v82);
    return;
  }

LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
}

uint64_t sub_1B0445D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1B0445DD8(uint64_t result, double a2)
{
  v2 = round(a2 * 1000000000.0);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2;
  if (v2 >= 1)
  {
    v4 = __OFADD__(result, v3);
    result += v3;
    if (!v4)
    {
      return result;
    }

    __break(1u);
  }

  v4 = __OFSUB__(0, v3);
  v5 = -v3;
  if (v4)
  {
    goto LABEL_14;
  }

  v4 = __OFSUB__(result, v5);
  result -= v5;
  if (v4)
  {
LABEL_15:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B0445E64(unint64_t result, uint64_t a2)
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

    v4 = sub_1B0446C54(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1B0446C7C(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1B0445F24(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1B0446C54(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B0446050(unint64_t a1)
{
  v3 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 >> 60) - 2 <= 3)
  {
    v9 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
    swift_beginAccess();
    sub_1B038C9A4(v1 + v9, v8, type metadata accessor for ConnectionState);
    result = swift_getEnumCaseMultiPayload();
    if (result > 2)
    {
      if ((result - 4) < 2)
      {
        return result;
      }
    }

    else if (result >= 2)
    {
      sub_1B038D690(v8, type metadata accessor for ConnectionState);
      goto LABEL_5;
    }

    return sub_1B038D690(v8, type metadata accessor for ConnectionState);
  }

LABEL_5:
  v11 = *(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
  v12 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
  swift_beginAccess();
  v13 = *(v1 + v12);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = sub_1B044CC18(v11, v13);
  v16 = v15;
  v18 = v17;

  v19 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_enqueuedEvents;
  swift_beginAccess();
  if (*(v1 + v19))
  {
    sub_1B044CD04(a1);
    v21 = sub_1B044CD74(v50);
    v22 = *v20;
    if (*v20)
    {
      v23 = v20;
      sub_1B044CD04(a1);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v23 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = sub_1B044CDD4(0, *(v22 + 2) + 1, 1, v22);
        *v23 = v22;
      }

      v26 = *(v22 + 2);
      v25 = *(v22 + 3);
      if (v26 >= v25 >> 1)
      {
        v22 = sub_1B044CDD4((v25 > 1), v26 + 1, 1, v22);
        *v23 = v22;
      }

      *(v22 + 2) = v26 + 1;
      v27 = &v22[40 * v26];
      *(v27 + 8) = v11;
      *(v27 + 5) = a1;
      *(v27 + 12) = v14;
      *(v27 + 7) = v16;
      *(v27 + 8) = v18;
      (v21)(v50, 0);
    }

    else
    {
      (v21)(v50, 0);
    }

    goto LABEL_20;
  }

  v49 = v14;
  v28 = v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  sub_1B038C9A4(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v5, _s6LoggerVMa_0);
  sub_1B044CD04(a1);
  v29 = v1;

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v30 = sub_1B0E43988();
  v31 = sub_1B0E439A8();
  (*(*(v31 - 8) + 8))(v5, v31);
  v32 = sub_1B0E458E8();
  if (os_log_type_enabled(v30, v32))
  {
    v33 = swift_slowAlloc();
    v48 = v11;
    v11 = v33;
    v34 = swift_slowAlloc();
    v50[0] = v34;
    *v11 = 68158210;
    *(v11 + 4) = 2;
    *(v11 + 8) = 256;
    v35 = v28 + *(v3 + 20);
    *(v11 + 10) = *v35;
    v36 = v29;

    *(v11 + 11) = 2082;
    v37 = ConnectionID.debugDescription.getter(*(v35 + 4));
    v39 = sub_1B0399D64(v37, v38, v50);

    *(v11 + 13) = v39;
    _os_log_impl(&dword_1B0389000, v30, v32, "[%.*hhx-%{public}s] Trying to enqueue event outside withEnqueuedSend.", v11, 0x15u);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    MEMORY[0x1B272C230](v34, -1, -1);
    v40 = v11;
    LODWORD(v11) = v48;
    MEMORY[0x1B272C230](v40, -1, -1);
  }

  else
  {

    v36 = v29;
  }

  v41 = v36 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v43 = v49;
  if (!Strong)
  {
LABEL_20:
    sub_1B044CEF8(a1);
    goto LABEL_21;
  }

  v44 = *(v41 + 8);
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5460, "x(\t");
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1B0EC1E70;
  *(v46 + 32) = v11;
  *(v46 + 40) = a1;
  *(v46 + 48) = v43;
  *(v46 + 56) = v16;
  *(v46 + 64) = v18;
  v47 = *(v44 + 8);
  sub_1B044CD04(a1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v47(v46, ObjectType, v44);
  sub_1B044CEF8(a1);

  swift_unknownObjectRelease();
LABEL_21:
}

uint64_t sub_1B04465E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_1B0DFE880(0xD000000000000013, 0x80000001B0F30030, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v18 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (v18 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    else
    {

      sub_1B0DB29B0(a1, v18, a3, a4, a5, a6, a7, a8);

      type metadata accessor for MessageData(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  return result;
}

size_t sub_1B04467C8(char a1, uint64_t a2, char a3)
{
  v6 = *v3;
  v7 = (*v3 + 16);
  v8 = *v7;
  v9 = type metadata accessor for Response(0);
  v10 = v9;
  if (v8 >= a2)
  {
    v19 = *(*(v9 - 8) + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E65A0, &qword_1B0EE8188);
    v16 = swift_allocObject();
    v20 = *(v6 + 24);
    *(v16 + 16) = v8;
    *(v16 + 24) = v20;
    if (v20 >= 1)
    {
      sub_1B0D0B4B0(v16 + 16, v16 + ((v19 + 40) & ~v19), v7, v6 + ((v19 + 40) & ~v19));
    }

    goto LABEL_19;
  }

  sub_1B0E435C8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  if (a1)
  {
    v13 = *(v6 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E65A0, &qword_1B0EE8188);
    v14 = *(v11 + 72);
    v15 = (v12 + 40) & ~v12;
    v16 = swift_allocObject();
    result = _swift_stdlib_malloc_size_0(v16);
    if (v14)
    {
      if (result - v15 != 0x8000000000000000 || v14 != -1)
      {
        *(v16 + 16) = (result - v15) / v14;
        *(v16 + 24) = v13;
        *(v16 + 32) = 0;
        if (v13 >= 1)
        {
          sub_1B0D0B1F8(v16 + 16, v16 + v15, v7, v6 + v15);
          *(v6 + 24) = 0;
        }

LABEL_19:

        *v3 = v16;
        return result;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E65A0, &qword_1B0EE8188);
  v21 = *(v11 + 72);
  v22 = (v12 + 40) & ~v12;
  v16 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v16);
  if (!v21)
  {
    goto LABEL_21;
  }

  if (result - v22 != 0x8000000000000000 || v21 != -1)
  {
    v24 = *(v6 + 24);
    *(v16 + 16) = (result - v22) / v21;
    *(v16 + 24) = v24;
    *(v16 + 32) = 0;
    if (v24 >= 1)
    {
      sub_1B0D0B38C(v16 + 16, v16 + v22, v7, v6 + v22);
    }

    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1B0446A38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0446AA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0446B00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0446B60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0446BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

unint64_t sub_1B0446C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1B0446DE4(unint64_t a1, uint64_t *a2, uint64_t a3, _OWORD *a4, void (*a5)(void), uint64_t a6, NSObject *a7)
{
  v8 = v7;
  v95 = a3;
  v96 = a7;
  v92 = a5;
  v93 = a6;
  v94 = a2;
  v11 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v98 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UnauthenticatedStateWithTasks(0);
  MEMORY[0x1EEE9AC00](v13);
  v99 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v15);
  v91 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v90 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v90 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v90 - v24;
  v97 = v8;
  sub_1B038CA0C(v8, &v90 - v24, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1B038C704(v25, type metadata accessor for ConnectionState);
  }

  else
  {
    v26 = v97;
    sub_1B038C704(v97, type metadata accessor for ConnectionState);
    sub_1B038C704(v25, type metadata accessor for ConnectionState);
    v27 = static MonotonicTime.now()();
    *(v26 + *(v13 + 28)) = MEMORY[0x1E69E7CC0];
    *v26 = v94;
    v26[1] = v27;
    type metadata accessor for UnauthenticatedState(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  sub_1B038CA0C(v97, v22, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B038C704(v22, type metadata accessor for ConnectionState);
    sub_1B038CA0C(v97, v19, type metadata accessor for ConnectionState);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      memcpy(v146, v19, 0x162uLL);
      v53 = *(v19 + 19);
      v54 = *(v19 + 21);
      v141 = *(v19 + 20);
      v142 = v54;
      v55 = *(v19 + 15);
      v56 = *(v19 + 17);
      v137 = *(v19 + 16);
      v138 = v56;
      v58 = *(v19 + 17);
      v57 = *(v19 + 18);
      v59 = v57;
      v140 = *(v19 + 19);
      v139 = v57;
      v60 = *(v19 + 13);
      v133 = *(v19 + 12);
      v134 = v60;
      v61 = *(v19 + 14);
      v63 = *(v19 + 12);
      v62 = *(v19 + 13);
      v64 = v61;
      v136 = *(v19 + 15);
      v135 = v61;
      v65 = *(v19 + 21);
      v144[8] = v141;
      v144[9] = v65;
      v144[4] = v137;
      v144[5] = v58;
      v144[7] = v53;
      v144[6] = v59;
      v144[0] = v63;
      v144[1] = v62;
      v143 = *(v19 + 176);
      v145 = *(v19 + 176);
      v144[3] = v55;
      v144[2] = v64;
      if (sub_1B0BE2780(v144) == 1)
      {
        v66 = sub_1B03DB9A4(v144);
        v104[8] = v141;
        v104[9] = v142;
        v105 = v143;
        v104[4] = v137;
        v104[5] = v138;
        v104[7] = v140;
        v104[6] = v139;
        v104[0] = v133;
        v104[1] = v134;
        v104[2] = v135;
        v104[3] = v136;
        v67 = sub_1B03DB9A4(v104);
        sub_1B0BE2834(v67, v121);
        v68 = v97;
        sub_1B038C704(v97, type metadata accessor for ConnectionState);
        v69 = *(v66 + 144);
        v130 = *(v66 + 128);
        v131 = v69;
        v132 = *(v66 + 160);
        v70 = *(v66 + 80);
        v126 = *(v66 + 64);
        v127 = v70;
        v71 = *(v66 + 96);
        v129 = *(v66 + 112);
        v128 = v71;
        v72 = *(v66 + 16);
        v122 = *v66;
        v123 = v72;
        v73 = *(v66 + 32);
        v125 = *(v66 + 48);
        v124 = v73;
        sub_1B0C09D2C(a1, v96);
        v106[8] = v130;
        v106[9] = v131;
        v106[4] = v126;
        v106[5] = v127;
        v106[7] = v129;
        v106[6] = v128;
        v106[0] = v122;
        v106[1] = v123;
        v106[3] = v125;
        v106[2] = v124;
        v116 = v130;
        v117 = v131;
        v112 = v126;
        v113 = v127;
        v115 = v129;
        v114 = v128;
        v108 = v122;
        v109 = v123;
        v107 = v132;
        v118 = v132;
        v111 = v125;
        v110 = v124;
        sub_1B0BF5A2C(&v108);
        v119[8] = v146[20];
        v119[9] = v146[21];
        v120 = v146[22];
        v119[4] = v146[16];
        v119[5] = v146[17];
        v119[7] = v146[19];
        v119[6] = v146[18];
        v119[0] = v146[12];
        v119[1] = v146[13];
        v119[3] = v146[15];
        v119[2] = v146[14];
        sub_1B0BE2834(v106, v121);
        sub_1B0BE27E0(v119);
        v146[20] = v116;
        v146[21] = v117;
        LOWORD(v146[22]) = v118;
        v146[16] = v112;
        v146[17] = v113;
        v146[18] = v114;
        v146[19] = v115;
        v146[12] = v108;
        v146[13] = v109;
        v146[14] = v110;
        v146[15] = v111;
        memcpy(v121, v146, 0x162uLL);
        memcpy(v68, v146, 0x162uLL);
        swift_storeEnumTagMultiPayload();
        sub_1B038CA0C(v68, v91, type metadata accessor for ConnectionState);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          sub_1B0BF6EEC(v121, v100);
          v74 = v97;
          sub_1B038C704(v97, type metadata accessor for ConnectionState);
          memcpy(v103, v91, sizeof(v103));
          sub_1B0BF3738(&v103[192], v96);
          v100[8] = v130;
          v100[9] = v131;
          LOWORD(v100[10]) = v132;
          v100[4] = v126;
          v100[5] = v127;
          v100[6] = v128;
          v100[7] = v129;
          v100[0] = v122;
          v100[1] = v123;
          v100[2] = v124;
          v100[3] = v125;
          sub_1B0BF7180(v100);
          memcpy(v74, v103, 0x162uLL);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v101[8] = v130;
          v101[9] = v131;
          v102 = v132;
          v101[4] = v126;
          v101[5] = v127;
          v101[6] = v128;
          v101[7] = v129;
          v101[0] = v122;
          v101[1] = v123;
          v101[2] = v124;
          v101[3] = v125;
          sub_1B0BF6EEC(v121, v100);
          sub_1B0BF7180(v101);
          sub_1B038C704(v91, type metadata accessor for ConnectionState);
        }

        memcpy(v100, v146, 0x162uLL);
        return sub_1B0BE278C(v100);
      }

      memcpy(v121, v146, 0x162uLL);
      sub_1B0BE278C(v121);
    }

    else
    {
      sub_1B038C704(v19, type metadata accessor for ConnectionState);
    }

    return sub_1B0BF2E10(a1);
  }

  sub_1B038C704(v97, type metadata accessor for ConnectionState);
  v28 = v99;
  v29 = sub_1B04478FC(v22, v99, type metadata accessor for UnauthenticatedStateWithTasks);
  v94 = &v90;
  MEMORY[0x1EEE9AC00](v29);
  v30 = v96;
  *(&v90 - 2) = v95;
  *(&v90 - 1) = a4;
  v31 = sub_1B0C3A488(a1, v30, v28 + *(v13 + 24), sub_1B0447A74, (&v90 - 4));
  if (v31 <= 0xFFFFFFFEFFFFFFFFLL)
  {
    v35 = v31;
    v36 = v15;
    v37 = a1;
    v38 = v32;
    v39 = v33;
    v40 = v13;
    v41 = v34;
    v92();
    v42 = v38;
    a1 = v37;
    v15 = v36;
    v43 = v41;
    v13 = v40;
    sub_1B044B414(v35, v42, v39, v43);
  }

  if (a1 >> 60 == 4)
  {
    v75 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v76 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v77 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v78 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v79 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    sub_1B0A91FD0(v76, v77, v78, *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30));
    v80 = sub_1B0C3BAA0(v76, v77, v78, v79, v75, v96);
    v81 = *(v80 + 2);
    if (v81)
    {
      LODWORD(v91) = v79;
      v95 = v15;
      v96 = v78;
      v98 = v77;
      v90 = v80;
      v82 = v80 + 7;
      v83 = v92;
      do
      {
        v84 = *(v82 - 3);
        v85 = *(v82 - 2);
        v86 = *(v82 - 1);
        v87 = *v82;
        v88 = sub_1B0BE2C30(v84);
        (v83)(v84, v85, v86, v87, v88);
        sub_1B044B428(v84, v85, v86, v87);
        v82 += 4;
        --v81;
      }

      while (v81);
      sub_1B0BB6FE0(v76, v98, v96, v91);
    }

    else
    {
      sub_1B0BB6FE0(v76, v77, v78, v79);
    }
  }

  else if (a1 >> 60 == 3)
  {
    v44 = v96;
    v95 = v15;
    v45 = swift_projectBox();
    sub_1B038CA0C(v45, v98, type metadata accessor for UntaggedResponse);
    v46 = *(v13 + 28);
    v47 = *(v99 + v46);
    v48 = v47[2];
    if (v48)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_32;
      }

      while (1)
      {
        v49 = 0;
        v50 = (v47 + 5);
        while (v49 < v47[2])
        {
          ++v49;
          v51 = *(v50 + 24);
          v52 = *(v50 + 32);
          __swift_mutable_project_boxed_opaque_existential_1(v50, v51);
          (*(v52 + 24))(v98, v44, v51, v52);
          *(v99 + v46) = v47;
          v50 += 48;
          if (v48 == v49)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_32:
        v47 = sub_1B0C0DFC8(v47);
      }
    }

LABEL_14:
    sub_1B038C704(v98, type metadata accessor for UntaggedResponse);
  }

  sub_1B04478FC(v99, v97, type metadata accessor for UnauthenticatedStateWithTasks);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1B04478FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0447964(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B04479C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1B0447A24@<D0>(void (*a1)(_OWORD *__return_ptr)@<X0>, _OWORD *a2@<X8>)
{
  a1(v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

double sub_1B0447A74@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(v5);
  v3 = v5[1];
  *a1 = v5[0];
  a1[1] = v3;
  result = *&v6;
  a1[2] = v6;
  return result;
}

unint64_t sub_1B0447ABC()
{
  sub_1B0E43FA8();
  sub_1B0E43F48();
  v0 = sub_1B0E43E58();

  result = 0;
  if (v0)
  {
    sub_1B0E43F98();
    swift_dynamicCastClassUnconditional();
    v2 = sub_1B0E43F88();
    negotiated_tls_protocol_version = sec_protocol_metadata_get_negotiated_tls_protocol_version(v2);
    negotiated_tls_ciphersuite = sec_protocol_metadata_get_negotiated_tls_ciphersuite(v2);
    if (sec_protocol_metadata_get_server_name(v2))
    {
      sub_1B0E44D88();
    }

    swift_unknownObjectRelease();

    return negotiated_tls_protocol_version | (negotiated_tls_ciphersuite << 16);
  }

  return result;
}

uint64_t sub_1B0447BC4()
{
  v1 = sub_1B0E43BC8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B0E43B58();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v12 = *(v0 + *(type metadata accessor for ConnectionConfiguration(0) + 28));
  if (v12 >> 6)
  {
    if (v12 >> 6 != 1)
    {
      return 0;
    }

    v12 &= 0x3Fu;
  }

  (*(v2 + 16))(v4, v0, v1);
  if ((*(v2 + 88))(v4, v1) == *MEMORY[0x1E6977B08])
  {
    (*(v2 + 96))(v4, v1);
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18E0, &qword_1B0ED0CD0) + 48);
    v14 = *(v6 + 32);
    v14(v11, v4, v5);
    v15 = sub_1B0E43BB8();
    (*(*(v15 - 8) + 8))(&v4[v13], v15);
    v14(v8, v11, v5);
    if ((*(v6 + 88))(v8, v5) == *MEMORY[0x1E6977AF0])
    {
      (*(v6 + 96))(v8, v5);
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5510, &qword_1B0ED0CD8);
      sub_1B0398EFC(&v8[*(v16 + 48)], &qword_1EB6E5518, &qword_1B0ED0CE0);
    }

    else
    {
      (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    (*(v2 + 8))(v4, v1);
  }

  return v12;
}

uint64_t sub_1B0447F00(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1B0447F14(result);
  }

  return result;
}

unint64_t sub_1B0447F14(unint64_t result)
{
  switch((result >> 59) & 0x1E | (result >> 2) & 1)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B0447F9C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a1 >= a4 && (HIDWORD(a4) - a4) - 2 >= a1 - a4)
  {
    swift_beginAccess();
    v6 = 0;
    v5 = *(*(a3 + 24) + ((a5 >> 24) & 0xFFFF00 | BYTE6(a5)) + a1);
    v11 = bswap32(v5) >> 16;
    if ((a2 & 1) == 0)
    {
      LOWORD(v5) = v11;
    }

    v5 = v5;
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  return v5 | (v6 << 16);
}

uint64_t sub_1B0448078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 12);
  v9 = *(a1 + 16);
  v10 = *(a1 + 20);
  v11 = *(a1 + 22);
  result = sub_1B0447F9C(v7, 0, *a1, v7 | (v8 << 32), v9 | (v10 << 32) | (v11 << 48));
  if ((result & 0x10000) != 0)
  {
    if (v8 != v7)
    {
      goto LABEL_14;
    }

    sub_1B0D3EA30();
    swift_allocError();
    return swift_willThrow();
  }

  if (result == 3338)
  {
    v13 = v7 + 2;
    if (v7 >= 0xFFFFFFFE)
    {
      __break(1u);
    }

    else if (v8 >= v13)
    {
      *(a1 + 8) = v13;
      return result;
    }

    __break(1u);
    goto LABEL_34;
  }

  if (BYTE1(result) == 10)
  {
LABEL_11:
    v14 = v7 + 1;
    if (v7 == -1)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v8 >= v14)
    {
      goto LABEL_21;
    }

    __break(1u);
LABEL_14:
    result = swift_beginAccess();
    v15 = *(*(v6 + 24) + (v11 | (v10 << 8)) + v7);
    if (v15 != 13 && v15 != 10)
    {
      sub_1B0436554();
      swift_allocError();
      *v17 = 0x6E776F6E6B6E55;
      v17[1] = 0xE700000000000000;
      v17[2] = 0xD000000000000020;
      v17[3] = 0x80000001B0F2FA10;
      v17[4] = 426;
      return swift_willThrow();
    }

    v14 = v7 + 1;
    if (v7 == -1)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v8 < v14)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

LABEL_21:
    *(a1 + 8) = v14;
    return result;
  }

  if (BYTE1(result) != 32)
  {
    if (BYTE1(result) != 13)
    {
      sub_1B0436554();
      swift_allocError();
      *v21 = 0x6E776F6E6B6E55;
      v21[1] = 0xE700000000000000;
      v21[2] = 0xD000000000000020;
      v21[3] = 0x80000001B0F2FA10;
      v21[4] = 430;
      return swift_willThrow();
    }

    goto LABEL_11;
  }

  v18 = __OFADD__(a2, 1);
  v19 = a2 + 1;
  if (v18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v19 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v22 = a3;
    return swift_willThrow();
  }

  v20 = v7 + 1;
  if (v7 == -1)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v8 >= v20)
  {
    *(a1 + 8) = v20;

    sub_1B0448078(a1, v19, a3);
    if (!v23)
    {
    }

    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 12) = v8;
    *(a1 + 16) = v9;
    *(a1 + 20) = v10;
    *(a1 + 22) = v11;
    return swift_willThrow();
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1B0448354(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResponseParser._Response(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B04483B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1B0448440(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1B0448650(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v73 = _s19CommandOutputBufferV7ElementOMa(0);
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v77 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for Response(0);
  MEMORY[0x1EEE9AC00](v71);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v70 = &v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5680, &qword_1B0EE8170);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v64 - v11;
  v13 = type metadata accessor for ServerResponseFramingParser.Frame(0);
  v78 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v89 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for ResponseOrContinuationRequest(0);
  v15 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v86 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v87 = &v64 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v64 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v85 = &v64 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v64 - v25;
  swift_beginAccess();
  v27 = ServerResponseFramingParser.popAllFrames()();
  swift_endAccess();
  result = sub_1B0449140(0, *(v27 + 16), 0, MEMORY[0x1E69E7CC0]);
  v88 = result;
  v84 = *(v27 + 16);
  if (!v84)
  {
LABEL_36:

    sub_1B0E44008();
    swift_retain_n();
    v63 = v88;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E43FF8();
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5688, &qword_1B0ED3910);
    v91 = v63;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E44028();

    sub_1B0E440D8();
  }

  v69 = v7;
  v29 = v15;
  v30 = 0;
  v31 = v78;
  v83 = v27 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
  v75 = v29;
  v76 = v12;
  v79 = (v29 + 48);
  v80 = (v29 + 56);
  v81 = v21;
  v68 = v4;
  v82 = v27;
  while (v30 < *(v27 + 16))
  {
    sub_1B03FD270(v83 + *(v31 + 72) * v30, v89, type metadata accessor for ServerResponseFramingParser.Frame);
    sub_1B0E440F8();
    sub_1B0E44058();

    if (v92)
    {
      if (swift_dynamicCast())
      {
        v32 = v93[0];
        v33 = v94;
        goto LABEL_11;
      }
    }

    else
    {
      sub_1B0398EFC(&v91, &qword_1EB6E29B0, &qword_1B0E9F008);
    }

    v34 = ConnectionLoggerID.invalid.unsafeMutableAddressor();
    v32 = *v34;
    v33 = *(v34 + 1);
LABEL_11:
    sub_1B0449168(v89, v32 | (v33 << 32), v26);
    if (v3)
    {
    }

    swift_beginAccess();
    if ((*(v4 + 241) & 1) == 0)
    {
      v35 = *(v4 + 232);
      v74 = *(v4 + 240);
      sub_1B03FD270(v26, v21, type metadata accessor for ResponseOrContinuationRequest);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v36 = v70;
        sub_1B04498A0(v21, v70, type metadata accessor for Response);
        v37 = v69;
        sub_1B03FD270(v36, v69, type metadata accessor for Response);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v65 = v35;
          v39 = *v37;
          v40 = *(v37 + 8);
          v41 = *(v37 + 16);
          v42 = *(v37 + 24);
          v43 = *(v37 + 32);
          v67 = 0;
          v44 = *(v37 + 40);
          v64 = Tag.init(_:)(v39, v40, v38);
          v66 = v45;
          v46 = v42;
          v31 = v78;
          v47 = v43;
          v12 = v76;
          v3 = v67;
          sub_1B0BB6FE0(v41, v46, v47, v44);
          sub_1B03D6B24(v36, type metadata accessor for Response);
          v4 = v68;
          if ((v66 & 1) == 0 && (v74 & 1) == 0 && v65 == v64 && !((v64 ^ v65) >> 32))
          {
            *(v68 + 232) = 0;
            *(v4 + 240) = 1;
          }
        }

        else
        {
          sub_1B03D6B24(v36, type metadata accessor for Response);
          sub_1B03D6B24(v37, type metadata accessor for Response);
          v4 = v68;
        }
      }

      else
      {
        sub_1B03D6B24(v21, type metadata accessor for ResponseOrContinuationRequest);
      }
    }

    v48 = v87;
    sub_1B03FD270(v26, v87, type metadata accessor for ResponseOrContinuationRequest);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1B03D6B24(v48, type metadata accessor for ResponseOrContinuationRequest);
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B03FD270(v26, v12, type metadata accessor for ResponseOrContinuationRequest);
      v50 = 0;
      v21 = v81;
      goto LABEL_32;
    }

    v51 = *(v4 + 208);
    v21 = v81;
    if (*(v51 + 16))
    {
      sub_1B03FD270(v51 + ((*(v72 + 80) + 32) & ~*(v72 + 80)), v77, _s19CommandOutputBufferV7ElementOMa);
      v52 = swift_getEnumCaseMultiPayload();
      if ((v52 - 1) < 2)
      {
        result = sub_1B03D6B24(v77, _s19CommandOutputBufferV7ElementOMa);
        v53 = *(v4 + 216);
        v54 = __OFADD__(v53, 1);
        v55 = v53 + 1;
        if (v54)
        {
          goto LABEL_41;
        }

        *(v4 + 216) = v55;
        v50 = 1;
        goto LABEL_32;
      }

      if (v52 != 3)
      {
        sub_1B0BEA5F4();
        swift_allocError();
        swift_willThrow();
        sub_1B03D6B24(v77, _s19CommandOutputBufferV7ElementOMa);

        swift_endAccess();

        return sub_1B03D6B24(v26, type metadata accessor for ResponseOrContinuationRequest);
      }

      result = sub_1B03D6B24(v77, _s19CommandOutputBufferV7ElementOMa);
    }

    v56 = *(v4 + 224);
    v54 = __OFADD__(v56, 1);
    v57 = v56 + 1;
    if (v54)
    {
      goto LABEL_40;
    }

    *(v4 + 224) = v57;
    sub_1B03FD270(v26, v12, type metadata accessor for ResponseOrContinuationRequest);
    v50 = 0;
LABEL_32:
    v58 = v90;
    (*v80)(v12, v50, 1, v90);
    swift_endAccess();
    if ((*v79)(v12, 1, v58) == 1)
    {
      sub_1B03D6B24(v26, type metadata accessor for ResponseOrContinuationRequest);
      result = sub_1B0398EFC(v12, &qword_1EB6E5680, &qword_1B0EE8170);
    }

    else
    {
      v59 = v85;
      sub_1B04498A0(v12, v85, type metadata accessor for ResponseOrContinuationRequest);
      sub_1B03FD270(v59, v86, type metadata accessor for ResponseOrContinuationRequest);
      v61 = v88[2];
      v60 = v88[3];
      if (v61 >= v60 >> 1)
      {
        v88 = sub_1B0449140((v60 > 1), v61 + 1, 1, v88);
      }

      sub_1B03D6B24(v85, type metadata accessor for ResponseOrContinuationRequest);
      sub_1B03D6B24(v26, type metadata accessor for ResponseOrContinuationRequest);
      v62 = v88;
      v88[2] = v61 + 1;
      result = sub_1B04498A0(v86, v62 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v61, type metadata accessor for ResponseOrContinuationRequest);
      v12 = v76;
      v31 = v78;
    }

    ++v30;
    v27 = v82;
    if (v84 == v30)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t ServerResponseFramingParser.popAllFrames()()
{
  result = *(v0 + 184);
  *(v0 + 184) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1B0449168@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ServerResponseFramingParser.Frame(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03FD270(a1, v8, type metadata accessor for ServerResponseFramingParser.Frame);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1B03D6B24(a1, type metadata accessor for ServerResponseFramingParser.Frame);
    return sub_1B04498A0(v8, a3, type metadata accessor for ResponseOrContinuationRequest);
  }

  v10 = HIDWORD(a2);
  if (EnumCaseMultiPayload != 1)
  {
    v11 = *v8;
    v30 = *(v8 + 1);
    v60 = *(v8 + 4);
    v59 = *(v8 + 5);
    v31 = *(v8 + 14);
    v32 = v8[30];
    if (qword_1EB6DCD50 != -1)
    {
      swift_once();
    }

    v33 = sub_1B0E439A8();
    __swift_project_value_buffer(v33, qword_1EB6DCD58);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v34 = v11;

    v17 = sub_1B0E43988();
    v35 = sub_1B0E458F8();

    if (!os_log_type_enabled(v17, v35))
    {
      goto LABEL_17;
    }

    v57 = v32;
    v58 = v31;
    v61 = a1;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    a1 = swift_slowAlloc();
    v63 = a1;
    *v36 = 68158979;
    *(v36 + 4) = 2;
    *(v36 + 8) = 256;
    *(v36 + 10) = a2;
    *(v36 + 11) = 2082;
    v38 = ConnectionID.debugDescription.getter(HIDWORD(a2));
    LOBYTE(a2) = v39;
    v40 = sub_1B0399D64(v38, v39, &v63);

    *(v36 + 13) = v40;
    *(v36 + 21) = 2112;
    v41 = sub_1B0E42CC8();
    *(v36 + 23) = v41;
    *v37 = v41;
    *(v36 + 31) = 1040;
    v10 = v60;
    v42 = v59 - v60;
    if ((v59 - v60) < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v42 <= 0x7FFFFFFF)
    {
      *(v36 + 33) = v42;
      *(v36 + 37) = 2101;
      swift_beginAccess();
      *(v36 + 39) = *(v30 + 24) + (v57 | (v58 << 8)) + v10;
      _os_log_impl(&dword_1B0389000, v17, v35, "[%.*hhx-%{public}s]: Failed to parse: %@. Buffer: %{sensitive}.*P", v36, 0x2Fu);
      sub_1B0398EFC(v37, &unk_1EB6E2630, &qword_1B0E97970);
      MEMORY[0x1B272C230](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(a1);
      MEMORY[0x1B272C230](a1, -1, -1);
      MEMORY[0x1B272C230](v36, -1, -1);

      a1 = v61;
LABEL_18:
      swift_willThrow();

      return sub_1B03D6B24(a1, type metadata accessor for ServerResponseFramingParser.Frame);
    }

    __break(1u);
    goto LABEL_26;
  }

  v11 = *v8;
  v12 = *(v8 + 1);
  if (!v12)
  {
    if (qword_1EB6DCD50 == -1)
    {
LABEL_21:
      v43 = sub_1B0E439A8();
      __swift_project_value_buffer(v43, qword_1EB6DCD58);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v44 = v11;
      v45 = sub_1B0E43988();
      v46 = sub_1B0E458F8();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v62[0] = v49;
        *v47 = 68158466;
        *(v47 + 4) = 2;
        *(v47 + 8) = 256;
        *(v47 + 10) = a2;
        *(v47 + 11) = 2082;
        v50 = ConnectionID.debugDescription.getter(v10);
        v52 = a1;
        v53 = sub_1B0399D64(v50, v51, v62);

        *(v47 + 13) = v53;
        a1 = v52;
        *(v47 + 21) = 2112;
        v54 = sub_1B0E42CC8();
        *(v47 + 23) = v54;
        *v48 = v54;
        _os_log_impl(&dword_1B0389000, v45, v46, "[%.*hhx-%{public}s]: Framing error: %@", v47, 0x1Fu);
        sub_1B0398EFC(v48, &unk_1EB6E2630, &qword_1B0E97970);
        MEMORY[0x1B272C230](v48, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v49);
        MEMORY[0x1B272C230](v49, -1, -1);
        MEMORY[0x1B272C230](v47, -1, -1);
      }

      swift_willThrow();
      return sub_1B03D6B24(a1, type metadata accessor for ServerResponseFramingParser.Frame);
    }

LABEL_26:
    swift_once();
    goto LABEL_21;
  }

  v60 = HIDWORD(a2);
  v13 = v8[30];
  LODWORD(v59) = *(v8 + 14);
  v14 = *(v8 + 6);
  v15 = *(v8 + 2);
  if (qword_1EB6DCD50 != -1)
  {
    swift_once();
  }

  v16 = sub_1B0E439A8();
  __swift_project_value_buffer(v16, qword_1EB6DCD58);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();

  v17 = sub_1B0E43988();
  v18 = sub_1B0E458F8();

  if (!os_log_type_enabled(v17, v18))
  {
    goto LABEL_17;
  }

  v56 = v13;
  v61 = a1;
  v57 = v14;
  v58 = HIDWORD(v15);
  v19 = swift_slowAlloc();
  v20 = swift_slowAlloc();
  v63 = v20;
  *v19 = 68158723;
  *(v19 + 4) = 2;
  *(v19 + 8) = 256;
  *(v19 + 10) = a2;
  *(v19 + 11) = 2082;
  v21 = ConnectionID.debugDescription.getter(v60);
  v23 = sub_1B0399D64(v21, v22, &v63);

  *(v19 + 13) = v23;
  *(v19 + 21) = 1040;
  v25 = v58 - v15;
  if (v25 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else
  {
    v60 = v20;
    a1 = v61;
    if (v25 <= 0x7FFFFFFF)
    {
      v26 = v59 | (v56 << 16);
      v27 = v57 & 0xFF000000FFFFFFFFLL | ((*&v26 & 0xFFFFFFLL) << 32);
      v28 = HIWORD(v26);
      *(v19 + 23) = v25;
      *(v19 + 27) = 2101;
      swift_beginAccess();
      *(v19 + 29) = *(v12 + 24) + v15 + ((v27 >> 24) & 0xFFFF00 | v28);
      _os_log_impl(&dword_1B0389000, v17, v18, "[%.*hhx-%{public}s]: Framing error. Buffer: %{sensitive}.*P", v19, 0x25u);
      v29 = v60;
      __swift_destroy_boxed_opaque_existential_0Tm(v60);
      MEMORY[0x1B272C230](v29, -1, -1);
      MEMORY[0x1B272C230](v19, -1, -1);
LABEL_17:

      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B04498A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0449908(uint64_t a1, unint64_t *a2, NSObject *a3)
{
  v4 = v3;
  v119 = a1;
  v120 = a3;
  v118 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v118);
  v7 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v113 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v113 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v113 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v113 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v113 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v116 = &v113 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v117 = &v113 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v114 = &v113 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v115 = &v113 - v30;
  v121 = v4;
  sub_1B04479C4(v4, type metadata accessor for UnauthenticatedState);
  v32 = *a2;
  v31 = a2[1];
  v33 = a2[2];
  v34 = *a2 >> 62;
  if (v34)
  {
    if (v34 == 1)
    {
      v35 = v120;
      v36 = v22;
      sub_1B0433BE8(v120, v22, _s6LoggerVMa_0);
      sub_1B0433BE8(v35, v19, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B044A64C(v32, v31, v33);
      sub_1B044A64C(v32, v31, v33);
      sub_1B044A64C(v32, v31, v33);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v37 = sub_1B0E43988();
      v38 = sub_1B0E45908();
      if (os_log_type_enabled(v37, v38))
      {
        v116 = v32 >> 16;
        v39 = swift_slowAlloc();
        v120 = v37;
        v40 = v31;
        v41 = v39;
        v117 = swift_slowAlloc();
        v122[0] = v117;
        *v41 = 68158722;
        *(v41 + 4) = 2;
        *(v41 + 8) = 256;
        v42 = v118;
        v43 = v19[*(v118 + 20)];
        sub_1B04479C4(v19, _s6LoggerVMa_0);
        *(v41 + 10) = v43;
        *(v41 + 11) = 2082;
        v44 = *(v36 + *(v42 + 20) + 4);
        sub_1B04479C4(v36, _s6LoggerVMa_0);
        v45 = ConnectionID.debugDescription.getter(v44);
        v47 = sub_1B0399D64(v45, v46, v122);

        *(v41 + 13) = v47;
        *(v41 + 21) = 512;
        sub_1B044A65C(v32, v40, v33);
        *(v41 + 23) = v32;
        sub_1B044A65C(v32, v40, v33);
        *(v41 + 25) = 512;
        sub_1B044A65C(v32, v40, v33);
        *(v41 + 27) = v116;
        sub_1B044A65C(v32, v40, v33);
        v48 = v38;
        v49 = v120;
        _os_log_impl(&dword_1B0389000, v120, v48, "[%.*hhx-%{public}s] Using TLS protocol %hu, cipher suite %hu", v41, 0x1Du);
        v50 = v117;
        __swift_destroy_boxed_opaque_existential_0Tm(v117);
        MEMORY[0x1B272C230](v50, -1, -1);
        MEMORY[0x1B272C230](v41, -1, -1);

LABEL_19:
        v109 = v121;
        v69 = v119;
LABEL_20:
        *v109 = v69;
        type metadata accessor for UnauthenticatedState(0);
        swift_storeEnumTagMultiPayload();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        return 0x8000000000000001;
      }

      sub_1B044A65C(v32, v31, v33);
      sub_1B044A65C(v32, v31, v33);
      sub_1B04479C4(v19, _s6LoggerVMa_0);
      sub_1B044A65C(v32, v31, v33);
      sub_1B044A65C(v32, v31, v33);

      v84 = v22;
      goto LABEL_18;
    }

    v65 = Capability.startTLS.unsafeMutableAddressor();
    v66 = v65[1];
    v67 = v65[2];
    v68 = *(v65 + 24);
    v122[0] = *v65;
    v122[1] = v66;
    v122[2] = v67;
    v123 = v68;
    MEMORY[0x1EEE9AC00](v65);
    *(&v113 - 2) = v122;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v69 = v119;
    v70 = sub_1B0C32414(sub_1B0C10BD0, (&v113 - 4), v119);

    if ((v70 & 1) == 0)
    {
      v96 = v120;
      v97 = v117;
      sub_1B0433BE8(v120, v117, _s6LoggerVMa_0);
      v98 = v116;
      sub_1B0433BE8(v96, v116, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v99 = sub_1B0E43988();
      v100 = sub_1B0E458E8();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v122[0] = v102;
        *v101 = 68158210;
        *(v101 + 4) = 2;
        *(v101 + 8) = 256;
        v103 = v118;
        v104 = *(v98 + *(v118 + 20));
        sub_1B04479C4(v98, _s6LoggerVMa_0);
        *(v101 + 10) = v104;
        *(v101 + 11) = 2082;
        v105 = *(v97 + *(v103 + 20) + 4);
        sub_1B04479C4(v97, _s6LoggerVMa_0);
        v106 = ConnectionID.debugDescription.getter(v105);
        v108 = sub_1B0399D64(v106, v107, v122);

        *(v101 + 13) = v108;
        _os_log_impl(&dword_1B0389000, v99, v100, "[%.*hhx-%{public}s] Connection is insecure, but server does not support STARTTLS.", v101, 0x15u);
        __swift_destroy_boxed_opaque_existential_0Tm(v102);
        MEMORY[0x1B272C230](v102, -1, -1);
        MEMORY[0x1B272C230](v101, -1, -1);
      }

      else
      {
        sub_1B04479C4(v98, _s6LoggerVMa_0);

        sub_1B04479C4(v97, _s6LoggerVMa_0);
      }

      v109 = v121;
      goto LABEL_20;
    }

    v71 = v120;
    v72 = v115;
    sub_1B0433BE8(v120, v115, _s6LoggerVMa_0);
    v73 = v114;
    sub_1B0433BE8(v71, v114, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v74 = sub_1B0E43988();
    v75 = sub_1B0E45908();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v122[0] = v77;
      *v76 = 68158210;
      *(v76 + 4) = 2;
      *(v76 + 8) = 256;
      v78 = v118;
      v79 = *(v73 + *(v118 + 20));
      sub_1B04479C4(v73, _s6LoggerVMa_0);
      *(v76 + 10) = v79;
      *(v76 + 11) = 2082;
      v80 = *(v72 + *(v78 + 20) + 4);
      sub_1B04479C4(v72, _s6LoggerVMa_0);
      v81 = ConnectionID.debugDescription.getter(v80);
      v83 = sub_1B0399D64(v81, v82, v122);

      *(v76 + 13) = v83;
      _os_log_impl(&dword_1B0389000, v74, v75, "[%.*hhx-%{public}s] Server supports STARTTLS and connection is insecure. Attempting STARTTLS.", v76, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v77);
      MEMORY[0x1B272C230](v77, -1, -1);
      MEMORY[0x1B272C230](v76, -1, -1);
    }

    else
    {
      sub_1B04479C4(v73, _s6LoggerVMa_0);

      sub_1B04479C4(v72, _s6LoggerVMa_0);
    }

    type metadata accessor for UnauthenticatedState(0);
    swift_storeEnumTagMultiPayload();
    v112 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return ClientCommand.EncodingOptions.init(_:)(v112) & 0x101FF;
  }

  else
  {
    if (a2[5] == 1)
    {
      v51 = v10;
      v52 = v120;
      sub_1B0433BE8(v120, v10, _s6LoggerVMa_0);
      v53 = v7;
      sub_1B0433BE8(v52, v7, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B044A64C(v32, v31, v33);
      sub_1B044A64C(v32, v31, v33);
      sub_1B044A64C(v32, v31, v33);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v54 = sub_1B0E43988();
      v55 = sub_1B0E45908();
      if (os_log_type_enabled(v54, v55))
      {
        v117 = v32 >> 16;
        v56 = v31;
        v57 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v122[0] = v120;
        *v57 = 68158722;
        *(v57 + 4) = 2;
        *(v57 + 8) = 256;
        v58 = v118;
        v59 = *(v53 + *(v118 + 20));
        sub_1B04479C4(v53, _s6LoggerVMa_0);
        *(v57 + 10) = v59;
        *(v57 + 11) = 2082;
        v60 = *(v51 + *(v58 + 20) + 4);
        sub_1B04479C4(v51, _s6LoggerVMa_0);
        v61 = ConnectionID.debugDescription.getter(v60);
        v63 = sub_1B0399D64(v61, v62, v122);

        *(v57 + 13) = v63;
        *(v57 + 21) = 512;
        sub_1B044A65C(v32, v56, v33);
        *(v57 + 23) = v32;
        sub_1B044A65C(v32, v56, v33);
        *(v57 + 25) = 512;
        sub_1B044A65C(v32, v56, v33);
        *(v57 + 27) = v117;
        sub_1B044A65C(v32, v56, v33);
        _os_log_impl(&dword_1B0389000, v54, v55, "[%.*hhx-%{public}s] Using opportunistic TLS protocol %hu, cipher suite %hu", v57, 0x1Du);
        v64 = v120;
        __swift_destroy_boxed_opaque_existential_0Tm(v120);
        MEMORY[0x1B272C230](v64, -1, -1);
        MEMORY[0x1B272C230](v57, -1, -1);

        goto LABEL_19;
      }

      sub_1B044A65C(v32, v31, v33);
      sub_1B044A65C(v32, v31, v33);
      sub_1B04479C4(v7, _s6LoggerVMa_0);
      sub_1B044A65C(v32, v31, v33);
      sub_1B044A65C(v32, v31, v33);

      v84 = v51;
LABEL_18:
      sub_1B04479C4(v84, _s6LoggerVMa_0);
      goto LABEL_19;
    }

    v85 = v120;
    sub_1B0433BE8(v120, v16, _s6LoggerVMa_0);
    sub_1B0433BE8(v85, v13, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v86 = sub_1B0E43988();
    v87 = sub_1B0E458E8();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v122[0] = v89;
      *v88 = 68158210;
      *(v88 + 4) = 2;
      *(v88 + 8) = 256;
      v90 = v118;
      v91 = v13[*(v118 + 20)];
      sub_1B04479C4(v13, _s6LoggerVMa_0);
      *(v88 + 10) = v91;
      *(v88 + 11) = 2082;
      v92 = *&v16[*(v90 + 20) + 4];
      sub_1B04479C4(v16, _s6LoggerVMa_0);
      v93 = ConnectionID.debugDescription.getter(v92);
      v95 = sub_1B0399D64(v93, v94, v122);

      *(v88 + 13) = v95;
      _os_log_impl(&dword_1B0389000, v86, v87, "[%.*hhx-%{public}s] Connection is using opportunistic TLS. But we require a secure connection.", v88, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v89);
      MEMORY[0x1B272C230](v89, -1, -1);
      MEMORY[0x1B272C230](v88, -1, -1);
    }

    else
    {
      sub_1B04479C4(v13, _s6LoggerVMa_0);

      sub_1B04479C4(v16, _s6LoggerVMa_0);
    }

    v111 = v121;
    v121[1] = 0;
    v111[2] = 0;
    *v111 = 5;
    *(v111 + 24) = -64;
    type metadata accessor for UnauthenticatedState(0);
    swift_storeEnumTagMultiPayload();
    return 0xFFFFFFFF00000000;
  }
}

double sub_1B044A64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B044A65C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) == 0)
  {
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_15IMAP2Connection20UnauthenticatedStateO0B3TLSO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return *a1 + 2;
  }
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection0B13ConfigurationV14TLSRequirementO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B044A72C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = _s6LoggerVMa_0(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v41 - v16;
  if (!(a1 >> 62))
  {
    return sub_1B0BFFDBC(a1 & 0x101FF);
  }

  if (a1 >> 62 == 1)
  {
    v41 = a4;
    v18 = v14;
    v19 = v4 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1B038C9A4(v4 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v12, _s6LoggerVMa_0);
    v20 = v4;

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v21 = sub_1B0E43988();
    v22 = sub_1B0E439A8();
    (*(*(v22 - 8) + 8))(v12, v22);
    v23 = sub_1B0E458C8();
    if (os_log_type_enabled(v21, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v42 = v25;
      *v24 = 68158210;
      *(v24 + 4) = 2;
      *(v24 + 8) = 256;
      v26 = v19 + *(v18 + 20);
      *(v24 + 10) = *v26;
      v27 = v20;

      *(v24 + 11) = 2082;
      v28 = ConnectionID.debugDescription.getter(*(v26 + 4));
      v30 = sub_1B0399D64(v28, v29, &v42);

      *(v24 + 13) = v30;
      _os_log_impl(&dword_1B0389000, v21, v23, "[%.*hhx-%{public}s] Finishing push registration.", v24, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x1B272C230](v25, -1, -1);
      MEMORY[0x1B272C230](v24, -1, -1);
    }

    else
    {

      v27 = v20;
    }

    return (*(v27 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_finishPushRegistration))(a1, a2, a3, v41);
  }

  v32 = a3 | a2 | a4;
  if (a1 == 0x8000000000000000 && !v32)
  {
    v33 = *(v4 + 16);
    v34 = v33 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration;
    v35 = *(v34 + *(type metadata accessor for ConnectionConfiguration(0) + 28));
    if (v35 >> 6)
    {
      if (v35 >> 6 != 1)
      {
        v36 = 1;
        sub_1B0C3140C();
        goto LABEL_21;
      }

      LOBYTE(v35) = v35 & 0x3F;
    }

    sub_1B0420CD0(v34, v35, v33 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger);
    v36 = 0;
LABEL_21:
    sub_1B038C9A4(v33 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v17, _s6LoggerVMa_0);
    v38 = (*(v10 + 80) + 17) & ~*(v10 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = v36;
    sub_1B038CB4C(v17, v39 + v38, _s6LoggerVMa_0);

    sub_1B0BFF7B0(v40, sub_1B0BE2BA8, v39);
  }

  if (a1 == 0x8000000000000001 && !v32)
  {
    return sub_1B044AD20("[%.*hhx-%{public}s] Requesting credentials.", &OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_makeCredentials, sub_1B0BE2C1C, 52886, v15);
  }

  if (a1 == 0x8000000000000002 && !v32)
  {
    v37 = swift_allocObject();
    swift_weakInit();

    sub_1B0C00370(sub_1B0BE2BA0, v37);
  }

  if (a1 != 0x8000000000000003 || v32)
  {
    return sub_1B0C0097C();
  }

  else
  {
    return sub_1B044AD20("[%.*hhx-%{public}s] Requesting push information.", &OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_getPushInformation, sub_1B0BE2C7C, 17630, v15);
  }
}

uint64_t sub_1B044AC50()
{
  v1 = *(_s6LoggerVMa_0(0) - 8);
  v2 = (*(v1 + 80) + 17) & ~*(v1 + 80);
  v3 = sub_1B0E439A8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1B044AD20(const char *a1, void *a2, uint64_t a3, ...)
{
  v7 = v3;
  v8 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v3 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  sub_1B038C9A4(v3 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v10, _s6LoggerVMa_0);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v12 = sub_1B0E43988();
  v13 = sub_1B0E439A8();
  (*(*(v13 - 8) + 8))(v10, v13);
  v14 = sub_1B0E458C8();
  if (os_log_type_enabled(v12, v14))
  {
    v15 = swift_slowAlloc();
    v25 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v26 = v17;
    *v16 = 68158210;
    *(v16 + 4) = 2;
    *(v16 + 8) = 256;
    v18 = v11 + *(v8 + 20);
    *(v16 + 10) = *v18;

    *(v16 + 11) = 2082;
    v19 = ConnectionID.debugDescription.getter(*(v18 + 4));
    v21 = sub_1B0399D64(v19, v20, &v26);

    *(v16 + 13) = v21;
    _os_log_impl(&dword_1B0389000, v12, v14, a1, v16, 0x15u);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x1B272C230](v17, -1, -1);
    a2 = v25;
    MEMORY[0x1B272C230](v16, -1, -1);
  }

  else
  {
  }

  v22 = *(v7 + *a2);
  v23 = swift_allocObject();
  swift_weakInit();

  v22(a3, v23);
}