uint64_t type metadata accessor for AuthTokenResponseItem(uint64_t a1)
{
  result = qword_1ED8EA190;
  if (!qword_1ED8EA190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF0EFBB8(uint64_t a1)
{
  result = sub_1BF17923C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BF0EFC3C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1BF17B86C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
    if (v6 || (sub_1BF17B86C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6974617269707865 && a2 == 0xED00006374556E6FLL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BF17B86C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1BF0EFD50(char a1)
{
  if (!a1)
  {
    return 7107189;
  }

  if (a1 == 1)
  {
    return 0x6E656B6F74;
  }

  return 0x6974617269707865;
}

uint64_t sub_1BF0EFDA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BF17923C();
  OUTLINED_FUNCTION_1();
  v26 = v5;
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_2_0();
  v27 = v9 - v8;
  sub_1BF0F0190(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_2_0();
  v12 = type metadata accessor for AuthTokenResponseItem(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF0F01EC();
  sub_1BF17BBDC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1BF0F0240();
  sub_1BF17B5FC();
  (*(v26 + 32))(v16, v27, v4);
  v17 = sub_1BF17B5CC();
  v18 = (v16 + *(v12 + 20));
  *v18 = v17;
  v18[1] = v19;
  sub_1BF17B5DC();
  v21 = v20;
  v22 = OUTLINED_FUNCTION_0_59();
  v23(v22);
  *(v16 + *(v12 + 24)) = v21;
  sub_1BF0F0298(v16, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1BF0F02FC(v16);
}

uint64_t sub_1BF0F00D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF0EFC3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF0F0100(uint64_t a1)
{
  v2 = sub_1BF0F01EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF0F013C(uint64_t a1)
{
  v2 = sub_1BF0F01EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1BF0F0190(uint64_t a1)
{
  if (!qword_1ED8E9B90)
  {
    sub_1BF0F01EC();
    v1 = sub_1BF17B63C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8E9B90);
    }
  }
}

unint64_t sub_1BF0F01EC()
{
  result = qword_1ED8EA1B8[0];
  if (!qword_1ED8EA1B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8EA1B8);
  }

  return result;
}

unint64_t sub_1BF0F0240()
{
  result = qword_1ED8EACE0;
  if (!qword_1ED8EACE0)
  {
    sub_1BF17923C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EACE0);
  }

  return result;
}

uint64_t sub_1BF0F0298(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthTokenResponseItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF0F02FC(uint64_t a1)
{
  v2 = type metadata accessor for AuthTokenResponseItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for AuthTokenResponseItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BF0F0438()
{
  result = qword_1EBDCC080;
  if (!qword_1EBDCC080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC080);
  }

  return result;
}

unint64_t sub_1BF0F0490()
{
  result = qword_1ED8EA1A8;
  if (!qword_1ED8EA1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA1A8);
  }

  return result;
}

unint64_t sub_1BF0F04E8()
{
  result = qword_1ED8EA1B0;
  if (!qword_1ED8EA1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA1B0);
  }

  return result;
}

Swift::Bool __swiftcall Optional.isNil()()
{
  v1 = v0;
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v8, v6);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, *(v1 + 16));
  if (EnumTagSinglePayload != 1)
  {
    (*(v3 + 8))(v8, v1);
  }

  return EnumTagSinglePayload == 1;
}

uint64_t Optional.unwrap()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v21 - v15;
  v17 = *(v7 + 16);
  v17(&v21 - v15, v3, a1, v14);
  v18 = *(a1 + 16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v18) == 1 && ((v17)(v11, v3, a1), result = __swift_getEnumTagSinglePayload(v11, 1, v18), v16 = v11, result == 1))
  {
    __break(1u);
  }

  else
  {
    a2[3] = v18;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
    return (*(*(v18 - 8) + 32))(boxed_opaque_existential_0, v16, v18);
  }

  return result;
}

uint64_t sub_1BF0F0810(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  if ((*a1 & 1) == 0)
  {
    swift_beginAccess();
    *a1 = 1;
    return DeferredPromise.reject(_:)(a3);
  }

  return result;
}

void static Promise.map<A>(on:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v88 = a1;
  OUTLINED_FUNCTION_2_3();
  v100 = v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v87 = v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v102 = v74 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v90 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v94 = v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v89 = v74 - v23;
  v24 = *(v4 + 80);
  v25 = sub_1BF179E9C();
  type metadata accessor for DeferredPromise(0, v25, v26, v27);
  v28 = DeferredPromise.__allocating_init()();
  v91 = a2;
  v29 = a3;
  v75 = v4;
  if ((MEMORY[0x1BFB51C20](a2, a3, v4, a4) & 1) == 0)
  {
    *v103 = 1;
    type metadata accessor for UnfairLock();
    swift_allocObject();
    v83 = UnfairLock.init(options:)(v103);
    v30 = swift_allocObject();
    v80 = a4;
    v31 = sub_1BF179CEC();
    v82 = v30;
    *(v30 + 16) = v31;
    v81 = swift_allocObject();
    *(v81 + 16) = 0;
    v93 = TupleTypeMetadata2;
    v79 = v24;
    if ((v91 & 0xC000000000000001) != 0)
    {
      v32 = sub_1BF17B47C();
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = v32 | 0x8000000000000000;
    }

    else
    {
      v37 = -1 << *(v91 + 32);
      v34 = ~v37;
      v33 = v91 + 64;
      v38 = -v37;
      if (v38 < 64)
      {
        v39 = ~(-1 << v38);
      }

      else
      {
        v39 = -1;
      }

      v35 = v39 & *(v91 + 64);
      v36 = v91;
    }

    v101 = (v100 + 32);
    v74[1] = v34;
    v86 = (v34 + 64) >> 6;
    v95 = v100 + 16;
    v84 = (v17 + 32);
    v78 = v99 + 7;
    v77 = v100 + 8;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v40 = 0;
    v85 = v33;
    v92 = v36;
    v76 = v28;
    while (1)
    {
      if ((v36 & 0x8000000000000000) != 0)
      {
        if (sub_1BF17B48C())
        {
          sub_1BF17B82C();
          swift_unknownObjectRelease();
          sub_1BF17B82C();
          swift_unknownObjectRelease();
          v45 = v93;
          v53 = *(v93 + 48);
          v44 = v94;
          (*v101)();
          *(v44 + v53) = *v103;
          v54 = v44;
          v55 = 0;
        }

        else
        {
          v45 = v93;
          v44 = v94;
          v54 = v94;
          v55 = 1;
        }

        __swift_storeEnumTagSinglePayload(v54, v55, 1, v45);
        v43 = v40;
        v99 = v35;
      }

      else
      {
        v41 = v35;
        v42 = v40;
        if (!v35)
        {
          v43 = v40;
          v45 = v93;
          v44 = v94;
          while (1)
          {
            v42 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              break;
            }

            if (v42 >= v86)
            {
              __swift_storeEnumTagSinglePayload(v94, 1, 1, v93);
              v99 = 0;
              goto LABEL_24;
            }

            v41 = *(v33 + 8 * v42);
            ++v43;
            if (v41)
            {
              v36 = v92;
              goto LABEL_18;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

LABEL_18:
        v99 = (v41 - 1) & v41;
        v46 = __clz(__rbit64(v41)) | (v42 << 6);
        v47 = v100;
        v48 = v102;
        (*(v100 + 16))(v102, *(v36 + 48) + *(v100 + 72) * v46, v29);
        v49 = *(*(v36 + 56) + 8 * v46);
        v50 = *(v93 + 48);
        v51 = *(v47 + 32);
        v44 = v94;
        v52 = v48;
        v45 = v93;
        v51(v94, v52, v29);
        *(v44 + v50) = v49;
        __swift_storeEnumTagSinglePayload(v44, 0, 1, v45);

        v43 = v42;
      }

LABEL_24:
      v56 = v89;
      (*v84)(v89, v44, v90);
      if (__swift_getEnumTagSinglePayload(v56, 1, v45) == 1)
      {
        break;
      }

      v98 = *(v56 + *(v45 + 48));
      v57 = v98;
      v58 = v100;
      v96 = *(v100 + 32);
      v59 = v102;
      v60 = v96(v102, v56, v29);
      MEMORY[0x1EEE9AC00](v60, v61);
      v62 = v80;
      v74[-4] = v29;
      v74[-3] = v62;
      v74[-2] = v57;
      v63 = v79;
      v97 = firstly<A>(closure:)(sub_1BF0F1538);
      v64 = v87;
      (*(v58 + 16))(v87, v59, v29);
      v65 = (*(v58 + 80) + 64) & ~*(v58 + 80);
      v66 = (v78 + v65) & 0xFFFFFFFFFFFFFFF8;
      v67 = swift_allocObject();
      v67[2] = v63;
      v67[3] = v29;
      v67[4] = v62;
      v68 = v91;
      v69 = v83;
      v70 = v81;
      v67[5] = v83;
      v67[6] = v70;
      v67[7] = v82;
      v71 = v67 + v65;
      v28 = v76;
      (v96)(v71, v64);
      *(v67 + v66) = v68;
      *(v67 + ((v66 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

      v72 = v88;
      Promise.then<A>(on:closure:)(v88, sub_1BF0F1470, v67, MEMORY[0x1E69E7CA8] + 8);

      v73 = swift_allocObject();
      v73[2] = v69;
      v73[3] = v70;
      v73[4] = v28;

      sub_1BEFF77FC(v72, sub_1BF0F1500, v73);

      (*(v100 + 8))(v102, v29);
      v40 = v43;
      v35 = v99;
      v33 = v85;
      v36 = v92;
    }

    sub_1BF003FE8(v92);
    OUTLINED_FUNCTION_2_41(v28 + 16);
    if (!*(v28 + 16))
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  swift_getTupleTypeMetadata2();
  sub_1BF17A56C();
  *v103 = sub_1BF179DAC();
  DeferredPromise.resolve(_:)(v103);

  OUTLINED_FUNCTION_2_41(v28 + 16);
  if (*(v28 + 16))
  {

LABEL_28:

    OUTLINED_FUNCTION_26_2();
    return;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t sub_1BF0F1188(_BYTE *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a4;
  v27 = a5;
  v9 = *(*a6 + 80);
  v10 = *(v9 + 24);
  v11 = sub_1BF17AE6C();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v25 - v13;
  v15 = *(v9 + 16);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v25 - v19;
  result = swift_beginAccess();
  if ((*a1 & 1) == 0)
  {
    (*(v16 + 16))(v20, a3, v15);
    (*(*(v10 - 8) + 16))(v14, v26, v10);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v10);
    swift_beginAccess();
    sub_1BF179EBC();
    swift_endAccess();
    swift_beginAccess();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v22 = sub_1BF179DFC();

    type metadata accessor for Promise(0, v10, v23, v24);
    result = sub_1BF179DFC();
    if (v22 == result)
    {
      swift_beginAccess();
      *a1 = 1;
      swift_beginAccess();
      v28 = *a2;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      DeferredPromise.resolve(_:)(&v28);
    }
  }

  return result;
}

uint64_t Diffable.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 + 16) + 8))(a2);
  sub_1BF179F3C();
}

unint64_t JSON.subscript.getter@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = *(*a1 + 16);
  result = sub_1BF01716C(*v2);
  v8 = v4 + 40;
  v9 = 1;
  if (v6)
  {
    while (1)
    {
      v10 = *(v4 + 16);
      if (v9 - 1 >= v10)
      {
        break;
      }

      if (v5 >> 61)
      {
        if (v5 >> 61 != 1)
        {
          if (v6 == 1)
          {
            goto LABEL_21;
          }

          result = sub_1BF017214(v5);
          if (v9 >= v10)
          {
            __break(1u);
LABEL_17:

            sub_1BF017214(v5);
LABEL_19:
            result = sub_1BF017214(v5);
          }

          v5 = 0xF000000000000007;
          goto LABEL_21;
        }

        v11 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BF01716C(v5);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v12 = JSONPointer.Component.index.getter();
        if (v13)
        {
          sub_1BF017214(v5);

          goto LABEL_19;
        }

        v14 = v12;

        if (v14 < 0 || v14 >= *(v11 + 16))
        {
          goto LABEL_17;
        }

        v15 = (v11 + 8 * v14 + 32);
      }

      else
      {
        v16 = *(v5 + 16);
        if (!*(v16 + 16))
        {
          goto LABEL_19;
        }

        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BF01716C(v5);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v17 = sub_1BF014CA8();
        v19 = v18;

        if ((v19 & 1) == 0)
        {
          goto LABEL_17;
        }

        v15 = (*(v16 + 56) + 8 * v17);
      }

      v20 = *v15;
      sub_1BF01716C(*v15);
      sub_1BF017214(v5);

      result = sub_1BF017214(v5);
      --v6;
      ++v9;
      v8 += 16;
      v5 = v20;
      if (!v6)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    *a2 = v5;
  }

  return result;
}

uint64_t Synchronizer.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = dispatch_group_create();
  return v0;
}

uint64_t Synchronizer.synchronize(on:closure:)(void *a1, void (*a2)(void))
{
  v3 = v2;
  sub_1BF00361C(0, &qword_1ED8ED8C0, type metadata accessor for Promise);
  v6 = swift_allocObject();
  v17 = 0;
  type metadata accessor for UnfairLock();
  swift_allocObject();

  v7 = a1;
  v8 = UnfairLock.init(options:)(&v17);
  sub_1BF00361C(0, &qword_1ED8ED8D0, type metadata accessor for Seal);
  swift_allocObject();
  *(v6 + 16) = sub_1BF034CD4(v8);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1BF0357A4;
  *(v9 + 24) = v6;
  v10 = *(v3 + 16);
  swift_retain_n();
  dispatch_group_enter(v10);
  a2();
  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = v7;
  v11[4] = sub_1BF0004A8;
  v11[5] = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1BF0F1DC4;
  *(v12 + 24) = v11;
  v13 = qword_1ED8F0210;

  v14 = v7;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = off_1ED8F0218;
  sub_1BEFFFDC4(off_1ED8F0218, sub_1BF0F1DD0, v12);

  sub_1BF08C66C(v15, sub_1BF0F1E00, v3);

  return v6;
}

uint64_t sub_1BF0F1A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[0] = a2;
  v6 = sub_1BF179B5C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BF179BBC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  aBlock[4] = sub_1BF006170;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF0058CC;
  aBlock[3] = &block_descriptor_11;
  v17 = _Block_copy(aBlock);

  sub_1BF179B8C();
  v19[1] = MEMORY[0x1E69E7CC0];
  sub_1BEFF7458(&unk_1ED8EFBF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1BF027D54(0);
  sub_1BEFF7458(&qword_1ED8EFBD0, sub_1BF027D54, MEMORY[0x1E69E6328]);
  sub_1BF17B0BC();
  sub_1BF17ACFC();
  _Block_release(v17);
  (*(v7 + 8))(v10, v6);
  (*(v12 + 8))(v15, v11);
}

uint64_t Synchronizer.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t get_enum_tag_for_layout_string_13TeaFoundation20ReferenceCodingErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_1BF0F1E88(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF0F1EC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BF0F1F10(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

void __swiftcall NSURL.appendQueryItem(with:value:)(NSURL_optional *__return_ptr retstr, Swift::String with, Swift::String value)
{
  v58 = value;
  v57 = with;
  v3 = sub_1BF178F0C();
  OUTLINED_FUNCTION_1();
  v56 = v4;
  MEMORY[0x1EEE9AC00](v5, v6);
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF015010(0, &qword_1ED8EFC20, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v52 - v10;
  v12 = sub_1BF178E2C();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v52 - v21;
  v23 = sub_1BF17923C();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF015010(0, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = &v52 - v32;
  sub_1BF1791BC();
  sub_1BF178E7C();
  v34 = *(v25 + 8);
  v59 = v23;
  v53 = v34;
  v54 = v25 + 8;
  v34(v29, v23);
  if (OUTLINED_FUNCTION_2_42() || (v36 = sub_1BF178E5C()) == 0)
  {

    v35 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v35 = v36;
  }

  sub_1BF178DFC();
  (*(v14 + 16))(v18, v22, v12);
  v37 = v11;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BF0A6AF8(0, *(v35 + 16) + 1, 1, v35);
    v35 = v50;
  }

  v39 = *(v35 + 16);
  v38 = *(v35 + 24);
  if (v39 >= v38 >> 1)
  {
    sub_1BF0A6AF8(v38 > 1, v39 + 1, 1, v35);
    v35 = v51;
  }

  *(v35 + 16) = v39 + 1;
  (*(v14 + 32))(v35 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v39, v18, v12);
  if (OUTLINED_FUNCTION_2_42())
  {
  }

  else
  {
    sub_1BF178E6C();
  }

  v40 = v37;
  v41 = v59;
  if (OUTLINED_FUNCTION_2_42())
  {
    v42 = OUTLINED_FUNCTION_1_49();
    v43(v42);
    __swift_storeEnumTagSinglePayload(v37, 1, 1, v41);
  }

  else
  {
    v44 = v55;
    v45 = v56;
    (*(v56 + 16))(v55, v33, v3);
    sub_1BF178E8C();
    (*(v45 + 8))(v44, v3);
    if (__swift_getEnumTagSinglePayload(v40, 1, v41) == 1)
    {
      v46 = OUTLINED_FUNCTION_1_49();
      v47(v46);
    }

    else
    {
      sub_1BF17916C();
      v48 = OUTLINED_FUNCTION_1_49();
      v49(v48);
      v53(v40, v41);
    }
  }

  sub_1BF01F8EC(v33);
}

uint64_t sub_1BF0F2410(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BF17B86C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7473694C6C7275 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF17B86C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1BF0F24D8(char a1)
{
  if (a1)
  {
    return 0x7473694C6C7275;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1BF0F2508(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  sub_1BF0F2760(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF0F27BC();
  sub_1BF17BC1C();
  v15 = 0;
  sub_1BF17B66C();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    sub_1BF096DCC(0);
    sub_1BF0F2810();
    sub_1BF17B69C();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1BF0F26A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF0F2410(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF0F26C8(uint64_t a1)
{
  v2 = sub_1BF0F27BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF0F2704(uint64_t a1)
{
  v2 = sub_1BF0F27BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1BF0F2760(uint64_t a1)
{
  if (!qword_1ED8E9B68)
  {
    sub_1BF0F27BC();
    v1 = sub_1BF17B6CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8E9B68);
    }
  }
}

unint64_t sub_1BF0F27BC()
{
  result = qword_1ED8EA9E0[0];
  if (!qword_1ED8EA9E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8EA9E0);
  }

  return result;
}

unint64_t sub_1BF0F2810()
{
  result = qword_1ED8E9C60;
  if (!qword_1ED8E9C60)
  {
    sub_1BF096DCC(255);
    sub_1BF0F2888();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E9C60);
  }

  return result;
}

unint64_t sub_1BF0F2888()
{
  result = qword_1ED8EACF0;
  if (!qword_1ED8EACF0)
  {
    sub_1BF17923C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EACF0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AuthTokenRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BF0F29C0()
{
  result = qword_1EBDCC088;
  if (!qword_1EBDCC088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC088);
  }

  return result;
}

unint64_t sub_1BF0F2A18()
{
  result = qword_1ED8EA9D0;
  if (!qword_1ED8EA9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA9D0);
  }

  return result;
}

unint64_t sub_1BF0F2A70()
{
  result = qword_1ED8EA9D8;
  if (!qword_1ED8EA9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA9D8);
  }

  return result;
}

uint64_t Cache.__allocating_init(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_0_1();
  v1 = swift_allocObject();
  Cache.init(_:)();
  return v1;
}

void Cache.init(_:)()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  OUTLINED_FUNCTION_5_27();
  v71 = *(v3 + 88);
  v6 = type metadata accessor for CacheEntry(255, v71, v4, v5);
  v7 = OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_68(v7);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_6_30();
  v60 = v10;
  OUTLINED_FUNCTION_2_3();
  v57 = v11;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_6_30();
  v70 = v14;
  OUTLINED_FUNCTION_2_43();
  v69 = *(v15 + 80);
  OUTLINED_FUNCTION_2_3();
  v56 = v16;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_6_30();
  v68 = v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v64 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  OUTLINED_FUNCTION_4_1();
  v66 = v25 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  OUTLINED_FUNCTION_10_21();
  v65 = v29;
  OUTLINED_FUNCTION_2_43();
  v61 = v6;
  *(v0 + 16) = sub_1BF179CEC();
  v73[0] = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v59 = v0 + 16;
  *(v0 + 24) = UnfairLock.init(options:)(v73);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v30 = sub_1BF17B47C();
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v2 = v30 | 0x8000000000000000;
  }

  else
  {
    OUTLINED_FUNCTION_18_0();
    v33 = v34 & v35;
  }

  v36 = 0;
  v37 = (v56 + 32);
  v38 = (v57 + 32);
  v39 = (v32 + 64) >> 6;
  v62 = (v22 + 32);
  v63 = v31;
  v58 = v2;
  v67 = TupleTypeMetadata2;
  while ((v2 & 0x8000000000000000) != 0)
  {
    if (!sub_1BF17B48C())
    {
      v50 = 1;
      v55 = v33;
      v42 = v36;
      v72 = v55;
      v43 = v66;
      TupleTypeMetadata2 = v67;
      goto LABEL_15;
    }

    sub_1BF17B82C();
    swift_unknownObjectRelease();
    v46 = v70;
    v47 = v71;
    sub_1BF17B82C();
    swift_unknownObjectRelease();
    v41 = v36;
    v37 = (v56 + 32);
    v72 = v33;
    TupleTypeMetadata2 = v67;
LABEL_14:
    v49 = *(TupleTypeMetadata2 + 48);
    v43 = v66;
    (*v37)();
    (*v38)(v66 + v49, v46, v47);
    v50 = 0;
    v42 = v41;
    v2 = v58;
LABEL_15:
    v44 = v65;
LABEL_16:
    __swift_storeEnumTagSinglePayload(v43, v50, 1, TupleTypeMetadata2);
    (*v62)(v44, v43, v64);
    if (__swift_getEnumTagSinglePayload(v44, 1, TupleTypeMetadata2) == 1)
    {
      sub_1BF003FE8(v2);
      OUTLINED_FUNCTION_26_2();
      return;
    }

    v51 = *(TupleTypeMetadata2 + 48);
    (*v37)(v68, v44, v69);
    (*v38)(v70, v44 + v51, v71);
    sub_1BF01BEC4(v70, v71, v60);
    OUTLINED_FUNCTION_127();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v61);
    OUTLINED_FUNCTION_7_2(v59, v73);
    sub_1BF179E9C();
    TupleTypeMetadata2 = v67;
    sub_1BF179EBC();
    swift_endAccess();
    v36 = v42;
    v33 = v72;
    v31 = v63;
  }

  v40 = v33;
  v41 = v36;
  if (v33)
  {
LABEL_11:
    OUTLINED_FUNCTION_22_9(v40);
    OUTLINED_FUNCTION_29_8();
    v45(v68);
    OUTLINED_FUNCTION_29_8();
    v46 = v70;
    v47 = v71;
    v48(v70);
    goto LABEL_14;
  }

  v42 = v36;
  v44 = v65;
  v43 = v66;
  while (1)
  {
    v41 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v41 >= v39)
    {
      v72 = 0;
      v50 = 1;
      goto LABEL_16;
    }

    v40 = *(v31 + 8 * v41);
    ++v42;
    if (v40)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1BF0F30BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 24);
  v7 = sub_1BF17AE6C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v17 - v10;
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  (*(v16 + 16))(&v17 - v15, a3, v6, v14);
  (*(v8 + 16))(v11, a1, v7);
  Cache.subscript.setter();
}

void (*Cache.subscript.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = *v1;
  v5 = sub_1BF17AE6C();
  v3[1] = v5;
  v6 = *(v5 - 8);
  v3[2] = v6;
  v7 = *(v6 + 64);
  v3[3] = __swift_coroFrameAllocStub(v7);
  v3[4] = __swift_coroFrameAllocStub(v7);
  v3[5] = *(v4 + 80);
  OUTLINED_FUNCTION_2_3();
  v9 = v8;
  v3[6] = v8;
  v11 = *(v10 + 64);
  v3[7] = __swift_coroFrameAllocStub(v11);
  v3[8] = __swift_coroFrameAllocStub(v11);
  (*(v9 + 16))();
  Cache.subscript.getter();
  return sub_1BF0F33C0;
}

void sub_1BF0F33C0()
{
  OUTLINED_FUNCTION_32();
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 64);
  if (v4)
  {
    v5 = v1[5];
    v6 = v1[6];
    v8 = v1[3];
    v7 = v1[4];
    v9 = v1[1];
    v10 = v1[2];
    (*(v10 + 16))(v8, v7, v9);
    (*(v6 + 32))(v2, v3, v5);
    Cache.subscript.setter();
    (*(v10 + 8))(v7, v9);
  }

  else
  {
    v8 = v1[3];
    v7 = v1[4];
    OUTLINED_FUNCTION_17_2();
    Cache.subscript.setter();
  }

  free(v3);
  free(v2);
  free(v7);
  free(v8);
  OUTLINED_FUNCTION_26_2();

  free(v11);
}

void Cache.subscript.getter(uint64_t a1, double a2)
{
  OUTLINED_FUNCTION_5_27();
  v8 = *(v7 + 88);
  v9 = OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_68(v9);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_6_30();
  v63 = v12;
  v15 = type metadata accessor for CacheEntry(255, v8, v13, v14);
  v69 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v66 = v16;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_2_3();
  v70 = v19;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v58 - v22;
  v24 = *(v2 + 80);
  OUTLINED_FUNCTION_2_3();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v62 = &v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  OUTLINED_FUNCTION_13();
  v60 = v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  OUTLINED_FUNCTION_10_21();
  v64 = v35;
  OUTLINED_FUNCTION_2_43();
  v37 = *(v36 + 96);
  v65 = v8;
  v75 = v37;
  v78 = sub_1BF179CEC();
  v73 = v3;
  v38 = *(v3 + 24);
  UnfairLock.lock()();
  if (a2 < 0.0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    v72 = v5;
    OUTLINED_FUNCTION_8_25();
    v39 = sub_1BF17A4EC();
    v77 = v39;
    OUTLINED_FUNCTION_8_25();
    if (v39 != sub_1BF17A5AC())
    {
      v59 = v38;
      v74 = (v26 + 16);
      v67 = (v70 + 1);
      v68 = v70 + 4;
      v70 = (v26 + 8);
      v71 = v26 + 32;
      v61 = v65 - 8;
      ++v66;
      v40 = v64;
      do
      {
        v41 = v23;
        OUTLINED_FUNCTION_8_25();
        v42 = sub_1BF17A58C();
        sub_1BF17A51C();
        if (v42)
        {
          OUTLINED_FUNCTION_21_9();
          v45 = *(v26 + 16);
          v45(v40, v43 + v44 * v39, v24);
        }

        else
        {
          OUTLINED_FUNCTION_28_8();
          v57 = sub_1BF17B23C();
          if (v60 != 8)
          {
            goto LABEL_20;
          }

          v76[0] = v57;
          v45 = *v74;
          (*v74)(v40, v76, v24);
          swift_unknownObjectRelease();
        }

        v46 = v72;
        OUTLINED_FUNCTION_28_8();
        sub_1BF17A62C();
        v47 = OUTLINED_FUNCTION_17_2();
        v48(v47);
        OUTLINED_FUNCTION_10_9(v73 + 16, v76);
        OUTLINED_FUNCTION_19_11();
        sub_1BF179EAC();
        if (__swift_getEnumTagSinglePayload(v46, 1, v15) == 1)
        {
          (*v66)(v46, v69);
          swift_endAccess();
        }

        else
        {
          OUTLINED_FUNCTION_17_11();
          v49();
          swift_endAccess();
          v50 = sub_1BF0183E0(v15);
          if (v50 >= -a2 && v50 <= a2)
          {
            v45(v62, v4, v24);
            v52 = v65;
            (*(*(v65 - 8) + 16))(v63, v41, v65);
            OUTLINED_FUNCTION_127();
            __swift_storeEnumTagSinglePayload(v53, v54, v55, v52);
            OUTLINED_FUNCTION_25_9();
            sub_1BF179E9C();
            v40 = v64;
            sub_1BF179EBC();
          }

          (*v67)(v41, v15);
        }

        v23 = v41;
        (*v70)(v4, v24);
        OUTLINED_FUNCTION_8_25();
        v56 = sub_1BF17A5AC();
        v39 = v77;
      }

      while (v77 != v56);
      v38 = v59;
    }

    os_unfair_lock_unlock(*(v38 + 16));
  }
}

uint64_t Cache.read(_:maxAge:)(uint64_t a1, double a2)
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0();
  sub_1BF179E9C();
  v4 = OUTLINED_FUNCTION_12_1();
  type metadata accessor for Promise(v4, v5, v6, v7);
  Cache.subscript.getter(a1, a2);
  return Promise.__allocating_init(value:)();
}

uint64_t Cache.write(values:)()
{
  static Cache.+= infix(_:_:)();
  sub_1BF179E9C();
  v0 = OUTLINED_FUNCTION_12_1();
  type metadata accessor for Promise(v0, v1, v2, v3);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return Promise.__allocating_init(value:)();
}

Swift::Void __swiftcall Cache.removeAll()()
{
  v1 = *(v0 + 24);
  UnfairLock.lock()();
  OUTLINED_FUNCTION_7_2(v0 + 16, v5);
  OUTLINED_FUNCTION_0_35();
  OUTLINED_FUNCTION_0_35();
  type metadata accessor for CacheEntry(0, *(v2 + 88), v3, v4);
  OUTLINED_FUNCTION_0_35();
  sub_1BEFF4CFC();
  sub_1BF179E9C();
  sub_1BF179E8C();
  swift_endAccess();
  os_unfair_lock_unlock(*(v1 + 16));
}

uint64_t Cache<>.deleteAsync(_:)()
{
  sub_1BF000444(sub_1BF0F3DE0);
  sub_1BF0F3DE8(0);
  swift_allocObject();
  v0 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return sub_1BF0AAF14(v0);
}

uint64_t sub_1BF0F3CBC(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  type metadata accessor for CacheEntry(0, *(v1 + 88), v2, v3);
  -= infix<A, B>(_:_:)();
  return swift_endAccess();
}

void sub_1BF0F3DE8(uint64_t a1)
{
  if (!qword_1EBDCBE98)
  {
    sub_1BF02027C();
    v5 = type metadata accessor for Promise(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EBDCBE98);
    }
  }
}

uint64_t URLSessionPool.__allocating_init(size:configuration:delegate:delegateQueue:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  URLSessionPool.init(size:configuration:delegate:delegateQueue:)(a1, a2, a3, a4);
  return v8;
}

void *URLSessionPool.init(size:configuration:delegate:delegateQueue:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v4[3] = 0;
  v13 = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  result = UnfairLock.init(options:)(&v13);
  v4[4] = result;
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a1)
    {
      v13 = MEMORY[0x1E69E7CC0];
      sub_1BF17B35C();
      sub_1BF0F41D4();
      do
      {
        v10 = a2;
        swift_unknownObjectRetain();
        v11 = a4;
        sub_1BF0F4048(v10, a3, a4);
        sub_1BF17B32C();
        sub_1BF17B36C();
        sub_1BF17B37C();
        sub_1BF17B33C();
        --a1;
      }

      while (a1);

      swift_unknownObjectRelease();
      v12 = v13;
    }

    else
    {

      swift_unknownObjectRelease();
      v12 = MEMORY[0x1E69E7CC0];
    }

    v4[2] = v12;
    return v4;
  }

  return result;
}

id sub_1BF0F4048(void *a1, uint64_t a2, void *a3)
{
  v5 = [swift_getObjCClassFromMetadata() sessionWithConfiguration:a1 delegate:a2 delegateQueue:a3];

  swift_unknownObjectRelease();
  return v5;
}

NSURLSession __swiftcall URLSessionPool.nextSession()()
{
  v1 = v0;
  v2 = *(v0 + 32);
  UnfairLock.lock()();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_1BF0F4268(v4, (v3 & 0xC000000000000001) == 0, v3);
  if ((v3 & 0xC000000000000001) != 0)
  {
    result.super.isa = MEMORY[0x1BFB53020](v4, v3);
  }

  else
  {
    result.super.isa = *(v3 + 8 * v4 + 32);
  }

  isa = result.super.isa;
  v7 = *(v1 + 24);
  v8 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  result.super.isa = sub_1BEFE90B4(v3);
  if (!result.super.isa)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v8 != 0x8000000000000000 || result.super.isa != -1)
  {
    *(v1 + 24) = v8 % result.super.isa;
    os_unfair_lock_unlock(*(v2 + 16));
    return isa;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t URLSessionPool.deinit()
{

  return v0;
}

uint64_t URLSessionPool.__deallocating_deinit()
{
  URLSessionPool.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

unint64_t sub_1BF0F41D4()
{
  result = qword_1ED8EDD30;
  if (!qword_1ED8EDD30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8EDD30);
  }

  return result;
}

unint64_t sub_1BF0F4268(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t URLHandlerContext.init(match:clientContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1BF0D3CEC(a1, a4);
  v9 = type metadata accessor for URLHandlerContext(0, a3, v7, v8);
  v10 = *(*(a3 - 8) + 32);
  v11 = a4 + *(v9 + 28);

  return v10(v11, a2, a3);
}

uint64_t sub_1BF0F4374(uint64_t a1)
{
  result = type metadata accessor for URLHandlerMatch(319);
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BF0F43FC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1BF17923C();
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(*(v6 - 8) + 64);
  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  if (!a2)
  {
    return 0;
  }

  v16 = ((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + v14 + 8;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v17 = (v16 & ~v14) + v15;
  v18 = 8 * v17;
  if (v17 > 3)
  {
    goto LABEL_10;
  }

  v21 = ((a2 - v12 + ~(-1 << v18)) >> v18) + 1;
  if (HIWORD(v21))
  {
    v19 = *(a1 + v17);
    if (v19)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v21 <= 0xFF)
    {
      if (v21 < 2)
      {
        goto LABEL_28;
      }

LABEL_10:
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_28;
      }

LABEL_18:
      v22 = (v19 - 1) << v18;
      if (v17 > 3)
      {
        v22 = 0;
      }

      if (v17)
      {
        if (v17 <= 3)
        {
          v23 = v17;
        }

        else
        {
          v23 = 4;
        }

        switch(v23)
        {
          case 2:
            v24 = *a1;
            break;
          case 3:
            v24 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v24 = *a1;
            break;
          default:
            v24 = *a1;
            break;
        }
      }

      else
      {
        v24 = 0;
      }

      return v12 + (v24 | v22) + 1;
    }

    v19 = *(a1 + v17);
    if (*(a1 + v17))
    {
      goto LABEL_18;
    }
  }

LABEL_28:
  if (v8 < v11)
  {
    v25 = ((a1 + v16) & ~v14);
    v7 = v11;
LABEL_32:

    return __swift_getEnumTagSinglePayload(v25, v7, v9);
  }

  if (v7 >= 0x7FFFFFFF)
  {
    v25 = a1;
    v9 = v6;
    goto LABEL_32;
  }

  v26 = *(((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v26 >= 0xFFFFFFFF)
  {
    LODWORD(v26) = -1;
  }

  return (v26 + 1);
}

void sub_1BF0F4660(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1BF17923C();
  v9 = *(*(v8 - 8) + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(*(v8 - 8) + 84);
  }

  v11 = *(a4 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(*(v8 - 8) + 64);
  v16 = ((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 8;
  v17 = *(v12 + 80);
  v18 = ((v16 + v17) & ~v17) + *(v12 + 64);
  v19 = 8 * v18;
  if (a3 <= v14)
  {
    v20 = 0;
  }

  else if (v18 <= 3)
  {
    v23 = ((a3 - v14 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v23))
    {
      v20 = 4;
    }

    else
    {
      if (v23 < 0x100)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (v23 >= 2)
      {
        v20 = v24;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 1;
  }

  if (v14 < a2)
  {
    v21 = ~v14 + a2;
    if (v18 < 4)
    {
      v22 = (v21 >> v19) + 1;
      if (v18)
      {
        v25 = v21 & ~(-1 << v19);
        bzero(a1, v18);
        if (v18 == 3)
        {
          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        else if (v18 == 2)
        {
          *a1 = v25;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v21;
      v22 = 1;
    }

    switch(v20)
    {
      case 1:
        a1[v18] = v22;
        break;
      case 2:
        *&a1[v18] = v22;
        break;
      case 3:
        goto LABEL_53;
      case 4:
        *&a1[v18] = v22;
        break;
      default:
        return;
    }

    return;
  }

  switch(v20)
  {
    case 1:
      a1[v18] = 0;
      if (a2)
      {
        goto LABEL_30;
      }

      return;
    case 2:
      *&a1[v18] = 0;
      if (a2)
      {
        goto LABEL_30;
      }

      return;
    case 3:
LABEL_53:
      __break(1u);
      return;
    case 4:
      *&a1[v18] = 0;
      goto LABEL_29;
    default:
LABEL_29:
      if (!a2)
      {
        return;
      }

LABEL_30:
      if (v10 < v13)
      {
        v26 = (&a1[v16 + v17] & ~v17);
        v27 = a2;
        v9 = v13;
LABEL_32:

        __swift_storeEnumTagSinglePayload(v26, v27, v9, v11);
        return;
      }

      if (v10 >= a2)
      {
        if (v9 < 0x7FFFFFFF)
        {
          v29 = &a1[v15 + 7] & 0xFFFFFFFFFFFFFFF8;
          if ((a2 & 0x80000000) != 0)
          {
            *(v29 + 72) = 0;
            *(v29 + 56) = 0u;
            *(v29 + 40) = 0u;
            *(v29 + 24) = 0u;
            *(v29 + 8) = 0u;
            *v29 = a2 & 0x7FFFFFFF;
          }

          else
          {
            *(v29 + 8) = (a2 - 1);
          }

          return;
        }

        v26 = a1;
        v27 = a2;
        v11 = v8;
        goto LABEL_32;
      }

      if (((((v15 + 7) & 0xFFFFFFF8) + 87) & 0xFFFFFFF8) != 0xFFFFFFF8)
      {
        v28 = ~v10 + a2;
        bzero(a1, v16);
        *a1 = v28;
      }

      return;
  }
}

uint64_t SignpostReporter.init(createdDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = *(type metadata accessor for SignpostReporter(0, a2, a4, a5) + 28);
  type metadata accessor for SignpostEntry(0, a2, v9, v10);
  *(a3 + v8) = sub_1BF179CFC();
  v11 = sub_1BF1794AC();
  v12 = *(*(v11 - 8) + 32);

  return v12(a3, a1, v11);
}

uint64_t SignpostReporter.create(date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1BF1794AC();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_4_1();
  v14 = v12 - v13;
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v22 - v18;
  v20 = *(v9 + 16);
  (v20)(&v22 - v18, v3, v7, v17);
  v20(v14, a1, v7);
  sub_1BF17533C(v19, v14, *(v3 + *(a2 + 28)), *(a2 + 16), a3);
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t SignpostReporter.add(_:object:date:comment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v59 = a5;
  v56 = a6;
  v57 = a3;
  v58 = a4;
  v54 = a2;
  v55 = sub_1BF1794AC();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_4_1();
  v53 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v51 - v16;
  v18 = *(a6 + 16);
  v19 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v51 - v24;
  v28 = type metadata accessor for SignpostEntry(0, v18, v26, v27);
  OUTLINED_FUNCTION_1();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  OUTLINED_FUNCTION_4_1();
  v52 = v33 - v34;
  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  v39 = &v51 - v38;
  (*(v21 + 16))(v25, v54, v19, v37);
  v42 = type metadata accessor for SignpostRecorder(0, v18, v40, v41);
  v43 = a1;
  v44 = *(a1 + *(v42 + 28));
  v45 = *(v9 + 16);
  v46 = v17;
  v47 = v17;
  v48 = v55;
  v45(v47, v43, v55);
  v49 = v53;
  v45(v53, v57, v48);
  sub_1BF0D59D0(v25, v44, v46, v49, v58, v59, v18, v39);
  (*(v30 + 16))(v52, v39, v28);
  sub_1BF17A65C();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF17A5DC();
  return (*(v30 + 8))(v39, v28);
}

uint64_t sub_1BF0F4E5C(uint64_t a1)
{
  result = sub_1BF1794AC();
  if (v5 <= 0x3F)
  {
    type metadata accessor for SignpostEntry(255, *(a1 + 16), v3, v4);
    result = sub_1BF17A65C();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void BridgedContainer.init(bundleAssemblies:assemblies:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1BEFE90AC(a1);
  v4 = 0;
  v5 = (a1 & 0xC000000000000001);
  v40 = MEMORY[0x1E69E7CC0];
  v6 = &unk_1ED8EEC70;
  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v3 == v4)
    {

      v20 = sub_1BEFE90AC(a2);
      v21 = 0;
      v22 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v20 == v21)
        {

          type metadata accessor for SingletonPool();
          *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC8];
          LOBYTE(v49) = 3;
          type metadata accessor for Container(0);
          swift_allocObject();
          *&v38[OBJC_IVAR___TFContainer_container] = Container.init(bundleAssemblies:assemblies:singletonPool:environment:)();

          Container.resolver.getter(&v49);

          v35 = v50;
          v36 = v51;
          __swift_project_boxed_opaque_existential_1(&v49, v50);
          *&v38[OBJC_IVAR___TFContainer_resolver] = (*(v36 + 72))(v35, v36);
          __swift_destroy_boxed_opaque_existential_1(&v49);
          v41.receiver = v38;
          v41.super_class = ObjectType;
          objc_msgSendSuper2(&v41, sel_init);
          return;
        }

        if ((a2 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x1BFB53020](v21, a2);
        }

        else
        {
          if (v21 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_41;
          }

          v23 = *(a2 + 8 * v21 + 32);
          swift_unknownObjectRetain();
        }

        if (__OFADD__(v21, 1))
        {
          goto LABEL_40;
        }

        v45 = v23;
        sub_1BEFE6EA8(0, qword_1ED8EF7D0, &protocol descriptor for AssemblyType);
        swift_unknownObjectRetain();
        if (swift_dynamicCast())
        {
          swift_unknownObjectRelease();
          sub_1BEFE87B0(v44, &v49);
          sub_1BEFE87B0(&v49, &v46);
        }

        else
        {
          OUTLINED_FUNCTION_2_44();
          sub_1BF008DD0(v24, &qword_1EBDCC0C0, qword_1ED8EF7D0, &protocol descriptor for AssemblyType);
          v42 = &unk_1F3DD4CF8;
          v25 = swift_dynamicCastObjCProtocolConditional();
          if (!v25)
          {
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_1_50();
            sub_1BF008DD0(v31, v32, qword_1ED8EF7D0, &protocol descriptor for AssemblyType);
            goto LABEL_34;
          }

          v26 = v25;
          v27 = type metadata accessor for BridgedAssembly();
          v28 = swift_allocObject();
          *(v28 + 16) = v26;
          v47 = v27;
          v48 = &protocol witness table for BridgedAssembly;
          *&v46 = v28;
        }

        sub_1BEFE87B0(&v46, &v49);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BF0A6B38();
          v22 = v33;
        }

        v30 = *(v22 + 16);
        v29 = *(v22 + 24);
        if (v30 >= v29 >> 1)
        {
          OUTLINED_FUNCTION_3_32(v29);
          sub_1BF0A6B38();
          v22 = v34;
        }

        *(v22 + 16) = v30 + 1;
        sub_1BEFE87B0(&v49, v22 + 40 * v30 + 32);
LABEL_34:
        ++v21;
      }
    }

    if (v5)
    {
      v8 = MEMORY[0x1BFB53020](v4, a1);
    }

    else
    {
      if (v4 >= *(v7 + 16))
      {
        goto LABEL_39;
      }

      v8 = *(a1 + 8 * v4 + 32);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(v4, 1))
    {
      break;
    }

    v45 = v8;
    sub_1BEFE6EA8(0, v6, &protocol descriptor for BundleAssemblyType);
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      sub_1BEFE87B0(v44, &v49);
      sub_1BEFE87B0(&v49, &v46);
    }

    else
    {
      a1 = v7;
      v7 = v3;
      v3 = v5;
      OUTLINED_FUNCTION_2_44();
      v5 = v6;
      v6 = &unk_1EBDCC0B0;
      sub_1BF008DD0(v9, &unk_1EBDCC0B0, v5, &protocol descriptor for BundleAssemblyType);
      v43 = &unk_1F3DD4D58;
      v10 = swift_dynamicCastObjCProtocolConditional();
      if (!v10)
      {
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_1_50();
        sub_1BF008DD0(v16, v17, v5, &protocol descriptor for BundleAssemblyType);
        OUTLINED_FUNCTION_0_61();
        goto LABEL_16;
      }

      v11 = v10;
      v12 = type metadata accessor for BridgedBundleAssembly();
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      v47 = v12;
      v48 = &protocol witness table for BridgedBundleAssembly;
      *&v46 = v13;
      OUTLINED_FUNCTION_0_61();
    }

    sub_1BEFE87B0(&v46, &v49);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1BF0A6B54();
      v40 = v18;
    }

    v15 = *(v40 + 16);
    v14 = *(v40 + 24);
    if (v15 >= v14 >> 1)
    {
      OUTLINED_FUNCTION_3_32(v14);
      sub_1BF0A6B54();
      v40 = v19;
    }

    *(v40 + 16) = v15 + 1;
    sub_1BEFE87B0(&v49, v40 + 40 * v15 + 32);
LABEL_16:
    ++v4;
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

id BridgedContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t NSAttributedString.init(_:arguments:)(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  v5 = sub_1BEFE90AC(a2);
  if (v5 == 1)
  {
    if (sub_1BEFE90AC(a2))
    {
      sub_1BF0F428C();
      if ((a2 & 0xC000000000000001) != 0)
      {
LABEL_15:
        v6 = MEMORY[0x1BFB53020](0, a2);
      }

      else
      {
        v6 = *(a2 + 32);
      }

      v7 = v6;

      sub_1BEFF9AF8(0, &qword_1ED8ECBC0, 0x1E696AEC0);
      v8 = [v4 string];
      v9 = sub_1BF17A0AC();
      v11 = v10;

      v12 = sub_1BF0C76A8(v9, v11);
      v13 = sub_1BF17A07C();
      v14 = [v12 rangeOfString_];
      v16 = v15;

      sub_1BF0F5980(v7, v14, v16, v4, a1);
      goto LABEL_8;
    }

LABEL_7:

LABEL_8:
    v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAttributedString_];

    return v17;
  }

  if (v5 < 2)
  {
    goto LABEL_7;
  }

  result = sub_1BEFE90AC(a2);
  if ((result & 0x8000000000000000) == 0)
  {
    v19 = result;
    for (i = 0; v19 != i; ++i)
    {
      if (__OFADD__(i, 1))
      {
        __break(1u);
        goto LABEL_15;
      }

      v21 = i;
      sub_1BF0F5AEC(&v21, v4, a1, a2);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_1BF0F5980(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (sub_1BF178BCC() == a2)
  {
    v10 = sub_1BF17ACBC();
    sub_1BF071C70(0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1BF17DEF0;
    v12 = [a5 string];
    v13 = sub_1BF17A0AC();
    v15 = v14;

    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = sub_1BF071CD8();
    *(v11 + 32) = v13;
    *(v11 + 40) = v15;
    sub_1BEFF9AF8(0, &qword_1ED8EE9B0, 0x1E69E9BF8);
    v16 = sub_1BF17AE3C();
    sub_1BF1797CC("Range not found for placeholder, string=%@", 42, 2, &dword_1BEFE0000, v16, v10, v11);
  }

  else
  {

    [a4 replaceCharactersInRange:a2 withAttributedString:{a3, a1}];
  }
}

void sub_1BF0F5AEC(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *a1;
  v8 = sub_1BEFF9AF8(0, &qword_1ED8ECBC0, 0x1E696AEC0);
  v9 = [a2 string];
  v10 = sub_1BF17A0AC();
  v12 = v11;

  v13 = sub_1BF0C76A8(v10, v12);
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_6;
  }

  v14 = v13;
  v15 = sub_1BF17B6FC();
  MEMORY[0x1BFB52000](v15);

  MEMORY[0x1BFB52000](16420, 0xE200000000000000);
  v16 = sub_1BF17A07C();

  v8 = [v14 rangeOfString_];
  v10 = v17;

  sub_1BF0F428C();
  if ((a4 & 0xC000000000000001) != 0)
  {
LABEL_6:
    v18 = MEMORY[0x1BFB53020](v7, a4);
    goto LABEL_4;
  }

  v18 = *(a4 + 8 * v7 + 32);
LABEL_4:
  v19 = v18;
  sub_1BF0F5980(v18, v8, v10, a2, a3);
}

id NSAttributedString.addingAttribute(_:value:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  [v5 addAttribute:a1 value:sub_1BF17B84C() range:{0, objc_msgSend(v2, sel_length)}];
  swift_unknownObjectRelease();
  return v5;
}

uint64_t OperationID.string.getter()
{
  v1 = *v0;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

uint64_t sub_1BF0F5D70(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = a3(a1);
  v3();
}

uint64_t sub_1BF0F5DB8()
{
  v0 = sub_1BF099C3C();
  v0();
}

void sub_1BF0F5DFC(void *a1, char a2, void (*a3)(id *), uint64_t a4, void (*a5)(void), uint64_t a6, void (*a7)(void *))
{
  if (a2)
  {
    v13 = a1;
    sub_1BF0F890C(a1, 1);
    v10 = a1;
    sub_1BEFE6EA8(0, &qword_1ED8EFD30, MEMORY[0x1E69E7280]);
    if (!swift_dynamicCast() || (v12 & 1) != 0)
    {

      a7(a1);
      sub_1BF0F8918(a1, 1);
    }

    else
    {
      sub_1BF0F8918(a1, 1);
      a5();
    }
  }

  else
  {
    v13 = a1;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    a3(&v13);
  }
}

uint64_t sub_1BF0F5F1C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
    v5 = sub_1BF0F88C8;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_1BF009984(a1, a2);
  sub_1BF16C65C(v5, v4);

  return sub_1BEFE52DC(a1, a2);
}

__n128 AuthTokenService.__allocating_init(endpointUrl:networkProxy:requestSigner:eventHandler:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_2_45();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = a2[1];
  *(v8 + 24) = *a2;
  *(v8 + 40) = v9;
  *(v8 + 49) = *(a2 + 25);
  v10 = *(a3 + 16);
  *(v8 + 72) = *a3;
  *(v8 + 88) = v10;
  *(v8 + 104) = *(a3 + 32);
  result = *a4;
  v12 = *(a4 + 16);
  *(v8 + 112) = *a4;
  *(v8 + 128) = v12;
  *(v8 + 144) = *(a4 + 32);
  return result;
}

uint64_t AuthTokenService.init(endpointUrl:networkProxy:requestSigner:eventHandler:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v5 = a2[1];
  *(v4 + 24) = *a2;
  *(v4 + 40) = v5;
  *(v4 + 49) = *(a2 + 25);
  v6 = *(a3 + 16);
  *(v4 + 72) = *a3;
  *(v4 + 88) = v6;
  *(v4 + 104) = *(a3 + 32);
  v7 = *(a4 + 16);
  *(v4 + 112) = *a4;
  *(v4 + 128) = v7;
  *(v4 + 144) = *(a4 + 32);
  return v4;
}

double AuthTokenService.__allocating_init(endpointUrl:networkProxy:requestSigner:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_45();
  v6 = swift_allocObject();
  v7 = a2[1];
  *(v6 + 24) = *a2;
  *(v6 + 40) = v7;
  *(v6 + 49) = *(a2 + 25);
  v8 = *(a3 + 16);
  *(v6 + 72) = *a3;
  *(v6 + 16) = a1;
  *(v6 + 88) = v8;
  *(v6 + 104) = *(a3 + 32);
  result = 0.0;
  *(v6 + 112) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 144) = 0;
  return result;
}

uint64_t AuthTokenService.fetchAuthTokens(for:tokenType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v76 = a3;
  v77 = a2;
  v6 = sub_1BF1794FC();
  OUTLINED_FUNCTION_1();
  v73 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v71 = &v68[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BF015064(0, &qword_1ED8EFC20, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v68[-v13];
  v15 = sub_1BF17923C();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v74 = &v68[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v72 = v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v68[-v23];
  if (qword_1ED8E9CB0 != -1)
  {
    swift_once();
  }

  v25 = sub_1BF1797FC();
  v26 = __swift_project_value_buffer(v25, qword_1ED8F4DD0);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v79 = v26;
  v27 = sub_1BF1797DC();
  v28 = sub_1BF17ACDC();

  v29 = os_log_type_enabled(v27, v28);
  v78 = a1;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v70 = v14;
    v31 = v30;
    v32 = swift_slowAlloc();
    v69 = v28;
    v33 = v32;
    v80[0] = v32;
    *v31 = 136446210;
    v34 = MEMORY[0x1BFB522D0](a1, v15);
    v75 = v4;
    v36 = v6;
    v37 = v24;
    v38 = v17;
    v39 = v15;
    v40 = sub_1BF01A7AC(v34, v35, v80);
    v4 = v75;

    *(v31 + 4) = v40;
    v15 = v39;
    v17 = v38;
    v24 = v37;
    v6 = v36;
    v14 = v70;
    _os_log_impl(&dword_1BEFE0000, v27, v69, "AuthTokenService will fetch auth tokens for URLs: %{public}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_28();
  }

  (*(*(v4 + 16) + 16))();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1BF0F698C(v14);
    v41 = sub_1BF1797DC();
    v42 = sub_1BF17ACDC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1BEFE0000, v41, v42, "AuthTokenService endpoint URL is nil; auth tokens cannot be fetched", v43, 2u);
      OUTLINED_FUNCTION_28();
    }

    sub_1BF0F6A18();
    swift_allocError();
    *v44 = 0x8000000000000000;
    sub_1BF0F6A6C(0);
    OUTLINED_FUNCTION_27();
    swift_allocObject();
    v45 = OUTLINED_FUNCTION_66();
    return sub_1BF0DAB28(v45);
  }

  else
  {
    v47 = *(v17 + 32);
    v47(v24, v14, v15);
    sub_1BF178D3C();
    swift_allocObject();
    _s13TeaFoundation16ReferenceEncoderCACycfc_0();
    v80[0] = v77;
    v80[1] = v76;
    v80[2] = v78;
    sub_1BF0F824C();
    v48 = sub_1BF178D0C();
    v50 = v49;

    v51 = v71;
    sub_1BF1794EC();
    v76 = sub_1BF1794BC();
    v70 = v52;
    (*(v73 + 8))(v51, v6);
    sub_1BF0F82A0(0);
    OUTLINED_FUNCTION_27();
    swift_allocObject();

    sub_1BF014DC0(v48, v50);
    v75 = v4;
    sub_1BF08A678();
    v77 = v53;
    v54 = v74;
    (*(v17 + 16))(v74, v24, v15);
    v55 = (*(v17 + 80) + 16) & ~*(v17 + 80);
    v78 = v24;
    v79 = v17;
    v56 = (v72 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = swift_allocObject();
    v47((v57 + v55), v54, v15);
    v58 = v70;
    v59 = v50;
    v60 = v76;
    v61 = (v57 + v56);
    *v61 = v48;
    v61[1] = v59;
    v62 = (v57 + ((v56 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v62 = v60;
    v62[1] = v58;
    sub_1BF014DC0(v48, v59);
    v63 = qword_1ED8F0210;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    if (v63 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_7_25();
    sub_1BF0DB434();

    v64 = swift_allocObject();
    v64[2] = v75;
    v64[3] = v60;
    v64[4] = v58;

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    OUTLINED_FUNCTION_7_25();
    sub_1BF0DB564();
    OUTLINED_FUNCTION_66();

    OUTLINED_FUNCTION_58();
    v65 = swift_allocObject();
    *(v65 + 16) = v60;
    *(v65 + 24) = v58;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    OUTLINED_FUNCTION_7_25();
    sub_1BF09A754();

    OUTLINED_FUNCTION_58();
    v66 = swift_allocObject();
    *(v66 + 16) = v60;
    *(v66 + 24) = v58;
    OUTLINED_FUNCTION_7_25();
    v46 = sub_1BF08C570();

    sub_1BF014E18(v48, v59);
    (*(v79 + 8))(v78, v15);
  }

  return v46;
}

uint64_t sub_1BF0F698C(uint64_t a1)
{
  sub_1BF015064(0, &qword_1ED8EFC20, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BF0F6A18()
{
  result = qword_1EBDCC0D0;
  if (!qword_1EBDCC0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC0D0);
  }

  return result;
}

void sub_1BF0F6A6C(uint64_t a1)
{
  if (!qword_1ED8E9CF8)
  {
    sub_1BF0F861C(255, &qword_1ED8ECC20, MEMORY[0x1E69E5E28]);
    v5 = type metadata accessor for Promise(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1ED8E9CF8);
    }
  }
}

uint64_t sub_1BF0F6AE0(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v29 = a2;
  v9 = sub_1BF17923C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1BF178C6C();
  v14 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v15);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v22 = v28 - v21;
  v23 = *a1;
  v24 = a1[1];
  v28[1] = v23;
  (*(v10 + 16))(v13, v29, v9, v20);
  sub_1BF178C2C();
  sub_1BF178BDC();
  sub_1BF014DC0(a3, a4);
  sub_1BF178C5C();
  sub_1BF178C4C();
  sub_1BF178C4C();
  if (v24)
  {
    sub_1BF178C4C();
  }

  v25 = v32;
  (*(v14 + 16))(v17, v22, v32);
  sub_1BF015064(0, &qword_1EBDCA9F0, MEMORY[0x1E6967EC8], type metadata accessor for Promise);
  swift_allocObject();
  v26 = sub_1BF0AAFCC();
  (*(v14 + 8))(v22, v25);
  return v26;
}

uint64_t sub_1BF0F6DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v6 = sub_1BF178C6C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v7 + 16);
  v12(v11, a1, v6, v10);
  sub_1BF0F86D0(a2 + 24, v30);
  v27 = sub_1BF0F702C(v11, v30);
  v13 = swift_allocObject();
  swift_weakInit();
  (v12)(v11, a1, v6);
  v14 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  v17 = v16 + v14;
  v18 = v27;
  (*(v7 + 32))(v17, v11, v6);
  v19 = (v16 + v15);
  v20 = v29;
  *v19 = v28;
  v19[1] = v20;
  v21 = &v18[qword_1ED8EE2D0];
  swift_beginAccess();
  v22 = *v21;
  v23 = v21[1];
  *v21 = sub_1BF0F872C;
  v21[1] = v16;

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BEFE52DC(v22, v23);

  if (qword_1ED8EF148 != -1)
  {
    swift_once();
  }

  v24 = sub_1BF0F80AC(v18);

  return v24;
}

id sub_1BF0F702C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF178C6C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v9, a1, v4, v8);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v9, v4);
  sub_1BF015064(0, qword_1ED8EDEB0, MEMORY[0x1E6967EC8], type metadata accessor for Accessor);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1BF0F89A0;
  *(v12 + 24) = v11;
  sub_1BF0F86D0(a2, v17);
  sub_1BF0F8A10(0);
  v14 = objc_allocWithZone(v13);
  v15 = sub_1BF0F7F28(v12, v17);
  sub_1BF0F840C(a2);
  (*(v5 + 8))(a1, v4);
  return v15;
}

uint64_t sub_1BF0F71F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a1 + 16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BF0F8924(result + 112, v16);

    v12 = v17;
    if (v17)
    {
      v13 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      v14[0] = v8;
      v14[1] = v9;
      v15 = v10;
      (*(v13 + 8))(v14, a3, a4, a5, v12, v13);
      return __swift_destroy_boxed_opaque_existential_1(v16);
    }

    else
    {
      return sub_1BF0F8460(v16, &qword_1ED8ECF08, &qword_1ED8ECF10, &protocol descriptor for NetworkEventHandlerType);
    }
  }

  return result;
}

void sub_1BF0F7304(char **a1@<X0>, uint64_t (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v48 = a4;
  v58 = type metadata accessor for AuthToken(0);
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v57 = &v48 - v12;
  isUniquelyReferenced_nonNull_native = sub_1BF17923C();
  v49 = *(isUniquelyReferenced_nonNull_native - 8);
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native, v14);
  v64 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AuthTokenResponseItem(0);
  v60 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v16, v17);
  v63 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  if (qword_1ED8E9CB0 != -1)
  {
LABEL_24:
    swift_once();
  }

  v20 = sub_1BF1797FC();
  __swift_project_value_buffer(v20, qword_1ED8F4DD0);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v21 = sub_1BF1797DC();
  v22 = sub_1BF17ACDC();

  v23 = os_log_type_enabled(v21, v22);
  v59 = isUniquelyReferenced_nonNull_native;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v65 = v25;
    *v24 = 134349314;
    *(v24 + 4) = *(v19 + 2);

    *(v24 + 12) = 2082;
    *(v24 + 14) = sub_1BF01A7AC(a2, a3, &v65);
    _os_log_impl(&dword_1BEFE0000, v21, v22, "AuthTokenService successfully fetched %{public}ld tokens; X-REQUEST-ID=%{public}s", v24, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v26 = v25;
    isUniquelyReferenced_nonNull_native = v59;
    MEMORY[0x1BFB547B0](v26, -1, -1);
    MEMORY[0x1BFB547B0](v24, -1, -1);
  }

  else
  {
  }

  v55 = *(v19 + 2);
  if (v55)
  {
    v27 = 0;
    v28 = *(v16 + 6);
    v53 = (v63 + *(v16 + 5));
    v54 = v28;
    v52 = &v19[(*(v60 + 80) + 32) & ~*(v60 + 80)];
    v61 = (v49 + 16);
    v51 = (v49 + 8);
    v29 = MEMORY[0x1E69E7CC8];
    v50 = v19;
    while (1)
    {
      if (v27 >= *(v19 + 2))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v30 = *(v60 + 72);
      v62 = v27;
      v31 = isUniquelyReferenced_nonNull_native;
      v32 = v63;
      sub_1BF0F0298(&v52[v30 * v27], v63);
      a2 = *v61;
      a3 = v64;
      (*v61)(v64, v32, v31);
      v33 = v57;
      _s13TeaFoundation12DateProviderC3now0B00C0VyF_0();
      v34 = v58;
      a2(&v33[*(v58 + 20)], v32, v31);
      v16 = a2;
      v35 = v53[1];
      v36 = *(v32 + v54);
      v37 = &v33[*(v34 + 24)];
      *v37 = *v53;
      *(v37 + 1) = v35;
      *&v33[*(v34 + 28)] = v36;
      v38 = v33;
      v19 = v9;
      sub_1BF0A8A64(v38, v9);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = v29;
      sub_1BF082148();
      if (__OFADD__(v29[2], (v40 & 1) == 0))
      {
        goto LABEL_22;
      }

      v41 = v39;
      a3 = v40;
      sub_1BF0F861C(0, &qword_1ED8E9C08, MEMORY[0x1E69E6DC8]);
      if (sub_1BF17B43C())
      {
        sub_1BF082148();
        isUniquelyReferenced_nonNull_native = v59;
        if ((a3 & 1) != (v43 & 1))
        {
          sub_1BF17BAAC();
          __break(1u);
          return;
        }

        v41 = v42;
      }

      else
      {
        isUniquelyReferenced_nonNull_native = v59;
      }

      v29 = v65;
      if (a3)
      {
        sub_1BF0D7C88(v9, v65[7] + *(v56 + 72) * v41);
        (*v51)(v64, isUniquelyReferenced_nonNull_native);
        sub_1BF0F02FC(v63);
      }

      else
      {
        v65[(v41 >> 6) + 8] |= 1 << v41;
        a2 = v49;
        v44 = v64;
        v16((v29[6] + *(v49 + 72) * v41), v64, isUniquelyReferenced_nonNull_native);
        sub_1BF0A8A64(v9, v29[7] + *(v56 + 72) * v41);
        (*(a2 + 1))(v44, isUniquelyReferenced_nonNull_native);
        sub_1BF0F02FC(v63);
        v45 = v29[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_23;
        }

        v29[2] = v47;
      }

      v27 = v62 + 1;
      v19 = v50;
      if (v55 == v62 + 1)
      {
        goto LABEL_20;
      }
    }
  }

  v29 = MEMORY[0x1E69E7CC8];
LABEL_20:
  *v48 = v29;
}

void sub_1BF0F790C(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1ED8E9CB0 != -1)
  {
    swift_once();
  }

  v6 = sub_1BF1797FC();
  __swift_project_value_buffer(v6, qword_1ED8F4DD0);
  v7 = a1;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  oslog = sub_1BF1797DC();
  v8 = sub_1BF17ACBC();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446466;
    swift_getErrorValue();
    v11 = sub_1BF17BB0C();
    v13 = sub_1BF01A7AC(v11, v12, &v15);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_1BF01A7AC(a2, a3, &v15);
    _os_log_impl(&dword_1BEFE0000, oslog, v8, "AuthTokenService failed to fetch tokens. error=%{public}s; X-REQUEST-ID=%{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB547B0](v10, -1, -1);
    MEMORY[0x1BFB547B0](v9, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1BF0F7AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v10;
  v8[8] = v11;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BF0F7B28, 0, 0);
}

uint64_t sub_1BF0F7B28()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v8 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1BF0F7C54;
  v6 = v0[3];
  v5 = v0[4];

  return v8(v6, v5, v2, v3);
}

uint64_t sub_1BF0F7C54(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 80) = v2;

  if (v2)
  {
    v7 = sub_1BF0F7DFC;
  }

  else
  {
    *(v6 + 88) = a2;
    *(v6 + 96) = a1;
    v7 = sub_1BF0F7D88;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BF0F7D88()
{
  (*(v0 + 40))(*(v0 + 96), *(v0 + 88));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BF0F7DFC()
{
  v1 = *(v0 + 80);
  (*(v0 + 56))(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t AuthTokenService.deinit()
{

  sub_1BF0F840C(v0 + 24);
  sub_1BF0F8460(v0 + 72, &qword_1ED8ED400, &qword_1ED8ED408, &protocol descriptor for RequestSigning);
  sub_1BF0F8460(v0 + 112, &qword_1ED8ECF08, &qword_1ED8ECF10, &protocol descriptor for NetworkEventHandlerType);
  return v0;
}

uint64_t AuthTokenService.__deallocating_deinit()
{
  AuthTokenService.deinit();
  v0 = OUTLINED_FUNCTION_2_45();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

id sub_1BF0F7F28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1BF1794AC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[qword_1ED8EE298] = MEMORY[0x1E69E7CC0];
  v12 = &v3[qword_1ED8EE2D0];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v3[qword_1ED8EE2B8] = a1;
  sub_1BF0F86D0(a2, &v3[qword_1ED8EE2C0]);

  _s13TeaFoundation12DateProviderC3now0B00C0VyF_0();
  (*(v8 + 32))(&v3[qword_1ED8EE2A8], v11, v7);
  *&v3[qword_1ED8ED240] = 0;
  v15.receiver = v3;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_init);

  sub_1BF0F840C(a2);
  return v13;
}

uint64_t sub_1BF0F80AC(void *a1)
{
  v2 = v1;
  sub_1BF0F87D0(0, &qword_1ED8E9D10, &type metadata for AuthTokenResponse, type metadata accessor for Promise);
  v4 = swift_allocObject();
  v9 = 0;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v5 = a1;
  v6 = UnfairLock.init(options:)(&v9);
  sub_1BF0F87D0(0, &qword_1ED8E9DE0, &type metadata for AuthTokenResponse, type metadata accessor for Seal);
  swift_allocObject();
  *(v4 + 16) = sub_1BF034CD4(v6);
  v7 = swift_allocObject();
  v7[2] = sub_1BF0F8850;
  v7[3] = v4;
  v7[4] = sub_1BF0F8888;
  v7[5] = v4;
  v7[6] = sub_1BF0F8858;
  v7[7] = v4;
  swift_retain_n();
  sub_1BF0F5F1C(sub_1BF0F88B8, v7);

  [*(v2 + 24) addOperation_];
  return v4;
}

unint64_t sub_1BF0F824C()
{
  result = qword_1ED8EA9C8;
  if (!qword_1ED8EA9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA9C8);
  }

  return result;
}

void sub_1BF0F82A0(uint64_t a1)
{
  if (!qword_1EBDCA9D8)
  {
    sub_1BF0F87D0(255, &qword_1ED8ECC00, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for Promise(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EBDCA9D8);
    }
  }
}

uint64_t sub_1BF0F831C(uint64_t *a1)
{
  v3 = *(sub_1BF17923C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1BF0F6AE0(a1, v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1BF0F8460(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1BF008E2C(0, a2, a3, a4);
  OUTLINED_FUNCTION_0_0();
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t get_enum_tag_for_layout_string_13TeaFoundation21AuthTokenServiceError33_FBBE5ADC03C4EEA987088D28F183E5D7LLO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1BF0F8530(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
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

uint64_t sub_1BF0F8584(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1BF0F85E4(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

void sub_1BF0F861C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BF17923C();
    v7 = type metadata accessor for AuthToken(255);
    v8 = sub_1BF0F8B54(&qword_1ED8ED690, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    v9 = a3(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1BF0F872C(uint64_t *a1)
{
  v3 = *(sub_1BF178C6C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_1BF0F71F8(a1, v5, v1 + v4, v7, v8);
}

void sub_1BF0F87D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1BF0F88C8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 8);
  v5 = *a1;
  v6 = v3;
  return v2(&v5);
}

id sub_1BF0F890C(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

void sub_1BF0F8918(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1BF0F8924(uint64_t a1, uint64_t a2)
{
  sub_1BF008E2C(0, &qword_1ED8ECF08, &qword_1ED8ECF10, &protocol descriptor for NetworkEventHandlerType);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF0F89A0()
{
  v1 = *(sub_1BF178C6C() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BF114BEC(v2);
}

void sub_1BF0F8A10(uint64_t a1)
{
  if (!qword_1ED8EA9B0)
  {
    sub_1BF0F8AA4(255);
    v3 = v2;
    v4 = sub_1BF0F8B54(&qword_1ED8EA9C0, sub_1BF0F8AA4, &protocol conformance descriptor for JSONDeserializer<A>);
    v6 = type metadata accessor for NetworkOperation(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1ED8EA9B0);
    }
  }
}

void sub_1BF0F8AA4(uint64_t a1)
{
  if (!qword_1ED8EA9B8)
  {
    v2 = sub_1BF0F8B00();
    v4 = type metadata accessor for JSONDeserializer(a1, &type metadata for AuthTokenResponse, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1ED8EA9B8);
    }
  }
}

unint64_t sub_1BF0F8B00()
{
  result = qword_1ED8EA710;
  if (!qword_1ED8EA710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA710);
  }

  return result;
}

uint64_t sub_1BF0F8B54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void AsyncObservable.next(value:quiet:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(v2 + 2);
  UnfairLock.lock()();
  OUTLINED_FUNCTION_4_0();
  v9 = *(v8 + 104);
  swift_beginAccess();
  (*(*(*(v6 + 80) - 8) + 24))(&v3[v9], a1);
  swift_endAccess();
  os_unfair_lock_unlock(*(v7 + 16));
  if ((a2 & 1) == 0)
  {
    sub_1BF03A5D8(a1);
  }
}

void AsyncObservable.mutate(with:quiet:)()
{
  OUTLINED_FUNCTION_32();
  v19 = v2;
  v4 = v3;
  OUTLINED_FUNCTION_29();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_0_62();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_13();
  v15 = *(v0 + 2);
  UnfairLock.lock()();
  v16 = *(*v0 + 104);
  OUTLINED_FUNCTION_3_33(&v0[v16]);
  (*(v8 + 16))(v12, &v0[v16], v6);
  v4(v12);
  v17 = *(v8 + 8);
  v17(v12, v6);
  OUTLINED_FUNCTION_4_25(&v0[v16]);
  (*(v8 + 24))(&v0[v16], v1, v6);
  swift_endAccess();
  os_unfair_lock_unlock(*(v15 + 16));
  if ((v19 & 1) == 0)
  {
    sub_1BF03A5D8(v1);
  }

  v17(v1, v6);
  OUTLINED_FUNCTION_26_2();
}

Swift::Void __swiftcall AsyncObservable.triggerObservers()()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_0_62();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v8 - v6;
  AsyncObservable.value.getter(&v8 - v6);
  sub_1BF03A5D8(v7);
  (*(v3 + 8))(v7, v1);
}

void AsyncObservable<A>.maybeMutate(with:quiet:)()
{
  OUTLINED_FUNCTION_32();
  v2 = v0;
  v21 = v3;
  v22 = v4;
  HIDWORD(v20) = v5;
  OUTLINED_FUNCTION_29();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_0_62();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_13();
  v23 = *(v0 + 2);
  UnfairLock.lock()();
  v16 = *(*v0 + 104);
  OUTLINED_FUNCTION_3_33(&v0[v16]);
  v17 = *(v9 + 16);
  v17(v13, &v0[v16], v7);
  (v21)(v13);
  v21 = v9;
  v18 = *(v9 + 8);
  v18(v13, v7);
  v17(v13, &v0[v16], v7);
  v19 = sub_1BF17A05C();
  v18(v13, v7);
  if (v19)
  {
    os_unfair_lock_unlock(*(v23 + 16));
  }

  else
  {
    OUTLINED_FUNCTION_4_25(&v2[v16]);
    (*(v21 + 24))(&v2[v16], v1, v7);
    swift_endAccess();
    os_unfair_lock_unlock(*(v23 + 16));
    if ((v20 & 0x100000000) == 0)
    {
      sub_1BF03A5D8(v1);
    }
  }

  v18(v1, v7);
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF0F9108()
{
  sub_1BF042FB8(v0 + 16);

  return v0;
}

uint64_t sub_1BF0F9138()
{
  v0 = sub_1BF0F9108();

  return MEMORY[0x1EEE6BDC0](v0, 49, 7);
}

uint64_t static XPCBlockBuilder.buildBlock(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

_BYTE *storeEnumTagSinglePayload for XPCBlockBuilder(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1BF0F92E4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = NonEmpty.rawElements.read();
  (*(*(v4 - 8) + 16))(a3);
  return (v5)(&v7, 0);
}

uint64_t sub_1BF0F9394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = type metadata accessor for NonEmpty(0, v5, *(a3 + a4 - 8), a4);
  v7 = NonEmpty.rawElements.modify(v10, v6);
  (*(*(v5 - 8) + 24))(v8, a1, v5);
  return (v7)(v10, 0);
}

uint64_t (*NonEmpty.rawElements.modify(void *a1, uint64_t a2))()
{
  *a1 = a2;
  a1[1] = v2;
  return sub_1BF0F945C;
}

uint64_t sub_1BF0F946C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  v8 = sub_1BF17AA7C();
  result = (*(v4 + 8))(v7, a2);
  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t NonEmpty.rawElements.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  OUTLINED_FUNCTION_2_3();
  v10 = v6;
  (*(v7 + 24))(v2, a1, v5);
  sub_1BF0F946C(v2, v5, *(a2 + 24));
  v8 = *(v10 + 8);

  return v8(a1, v5);
}

void NonEmpty.init<A, B>(_:)()
{
  OUTLINED_FUNCTION_68_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_2_3();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_2_0();
  (*(v7 + 16))(v11 - v10, v3);
  sub_1BF17A67C();
  sub_1BF17A65C();
  OUTLINED_FUNCTION_2_46();
  swift_getWitnessTable();
  NonEmpty.init(_:)();
  (*(v7 + 8))(v3, v1);
  *v5 = v12;
  OUTLINED_FUNCTION_55();
}

uint64_t NonEmpty.randomElement<A>(using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = OUTLINED_FUNCTION_8_26(AssociatedTypeWitness);
  OUTLINED_FUNCTION_68(v5);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_1_51();
  sub_1BF17AACC();
  result = OUTLINED_FUNCTION_4_26();
  if (v9)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_20();
    v10 = OUTLINED_FUNCTION_5_28();
    return v11(v10);
  }

  return result;
}

void sub_1BF0F985C()
{
  OUTLINED_FUNCTION_68_0();
  v1 = v0;
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = OUTLINED_FUNCTION_8_26(AssociatedTypeWitness);
  OUTLINED_FUNCTION_68(v6);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_1_51();
  v1(v4, v3);
  OUTLINED_FUNCTION_4_26();
  if (v9)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_20();
    v10 = OUTLINED_FUNCTION_5_28();
    v11(v10);
    OUTLINED_FUNCTION_55();
  }
}

uint64_t sub_1BF0F9998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a3 + 16);
  v10 = *(*(a3 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_10_23();
  v12 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_68(v12);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_62();
  result = a4(a1, a2, v9, v10);
  if (!v4)
  {
    result = __swift_getEnumTagSinglePayload(v5, 1, AssociatedTypeWitness);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_20();
      v16 = OUTLINED_FUNCTION_21_0();
      return v17(v16);
    }
  }

  return result;
}

uint64_t NonEmpty<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1BF17BB6C();
  NonEmpty<>.hash(into:)(v5, a1, a2);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF0F9B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1BF17BB6C();
  NonEmpty<>.hash(into:)(v6, a2, v4);
  return sub_1BF17BB9C();
}

uint64_t NonEmpty._copyToContiguousArray()(uint64_t a1)
{
  OUTLINED_FUNCTION_2_3();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_2_0();
  (*(v5 + 16))(v4 - v3);
  return sub_1BF17A34C();
}

uint64_t sub_1BF0F9CAC(uint64_t a1)
{
  NonEmpty.makeIterator()(a1);
  v3 = *(*(a1 - 8) + 8);

  return v3(v1, a1);
}

uint64_t sub_1BF0F9D24(uint64_t a1)
{
  v3 = NonEmpty._copyToContiguousArray()(a1);
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t NonEmpty.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_14_18(a1, a2, a3, a4, a5, a6, a7, a8, v21);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_20();
  v9 = OUTLINED_FUNCTION_21_0();
  v11 = v10(v9);
  v19 = OUTLINED_FUNCTION_15_16(v11, v12, v13, v14, v15, v16, v17, v18, v22);
  return v8(v19);
}

void (*sub_1BF0F9EF8(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1BF0F9F6C(v6, a2, a3);
  return sub_1BF0462C0;
}

void (*sub_1BF0F9F6C(uint64_t *a1, uint64_t a2, uint64_t a3))(void *)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  a1[1] = v7;
  a1[2] = __swift_coroFrameAllocStub(*(v7 + 64));
  NonEmpty.subscript.getter(a2, a3, v8, v9, v10, v11, v12, v13);
  return sub_1BF0FB920;
}

uint64_t NonEmpty<>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_14_18(a1, a2, a3, a4, a5, a6, a7, a8, v21);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_20();
  v9 = OUTLINED_FUNCTION_21_0();
  v11 = v10(v9);
  v19 = OUTLINED_FUNCTION_15_16(v11, v12, v13, v14, v15, v16, v17, v18, v22);
  return v8(v19);
}

uint64_t sub_1BF0FA110@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *(a1 + a2 - 8);
  v7 = type metadata accessor for NonEmpty(0, *(a1 + a2 - 16), *(v6 + 8), a3);
  v8 = NonEmpty<>.subscript.read(v13, a1, v7, v6);
  v10 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a4, v10, AssociatedTypeWitness);
  return (v8)(v13, 0);
}

void (*NonEmpty<>.subscript.read(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v6 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v6;
  v6[4] = *(a3 + 16);
  OUTLINED_FUNCTION_10_23();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[5] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_2_3();
  v9 = v8;
  v6[6] = v8;
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v6[7] = v11;
  OUTLINED_FUNCTION_2_3();
  v13 = v12;
  v6[8] = v12;
  v6[9] = __swift_coroFrameAllocStub(*(v14 + 64));
  (*(v13 + 16))();
  (*(v9 + 16))(v11, a2, AssociatedTypeWitness);
  v6[10] = sub_1BF17ABFC();
  return sub_1BF0FA3A0;
}

void sub_1BF0FA3A0()
{
  OUTLINED_FUNCTION_68_0();
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 40);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 32);
  v7 = OUTLINED_FUNCTION_16_14();
  v8(v7);
  (*(v5 + 8))(v2, v4);
  (*(v3 + 8))(v1, v6);
  free(v1);
  free(v2);
  OUTLINED_FUNCTION_55();

  free(v9);
}

uint64_t sub_1BF0FA444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 8);
  v7 = type metadata accessor for NonEmpty(0, *(a3 + a4 - 16), *(v6 + 8), a4);
  v8 = NonEmpty<>.subscript.modify(v13, a3, v7, v6);
  v10 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 24))(v10, a1, AssociatedTypeWitness);
  return (v8)(v13, 0);
}

void (*NonEmpty<>.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  v5 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v5;
  v5[4] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2_3();
  v7 = v6;
  v5[5] = v6;
  v5[6] = __swift_coroFrameAllocStub(*(v8 + 64));
  (*(v7 + 16))();
  v5[7] = sub_1BF17A03C();
  return sub_1BF0FA654;
}

{
  v6 = __swift_coroFrameAllocStub(0x68uLL);
  *a1 = v6;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6[8] = sub_1BF17AC8C();
  OUTLINED_FUNCTION_2_3();
  v8 = v7;
  v6[9] = v7;
  v6[10] = __swift_coroFrameAllocStub(*(v9 + 64));
  (*(v8 + 16))();
  v6[11] = NonEmpty.rawElements.modify(v6, a3);
  v6[12] = sub_1BF17A02C();
  return sub_1BF0FAC44;
}

void sub_1BF0FA654(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = OUTLINED_FUNCTION_16_14();
  v6(v5);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t NonEmpty<>.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1BF17A03C();
  v8 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = (*(v10 + 24))(v8, a1, AssociatedTypeWitness);
  v19 = OUTLINED_FUNCTION_15_16(v11, v12, v13, v14, v15, v16, v17, v18, v22);
  v6(v19);
  OUTLINED_FUNCTION_10_23();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_20();
  (*(v20 + 8))(a2);
  return (*(v10 + 8))(a1, AssociatedTypeWitness);
}

{
  v8 = *(a3 + 16);
  v9 = sub_1BF17A02C();
  v11 = v10;
  v12 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = (*(*(AssociatedTypeWitness - 8) + 24))(v11, a1, AssociatedTypeWitness);
  v22 = OUTLINED_FUNCTION_15_16(v14, v15, v16, v17, v18, v19, v20, v21, v27);
  v9(v22);
  sub_1BF0F946C(v4, v8, v12);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1BF17AC8C();
  OUTLINED_FUNCTION_20();
  (*(v23 + 8))(a2);
  v24 = OUTLINED_FUNCTION_21_0();
  return v25(v24);
}

uint64_t sub_1BF0FA820@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *(a1 + a2 - 8);
  v7 = type metadata accessor for NonEmpty(0, *(a1 + a2 - 16), *(v6 + 8), a3);
  v8 = NonEmpty<>.subscript.read(v13, a1, v7, v6);
  v10 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a4, v10, AssociatedTypeWitness);
  return (v8)(v13, 0);
}

void (*NonEmpty<>.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *)
{
  OUTLINED_FUNCTION_10_23();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v6 = *(AssociatedTypeWitness - 8);
  a1[1] = v6;
  a1[2] = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_21_0();
  sub_1BF17ABEC();
  return sub_1BF0FA9E4;
}

uint64_t sub_1BF0FA9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 8);
  v7 = type metadata accessor for NonEmpty(0, *(a3 + a4 - 16), *(v6 + 8), a4);
  v8 = NonEmpty<>.subscript.modify(v13, a3, v7, v6);
  v10 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 24))(v10, a1, AssociatedTypeWitness);
  return (v8)(v13, 0);
}

void sub_1BF0FAC44(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v6 = OUTLINED_FUNCTION_16_14();
  v2(v6);
  free(v3);

  free(v1);
}

uint64_t (*sub_1BF0FAE90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v8;
  v8[4] = NonEmpty<>.subscript.modify(v8, a2, a3, *(a4 - 8));
  return sub_1BF0FB924;
}

uint64_t (*sub_1BF0FAF14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v8;
  v8[4] = NonEmpty<>.subscript.modify(v8, a2, a3, *(a4 - 8));
  return sub_1BF0FAF90;
}

void sub_1BF0FAF94(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t NonEmpty<>.last.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = OUTLINED_FUNCTION_8_26(AssociatedTypeWitness);
  OUTLINED_FUNCTION_68(v3);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_1_51();
  sub_1BF179F6C();
  result = OUTLINED_FUNCTION_4_26();
  if (v7)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_20();
    v8 = OUTLINED_FUNCTION_5_28();
    return v9(v8);
  }

  return result;
}

uint64_t NonEmpty<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF17BBFC();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1BF17B95C();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t NonEmpty<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a4;
  v33 = a5;
  v9 = type metadata accessor for NonEmpty(255, a2, a3, a4);
  OUTLINED_FUNCTION_10_23();
  v10 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v32 = v11;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_62();
  v36 = a2;
  v34 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v37 = &v31 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = v42;
  sub_1BF17BBBC();
  if (!v21)
  {
    v31 = a3;
    v42 = a1;
    v22 = v34;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    sub_1BF17B8DC();
    (*(v22 + 16))(v17, v37, v36);
    NonEmpty.init(_:)();
    if (__swift_getEnumTagSinglePayload(v5, 1, v9) != 1)
    {
      (*(v22 + 8))(v37, v36);
      OUTLINED_FUNCTION_20();
      (*(v30 + 32))(v33, v5, v9);
      __swift_destroy_boxed_opaque_existential_1(v40);
      v28 = v42;
      return __swift_destroy_boxed_opaque_existential_1(v28);
    }

    (*(v32 + 8))(v5, v10);
    sub_1BF17B29C();
    swift_allocError();
    v24 = v23;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    sub_1BF17B88C();
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_1BF17B1EC();

    v38 = 0x6E6120646E756F46;
    v39 = 0xEF207974706D6520;
    v25 = v36;
    v26 = sub_1BF17BD4C();
    MEMORY[0x1BFB52000](v26);

    MEMORY[0x1BFB52000](0xD00000000000001ELL, 0x80000001BF18EBA0);
    sub_1BF17B27C();
    OUTLINED_FUNCTION_20();
    (*(v27 + 104))(v24);
    swift_willThrow();
    (*(v22 + 8))(v37, v25);
    __swift_destroy_boxed_opaque_existential_1(v40);
    a1 = v42;
  }

  v28 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_1BF0FB7D8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
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
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
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

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

uint64_t sub_1BF0FB930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1BF02693C(0, &qword_1ED8EF890, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v22 - v10;
  sub_1BF047B30(a3, v22 - v10);
  v12 = sub_1BF17A77C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1BF00CAB0(v11);
  }

  else
  {
    sub_1BF17A76C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1BF17A6AC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1BF17A16C() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1BF00CAB0(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BF00CAB0(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void (*sub_1BF0FBC04(unsigned __int8 a1))()
{
  v3 = *(v1 + 16);
  UnfairLock.lock()();
  if (*(v1 + 24))
  {
    v4 = nullsub_1;
  }

  else
  {
    *(v1 + 24) = 1;
    v4 = sub_1BF094408(a1, 0);
  }

  os_unfair_lock_unlock(*(v3 + 16));
  return v4;
}

uint64_t sub_1BF0FBC90(uint64_t a1, unint64_t a2)
{
  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_49_0();
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    *(v3 + 24) = 1;
    sub_1BF014DC0(a1, a2);
    v8 = sub_1BF094518(a1, a2, 0);
    sub_1BF014E18(a1, a2);
  }

  os_unfair_lock_unlock(*(v2 + 16));
  return v8;
}

void (*sub_1BF0FBD44(uint64_t a1))()
{
  sub_1BF09704C(0, qword_1ED8E9E18, type metadata accessor for AuthToken);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v11 - v5;
  v7 = *(v1 + 16);
  UnfairLock.lock()();
  if (*(v1 + 24))
  {
    v8 = nullsub_1;
  }

  else
  {
    *(v1 + 24) = 1;
    sub_1BF0A8AC8(a1, v6);
    swift_storeEnumTagMultiPayload();
    sub_1BF094660();
    v8 = v9;
    sub_1BF0967E8(v6, qword_1ED8E9E18, type metadata accessor for AuthToken);
  }

  os_unfair_lock_unlock(*(v7 + 16));
  return v8;
}

uint64_t sub_1BF0FBE7C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_49_0();
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    OUTLINED_FUNCTION_32_8();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v7 = sub_1BF094894(a1, a2, 0);
  }

  os_unfair_lock_unlock(*(v2 + 16));
  return v7;
}

uint64_t sub_1BF0FBF30(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_35_5();
  if ((*(v3 + 24) & 1) == 0)
  {
    *(v3 + 24) = 1;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF094B88(a1, a2, 0);
    OUTLINED_FUNCTION_31_9();
  }

  os_unfair_lock_unlock(*(v2 + 16));
  return OUTLINED_FUNCTION_6_5();
}

uint64_t sub_1BF0FBFC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), void (*a4)(void), void (*a5)(char *))
{
  sub_1BF09704C(0, a2, a3);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v18 - v13;
  v15 = *(v5 + 16);
  UnfairLock.lock()();
  if ((*(v5 + 24) & 1) == 0)
  {
    *(v5 + 24) = 1;
    a4(0);
    OUTLINED_FUNCTION_12();
    (*(v16 + 16))(v14, a1);
    swift_storeEnumTagMultiPayload();
    a5(v14);
    sub_1BF0967E8(v14, a2, a3);
  }

  os_unfair_lock_unlock(*(v15 + 16));
  return OUTLINED_FUNCTION_6_5();
}

uint64_t sub_1BF0FC174(uint64_t a1, uint64_t a2)
{
  sub_1BF02693C(0, &qword_1ED8EF890, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_1BF02693C(0, &unk_1EBDCC1E8, MEMORY[0x1E69E7E90], type metadata accessor for Promise);
  swift_allocObject();
  v8 = sub_1BF0FC724();
  v9 = sub_1BF17A77C();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v8;

  sub_1BF089AC0();

  return v8;
}

uint64_t sub_1BF0FC2FC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a6;
  v8 = sub_1BF17A6EC();
  v6[5] = v8;
  v6[6] = *(v8 - 8);
  v6[7] = swift_task_alloc();
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v6[8] = v9;
  *v9 = v6;
  v9[1] = sub_1BF0FC454;

  return v11(v6 + 2);
}

uint64_t sub_1BF0FC454()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 72) = v0;

  if (v0)
  {
    v7 = sub_1BF0FC5EC;
  }

  else
  {
    v7 = sub_1BF0FC550;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BF0FC550()
{
  OUTLINED_FUNCTION_5();
  v1 = sub_1BF050DB4(*(v0 + 16), sub_1BF094F8C);
  v1();

  OUTLINED_FUNCTION_9();

  return v2();
}

uint64_t sub_1BF0FC5EC()
{
  OUTLINED_FUNCTION_13_2();
  v1 = *(v0 + 72);
  *(v0 + 24) = v1;
  v2 = v1;
  sub_1BEFF3A00(0, &qword_1ED8EFD30, MEMORY[0x1E69E7280], 1);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 72);
  if (v3)
  {
    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    v7 = *(v0 + 40);

    v8 = sub_1BF099D60();
    v8();

    (*(v6 + 8))(v5, v7);
    v9 = *(v0 + 24);
  }

  else
  {

    v10 = sub_1BF08AF2C();
    v10();

    v9 = v4;
  }

  OUTLINED_FUNCTION_9();

  return v11();
}

uint64_t sub_1BF0FC724()
{
  v1 = v0;
  v4 = 0;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v2 = UnfairLock.init(options:)(&v4);
  sub_1BF02693C(0, &qword_1EBDCC1F8, MEMORY[0x1E69E7E90], type metadata accessor for Seal);
  swift_allocObject();
  *(v1 + 16) = sub_1BF034CD4(v2);
  return v1;
}

uint64_t sub_1BF0FC7D0(uint64_t a1, uint64_t a2)
{
  if (qword_1ED8F0210 != -1)
  {
    swift_once();
  }

  v3 = off_1ED8F0218;
  swift_retain_n();
  v4 = sub_1BF09D954(v3, sub_1BF10353C, a2, sub_1BF103540, a2, sub_1BF103544, a2);

  (v4)(v5);
}

void sub_1BF0FC8C0()
{
  v1 = *(v0 + 32);
  UnfairLock.lock()();
  if (*(v0 + 24))
  {

    sub_1BF09E144();

    *(v0 + 24) = 0;
  }

  v2 = *(v1 + 16);

  os_unfair_lock_unlock(v2);
}

void sub_1BF0FC930(uint64_t a1)
{
  v3 = *(v1 + 32);
  UnfairLock.lock()();
  if (*(v1 + 24))
  {

    sub_1BF09DF9C(a1);

    *(v1 + 24) = 0;
  }

  v4 = *(v3 + 16);

  os_unfair_lock_unlock(v4);
}

void sub_1BF0FC9D0(char a1)
{
  v3 = *(v1 + 32);
  UnfairLock.lock()();
  if (*(v1 + 24))
  {

    sub_1BF0FCE6C((a1 & 1));

    *(v1 + 24) = 0;
  }

  v4 = *(v3 + 16);

  os_unfair_lock_unlock(v4);
}

uint64_t sub_1BF0FCA48(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  sub_1BF032E20(0, &qword_1ED8EFB90, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF185520;
  *(inited + 32) = v4;

  *(inited + 40) = sub_1BF0FD23C(a1, a2, a3, a4);
  v10 = sub_1BF0FD3E4(inited);
  swift_setDeallocating();
  sub_1BF0C8344();
  return v10;
}

uint64_t sub_1BF0FCB20(void (*a1)(uint64_t))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_45_4(result);

    sub_1BF0FBC04(a1);
    OUTLINED_FUNCTION_44_2();

    a1(v3);
  }

  return result;
}

uint64_t sub_1BF0FCBE4(void (*a1)(uint64_t))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_45_4(result);

    sub_1BF0FBD44(a1);
    OUTLINED_FUNCTION_44_2();

    a1(v3);
  }

  return result;
}

uint64_t sub_1BF0FCC7C(uint64_t a1, void (*a2)(uint64_t))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_57_4(result);

    sub_1BF0FBE7C(a1, a2);
    OUTLINED_FUNCTION_26_8();

    a2(v5);
    return OUTLINED_FUNCTION_58_3();
  }

  return result;
}

uint64_t sub_1BF0FCD60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), void (*a4)(void), void (*a5)(char *))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_57_4(result);

    sub_1BF0FBFC8(a1, a2, a3, a4, a5);
    OUTLINED_FUNCTION_26_8();

    a5(v11);
    return OUTLINED_FUNCTION_58_3();
  }

  return result;
}

uint64_t sub_1BF0FCE6C(void (*a1)(uint64_t))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_45_4(result);

    sub_1BF0FC114(a1 & 1);
    OUTLINED_FUNCTION_44_2();

    a1(v3);
  }

  return result;
}

BOOL sub_1BF0FCF04(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_1BF0FCF34(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != (a1 & 1));
  return v4 != 0;
}

uint64_t sub_1BF0FCF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a6;
  v27 = a5;
  v12 = sub_1BF179B5C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BF179BBC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = a4;
  v22[4] = a7;
  v22[5] = a8;
  aBlock[4] = sub_1BF0BB6BC;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF0058CC;
  aBlock[3] = &block_descriptor_84;
  v23 = _Block_copy(aBlock);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  sub_1BF179B8C();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1BF0356E4(&unk_1ED8EFBF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1BF02693C(0, &qword_1ED8EFBE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1BF095E00();
  sub_1BF17B0BC();
  MEMORY[0x1BFB52B00](v26, v21, v16, v23);
  _Block_release(v23);
  (*(v13 + 8))(v16, v12);
  (*(v18 + 8))(v21, v17);
}

uint64_t sub_1BF0FD23C(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = sub_1BF179BEC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v20[-v14];
  sub_1BF179BDC();
  sub_1BF179C6C();
  v16 = *(v8 + 8);
  v16(v11, v7);
  v17 = sub_1BF04E824(a1);
  v21 = v17;
  v22 = v15;
  v23 = a2;
  v24 = a3;
  sub_1BF032E20(0, qword_1ED8EB080, &type metadata for BackgroundFetchResult, type metadata accessor for Promise);
  swift_allocObject();
  v18 = sub_1BF08A8D8(sub_1BF10354C, v20);

  v16(v15, v7);
  return v18;
}

uint64_t sub_1BF0FD3E4(uint64_t a1)
{
  v2 = sub_1BEFE90AC(a1);
  if (v2)
  {
    v3 = v2;
    sub_1BF032E20(0, &qword_1EBDCAB48, &type metadata for BackgroundFetchResult, type metadata accessor for OnlyOnceDeferredPromise);
    swift_allocObject();
    result = sub_1BF102B54();
    if (v3 < 1)
    {
      __break(1u);
    }

    else
    {
      v5 = result;
      for (i = 0; i != v3; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1BFB53020](i, a1);
        }

        else
        {
        }

        if (qword_1ED8F0210 != -1)
        {
          swift_once();
        }

        sub_1BF0FC7D0(off_1ED8F0218, v5);
      }

      result = swift_beginAccess();
      v7 = *(v5 + 16);
      if (v7)
      {

        return v7;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1BF095D40();
    v8 = swift_allocError();
    *v9 = xmmword_1BF184A50;
    *(v9 + 16) = 2;
    sub_1BF032E20(0, qword_1ED8EB080, &type metadata for BackgroundFetchResult, type metadata accessor for Promise);
    swift_allocObject();
    return sub_1BF0DAD5C(v8);
  }

  return result;
}

uint64_t BackgroundFetchResult.hashValue.getter()
{
  v1 = *v0;
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](v1);
  return sub_1BF17BB9C();
}

uint64_t BackgroundFetchTrigger.readableString.getter()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0x7266655220707041;
  }

  if (v1 == 1 || v1 == 2)
  {
    return 0x20676E697661654CLL;
  }

  MEMORY[0x1BFB52000](*v0);
  return 0x656C756465686353;
}

uint64_t BackgroundFetchTrigger.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1BF17BB6C();
  if (v1)
  {
    if (v1 == 1)
    {
      OUTLINED_FUNCTION_17_12();
    }

    else if (v1 == 2)
    {
      OUTLINED_FUNCTION_17_12();
    }

    else
    {
      OUTLINED_FUNCTION_50_3();
      sub_1BF179F3C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_51_3();
  }

  sub_1BF179F3C();
  return sub_1BF17BB9C();
}

TeaFoundation::BackgroundFetchConditions sub_1BF0FD814@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = BackgroundFetchConditions.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1BF0FD854@<X0>(uint64_t *a1@<X8>)
{
  result = BackgroundFetchConditions.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BF0FD8CC()
{
  sub_1BF032E20(0, qword_1ED8EB080, &type metadata for BackgroundFetchResult, type metadata accessor for Promise);
  swift_allocObject();
  return sub_1BF0AB134(0);
}

uint64_t BackgroundFetchWorker.performBackgroundFetch()(uint64_t a1)
{
  OUTLINED_FUNCTION_16_15(a1, qword_1ED8EB080, &type metadata for BackgroundFetchResult);
  swift_allocObject();
  return sub_1BF0AB134(0);
}

uint64_t BackgroundFetchWorker.performBackgroundFetch(trigger:conditions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 8))
  {
    OUTLINED_FUNCTION_16_15(a1, qword_1ED8EB080, &type metadata for BackgroundFetchResult);
    swift_allocObject();
    return sub_1BF0AB134(0);
  }

  else
  {
    v5 = *(a4 + 24);

    return v5(a3, a4);
  }
}

id BackgroundFetchManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BackgroundFetchManager.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager_disposableWorkers;
  sub_1BF026754(0);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *&v0[v2] = v3;
  *&v0[OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager_configuredTriggers] = MEMORY[0x1E69E7CD0];
  *(v3 + 16) = v4;
  v5 = OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager_networkReachability;
  if (qword_1ED8EB7C8 != -1)
  {
    OUTLINED_FUNCTION_18_9(&qword_1ED8EB7C8);
  }

  *&v0[v5] = qword_1ED8F5260;
  v6 = OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager_backgroundTaskSchedulingQueue;
  v7 = objc_allocWithZone(MEMORY[0x1E696ADC8]);

  v8 = [v7 init];
  *&v0[v6] = v8;
  *&v0[OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager____lazy_storage___locationManager] = 0;
  *&v0[OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager____lazy_storage___regionMonitor] = 0;
  *&v0[OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager_journal] = 0;
  [v8 setMaxConcurrentOperationCount_];
  v10.receiver = v0;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

void BackgroundFetchManager.__allocating_init(journal:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_66();
  BackgroundFetchManager.init(journal:)(v2);
}

uint64_t BackgroundFetchManager.performBackgroundFetch()()
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  return sub_1BF0FDBF4(v1);
}

uint64_t sub_1BF0FDBF4(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v3;
  v24 = *(a1 + 32);
  if (qword_1ED8EAEC8 != -1)
  {
    swift_once();
  }

  v4 = sub_1BF1797FC();
  __swift_project_value_buffer(v4, qword_1ED8F5248);
  sub_1BF02832C(v23, &v21);
  v5 = sub_1BF1797DC();
  v6 = sub_1BF17ACDC();
  sub_1BF0282E0(v23);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136446210;
    if (*(&v23[0] + 1))
    {
      if (*(&v23[0] + 1) == 2)
      {
        v9 = 0x20676E697661654CLL;
        v10 = 1802661719;
      }

      else
      {
        if (*(&v23[0] + 1) != 1)
        {
          v21 = 0x656C756465686353;
          v22 = 0xEB00000000203A64;
          MEMORY[0x1BFB52000](*&v23[0]);
          v9 = v21;
          v11 = v22;
          goto LABEL_12;
        }

        v9 = 0x20676E697661654CLL;
        v10 = 1701670728;
      }

      v11 = v10 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    }

    else
    {
      v9 = 0x7266655220707041;
      v11 = 0xEB00000000687365;
    }

LABEL_12:
    v12 = sub_1BF01A7AC(v9, v11, &v20);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1BEFE0000, v5, v6, "will perform background fetch for trigger: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1BFB547B0](v8, -1, -1);
    MEMORY[0x1BFB547B0](v7, -1, -1);
  }

  v13 = *(v2 + OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager_journal);
  if (v13)
  {
    v14 = sub_1BF17A07C();

    [v13 addEntryWithReason_];
  }

  sub_1BF0FE560(v2, v23);
  sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);
  v15 = sub_1BF17AD5C();
  sub_1BF09ABCC();

  v16 = sub_1BF17AD5C();
  sub_1BF08C5C8();

  if (*(&v23[0] + 1) > 2uLL)
  {
    v17 = 120.0;
  }

  else
  {
    v17 = dbl_1BF1859F0[*(&v23[0] + 1)];
  }

  if (qword_1ED8F0210 != -1)
  {
    swift_once();
  }

  v18 = sub_1BF0FCA48(off_1ED8F0218, 0, 0, v17);

  return v18;
}

uint64_t BackgroundFetchManager.performBackgroundFetch(trigger:)(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = v1;
  return sub_1BF0FDBF4(v4);
}

void BackgroundFetchManager.add(for:workerBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  OUTLINED_FUNCTION_53();
  a30 = v32;
  a31 = v33;
  v34 = v31;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v71 = v41;
  type metadata accessor for BlockBasedBackgroundFetchWorker();
  v42 = swift_allocObject();
  v42[2] = v40;
  v42[3] = v38;
  v42[4] = v36;
  v70 = type metadata accessor for DisposableWorker();
  v43 = swift_allocObject();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  v45 = sub_1BF102C88(v44, v43);
  *(v45 + 40) = v42;

  swift_unknownObjectRelease();
  swift_unknownObjectWeakAssign();
  v46 = *(v34 + OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager_disposableWorkers);

  os_unfair_lock_lock((v46 + 24));
  v69 = v45;
  sub_1BF028310((v46 + 16));
  os_unfair_lock_unlock((v46 + 24));

  v47 = v42[2];
  v50 = *(v47 + 56);
  v49 = v47 + 56;
  v48 = v50;
  v51 = 1 << *(v42[2] + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & v48;
  v54 = (v51 + 63) >> 6;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v55 = 0;
  if (v53)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v56 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      break;
    }

    if (v56 >= v54)
    {

      v71[3] = v70;
      v71[4] = &off_1F3DC1490;

      *v71 = v69;
      OUTLINED_FUNCTION_52_4();
      return;
    }

    v53 = *(v49 + 8 * v56);
    ++v55;
    if (v53)
    {
      v55 = v56;
      do
      {
LABEL_9:
        v53 &= v53 - 1;
        OUTLINED_FUNCTION_38_2();
        v58 = v57[1];
        v60 = v57[2];
        v59 = v57[3];
        v61 = v57[4];
        *&a15 = *v57;
        *(&a15 + 1) = v58;
        a16 = v60;
        a17 = v59;
        a18 = v61;
        v62 = OUTLINED_FUNCTION_40_3();
        sub_1BF027218(v62, v63, v64, v65, v66);
        sub_1BF02AFEC(&a15);
        v67 = OUTLINED_FUNCTION_40_3();
        sub_1BF03794C(v67, v68);
      }

      while (v53);
      continue;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall BackgroundFetchManager.rescheduleBackgroundTasks()()
{
  v1 = *(v0 + OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager_disposableWorkers);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = sub_1BEFE90AC(v2);
  v4 = 0;
  v33 = MEMORY[0x1E69E7CC0];
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1BFB53020](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    if (__OFADD__(v4, 1))
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      return;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      Strong = swift_unknownObjectWeakLoadStrong();
      v7 = *(v5 + 24);

      if (!Strong)
      {
        goto LABEL_15;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BF0A6B70();
        v33 = v10;
      }

      v8 = *(v33 + 16);
      if (v8 >= *(v33 + 24) >> 1)
      {
        sub_1BF0A6B70();
        v33 = v11;
      }

      *(v33 + 16) = v8 + 1;
      v9 = v33 + 16 * v8;
      *(v9 + 32) = Strong;
      *(v9 + 40) = v7;
      ++v4;
    }

    else
    {

LABEL_15:
      ++v4;
    }
  }

  os_unfair_lock_unlock((v1 + 24));

  v12 = v33;
  v32 = *(v33 + 16);
  if (v32)
  {
    v13 = 0;
    while (2)
    {
      if (v13 >= *(v12 + 16))
      {
        goto LABEL_38;
      }

      v34 = v13 + 1;
      v14 = *(v33 + 32 + 16 * v13 + 8);
      ObjectType = swift_getObjectType();
      v16 = *(v14 + 8);
      swift_unknownObjectRetain();
      v17 = v16(ObjectType, v14);
      v18 = 0;
      v19 = v17 + 56;
      v20 = 1 << *(v17 + 32);
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      else
      {
        v21 = -1;
      }

      v22 = v21 & *(v17 + 56);
      v23 = (v20 + 63) >> 6;
      v35 = v17;
      while (v22)
      {
LABEL_29:
        v25 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        v26 = (*(v17 + 48) + 40 * (v25 | (v18 << 6)));
        v27 = v26[1];
        if (v27 >= 3)
        {
          v29 = v26[3];
          v28 = v26[4];
          v30 = *v26;
          v36 = v26[2];
          _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

          sub_1BF037B48(v30, v27, &v36, v29, v28);
          sub_1BF03794C(v30, v27);
          v17 = v35;
        }
      }

      while (1)
      {
        v24 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
          goto LABEL_36;
        }

        if (v24 >= v23)
        {
          break;
        }

        v22 = *(v19 + 8 * v24);
        ++v18;
        if (v22)
        {
          v18 = v24;
          goto LABEL_29;
        }
      }

      swift_unknownObjectRelease();
      v12 = v33;
      v13 = v34;
      if (v34 != v32)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_94();
}

uint64_t sub_1BF0FE560(uint64_t a1, uint64_t a2)
{
  v13 = MEMORY[0x1E69E7CC0];
  sub_1BF0FE644(v11);
  v4 = *&v11[0];
  v5 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v5;
  v12 = *(a2 + 32);
  v10 = v4;
  sub_1BF02832C(a2, &v9);
  sub_1BF0FE93C(v11, &v10, a1, &v13, a2, v4);
  v6 = v13;
  if (qword_1ED8F0210 != -1)
  {
    swift_once();
  }

  v7 = sub_1BF09E768(off_1ED8F0218, v6);

  return v7;
}

uint64_t sub_1BF0FE644@<X0>(unint64_t *a1@<X8>)
{
  if (TFDrawingUnlimitedPower())
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  sub_1BF0370D4();
  v3 = sub_1BF0D1B00();

  v4 = v2 & 0xFFFFFFFFFFFFFFFELL | (v3 >> 2) & 1;
  sub_1BF0370D4();
  v5 = sub_1BF0D1B00();

  sub_1BF0370D4();
  v6 = sub_1BF0D1B00();

  *a1 = (v4 & 0xFFFFFFFFFFFFFFFBLL | (v5 >> 2) & 2 | (4 * (v6 & 1))) ^ 3;
  return result;
}

uint64_t sub_1BF0FE700(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (qword_1ED8EAEC8 != -1)
  {
    swift_once();
  }

  v10 = sub_1BF1797FC();
  __swift_project_value_buffer(v10, qword_1ED8F5248);
  swift_unknownObjectRetain();
  v11 = sub_1BF1797DC();
  v12 = sub_1BF17ACDC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21[0] = a1;
    v22 = v20;
    *&v23[0] = 0;
    *v13 = 136446210;
    *(&v23[0] + 1) = 0xE000000000000000;
    v21[1] = a2;
    sub_1BEFF3A00(0, &qword_1EBDCAB80, &protocol descriptor for BackgroundFetchWorker, 0);
    sub_1BF17B40C();
    v14 = a2;
    v15 = a5;
    v16 = sub_1BF01A7AC(*&v23[0], 0xE000000000000000, &v22);

    *(v13 + 4) = v16;
    a5 = v15;
    a2 = v14;
    _os_log_impl(&dword_1BEFE0000, v11, v12, "will trigger worker: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1BFB547B0](v20, -1, -1);
    MEMORY[0x1BFB547B0](v13, -1, -1);
  }

  ObjectType = swift_getObjectType();
  v18 = *(a4 + 16);
  v23[0] = *a4;
  v23[1] = v18;
  v24 = *(a4 + 32);
  v21[0] = a5;
  (*(a2 + 32))(v23, v21, ObjectType, a2);
  MEMORY[0x1BFB52290]();
  sub_1BF005F5C(*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10));
  return sub_1BF17A59C();
}

uint64_t sub_1BF0FE93C(__int128 *a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = a1[1];
  v38 = *a1;
  v39 = v7;
  v40 = *(a1 + 4);
  v32 = *a2;
  v8 = *(a3 + OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager_disposableWorkers);

  os_unfair_lock_lock((v8 + 24));
  sub_1BF0FF1D4((v8 + 16), v34);
  os_unfair_lock_unlock((v8 + 24));
  v9 = *&v34[0];

  v10 = *(v9 + 16);
  if (v10)
  {
    v31 = a5;
    for (i = 32; ; i += 16)
    {
      v33 = *(v9 + i);
      v12 = *(v9 + i);
      ObjectType = swift_getObjectType();
      v14 = *(*(&v33 + 1) + 8);
      swift_unknownObjectRetain();
      v15 = v14(ObjectType, *(&v33 + 1));
      v16 = sub_1BF028B1C(&v38, v15);

      if ((v16 & 1) == 0)
      {
        break;
      }

      v34[0] = v38;
      v34[1] = v39;
      v35 = v40;
      (*(*(&v33 + 1) + 16))(&v36, v34, ObjectType, *(&v33 + 1));
      if ((v36 & ~v32) != 0)
      {
        if (qword_1ED8EAEC8 != -1)
        {
          swift_once();
        }

        v24 = sub_1BF1797FC();
        __swift_project_value_buffer(v24, qword_1ED8F5248);
        swift_unknownObjectRetain();
        v18 = sub_1BF1797DC();
        v25 = sub_1BF17ACDC();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v18, v25))
        {
          v20 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v37[0] = v26;
          *v20 = 136446210;
          *&v34[0] = 0;
          *(&v34[0] + 1) = 0xE000000000000000;
          v36 = v33;
          sub_1BEFF3A00(0, &qword_1EBDCAB80, &protocol descriptor for BackgroundFetchWorker, 0);
          sub_1BF17B40C();
          v27 = sub_1BF01A7AC(*&v34[0], *(&v34[0] + 1), v37);

          *(v20 + 4) = v27;
          _os_log_impl(&dword_1BEFE0000, v18, v25, "skipping worker because its preconditions aren't satisfied, worker=%{public}s", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v26);
          v23 = v26;
LABEL_14:
          MEMORY[0x1BFB547B0](v23, -1, -1);
          MEMORY[0x1BFB547B0](v20, -1, -1);
        }

        goto LABEL_15;
      }

      sub_1BF0FE700(v12, *(&v33 + 1), a4, v31, a6);
      swift_unknownObjectRelease();
LABEL_16:
      if (!--v10)
      {

        return sub_1BF0282E0(v31);
      }
    }

    if (qword_1ED8EAEC8 != -1)
    {
      swift_once();
    }

    v17 = sub_1BF1797FC();
    __swift_project_value_buffer(v17, qword_1ED8F5248);
    swift_unknownObjectRetain();
    v18 = sub_1BF1797DC();
    v19 = sub_1BF17ACDC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v37[0] = v21;
      *v20 = 136446210;
      *&v34[0] = 0;
      *(&v34[0] + 1) = 0xE000000000000000;
      v36 = v33;
      sub_1BEFF3A00(0, &qword_1EBDCAB80, &protocol descriptor for BackgroundFetchWorker, 0);
      sub_1BF17B40C();
      v22 = sub_1BF01A7AC(*&v34[0], *(&v34[0] + 1), v37);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_1BEFE0000, v18, v19, "skipping worker because it hasn't requested this trigger, worker=%{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      v23 = v21;
      goto LABEL_14;
    }

LABEL_15:
    swift_unknownObjectRelease();

    goto LABEL_16;
  }

  return sub_1BF0282E0(a5);
}

void sub_1BF0FEDD4(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = sub_1BF0FCF34(1, *a1);
  if (qword_1ED8EAEC8 != -1)
  {
    swift_once();
  }

  v4 = sub_1BF1797FC();
  __swift_project_value_buffer(v4, qword_1ED8F5248);
  v5 = sub_1BF1797DC();
  v6 = sub_1BF17ACDC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136446210;
    BYTE8(v11) = 0;
    v9 = v3;
    *&v11 = v3;
    sub_1BF17B40C();
    v10 = sub_1BF01A7AC(*(&v11 + 1), 0xE000000000000000, &v12);

    *(v7 + 4) = v10;
    _os_log_impl(&dword_1BEFE0000, v5, v6, "successfully performed background fetch with result%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1BFB547B0](v8, -1, -1);
    MEMORY[0x1BFB547B0](v7, -1, -1);
  }

  else
  {

    v9 = v3;
  }

  *a2 = v9;
}

void sub_1BF0FEF80(void *a1)
{
  v2 = a1;
  sub_1BEFF3A00(0, &qword_1ED8EFD30, MEMORY[0x1E69E7280], 1);
  if (!swift_dynamicCast())
  {
LABEL_4:
    if (qword_1ED8EAEC8 != -1)
    {
      swift_once();
    }

    v3 = sub_1BF1797FC();
    __swift_project_value_buffer(v3, qword_1ED8F5248);
    v4 = a1;
    v5 = sub_1BF1797DC();
    v6 = sub_1BF17ACBC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138543362;
      v9 = a1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_1BEFE0000, v5, v6, "background fetch failed with error: %{public}@", v7, 0xCu);
      sub_1BF028EE0(v8, sub_1BF082F84);
      MEMORY[0x1BFB547B0](v8, -1, -1);
LABEL_8:
      MEMORY[0x1BFB547B0](v7, -1, -1);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if (v15)
  {
    sub_1BF08A4A8(v13, v14, v15);
    goto LABEL_4;
  }

  sub_1BF08A4A8(v13, v14, 0);
  if (qword_1ED8EAEC8 != -1)
  {
    swift_once();
  }

  v11 = sub_1BF1797FC();
  __swift_project_value_buffer(v11, qword_1ED8F5248);
  v5 = sub_1BF1797DC();
  v12 = sub_1BF17ACBC();
  if (os_log_type_enabled(v5, v12))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1BEFE0000, v5, v12, "background fetch timed out", v7, 2u);
    goto LABEL_8;
  }

LABEL_9:
}

void sub_1BF0FF1D4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v18 = MEMORY[0x1E69E7CC0];
  v4 = sub_1BEFE90AC(*a1);
  for (i = 0; v4 != i; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1BFB53020](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1BF17B32C();
      sub_1BF17B36C();
      sub_1BF17B37C();
      sub_1BF17B33C();
    }

    else
    {
    }
  }

  *a1 = v18;
  v6 = sub_1BEFE90AC(v18);
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (v6 != v7)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1BFB53020](v7, v18);
    }

    else
    {
      if (v7 >= *(v18 + 16))
      {
        goto LABEL_29;
      }

      v9 = *(v18 + 8 * v7 + 32);
    }

    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_28;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v12 = *(v9 + 24);

    ++v7;
    if (Strong)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BF0A6B70();
        v8 = v15;
      }

      v13 = *(v8 + 16);
      if (v13 >= *(v8 + 24) >> 1)
      {
        sub_1BF0A6B70();
        v8 = v16;
      }

      *(v8 + 16) = v13 + 1;
      v14 = v8 + 16 * v13;
      *(v14 + 32) = Strong;
      *(v14 + 40) = v12;
      v7 = v10;
    }
  }

  *a2 = v8;
}

uint64_t sub_1BF0FF3FC(uint64_t a1)
{
  sub_1BF100A9C();
  *(swift_allocObject() + 16) = a1;
  v2 = qword_1ED8F0210;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  if (v2 != -1)
  {
    swift_once();
  }

  sub_1BF09AE0C();
}

uint64_t sub_1BF0FF4CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1BEFF9AF8(0, &unk_1EBDCC210, 0x1E6999058);
    v4 = sub_1BF17A4DC();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_1BF0FF570(uint64_t a1, id a2, uint64_t a3, const char *a4, const char *a5, const char *a6)
{
  if (a2)
  {
    v8 = a2;
    if (qword_1ED8EAEC8 != -1)
    {
      OUTLINED_FUNCTION_0_63(&qword_1ED8EAEC8);
    }

    v9 = sub_1BF1797FC();
    __swift_project_value_buffer(v9, qword_1ED8F5248);
    v10 = OUTLINED_FUNCTION_66();
    oslog = sub_1BF1797DC();
    v11 = sub_1BF17ACBC();

    if (!os_log_type_enabled(oslog, v11))
    {

      OUTLINED_FUNCTION_55_4();

      goto LABEL_14;
    }

    v12 = OUTLINED_FUNCTION_70();
    v13 = OUTLINED_FUNCTION_83();
    *v12 = 138543362;
    v14 = a2;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_1BEFE0000, oslog, v11, a4, v12, 0xCu);
    OUTLINED_FUNCTION_2_47();
    sub_1BF028EE0(v13, v16);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_28();

LABEL_19:
    OUTLINED_FUNCTION_55_4();

LABEL_14:

    return;
  }

  if (!a1 || !sub_1BEFE90AC(a1))
  {
    if (qword_1ED8EAEC8 != -1)
    {
      OUTLINED_FUNCTION_0_63(&qword_1ED8EAEC8);
    }

    v26 = sub_1BF1797FC();
    __swift_project_value_buffer(v26, qword_1ED8F5248);
    osloga = sub_1BF1797DC();
    v27 = sub_1BF17ACDC();
    if (os_log_type_enabled(osloga, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1BEFE0000, osloga, v27, a6, v28, 2u);
      OUTLINED_FUNCTION_28();
    }

    goto LABEL_19;
  }

  if (qword_1ED8EAEC8 != -1)
  {
    OUTLINED_FUNCTION_0_63(&qword_1ED8EAEC8);
  }

  v20 = sub_1BF1797FC();
  __swift_project_value_buffer(v20, qword_1ED8F5248);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v21 = sub_1BF1797DC();
  v22 = sub_1BF17ACDC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_70();
    *v23 = 134217984;
    *(v23 + 4) = sub_1BEFE90AC(a1);

    _os_log_impl(&dword_1BEFE0000, v21, v22, a5, v23, 0xCu);
    OUTLINED_FUNCTION_24_10();
  }

  else
  {
  }

  sub_1BF0FF3FC(a1);
  OUTLINED_FUNCTION_55_4();
}

void *sub_1BF0FF870(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v25 = a7;
    v18 = *(a3 + 16);
    v26[0] = *a3;
    v26[1] = v18;
    v27 = *(a3 + 32);
    sub_1BF0FDBF4(v26);
    *(swift_allocObject() + 16) = a1;
    v19 = qword_1ED8F0210;
    v20 = a1;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = off_1ED8F0218;
    sub_1BF09AD04();

    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    v23 = v20;
    sub_1BEFF77FC(v21, sub_1BF10349C, v22);

    v24 = swift_allocObject();
    v24[2] = a2;
    v24[3] = a4;
    v24[4] = a5;
    v24[5] = a6;
    v24[6] = v25;
    v24[7] = a8;

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    sub_1BF08C66C(v21, sub_1BF1034B0, v24);
  }

  return result;
}

void *sub_1BF0FFA88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t))
{
  v9 = sub_1BF1794AC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v16 = a4;
    a5(result);
    sub_1BF0FFBC4(a2, a3, &v16, v13);

    return (*(v10 + 8))(v13, v9);
  }

  return result;
}

void sub_1BF0FFBC4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v57[1] = *MEMORY[0x1E69E9840];
  v8 = sub_1BF1794AC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v55 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v54 - v14;
  v56 = *a3;
  v16 = objc_opt_self();
  v17 = [v16 sharedScheduler];
  v18 = sub_1BF17A07C();
  [v17 cancelTaskRequestWithIdentifier_];

  sub_1BF1793CC();
  sub_1BF0356E4(&qword_1EBDCAEE0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  LOBYTE(v17) = sub_1BF17A05C();
  v19 = *(v9 + 8);
  v19(v15, v8);
  if (v17)
  {
    v20 = a1;
    if (qword_1ED8EAEC8 != -1)
    {
      swift_once();
    }

    v21 = sub_1BF1797FC();
    __swift_project_value_buffer(v21, qword_1ED8F5248);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v22 = sub_1BF1797DC();
    v23 = sub_1BF17ACDC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v57[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_1BF01A7AC(v20, a2, v57);
      _os_log_impl(&dword_1BEFE0000, v22, v23, "will not schedule task request for %{public}s in distant future", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1BFB547B0](v25, -1, -1);
      MEMORY[0x1BFB547B0](v24, -1, -1);
    }

    goto LABEL_15;
  }

  sub_1BEFF9AF8(0, &unk_1EBDCC1C8, 0x1E695A9D0);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v54 = a1;
  v26 = sub_1BF100930(a1, a2);
  v27 = sub_1BF1793FC();
  [v26 setEarliestBeginDate_];

  [v26 setRequiresNetworkConnectivity_];
  [v26 setRequiresExternalPower_];
  v28 = [v16 sharedScheduler];
  v57[0] = 0;
  v29 = [v28 submitTaskRequest:v26 error:v57];

  if (v29)
  {
    v30 = qword_1ED8EAEC8;
    v31 = v57[0];
    if (v30 != -1)
    {
      swift_once();
    }

    v32 = sub_1BF1797FC();
    __swift_project_value_buffer(v32, qword_1ED8F5248);
    v33 = v55;
    (*(v9 + 16))(v55, a4, v8);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v34 = sub_1BF1797DC();
    v35 = sub_1BF17ACDC();

    v36 = os_log_type_enabled(v34, v35);
    v37 = v54;
    if (v36)
    {
      v38 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v57[0] = v56;
      *v38 = 136446466;
      *(v38 + 4) = sub_1BF01A7AC(v37, a2, v57);
      *(v38 + 12) = 2082;
      sub_1BF0356E4(&qword_1EBDCC1C0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v39 = sub_1BF17B6FC();
      v41 = v40;
      v19(v33, v8);
      v42 = sub_1BF01A7AC(v39, v41, v57);

      *(v38 + 14) = v42;
      _os_log_impl(&dword_1BEFE0000, v34, v35, "successfully scheduled task request for %{public}s at %{public}s", v38, 0x16u);
      v43 = v56;
      swift_arrayDestroy();
      MEMORY[0x1BFB547B0](v43, -1, -1);
      MEMORY[0x1BFB547B0](v38, -1, -1);
    }

    else
    {

      v19(v33, v8);
    }
  }

  else
  {
    v44 = v57[0];
    v45 = sub_1BF17911C();

    swift_willThrow();
    if (qword_1ED8EAEC8 != -1)
    {
      swift_once();
    }

    v46 = sub_1BF1797FC();
    __swift_project_value_buffer(v46, qword_1ED8F5248);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v47 = v45;
    v22 = sub_1BF1797DC();
    v48 = sub_1BF17ACBC();

    if (os_log_type_enabled(v22, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v57[0] = v51;
      *v49 = 136446466;
      *(v49 + 4) = sub_1BF01A7AC(v54, a2, v57);
      *(v49 + 12) = 2114;
      v52 = v45;
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 14) = v53;
      *v50 = v53;
      _os_log_impl(&dword_1BEFE0000, v22, v48, "failed to schedule task request for  %{public}s with error: %{public}@", v49, 0x16u);
      sub_1BF028EE0(v50, sub_1BF082F84);
      MEMORY[0x1BFB547B0](v50, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v51);
      MEMORY[0x1BFB547B0](v51, -1, -1);
      MEMORY[0x1BFB547B0](v49, -1, -1);

LABEL_15:
      return;
    }
  }
}

void sub_1BF10034C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1BF1003B4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v55 = a7;
  v56 = a8;
  v57 = a6;
  v59 = a3;
  v60 = a2;
  v63 = sub_1BF1794AC();
  v58 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63, v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v64 = &v55 - v17;
  v66 = a1;
  v18 = sub_1BEFE90AC(a1);
  if (!v18)
  {
LABEL_19:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v36 = v60;
    if (Strong)
    {
      v37 = Strong;
      v67 = v55;
      sub_1BF0FFBC4(a4, a5, &v67, v56);
    }

    return v36();
  }

  v19 = v18;
  v20 = 0;
  v65 = v66 & 0xC000000000000001;
  v61 = v66 & 0xFFFFFFFFFFFFFF8;
  v62 = (v58 + 8);
  while (1)
  {
    if (v65)
    {
      v21 = MEMORY[0x1BFB53020](v20, v66);
    }

    else
    {
      if (v20 >= *(v61 + 16))
      {
        goto LABEL_28;
      }

      v21 = *(v66 + 8 * v20 + 32);
    }

    v8 = v21;
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v23 = a5;
    v24 = a4;
    v25 = [v21 identifier];
    v26 = sub_1BF17A0AC();
    v28 = v27;

    a4 = v24;
    a5 = v23;
    if (v26 == a4 && v28 == v23)
    {
    }

    else
    {
      v30 = sub_1BF17B86C();

      if ((v30 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v31 = [v8 earliestBeginDate];
    if (v31)
    {
      break;
    }

LABEL_18:

    ++v20;
    if (v22 == v19)
    {
      goto LABEL_19;
    }
  }

  v32 = v31;
  v33 = v64;
  sub_1BF17945C();

  sub_1BF17942C();
  if (v34 >= 86400.0)
  {
    (*v62)(v33, v63);
    goto LABEL_18;
  }

  if (qword_1ED8EAEC8 == -1)
  {
    goto LABEL_22;
  }

LABEL_29:
  swift_once();
LABEL_22:
  v38 = sub_1BF1797FC();
  __swift_project_value_buffer(v38, qword_1ED8F5248);
  v39 = v14;
  v40 = v14;
  v41 = v63;
  v42 = v64;
  (*(v58 + 16))(v40, v64, v63);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v43 = sub_1BF1797DC();
  v44 = sub_1BF17ACDC();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v68[0] = v66;
    *v45 = 136446466;
    *(v45 + 4) = sub_1BF01A7AC(a4, a5, v68);
    *(v45 + 12) = 2082;
    sub_1BF0356E4(&qword_1EBDCC1C0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v46 = sub_1BF17B6FC();
    v48 = v47;
    v49 = v41;
    v50 = *v62;
    (*v62)(v39, v49);
    v51 = sub_1BF01A7AC(v46, v48, v68);

    *(v45 + 14) = v51;
    _os_log_impl(&dword_1BEFE0000, v43, v44, "found existing task request for %{public}s, scheduledDate=%{public}s", v45, 0x16u);
    v52 = v66;
    swift_arrayDestroy();
    MEMORY[0x1BFB547B0](v52, -1, -1);
    MEMORY[0x1BFB547B0](v45, -1, -1);

    v50(v64, v49);
  }

  else
  {

    v53 = *v62;
    (*v62)(v39, v41);
    v53(v42, v41);
  }

  v36 = v60;
  return v36();
}

uint64_t sub_1BF1008AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1BEFF9AF8(0, &qword_1EBDCC1B8, 0x1E695A9E0);
  v3 = sub_1BF17A4DC();

  v2(v3);
}

id sub_1BF100930(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1BF17A07C();

  v4 = [v2 initWithIdentifier_];

  return v4;
}

id sub_1BF1009A4()
{
  v1 = OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager____lazy_storage___locationManager;
  v2 = *(v0 + OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager____lazy_storage___locationManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager____lazy_storage___locationManager);
  }

  else
  {
    v4 = sub_1BF100A08(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BF100A08(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695FBE8]) init];
  [v2 setDelegate_];
  [v2 setDesiredAccuracy_];
  [v2 setAllowsBackgroundLocationUpdates_];
  [v2 setPausesLocationUpdatesAutomatically_];
  return v2;
}

uint64_t sub_1BF100A9C()
{
  v1 = OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager____lazy_storage___regionMonitor;
  if (*&v0[OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager____lazy_storage___regionMonitor])
  {
    v2 = *&v0[OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager____lazy_storage___regionMonitor];
  }

  else
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v4 = v0;
    v2 = sub_1BF0FC174(&unk_1BF1859C0, v3);
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_1BF100B38(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1BF17978C();
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1BF100BF0;

  return MEMORY[0x1EEE6C3E8](0xD000000000000019, 0x80000001BF18EE60);
}

uint64_t sub_1BF100BF0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 40) = v3;

  v4 = OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BF100CD8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  sub_1BF100D4C(v1);
  *v2 = v1;
  OUTLINED_FUNCTION_9();

  return v3();
}

uint64_t sub_1BF100D4C(uint64_t a1)
{
  sub_1BF02693C(0, &qword_1ED8EF890, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = sub_1BF17A77C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = v1;

  v9 = v1;
  sub_1BF0FB930(0, 0, v6, &unk_1BF1859E0, v8);
}

void sub_1BF100E5C(uint64_t *a1, uint64_t a2)
{
  v36 = sub_1BF1796FC();
  v5 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF02693C(0, &qword_1ED8EF890, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v31 - v11;
  v13 = *a1;
  v37 = a2;
  v14 = sub_1BEFE90AC(a2);
  v15 = MEMORY[0x1E69E7CC0];
  if (!v14)
  {
LABEL_11:
    v29 = sub_1BF17A77C();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v29);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v15;
    v30[5] = v13;

    sub_1BF089AC0();

    return;
  }

  v16 = v14;
  v38 = MEMORY[0x1E69E7CC0];
  sub_1BF070768(0, v14 & ~(v14 >> 63), 0);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v31 = v13;
    v32 = v12;
    v17 = 0;
    v15 = v38;
    v35 = v37 & 0xC000000000000001;
    v33 = v2;
    v34 = v5 + 32;
    v18 = v16;
    do
    {
      if (v35)
      {
        v19 = MEMORY[0x1BFB53020](v17, v37);
      }

      else
      {
        v19 = *(v37 + 8 * v17 + 32);
      }

      v20 = v19;
      v21 = [v19 location];
      [v21 latitude];
      v23 = v22;

      v24 = [v20 location];
      [v24 longitude];
      v26 = v25;

      CLLocationCoordinate2DMake(v23, v26);
      sub_1BF1796EC();

      v38 = v15;
      v28 = *(v15 + 16);
      v27 = *(v15 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1BF070768(v27 > 1, v28 + 1, 1);
        v15 = v38;
      }

      ++v17;
      *(v15 + 16) = v28 + 1;
      (*(v5 + 32))(v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v28, v8, v36);
    }

    while (v18 != v17);
    v12 = v32;
    v13 = v31;
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_1BF1011A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1BF1011C4, 0, 0);
}

uint64_t sub_1BF1011C4()
{
  OUTLINED_FUNCTION_13_2();
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  *(v0 + 72) = v2;
  if (v2)
  {
    v3 = sub_1BF1796FC();
    *(v0 + 80) = v3;
    OUTLINED_FUNCTION_1();
    v5 = v4;
    *(v0 + 88) = v4;
    v6 = *(v4 + 80);
    *(v0 + 112) = v6;
    v7 = (v6 + 32) & ~v6;
    *(v0 + 96) = *(v8 + 72);
    *(v0 + 104) = 0;
    *(v0 + 40) = v9;
    OUTLINED_FUNCTION_13_18();
    *(v0 + 48) = sub_1BF0356E4(v10, v11, MEMORY[0x1E69E7E68]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
    (*(v5 + 16))(boxed_opaque_existential_0, v1 + v7, v3);
    sub_1BF17978C();
    OUTLINED_FUNCTION_12_19();
    sub_1BF0356E4(v13, v14, MEMORY[0x1E69E7E98]);
    sub_1BF17A6AC();
    v15 = OUTLINED_FUNCTION_10_24();

    return MEMORY[0x1EEE6DFA0](v15, v16, v17);
  }

  else
  {
    OUTLINED_FUNCTION_9();

    return v18();
  }
}

uint64_t sub_1BF101350()
{
  OUTLINED_FUNCTION_5();
  sub_1BF17970C();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1BF1013D0()
{
  v1 = *(v0 + 104) + 1;
  if (v1 == *(v0 + 72))
  {
    OUTLINED_FUNCTION_9();

    return v2();
  }

  else
  {
    *(v0 + 104) = v1;
    v4 = *(v0 + 88);
    v5 = *(v0 + 80);
    v6 = *(v0 + 56) + ((*(v0 + 112) + 32) & ~*(v0 + 112)) + *(v0 + 96) * v1;
    *(v0 + 40) = v5;
    OUTLINED_FUNCTION_13_18();
    *(v0 + 48) = sub_1BF0356E4(v7, v8, MEMORY[0x1E69E7E68]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
    (*(v4 + 16))(boxed_opaque_existential_0, v6, v5);
    sub_1BF17978C();
    OUTLINED_FUNCTION_12_19();
    sub_1BF0356E4(v10, v11, MEMORY[0x1E69E7E98]);
    sub_1BF17A6AC();
    v12 = OUTLINED_FUNCTION_10_24();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }
}

uint64_t sub_1BF101514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v6 = sub_1BF17973C();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  sub_1BF02693C(0, &qword_1EBDCC200, MEMORY[0x1E69E7E78], MEMORY[0x1E69E6720]);
  v5[24] = swift_task_alloc();
  v7 = sub_1BF17976C();
  v5[25] = v7;
  v5[26] = *(v7 - 8);
  v5[27] = swift_task_alloc();
  v8 = sub_1BF17975C();
  v5[28] = v8;
  v5[29] = *(v8 - 8);
  v5[30] = swift_task_alloc();
  sub_1BF17978C();
  sub_1BF0356E4(&qword_1EBDCC1E0, MEMORY[0x1E69E7E90], MEMORY[0x1E69E7E98]);
  v10 = sub_1BF17A6AC();

  return MEMORY[0x1EEE6DFA0](sub_1BF101770, v10, v9);
}

uint64_t sub_1BF101770()
{
  OUTLINED_FUNCTION_5();
  sub_1BF17977C();
  v0 = OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1BF1017D0()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  sub_1BF17974C();
  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_14_19();
  sub_1BF0356E4(v4, v5, MEMORY[0x1E69E7E88]);
  v6 = swift_task_alloc();
  v0[31] = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_8_27(v6);

  return MEMORY[0x1EEE6D8C8](v7);
}

uint64_t sub_1BF1018A0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 256) = v0;

  if (v0)
  {
    v7 = sub_1BF1020B0;
  }

  else
  {
    v7 = sub_1BF10199C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BF10199C()
{
  v2 = *(v0 + 192);
  v3 = *(v0 + 136);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));

    OUTLINED_FUNCTION_9();

    return v4();
  }

  else
  {
    (*(*(v0 + 144) + 32))(*(v0 + 184), v2, v3);
    if (sub_1BF17972C() == 2)
    {
      if (qword_1ED8EAEC8 != -1)
      {
        OUTLINED_FUNCTION_0_63(&qword_1ED8EAEC8);
      }

      v6 = *(v0 + 184);
      v7 = *(v0 + 168);
      v8 = *(v0 + 136);
      v9 = sub_1BF1797FC();
      __swift_project_value_buffer(v9, qword_1ED8F5248);
      v10 = OUTLINED_FUNCTION_37_3();
      v1(v10);
      (v1)(v7, v6, v8);
      v11 = sub_1BF1797DC();
      v12 = sub_1BF17ACDC();
      v13 = os_log_type_enabled(v11, v12);
      v15 = *(v0 + 168);
      v14 = *(v0 + 176);
      v17 = *(v0 + 136);
      v16 = *(v0 + 144);
      if (v13)
      {
        v18 = swift_slowAlloc();
        *(v0 + 112) = swift_slowAlloc();
        *v18 = 136446466;
        v83 = v12;
        v19 = sub_1BF17971C();
        v21 = v20;
        v22 = *(v16 + 8);
        v22(v14, v17);
        v23 = sub_1BF01A7AC(v19, v21, (v0 + 112));

        *(v18 + 4) = v23;
        *(v18 + 12) = 2082;
        sub_1BF17972C();
        OUTLINED_FUNCTION_7_26();
        v31 = v30 | 0x6673697461730000;
        if (v32)
        {
          v25 = 0xEB00000000646569;
        }

        else
        {
          v31 = 0x6E776F6E6B6E55;
        }

        if (v24 == 3)
        {
          v25 = v29;
        }

        else
        {
          v28 = v31;
        }

        if (v24 == 1)
        {
          v33 = v26;
        }

        else
        {
          v33 = v28;
        }

        if (v24 == 1)
        {
          v34 = v27;
        }

        else
        {
          v34 = v25;
        }

        v22(*(v0 + 168), *(v0 + 136));
        v35 = sub_1BF01A7AC(v33, v34, (v0 + 112));

        *(v18 + 14) = v35;
        _os_log_impl(&dword_1BEFE0000, v11, v83, "processing region event, id=%{public}s, state=%{public}s", v18, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_24_10();
      }

      else
      {

        v22 = *(v16 + 8);
        v22(v15, v17);
        v22(v14, v17);
      }

      v64 = sub_1BF17971C();
      v66 = OUTLINED_FUNCTION_34_4(v64, v65);

      if (v66)
      {
        *(v0 + 56) = xmmword_1BF185530;
        *(v0 + 80) = 0;
        *(v0 + 88) = 0;
        *(v0 + 72) = 0;
        sub_1BF0FDBF4(v0 + 56);
      }

      v67 = sub_1BF17971C();
      v69 = OUTLINED_FUNCTION_34_4(v67, v68);

      v70 = *(v0 + 184);
      v71 = *(v0 + 136);
      if (v69)
      {
        *(v0 + 16) = xmmword_1BF185540;
        *(v0 + 40) = 0;
        *(v0 + 48) = 0;
        *(v0 + 32) = 0;
        sub_1BF0FDBF4(v0 + 16);

        v22(v70, v71);
      }

      else
      {
        v22(*(v0 + 184), *(v0 + 136));
      }
    }

    else
    {
      if (qword_1ED8EAEC8 != -1)
      {
        OUTLINED_FUNCTION_0_63(&qword_1ED8EAEC8);
      }

      v36 = *(v0 + 184);
      v37 = *(v0 + 152);
      v38 = *(v0 + 136);
      v39 = sub_1BF1797FC();
      __swift_project_value_buffer(v39, qword_1ED8F5248);
      v40 = OUTLINED_FUNCTION_37_3();
      v1(v40);
      (v1)(v37, v36, v38);
      v41 = sub_1BF1797DC();
      v42 = sub_1BF17ACDC();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = *(v0 + 160);
        v45 = *(v0 + 136);
        v44 = *(v0 + 144);
        v46 = swift_slowAlloc();
        *(v0 + 104) = swift_slowAlloc();
        *v46 = 136446466;
        v47 = sub_1BF17971C();
        v49 = v48;
        v82 = *(v44 + 8);
        v82(v43, v45);
        v50 = sub_1BF01A7AC(v47, v49, (v0 + 104));

        *(v46 + 4) = v50;
        *(v46 + 12) = 2082;
        sub_1BF17972C();
        OUTLINED_FUNCTION_7_26();
        v58 = v57 | 0x6673697461730000;
        if (v32)
        {
          v52 = 0xEB00000000646569;
        }

        else
        {
          v58 = 0x6E776F6E6B6E55;
        }

        if (v51 == 3)
        {
          v52 = v56;
        }

        else
        {
          v55 = v58;
        }

        if (v51 == 1)
        {
          v59 = v53;
        }

        else
        {
          v59 = v55;
        }

        if (v51 == 1)
        {
          v60 = v54;
        }

        else
        {
          v60 = v52;
        }

        v61 = *(v0 + 184);
        v62 = *(v0 + 136);
        v82(*(v0 + 152), v62);
        v63 = sub_1BF01A7AC(v59, v60, (v0 + 104));

        *(v46 + 14) = v63;
        _os_log_impl(&dword_1BEFE0000, v41, v42, "ignoring region event, id=%{public}s, state=%{public}s", v46, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_24_10();
        OUTLINED_FUNCTION_28();

        v82(v61, v62);
      }

      else
      {
        v72 = *(v0 + 184);
        v74 = *(v0 + 152);
        v73 = *(v0 + 160);
        v75 = *(v0 + 136);
        v76 = *(v0 + 144);

        v77 = *(v76 + 8);
        v77(v74, v75);
        v77(v73, v75);
        v77(v72, v75);
      }
    }

    OUTLINED_FUNCTION_14_19();
    sub_1BF0356E4(v78, v79, MEMORY[0x1E69E7E88]);
    v80 = swift_task_alloc();
    *(v0 + 248) = v80;
    *v80 = v0;
    v81 = OUTLINED_FUNCTION_8_27(v80);

    return MEMORY[0x1EEE6D8C8](v81);
  }
}

uint64_t sub_1BF1020B0()
{
  OUTLINED_FUNCTION_5();
  *(v0 + 96) = *(v0 + 256);
  sub_1BEFF3A00(0, &qword_1ED8EFD30, MEMORY[0x1E69E7280], 1);
  swift_willThrowTypedImpl();
  v1 = OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1BF102140()
{
  (*(v0[29] + 8))(v0[30], v0[28]);

  OUTLINED_FUNCTION_9();

  return v1();
}

uint64_t CLMonitoringState.readableString.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E55;
  if (a1 == 2)
  {
    v1 = 0x6673697461736E55;
  }

  if (a1 == 3)
  {
    v1 = 0x6F74696E6F6D6E55;
  }

  if (a1 == 1)
  {
    return 0x6569667369746153;
  }

  else
  {
    return v1;
  }
}

id BackgroundFetchManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall BackgroundFetchManager.locationManager(_:didStartMonitoringFor:)(CLLocationManager _, CLRegion didStartMonitoringFor)
{
  internal = _._internal;
  v3 = [_._internal identifier];
  sub_1BF17A0AC();

  OUTLINED_FUNCTION_6_32();
  LOBYTE(v3) = sub_1BF17A2AC();

  if (v3)
  {
    if (qword_1ED8EAEC8 != -1)
    {
      OUTLINED_FUNCTION_0_63(&qword_1ED8EAEC8);
    }

    v4 = sub_1BF1797FC();
    __swift_project_value_buffer(v4, qword_1ED8F5248);
    v5 = sub_1BF1797DC();
    v6 = sub_1BF17ACDC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1BEFE0000, v5, v6, "successfully setup monitoring for Home region", v7, 2u);
      OUTLINED_FUNCTION_28();
    }
  }

  v8 = [internal identifier];
  sub_1BF17A0AC();
  OUTLINED_FUNCTION_49_4();

  OUTLINED_FUNCTION_6_32();
  LOBYTE(v8) = sub_1BF17A2AC();

  if (v8)
  {
    if (qword_1ED8EAEC8 != -1)
    {
      OUTLINED_FUNCTION_0_63(&qword_1ED8EAEC8);
    }

    v9 = sub_1BF1797FC();
    __swift_project_value_buffer(v9, qword_1ED8F5248);
    oslog = sub_1BF1797DC();
    v10 = sub_1BF17ACDC();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1BEFE0000, oslog, v10, "successfully setup monitoring for Work region", v11, 2u);
      OUTLINED_FUNCTION_28();
    }
  }
}

void BackgroundFetchManager.locationManager(_:monitoringDidFailFor:withError:)(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    v60 = a2;
    v4 = [v60 identifier];
    sub_1BF17A0AC();

    OUTLINED_FUNCTION_6_32();
    LOBYTE(v4) = sub_1BF17A2AC();

    if (v4)
    {
      if (qword_1ED8EAEC8 != -1)
      {
        OUTLINED_FUNCTION_0_63(&qword_1ED8EAEC8);
      }

      v5 = sub_1BF1797FC();
      __swift_project_value_buffer(v5, qword_1ED8F5248);
      v6 = OUTLINED_FUNCTION_66();
      v7 = sub_1BF1797DC();
      v8 = sub_1BF17ACBC();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = OUTLINED_FUNCTION_70();
        v10 = OUTLINED_FUNCTION_83();
        *v9 = 138543362;
        v11 = a3;
        v12 = _swift_stdlib_bridgeErrorToNSError();
        *(v9 + 4) = v12;
        *v10 = v12;
        OUTLINED_FUNCTION_56_3(&dword_1BEFE0000, v13, v14, "failed to setup monitoring for Home region with error: %{public}@");
        OUTLINED_FUNCTION_2_47();
        sub_1BF028EE0(v10, v15);
        OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_24_10();
      }

      OUTLINED_FUNCTION_43_3(xmmword_1BF185530, v16, v17, v18, v19, v20, v21, v22, v23, v24, v59, v60, v25, v63, v64, v65);
    }

    v26 = [v60 identifier];
    sub_1BF17A0AC();

    OUTLINED_FUNCTION_6_32();
    LOBYTE(v26) = sub_1BF17A2AC();

    if (v26)
    {
      if (qword_1ED8EAEC8 != -1)
      {
        OUTLINED_FUNCTION_0_63(&qword_1ED8EAEC8);
      }

      v27 = sub_1BF1797FC();
      __swift_project_value_buffer(v27, qword_1ED8F5248);
      v28 = OUTLINED_FUNCTION_66();
      v29 = sub_1BF1797DC();
      v30 = sub_1BF17ACBC();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = OUTLINED_FUNCTION_70();
        v32 = OUTLINED_FUNCTION_83();
        *v31 = 138543362;
        v33 = a3;
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v31 + 4) = v34;
        *v32 = v34;
        OUTLINED_FUNCTION_56_3(&dword_1BEFE0000, v35, v36, "failed to setup monitoring for Work region with error: %{public}@");
        OUTLINED_FUNCTION_2_47();
        sub_1BF028EE0(v32, v37);
        OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_24_10();
      }

      OUTLINED_FUNCTION_43_3(xmmword_1BF185540, v38, v39, v40, v41, v42, v43, v44, v45, v46, v59, v60, v47, v63, v64, v65);
      OUTLINED_FUNCTION_94();

      return;
    }
  }

  else
  {
    if (qword_1ED8EAEC8 != -1)
    {
      OUTLINED_FUNCTION_0_63(&qword_1ED8EAEC8);
    }

    v49 = sub_1BF1797FC();
    __swift_project_value_buffer(v49, qword_1ED8F5248);
    v50 = OUTLINED_FUNCTION_66();
    v62 = sub_1BF1797DC();
    v51 = sub_1BF17ACBC();

    if (os_log_type_enabled(v62, v51))
    {
      v52 = OUTLINED_FUNCTION_70();
      v53 = OUTLINED_FUNCTION_83();
      *v52 = 138543362;
      v54 = a3;
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 4) = v55;
      *v53 = v55;
      _os_log_impl(&dword_1BEFE0000, v62, v51, "failed to setup monitoring for unknown region with error: %{public}@", v52, 0xCu);
      OUTLINED_FUNCTION_2_47();
      sub_1BF028EE0(v53, v56);
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_28();
    }
  }

  OUTLINED_FUNCTION_94();
}

uint64_t sub_1BF102A60()
{

  return v0;
}

uint64_t sub_1BF102A88()
{
  v0 = sub_1BF102A60();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1BF102AF4()
{
  sub_1BF042FB8(v0 + 16);
  sub_1BF042FB8(v0 + 32);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1BF102B24()
{
  v0 = sub_1BF102AF4();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1BF102B54()
{
  v1 = v0;
  v0[3] = 0;
  v0[2] = 0;
  v2 = v0 + 2;
  *v7 = 0;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v0[4] = UnfairLock.init(options:)(v7);
  *v7 = 0;
  swift_allocObject();
  v3 = UnfairLock.init(options:)(v7);
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  sub_1BF032E20(0, qword_1ED8EB080, &type metadata for BackgroundFetchResult, type metadata accessor for Promise);
  v4 = swift_allocObject();
  swift_unownedRetain();
  v5 = sub_1BF097A08(v3, v4, v1);
  swift_unownedRelease();
  swift_unownedRelease();
  swift_beginAccess();
  *v2 = v5;

  return v1;
}

uint64_t sub_1BF102C88(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(a2 + 40) = 0;
  *(a2 + 24) = &off_1F3DC1468;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();

  return a2;
}

unint64_t sub_1BF102D24()
{
  result = qword_1EBDCC118;
  if (!qword_1EBDCC118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC118);
  }

  return result;
}

unint64_t sub_1BF102D7C()
{
  result = qword_1EBDCC120;
  if (!qword_1EBDCC120)
  {
    sub_1BF032E20(255, &unk_1EBDCC128, &type metadata for BackgroundFetchTrigger, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC120);
  }

  return result;
}

unint64_t sub_1BF102DFC()
{
  result = qword_1EBDCC138;
  if (!qword_1EBDCC138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC138);
  }

  return result;
}

unint64_t sub_1BF102E54()
{
  result = qword_1EBDCC140;
  if (!qword_1EBDCC140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC140);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BackgroundFetchResult(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BF102F74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 40))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1BF102FD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1BF1030D0(uint64_t a1)
{
  v3 = *(sub_1BF1794AC() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1 + ((*(v3 + 80) + 64) & ~*(v3 + 80));

  return sub_1BF1003B4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BF1031E8()
{
  OUTLINED_FUNCTION_13_2();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_4(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5_29(v3);

  return sub_1BF1011A4(v5, v6, v7, v8, v1);
}

uint64_t sub_1BF103288()
{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_4(v4);
  *v5 = v6;
  v5[1] = sub_1BF035DD4;

  return sub_1BF100B38(v2, v3);
}

uint64_t sub_1BF10331C()
{
  OUTLINED_FUNCTION_13_2();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_5_29(v4);

  return sub_1BF0FC2FC(v6, v7, v8, v9, v1, v2);
}

uint64_t sub_1BF1033C4()
{
  OUTLINED_FUNCTION_13_2();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_4(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5_29(v3);

  return sub_1BF101514(v5, v6, v7, v8, v1);
}

void sub_1BF1034C0(uint64_t a1)
{
  if (!qword_1ED8EB078)
  {
    sub_1BF032E20(255, &qword_1ED8EAE60, &type metadata for BackgroundFetchResult, MEMORY[0x1E69E62F8]);
    v5 = type metadata accessor for Promise(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1ED8EB078);
    }
  }
}

id sub_1BF10358C()
{
  v1 = sub_1BF17986C();
  OUTLINED_FUNCTION_2_3();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15_17();
  v6 = sub_1BF17983C();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  sub_1BF17987C();

  v7 = (*(v3 + 88))(v0, v1);
  if (v7 == *MEMORY[0x1E6977AA8])
  {
    (*(v3 + 96))(v0, v1);
    v8 = v0[1];
    v9 = sub_1BF17B6FC();
    v11 = v10;
    objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v12 = v9;
    v13 = v11;
    v14 = v8;
    return sub_1BF104F04(v12, v13, v14, 0);
  }

  if (v7 == *MEMORY[0x1E6977AB0])
  {
    (*(v3 + 96))(v0, v1);
    v16 = *v0;
    v17 = v0[1];
    v18 = v0[2];
    objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v12 = v16;
    v13 = v17;
    v14 = v18;
    return sub_1BF104F04(v12, v13, v14, 0);
  }

  if (v7 == *MEMORY[0x1E6977AB8])
  {
    return 0;
  }

  if (v7 == *MEMORY[0x1E6977AC8])
  {
    return 0;
  }

  if (v7 == *MEMORY[0x1E6977AC0])
  {
    sub_1BF105370();
    result = swift_allocError();
    *v19 = 0;
  }

  else if (v7 == *MEMORY[0x1E6977AD0])
  {
    sub_1BF105370();
    result = swift_allocError();
    *v20 = 1;
  }

  else
  {
    result = sub_1BF17B49C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF103860()
{
  v0 = sub_1BF10358C();
  if (v1 != 254)
  {
    if (v1 == 255)
    {
      return 0;
    }

    sub_1BF105358(v0, v1);
  }

  return 1;
}

uint64_t sub_1BF10389C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BF1038C0, a4, 0);
}

uint64_t sub_1BF1038C0()
{
  OUTLINED_FUNCTION_5();
  *(v0 + 40) = *(*(v0 + 16) + 128);

  return MEMORY[0x1EEE6DFA0](sub_1BF103930, 0, 0);
}

uint64_t sub_1BF103930()
{
  v10 = v0;
  if (qword_1EBDCAFD0 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_1EBDCAFD0);
  }

  v1 = sub_1BF1797FC();
  __swift_project_value_buffer(v1, qword_1EBDCBC28);

  v2 = sub_1BF1797DC();
  v3 = sub_1BF17ACDC();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 16);
    v4 = *(v0 + 24);
    v6 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_1BF01A7AC(*(v4 + 136), *(v4 + 144), &v9);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1BF01A7AC(*(v5 + 136), *(v5 + 144), &v9);
    _os_log_impl(&dword_1BEFE0000, v2, v3, "Associating network activity with parent, activity=%s, parentActivity=%s", v6, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_28();
  }

  sub_1BF17984C();

  OUTLINED_FUNCTION_9();

  return v7();
}

void sub_1BF103ADC()
{
  v2 = v0;
  sub_1BF00974C(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15_17();
  v5 = sub_1BF17983C();

  if (v5)
  {
    if (qword_1EBDCAFD0 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_1EBDCAFD0);
    }

    v6 = sub_1BF1797FC();
    OUTLINED_FUNCTION_11_18(v6, qword_1EBDCBC28);
    v20 = sub_1BF1797DC();
    v7 = sub_1BF17ACAC();

    if (os_log_type_enabled(v20, v7))
    {
      v8 = OUTLINED_FUNCTION_70();
      v9 = OUTLINED_FUNCTION_44_0();
      v21 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1BF01A7AC(*(v2 + 136), *(v2 + 144), &v21);
      _os_log_impl(&dword_1BEFE0000, v20, v7, "Attempting to activate a network activity that is already started, activity=%s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_28();
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EBDCAFD0 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_1EBDCAFD0);
    }

    v10 = sub_1BF1797FC();
    OUTLINED_FUNCTION_11_18(v10, qword_1EBDCBC28);
    v11 = sub_1BF1797DC();
    v12 = sub_1BF17ACDC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_70();
      v14 = OUTLINED_FUNCTION_44_0();
      v21 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1BF01A7AC(*(v2 + 136), *(v2 + 144), &v21);
      _os_log_impl(&dword_1BEFE0000, v11, v12, "Activating network activity, activity=%s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_28();
    }

    sub_1BF17989C();

    v15 = sub_1BF17A77C();
    v16 = __swift_storeEnumTagSinglePayload(v1, 1, 1, v15);
    v18 = sub_1BF103F20(v16, v17);
    v19 = swift_allocObject();
    v19[2] = v2;
    v19[3] = v18;
    v19[4] = v2;
    swift_retain_n();
    OUTLINED_FUNCTION_9_1();
    sub_1BF089D40();
  }
}

uint64_t sub_1BF103DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BF103DCC, a4, 0);
}

uint64_t sub_1BF103DCC()
{
  OUTLINED_FUNCTION_5();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[4] = Strong;
  if (Strong)
  {
    v2 = *(v0[3] + 120);
    v0[5] = v2;
    v0[6] = swift_getObjectType();
    v0[7] = *(v2 + 16);
    v0[8] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xF3B0000000000000;
    v4 = sub_1BF17A6AC();

    return MEMORY[0x1EEE6DFA0](sub_1BF103EA0, v4, v3);
  }

  else
  {
    OUTLINED_FUNCTION_12_20();

    return v5();
  }
}

uint64_t sub_1BF103EA0()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 24);
  (*(v0 + 56))(v1, *(v0 + 48), *(v0 + 40));
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1BF103F18, v1, 0);
}

unint64_t sub_1BF103F20(uint64_t a1, uint64_t a2)
{
  result = qword_1EBDCC228;
  if (!qword_1EBDCC228)
  {
    type metadata accessor for NetworkActivitySession();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC228);
  }

  return result;
}

uint64_t sub_1BF103F98()
{
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_48(v4);

  return sub_1BF103DAC(v6, v7, v1, v2);
}

uint64_t sub_1BF104034()
{
  v1 = v0;
  if (qword_1EBDCAFD0 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_1EBDCAFD0);
  }

  v2 = sub_1BF1797FC();
  OUTLINED_FUNCTION_11_18(v2, qword_1EBDCBC28);
  v3 = sub_1BF1797DC();
  v4 = sub_1BF17ACAC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_70();
    v6 = OUTLINED_FUNCTION_44_0();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1BF01A7AC(v1[17], v1[18], &v8);
    _os_log_impl(&dword_1BEFE0000, v3, v4, "Retrying network activity, activity=%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_28();
  }

  sub_1BF1798BC();
  swift_allocObject();

  v1[16] = sub_1BF17988C();
}

void sub_1BF104180(void *a1, char a2)
{
  v3 = v2;
  sub_1BF00974C(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = sub_1BF17986C();
  OUTLINED_FUNCTION_2_3();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_2_0();
  v18 = v17 - v16;

  v19 = sub_1BF17982C();

  if (v19)
  {
    if (qword_1EBDCAFD0 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_1EBDCAFD0);
    }

    v20 = sub_1BF1797FC();
    OUTLINED_FUNCTION_11_18(v20, qword_1EBDCBC28);
    v45 = sub_1BF1797DC();
    v21 = sub_1BF17ACAC();

    if (os_log_type_enabled(v45, v21))
    {
      v22 = OUTLINED_FUNCTION_70();
      v23 = OUTLINED_FUNCTION_44_0();
      v47 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_1BF01A7AC(*(v3 + 136), *(v3 + 144), &v47);
      _os_log_impl(&dword_1BEFE0000, v45, v21, "Attempting to complete a Network Activity that is already started, activity=%s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_28();
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EBDCAFD0 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_1EBDCAFD0);
    }

    v24 = sub_1BF1797FC();
    OUTLINED_FUNCTION_11_18(v24, qword_1EBDCBC28);
    sub_1BF104FB4(a1, a2 & 1);
    v25 = sub_1BF1797DC();
    v26 = sub_1BF17ACDC();

    sub_1BF104FC0(a1, a2 & 1);
    v46 = a1;
    if (os_log_type_enabled(v25, v26))
    {
      v44 = v11;
      v27 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v27 = 136315394;
      *(v27 + 4) = sub_1BF01A7AC(*(v3 + 136), *(v3 + 144), &v49);
      *(v27 + 12) = 2080;
      v47 = a1;
      v48 = a2 & 1;
      sub_1BF104FB4(a1, a2 & 1);
      sub_1BF105080(0, v28, v29, v30);
      v31 = sub_1BF17A13C();
      v33 = v13;
      v34 = v10;
      v35 = a2;
      v36 = sub_1BF01A7AC(v31, v32, &v49);

      *(v27 + 14) = v36;
      a2 = v35;
      v10 = v34;
      v13 = v33;
      _os_log_impl(&dword_1BEFE0000, v25, v26, "Completing network activity, activity=%s, result=%s", v27, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_28();
      v11 = v44;
      OUTLINED_FUNCTION_28();
    }

    if (a2)
    {

      v37 = v46;
      v38 = sub_1BF17910C();
      sub_1BF17985C();
    }

    else
    {
      (*(v13 + 104))(v18, *MEMORY[0x1E6977AC8], v11);

      v37 = v46;
    }

    sub_1BF1798AC();

    (*(v13 + 8))(v18, v11);
    v39 = sub_1BF17A77C();
    v40 = __swift_storeEnumTagSinglePayload(v10, 1, 1, v39);
    v42 = sub_1BF103F20(v40, v41);
    v43 = swift_allocObject();
    *(v43 + 16) = v3;
    *(v43 + 24) = v42;
    *(v43 + 32) = v3;
    *(v43 + 40) = v37;
    *(v43 + 48) = a2 & 1;
    swift_retain_n();
    sub_1BF104FB4(v37, a2 & 1);
    OUTLINED_FUNCTION_9_1();
    sub_1BF089D40();
  }
}

uint64_t sub_1BF104624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 80) = a6;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  *(v6 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BF10464C, a4, 0);
}

uint64_t sub_1BF10464C()
{
  OUTLINED_FUNCTION_5();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[5] = Strong;
  if (Strong)
  {
    v2 = *(v0[3] + 120);
    v0[6] = v2;
    v0[7] = swift_getObjectType();
    v0[8] = *(v2 + 24);
    v0[9] = (v2 + 24) & 0xFFFFFFFFFFFFLL | 0x7A94000000000000;
    v4 = sub_1BF17A6AC();

    return MEMORY[0x1EEE6DFA0](sub_1BF104720, v4, v3);
  }

  else
  {
    OUTLINED_FUNCTION_12_20();

    return v5();
  }
}

uint64_t sub_1BF104720()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 24);
  (*(v0 + 64))(v1, *(v0 + 32), *(v0 + 80) & 1, *(v0 + 56), *(v0 + 48));
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1BF1047A4, v1, 0);
}

uint64_t sub_1BF1047AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BF1047D0, v3, 0);
}

uint64_t sub_1BF1047D0()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[3];
  sub_1BF103ADC();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1BF1048CC;
  v3 = v0[2];

  return v5(v3);
}

uint64_t sub_1BF1048CC()
{
  OUTLINED_FUNCTION_16();
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_1BF104A58;
  }

  else
  {
    v4 = sub_1BF1049F4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BF1049F4()
{
  OUTLINED_FUNCTION_5();
  sub_1BF104180(0, 0);
  OUTLINED_FUNCTION_9();

  return v0();
}

uint64_t sub_1BF104A58()
{
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 56);
  v2 = v1;
  sub_1BF104180(v1, 1);

  swift_willThrow();
  OUTLINED_FUNCTION_9();

  return v3();
}

uint64_t NetworkActivitySession.deinit()
{
  sub_1BF042FB8(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t NetworkActivitySession.__deallocating_deinit()
{
  NetworkActivitySession.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

void *Promise.associatedWith(networkActivitySession:)(uint64_t a1)
{
  if (a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = a1;
    *(v3 + 24) = v1;

    return Promise.__allocating_init<A>(task:)(&unk_1BF185A60, v3);
  }

  else
  {
  }
}

uint64_t sub_1BF104C2C(uint64_t a1, uint64_t a2, void *a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1BF104C78, 0, 0);
}

uint64_t sub_1BF104C78()
{
  OUTLINED_FUNCTION_5();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1BF104D20;
  v2 = v0[4];
  v3 = v0[2];

  return sub_1BF1047AC(v3, &unk_1BF185B28, v2);
}

uint64_t sub_1BF104D20()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;
  *(v4 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BF104E40, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_9();

    return v5();
  }
}

uint64_t sub_1BF104E64(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF035DD4;

  return Promise.resolveAsync()(a1);
}

id sub_1BF104F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BF17A07C();

  if (a4)
  {
    v8 = sub_1BF179D3C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

id sub_1BF104FB4(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_1BF104FC0(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_1BF104FCC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_2_48(v6);

  return sub_1BF104624(v8, v9, v1, v2, v3, v4);
}

void sub_1BF105080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EBDCC230)
  {
    v4 = type metadata accessor for Result(0, MEMORY[0x1E69E7CA8] + 8, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1EBDCC230);
    }
  }
}

uint64_t sub_1BF1050D4()
{
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_4(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_48(v3);

  return sub_1BF104C2C(v5, v6, v1);
}

uint64_t dispatch thunk of NetworkActivitySession.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = (*(*v4 + 216) + **(*v4 + 216));
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_4(v9);
  *v10 = v11;
  v10[1] = sub_1BF035DD4;

  return v13(a1, a2, a3, a4);
}

void sub_1BF105358(void *a1, unsigned __int8 a2)
{
  if (a2 <= 0xFDu)
  {
    sub_1BF104FC0(a1, a2 & 1);
  }
}

unint64_t sub_1BF105370()
{
  result = qword_1EBDCC238;
  if (!qword_1EBDCC238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC238);
  }

  return result;
}

void *sub_1BF1053C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_2_3();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v22 - v17;
  (*(v9 + 32))(&v22 - v17, v16);
  type metadata accessor for NetworkActivitySession();
  v19 = swift_allocObject();
  (*(v9 + 16))(v13, v18, a4);
  v20 = sub_1BF105518(v13, a2, v19, a4, a5);
  (*(v9 + 8))(v18, a4);
  return v20;
}

void *sub_1BF105518(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_1BF00974C(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  v22[3] = a4;
  v22[4] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a1, a4);
  swift_defaultActor_initialize();
  a3[15] = 0;
  swift_unknownObjectWeakInit();
  v16 = (*(a5 + 8))(a4, a5);
  a3[16] = v16;
  sub_1BEFE6A78(v22, v21);
  sub_1BF1056E8();

  a3[17] = sub_1BF17A13C();
  a3[18] = v17;
  if (a2)
  {
    v18 = sub_1BF17A77C();
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = a2;
    v19[5] = a3;
    v19[6] = v16;

    OUTLINED_FUNCTION_9_1();
    sub_1BF089AC0();
  }

  __swift_destroy_boxed_opaque_existential_1(v22);
  return a3;
}

unint64_t sub_1BF1056E8()
{
  result = qword_1EBDCC240;
  if (!qword_1EBDCC240)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBDCC240);
  }

  return result;
}

uint64_t sub_1BF105744()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_2_48(v6);

  return sub_1BF10389C(v8, v9, v1, v2, v3, v4);
}

uint64_t sub_1BF1057F8()
{
  OUTLINED_FUNCTION_5();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_4(v2);
  *v3 = v4;
  v3[1] = sub_1BF035DD0;

  return sub_1BF104E64(v1);
}

_BYTE *storeEnumTagSinglePayload for NetworkActivitySession.Error(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BF105968()
{
  result = qword_1EBDCC248;
  if (!qword_1EBDCC248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC248);
  }

  return result;
}

uint64_t Accessor.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1BF105A6C(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = *(*a3 + 80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v11 - v7;
  (*(v9 + 16))(v6);
  a1(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BF105BA0(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = *(type metadata accessor for ManualClock.WakeUp(0) - 8);
    result = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

uint64_t ManualClock.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = _s13TeaFoundation11ManualClockV17minimumResolutions8DurationVvg_0();
  v4 = v3;
  sub_1BF105CF8(0, v3, v5, v6);
  result = swift_allocObject();
  *(result + 56) = 0;
  *(result + 16) = v2;
  *(result + 24) = v4;
  v8 = MEMORY[0x1E69E7CD0];
  *(result + 32) = MEMORY[0x1E69E7CC0];
  *(result + 40) = v8;
  *(result + 48) = v8;
  *a1 = result;
  return result;
}

void sub_1BF105CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EBDCC250)
  {
    type metadata accessor for os_unfair_lock_s(255, a2, a3, a4);
    v4 = sub_1BF17B2EC();
    if (!v5)
    {
      atomic_store(v4, &qword_1EBDCC250);
    }
  }
}

uint64_t ManualClock.advance(by:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ManualClock.WakeUp(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  os_unfair_lock_lock((v8 + 56));
  sub_1BF105F40((v8 + 16), v17);
  os_unfair_lock_unlock((v8 + 56));
  v9 = v17[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BF107154(v9);
    v9 = v15;
  }

  v10 = *(v9 + 16);
  v11 = v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v17[0] = v11;
  v17[1] = v10;
  sub_1BF1071E0(v17);
  v12 = *(v9 + 16);
  if (v12)
  {
    v13 = *(v4 + 72);
    do
    {
      sub_1BF0C4520(v11, v7);
      sub_1BF107310(v7);
      swift_continuation_throwingResume();
      v11 += v13;
      --v12;
    }

    while (v12);
  }
}

uint64_t type metadata accessor for ManualClock.WakeUp(uint64_t a1)
{
  result = qword_1EBDCC278;
  if (!qword_1EBDCC278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF105F40@<X0>(uint64_t *a1@<X0>, uint64_t *a4@<X8>)
{
  v26 = a4;
  sub_1BF108EDC(0, &qword_1EBDCBC40, type metadata accessor for ManualClock.WakeUp, MEMORY[0x1E69E6BC0]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v28 = &v26 - v7;
  v27 = type metadata accessor for ManualClock.WakeUp(0);
  v8 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v26 - v14;
  result = sub_1BF17BC4C();
  *a1 = result;
  a1[1] = v17;
  v19 = a1[2];
  v18 = a1 + 2;
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = MEMORY[0x1E69E7CC0];
    while (v20 <= *(*v18 + 16))
    {
      --v20;
      sub_1BF0C4520(*v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20, v15);
      if ((sub_1BF17BC3C() & 1) == 0)
      {
        sub_1BF0C4520(v15, v28);
        v22 = *(v21 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v21;
        if (!isUniquelyReferenced_nonNull_native || v22 >= *(v21 + 24) >> 1)
        {
          if (*(v21 + 16) <= v22 + 1)
          {
            v24 = v22 + 1;
          }

          else
          {
            v24 = *(v21 + 16);
          }

          sub_1BF0A6CA4(isUniquelyReferenced_nonNull_native, v24, 1, v21);
          v21 = v25;
          v29 = v25;
        }

        sub_1BF0C4170(0, 0, 1, v28);
        sub_1BF0BDF68(v20, v11);
        sub_1BF107310(v11);
      }

      result = sub_1BF107310(v15);
      if (!v20)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_13:
  *v26 = v21;
  return result;
}

uint64_t ManualClock.Instant.advanced(by:)@<X0>(uint64_t *a3@<X8>)
{
  result = sub_1BF17BC4C();
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t static ManualClock.Instant.initial.getter@<X0>(uint64_t *a1@<X8>)
{
  result = _s13TeaFoundation11ManualClockV17minimumResolutions8DurationVvg_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ManualClock.Instant.hashValue.getter()
{
  sub_1BF17BB6C();
  sub_1BF17BC7C();
  return sub_1BF17BB9C();
}

uint64_t sub_1BF1062BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ManualClock.Instant.duration(to:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1BF10632C(uint64_t a1)
{
  sub_1BF17BB6C();
  sub_1BF17BC7C();
  return sub_1BF17BB9C();
}

void ManualClock.now.getter(_OWORD *a1@<X8>)
{
  v3 = *v1;
  os_unfair_lock_lock((v3 + 56));
  *a1 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 56));
}

uint64_t ManualClock.sleep(until:tolerance:)()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = sub_1BF1794FC();
  *(v1 + 16) = v4;
  *(v1 + 24) = *(v4 - 8);
  *(v1 + 32) = swift_task_alloc();
  *(v1 + 40) = *v3;
  *(v1 + 56) = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1BF106490, 0, 0);
}

uint64_t sub_1BF106490(uint64_t a1)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[4];
  v5 = v1[5];
  sub_1BF1794EC();
  v6 = swift_task_alloc();
  v1[8] = v6;
  v6[2] = v4;
  v6[3] = v5;
  v6[4] = v2;
  v6[5] = v3;
  v7 = swift_task_alloc();
  v1[9] = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  v8 = swift_task_alloc();
  v1[10] = v8;
  *v8 = v1;
  v8[1] = sub_1BF1065B0;
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v8, &unk_1BF185C88, v6, sub_1BF10742C, v7, 0, 0, v9);
}

uint64_t sub_1BF1065B0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v3 + 88) = v0;

  if (v0)
  {
    v6 = sub_1BF10673C;
  }

  else
  {

    v6 = sub_1BF1066C4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1BF1066C4()
{
  OUTLINED_FUNCTION_5();
  (*(v0[3] + 8))(v0[4], v0[2]);

  OUTLINED_FUNCTION_9();

  return v1();
}

uint64_t sub_1BF10673C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_9();

  return v4();
}

uint64_t sub_1BF1067D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1BF1067F8, 0, 0);
}

uint64_t sub_1BF1067F8()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v0[2] = v0;
  v0[3] = sub_1BF1068B0;
  v5 = swift_continuation_init();
  sub_1BF1069B4(v5, v4, v3, v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BF1068B0()
{
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  if (*(v2 + 48))
  {
    swift_willThrow();
  }

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1BF1069B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, os_unfair_lock_s *a5)
{
  v10 = type metadata accessor for ManualClock.WakeUp(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1BF1794FC();
  (*(*(v15 - 8) + 16))(v14, a2, v15);
  v16 = &v14[*(v11 + 28)];
  *v16 = a3;
  v16[1] = a4;
  *&v14[*(v11 + 32)] = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = v14;
  os_unfair_lock_lock(a5 + 14);
  sub_1BF1078B4(&a5[4]._os_unfair_lock_opaque, &v25);
  os_unfair_lock_unlock(a5 + 14);
  if (v25)
  {
    if (v25 != 1)
    {
      sub_1BF17A6EC();
      sub_1BF108B88(qword_1ED8ECC30, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
      v17 = swift_allocError();
      sub_1BF179D0C();
      sub_1BEFF79E8();
      swift_allocError();
      *v18 = v17;
      swift_continuation_throwingResumeWithError();
    }
  }

  else
  {
    swift_continuation_throwingResume();
  }

  return sub_1BF107310(v14);
}

uint64_t sub_1BF106B7C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X4>, char *a6@<X8>)
{
  sub_1BF108EDC(0, &qword_1EBDCC290, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v21 - v12;
  sub_1BF108888(a2, v21 - v12);
  v14 = sub_1BF1794FC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  result = sub_1BF108AFC(v13);
  if (EnumTagSinglePayload == 1)
  {
    result = sub_1BF17BC3C();
    if (result)
    {
      sub_1BF071BFC();
      v17 = *(a1[2] + 16);
      sub_1BF071E38(v17);
      v18 = a1[2];
      *(v18 + 16) = v17 + 1;
      v19 = *(type metadata accessor for ManualClock.WakeUp(0) - 8);
      result = sub_1BF0C4520(a5, v18 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v17);
      a1[2] = v18;
      v20 = 1;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 2;
  }

  *a6 = v20;
  return result;
}

void sub_1BF106D44(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 14);
  sub_1BF107864(&a1[4], &v4);
  os_unfair_lock_unlock(a1 + 14);
  if (v4)
  {
    sub_1BF17A6EC();
    sub_1BF108B88(qword_1ED8ECC30, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    v2 = swift_allocError();
    sub_1BF179D0C();
    sub_1BEFF79E8();
    swift_allocError();
    *v3 = v2;
    swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_1BF106E38@<X0>(uint64_t *a1@<X8>)
{
  result = ManualClock.minimumResolution.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BF106E60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF035DD4;

  return ManualClock.sleep(until:tolerance:)();
}

unint64_t sub_1BF106EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v26 = a3;
  v5 = type metadata accessor for ManualClock.WakeUp(0);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BF1794FC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v21 - v16;
  v18 = *(a1 + 16);
  v25 = a2;
  result = sub_1BF105BA0(sub_1BF107880, v24, v18);
  if (v20)
  {
    (*(v10 + 16))(v13, a2, v9);
    sub_1BF16FEE4();
    result = (*(v10 + 8))(v17, v9);
    *v26 = 0;
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result >= *(v18 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  *v26 = *(v18 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * result + *(v23 + 24));
  sub_1BF0BDF68(result, v8);
  return sub_1BF107310(v8);
}

uint64_t sub_1BF107168(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1BF17B50C();
  }

  return sub_1BF17B25C();
}

void sub_1BF1071E0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BF17B6DC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ManualClock.WakeUp(0);
        v6 = sub_1BF17A57C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ManualClock.WakeUp(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1BF107AD4(v8, v9, a1, v4);
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
    sub_1BF1078D4(0, v2, 1, a1);
  }
}

uint64_t sub_1BF107310(uint64_t a1)
{
  v2 = type metadata accessor for ManualClock.WakeUp(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF10736C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BF035DD4;

  return sub_1BF1067D4(a1, v4, v5, v7, v6);
}

unint64_t sub_1BF107438()
{
  result = qword_1EBDCC258;
  if (!qword_1EBDCC258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC258);
  }

  return result;
}

unint64_t sub_1BF107490()
{
  result = qword_1EBDCC260;
  if (!qword_1EBDCC260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC260);
  }

  return result;
}

unint64_t sub_1BF1074F0()
{
  result = qword_1EBDCC268;
  if (!qword_1EBDCC268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC268);
  }

  return result;
}

unint64_t sub_1BF107548()
{
  result = qword_1EBDCC270;
  if (!qword_1EBDCC270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC270);
  }

  return result;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}