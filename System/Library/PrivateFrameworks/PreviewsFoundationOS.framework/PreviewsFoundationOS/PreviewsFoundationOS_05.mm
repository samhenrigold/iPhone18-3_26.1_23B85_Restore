PreviewsFoundationOS::SchedulerInterval __swiftcall SchedulerInterval.init(integerLiteral:)(Swift::Int64 integerLiteral)
{
  result.value = integerLiteral;
  *v1 = integerLiteral;
  return result;
}

double static SchedulerInterval.* infix(_:_:)@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 * *a2;
  *a3 = result;
  return result;
}

double static SchedulerInterval.+ infix(_:_:)@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 + *a2;
  *a3 = result;
  return result;
}

double static SchedulerInterval.- infix(_:_:)@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 - *a2;
  *a3 = result;
  return result;
}

double static SchedulerInterval.*= infix(_:_:)(double *a1, double *a2)
{
  result = *a2 * *a1;
  *a1 = result;
  return result;
}

double sub_25F20F64C@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = 0.0 - *a1;
  *a2 = result;
  return result;
}

double sub_25F20F660()
{
  result = 0.0 - *v0;
  *v0 = result;
  return result;
}

double sub_25F20F674@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_25F20F698@<D0>(double *a1@<X8>)
{
  result = fabs(*v1);
  *a1 = result;
  return result;
}

double sub_25F20F6A8@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 * *a2;
  *a3 = result;
  return result;
}

double sub_25F20F6BC(double *a1, double *a2)
{
  result = *a2 * *a1;
  *a1 = result;
  return result;
}

double sub_25F20F6D0@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 + *a2;
  *a3 = result;
  return result;
}

double sub_25F20F6E4(double *a1, double *a2)
{
  result = *a2 + *a1;
  *a1 = result;
  return result;
}

double sub_25F20F6F8@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 - *a2;
  *a3 = result;
  return result;
}

double sub_25F20F70C(double *a1, double *a2)
{
  result = *a1 - *a2;
  *a1 = result;
  return result;
}

double sub_25F20F720@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

uint64_t DispatchScheduler.schedule(after:qos:execute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25F30490C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F1D8C38;
  aBlock[3] = &block_descriptor_4;
  v12 = _Block_copy(aBlock);
  v14[1] = MEMORY[0x277D84F90];
  sub_25F21251C(&qword_27FD53A98, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
  sub_25F1D908C();
  sub_25F305E5C();
  MEMORY[0x25F8D7C10](a1, a2, v11, v12);
  _Block_release(v12);
  (*(v9 + 8))(v11, v8);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

PreviewsFoundationOS::StepScheduler::Deadline __swiftcall StepScheduler.Deadline.init(integerLiteral:)(Swift::Int integerLiteral)
{
  result.time.value = integerLiteral;
  *v1 = integerLiteral;
  return result;
}

PreviewsFoundationOS::StepScheduler::Deadline __swiftcall StepScheduler.Deadline.init(time:)(PreviewsFoundationOS::SchedulerInterval time)
{
  *&result.time.value = *v1;
  *v2 = *v1;
  return result;
}

PreviewsFoundationOS::SchedulerInterval __swiftcall StepScheduler.Deadline.distance(to:)(PreviewsFoundationOS::StepScheduler::Deadline to)
{
  result.value = *v1 - *v3;
  *v2 = result.value;
  return result;
}

PreviewsFoundationOS::StepScheduler::Deadline __swiftcall StepScheduler.Deadline.advanced(by:)(PreviewsFoundationOS::SchedulerInterval by)
{
  result.time.value = *v1 + *v3;
  *v2 = result.time.value;
  return result;
}

void StepScheduler.Deadline.description.getter()
{
  v1 = *v0;
  if ((*v0 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    sub_25F20FAB8();
    sub_25F305DCC();
    return;
  }

LABEL_7:
  __break(1u);
}

unint64_t sub_25F20FAB8()
{
  result = qword_27FD54CD0;
  if (!qword_27FD54CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54CD0);
  }

  return result;
}

uint64_t StepScheduler.Deadline.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x25F8D8900](*&v1);
}

uint64_t sub_25F20FB4C()
{
  v1 = *v0;
  sub_25F30671C();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x25F8D8900](*&v2);
  return sub_25F30676C();
}

double sub_25F20FBA8@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = *a1 - *v2;
  *a2 = result;
  return result;
}

uint64_t sub_25F20FBD8(uint64_t a1)
{
  v2 = *v1;
  sub_25F30671C();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x25F8D8900](*&v3);
  return sub_25F30676C();
}

void sub_25F20FC30()
{
  v1 = *v0;
  if ((*v0 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    sub_25F20FAB8();
    sub_25F305DCC();
    return;
  }

LABEL_7:
  __break(1u);
}

double StepScheduler.now.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = result;
  return result;
}

uint64_t StepScheduler.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = sub_25F1B6020(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t StepScheduler.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = sub_25F1B6020(MEMORY[0x277D84F90]);
  return v0;
}

Swift::Void __swiftcall StepScheduler.advance(by:)(PreviewsFoundationOS::SchedulerInterval by)
{
  v3 = *v1;
  if ((*v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v4 = v2;
  v5 = v3;
  if (v3 < 0)
  {
LABEL_39:
    __break(1u);

    __break(1u);
    return;
  }

  swift_beginAccess();
  if (v5)
  {
    v36 = 0;
    v37 = 0;
    v35 = v5;
    do
    {
      *(v4 + 16) = *(v4 + 16) + 1.0;
      v6 = *(v4 + 24);
      v7 = *(v6 + 16);
      if (v7)
      {
        v8 = sub_25F1BAA38(*(v6 + 16), 0);
        v9 = sub_25F1BE950(&v38, v8 + 4, v7, v6);
        v10 = v38;
        swift_bridgeObjectRetain_n();
        sub_25F1BF034(v10);
        if (v9 != v7)
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }
      }

      else
      {

        v8 = MEMORY[0x277D84F90];
      }

      v38 = v8;
      v11 = 0;
      sub_25F20F1D0(&v38);
      ++v37;

      v12 = v38;
      v13 = v38[2];
      v14 = v38 + 4;
      v15 = MEMORY[0x277D84F90];
LABEL_13:
      v16 = &v14[2 * v11];
      while (v13 != v11)
      {
        if (v11 >= *(v12 + 16))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v17 = v16 + 2;
        ++v11;
        v18 = *v16;
        v19 = *(v4 + 16) < *v16;
        v16 += 2;
        if (!v19)
        {
          v20 = *(v17 - 1);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v38 = v15;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_25F1BD088(0, *(v15 + 16) + 1, 1);
            v15 = v38;
          }

          v23 = *(v15 + 16);
          v22 = *(v15 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_25F1BD088((v22 > 1), v23 + 1, 1);
            v15 = v38;
          }

          *(v15 + 16) = v23 + 1;
          v24 = v15 + 16 * v23;
          *(v24 + 32) = v18;
          *(v24 + 40) = v20;
          goto LABEL_13;
        }
      }

      v25 = *(v15 + 16);
      if (v25)
      {
        v26 = 0;
        while (v26 < *(v15 + 16))
        {
          v27 = (v15 + 32 + 16 * v26);
          v28 = *v27;
          v29 = *(v27 + 1);
          v30 = *(v29 + 16);

          if (v30)
          {
            v31 = 0;
            v32 = v29 + 40;
            while (v31 < *(v29 + 16))
            {
              ++v31;
              v33 = *(v32 - 8);

              v33(v34);

              v32 += 16;
              if (v30 == v31)
              {
                goto LABEL_24;
              }
            }

            __break(1u);
            return;
          }

LABEL_24:
          ++v26;
          swift_beginAccess();
          sub_25F2104A4(v28);
          swift_endAccess();

          if (v26 == v25)
          {
            goto LABEL_7;
          }
        }

        goto LABEL_34;
      }

LABEL_7:
    }

    while (v37 != v35);
  }
}

uint64_t StepScheduler.schedule(after:qos:execute:)(double *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v7 = *a1;
  if (*(v4 + 16) >= *a1)
  {
    return a3();
  }

  v8 = v4;
  swift_beginAccess();
  v9 = *(v4 + 24);
  if (*(v9 + 16) && (v10 = sub_25F2192E8(v7), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  swift_endAccess();
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_25F2F0810(0, v12[2] + 1, 1, v12);
  }

  v16 = v12[2];
  v15 = v12[3];
  if (v16 >= v15 >> 1)
  {
    v12 = sub_25F2F0810((v15 > 1), v16 + 1, 1, v12);
  }

  v12[2] = v16 + 1;
  v17 = &v12[2 * v16];
  v17[4] = sub_25F212298;
  v17[5] = v14;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v8 + 24);
  *(v8 + 24) = 0x8000000000000000;
  sub_25F2108A4(v12, isUniquelyReferenced_nonNull_native, v7);
  *(v8 + 24) = v19;
  return swift_endAccess();
}

Swift::Void __swiftcall StepScheduler.unscheduleAll()()
{
  swift_beginAccess();
  *(v0 + 24) = MEMORY[0x277D84F98];
}

unint64_t StepScheduler.description.getter()
{
  sub_25F305FAC();

  sub_25F2122A0();
  v0 = sub_25F3064DC();
  MEMORY[0x25F8D7130](v0);

  MEMORY[0x25F8D7130](0x756465686373202CLL, 0xED0000203A64656CLL);
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54CE0, &qword_25F30CEF8);
  sub_25F2122F4();
  v1 = sub_25F304A7C();
  v3 = v2;

  MEMORY[0x25F8D7130](v1, v3);

  MEMORY[0x25F8D7130](93, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t StepScheduler.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

double sub_25F21044C@<D0>(double *a1@<X8>)
{
  result = *(*v1 + 16);
  *a1 = result;
  return result;
}

uint64_t sub_25F2104A4(double a1)
{
  v2 = v1;
  v3 = sub_25F2192E8(a1);
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
    sub_25F21E1D8();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_25F1BB1FC(v8, v7);
  *v2 = v7;
  return v9;
}

double sub_25F21052C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_25F219234(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25F21DA60();
      v10 = v12;
    }

    sub_25F1B707C((*(v10 + 56) + 32 * v8), a3);
    sub_25F1BBA54(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_25F2105D0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_25F219234(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_25F219C5C(v20, a6 & 1);
      v15 = sub_25F219234(a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_25F30665C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_25F21D8C8();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 24 * v15;
    v27 = *v26;
    v28 = *(v26 + 8);
    *v26 = a1;
    *(v26 + 8) = a2;
    v29 = *(v26 + 16);
    *(v26 + 16) = a3;

    return sub_25F1D4C04(v27, v28, v29);
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v31 = (v25[6] + 16 * v15);
  *v31 = a4;
  v31[1] = a5;
  v32 = v25[7] + 24 * v15;
  *v32 = a1;
  *(v32 + 8) = a2;
  *(v32 + 16) = a3;
  v33 = v25[2];
  v19 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v34;
}

_OWORD *sub_25F210778(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_25F2192AC(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_25F21DD68();
      v9 = v17;
      goto LABEL_8;
    }

    sub_25F21A9F0(v14, a3 & 1);
    v9 = sub_25F2192AC(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_25F30665C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1(v20);

    return sub_25F1B707C(a1, v20);
  }

  else
  {

    return sub_25F2117BC(v9, a2, a1, v19);
  }
}

unint64_t sub_25F2108A4(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_25F2192E8(a3);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 < v14 || (a2 & 1) != 0)
    {
      sub_25F21B1BC(v14, a2 & 1);
      result = sub_25F2192E8(a3);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_25F30665C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_25F21E1D8();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a3;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

_OWORD *sub_25F2109F8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_25F21935C(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_25F21E334();
      goto LABEL_7;
    }

    sub_25F21B454(v13, a3 & 1);
    v19 = sub_25F21935C(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_25F1BF614(a2, v21);
      return sub_25F21188C(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_25F30665C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1(v17);

  return sub_25F1B707C(a1, v17);
}

unint64_t sub_25F210B44(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_25F2193A0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_25F21B70C(v14, a3 & 1);
      result = sub_25F2193A0(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_25F30665C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_25F21E4D8();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_25F210C90(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_25F219234(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_25F21E8B4();
      goto LABEL_7;
    }

    sub_25F21BD1C(v15, a4 & 1);
    v22 = sub_25F219234(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_25F30665C();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C48, &qword_25F308100) - 8) + 72) * v12;

    return sub_25F212940(a1, v20);
  }

LABEL_13:
  sub_25F21194C(v12, a2, a3, a1, v18);
}

unint64_t sub_25F210E00(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_25F21940C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_25F21C060(v14, a3 & 1);
      result = sub_25F21940C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_25F30665C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_25F21EAEC();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

unint64_t sub_25F210F4C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_25F21FC78(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_25F21EC48();
    result = v17;
    goto LABEL_8;
  }

  sub_25F21C2F0(v14, a3 & 1);
  result = sub_25F21FC78(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_25F30665C();
  __break(1u);
  return result;
}

_OWORD *sub_25F211070(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25F219234(a2, a3);
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
      sub_25F21DA60();
      v11 = v19;
      goto LABEL_8;
    }

    sub_25F219F3C(v16, a4 & 1);
    v11 = sub_25F219234(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_25F30665C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_25F1B707C(a1, v22);
  }

  else
  {
    sub_25F2119F0(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_25F2111C0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CrashReport.ID(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_25F219494(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_25F21ED94();
      goto LABEL_7;
    }

    sub_25F21C570(v16, a3 & 1);
    v21 = sub_25F219494(a2);
    if ((v17 & 1) == (v22 & 1))
    {
      v13 = v21;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_25F2128DC(a2, v10);
      return sub_25F211A5C(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_25F30665C();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v19[7] + 8 * v13) = a1;
}

unint64_t sub_25F211350(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_25F2192AC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_25F21C8D4(v14, a3 & 1);
      result = sub_25F2192AC(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_25F30665C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_25F21EFAC();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

unint64_t sub_25F21149C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_25F219518(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_25F21CB44(v16, a4 & 1);
      result = sub_25F219518(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_25F30665C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_25F21F108();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    v23 = (v21[6] + 16 * result);
    *v23 = a2;
    v23[1] = a3;
    v24 = (v21[7] + 80 * result);
    *v24 = *a1;
    v25 = a1[1];
    v26 = a1[2];
    v27 = a1[3];
    *(v24 + 57) = *(a1 + 57);
    v24[2] = v26;
    v24[3] = v27;
    v24[1] = v25;
    v28 = v21[2];
    v15 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v15)
    {
      v21[2] = v29;
      return result;
    }

    goto LABEL_15;
  }

  v22 = v21[7] + 80 * result;

  return sub_25F212880(a1, v22);
}

unint64_t sub_25F211628(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_25F21962C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_25F21D3C4(v14, a3 & 1);
      result = sub_25F21962C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_25F30665C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_25F21F57C();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 4 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

unint64_t sub_25F211774(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

_OWORD *sub_25F2117BC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_25F1B707C(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_25F211824(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_25F1E6CBC(a3, a4[7] + 32 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_25F21188C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_25F1B707C(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_25F211908(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_25F21194C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C48, &qword_25F308100);
  result = sub_25F1B700C(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

_OWORD *sub_25F2119F0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_25F1B707C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_25F211A5C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CrashReport.ID(0);
  result = sub_25F1B6FA8(a2, v8 + *(*(v9 - 8) + 72) * a1);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_25F211AFC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_25F2D89A0(v8);
      v8 = result;
    }

    v82 = (v8 + 16);
    v83 = *(v8 + 16);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = (v8 + 16 * v83);
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_25F212094((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v14 = *v12;
      v13 = v12 + 4;
      v15 = v14;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v13;
        v13 += 2;
        v19 = v17 < v18;
        ++v16;
        v17 = v18;
        if ((((v15 >= v10) ^ v19) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v15 < v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v15 < v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = v23[1];
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25F2D89B4(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v36 = *(v8 + 24);
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      result = sub_25F2D89B4((v36 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v37;
    v38 = v8 + 32;
    v39 = (v8 + 32 + 16 * v5);
    *v39 = v9;
    v39[1] = v7;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = *(v8 + 32);
          v41 = *(v8 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = (v8 + 16 * v37);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = (v38 + 16 * v5);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = (v8 + 16 * v37);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = (v38 + 16 * v5);
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v77 = (v38 + 16 * (v5 - 1));
        v78 = *v77;
        v79 = (v38 + 16 * v5);
        v80 = v79[1];
        sub_25F212094((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *(v8 + 16);
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        result = memmove((v38 + 16 * v5), v79 + 2, 16 * (v81 - 1 - v5));
        *(v8 + 16) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = v38 + 16 * v37;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = (v8 + 16 * v37);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = (v38 + 16 * v5);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (*v33 < v31)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_25F212094(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v4 >= *v6)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 2;
    v5 -= 2;
    v18 = v14;
    do
    {
      v19 = v5 + 2;
      v20 = *(v18 - 2);
      v18 -= 2;
      if (*v17 >= v20)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 2, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v21 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

unint64_t sub_25F2122A0()
{
  result = qword_27FD54CD8;
  if (!qword_27FD54CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54CD8);
  }

  return result;
}

unint64_t sub_25F2122F4()
{
  result = qword_27FD54CE8;
  if (!qword_27FD54CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54CE8);
  }

  return result;
}

unint64_t sub_25F212348()
{
  result = qword_27FD54CF0;
  if (!qword_27FD54CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54CF0);
  }

  return result;
}

unint64_t sub_25F2123A0()
{
  result = qword_27FD54CF8;
  if (!qword_27FD54CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54CF8);
  }

  return result;
}

unint64_t sub_25F212404()
{
  result = qword_27FD54D00;
  if (!qword_27FD54D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54D00);
  }

  return result;
}

unint64_t sub_25F21245C()
{
  result = qword_27FD54D08;
  if (!qword_27FD54D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54D08);
  }

  return result;
}

uint64_t sub_25F21251C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for DispatchScheduler.Deadline(uint64_t a1)
{
  result = qword_27FD54D38;
  if (!qword_27FD54D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25F2125C0()
{
  result = qword_27FD54D18;
  if (!qword_27FD54D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54D18);
  }

  return result;
}

unint64_t sub_25F212618()
{
  result = qword_27FD54D20;
  if (!qword_27FD54D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54D20);
  }

  return result;
}

unint64_t sub_25F212670()
{
  result = qword_27FD54D28;
  if (!qword_27FD54D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54D28);
  }

  return result;
}

unint64_t sub_25F2126C4()
{
  result = qword_27FD54D30;
  if (!qword_27FD54D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54D30);
  }

  return result;
}

uint64_t sub_25F2127B4(uint64_t a1)
{
  result = sub_25F30498C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F2128DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CrashReport.ID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F212940(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C48, &qword_25F308100);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_25F2129B0()
{
  result = qword_27FD54D48;
  if (!qword_27FD54D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54D48);
  }

  return result;
}

unint64_t sub_25F212A04()
{
  result = qword_27FD54D50;
  if (!qword_27FD54D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54D50);
  }

  return result;
}

__uint64_t static NSThread.currentID.getter()
{
  v1[1] = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  pthread_threadid_np(0, v1);
  return v1[0];
}

uint64_t InvalidationTrace.appending(link:)@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[7];
  v26 = a1[6];
  v27[0] = v4;
  *(v27 + 9) = *(a1 + 121);
  v5 = a1[3];
  v22 = a1[2];
  v23 = v5;
  v6 = a1[5];
  v24 = a1[4];
  v25 = v6;
  v7 = a1[1];
  v20 = *a1;
  v21 = v7;
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD54D58, &qword_25F30D4B0);
  inited = swift_initStackObject();
  inited[1] = xmmword_25F3077D0;
  v10 = v21;
  inited[2] = v20;
  v12 = v23;
  v11 = v24;
  v13 = v22;
  inited[3] = v10;
  inited[4] = v13;
  v14 = *(v27 + 9);
  v16 = v26;
  v15 = v27[0];
  inited[7] = v25;
  inited[8] = v16;
  inited[9] = v15;
  *(inited + 153) = v14;
  inited[5] = v12;
  inited[6] = v11;
  v19 = v8;

  sub_25F212BF4(&v20, v18);
  result = sub_25F1BA3D4(inited);
  *a2 = v19;
  return result;
}

PreviewsFoundationOS::InvalidationTrace __swiftcall InvalidationTrace.appending(links:)(Swift::OpaquePointer links)
{
  v3 = v1;
  v6 = *v2;

  result.links._rawValue = sub_25F1BA3D4(v4);
  *v3 = v6;
  return result;
}

uint64_t InvalidationTrace.description.getter()
{
  v1 = *v0;
  v41 = 0;
  v42 = 0xE000000000000000;
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = (v1 + 144 * v2 - 112);
  do
  {
    v31 = *v4;
    v5 = v4[1];
    v6 = v4[2];
    v7 = v4[4];
    v34 = v4[3];
    v35 = v7;
    v32 = v5;
    v33 = v6;
    v8 = v4[5];
    v9 = v4[6];
    v10 = v4[7];
    *(v38 + 9) = *(v4 + 121);
    v37 = v9;
    v38[0] = v10;
    v36 = v8;
    *&v25 = v3;
    sub_25F212BF4(&v31, &v28);
    *&v28 = sub_25F3064DC();
    *(&v28 + 1) = v11;
    MEMORY[0x25F8D7130](8250, 0xE200000000000000);
    MEMORY[0x25F8D7130](v28, *(&v28 + 1));

    v39[6] = v37;
    v40[0] = v38[0];
    *(v40 + 9) = *(v38 + 9);
    v39[2] = v33;
    v39[3] = v34;
    v39[4] = v35;
    v39[5] = v36;
    v39[0] = v31;
    v39[1] = v32;
    if (sub_25F21308C(v39) == 1)
    {
      v12 = sub_25F1A5DA8(v39);
      v24[0] = *v12;
      v24[1] = *(v12 + 8);
      sub_25F212BF4(&v31, &v28);
      MEMORY[0x25F8D7130](10, 0xE100000000000000);
      MEMORY[0x25F8D7130](v24[0], v24[1]);

      v25 = *(v12 + 16);
      v26 = *(v12 + 32);
      v27[0] = *(v12 + 48);
      *(v27 + 9) = *(v12 + 57);
      if (*(v12 + 73))
      {
        sub_25F213098(&v31);
        if (v2 == 1)
        {
          return v41;
        }

        goto LABEL_12;
      }

      *&v28 = 0;
      *(&v28 + 1) = 0xE000000000000000;
      sub_25F305FAC();

      strcpy(v24, "   Callsite: ");
      HIWORD(v24[1]) = -4864;
      v28 = v25;
      v29 = v26;
      v30[0] = v27[0];
      *(v30 + 9) = *(v27 + 9);
      v22 = Callsite.description.getter();
      MEMORY[0x25F8D7130](v22);

      MEMORY[0x25F8D7130](10, 0xE100000000000000);
      v20 = v24[0];
      v21 = v24[1];
    }

    else
    {
      v13 = sub_25F1A5DA8(v39);
      v14 = v13;
      if (v13[1])
      {
        v15 = *v13;
        *&v28 = 91;
        *(&v28 + 1) = 0xE100000000000000;
        MEMORY[0x25F8D7130](v15);
        MEMORY[0x25F8D7130](8285, 0xE200000000000000);
        MEMORY[0x25F8D7130](v28, *(&v28 + 1));
      }

      *&v28 = 0;
      *(&v28 + 1) = 0xE000000000000000;
      sub_25F305FAC();

      strcpy(&v25, "Initialized: ");
      HIWORD(v25) = -4864;
      v16 = v14[2];
      v28 = v14[1];
      v29 = v16;
      v30[0] = v14[3];
      *(v30 + 9) = *(v14 + 57);
      v17 = Callsite.description.getter();
      MEMORY[0x25F8D7130](v17);

      MEMORY[0x25F8D7130](10, 0xE100000000000000);
      MEMORY[0x25F8D7130](v25, *(&v25 + 1));

      *&v28 = 0;
      *(&v28 + 1) = 0xE000000000000000;
      sub_25F305FAC();

      *&v25 = 0xD000000000000010;
      *(&v25 + 1) = 0x800000025F318580;
      v18 = v14[6];
      v28 = v14[5];
      v29 = v18;
      v30[0] = v14[7];
      *(v30 + 9) = *(v14 + 121);
      v19 = Callsite.description.getter();
      MEMORY[0x25F8D7130](v19);

      MEMORY[0x25F8D7130](10, 0xE100000000000000);
      v21 = 0x800000025F318580;
      v20 = 0xD000000000000010;
    }

    MEMORY[0x25F8D7130](v20, v21);
    sub_25F213098(&v31);

    if (v2 == 1)
    {
      return v41;
    }

LABEL_12:
    --v2;
    ++v3;
    v4 -= 9;
  }

  while (v2 <= *(v1 + 16));
  __break(1u);
  return v41;
}

uint64_t static InvalidationTrace.reason(_:callsite:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  v7 = a3[1];
  v15 = *a3;
  v16 = v7;
  *v17 = a3[2];
  *&v17[10] = *(a3 + 42);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD54D58, &qword_25F30D4B0);
  v8 = swift_allocObject();
  v8[1] = xmmword_25F3077D0;
  *&v14 = a1;
  *(&v14 + 1) = a2;
  sub_25F213188(&v14);
  v9 = v20[0];
  v8[8] = v19;
  v8[9] = v9;
  *(v8 + 153) = *(v20 + 9);
  v10 = *v17;
  v8[4] = v16;
  v8[5] = v10;
  v11 = v18;
  v8[6] = *&v17[16];
  v8[7] = v11;
  v12 = v15;
  v8[2] = v14;
  v8[3] = v12;
  *a4 = v8;
}

uint64_t sub_25F213188(uint64_t result)
{
  v1 = *(result + 96) | 0x8000000000000000;
  *(result + 72) &= 0x1FFuLL;
  *(result + 96) = v1;
  return result;
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_25F2131F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72) >> 9;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_25F213248(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 136) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 137) = 1;
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
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 64) = 0;
      *(a1 + 72) = -a2 << 9;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 121) = 0u;
      return result;
    }

    *(a1 + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F2132C8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 96) | (a2 << 63);
  *(result + 72) &= 0x1FFuLL;
  *(result + 96) = v2;
  return result;
}

uint64_t assertUnreachable(_:callsite:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v3 = a3[1];
  v5[0] = *a3;
  v5[1] = v3;
  v6[0] = a3[2];
  *(v6 + 9) = *(a3 + 41);
  return sub_25F213F98(v5);
}

uint64_t assertNoThrow<A>(_:callsite:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  a1();
  v5 = *(*(a2 - 8) + 56);

  return v5(a3, 0, 1, a2);
}

uint64_t assertTrue(_:callsite:)(uint64_t (*a1)(void), uint64_t a2, _OWORD *a3)
{
  v4 = a1();
  if ((v4 & 1) == 0)
  {
    v5 = a3[1];
    v7[0] = *a3;
    v7[1] = v5;
    v8[0] = a3[2];
    *(v8 + 9) = *(a3 + 41);
    sub_25F213F98(v7);
  }

  return v4 & 1;
}

uint64_t sub_25F2134E4(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a6(a1, a2, a4, a5);
  if ((v7 & 1) == 0)
  {
    v8 = a3[1];
    v10[0] = *a3;
    v10[1] = v8;
    v11[0] = a3[2];
    *(v11 + 9) = *(a3 + 41);
    sub_25F213F98(v10);
  }

  return v7 & 1;
}

uint64_t assertIdentical<A>(_:to:callsite:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  if (a1)
  {
    if (a1 == a2)
    {
      return 1;
    }
  }

  else if (!a2)
  {
    return 1;
  }

  v9 = v3;
  v10 = v4;
  v6 = a3[1];
  v7[0] = *a3;
  v7[1] = v6;
  v8[0] = a3[2];
  *(v8 + 9) = *(a3 + 41);
  sub_25F213F98(v7);
  return 0;
}

uint64_t assertUnreachable(callsite:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v4[0] = a1[2];
  *(v4 + 9) = *(a1 + 41);
  return sub_25F213F98(v3);
}

uint64_t assertNil<A>(_:_:callsite:)(uint64_t a1, void (*a2)(uint64_t, void, uint64_t, __int128 *, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v10 = a4[1];
  v12[0] = *a4;
  v12[1] = v10;
  v13[0] = a4[2];
  *(v13 + 9) = *(a4 + 41);
  a2(a1, a2, a3, a4, a5, a6, a7, a8);
  LOBYTE(v8) = sub_25F2141A8(a1, v12, v8);

  return v8 & 1;
}

uint64_t assertEmpty<A>(_:callsite:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_25F3057EC();
  if ((v5 & 1) == 0)
  {
    v6 = a2[1];
    v8[0] = *a2;
    v8[1] = v6;
    v9[0] = a2[2];
    *(v9 + 9) = *(a2 + 41);
    sub_25F213F98(v8);
  }

  return v5 & 1;
}

uint64_t assertCast<A>(_:to:callsite:)@<X0>(uint64_t a1@<X0>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  IsCastableTo = type metadata accessor for IsCastableTo(0, a4, a3, a4);
  WitnessTable = swift_getWitnessTable();

  return assertPredicate<A>(_:predicate:callsite:)(a1, a3, IsCastableTo, WitnessTable, x8_0);
}

uint64_t assertPredicate<A>(_:predicate:callsite:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_25F305C1C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v19 - v13;
  v15 = a2[1];
  v21 = *a2;
  v22 = v15;
  v23[0] = a2[2];
  *(v23 + 9) = *(a2 + 41);
  (*(a4 + 24))(a1, a3, a4);
  v16 = *(AssociatedTypeWitness - 8);
  if ((*(v16 + 48))(v14, 1, AssociatedTypeWitness) == 1)
  {
    (*(v12 + 8))(v14, v11);
    v19[0] = v21;
    v19[1] = v22;
    v20[0] = v23[0];
    *(v20 + 9) = *(v23 + 9);
    sub_25F213F98(v19);
    v17 = 1;
  }

  else
  {
    (*(v16 + 32))(a5, v14, AssociatedTypeWitness);
    v17 = 0;
  }

  return (*(v16 + 56))(a5, v17, 1, AssociatedTypeWitness);
}

uint64_t static IsCastableTo.isSatisfied(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_25F1B7118(a1, &v7);
  v5 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v5 ^ 1u, 1, a2);
}

uint64_t assertInhabit<A>(_:callsite:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = type metadata accessor for Inhabited(0, a3, *(a4 + 8), a4);
  WitnessTable = swift_getWitnessTable();

  return assertPredicate<A>(_:wrapper:callsite:)(a1, a2, v8, WitnessTable, a5);
}

uint64_t assertPredicate<A>(_:wrapper:callsite:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v11 = sub_25F305C1C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18[-v13];
  v15 = swift_checkMetadataState();
  assertPredicate<A>(_:predicate:callsite:)(a1, a2, v15, AssociatedConformanceWitness, v14);
  v19 = a3;
  v20 = a4;
  v21 = a1;
  sub_25F20977C(sub_25F214330, v18, MEMORY[0x277D84A98], a3, v16, a5);
  return (*(v12 + 8))(v14, v11);
}

uint64_t assertUnwrap<A>(_:callsite:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  IsSome = type metadata accessor for IsSome(0, a3, a3, a5);
  WitnessTable = swift_getWitnessTable();

  return assertPredicate<A>(_:predicate:callsite:)(a1, a2, IsSome, WitnessTable, a4);
}

uint64_t static IsSome.isSatisfied(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25F305C1C();
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  (*(v9 + 16))(&v13 - v7, a1);
  v10 = *(a2 - 8);
  v11 = 1;
  if ((*(v10 + 48))(v8, 1, a2) != 1)
  {
    (*(v10 + 32))(a3, v8, a2);
    v11 = 0;
  }

  return (*(v10 + 56))(a3, v11, 1, a2);
}

uint64_t sub_25F213E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for Predicated(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v15 - v12;
  static Predicated.unverified(value:proof:)(a2, a1, AssociatedTypeWitness, AssociatedConformanceWitness, v15 - v12);
  return (*(a4 + 24))(v13, a3, a4);
}

uint64_t assertMainThread(callsite:)(_OWORD *a1)
{
  result = [objc_opt_self() isMainThread];
  if ((result & 1) == 0)
  {
    v3 = a1[1];
    v4[0] = *a1;
    v4[1] = v3;
    v5[0] = a1[2];
    *(v5 + 9) = *(a1 + 41);
    return sub_25F213F98(v4);
  }

  return result;
}

uint64_t sub_25F213F98(uint64_t *a1)
{
  type metadata accessor for CoreAnalyticsLogger();
  inited = swift_initStackObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD54E60, &unk_25F30D660);
  v2 = swift_initStackObject();
  *(v2 + 20) = 0;
  *(v2 + 16) = 2;
  *(inited + 16) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53900, qword_25F309890);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_25F3077D0;
  *(v3 + 32) = 1701603686;
  *(v3 + 40) = 0xE400000000000000;
  sub_25F305FFC();
  v4 = sub_25F304DDC();

  v5 = [v4 lastPathComponent];

  v6 = sub_25F304E0C();
  v8 = v7;

  MEMORY[0x25F8D7130](58, 0xE100000000000000);
  v9 = sub_25F3064DC();
  MEMORY[0x25F8D7130](v9);

  MEMORY[0x25F8D7130](58, 0xE100000000000000);
  v10 = sub_25F3064DC();
  MEMORY[0x25F8D7130](v10);

  *(v3 + 48) = v6;
  *(v3 + 56) = v8;
  *(v3 + 64) = 0;
  v11 = sub_25F1B57B0(v3);
  swift_setDeallocating();
  sub_25F1D4B20(v3 + 32);
  v12._countAndFlagsBits = 0x6573734174666F73;
  v12._object = 0xEA00000000007472;
  CoreAnalyticsLogger.logEvent(identifierSuffix:fields:)(v12, v11);
}

BOOL sub_25F2141A8(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = sub_25F305C1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - v8;
  v10 = a2[1];
  v15 = *a2;
  v16 = v10;
  v17[0] = a2[2];
  *(v17 + 9) = *(a2 + 41);
  (*(v7 + 16))(v13 - v8, a1, v6);
  v11 = (*(*(a3 - 8) + 48))(v9, 1, a3);
  (*(v7 + 8))(v9, v6);
  if (v11 != 1)
  {
    v13[0] = v15;
    v13[1] = v16;
    v14[0] = v17[0];
    *(v14 + 9) = *(v17 + 9);
    sub_25F213F98(v13);
  }

  return v11 == 1;
}

double Continuation.init(callsite:initializationInfo:failureMode:resume:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v18 = *(a4 + 16);
  v22 = *a4;
  v23 = v18;
  v19 = swift_allocObject();
  v19[2] = a7;
  v19[3] = a8;
  v19[4] = a10;
  v19[5] = a5;
  v19[6] = a6;
  Continuation.init(callsite:initializationInfo:failureMode:resume:)(a1, a2, a3, &v22, sub_25F214A38, v19, a7, a8, &v24, a10);
  v20 = v25;
  result = *&v24;
  *a9 = v24;
  *(a9 + 16) = v20;
  return result;
}

uint64_t Continuation.resume(with:callsite:)(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v6[0] = a2[2];
  *(v6 + 9) = *(a2 + 41);
  return (*v2)(v5, a1);
}

uint64_t Continuation.resume(returning:callsite:)(uint64_t a1, _OWORD *a2, void *a3)
{
  v6 = a3[2];
  v7 = sub_25F30678C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - v9;
  v11 = a2[1];
  v14[0] = *a2;
  v14[1] = v11;
  v15[0] = a2[2];
  *(v15 + 9) = *(a2 + 41);
  v12 = *v3;
  (*(*(v6 - 8) + 16))(v14 - v9, a1, v6);
  swift_storeEnumTagMultiPayload();
  v12(v14, v10);
  return (*(v8 + 8))(v10, v7);
}

uint64_t Continuation.resume(throwing:callsite:)(uint64_t a1, _OWORD *a2, void *a3)
{
  v6 = a3[3];
  v7 = sub_25F30678C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - v9;
  v11 = a2[1];
  v14[0] = *a2;
  v14[1] = v11;
  v15[0] = a2[2];
  *(v15 + 9) = *(a2 + 41);
  v12 = *v3;
  (*(*(v6 - 8) + 16))(v14 - v9, a1, v6);
  swift_storeEnumTagMultiPayload();
  v12(v14, v10);
  return (*(v8 + 8))(v10, v7);
}

uint64_t Continuation.init(callsite:initializationInfo:failureMode:resume:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void (**a9)(__int128 *a1, uint64_t a2)@<X8>, uint64_t a10)
{
  v15 = *a4;
  v16 = a4[1];
  v17 = *(a4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54EE8, &unk_25F30D6E0);
  v18 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD54EF0, &qword_25F310F30);
  v19 = swift_allocObject();
  *(v19 + 76) = 0;
  *(v19 + 73) = 0;
  *(v18 + 152) = v19;
  v20 = a1[1];
  *(v18 + 16) = *a1;
  *(v18 + 32) = v20;
  *(v18 + 48) = a1[2];
  *(v18 + 57) = *(a1 + 41);
  *(v18 + 80) = a2;
  *(v18 + 88) = a3;
  *(v18 + 96) = v15;
  *(v18 + 104) = v16;
  *(v18 + 112) = v17;
  strcpy((v18 + 120), "Continuation");
  *(v18 + 133) = 0;
  *(v18 + 134) = -5120;
  *(v18 + 136) = 0x64656D75736572;
  *(v18 + 144) = 0xE700000000000000;
  v21 = swift_allocObject();
  *(v21 + 2) = a7;
  *(v21 + 3) = a8;
  *(v21 + 4) = a10;
  *(v21 + 5) = v18;
  *(v21 + 6) = a5;
  *(v21 + 7) = a6;
  *a9 = sub_25F214A64;
  a9[1] = v21;
  a9[2] = v18;
}

void sub_25F21494C(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *, uint64_t))
{
  v6 = a1[1];
  v10 = *a1;
  v11 = v6;
  v12[0] = a1[2];
  *(v12 + 9) = *(a1 + 41);
  v7 = *(a3 + 152);
  os_unfair_lock_lock(v7 + 19);
  sub_25F1D3EBC(&v7[4], v8);
  os_unfair_lock_unlock(v7 + 19);
  if ((v8[0] & 1) == 0)
  {
    v8[0] = v10;
    v8[1] = v11;
    v9[0] = v12[0];
    *(v9 + 9) = *(v12 + 9);
    a4(v8, a2);
  }
}

double Continuation.init(callsite:initializationInfo:failureMode:wrapping:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  v26 = a2;
  v27 = a3;
  v28 = a9;
  v15 = sub_25F30542C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v25 - v17;
  v19 = a1[1];
  v31[0] = *a1;
  v31[1] = v19;
  v32[0] = a1[2];
  *(v32 + 9) = *(a1 + 41);
  LOBYTE(v17) = *(a4 + 16);
  v29 = *a4;
  v30 = v17;
  (*(v16 + 16))(v18, a5, v15);
  v20 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = a6;
  *(v21 + 3) = a7;
  *(v21 + 4) = a8;
  (*(v16 + 32))(&v21[v20], v18, v15);
  Continuation.init(callsite:initializationInfo:failureMode:resume:)(v31, v26, v27, &v29, sub_25F214C58, v21, a6, a7, &v33, a8);
  (*(v16 + 8))(a5, v15);
  v22 = v34;
  result = *&v33;
  v24 = v28;
  *v28 = v33;
  *(v24 + 2) = v22;
  return result;
}

uint64_t Continuation.resume(callsite:with:)(_OWORD *a1)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v5[0] = a1[2];
  *(v5 + 9) = *(a1 + 41);
  return (*v1)(v4);
}

uint64_t Continuation.resume<>(callsite:)(_OWORD *a1, uint64_t a2)
{
  v4 = sub_25F30678C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  v12[0] = a1[2];
  *(v12 + 9) = *(a1 + 41);
  v9 = *v2;
  static Result<>.success.getter();
  v9(v11, v7);
  return (*(v5 + 8))(v7, v4);
}

double static Continuation.noop.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v14 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Continuation.swift";
  *(&v14 + 1) = 124;
  v15 = 2;
  v16 = xmmword_25F30D6D0;
  v17 = "noop";
  v18 = 4;
  v19 = 2;
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  default argument 2 of Continuation.init(callsite:initializationInfo:failureMode:resume:)(&v12);
  v10 = v12;
  v11 = v13;
  return Continuation.init(callsite:initializationInfo:failureMode:resume:)(&v14, 0, 0, &v10, nullsub_2, v8, a1, a2, a4, a3);
}

uint64_t sub_25F214F30@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (**a8)(__int128 *a1, uint64_t a2)@<X8>)
{
  v13 = *v8;
  v12 = v8[1];
  v14 = v8[2];
  v21 = *(v14 + 80);
  v20 = *(v14 + 88);
  v16 = *(v14 + 104);
  v17 = *(v14 + 112);
  v29[0] = *(v14 + 96);
  v15 = v29[0];
  v29[1] = v16;
  v30 = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = *(a4 + 16);
  *(v18 + 32) = a5;
  *(v18 + 40) = a6;
  *(v18 + 48) = *(a4 + 32);
  *(v18 + 56) = a7;
  *(v18 + 64) = v13;
  *(v18 + 72) = v12;
  *(v18 + 80) = v14;
  *(v18 + 88) = a2;
  *(v18 + 96) = a3;
  sub_25F1D2078(v21, v20);
  sub_25F1D2054(v15, v16, v17);

  return Continuation.init(callsite:initializationInfo:failureMode:resume:)(a1, v21, v20, v29, sub_25F21572C, v18, a5, a6, a8, a7);
}

uint64_t sub_25F21505C(_OWORD *a1, uint64_t a2, void (*a3)(_OWORD *, char *), uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = sub_25F30678C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v22 - v18;
  v20 = a1[1];
  v22[0] = *a1;
  v22[1] = v20;
  v23[0] = a1[2];
  *(v23 + 9) = *(a1 + 41);
  a6(a2);
  a3(v22, v19);
  return (*(v17 + 8))(v19, v16);
}

uint64_t Continuation.contramap<A>(callsite:transform:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void (**a6)(__int128 *a1, uint64_t a2)@<X8>)
{
  v12 = a1[1];
  v18[0] = *a1;
  v18[1] = v12;
  v19[0] = a1[2];
  *(v19 + 9) = *(a1 + 41);
  v13 = *(v6 + 16);
  v19[2] = *v6;
  v20 = v13;
  v14 = swift_allocObject();
  v15 = a4[3];
  v14[2] = a4[2];
  v14[3] = v15;
  v16 = a4[4];
  v14[4] = a5;
  v14[5] = v16;
  v14[6] = a2;
  v14[7] = a3;

  sub_25F214F30(v18, sub_25F21528C, v14, a4, a5, v15, v16, a6);
}

uint64_t sub_25F21528C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = sub_25F30678C();
  return sub_25F2B722C(v3, v4, a1);
}

uint64_t Continuation.contramapError<A>(callsite:transform:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (**a7)(__int128 *a1, uint64_t a2)@<X8>)
{
  v14 = a1[1];
  v20[0] = *a1;
  v20[1] = v14;
  v21[0] = a1[2];
  *(v21 + 9) = *(a1 + 41);
  v15 = *(v7 + 16);
  v21[2] = *v7;
  v22 = v15;
  v16 = swift_allocObject();
  v19 = *(a4 + 16);
  *(v16 + 16) = v19;
  v17 = *(a4 + 32);
  *(v16 + 32) = a5;
  *(v16 + 40) = v17;
  *(v16 + 48) = a6;
  *(v16 + 56) = a2;
  *(v16 + 64) = a3;

  sub_25F214F30(v20, sub_25F215504, v16, a4, v19, a5, a6, a7);
}

uint64_t sub_25F2153F8@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t x8_0@<X8>)
{
  v12 = sub_25F30678C();
  MEMORY[0x28223BE20](v12);
  (*(v14 + 16))(&v16 - v13, a1, v12);
  return sub_25F2848D4(a2, v12, x8_0);
}

uint64_t Continuation.contramapResult<A, B>(callsite:transform:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (**a8)(__int128 *a1, uint64_t a2)@<X8>)
{
  v9 = a1[1];
  v12[0] = *a1;
  v12[1] = v9;
  v13[0] = a1[2];
  *(v13 + 9) = *(a1 + 41);
  v10 = *(v8 + 16);
  v13[2] = *v8;
  v14 = v10;
  return sub_25F214F30(v12, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t Continuation<>.tryContramap<A, B>(callsite:transform:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (**a8)(__int128 *a1, uint64_t a2)@<X8>)
{
  v16 = a1[1];
  v20[0] = *a1;
  v20[1] = v16;
  v21[0] = a1[2];
  *(v21 + 9) = *(a1 + 41);
  v17 = *(v8 + 16);
  v21[2] = *v8;
  v22 = v17;
  v18 = swift_allocObject();
  v18[2] = *(a4 + 16);
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v18[6] = a2;
  v18[7] = a3;

  sub_25F214F30(v20, sub_25F215674, v18, a4, a5, a6, a7, a8);
}

uint64_t sub_25F215674@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v5 = v1[6];
  v4 = v1[7];
  v6 = sub_25F30678C();
  return Result.tryMap<A>(_:)(v5, v4, v6, v3, a1);
}

uint64_t sub_25F2156D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void static TimeoutError.defaultError@Sendable (_:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

uint64_t Future.timeout(dsoHandle:file:line:column:function:after:timeoutError:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  v33 = a12;
  v34 = a11;
  v20 = sub_25F30491C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v36 = a3;
  *(&v36 + 1) = a4;
  v37 = a5;
  v38 = a6;
  v39 = a7;
  v40 = a8;
  v41 = a9;
  v42 = a10;
  v25 = v24;
  (*(v21 + 104))(v23, *MEMORY[0x277D851B0]);
  v35[3] = &type metadata for SimpleTimeoutTimer;
  v35[4] = &protocol witness table for SimpleTimeoutTimer;
  sub_25F1F54F4();
  v26 = sub_25F305ADC();
  type metadata accessor for DelayedInvocation();
  v27 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54F78, &qword_25F30D7A0);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54F80, &qword_25F30D7A8);
  v29 = swift_allocObject();
  *(v29 + 44) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = 0;
  *(v29 + 16) = nullsub_2;
  *(v29 + 40) = 1;
  *(v28 + 24) = v29;
  (*(v21 + 8))(v23, v25);
  *(v27 + 16) = v28;
  v35[0] = v27;
  *&v35[1] = a1;
  v30 = Future.timeout(callsite:using:timeoutError:)(&v36, v35, v34, v33);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return v30;
}

uint64_t Future.timeout(callsite:using:timeoutError:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = a1[1];
  v13[0] = *a1;
  v13[1] = v9;
  v14[0] = a1[2];
  *(v14 + 9) = *(a1 + 41);
  type metadata accessor for TimeoutFuture(0, *(v8 + 80), a3, a4);
  sub_25F1BF03C(a2, v12);
  swift_allocObject();

  v10 = sub_25F216D54(v13, v4, v12, a3, a4);

  return v10;
}

uint64_t (*static TimeoutError.timedOut(waitingFor:)(uint64_t a1, uint64_t a2))@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  return sub_25F216F3C;
}

uint64_t TimeoutError.highValueTitle.getter()
{
  if (*(v0 + 24) == 1)
  {
    v2 = *(v0 + 8);
    v1 = *(v0 + 16);
    sub_25F305FAC();
    MEMORY[0x25F8D7130](0xD000000000000016, 0x800000025F318650);
    MEMORY[0x25F8D7130](v2, v1);
    v3 = 0x20726574666120;
    v4 = 0xE700000000000000;
  }

  else
  {
    sub_25F305FAC();
    v4 = 0x800000025F318630;
    v3 = 0xD000000000000010;
  }

  MEMORY[0x25F8D7130](v3, v4);
  sub_25F30561C();
  MEMORY[0x25F8D7130](0x73646E6F63657320, 0xE90000000000002ELL);
  return 0;
}

uint64_t Future.flattened<A>()()
{
  v1 = *v0;
  v2 = swift_allocObject();
  v3 = *(*(v1 + 80) + 16);
  *(v2 + 16) = v3;
  v6[0] = 0;
  v6[1] = 0;
  v4 = sub_25F286400("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/TimeoutFuture.swift", 125, 2, 78, 13, "flattened()", 11, 2, v6, sub_25F216F54, v2, v3);

  sub_25F2033DC(v6[0]);
  return v4;
}

uint64_t sub_25F215D10@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v5 = sub_25F30678C();
  v6 = sub_25F30678C();
  MEMORY[0x28223BE20](v6);
  v8 = (&v11 - v7);
  (*(v9 + 16))(&v11 - v7, a1, v6);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(v5 - 8) + 32))(a3, v8, v5);
  }

  *a3 = *v8;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25F215E84()
{
  v1 = v0;
  v2 = *(*v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v3 = sub_25F30678C();
  v6 = type metadata accessor for FutureTermination(0, v3, v4, v5);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18[-v8];
  v26 = *(v1 + 104);
  *&v20 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/TimeoutFuture.swift";
  *(&v20 + 1) = 125;
  v21 = 2;
  v22 = xmmword_25F30D770;
  v23 = "handleTimeout()";
  v24 = 15;
  v25 = 2;
  v19 = v2;
  type metadata accessor for TimeoutFuture.Activity(255, v2, v10, v11);
  v12 = sub_25F30476C();
  type metadata accessor for Future(255, v2, v13, v14);
  v15 = sub_25F305C1C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v20, sub_25F217428, v18, v12, v15, WitnessTable);

  if (v27)
  {
    *v9 = (*(v1 + 112))(result);
    swift_storeEnumTagMultiPayload();
    sub_25F2EA104(v9);
    (*(v7 + 8))(v9, v6);
    sub_25F2ECD6C("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/TimeoutFuture.swift", 125, 2, 143, 33, "handleTimeout()", 15, 2);
  }

  return result;
}

uint64_t sub_25F2160E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  v5 = *(*v4 + 200);
  v6 = type metadata accessor for FutureTermination(0, v5, a3, a4);
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v25 = sub_25F30678C();
  v26 = type metadata accessor for FutureTermination(0, v25, v9, v10);
  v11 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v13 = (&v25 - v12);
  *&v31 = v4[13];
  *&v33 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/TimeoutFuture.swift";
  *(&v33 + 1) = 125;
  v34 = 2;
  v35 = xmmword_25F30D780;
  v36 = "receiveUnderlyingFinish(_:)";
  v37 = 27;
  v38 = 2;
  v30 = v5;
  type metadata accessor for TimeoutFuture.Activity(255, v5, v14, v15);
  v16 = sub_25F30476C();

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD550A0, &unk_25F30D9E0);
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v33, sub_25F217328, v29, v16, v17, WitnessTable);

  sub_25F217344(v39, &v31);
  if (v32)
  {
    v19 = sub_25F1A42F8(&v31, &v33);
    MEMORY[0x28223BE20](v19);
    *(&v25 - 2) = v5;
    v20 = v27;
    FutureTermination.map<A>(_:)(sub_25F21741C, (&v25 - 4), v6, v25, v13);
    sub_25F2EA104(v13);
    (*(v11 + 8))(v13, v26);
    v21 = v28;
    (*(v28 + 16))(v8, v20, v6);
    if (swift_getEnumCaseMultiPayload() >= 2)
    {
      v24 = v35;
      __swift_project_boxed_opaque_existential_1(&v33, v35);
      (*(*(&v24 + 1) + 32))(v24, *(&v24 + 1));
    }

    else
    {
      (*(v21 + 8))(v8, v6);
      v22 = v35;
      __swift_project_boxed_opaque_existential_1(&v33, v35);
      (*(*(&v22 + 1) + 24))(v22, *(&v22 + 1));
    }

    sub_25F2173B4(v39);
    return __swift_destroy_boxed_opaque_existential_1(&v33);
  }

  else
  {
    sub_25F2173B4(v39);
    return sub_25F2173B4(&v31);
  }
}

double sub_25F2164D0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for TimeoutFuture.Activity(0, a2, a4, a5);
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v11, a1, v7);
  v9 = *(v8 + 8);
  if (v11)
  {
    v9(a1, v7);

    sub_25F1A42F8(&v12, a3);
    result = 0.0;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
  }

  else
  {
    v9(&v11, v7);
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_25F2165E8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v5 = sub_25F30678C();
  (*(*(v5 - 8) + 16))(a3, a1, v5);
  sub_25F30678C();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25F2166BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for TimeoutFuture.Activity(0, a2, a4, a5);
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v12, a1, v7);
  v9 = *(v8 + 8);
  if (v12)
  {
    v9(a1, v7);
    v10 = v12;
    result = __swift_destroy_boxed_opaque_existential_1(v13);
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
  }

  else
  {
    result = (v9)(&v12, v7);
    v10 = 0;
  }

  *a3 = v10;
  return result;
}

uint64_t sub_25F2167C8(__int128 *a1)
{
  v2 = v1;
  v4 = *(*v1 + 200);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v5 = sub_25F30678C();
  v8 = type metadata accessor for FutureTermination(0, v5, v6, v7);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v28 - v10);
  v12 = a1[1];
  v36 = *a1;
  v37 = v12;
  v38[0] = a1[2];
  *(v38 + 9) = *(a1 + 41);
  v30[0] = *(v2 + 104);
  *&v33 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/TimeoutFuture.swift";
  *(&v33 + 1) = 125;
  LOBYTE(v34[0]) = 2;
  *(v34 + 8) = xmmword_25F30D790;
  *(&v34[1] + 1) = "cancel(callsite:)";
  *&v34[2] = 17;
  BYTE8(v34[2]) = 2;
  v29[2] = v4;
  type metadata accessor for TimeoutFuture.Activity(255, v4, v13, v14);
  v15 = sub_25F30476C();
  type metadata accessor for Future(255, v4, v16, v17);

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD55098, &qword_25F30D9D8);
  swift_getTupleTypeMetadata2();
  v18 = sub_25F305C1C();
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v33, sub_25F21729C, v29, v15, v18, WitnessTable);

  v20 = *(v18 - 8);
  (*(v20 + 16))(&v33, v35, v18);
  v21 = v33;
  if (v33)
  {
    sub_25F1A42F8((&v33 + 8), v30);
    v28[1] = v2;
    v22 = v9;
    v23 = v31;
    v24 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    (*(v24 + 32))(v23, v24);
    v33 = v36;
    v34[0] = v37;
    v34[1] = v38[0];
    *(&v34[1] + 9) = *(v38 + 9);
    (*(*v21 + 192))(&v33);
    v25 = v37;
    *v11 = v36;
    v11[1] = v25;
    v11[2] = v38[0];
    *(v11 + 41) = *(v38 + 9);
    swift_storeEnumTagMultiPayload();
    sub_25F2EA104(v11);

    (*(v22 + 8))(v11, v8);
    (*(v20 + 8))(v35, v18);
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    v27 = *(v20 + 8);
    v27(v35, v18);
    return v27(&v33, v18);
  }
}

double sub_25F216B80@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for TimeoutFuture.Activity(0, a2, a4, a5);
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v12, a1, v7);
  v9 = *(v8 + 8);
  if (v12)
  {
    v9(a1, v7);
    v10 = v12;
    sub_25F1A42F8(&v13, v14);
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
    *a3 = v10;
    sub_25F1A42F8(v14, a3 + 8);
  }

  else
  {
    v9(&v12, v7);
    result = 0.0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t sub_25F216CA4()
{
}

uint64_t sub_25F216CD4()
{
  v0 = Future.deinit();

  return v0;
}

uint64_t sub_25F216D0C()
{
  v0 = sub_25F216CD4();

  return MEMORY[0x2821FE8D8](v0, 128, 7);
}

uint64_t sub_25F216D54(_OWORD *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v10 = a1[1];
  v25[0] = *a1;
  v25[1] = v10;
  v26[0] = a1[2];
  *(v26 + 9) = *(a1 + 41);
  *&v24[0] = a2;
  sub_25F1BF03C(a3, v24 + 8);
  v13 = type metadata accessor for TimeoutFuture.Activity(0, *(v9 + 200), v11, v12);

  v14 = sub_25F203E0C(v24, v13);
  (*(*(v13 - 8) + 8))(v24, v13);
  v5[13] = v14;
  sub_25F1BF03C(a3, v24);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  sub_25F1A42F8(v24, v15 + 32);
  v5[14] = sub_25F2172B8;
  v5[15] = v15;

  v19 = sub_25F2E95EC(v25, v16, v17, v18);
  v20 = a3[3];
  v21 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v20);
  v22 = *(v21 + 16);
  swift_retain_n();
  v22(sub_25F217424, v19, v20, v21);

  Future.observeFinish(_:)(sub_25F217324, v19);

  __swift_destroy_boxed_opaque_existential_1(a3);
  return v19;
}

uint64_t sub_25F216F3C@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  *a1 = a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = 1;
}

unint64_t sub_25F216F5C(uint64_t a1)
{
  *(a1 + 8) = sub_25F216F8C();
  result = sub_25F216FE0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25F216F8C()
{
  result = qword_27FD54F88;
  if (!qword_27FD54F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54F88);
  }

  return result;
}

unint64_t sub_25F216FE0()
{
  result = qword_27FD54F90[0];
  if (!qword_27FD54F90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD54F90);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_25F217058(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25F2170A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_25F217158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_20PreviewsFoundationOS13TimeoutFuture33_B9CCDE377477361FA468F62884FDE69CLLC8ActivityOyx_G(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25F2171AC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F2171FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
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

uint64_t sub_25F217258(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_25F2172B8()
{
  v1 = v0[2];
  v2 = v0[7];
  v3 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v2);
  v4 = (*(v3 + 8))(v2, v3);
  return v1(v4);
}

uint64_t sub_25F217344(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD550A0, &unk_25F30D9E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F2173B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD550A0, &unk_25F30D9E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F217478(uint64_t a1, uint64_t a2)
{
  v3 = sub_25F2174E0();
  v4 = *(v2 + 8);

  return v4(v3);
}

uint64_t sub_25F2174E0()
{
  v15 = sub_25F3044DC();
  v1 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  v17 = MEMORY[0x277D84F90];
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 56);
  v8 = (v5 + 63) >> 6;
  v14[1] = v1 + 16;
  v9 = (v1 + 8);

  for (i = 0; v7; i = v11)
  {
    v11 = i;
    v12 = v15;
LABEL_9:
    (*(v1 + 16))(v3, *(v4 + 48) + *(v1 + 72) * (__clz(__rbit64(v7)) | (v11 << 6)), v12);
    sub_25F2176E8(v3, &v16);
    v7 &= v7 - 1;
    (*v9)(v3, v12);
    sub_25F1BA4CC(v16);
  }

  v12 = v15;
  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return v17;
    }

    v7 = *(v4 + 56 + 8 * v11);
    ++i;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  __break(1u);

  (*v9)(v3, v12);

  __break(1u);
  return result;
}

uint64_t sub_25F2176E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v73 = a1;
  v60 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD550A8, &unk_25F30DA80);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v62 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v79 = &v56 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v56 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD550B0, &unk_25F30F330);
  MEMORY[0x28223BE20](v11 - 8);
  v63 = &v56 - v12;
  v13 = sub_25F3044DC();
  v61 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v56 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E28, &unk_25F30DA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F3081E0;
  v20 = *MEMORY[0x277CBE880];
  *(inited + 32) = *MEMORY[0x277CBE880];
  v21 = *MEMORY[0x277CBE8A8];
  *(inited + 40) = *MEMORY[0x277CBE8A8];
  v22 = v20;
  v23 = v21;
  v24 = sub_25F21811C(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();
  v25 = [objc_opt_self() defaultManager];
  v26 = v25;
  v27 = *(v24 + 16);
  v58 = v16;
  if (v27)
  {
    v28 = v25;
    v29 = sub_25F1BAA4C(v27, 0);
    v30 = sub_25F1BEAAC(&v76, v29 + 4, v27, v24);
    v31 = v76;
    v70 = v77;
    v71 = v30;
    v68 = v78;
    v69 = *(&v77 + 1);

    result = sub_25F1BF034(v31);
    if (v71 != v27)
    {
      __break(1u);
      return result;
    }

    v26 = v28;
  }

  v33 = sub_25F3059DC();

  v73 = v33;
  if (v33)
  {
    v70 = (v61 + 48);
    v71 = (v61 + 56);
    v68 = (v61 + 32);
    v65 = (v61 + 8);
    v57 = (v61 + 16);
    v59 = MEMORY[0x277D84F90];
    v34 = v63;
    v67 = v13;
    v69 = v18;
    v66 = v24;
    v72 = v10;
    while (1)
    {
      if ([v73 nextObject])
      {
        sub_25F305DDC();
        swift_unknownObjectRelease();
      }

      else
      {
        v74 = 0u;
        v75 = 0u;
      }

      v76 = v74;
      v77 = v75;
      if (!*(&v75 + 1))
      {

        v55 = v59;
        goto LABEL_29;
      }

      v35 = swift_dynamicCast();
      (*v71)(v34, v35 ^ 1u, 1, v13);
      if ((*v70)(v34, 1, v13) == 1)
      {

        v55 = v59;
        goto LABEL_31;
      }

      v64 = *v68;
      v64(v18, v34, v13);
      sub_25F30442C();
      if (v3)
      {

        v3 = 0;
        v36 = 1;
      }

      else
      {
        v36 = 0;
      }

      v37 = sub_25F30437C();
      v38 = *(v37 - 8);
      (*(v38 + 56))(v10, v36, 1, v37);
      v39 = v79;
      sub_25F218310(v10, v79);
      v40 = *(v38 + 48);
      if (v40(v39, 1, v37) == 1)
      {
        break;
      }

      v41 = v79;
      v42 = sub_25F30435C();
      v43 = *(v38 + 8);
      v43(v41, v37);
      v3 = 0;
      v34 = v63;
      if (v42 == 2 || (v42 & 1) == 0)
      {
        goto LABEL_21;
      }

      v39 = v62;
      sub_25F218310(v72, v62);
      if (v40(v39, 1, v37) == 1)
      {
        break;
      }

      v44 = v62;
      v45 = sub_25F30436C();
      v43(v44, v37);
      if (v45 != 2 && (v45 & 1) != 0)
      {
        v46 = v58;
        v13 = v67;
        (*v57)(v58, v69, v67);
        v47 = v59;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = sub_25F2F0824(0, v47[2] + 1, 1, v47);
        }

        v10 = v72;
        v48 = v47;
        v49 = v47[2];
        v59 = v48;
        v50 = v48[3];
        if (v49 >= v50 >> 1)
        {
          v59 = sub_25F2F0824((v50 > 1), v49 + 1, 1, v59);
        }

        sub_25F1AF698(v10, &qword_27FD550A8, &unk_25F30DA80);
        v51 = v61;
        v52 = v69;
        (*(v61 + 8))(v69, v13);
        v53 = v59;
        v59[2] = v49 + 1;
        v54 = v46;
        v18 = v52;
        v64(&v53[((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v49], v54, v13);
      }

      else
      {
LABEL_21:
        v10 = v72;
        sub_25F1AF698(v72, &qword_27FD550A8, &unk_25F30DA80);
        v18 = v69;
        v13 = v67;
        (*v65)(v69, v67);
      }
    }

    sub_25F1AF698(v39, &qword_27FD550A8, &unk_25F30DA80);
    goto LABEL_21;
  }

  v76 = 0u;
  v77 = 0u;
  v55 = MEMORY[0x277D84F90];
  v34 = v63;
LABEL_29:
  sub_25F1AF698(&v76, &qword_27FD53DF8, &unk_25F30A470);
  (*(v61 + 56))(v34, 1, 1, v13);
LABEL_31:
  result = sub_25F1AF698(v34, &qword_27FD550B0, &unk_25F30F330);
  *v60 = v55;
  return result;
}

uint64_t sub_25F217FB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E60, &unk_25F3084B0);
    v3 = sub_25F305F3C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_25F30671C();

      sub_25F304F0C();
      result = sub_25F30676C();
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
          result = sub_25F30659C();
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

uint64_t sub_25F21811C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD550B8, &unk_25F30DAA0);
    v3 = sub_25F305F3C();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_25F304E0C();
      sub_25F30671C();
      v27 = v7;
      sub_25F304F0C();
      v8 = sub_25F30676C();

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
        v16 = sub_25F304E0C();
        v18 = v17;
        if (v16 == sub_25F304E0C() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_25F30659C();

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

uint64_t sub_25F218310(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD550A8, &unk_25F30DA80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t withCaughtObjectiveCExceptions<A>(perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v50 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v7 = sub_25F30678C();
  v8 = *(v7 - 1);
  v9 = MEMORY[0x28223BE20](v7);
  v36 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v35 = &v34 - v11;
  v41 = sub_25F305C1C();
  v12 = *(v41 - 8);
  v13 = MEMORY[0x28223BE20](v41);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v39 = &v34 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - v18;
  v40 = v8;
  (*(v8 + 56))(&v34 - v18, 1, 1, v7);
  v20 = objc_opt_self();
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = v19;
  v42 = v19;
  v21[4] = a1;
  v21[5] = a2;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_25F218A7C;
  *(v22 + 24) = v21;
  *(&v45 + 1) = sub_25F20DAF8;
  v46 = v22;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v44 = sub_25F218A88;
  *&v45 = &block_descriptor_5;
  v23 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v24 = [v20 perform:v23 error:&aBlock];
  _Block_release(v23);
  v25 = aBlock;
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  if (v24)
  {
    v26 = v41;
    (*(v12 + 16))(v15, v42, v41);
    *&aBlock = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/UVExceptionHandling.swift";
    *(&aBlock + 1) = 131;
    LOBYTE(v44) = 2;
    *(&v44 + 1) = *v49;
    HIDWORD(v44) = *&v49[3];
    v45 = xmmword_25F30DAB0;
    v46 = "withCaughtObjectiveCExceptions(perform:)";
    v47 = 40;
    v48 = 2;
    v27 = v39;
    assertUnwrap<A>(_:callsite:)(v15, &aBlock, v7, v39, v28);
    v29 = *(v12 + 8);
    v29(v15, v26);
    v30 = v40;
    if ((*(v40 + 48))(v27, 1, v7) == 1)
    {
      v29(v27, v26);
      sub_25F218AC8();
      swift_allocError();
      swift_willThrow();
    }

    else
    {
      v31 = v35;
      (*(v30 + 32))(v35, v27, v7);
      (*(v30 + 16))(v36, v31, v7);
      v32 = v38;
      sub_25F218B1C(v7, &aBlock, v37);
      if (!v32)
      {
        (*(v30 + 8))(v31, v7);
        v29(v42, v26);
      }

      (*(v30 + 8))(v31, v7);
    }

    v29(v42, v26);
  }

  else
  {
    sub_25F3043FC();

    swift_willThrow();
    (*(v12 + 8))(v42, v41);
  }
}

uint64_t sub_25F2188F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v8 = sub_25F30678C();
  v9 = sub_25F305C1C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14[-v11];
  v15 = a4;
  v16 = a2;
  v17 = a3;
  sub_25F1BFDA0(sub_25F1C1780, &v14[-v11]);
  (*(*(v8 - 8) + 56))(v12, 0, 1, v8);
  return (*(v10 + 40))(a1, v12, v9);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25F218AC8()
{
  result = qword_27FD550C0;
  if (!qword_27FD550C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD550C0);
  }

  return result;
}

uint64_t sub_25F218B1C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  return swift_willThrowTypedImpl();
}

unint64_t sub_25F218C00()
{
  result = qword_27FD550C8;
  if (!qword_27FD550C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD550C8);
  }

  return result;
}

void *static QueryResolutionsBuilder.buildBlock(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_25F1B5A0C(MEMORY[0x277D84F90]);
  v4 = result;
  v34 = *(a1 + 16);
  if (!v34)
  {
LABEL_35:
    *a2 = v4;
    return result;
  }

  v5 = 0;
  v35 = a1 + 32;
LABEL_5:
  v6 = *(v35 + 8 * v5);
  v36 = v5 + 1;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = v4;
  v8 = 1 << *(v6 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v12;
LABEL_20:
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v18 = v17 | (v14 << 6);
      v19 = *(*(v6 + 48) + 8 * v18);
      sub_25F1B7118(*(v6 + 56) + 32 * v18, v37);
      *&v39 = v19;
      sub_25F1B707C(v37, (&v39 + 8));
LABEL_21:
      v37[0] = v39;
      v37[1] = v40;
      v38 = v41;
      if (!v41)
      {
        v43 = 0;
        memset(v42, 0, sizeof(v42));
LABEL_4:

        swift_bridgeObjectRelease_n();

        v5 = v36;
        if (v36 == v34)
        {
          goto LABEL_35;
        }

        goto LABEL_5;
      }

      v20 = *&v37[0];
      sub_25F1B7118(v37 + 8, v42 + 8);
      *&v42[0] = v20;
      sub_25F1AF698(v37, &qword_27FD550D0, qword_25F30DBB0);
      if (!v43)
      {
        goto LABEL_4;
      }

      v21 = *&v42[0];
      sub_25F1B707C((v42 + 8), &v39);
      v22 = sub_25F2192AC(v21);
      v24 = v4[2];
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        goto LABEL_37;
      }

      v28 = v23;
      if (v4[3] >= v27)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_28;
        }

        v32 = v22;
        sub_25F21DD68();
        v22 = v32;
        v4 = v44;
        if ((v28 & 1) == 0)
        {
          goto LABEL_29;
        }

LABEL_10:
        v13 = (v4[7] + 32 * v22);
        __swift_destroy_boxed_opaque_existential_1(v13);
        sub_25F1B707C(&v39, v13);
        isUniquelyReferenced_nonNull_native = 1;
        if (!v10)
        {
          break;
        }
      }

      else
      {
        sub_25F21A9F0(v27, isUniquelyReferenced_nonNull_native & 1);
        v22 = sub_25F2192AC(v21);
        if ((v28 & 1) != (v29 & 1))
        {
          goto LABEL_39;
        }

LABEL_28:
        v4 = v44;
        if (v28)
        {
          goto LABEL_10;
        }

LABEL_29:
        v4[(v22 >> 6) + 8] |= 1 << v22;
        *(v4[6] + 8 * v22) = v21;
        sub_25F1B707C(&v39, (v4[7] + 32 * v22));
        v30 = v4[2];
        v26 = __OFADD__(v30, 1);
        v31 = v30 + 1;
        if (v26)
        {
          goto LABEL_38;
        }

        v4[2] = v31;
        isUniquelyReferenced_nonNull_native = 1;
        if (!v10)
        {
          break;
        }
      }
    }
  }

  if (v11 <= v12 + 1)
  {
    v15 = v12 + 1;
  }

  else
  {
    v15 = v11;
  }

  v16 = v15 - 1;
  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      v10 = 0;
      v41 = 0;
      v12 = v16;
      v39 = 0u;
      v40 = 0u;
      goto LABEL_21;
    }

    v10 = *(v6 + 64 + 8 * v14);
    ++v12;
    if (v10)
    {
      v12 = v14;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_25F30665C();
  __break(1u);
  return result;
}

uint64_t sub_25F218F8C@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_25F1B7118(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_25F1B707C(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_25F1AF698(v21, &qword_27FD550F8, &unk_25F30DC20);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

_OWORD *sub_25F2190EC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    sub_25F1B7118(*(v3 + 56) + 32 * v13, v18);
    *&v20 = v14;
    result = sub_25F1B707C(v18, (&v20 + 8));
    v16 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v17 = v1[5];
      v18[0] = v20;
      v18[1] = v21;
      v19 = v16;
      v17(v18);
      return sub_25F1AF698(v18, &qword_27FD550D0, qword_25F30DBB0);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        v22 = 0;
        v20 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_25F219234(uint64_t a1, uint64_t a2)
{
  sub_25F30671C();
  sub_25F304F0C();
  v4 = sub_25F30676C();

  return sub_25F219674(a1, a2, v4);
}

unint64_t sub_25F2192E8(double a1)
{
  sub_25F30671C();
  v2 = 0.0;
  if (a1 != 0.0)
  {
    v2 = a1;
  }

  MEMORY[0x25F8D8900](*&v2);
  v3 = sub_25F30676C();

  return sub_25F21972C(v3, a1);
}

unint64_t sub_25F21935C(uint64_t a1)
{
  v2 = sub_25F305E9C();

  return sub_25F219798(a1, v2);
}

unint64_t sub_25F2193A0(uint64_t a1)
{
  v1 = a1;
  sub_25F30671C();
  MEMORY[0x25F8D88E0](v1);
  v2 = sub_25F30676C();

  return sub_25F219860(v1, v2);
}

unint64_t sub_25F219424(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_25F30671C();
  a2(a1);
  v4 = sub_25F30676C();
  return sub_25F2198D0(a1, v4);
}

unint64_t sub_25F219494(uint64_t a1)
{
  sub_25F30671C();
  sub_25F30467C();
  sub_25F21FB54();
  sub_25F304BDC();
  v2 = sub_25F30676C();

  return sub_25F21993C(a1, v2);
}

unint64_t sub_25F219518(uint64_t a1, uint64_t a2)
{
  sub_25F30671C();
  MEMORY[0x25F8D88E0](a1);
  MEMORY[0x25F8D88E0](a2);
  v4 = sub_25F30676C();

  return sub_25F219A74(a1, a2, v4);
}

unint64_t sub_25F219598(uint64_t a1)
{
  sub_25F304E0C();
  sub_25F30671C();
  sub_25F304F0C();
  v2 = sub_25F30676C();

  return sub_25F219AEC(a1, v2);
}

unint64_t sub_25F21962C(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x25F8D88B0](*(v1 + 40), a1, 4);

  return sub_25F219BF0(v2, v3);
}

unint64_t sub_25F219674(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_25F30659C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25F21972C(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (a2 - *(*(v2 + 48) + 8 * result) == 0.0)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_25F219798(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_25F1BF614(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25F8D8060](v9, a1);
      sub_25F1BF670(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25F219860(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_25F2198D0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_25F21993C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CrashReport.ID(0) - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *(v5 + 72);
    do
    {
      sub_25F2128DC(*(v2 + 48) + v11 * v9, v7);
      v12 = _s20PreviewsFoundationOS11CrashReportV2IDV2eeoiySbAE_AEtFZ_0();
      sub_25F21FBAC(v7);
      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_25F219A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_25F219AEC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_25F304E0C();
      v8 = v7;
      if (v6 == sub_25F304E0C() && v8 == v9)
      {
        break;
      }

      v11 = sub_25F30659C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_25F219BF0(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_25F219C5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52CA0, &qword_25F308158);
  v38 = v4;
  result = sub_25F30633C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v40 = *v22;
      v24 = *(v5 + 56) + 24 * v21;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      if ((v38 & 1) == 0)
      {

        sub_25F1B708C(v25, v26, v27);
      }

      sub_25F30671C();
      sub_25F304F0C();
      result = sub_25F30676C();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v25;
      *(v17 + 8) = v26;
      *(v17 + 16) = v27;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25F219F3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C90, &qword_25F308148);
  v33 = v4;
  result = sub_25F30633C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_25F1B707C(v24, v34);
      }

      else
      {
        sub_25F1B7118(v24, v34);
      }

      sub_25F30671C();
      sub_25F304F0C();
      result = sub_25F30676C();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_25F1B707C(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_25F21A1F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD550E8, &unk_25F310BB0);
  v33 = v4;
  result = sub_25F30633C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_25F1A42F8(v24, v34);
      }

      else
      {
        sub_25F1BF03C(v24, v34);
      }

      sub_25F30671C();
      sub_25F304F0C();
      result = sub_25F30676C();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_25F1A42F8(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_25F21A4B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD550F0, &unk_25F30DC10);
  v34 = v4;
  result = sub_25F30633C();
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

      sub_25F30671C();
      sub_25F304F0C();
      result = sub_25F30676C();
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

uint64_t sub_25F21A760(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55108, &qword_25F30DC58);
  result = sub_25F30633C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      sub_25F30671C();
      MEMORY[0x25F8D8900](v20);
      result = sub_25F30676C();
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
      *(*(v7 + 56) + 16 * v15) = v29;
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25F21A9F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52CB0, &unk_25F30DC70);
  result = sub_25F30633C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_25F1B707C(v21, v31);
      }

      else
      {
        sub_25F1B7118(v21, v31);
      }

      result = sub_25F30670C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_25F1B707C(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_25F21AC68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52CA8, &unk_25F308160);
  v37 = v4;
  result = sub_25F30633C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_25F30671C();
      sub_25F304F0C();
      result = sub_25F30676C();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25F21AF28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD550D8, &qword_25F30DC08);
  result = sub_25F30633C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v21 = *(v5 + 56) + 32 * v19;
      if (v4)
      {
        sub_25F1E6CBC(v21, v30);
      }

      else
      {
        sub_25F1E6D24(v21, v30);
      }

      sub_25F30671C();
      MEMORY[0x25F8D8900](v20);
      result = sub_25F30676C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_25F1E6CBC(v30, *(v7 + 56) + 32 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_25F21B1BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C78, &qword_25F308130);
  result = sub_25F30633C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      sub_25F30671C();
      if (v20 == 0.0)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = v20;
      }

      MEMORY[0x25F8D8900](*&v22);
      result = sub_25F30676C();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_25F21B454(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C68, &qword_25F308120);
  result = sub_25F30633C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_25F1B707C((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_25F1BF614(v23, &v36);
        sub_25F1B7118(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_25F305E9C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_25F1B707C(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_25F21B70C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C60, &unk_25F30DC40);
  v30 = v4;
  result = sub_25F30633C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_25F30671C();
      MEMORY[0x25F8D88E0](v20);
      result = sub_25F30676C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25F21B99C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_25F3044DC();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C58, &unk_25F308110);
  v42 = v4;
  result = sub_25F30633C();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_25F30671C();
      sub_25F304F0C();
      result = sub_25F30676C();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_25F21BD1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C48, &qword_25F308100);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C40, &unk_25F30DC30);
  v40 = v4;
  result = sub_25F30633C();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_25F1B700C(v28, v41);
      }

      else
      {
        sub_25F21FC08(v28, v41);
      }

      sub_25F30671C();
      sub_25F304F0C();
      result = sub_25F30676C();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_25F1B700C(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_25F21C060(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C30, &qword_25F3080E8);
  v30 = v4;
  result = sub_25F30633C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_25F30671C();
      MEMORY[0x25F8D88E0](v20);
      result = sub_25F30676C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25F21C2F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C28, &qword_25F3080E0);
  result = sub_25F30633C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_25F30671C();
      MEMORY[0x25F8D8900](v20);
      result = sub_25F30676C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_25F21C570(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CrashReport.ID(0);
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C18, &qword_25F3080D0);
  v36 = v4;
  result = sub_25F30633C();
  v10 = result;
  if (*(v8 + 16))
  {
    v33 = v2;
    v34 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v35 + 72);
      v24 = *(v8 + 48) + v23 * v22;
      if (v36)
      {
        sub_25F1B6FA8(v24, v7);
        v37 = *(*(v8 + 56) + 8 * v22);
      }

      else
      {
        sub_25F2128DC(v24, v7);
        v37 = *(*(v8 + 56) + 8 * v22);
      }

      sub_25F30671C();
      sub_25F30467C();
      sub_25F21FB54();
      sub_25F304BDC();
      result = sub_25F30676C();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v17 + 8 * v27);
          if (v31 != -1)
          {
            v18 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_25F1B6FA8(v7, *(v10 + 48) + v23 * v18);
      *(*(v10 + 56) + 8 * v18) = v37;
      ++*(v10 + 16);
      v8 = v34;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v8 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v12, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v32;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_25F21C8D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C08, &qword_25F3080C0);
  result = sub_25F30633C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_25F30670C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
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

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25F21CB44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52BF8, &qword_25F3080B0);
  v35 = v4;
  result = sub_25F30633C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v43 = *(*(v5 + 48) + 16 * v20);
      v21 = *(v5 + 56) + 80 * v20;
      if (v35)
      {
        v36 = *v21;
        v37 = *(v21 + 16);
        v22 = *(v21 + 40);
        v38 = *(v21 + 56);
        v39 = *(v21 + 32);
        v41 = *(v21 + 48);
        v42 = *(v21 + 64);
        v40 = *(v21 + 72);
      }

      else
      {
        v23 = *(v21 + 16);
        v24 = *(v21 + 32);
        v25 = *(v21 + 48);
        *&v46[9] = *(v21 + 57);
        v45[2] = v24;
        *v46 = v25;
        v45[1] = v23;
        v45[0] = *v21;
        v40 = v46[24];
        v41 = v25;
        v42 = *&v46[16];
        v38 = *(&v25 + 1);
        v39 = v24;
        v22 = BYTE8(v24);
        v36 = v45[0];
        v37 = v23;
        sub_25F1DF984(v45, v44);
      }

      sub_25F30671C();
      MEMORY[0x25F8D88E0](v43);
      MEMORY[0x25F8D88E0](*(&v43 + 1));
      result = sub_25F30676C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      LOBYTE(v45[0]) = v22;
      v44[0] = v40;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v43;
      v16 = *(v7 + 56) + 80 * v15;
      *v16 = v36;
      *(v16 + 16) = v37;
      *(v16 + 32) = v39;
      *(v16 + 40) = v22;
      *(v16 + 48) = v41;
      *(v16 + 56) = v38;
      *(v16 + 64) = v42;
      *(v16 + 72) = v40;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_25F21CEBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52BF0, &qword_25F30DC00);
  result = sub_25F30633C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
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
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_25F30670C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_25F21D120(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55100, &qword_25F30DC50);
  v35 = v4;
  result = sub_25F30633C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_25F30671C();
      sub_25F304F0C();
      result = sub_25F30676C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25F21D3C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52BE8, &unk_25F3080A0);
  result = sub_25F30633C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = MEMORY[0x25F8D88B0](*(v7 + 40), v20, 4);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
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

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25F21D638(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52BE0, &unk_25F30DC60);
  result = sub_25F30633C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      sub_25F30671C();
      MEMORY[0x25F8D8900](v20);
      result = sub_25F30676C();
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
      *(*(v7 + 56) + 16 * v15) = v29;
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_25F21D8C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52CA0, &qword_25F308158);
  v2 = *v0;
  v3 = sub_25F30632C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 16);
        *v25 = v21;
        v25[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v26;

        result = sub_25F1B708C(v23, v24, v26);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_25F21DA60()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C90, &qword_25F308148);
  v2 = *v0;
  v3 = sub_25F30632C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_25F1B7118(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_25F1B707C(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_25F21DC04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55108, &qword_25F30DC58);
  v2 = *v0;
  v3 = sub_25F30632C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_25F21DD68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52CB0, &unk_25F30DC70);
  v2 = *v0;
  v3 = sub_25F30632C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_25F1B7118(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_25F1B707C(v19, (*(v4 + 56) + 32 * v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_25F21DEE4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52CA8, &unk_25F308160);
  v2 = *v0;
  v3 = sub_25F30632C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_25F21E05C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD550D8, &qword_25F30DC08);
  v2 = *v0;
  v3 = sub_25F30632C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_25F1E6D24(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_25F1E6CBC(v19, *(v4 + 56) + 32 * v17);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_25F21E1D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C78, &qword_25F308130);
  v2 = *v0;
  v3 = sub_25F30632C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_25F21E334()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C68, &qword_25F308120);
  v2 = *v0;
  v3 = sub_25F30632C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_25F1BF614(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_25F1B7118(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_25F1B707C(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_25F21E4D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C60, &unk_25F30DC40);
  v2 = *v0;
  v3 = sub_25F30632C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_25F21E634()
{
  v1 = v0;
  v35 = sub_25F3044DC();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C58, &unk_25F308110);
  v3 = *v0;
  v4 = sub_25F30632C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_25F21E8B4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C48, &qword_25F308100);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C40, &unk_25F30DC30);
  v4 = *v0;
  v5 = sub_25F30632C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_25F21FC08(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_25F1B700C(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
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
    *v1 = v6;
  }

  return result;
}

void *sub_25F21EAEC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C30, &qword_25F3080E8);
  v2 = *v0;
  v3 = sub_25F30632C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_25F21EC48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C28, &qword_25F3080E0);
  v2 = *v0;
  v3 = sub_25F30632C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_25F21ED94()
{
  v1 = v0;
  v2 = type metadata accessor for CrashReport.ID(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C18, &qword_25F3080D0);
  v5 = *v0;
  v6 = sub_25F30632C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_25F2128DC(*(v5 + 48) + v21, v4);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_25F1B6FA8(v4, *(v7 + 48) + v21);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}