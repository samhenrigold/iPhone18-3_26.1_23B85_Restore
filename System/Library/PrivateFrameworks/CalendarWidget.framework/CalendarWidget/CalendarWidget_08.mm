uint64_t sub_1E48478C8(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1E4878F0C();
LABEL_9:
  result = sub_1E4878FBC();
  *v2 = result;
  return result;
}

void (*sub_1E4847968(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E6919650](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1E48479E8;
  }

  __break(1u);
  return result;
}

void (*sub_1E48479F0(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E6919650](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1E4849528;
  }

  __break(1u);
  return result;
}

void *sub_1E4847A70(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_1E4878F0C();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1E4846C50(v3, 0);
  sub_1E4847CA4((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1E4847B04(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1E4878F0C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1E4878F0C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1E48494D4(&qword_1EE2B46D8, &qword_1ECF7D968, &qword_1E4882DD8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D968, &qword_1E4882DD8);
            v9 = sub_1E4847968(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4847CA4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1E4878F0C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1E4878F0C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1E48494D4(&qword_1ECF7D950, &qword_1ECF7D948, &qword_1E4882DC0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D948, &qword_1E4882DC0);
            v9 = sub_1E48479F0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1E48493B4(0, &qword_1EE2B46C0, 0x1E6966A08);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4847E44(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17[3] = a5;
  v17[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  v12 = (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a3, a5);
  v13 = MEMORY[0x1E6919990](v12);
  sub_1E48451EC(a4, v17, a1, a2, &v16);
  objc_autoreleasePoolPop(v13);
  v14 = v16;
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v14;
}

uint64_t sub_1E4847F30(uint64_t a1)
{
  v2 = sub_1E48779FC();
  v65 = v2;
  v66 = sub_1E484948C(&qword_1EE2B4618, MEMORY[0x1E6993278], MEMORY[0x1E6993270]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v64);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_0, a1, v2);
  if (sub_1E487767C() == 3)
  {
    v4 = 4;
    goto LABEL_36;
  }

  if (sub_1E487772C() & 1) == 0 && (sub_1E487770C())
  {
    if ((v5 = sub_1E487771C(), (v6 & 1) == 0) && !v5 || (v7 = sub_1E487771C(), (v8 & 1) == 0) && v7 == 1)
    {
      v4 = 1;
      goto LABEL_36;
    }
  }

  __swift_project_boxed_opaque_existential_0(v64, v65);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = sub_1E4878E5C();
  v57 = &v55;
  v10 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v12 = &v55 - v11;
  sub_1E487769C();
  v13 = *(AssociatedTypeWitness - 8);
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v10 + 8))(v12, v56);
  }

  else
  {
    v62 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_0(v61);
    (*(v13 + 32))();
    v14 = sub_1E48775AC();
    __swift_destroy_boxed_opaque_existential_1(v61);
    if (v14)
    {
LABEL_17:
      v4 = 2;
      goto LABEL_36;
    }
  }

  if (sub_1E487772C() & 1) == 0 && (sub_1E487770C())
  {
    v15 = sub_1E487771C();
    if ((v16 & 1) == 0 && v15 == 4)
    {
      goto LABEL_17;
    }
  }

  if (sub_1E487770C())
  {
    v17 = sub_1E487771C();
    if ((v18 & 1) == 0 && v17 == 3)
    {
      v4 = 3;
      goto LABEL_36;
    }
  }

  if (sub_1E48776CC())
  {
LABEL_23:
    v4 = 5;
    goto LABEL_36;
  }

  __swift_project_boxed_opaque_existential_0(v64, v65);
  v19 = swift_getAssociatedTypeWitness();
  v20 = sub_1E4878E5C();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v55 - v22;
  sub_1E487761C();
  v24 = *(v19 - 8);
  if ((*(v24 + 48))(v23, 1, v19) == 1)
  {
    (*(v21 + 8))(v23, v20);
    __swift_project_boxed_opaque_existential_0(v64, v65);
    v25 = swift_getAssociatedTypeWitness();
    v26 = sub_1E4878E5C();
    v27 = *(v26 - 8);
    MEMORY[0x1EEE9AC00](v26);
    v29 = &v55 - v28;
    sub_1E487769C();
    v30 = *(v25 - 8);
    if ((*(v30 + 48))(v29, 1, v25) != 1)
    {
      v59 = v25;
      v60 = swift_getAssociatedConformanceWitness();
      v32 = __swift_allocate_boxed_opaque_existential_0(&v58);
      (*(v30 + 32))(v32, v29, v25);
      __swift_project_boxed_opaque_existential_0(&v58, v59);
      v33 = swift_getAssociatedTypeWitness();
      v34 = sub_1E4878E5C();
      v35 = *(v34 - 8);
      MEMORY[0x1EEE9AC00](v34);
      v37 = &v55 - v36;
      sub_1E48775DC();
      v38 = *(v33 - 8);
      if ((*(v38 + 48))(v37, 1, v33) == 1)
      {
        (*(v35 + 8))(v37, v34);
        __swift_destroy_boxed_opaque_existential_1(&v58);
LABEL_33:
        sub_1E4878BDC();
        goto LABEL_34;
      }

      v62 = v33;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_0(v61);
      (*(v38 + 32))();
      v40 = sub_1E48779EC();
      v42 = v41;
      __swift_destroy_boxed_opaque_existential_1(v61);
      __swift_destroy_boxed_opaque_existential_1(&v58);
      v43 = sub_1E4878BDC();
      if (!v42)
      {
        goto LABEL_34;
      }

      if (v40 == v43 && v42 == v44)
      {
      }

      else
      {
        v45 = sub_1E48790EC();

        if ((v45 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      __swift_project_boxed_opaque_existential_0(v64, v65);
      v46 = swift_getAssociatedTypeWitness();
      v26 = sub_1E4878E5C();
      v27 = *(v26 - 8);
      MEMORY[0x1EEE9AC00](v26);
      v29 = &v55 - v47;
      sub_1E487769C();
      v48 = *(v46 - 8);
      if ((*(v48 + 48))(v29, 1, v46) != 1)
      {
        v62 = v46;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        __swift_allocate_boxed_opaque_existential_0(v61);
        (*(v48 + 32))();
        v49 = sub_1E48775BC();
        v51 = v50;
        __swift_destroy_boxed_opaque_existential_1(v61);
        v52 = sub_1E4878BDC();
        if (v51)
        {
          if (v49 == v52 && v51 == v53)
          {

            v4 = 5;
            goto LABEL_36;
          }

          v54 = sub_1E48790EC();

          if (v54)
          {
            goto LABEL_23;
          }

LABEL_35:
          v4 = 0;
          goto LABEL_36;
        }

LABEL_34:

        goto LABEL_35;
      }
    }

    (*(v27 + 8))(v29, v26);
    goto LABEL_33;
  }

  v59 = v19;
  v60 = swift_getAssociatedConformanceWitness();
  v31 = __swift_allocate_boxed_opaque_existential_0(&v58);
  (*(v24 + 32))(v31, v23, v19);
  sub_1E47B488C(&v58, v61);
  __swift_project_boxed_opaque_existential_0(v61, v62);
  if (sub_1E4877A2C())
  {
    v4 = 6;
  }

  else
  {
    v4 = 7;
  }

  __swift_destroy_boxed_opaque_existential_1(v61);
LABEL_36:
  __swift_destroy_boxed_opaque_existential_1(v64);
  return v4;
}

uint64_t sub_1E4848A7C(void *a1, void *a2)
{
  v97 = MEMORY[0x1E69E7CC0];
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  if (!v5)
  {
LABEL_11:
    v15 = a1[3];
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v15);
    v17 = (*(v16 + 16))(v15, v16);
    if (!v17)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v18 = v17;
    v19 = v17 & 0xFFFFFFFFFFFFFF8;
    if (v17 >> 62)
    {
LABEL_51:
      v20 = sub_1E4878F0C();
      if (v20)
      {
LABEL_14:
        v21 = 0;
        v90 = v18 & 0xC000000000000001;
        v9 = MEMORY[0x1E69E7CC0];
        v86 = v20;
        v83 = v18;
        do
        {
          v82 = v9;
          v22 = v21;
          while (1)
          {
            if (v90)
            {
              v23 = MEMORY[0x1E6919650](v22, v18);
              v21 = v22 + 1;
              if (__OFADD__(v22, 1))
              {
                goto LABEL_49;
              }
            }

            else
            {
              if (v22 >= *(v19 + 16))
              {
                goto LABEL_50;
              }

              v23 = *(v18 + 8 * v22 + 32);
              v21 = v22 + 1;
              if (__OFADD__(v22, 1))
              {
LABEL_49:
                __break(1u);
LABEL_50:
                __break(1u);
                goto LABEL_51;
              }
            }

            v24 = v23;
            v25 = [v23 identifier];
            if (!v25)
            {
              goto LABEL_79;
            }

            v26 = v25;
            v27 = sub_1E4878BDC();
            v29 = v28;
            v30 = [a2 calendarWithIdentifier_];

            if (v30)
            {
              break;
            }

            if (qword_1EE2B3298 != -1)
            {
              swift_once();
            }

            v31 = sub_1E4877ADC();
            __swift_project_value_buffer(v31, qword_1EE2BAEC8);

            v32 = sub_1E4877ABC();
            v33 = sub_1E4878DCC();

            if (os_log_type_enabled(v32, v33))
            {
              v34 = v19;
              v35 = swift_slowAlloc();
              v36 = swift_slowAlloc();
              v96 = v36;
              *v35 = 136315138;
              v37 = sub_1E47A0DEC(v27, v29, &v96);

              *(v35 + 4) = v37;
              _os_log_impl(&dword_1E475C000, v32, v33, "EKUICalendar with identifier %s was not found. This indicates the calendar identifier was changed or removed in the database but not on the intent.", v35, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v36);
              MEMORY[0x1E6919FE0](v36, -1, -1);
              v38 = v35;
              v19 = v34;
              v18 = v83;
              v20 = v86;
              MEMORY[0x1E6919FE0](v38, -1, -1);
            }

            else
            {
            }

            ++v22;
            if (v21 == v20)
            {
              v9 = v82;
              goto LABEL_53;
            }
          }

          v39 = v19;

          v40 = v30;
          MEMORY[0x1E6919330]();
          if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E4878CCC();
          }

          sub_1E4878CEC();

          v9 = v97;
          v19 = v39;
        }

        while (v21 != v20);
        goto LABEL_53;
      }
    }

    else
    {
      v20 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        goto LABEL_14;
      }
    }

    v9 = MEMORY[0x1E69E7CC0];
LABEL_53:

    if (qword_1EE2B3298 != -1)
    {
      swift_once();
    }

    v57 = sub_1E4877ADC();
    __swift_project_value_buffer(v57, qword_1EE2BAEC8);

    v58 = sub_1E4877ABC();
    v59 = sub_1E4878DEC();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v96 = v61;
      *v60 = 134218242;
      if (v9 >> 62)
      {
        v62 = sub_1E4878F0C();
      }

      else
      {
        v62 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v60 + 4) = v62;

      *(v60 + 12) = 2082;
      if (v9 >> 62)
      {
        v63 = sub_1E4878F0C();
      }

      else
      {
        v63 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v64 = MEMORY[0x1E69E7CC0];
      if (v63)
      {
        v85 = v61;
        v88 = v59;
        v91 = v60;
        v95 = MEMORY[0x1E69E7CC0];
        sub_1E485807C(0, v63 & ~(v63 >> 63), 0);
        if (v63 < 0)
        {
          __break(1u);
          goto LABEL_78;
        }

        v65 = 0;
        v64 = v95;
        v66 = v9 & 0xC000000000000001;
        v67 = v9;
        do
        {
          if (v66)
          {
            v68 = MEMORY[0x1E6919650](v65, v9);
          }

          else
          {
            v68 = *(v9 + 8 * v65 + 32);
          }

          v69 = v68;
          v70 = [v68 calendarIdentifier];
          v71 = sub_1E4878BDC();
          v73 = v72;

          v75 = *(v95 + 16);
          v74 = *(v95 + 24);
          if (v75 >= v74 >> 1)
          {
            sub_1E485807C((v74 > 1), v75 + 1, 1);
          }

          ++v65;
          *(v95 + 16) = v75 + 1;
          v76 = v95 + 16 * v75;
          *(v76 + 32) = v71;
          *(v76 + 40) = v73;
          v9 = v67;
        }

        while (v63 != v65);
        v60 = v91;
        v59 = v88;
        v61 = v85;
      }

      v77 = MEMORY[0x1E6919360](v64, MEMORY[0x1E69E6158]);
      v79 = v78;

      v80 = sub_1E47A0DEC(v77, v79, &v96);

      *(v60 + 14) = v80;
      _os_log_impl(&dword_1E475C000, v58, v59, "Mirror calendar app is off, returning [%ld] calendars: %{public}s", v60, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x1E6919FE0](v61, -1, -1);
      MEMORY[0x1E6919FE0](v60, -1, -1);

      return v9;
    }

LABEL_61:

    return v9;
  }

  v6 = v5;
  if (![v5 BOOLValue])
  {

    goto LABEL_11;
  }

  sub_1E486C1BC(a2);
  sub_1E4845034(v7);
  if (qword_1EE2B3298 != -1)
  {
    swift_once();
  }

  v8 = sub_1E4877ADC();
  __swift_project_value_buffer(v8, qword_1EE2BAEC8);
  v9 = v97;

  v10 = sub_1E4877ABC();
  v11 = sub_1E4878DEC();
  if (!os_log_type_enabled(v10, v11))
  {

    goto LABEL_61;
  }

  v12 = swift_slowAlloc();
  v89 = swift_slowAlloc();
  v96 = v89;
  *v12 = 134218242;
  if (v9 >> 62)
  {
    v13 = sub_1E4878F0C();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v12 + 4) = v13;

  *(v12 + 12) = 2082;
  if (v9 >> 62)
  {
    v14 = sub_1E4878F0C();
  }

  else
  {
    v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = MEMORY[0x1E69E7CC0];
  v93 = v11;
  if (!v14)
  {
LABEL_48:
    v53 = MEMORY[0x1E6919360](v41, MEMORY[0x1E69E6158]);
    v55 = v54;

    v56 = sub_1E47A0DEC(v53, v55, &v96);

    *(v12 + 14) = v56;
    _os_log_impl(&dword_1E475C000, v10, v93, "Mirror calendar app is on, returning [%ld] calendars: %{public}s", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v89);
    MEMORY[0x1E6919FE0](v89, -1, -1);
    MEMORY[0x1E6919FE0](v12, -1, -1);

    return v9;
  }

  v84 = v10;
  v87 = v6;
  v42 = v9;
  v94 = MEMORY[0x1E69E7CC0];
  sub_1E485807C(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v43 = 0;
    v41 = v94;
    do
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v44 = MEMORY[0x1E6919650](v43, v42);
      }

      else
      {
        v44 = *(v42 + 8 * v43 + 32);
      }

      v45 = v44;
      v46 = [v44 calendarIdentifier];
      v47 = sub_1E4878BDC();
      v49 = v48;

      v51 = *(v94 + 16);
      v50 = *(v94 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_1E485807C((v50 > 1), v51 + 1, 1);
      }

      ++v43;
      *(v94 + 16) = v51 + 1;
      v52 = v94 + 16 * v51;
      *(v52 + 32) = v47;
      *(v52 + 40) = v49;
    }

    while (v14 != v43);
    v9 = v42;
    v6 = v87;
    v10 = v84;
    goto LABEL_48;
  }

LABEL_78:
  __break(1u);
LABEL_79:
  result = sub_1E487903C();
  __break(1u);
  return result;
}

uint64_t sub_1E48493B4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1E484941C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D940, &qword_1E4882DA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E484948C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E48494D4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1E484952C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a5 = sub_1E4877FBC();
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D970, &qword_1E4882F50);
  sub_1E484961C(a2, v8, a4, a5 + *(v9 + 44));
}

uint64_t sub_1E484961C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v59 = a3;
  v60 = a1;
  v67 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D978, &qword_1E4882F58);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v66 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v57 - v8;
  v58 = sub_1E48782AC();
  v9 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D980, &qword_1E4882F60);
  v11 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v13 = &v57 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D988, &qword_1E4882F68);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v64 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v57 - v17;
  v19 = type metadata accessor for WideTextHeaderView(0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v63 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v57 - v22;
  sub_1E4878D2C();
  v62 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = sub_1E487732C();
  v25 = *(*(v24 - 8) + 16);
  v25(v23, v60, v24);
  v25(&v23[v19[5]], a2 + OBJC_IVAR____TtCC14CalendarWidget18WideMultidayLayout18SingleDayViewModel_date, v24);
  *&v23[v19[6]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v27 = &v23[v19[7]];
  *v27 = KeyPath;
  v27[8] = 0;
  v68 = 0x402A000000000000;
  sub_1E4773794(KeyPath, v28, v29);
  sub_1E4877B6C();
  v30 = &v23[v19[9]];
  *v30 = 0x4D4D202C45454545;
  *(v30 + 1) = 0xEB0000000064204DLL;
  v31 = &v23[v19[10]];
  strcpy(v31, "EEEE, MMMM d");
  v31[13] = 0;
  *(v31 + 7) = -5120;
  v32 = v19[11];
  sub_1E48782EC();
  v33 = sub_1E48781FC();

  *&v23[v32] = v33;
  v34 = v19[12];
  sub_1E48782EC();
  sub_1E487827C();
  v35 = sub_1E487829C();

  *&v23[v34] = v35;
  *&v23[v19[13]] = 0x4018000000000000;
  if (*(*(a2 + 32) + 16) || (swift_beginAccess(), *(*(a2 + 24) + 16)))
  {
    v36 = sub_1E4877FBC();
    v37 = *(v59 + 64);
    *v13 = v36;
    *(v13 + 1) = v37;
    v13[16] = 0;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D990, &qword_1E4882FD0);
    sub_1E4849D6C(a2, &v13[*(v38 + 44)]);
    v39 = v18;
    sub_1E477372C(v13, v18, &qword_1ECF7D980, &qword_1E4882F60);
    v40 = 0;
  }

  else
  {
    v40 = 1;
    v39 = v18;
  }

  (*(v11 + 56))(v39, v40, 1, v61);
  if (*(a2 + 42))
  {
    v41 = ~*(a2 + 44);
    v42 = *(a2 + 43);
    sub_1E48781BC();
    v44 = v57;
    v43 = v58;
    (*(v9 + 104))(v57, *MEMORY[0x1E6980EA0], v58);
    v61 = sub_1E48782CC();

    (*(v9 + 8))(v44, v43);
    if (v42)
    {
      v45 = 256;
    }

    else
    {
      v45 = 0;
    }

    v46 = v45 & 0xFFFFFFFFFFFFFFFELL | v41 & 1;
    v60 = 0x4020000000000000;
  }

  else
  {
    v46 = 0;
    v60 = 0;
    v61 = 0;
  }

  v47 = v65;
  sub_1E484B854(a2, v65);
  v48 = v63;
  sub_1E484E374(v23, v63, type metadata accessor for WideTextHeaderView);
  v49 = v39;
  v59 = v39;
  v50 = v64;
  sub_1E4773850(v49, v64, &qword_1ECF7D988, &qword_1E4882F68);
  v51 = v66;
  sub_1E4773850(v47, v66, &qword_1ECF7D978, &qword_1E4882F58);
  v52 = v67;
  sub_1E484E374(v48, v67, type metadata accessor for WideTextHeaderView);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D998, &qword_1E4882FD8);
  sub_1E4773850(v50, v52 + v53[12], &qword_1ECF7D988, &qword_1E4882F68);
  v54 = (v52 + v53[16]);
  v55 = v60;
  *v54 = v46;
  v54[1] = v55;
  v54[2] = v61;
  sub_1E4773850(v51, v52 + v53[20], &qword_1ECF7D978, &qword_1E4882F58);

  sub_1E47738B8(v47, &qword_1ECF7D978, &qword_1E4882F58);
  sub_1E47738B8(v59, &qword_1ECF7D988, &qword_1E4882F68);
  sub_1E484E3DC(v23, type metadata accessor for WideTextHeaderView);
  sub_1E47738B8(v51, &qword_1ECF7D978, &qword_1E4882F58);

  sub_1E47738B8(v50, &qword_1ECF7D988, &qword_1E4882F68);
  sub_1E484E3DC(v48, type metadata accessor for WideTextHeaderView);
}

uint64_t sub_1E4849D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D9A0, &qword_1E4882FE0);
  v74 = *(v3 - 8);
  v75 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v72 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v70 = &v59 - v6;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D9A8, &qword_1E4882FE8);
  v7 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v9 = &v59 - v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D9B0, &qword_1E4882FF0);
  MEMORY[0x1EEE9AC00](v64);
  v65 = &v59 - v10;
  v11 = type metadata accessor for WideAllDayView(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C230, &qword_1E487C998);
  MEMORY[0x1EEE9AC00](v60);
  v15 = &v59 - v14;
  v16 = type metadata accessor for WideReminderView(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C238, &qword_1E487C9A0);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v59 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D9B8, &qword_1E4882FF8);
  v67 = *(v20 - 8);
  v68 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v62 = &v59 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D9C0, &unk_1E4883000);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v69 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v76 = &v59 - v25;
  sub_1E4878D2C();
  v71 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26 = *(a1 + 32);
  v27 = *(v26 + 16);
  if (v27)
  {
    if (v27 > 2 || *(a1 + 41))
    {
      if (v27 == 1 && (v33 = (type metadata accessor for Event(0) - 8), v34 = v26 + ((*(*v33 + 80) + 32) & ~*(*v33 + 80)), (*(v34 + v33[16]) & 0xFE) == 6))
      {
        sub_1E484E374(v34, v18, type metadata accessor for Event);
        v35 = v16[5];
        v36 = OBJC_IVAR____TtCC14CalendarWidget18WideMultidayLayout18SingleDayViewModel_date;
        v37 = sub_1E487732C();
        (*(*(v37 - 8) + 16))(&v18[v35], a1 + v36, v37);
        type metadata accessor for CellDisplayContext(0);
        swift_storeEnumTagMultiPayload();
        *&v18[v16[6]] = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
        swift_storeEnumTagMultiPayload();
        *&v18[v16[7]] = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
        swift_storeEnumTagMultiPayload();
        *&v18[v16[8]] = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
        swift_storeEnumTagMultiPayload();
        KeyPath = swift_getKeyPath();
        *&v18[v16[10]] = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
        swift_storeEnumTagMultiPayload();
        v39 = &v18[v16[9]];
        *v39 = KeyPath;
        v39[8] = 0;
        sub_1E484E374(v18, v15, type metadata accessor for WideReminderView);
        swift_storeEnumTagMultiPayload();
        sub_1E484C774(qword_1EE2B3680, type metadata accessor for WideReminderView, &unk_1E4882334);
        sub_1E484C774(&qword_1ECF7C248, type metadata accessor for WideAllDayView, &unk_1E487CEE8);
        v40 = v61;
        sub_1E487803C();
        v41 = v18;
        v42 = type metadata accessor for WideReminderView;
      }

      else
      {
        v43 = v11[5];
        v44 = OBJC_IVAR____TtCC14CalendarWidget18WideMultidayLayout18SingleDayViewModel_date;
        v45 = sub_1E487732C();
        (*(*(v45 - 8) + 16))(&v13[v43], a1 + v44, v45);
        type metadata accessor for CellDisplayContext(0);
        swift_storeEnumTagMultiPayload();
        *&v13[v11[6]] = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
        swift_storeEnumTagMultiPayload();
        *&v13[v11[7]] = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
        swift_storeEnumTagMultiPayload();
        *&v13[v11[8]] = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
        swift_storeEnumTagMultiPayload();
        v46 = swift_getKeyPath();
        *v13 = v26;
        v47 = &v13[v11[9]];
        *v47 = v46;
        v47[8] = 0;
        sub_1E484E374(v13, v15, type metadata accessor for WideAllDayView);
        swift_storeEnumTagMultiPayload();
        sub_1E484C774(qword_1EE2B3680, type metadata accessor for WideReminderView, &unk_1E4882334);
        sub_1E484C774(&qword_1ECF7C248, type metadata accessor for WideAllDayView, &unk_1E487CEE8);

        v40 = v61;
        sub_1E487803C();
        v41 = v13;
        v42 = type metadata accessor for WideAllDayView;
      }

      sub_1E484E3DC(v41, v42);
      sub_1E4773850(v40, v65, &qword_1ECF7C238, &qword_1E487C9A0);
      swift_storeEnumTagMultiPayload();
      sub_1E47A1690();
      sub_1E484C5FC();
      v31 = v62;
      sub_1E487803C();
      sub_1E47738B8(v40, &qword_1ECF7C238, &qword_1E487C9A0);
    }

    else
    {
      v79 = 0;
      v80 = v27;
      swift_getKeyPath();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D9C8, &qword_1E4883028);
      sub_1E484C570();
      sub_1E47A1690();
      sub_1E487885C();
      v28 = v66;
      (*(v7 + 16))(v65, v9, v66);
      swift_storeEnumTagMultiPayload();
      sub_1E484C5FC();
      v29 = v62;
      sub_1E487803C();
      v30 = v9;
      v31 = v29;
      (*(v7 + 8))(v30, v28);
    }

    v32 = v76;
    sub_1E477372C(v31, v76, &qword_1ECF7D9B8, &qword_1E4882FF8);
    (*(v67 + 56))(v32, 0, 1, v68);
  }

  else
  {
    v32 = v76;
    (*(v67 + 56))(v76, 1, 1, v68);
  }

  swift_beginAccess();
  v48 = *(*(a1 + 24) + 16);
  v77 = 0;
  v78 = v48;
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D9C8, &qword_1E4883028);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D9D8, &qword_1E4883030);
  sub_1E484C570();
  sub_1E484C688();
  v49 = v70;
  sub_1E487885C();
  v50 = v69;
  sub_1E4773850(v32, v69, &qword_1ECF7D9C0, &unk_1E4883000);
  v52 = v74;
  v51 = v75;
  v53 = *(v74 + 16);
  v54 = v72;
  v53(v72, v49, v75);
  v55 = v73;
  sub_1E4773850(v50, v73, &qword_1ECF7D9C0, &unk_1E4883000);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D9E0, &qword_1E4883038);
  v53((v55 + *(v56 + 48)), v54, v51);
  v57 = *(v52 + 8);
  v57(v49, v51);
  sub_1E47738B8(v76, &qword_1ECF7D9C0, &unk_1E4883000);
  v57(v54, v51);
  sub_1E47738B8(v50, &qword_1ECF7D9C0, &unk_1E4883000);
}

uint64_t sub_1E484AA28@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for WideAllDayView(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C230, &qword_1E487C998);
  MEMORY[0x1EEE9AC00](v40);
  v10 = &v37 - v9;
  v11 = type metadata accessor for WideReminderView(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C238, &qword_1E487C9A0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v42 = &v37 - v15;
  v16 = *a1;
  sub_1E4878D2C();
  v41 = sub_1E4878D1C();
  sub_1E4878D0C();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v18 = *(a2 + 32);
  if (v16 >= *(v18 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v38 = v10;
  v39 = a3;
  v19 = type metadata accessor for Event(0);
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = v18 + v21 + *(v20 + 72) * v16;
  if ((*(v22 + *(v19 + 56)) & 0xFE) == 6)
  {
    sub_1E484E374(v22, v13, type metadata accessor for Event);
    v23 = v11[5];
    v24 = OBJC_IVAR____TtCC14CalendarWidget18WideMultidayLayout18SingleDayViewModel_date;
    v25 = sub_1E487732C();
    (*(*(v25 - 8) + 16))(&v13[v23], a2 + v24, v25);
    type metadata accessor for CellDisplayContext(0);
    swift_storeEnumTagMultiPayload();
    *&v13[v11[6]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    *&v13[v11[7]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *&v13[v11[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    *&v13[v11[10]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
    swift_storeEnumTagMultiPayload();
    v27 = &v13[v11[9]];
    *v27 = KeyPath;
    v27[8] = 0;
    v28 = type metadata accessor for WideReminderView;
    sub_1E484E374(v13, v38, type metadata accessor for WideReminderView);
    swift_storeEnumTagMultiPayload();
    sub_1E484C774(qword_1EE2B3680, type metadata accessor for WideReminderView, &unk_1E4882334);
    sub_1E484C774(&qword_1ECF7C248, type metadata accessor for WideAllDayView, &unk_1E487CEE8);
    v29 = v42;
    sub_1E487803C();
    v30 = v13;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF20, &qword_1E487C190);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1E487A7E0;
    sub_1E484E374(v22, v31 + v21, type metadata accessor for Event);
    v32 = v6[5];
    v33 = OBJC_IVAR____TtCC14CalendarWidget18WideMultidayLayout18SingleDayViewModel_date;
    v34 = sub_1E487732C();
    (*(*(v34 - 8) + 16))(v8 + v32, a2 + v33, v34);
    type metadata accessor for CellDisplayContext(0);
    swift_storeEnumTagMultiPayload();
    *(v8 + v6[6]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *(v8 + v6[7]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    *(v8 + v6[8]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    v35 = swift_getKeyPath();
    *v8 = v31;
    v36 = v8 + v6[9];
    *v36 = v35;
    v36[8] = 0;
    v28 = type metadata accessor for WideAllDayView;
    sub_1E484E374(v8, v38, type metadata accessor for WideAllDayView);
    swift_storeEnumTagMultiPayload();
    sub_1E484C774(qword_1EE2B3680, type metadata accessor for WideReminderView, &unk_1E4882334);
    sub_1E484C774(&qword_1ECF7C248, type metadata accessor for WideAllDayView, &unk_1E487CEE8);
    v29 = v42;
    sub_1E487803C();
    v30 = v8;
  }

  sub_1E484E3DC(v30, v28);
  sub_1E477372C(v29, v39, &qword_1ECF7C238, &qword_1E487C9A0);
}

uint64_t sub_1E484B15C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v5 = type metadata accessor for WideEventDetailsView(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D9E8, &qword_1E48830B0);
  MEMORY[0x1EEE9AC00](v33[0]);
  v9 = v33 - v8;
  v10 = type metadata accessor for WideReminderView(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D9D8, &qword_1E4883030);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v33 - v14;
  v16 = *a1;
  sub_1E4878D2C();
  v33[1] = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = swift_beginAccess();
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v18 = *(a2 + 24);
  if (v16 >= *(v18 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v19 = (type metadata accessor for Event(0) - 8);
  v20 = v18 + ((*(*v19 + 80) + 32) & ~*(*v19 + 80)) + *(*v19 + 72) * v16;
  if ((*(v20 + v19[16]) & 0xFE) == 6)
  {
    sub_1E484E374(v20, v12, type metadata accessor for Event);
    v21 = v10[5];
    v22 = OBJC_IVAR____TtCC14CalendarWidget18WideMultidayLayout18SingleDayViewModel_date;
    v23 = sub_1E487732C();
    (*(*(v23 - 8) + 16))(&v12[v21], a2 + v22, v23);
    type metadata accessor for CellDisplayContext(0);
    swift_storeEnumTagMultiPayload();
    *&v12[v10[6]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    *&v12[v10[7]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *&v12[v10[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    *&v12[v10[10]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
    swift_storeEnumTagMultiPayload();
    v25 = &v12[v10[9]];
    *v25 = KeyPath;
    v25[8] = 0;
    v26 = type metadata accessor for WideReminderView;
    sub_1E484E374(v12, v9, type metadata accessor for WideReminderView);
    swift_storeEnumTagMultiPayload();
    sub_1E484C774(qword_1EE2B3680, type metadata accessor for WideReminderView, &unk_1E4882334);
    sub_1E484C774(qword_1EE2B2788, type metadata accessor for WideEventDetailsView, &unk_1E487DA88);
    sub_1E487803C();
    v27 = v12;
  }

  else
  {
    sub_1E484E374(v20, v7, type metadata accessor for Event);
    v28 = v5[5];
    v29 = OBJC_IVAR____TtCC14CalendarWidget18WideMultidayLayout18SingleDayViewModel_date;
    v30 = sub_1E487732C();
    (*(*(v30 - 8) + 16))(&v7[v28], a2 + v29, v30);
    type metadata accessor for CellDisplayContext(0);
    swift_storeEnumTagMultiPayload();
    *&v7[v5[6]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    *&v7[v5[7]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *&v7[v5[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    v31 = swift_getKeyPath();
    v32 = &v7[v5[9]];
    *v32 = v31;
    v32[8] = 0;
    v26 = type metadata accessor for WideEventDetailsView;
    sub_1E484E374(v7, v9, type metadata accessor for WideEventDetailsView);
    swift_storeEnumTagMultiPayload();
    sub_1E484C774(qword_1EE2B3680, type metadata accessor for WideReminderView, &unk_1E4882334);
    sub_1E484C774(qword_1EE2B2788, type metadata accessor for WideEventDetailsView, &unk_1E487DA88);
    sub_1E487803C();
    v27 = v7;
  }

  sub_1E484E3DC(v27, v26);
  sub_1E477372C(v15, v34, &qword_1ECF7D9D8, &qword_1E4883030);
}

uint64_t sub_1E484B854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WideXMoreView(0);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(a1 + 16);
  if (*(v8 + 16) && (*(a1 + 40) & 1) == 0)
  {
    KeyPath = swift_getKeyPath();
    *&v7[v4[6]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    *v7 = v8;
    *(v7 + 1) = KeyPath;
    v7[16] = 0;
    v11 = v4[7];

    *&v7[v11] = sub_1E48782BC();
    *&v7[v4[8]] = 0x4018000000000000;
    sub_1E484E43C(v7, a2, type metadata accessor for WideXMoreView);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return (*(v5 + 56))(a2, v9, 1, v4);
}

uint64_t sub_1E484B9F0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1E487736C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  *(v4 + 24) = v12;
  *(v4 + 32) = v12;
  *(v4 + 40) = 0;
  *(v4 + 44) = 0;
  v13 = *(a1 + 48);
  *(v4 + 80) = *(a1 + 32);
  *(v4 + 96) = v13;
  *(v4 + 112) = *(a1 + 64);
  v14 = *(a1 + 16);
  *(v4 + 48) = *a1;
  *(v4 + 64) = v14;
  v15 = OBJC_IVAR____TtCC14CalendarWidget18WideMultidayLayout18SingleDayViewModel_date;
  v16 = sub_1E487732C();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v4 + v15, a2, v16);
  *(v4 + 44) = a3;
  sub_1E487735C();
  v18 = sub_1E487733C();
  v20 = v19;
  (*(v17 + 8))(a2, v16);
  (*(v9 + 8))(v11, v8);
  v21 = (v4 + OBJC_IVAR____TtCC14CalendarWidget18WideMultidayLayout18SingleDayViewModel_id);
  *v21 = v18;
  v21[1] = v20;
  return v4;
}

uint64_t sub_1E484BBA4()
{
  if ((*(v0 + 40) & 1) == 0 && (swift_beginAccess(), *(*(v0 + 16) + 16)) || (swift_beginAccess(), *(*(v0 + 24) + 16)) || *(*(v0 + 32) + 16))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 42) ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_1E484BC28()
{
  v1 = type metadata accessor for Event(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 48);
  v6 = *(*(v0 + 32) + 16);
  if (v6)
  {
    if (v6 <= 2 && *(v0 + 41) == 0)
    {
      v5 = v5 + *(v0 + 56) * v6;
    }

    else
    {
      v5 = v5 + *(v0 + 56);
      v6 = 1;
    }
  }

  swift_beginAccess();
  result = *(v0 + 24);
  v9 = *(result + 16);
  if (v9)
  {
    v10 = result + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v2 + 72);
    v16[1] = *(v0 + 24);

    v12 = 0;
    while (1)
    {
      result = sub_1E484E374(v10, v4, type metadata accessor for Event);
      if ((v6 ^ v12) == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if ((v4[*(v1 + 56)] & 0xFE) == 6)
      {
        sub_1E484E3DC(v4, type metadata accessor for Event);
        v15 = (v0 + 64);
      }

      else
      {
        v13 = *&v4[*(v1 + 28)];
        sub_1E484E3DC(v4, type metadata accessor for Event);
        v14 = 80;
        if (v13 == 0.0)
        {
          v14 = 72;
        }

        v15 = (v0 + v14);
      }

      ++v12;
      v5 = v5 + *v15;
      v10 += v11;
      if (v9 == v12)
      {

        v6 += v12;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:
    if (!__OFSUB__(v6, 1))
    {
      return swift_beginAccess();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E484BEA4()
{
  v1 = v0;
  v19 = type metadata accessor for WideMultidayLayout.SingleDayViewModel(0);
  v17 = v0;
  __swift_project_boxed_opaque_existential_0(&v17, v19);
  v16[0] = swift_getDynamicType();
  swift_getMetatypeMetadata();

  v2 = sub_1E4878BFC();
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_1(&v17);
  v20 = v2;
  v21 = v4;
  sub_1E487732C();
  sub_1E484C774(&qword_1EE2B59F0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v5 = sub_1E48790CC();
  v17 = 32;
  v18 = 0xE100000000000000;
  MEMORY[0x1E69192D0](v5);

  MEMORY[0x1E69192D0](v17, v18);

  if (sub_1E484BBA4())
  {
    v17 = v20;
    v18 = v21;

    MEMORY[0x1E69192D0](10, 0xE100000000000000);

    MEMORY[0x1E69192D0](0x7974706D45, 0xE500000000000000);

    return v17;
  }

  else
  {
    swift_beginAccess();
    v7 = sub_1E48790CC();
    strcpy(v16, "\nxMoreEvents: ");
    HIBYTE(v16[1]) = -18;
    MEMORY[0x1E69192D0](v7);

    MEMORY[0x1E69192D0](v16[0], v16[1]);

    swift_beginAccess();
    v8 = sub_1E48790CC();
    MEMORY[0x1E69192D0](v8);

    MEMORY[0x1E69192D0](0xD000000000000015, 0x80000001E48AA070);

    v9 = sub_1E48790CC();
    MEMORY[0x1E69192D0](v9);

    MEMORY[0x1E69192D0](0x457961446C6C610ALL, 0xEF203A73746E6576);

    if (v1[40])
    {
      v10 = 1702195828;
    }

    else
    {
      v10 = 0x65736C6166;
    }

    if (v1[40])
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE500000000000000;
    }

    MEMORY[0x1E69192D0](v10, v11);

    MEMORY[0x1E69192D0](0xD000000000000013, 0x80000001E48AA090);

    if (v1[41])
    {
      v12 = 1702195828;
    }

    else
    {
      v12 = 0x65736C6166;
    }

    if (v1[41])
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    MEMORY[0x1E69192D0](v12, v13);

    MEMORY[0x1E69192D0](0xD000000000000019, 0x80000001E48AA0B0);

    if (v1[42])
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (v1[42])
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    MEMORY[0x1E69192D0](v14, v15);

    MEMORY[0x1E69192D0](0xD000000000000018, 0x80000001E48AA0D0);

    return v20;
  }
}

uint64_t sub_1E484C2D0()
{

  v1 = OBJC_IVAR____TtCC14CalendarWidget18WideMultidayLayout18SingleDayViewModel_date;
  v2 = sub_1E487732C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WideMultidayLayout.SingleDayViewModel(uint64_t a1)
{
  result = qword_1EE2B3128;
  if (!qword_1EE2B3128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E484C434(uint64_t a1)
{
  result = sub_1E487732C();
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

uint64_t sub_1E484C4FC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E484C51C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

unint64_t sub_1E484C570()
{
  result = qword_1EE2B0D90;
  if (!qword_1EE2B0D90)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D9C8, &qword_1E4883028);
    sub_1E483AA90(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B0D90);
  }

  return result;
}

unint64_t sub_1E484C5FC()
{
  result = qword_1ECF7D9D0;
  if (!qword_1ECF7D9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D9A8, &qword_1E4882FE8);
    sub_1E47A1690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7D9D0);
  }

  return result;
}

unint64_t sub_1E484C688()
{
  result = qword_1EE2B1228;
  if (!qword_1EE2B1228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D9D8, &qword_1E4883030);
    sub_1E484C774(qword_1EE2B3680, type metadata accessor for WideReminderView, &unk_1E4882334);
    sub_1E484C774(qword_1EE2B2788, type metadata accessor for WideEventDetailsView, &unk_1E487DA88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1228);
  }

  return result;
}

uint64_t sub_1E484C774(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E484C7BC(uint64_t a1, uint64_t a2, double a3)
{
  v213 = sub_1E487736C();
  v6 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213);
  v212 = &v196 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = type metadata accessor for Event(0);
  v203 = *(v234 - 8);
  v8 = MEMORY[0x1EEE9AC00](v234);
  v231 = &v196 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v230 = &v196 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v233 = &v196 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v232 = &v196 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v204 = &v196 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v202 = &v196 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v222 = (&v196 - v21);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v196 - v22;
  j = type metadata accessor for DayEvents(0);
  v25 = *(j - 8);
  v26 = MEMORY[0x1EEE9AC00](j);
  v225 = &v196 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v227 = &v196 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v196 - v30;
  v220 = sub_1E487732C();
  MEMORY[0x1EEE9AC00](v220);
  v219 = &v196 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = MEMORY[0x1E69E7CC0];
  v34.n128_u64[0] = *a2;
  if (*a2 == 0.0)
  {
    v34.n128_u64[0] = *(a2 + 8);
    if (v34.n128_f64[0] == 0.0)
    {
      v34.n128_u64[0] = *(a2 + 16);
      if (v34.n128_f64[0] == 0.0)
      {
        v34.n128_u64[0] = *(a2 + 24);
        if (v34.n128_f64[0] == 0.0)
        {
          v34.n128_u64[0] = *(a2 + 32);
          if (v34.n128_f64[0] == 0.0)
          {
            v34.n128_u64[0] = *(a2 + 40);
            if (v34.n128_f64[0] == 0.0)
            {
              v34.n128_u64[0] = *(a2 + 48);
              if (v34.n128_f64[0] == 0.0)
              {
                return MEMORY[0x1E69E7CC0];
              }
            }
          }
        }
      }
    }
  }

  v35 = *(a1 + 16);
  if (!v35)
  {
    goto LABEL_285;
  }

  v228 = v23;
  v36 = a1 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  v217 = v32;
  v37 = v219;
  v210 = *(v32 + 16);
  v211 = v32 + 16;
  v210(v219, v36, v220, v34);
  v38 = *(v36 + *(j + 28));
  v209 = type metadata accessor for WideMultidayLayout.SingleDayViewModel(0);
  v39 = swift_allocObject();
  v221 = a2;
  v223 = v39;
  sub_1E484B9F0(a2, v37, v38);
  v40 = *(v36 + *(j + 20));
  v41 = *(v40 + 16);
  v229 = v35;
  v218 = v6;
  if (v41)
  {
    v42 = 0;
  }

  else
  {
    v42 = *(*(v36 + *(j + 24)) + 16) == 0;
  }

  v43 = v223;
  *(v223 + 42) = v42;
  v44 = 1;
  swift_beginAccess();
  *(v43 + 24) = v40;

  v35 = v36;
  *(v43 + 32) = *(v36 + *(j + 24));

  v6 = v229;
  while (1)
  {
    a2 = v44;
    if (v6 == v44)
    {
      *(v223 + 43) = 1;
      goto LABEL_20;
    }

    sub_1E484E374(v36 + *(v25 + 72) * v44, v31, type metadata accessor for DayEvents);
    if (*(*&v31[*(j + 20)] + 16))
    {
      break;
    }

    ++v44;
    v45 = *(*&v31[*(j + 24)] + 16);
    sub_1E484E3DC(v31, type metadata accessor for DayEvents);
    if (v45)
    {
      goto LABEL_20;
    }
  }

  sub_1E484E3DC(v31, type metadata accessor for DayEvents);
LABEL_20:
  v46 = v223;

  MEMORY[0x1E6919330](v47);
  if (*((v235 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v235 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_286;
  }

LABEL_21:
  sub_1E4878CEC();
  v226 = v235;
  if (v6 == a2 && (*(v46 + 42) & 1) != 0)
  {
LABEL_23:

    return v226;
  }

  v215 = j;
  v49 = 0;
  v207 = (v217 + 8);
  v208 = (v218 + 8);
  v50 = *(v25 + 72);
  v51 = v228;
  v224 = v35;
  v201 = v50;
  while (1)
  {
    if (v49 == v6)
    {
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
LABEL_285:
      __break(1u);
LABEL_286:
      sub_1E4878CCC();
      v46 = v223;
      goto LABEL_21;
    }

    v206 = v49;
    sub_1E484E374(v35 + v50 * v49, v227, type metadata accessor for DayEvents);
    sub_1E484E374(v35, v225, type metadata accessor for DayEvents);
    if (sub_1E48772EC())
    {
      v52 = v215[5];
      v53 = *(v225 + v52);
      v54 = *(v227 + v52);
      v55 = *(v53 + 16);
      if (v55 == *(v54 + 16))
      {
        if (!v55 || v53 == v54)
        {
LABEL_34:
          v61 = v215[6];
          v62 = *(v225 + v61);
          v63 = *(v227 + v61);
          v64 = *(v62 + 16);
          if (v64 == *(v63 + 16))
          {
            if (!v64 || v62 == v63)
            {
LABEL_40:
              if (*(v225 + v215[7]) == *(v227 + v215[7]))
              {
                sub_1E484E3DC(v225, type metadata accessor for DayEvents);
                v84 = v223;

                j = v226;
                goto LABEL_49;
              }
            }

            else
            {
              v65 = (*(v203 + 80) + 32) & ~*(v203 + 80);
              v66 = v62 + v65;
              v25 = v63 + v65;
              v67 = *(v203 + 72);
              while (1)
              {
                sub_1E484E374(v66, v51, type metadata accessor for Event);
                v68 = v222;
                sub_1E484E374(v25, v222, type metadata accessor for Event);
                v69 = _s14CalendarWidget22EventListCellViewModelV2eeoiySbAC_ACtFZ_0(v51, v68);
                sub_1E484E3DC(v68, type metadata accessor for Event);
                sub_1E484E3DC(v51, type metadata accessor for Event);
                if ((v69 & 1) == 0)
                {
                  break;
                }

                v25 += v67;
                v66 += v67;
                if (!--v64)
                {
                  goto LABEL_40;
                }
              }
            }
          }
        }

        else
        {
          v56 = (*(v203 + 80) + 32) & ~*(v203 + 80);
          v57 = v53 + v56;
          v25 = v54 + v56;
          v58 = *(v203 + 72);
          while (1)
          {
            sub_1E484E374(v57, v51, type metadata accessor for Event);
            v59 = v222;
            sub_1E484E374(v25, v222, type metadata accessor for Event);
            v60 = _s14CalendarWidget22EventListCellViewModelV2eeoiySbAC_ACtFZ_0(v51, v59);
            sub_1E484E3DC(v59, type metadata accessor for Event);
            sub_1E484E3DC(v51, type metadata accessor for Event);
            if ((v60 & 1) == 0)
            {
              break;
            }

            v25 += v58;
            v57 += v58;
            if (!--v55)
            {
              goto LABEL_34;
            }
          }
        }
      }
    }

    if ((sub_1E484E3DC(v225, type metadata accessor for DayEvents), v70 = v219, j = v220, v71 = v227, v72 = v210, (v210)(v219, v227, v220), v73 = v215, v74 = *(v71 + v215[7]), v25 = swift_allocObject(), v75 = MEMORY[0x1E69E7CC0], *(v25 + 16) = MEMORY[0x1E69E7CC0], v218 = v25 + 16, *(v25 + 24) = v75, a2 = v25 + 24, *(v25 + 32) = v75, *(v25 + 40) = 0, *(v25 + 44) = 0, v76 = v221, v77 = *(v221 + 48), *(v25 + 80) = *(v221 + 32), *(v25 + 96) = v77, *(v25 + 112) = *(v76 + 64), v78 = *(v76 + 16), *(v25 + 48) = *v76, *(v25 + 64) = v78, v72(v25 + OBJC_IVAR____TtCC14CalendarWidget18WideMultidayLayout18SingleDayViewModel_date, v70, j), *(v25 + 44) = v74, v79 = v212, sub_1E487735C(), v80 = sub_1E487733C(), v82 = v81, v83 = v79, v84 = v25, (*v208)(v83, v213), (*v207)(v70, j), v85 = (v25 + OBJC_IVAR____TtCC14CalendarWidget18WideMultidayLayout18SingleDayViewModel_id), *v85 = v80, v85[1] = v82, *(v25 + 32) = *(v71 + v73[6]), , , , v86 = *(v71 + v73[5]), swift_beginAccess(), *(v25 + 24) = v86, , , (*(v25 + 40) & 1) == 0) && (v87 = v218, swift_beginAccess(), *(*v87 + 16)) || *(*a2 + 16) || *(*(v25 + 32) + 16))
    {

      v6 = v229;
    }

    else
    {
      v100 = *(v25 + 42);

      v6 = v229;
      if ((v100 & 1) == 0)
      {
        sub_1E484E3DC(v227, type metadata accessor for DayEvents);

        v35 = v224;
        v51 = v228;
        goto LABEL_259;
      }
    }

    MEMORY[0x1E6919330](v88);
    v51 = v228;
    if (*((v235 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v235 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E4878CCC();
      v84 = v25;
    }

    sub_1E4878CEC();
    j = v235;
LABEL_49:
    v89 = *(v221 + 56);
    a2 = j >> 62;
    v218 = v84;
    v90 = j & 0xFFFFFFFFFFFFFF8;
    if (j >> 62)
    {
      result = sub_1E4878F0C();
      if (!result)
      {
        v92 = 0.0;
        v35 = v224;
        goto LABEL_69;
      }

      v25 = result;
      if (result < 1)
      {
LABEL_289:
        __break(1u);
LABEL_290:
        __break(1u);
LABEL_291:
        __break(1u);
LABEL_292:
        __break(1u);
LABEL_293:
        __break(1u);
LABEL_294:
        __break(1u);
LABEL_295:
        __break(1u);
LABEL_296:
        __break(1u);
        goto LABEL_297;
      }
    }

    else
    {
      v25 = *((j & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v25)
      {
        v92 = 0.0;
        v35 = v224;
LABEL_59:
        v98 = *(v90 + 16);
        v99 = v98 - 1;
        if (__OFSUB__(v98, 1))
        {
          goto LABEL_284;
        }

        goto LABEL_70;
      }
    }

    if ((j & 0xC000000000000001) != 0)
    {
      v91 = 0;
      v92 = 0.0;
      v35 = v224;
      do
      {
        MEMORY[0x1E6919650](v91++, j);
        sub_1E484BC28();
        v94 = v93;
        swift_unknownObjectRelease();
        v92 = v92 + v94;
      }

      while (v25 != v91);
    }

    else
    {
      v95 = j + 32;
      v92 = 0.0;
      v35 = v224;
      do
      {
        v95 += 8;

        sub_1E484BC28();
        v97 = v96;

        v92 = v92 + v97;
        --v25;
      }

      while (v25);
    }

    v90 = j & 0xFFFFFFFFFFFFFF8;
    v84 = v218;
    a2 = j >> 62;
    if (!(j >> 62))
    {
      goto LABEL_59;
    }

LABEL_69:
    v101 = sub_1E4878F0C();
    v99 = v101 - 1;
    if (__OFSUB__(v101, 1))
    {
      goto LABEL_284;
    }

LABEL_70:
    v226 = j;
    if (v92 + v89 * (v99 & ~(v99 >> 63)) <= a3)
    {
      goto LABEL_235;
    }

    *(v84 + 41) = 1;
    v102 = j & 0xFFFFFFFFFFFFFF8;
    if (a2)
    {
      v108 = sub_1E4878F0C();
      if (!v108)
      {
        v105 = 0.0;
        goto LABEL_86;
      }

      v25 = v108;
      if (v108 < 1)
      {
        goto LABEL_262;
      }
    }

    else
    {
      v25 = *((j & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v25)
      {
        v105 = 0.0;
LABEL_85:
        result = *(v102 + 16);
        goto LABEL_87;
      }
    }

    v103 = a2;
    if ((j & 0xC000000000000001) != 0)
    {
      v104 = 0;
      v105 = 0.0;
      do
      {
        MEMORY[0x1E6919650](v104++, j);
        sub_1E484BC28();
        v107 = v106;
        swift_unknownObjectRelease();
        v105 = v105 + v107;
      }

      while (v25 != v104);
    }

    else
    {
      v109 = j + 32;
      v105 = 0.0;
      do
      {
        v109 += 8;

        sub_1E484BC28();
        v111 = v110;

        v105 = v105 + v111;
        --v25;
      }

      while (v25);
    }

    v102 = j & 0xFFFFFFFFFFFFFF8;
    v84 = v218;
    a2 = v103;
    if (!v103)
    {
      goto LABEL_85;
    }

LABEL_86:
    result = sub_1E4878F0C();
LABEL_87:
    if (__OFSUB__(result, 1))
    {
      goto LABEL_292;
    }

    if (v105 + v89 * ((result - 1) & ~((result - 1) >> 63)) > a3)
    {
      swift_beginAccess();
      v112 = *(*(v84 + 24) + 16);
      if (v112)
      {
        v113 = j & 0xFFFFFFFFFFFFFF8;
        v199 = j & 0xFFFFFFFFFFFFFF8;
        if ((j & 0x8000000000000000) != 0)
        {
          v113 = j;
        }

        v200 = v113;
        v197 = j & 0xC000000000000001;
        v205 = j + 32;
        do
        {
          v198 = v112;
          result = swift_beginAccess();
          v114 = *(v84 + 24);
          if (!v114[2])
          {
            goto LABEL_293;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          *(v84 + 24) = v114;
          if (result)
          {
            v115 = v114[2];
            if (!v115)
            {
              goto LABEL_294;
            }
          }

          else
          {
            result = sub_1E4866E34(v114);
            v114 = result;
            v115 = *(result + 16);
            if (!v115)
            {
              goto LABEL_294;
            }
          }

          v116 = v115 - 1;
          v217 = (*(v203 + 80) + 32) & ~*(v203 + 80);
          v117 = v84;
          v118 = *(v203 + 72);
          v119 = v114 + v217 + v118 * v116;
          v114[2] = v116;
          *(v117 + 24) = v114;
          v120 = v202;
          sub_1E484E43C(v119, v202, type metadata accessor for Event);
          swift_endAccess();
          sub_1E484E374(v120, v204, type metadata accessor for Event);
          swift_beginAccess();
          v121 = *(v117 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v117 + 16) = v121;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v121 = sub_1E4860A08(0, v121[2] + 1, 1, v121);
            *(v218 + 16) = v121;
          }

          v124 = v121[2];
          v123 = v121[3];
          v25 = v124 + 1;
          if (v124 >= v123 >> 1)
          {
            v121 = sub_1E4860A08((v123 > 1), v124 + 1, 1, v121);
          }

          v121[2] = v25;
          sub_1E484E43C(v204, v121 + v217 + v124 * v118, type metadata accessor for Event);
          v125 = v218;
          *(v218 + 16) = v121;
          swift_endAccess();
          *(v125 + 40) = 0;
          if (a2)
          {
            result = sub_1E4878F0C();
            if (!result)
            {
              v127 = 0.0;
LABEL_160:
              result = sub_1E4878F0C();
              goto LABEL_161;
            }

            if (result < 1)
            {
              goto LABEL_263;
            }
          }

          else
          {
            result = *(v199 + 16);
            if (!result)
            {
              v127 = 0.0;
              goto LABEL_161;
            }
          }

          v214 = result;
          v196 = a2;
          if (v197)
          {
            v126 = 0;
            v127 = 0.0;
            while (1)
            {
              v128 = v51;
              v216 = v126;
              v129 = MEMORY[0x1E6919650]();
              a2 = v129;
              v130 = *(v129 + 48);
              v131 = *(*(v129 + 32) + 16);
              if (v131)
              {
                if (v131 > 2 || (*(v129 + 41) & 1) != 0)
                {
                  v130 = v130 + *(v129 + 56);
                  v131 = 1;
                }

                else
                {
                  v130 = v130 + *(v129 + 56) * v131;
                }
              }

              swift_beginAccess();
              v25 = *(a2 + 24);
              v132 = *(v25 + 16);
              if (v132)
              {
                break;
              }

LABEL_121:
              if (__OFSUB__(v131, 1))
              {
LABEL_282:
                __break(1u);
                goto LABEL_283;
              }

              v138 = v130 + *(a2 + 112) * ((v131 - 1) & ~((v131 - 1) >> 63));
              if (*(a2 + 42) == 1)
              {
                v138 = v138 + *(a2 + 96);
              }

              v51 = v128;
              swift_beginAccess();
              if (!*(*(a2 + 16) + 16) || (*(a2 + 40) & 1) != 0)
              {
                swift_unknownObjectRelease();
              }

              else
              {
                v139 = *(a2 + 88);
                swift_unknownObjectRelease();
                v138 = v138 + v139;
              }

              v126 = v216 + 1;
              v127 = v127 + v138;
              if (v216 + 1 == v214)
              {
                goto LABEL_158;
              }
            }

            v133 = v25 + v217;

            j = 0;
            while (1)
            {
              v135 = v233;
              sub_1E484E374(v133, v233, type metadata accessor for Event);
              if ((v131 ^ j) == 0x7FFFFFFFFFFFFFFFLL)
              {
                break;
              }

              if ((*(v135 + *(v234 + 56)) & 0xFE) == 6)
              {
                sub_1E484E3DC(v135, type metadata accessor for Event);
                v134 = (a2 + 64);
              }

              else
              {
                v136 = *(v135 + *(v234 + 28));
                sub_1E484E3DC(v135, type metadata accessor for Event);
                v137 = 80;
                if (v136 == 0.0)
                {
                  v137 = 72;
                }

                v134 = (a2 + v137);
              }

              ++j;
              v130 = v130 + *v134;
              v133 += v118;
              if (v132 == j)
              {

                v131 += j;
                v128 = v228;
                v6 = v229;
                v35 = v224;
                j = v226;
                goto LABEL_121;
              }
            }

            __break(1u);
            goto LABEL_268;
          }

          v140 = 0;
          v127 = 0.0;
          do
          {
            v141 = v51;
            v142 = *(v205 + 8 * v140);
            v143 = *(v142 + 48);
            v144 = *(*(v142 + 32) + 16);
            v216 = v140;
            if (v144)
            {
              if (v144 > 2 || (*(v142 + 41) & 1) != 0)
              {
                v143 = v143 + *(v142 + 56);
                v144 = 1;
              }

              else
              {
                v143 = v143 + *(v142 + 56) * v144;
              }
            }

            swift_beginAccess();
            v25 = *(v142 + 24);
            v145 = *(v25 + 16);
            if (v145)
            {
              v146 = v25 + v217;

              for (i = 0; i != v145; ++i)
              {
                j = v232;
                sub_1E484E374(v146, v232, type metadata accessor for Event);
                if ((v144 ^ i) == 0x7FFFFFFFFFFFFFFFLL)
                {
                  __break(1u);
                  goto LABEL_279;
                }

                if ((*(j + *(v234 + 56)) & 0xFE) == 6)
                {
                  sub_1E484E3DC(j, type metadata accessor for Event);
                  v148 = (v142 + 64);
                }

                else
                {
                  v149 = *(j + *(v234 + 28));
                  sub_1E484E3DC(j, type metadata accessor for Event);
                  v150 = 80;
                  if (v149 == 0.0)
                  {
                    v150 = 72;
                  }

                  v148 = (v142 + v150);
                }

                v143 = v143 + *v148;
                v146 += v118;
              }

              v151 = v144 + i;
              v141 = v228;
              v6 = v229;
              v35 = v224;
              j = v226;
              v152 = v151 - 1;
              if (__OFSUB__(v151, 1))
              {
                goto LABEL_287;
              }
            }

            else
            {

              v152 = v144 - 1;
              if (__OFSUB__(v144, 1))
              {
LABEL_287:
                __break(1u);
LABEL_288:
                __break(1u);
                __break(1u);
                goto LABEL_289;
              }
            }

            v153 = v143 + *(v142 + 112) * (v152 & ~(v152 >> 63));
            if (*(v142 + 42) == 1)
            {
              v153 = v153 + *(v142 + 96);
            }

            v51 = v141;
            swift_beginAccess();
            if (!*(*(v142 + 16) + 16) || (*(v142 + 40) & 1) != 0)
            {
            }

            else
            {
              v154 = *(v142 + 88);

              v153 = v153 + v154;
            }

            v140 = v216 + 1;
            v127 = v127 + v153;
          }

          while (v216 + 1 != v214);
LABEL_158:
          a2 = v196;
          if (v196)
          {
            goto LABEL_160;
          }

          result = *(v199 + 16);
LABEL_161:
          if (__OFSUB__(result, 1))
          {
            goto LABEL_295;
          }

          if (v127 + v89 * ((result - 1) & ~((result - 1) >> 63)) <= a3)
          {
            goto LABEL_280;
          }

          *(v218 + 40) = 1;
          if (a2)
          {
            v155 = sub_1E4878F0C();
            if (!v155)
            {
              v157 = 0.0;
              goto LABEL_223;
            }

            if (v155 < 1)
            {
              goto LABEL_264;
            }
          }

          else
          {
            v155 = *(v199 + 16);
            if (!v155)
            {
              v171 = 0;
              v157 = 0.0;
              v84 = v218;
              goto LABEL_224;
            }
          }

          v214 = v155;
          v196 = a2;
          if (v197)
          {
            v156 = 0;
            v157 = 0.0;
            while (1)
            {
              v158 = v51;
              v216 = v156;
              v159 = MEMORY[0x1E6919650]();
              v160 = v159;
              v161 = *(v159 + 48);
              v162 = *(*(v159 + 32) + 16);
              if (v162)
              {
                if (v162 > 2 || (*(v159 + 41) & 1) != 0)
                {
                  v161 = v161 + *(v159 + 56);
                  v162 = 1;
                }

                else
                {
                  v161 = v161 + *(v159 + 56) * v162;
                }
              }

              result = swift_beginAccess();
              v25 = *(v160 + 24);
              v163 = *(v25 + 16);
              if (v163)
              {
                break;
              }

LABEL_184:
              if (__OFSUB__(v162, 1))
              {
                goto LABEL_288;
              }

              v169 = v161 + *(v160 + 112) * ((v162 - 1) & ~((v162 - 1) >> 63));
              if (*(v160 + 42) == 1)
              {
                v169 = v169 + *(v160 + 96);
              }

              v51 = v158;
              swift_beginAccess();
              if (!*(*(v160 + 16) + 16) || (*(v160 + 40) & 1) != 0)
              {
                swift_unknownObjectRelease();
              }

              else
              {
                v170 = *(v160 + 88);
                swift_unknownObjectRelease();
                v169 = v169 + v170;
              }

              v156 = v216 + 1;
              v157 = v157 + v169;
              if (v216 + 1 == v214)
              {
                goto LABEL_221;
              }
            }

            v164 = v25 + v217;

            j = 0;
            while (1)
            {
              v166 = v231;
              sub_1E484E374(v164, v231, type metadata accessor for Event);
              if ((v162 ^ j) == 0x7FFFFFFFFFFFFFFFLL)
              {
                break;
              }

              if ((*(v166 + *(v234 + 56)) & 0xFE) == 6)
              {
                sub_1E484E3DC(v166, type metadata accessor for Event);
                v165 = (v160 + 64);
              }

              else
              {
                v167 = *(v166 + *(v234 + 28));
                sub_1E484E3DC(v166, type metadata accessor for Event);
                v168 = 80;
                if (v167 == 0.0)
                {
                  v168 = 72;
                }

                v165 = (v160 + v168);
              }

              ++j;
              v161 = v161 + *v165;
              v164 += v118;
              if (v163 == j)
              {

                v162 += j;
                v158 = v228;
                v6 = v229;
                v35 = v224;
                j = v226;
                goto LABEL_184;
              }
            }

LABEL_279:
            __break(1u);
LABEL_280:
            sub_1E484E3DC(v202, type metadata accessor for Event);

            goto LABEL_277;
          }

          v172 = 0;
          v157 = 0.0;
          do
          {
            v173 = v51;
            v174 = *(v205 + 8 * v172);
            v175 = *(v174 + 48);
            v176 = *(*(v174 + 32) + 16);
            v216 = v172;
            if (v176)
            {
              if (v176 > 2 || (*(v174 + 41) & 1) != 0)
              {
                v175 = v175 + *(v174 + 56);
                v176 = 1;
              }

              else
              {
                v175 = v175 + *(v174 + 56) * v176;
              }
            }

            swift_beginAccess();
            v25 = *(v174 + 24);
            v177 = *(v25 + 16);
            if (v177)
            {
              a2 = v25 + v217;
              v35 = v174 + 64;

              for (j = 0; j != v177; ++j)
              {
                v6 = v230;
                sub_1E484E374(a2, v230, type metadata accessor for Event);
                if ((v176 ^ j) == 0x7FFFFFFFFFFFFFFFLL)
                {
                  __break(1u);
                  __break(1u);
                  goto LABEL_282;
                }

                if ((*(v6 + *(v234 + 56)) & 0xFE) == 6)
                {
                  sub_1E484E3DC(v6, type metadata accessor for Event);
                  v178 = (v174 + 64);
                }

                else
                {
                  v179 = *(v6 + *(v234 + 28));
                  sub_1E484E3DC(v6, type metadata accessor for Event);
                  v180 = 80;
                  if (v179 == 0.0)
                  {
                    v180 = 72;
                  }

                  v178 = (v174 + v180);
                }

                v175 = v175 + *v178;
                a2 += v118;
              }

              v181 = v176 + j;
              v173 = v228;
              v6 = v229;
              v35 = v224;
              j = v226;
              v182 = v181 - 1;
              if (__OFSUB__(v181, 1))
              {
                goto LABEL_291;
              }
            }

            else
            {

              v182 = v176 - 1;
              if (__OFSUB__(v176, 1))
              {
                goto LABEL_291;
              }
            }

            v183 = v175 + *(v174 + 112) * (v182 & ~(v182 >> 63));
            if (*(v174 + 42) == 1)
            {
              v183 = v183 + *(v174 + 96);
            }

            v51 = v173;
            swift_beginAccess();
            if (!*(*(v174 + 16) + 16) || (*(v174 + 40) & 1) != 0)
            {
            }

            else
            {
              v184 = *(v174 + 88);

              v183 = v183 + v184;
            }

            v172 = v216 + 1;
            v157 = v157 + v183;
          }

          while (v216 + 1 != v214);
LABEL_221:
          a2 = v196;
          if (!v196)
          {
            v171 = *(v199 + 16);
            v84 = v218;
            goto LABEL_224;
          }

LABEL_223:
          v84 = v218;
          v171 = sub_1E4878F0C();
LABEL_224:
          result = sub_1E484E3DC(v202, type metadata accessor for Event);
          if (__OFSUB__(v171, 1))
          {
            goto LABEL_296;
          }

          if (v157 + v89 * ((v171 - 1) & ~((v171 - 1) >> 63)) <= a3 && ((*(v84 + 40) & 1) == 0 && *(*(v84 + 16) + 16) || *(*(v84 + 24) + 16) || *(*(v84 + 32) + 16) || *(v84 + 42) == 1))
          {
            goto LABEL_276;
          }

          v112 = v198 - 1;
        }

        while (v198 != 1);
      }
    }

LABEL_235:
    v185 = j & 0xFFFFFFFFFFFFFF8;
    if (a2)
    {
      break;
    }

    v25 = *((j & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v25)
    {
      v188 = 0.0;
      goto LABEL_249;
    }

LABEL_237:
    v186 = a2;
    if ((j & 0xC000000000000001) != 0)
    {
      v187 = 0;
      v188 = 0.0;
      do
      {
        MEMORY[0x1E6919650](v187++, j);
        sub_1E484BC28();
        v190 = v189;
        swift_unknownObjectRelease();
        v188 = v188 + v190;
      }

      while (v25 != v187);
    }

    else
    {
      v192 = j + 32;
      v188 = 0.0;
      do
      {
        v192 += 8;

        sub_1E484BC28();
        v194 = v193;

        v188 = v188 + v194;
        --v25;
      }

      while (v25);
    }

    v185 = j & 0xFFFFFFFFFFFFFF8;
    v84 = v218;
    a2 = v186;
    if (v186)
    {
      goto LABEL_250;
    }

LABEL_249:
    result = *(v185 + 16);
LABEL_251:
    if (__OFSUB__(result, 1))
    {
      goto LABEL_290;
    }

    if (v188 + v89 * ((result - 1) & ~((result - 1) >> 63)) > a3)
    {
      goto LABEL_265;
    }

    if ((*(v84 + 40) & 1) != 0 || (swift_beginAccess(), !*(*(v84 + 16) + 16)))
    {
      swift_beginAccess();
      if (!*(*(v84 + 24) + 16) && !*(*(v84 + 32) + 16) && (*(v84 + 42) & 1) == 0)
      {
        goto LABEL_265;
      }
    }

    sub_1E484E3DC(v227, type metadata accessor for DayEvents);
LABEL_259:
    v49 = v206 + 1;
    v50 = v201;
    if (v206 + 1 == v6)
    {
      goto LABEL_23;
    }
  }

  v191 = sub_1E4878F0C();
  if (!v191)
  {
    v188 = 0.0;
LABEL_250:
    result = sub_1E4878F0C();
    goto LABEL_251;
  }

  v25 = v191;
  if (v191 >= 1)
  {
    goto LABEL_237;
  }

  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
LABEL_265:
  if (a2)
  {
LABEL_268:
    result = sub_1E4878F0C();
  }

  else
  {
    result = *((j & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!result)
  {
LABEL_297:
    __break(1u);
    goto LABEL_298;
  }

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (j & 0x8000000000000000) != 0 || (j & 0x4000000000000000) != 0)
  {
    result = sub_1E4866E30(j);
    j = result;
  }

  v195 = *((j & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v195)
  {
    *((j & 0xFFFFFFFFFFFFFF8) + 0x10) = v195 - 1;

LABEL_276:

LABEL_277:

    sub_1E484E3DC(v227, type metadata accessor for DayEvents);
    return j;
  }

LABEL_298:
  __break(1u);
  return result;
}

uint64_t sub_1E484E374(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E484E3DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E484E43C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for NoEventsView(uint64_t a1)
{
  result = qword_1EE2B3DD0;
  if (!qword_1EE2B3DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E484E518(uint64_t a1)
{
  sub_1E487732C();
  if (v1 <= 0x3F)
  {
    sub_1E478305C();
    if (v2 <= 0x3F)
    {
      sub_1E484E620(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8]);
      if (v3 <= 0x3F)
      {
        sub_1E484E620(319, &qword_1EE2B1698, MEMORY[0x1E6985780]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E484E620(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4877B4C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1E484E690()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for NoEventsView(0) + 36);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    v7 = sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC(v7, &dword_1E475C000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_1E484E7E8@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for NoEventsView(0);
  sub_1E4773850(v1 + *(v10 + 40), v9, &qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487753C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E484E9F0@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for NoEventsView(0);
  sub_1E4773850(v1 + *(v10 + 44), v9, &qword_1ECF7B7E8, &qword_1E487A700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487893C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

BOOL sub_1E484EBF8()
{
  v1 = sub_1E487751C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E487753C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E487732C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, v0, v9);
  sub_1E4877A7C();
  (*(v2 + 104))(v4, *MEMORY[0x1E6969A58], v1);
  v13 = sub_1E487752C();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  return v13 > 16;
}

uint64_t sub_1E484EE58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v28 - v1;
  v3 = sub_1E487757C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E487753C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v28 - v12);
  if (sub_1E484EBF8())
  {
    if (qword_1EE2B4848 != -1)
    {
      swift_once();
    }

    return sub_1E48771EC();
  }

  else
  {
    v15 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v28 = v3;
    v16 = v15;
    sub_1E484E7E8(v13);
    v17 = sub_1E487748C();
    v29 = v2;
    v18 = *(v8 + 8);
    v18(v13, v7);
    [v16 setCalendar_];

    sub_1E484E7E8(v13);
    sub_1E487750C();
    v18(v13, v7);
    v19 = sub_1E487756C();
    (*(v4 + 8))(v6, v28);
    [v16 setTimeZone_];

    v20 = v29;
    sub_1E484E7E8(v11);
    sub_1E48774EC();
    v18(v11, v7);
    v21 = sub_1E487744C();
    v22 = *(v21 - 8);
    v23 = 0;
    if ((*(v22 + 48))(v20, 1, v21) != 1)
    {
      v23 = sub_1E48773DC();
      (*(v22 + 8))(v20, v21);
    }

    [v16 setLocale_];

    [v16 setFormattingContext_];
    v24 = sub_1E4878B9C();
    [v16 setLocalizedDateFormatFromTemplate_];

    v25 = sub_1E48772BC();
    v26 = [v16 stringFromDate_];

    v27 = sub_1E4878BDC();
    return v27;
  }
}

double sub_1E484F2C4()
{
  if (sub_1E484EBF8())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F8, &qword_1E487AC28);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1E487A7E0;
    if (qword_1EE2B4848 != -1)
    {
      swift_once();
    }

    *(v1 + 32) = sub_1E48771EC();
    *(v1 + 40) = v2;
  }

  else
  {
    v4 = *(v0 + *(type metadata accessor for NoEventsView(0) + 20));

    return sub_1E486E640(v4, 1);
  }

  return result;
}

uint64_t sub_1E484F3E0()
{
  if (sub_1E484EBF8())
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F8, &qword_1E487AC28);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E487A7F0;
  if (qword_1EE2B4848 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = sub_1E48771EC();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1E48771EC();
  *(v0 + 56) = v2;
  return v0;
}

uint64_t sub_1E484F540()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v17 - v1;
  v18 = sub_1E487753C();
  v3 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1E487893C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  sub_1E484E9F0((&v17 - v11));
  sub_1E487892C();
  v13 = sub_1E48788FC();
  v14 = *(v7 + 8);
  v14(v10, v6);
  v14(v12, v6);
  if ((v13 & 1) == 0)
  {
    return sub_1E48786EC();
  }

  sub_1E484E7E8(v5);
  sub_1E48774EC();
  (*(v3 + 8))(v5, v18);
  v15 = MEMORY[0x1E6918080](v2);
  sub_1E47738B8(v2, &qword_1ECF7BE58, &unk_1E487DDB0);
  return v15;
}

uint64_t sub_1E484F78C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v241 = a2;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D9F8, &qword_1E4883138);
  MEMORY[0x1EEE9AC00](v239);
  v240 = &v203 - v3;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DA00, &qword_1E4883140);
  MEMORY[0x1EEE9AC00](v221);
  v213 = &v203 - v4;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DA08, &qword_1E4883148);
  MEMORY[0x1EEE9AC00](v218);
  v220 = &v203 - v5;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DA10, &qword_1E4883150);
  MEMORY[0x1EEE9AC00](v219);
  v204 = &v203 - v6;
  v249 = sub_1E487719C();
  v7 = *(v249 - 8);
  v8 = MEMORY[0x1EEE9AC00](v249);
  v248 = &v203 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v247 = &v203 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v246 = &v203 - v12;
  v228 = type metadata accessor for TextStringThatFits(0);
  v13 = MEMORY[0x1EEE9AC00](v228);
  v224 = (&v203 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v13);
  v210 = &v203 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v223 = (&v203 - v18);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v208 = &v203 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v222 = (&v203 - v22);
  MEMORY[0x1EEE9AC00](v21);
  v207 = &v203 - v23;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DA18, &qword_1E4883158);
  v24 = MEMORY[0x1EEE9AC00](v230);
  v211 = &v203 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v209 = &v203 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v212 = &v203 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v206 = &v203 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v229 = &v203 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v216 = &v203 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v205 = &v203 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v227 = &v203 - v38;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DA20, &qword_1E4883160);
  MEMORY[0x1EEE9AC00](v236);
  v217 = &v203 - v39;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DA28, &qword_1E4883168);
  v226 = *(v233 - 8);
  v40 = MEMORY[0x1EEE9AC00](v233);
  v203 = &v203 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v215 = &v203 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v214 = &v203 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DA30, &qword_1E4883170);
  v46 = MEMORY[0x1EEE9AC00](v45 - 8);
  v238 = &v203 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v234 = &v203 - v48;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C0D8, &qword_1E487C680);
  v235 = *(v237 - 8);
  v49 = MEMORY[0x1EEE9AC00](v237);
  v232 = &v203 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v244 = &v203 - v51;
  sub_1E4878D2C();
  v231 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v250 = sub_1E484EE58();
  v251 = v52;
  v225 = sub_1E477A374(v250, v52, v53);
  v54 = sub_1E487848C();
  v56 = v55;
  v58 = v57;
  sub_1E484F540();
  v59 = sub_1E48783FC();
  v245 = a1;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v242 = v65;

  sub_1E477A3C8(v54, v56, v58 & 1);

  v243 = type metadata accessor for NoEventsView(0);
  v66 = sub_1E487842C();
  v68 = v67;
  v70 = v69;
  v72 = v71;
  sub_1E477A3C8(v60, v62, v64 & 1);

  KeyPath = swift_getKeyPath();
  v250 = v66;
  v251 = v68;
  v252 = v70 & 1;
  v253 = v72;
  v254 = KeyPath;
  v255 = 1;
  v256 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
  sub_1E477A490();
  sub_1E48784AC();
  sub_1E477A3C8(v66, v68, v70 & 1);
  v74 = v245;

  v75 = sub_1E484F3E0();
  if (v75)
  {
    v76 = v75;
    v77 = v243;
    v78 = *(v74 + *(v243 + 24));
    sub_1E484F2C4();
    if ((v78 & 1) == 0)
    {
      v242 = v76;
      v95 = MEMORY[0x1E69E7CD0];
      v250 = MEMORY[0x1E69E7CD0];
      v96 = sub_1E477A548(v79);
      v227 = 0;

      v97 = *(v74 + *(v77 + 32));
      v98 = *(v228 + 32);
      *(v223 + v98) = swift_getKeyPath();
      v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
      swift_storeEnumTagMultiPayload();
      v99 = *(v96 + 16);
      v243 = v97;
      if (v99)
      {
        v250 = MEMORY[0x1E69E7CC0];
        swift_retain_n();
        sub_1E4858274(0, v99, 0);
        v100 = v250;
        v246 = (v7 + 32);
        v225 = v96;
        v101 = v96 + 40;
        do
        {

          sub_1E4878D1C();
          sub_1E4878D0C();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v102 = v247;
          sub_1E487712C();

          v250 = v100;
          v104 = *(v100 + 16);
          v103 = *(v100 + 24);
          if (v104 >= v103 >> 1)
          {
            sub_1E4858274((v103 > 1), v104 + 1, 1);
            v100 = v250;
          }

          *(v100 + 16) = v104 + 1;
          (*(v7 + 32))(v100 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v104, v102, v249);
          v101 += 16;
          --v99;
        }

        while (v99);

        v97 = v243;
        v95 = MEMORY[0x1E69E7CD0];
      }

      else
      {
        swift_retain_n();

        v100 = MEMORY[0x1E69E7CC0];
      }

      v164 = v223;
      *v223 = v100;
      *(v164 + 8) = v97;
      *(v164 + 16) = 0;
      *(v164 + 24) = 0;
      v165 = v208;
      sub_1E4851394(v164, v208);
      v166 = 0;
      if (sub_1E484E690())
      {
        if (qword_1EE2B3C68 != -1)
        {
          swift_once();
        }

        v166 = qword_1EE2B3C70;
      }

      v167 = swift_getKeyPath();
      v168 = v165;
      v169 = v206;
      sub_1E4851394(v168, v206);
      v170 = (v169 + *(v230 + 36));
      *v170 = v167;
      v170[1] = v166;
      sub_1E48513F8(v169, v229);
      v250 = v95;
      v171 = sub_1E477A548(v242);

      v172 = *(v228 + 32);
      *(v224 + v172) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v173 = *(v171 + 16);
      if (v173)
      {
        v250 = MEMORY[0x1E69E7CC0];
        sub_1E4858274(0, v173, 0);
        v174 = v250;
        v246 = v171;
        v247 = (v7 + 32);
        v175 = v171 + 40;
        do
        {

          sub_1E4878D1C();
          sub_1E4878D0C();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v176 = v248;
          sub_1E487712C();

          v250 = v174;
          v178 = *(v174 + 16);
          v177 = *(v174 + 24);
          if (v178 >= v177 >> 1)
          {
            sub_1E4858274((v177 > 1), v178 + 1, 1);
            v174 = v250;
          }

          *(v174 + 16) = v178 + 1;
          (*(v7 + 32))(v174 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v178, v176, v249);
          v175 += 16;
          --v173;
        }

        while (v173);

        v97 = v243;
      }

      else
      {

        v174 = MEMORY[0x1E69E7CC0];
      }

      v179 = v224;
      *v224 = v174;
      *(v179 + 8) = v97;
      *(v179 + 16) = 0;
      *(v179 + 24) = 0;
      v180 = v210;
      sub_1E4851394(v179, v210);
      if (sub_1E484E690())
      {
        v163 = v240;
        v181 = v209;
        if (qword_1EE2B3C50 != -1)
        {
          swift_once();
        }

        v182 = qword_1EE2B3C58;
      }

      else
      {
        v182 = sub_1E48786FC();
        v163 = v240;
        v181 = v209;
      }

      v183 = swift_getKeyPath();
      sub_1E4851394(v180, v181);
      v184 = (v181 + *(v230 + 36));
      *v184 = v183;
      v184[1] = v182;
      v185 = v212;
      sub_1E48513F8(v181, v212);
      v186 = v216;
      sub_1E4773850(v229, v216, &qword_1ECF7DA18, &qword_1E4883158);
      v187 = v211;
      sub_1E4773850(v185, v211, &qword_1ECF7DA18, &qword_1E4883158);
      v188 = v213;
      sub_1E4773850(v186, v213, &qword_1ECF7DA18, &qword_1E4883158);
      v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DA58, &qword_1E4883210);
      sub_1E4773850(v187, v188 + *(v189 + 48), &qword_1ECF7DA18, &qword_1E4883158);
      sub_1E47738B8(v187, &qword_1ECF7DA18, &qword_1E4883158);
      sub_1E47738B8(v186, &qword_1ECF7DA18, &qword_1E4883158);
      sub_1E4773850(v188, v220, &qword_1ECF7DA00, &qword_1E4883140);
      swift_storeEnumTagMultiPayload();
      v190 = MEMORY[0x1E6981F50];
      sub_1E4773680(&qword_1ECF7DA40, &qword_1ECF7DA10, &qword_1E4883150, MEMORY[0x1E6981F50]);
      sub_1E4773680(&qword_1ECF7DA48, &qword_1ECF7DA00, &qword_1E4883140, v190);
      v191 = v217;
      sub_1E487803C();
      v192 = v188;
      v161 = v191;
      sub_1E47738B8(v192, &qword_1ECF7DA00, &qword_1E4883140);
      sub_1E47738B8(v185, &qword_1ECF7DA18, &qword_1E4883158);
      v162 = v229;
      goto LABEL_59;
    }

    v250 = MEMORY[0x1E69E7CD0];
    v80 = sub_1E477A548(v79);

    v81 = *(v74 + *(v77 + 32));
    v82 = *(v228 + 32);
    *(v222 + v82) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    v83 = *(v80 + 16);
    if (v83)
    {
      v242 = v76;
      v250 = MEMORY[0x1E69E7CC0];
      v247 = v81;

      sub_1E4858274(0, v83, 0);
      v84 = v250;
      v248 = (v7 + 32);
      v243 = v80;
      v85 = v80 + 40;
      do
      {

        sub_1E4878D1C();
        sub_1E4878D0C();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v86 = v246;
        sub_1E487712C();

        v250 = v84;
        v88 = *(v84 + 16);
        v87 = *(v84 + 24);
        if (v88 >= v87 >> 1)
        {
          sub_1E4858274((v87 > 1), v88 + 1, 1);
          v84 = v250;
        }

        *(v84 + 16) = v88 + 1;
        (*(v7 + 32))(v84 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v88, v86, v249);
        v85 += 16;
        --v83;
      }

      while (v83);

      v76 = v242;
      v81 = v247;
    }

    else
    {

      v84 = MEMORY[0x1E69E7CC0];
    }

    v123 = v222;
    *v222 = v84;
    *(v123 + 8) = v81;
    *(v123 + 16) = 0;
    *(v123 + 24) = 0;
    v124 = v207;
    sub_1E4851394(v123, v207);
    v125 = sub_1E484E690();
    v126 = 0;
    v127 = v227;
    if (v125)
    {
      if (qword_1EE2B3C68 != -1)
      {
        swift_once();
      }

      v126 = qword_1EE2B3C70;
    }

    v128 = swift_getKeyPath();
    v129 = v124;
    v92 = v205;
    sub_1E4851394(v129, v205);
    v130 = (v92 + *(v230 + 36));
    *v130 = v128;
    v130[1] = v126;
    sub_1E48513F8(v92, v127);
    if (v76[2])
    {
      v132 = v76[4];
      v131 = v76[5];

      v250 = v132;
      v251 = v131;
      v133 = sub_1E487848C();
      v135 = v134;
      v137 = v136;
      if (sub_1E484E690())
      {
        if (qword_1EE2B3C50 != -1)
        {
          swift_once();
        }
      }

      else
      {
        sub_1E48786FC();
      }

      v138 = sub_1E48783FC();
      v140 = v139;
      v142 = v141;

      sub_1E477A3C8(v133, v135, v137 & 1);

      v143 = sub_1E487842C();
      v145 = v144;
      v147 = v146;
      v149 = v148;
      sub_1E477A3C8(v138, v140, v142 & 1);

      v250 = v143;
      v251 = v145;
      v252 = v147 & 1;
      v253 = v149;
      v150 = v215;
      sub_1E48785EC();
      sub_1E477A3C8(v143, v145, v147 & 1);

      v151 = v216;
      sub_1E4773850(v227, v216, &qword_1ECF7DA18, &qword_1E4883158);
      v152 = v226;
      v153 = *(v226 + 16);
      v154 = v203;
      v155 = v150;
      v156 = v233;
      v153(v203, v155, v233);
      v157 = v204;
      sub_1E4773850(v151, v204, &qword_1ECF7DA18, &qword_1E4883158);
      v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DA60, &qword_1E4883218);
      v153((v157 + *(v158 + 48)), v154, v156);
      v159 = *(v152 + 8);
      v159(v154, v156);
      sub_1E47738B8(v151, &qword_1ECF7DA18, &qword_1E4883158);
      sub_1E4773850(v157, v220, &qword_1ECF7DA10, &qword_1E4883150);
      swift_storeEnumTagMultiPayload();
      v160 = MEMORY[0x1E6981F50];
      sub_1E4773680(&qword_1ECF7DA40, &qword_1ECF7DA10, &qword_1E4883150, MEMORY[0x1E6981F50]);
      sub_1E4773680(&qword_1ECF7DA48, &qword_1ECF7DA00, &qword_1E4883140, v160);
      v161 = v217;
      sub_1E487803C();
      v162 = v227;
      sub_1E47738B8(v157, &qword_1ECF7DA10, &qword_1E4883150);
      v159(v215, v156);
      v163 = v240;
LABEL_59:
      sub_1E47738B8(v162, &qword_1ECF7DA18, &qword_1E4883158);
      sub_1E4773850(v161, v163, &qword_1ECF7DA20, &qword_1E4883160);
      swift_storeEnumTagMultiPayload();
      sub_1E48512B4();
      v250 = MEMORY[0x1E6981150];
      v251 = MEMORY[0x1E6981140];
      swift_getOpaqueTypeConformance2();
      v122 = v234;
      sub_1E487803C();
      sub_1E47738B8(v161, &qword_1ECF7DA20, &qword_1E4883160);
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_62;
  }

  sub_1E484F2C4();
  if (v89[2])
  {
    v91 = v89[4];
    v90 = v89[5];

    v250 = v91;
    v251 = v90;
    v92 = sub_1E487848C();
    v76 = v93;
    LOBYTE(v7) = v94;
    if ((sub_1E484E690() & 1) == 0)
    {
      sub_1E48786FC();
      goto LABEL_26;
    }

    if (qword_1EE2B3C50 == -1)
    {
LABEL_16:

LABEL_26:
      v105 = sub_1E48783FC();
      v107 = v106;
      v109 = v108;

      sub_1E477A3C8(v92, v76, v7 & 1);

      v110 = sub_1E487842C();
      v112 = v111;
      v114 = v113;
      v116 = v115;
      sub_1E477A3C8(v105, v107, v109 & 1);

      v250 = v110;
      v251 = v112;
      v252 = v114 & 1;
      v253 = v116;
      v117 = MEMORY[0x1E6981150];
      v118 = MEMORY[0x1E6981140];
      v119 = v214;
      sub_1E48785EC();
      sub_1E477A3C8(v110, v112, v114 & 1);

      v120 = v226;
      v121 = v233;
      (*(v226 + 16))(v240, v119, v233);
      swift_storeEnumTagMultiPayload();
      sub_1E48512B4();
      v250 = v117;
      v251 = v118;
      swift_getOpaqueTypeConformance2();
      v122 = v234;
      sub_1E487803C();
      (*(v120 + 8))(v119, v121);
LABEL_60:
      v193 = v241;
      v194 = v235;
      v195 = *(v235 + 16);
      v196 = v232;
      v197 = v244;
      v198 = v237;
      v195(v232, v244, v237);
      v199 = v238;
      sub_1E4773850(v122, v238, &qword_1ECF7DA30, &qword_1E4883170);
      v195(v193, v196, v198);
      v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DA50, &qword_1E48831A8);
      sub_1E4773850(v199, &v193[*(v200 + 48)], &qword_1ECF7DA30, &qword_1E4883170);
      sub_1E47738B8(v122, &qword_1ECF7DA30, &qword_1E4883170);
      v201 = *(v194 + 8);
      v201(v197, v198);
      sub_1E47738B8(v199, &qword_1ECF7DA30, &qword_1E4883170);
      v201(v196, v198);
    }

LABEL_62:
    swift_once();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4851264@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1E4877FBC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D9F0, &qword_1E4883130);
  return sub_1E484F78C(v2, (a2 + *(v4 + 44)));
}

unint64_t sub_1E48512B4()
{
  result = qword_1ECF7DA38;
  if (!qword_1ECF7DA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7DA20, &qword_1E4883160);
    v1 = MEMORY[0x1E6981F50];
    sub_1E4773680(&qword_1ECF7DA40, &qword_1ECF7DA10, &qword_1E4883150, MEMORY[0x1E6981F50]);
    sub_1E4773680(&qword_1ECF7DA48, &qword_1ECF7DA00, &qword_1E4883140, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7DA38);
  }

  return result;
}

uint64_t sub_1E4851394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextStringThatFits(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48513F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DA18, &qword_1E4883158);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E48514B0(uint64_t a1)
{
  sub_1E487732C();
  if (v1 <= 0x3F)
  {
    sub_1E485531C(319, &qword_1EE2B0DD0, type metadata accessor for DayEvents, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1E485531C(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCC8]);
      if (v3 <= 0x3F)
      {
        sub_1E478305C();
        if (v4 <= 0x3F)
        {
          sub_1E485531C(319, &qword_1EE2B1680, MEMORY[0x1E697EA50], MEMORY[0x1E697DCC8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

id sub_1E4851628@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = type metadata accessor for Event(0);
  v8 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1E487732C();
  v11 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DayEvents(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Utils();
  v54 = a3;
  v17 = sub_1E485E54C(v16, a1, a2, a3);

  sub_1E48547B8(v16, type metadata accessor for DayEvents);
  v18 = *(v17 + 16);
  v53 = v11;
  if (!v18)
  {
    v41 = sub_1E4854818();
    v39 = 0;
    v30 = 0;
    v42 = v54;
    v32 = v55;
LABEL_14:
    *a4 = v41;
    *(a4 + 8) = v30;
    EventContentViewModel = type metadata accessor for CircularNextEventContentViewModel(0);
    sub_1E476DFDC(v17, a4 + *(EventContentViewModel + 28));

    v45 = sub_1E487753C();
    (*(*(v45 - 8) + 8))(v42, v45);
    result = (*(v53 + 8))(a1, v32);
    *(a4 + 16) = v39;
    return result;
  }

  v47 = a1;
  v48 = a4;
  v19 = v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v20 = *(v11 + 16);
  v49 = *(v52 + 20);
  v50 = v11 + 16;
  v51 = v20;
  v20(v13, v19 + v49, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D958, &qword_1E4882DC8);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1E4883230;
  v22 = objc_opt_self();
  v23 = sub_1E48772BC();
  v24 = v54;
  v25 = v23;
  v26 = sub_1E487748C();
  v27 = [v22 timeAttributedTextWithDate:v25 calendar:v26 font:0 options:17];

  v46 = v21;
  *(v21 + 32) = v27;
  v28 = *(v53 + 8);
  v29 = v55;
  v28(v13, v55);
  v51(v13, v19 + v49, v29);
  v30 = sub_1E4854B18(v13, v24);
  v28(v13, v29);
  v31 = *(v17 + 16);
  v32 = v29;
  if (!v31)
  {
    v43 = v30;
    v39 = 1;
LABEL_13:
    a1 = v47;
    a4 = v48;
    v42 = v54;
    v41 = v46;
    goto LABEL_14;
  }

  v33 = *(v52 + 56);
  result = v30;
  v35 = 0;
  v36 = v31 - 1;
  while (v35 < *(v17 + 16))
  {
    sub_1E485569C(v19 + *(v8 + 72) * v35, v10, type metadata accessor for Event);
    v37 = v10[v33];
    result = sub_1E48547B8(v10, type metadata accessor for Event);
    v38 = v37 - 3;
    v39 = (v37 - 3) < 2;
    if (v38 > 1 || v36 == v35++)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4851A84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DA90, &qword_1E4883430);
  MEMORY[0x1EEE9AC00](v0);
  v2 = v9 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DA98, &qword_1E4883438);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v9[0] = sub_1E487874C();
  sub_1E487852C();

  *&v2[*(v0 + 36)] = sub_1E487863C();
  v7 = sub_1E4855A4C();
  sub_1E48784AC();
  sub_1E47738B8(v2, &qword_1ECF7DA90, &qword_1E4883430);
  v9[0] = v0;
  v9[1] = v7;
  swift_getOpaqueTypeConformance2();
  sub_1E48784FC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1E4851C7C@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  EventContentView = type metadata accessor for CircularNextEventContentView(0);
  sub_1E4773850(v1 + *(EventContentView + 24), v9, &qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487753C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E4851E84()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for CircularNextEventContentView(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    v7 = sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC(v7, &dword_1E475C000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_1E4851FDC@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  EventContentView = type metadata accessor for CircularNextEventContentView(0);
  sub_1E4773850(v1 + *(EventContentView + 32), v9, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877CCC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_1E48521E4()
{
  sub_1E485573C(v1);
  xmmword_1EE2BAD80 = v1[2];
  unk_1EE2BAD90 = v1[3];
  xmmword_1EE2BADA0 = v1[4];
  unk_1EE2BADB0 = v1[5];
  result = *v1;
  xmmword_1EE2BAD60 = v1[0];
  *algn_1EE2BAD70 = v1[1];
  return result;
}

uint64_t sub_1E4852228@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4877F1C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  sub_1E4773850(v2, &v15 - v9, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877CCC();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1E4852428@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24[1] = a1;
  v24[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB10, &qword_1E4883560);
  MEMORY[0x1EEE9AC00](v24[0]);
  v4 = (v24 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF38, &qword_1E487FAC8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v24 - v6;
  v8 = sub_1E4877CCC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v24 - v13;
  sub_1E4852228((v24 - v13));
  sub_1E4877CAC();
  sub_1E4854770(&qword_1EE2B5A60, MEMORY[0x1E697EA50], MEMORY[0x1E697EA70]);
  v15 = sub_1E4878EAC();
  v16 = *(v9 + 8);
  v16(v12, v8);
  v16(v14, v8);
  if (v15)
  {
    v25 = xmmword_1E4883240;
    v26 = 0;
    v27 = MEMORY[0x1E69E7CC0];
    sub_1E48784FC();
    v17 = *(v2 + *(type metadata accessor for CircularNextEventContentView.ScheduleContentView(0) + 24) + 8);
    KeyPath = swift_getKeyPath();
    v19 = &v7[*(v5 + 36)];
    *v19 = KeyPath;
    v19[1] = v17;
    sub_1E4773850(v7, v4, &qword_1ECF7CF38, &qword_1E487FAC8);
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C028, &qword_1E487C598);
    sub_1E4855E88();
    sub_1E479A3B0();
    sub_1E487803C();
    return sub_1E47738B8(v7, &qword_1ECF7CF38, &qword_1E487FAC8);
  }

  else
  {
    v21 = sub_1E487874C();
    v22 = *(v2 + *(type metadata accessor for CircularNextEventContentView.ScheduleContentView(0) + 24) + 8);
    v23 = swift_getKeyPath();
    *v4 = v21;
    v4[1] = v23;
    v4[2] = v22;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C028, &qword_1E487C598);
    sub_1E4855E88();
    sub_1E479A3B0();
    return sub_1E487803C();
  }
}

uint64_t sub_1E48527D0@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = sub_1E4877CCC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v50 - v7;
  v9 = sub_1E487719C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF30, &qword_1E487FAC0);
  v57 = *(v10 - 8);
  v58 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v50 - v11;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF38, &qword_1E487FAC8);
  MEMORY[0x1EEE9AC00](v55);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CF40, &qword_1E487FAD0);
  v59 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v54 = &v50 - v18;
  EventContent = type metadata accessor for CircularNextEventContentView.ScheduleContentView(0);
  v20 = *(v1 + *(EventContent + 20) + 8);
  if (v20)
  {
    v50 = EventContent;
    v51 = v14;
    v21 = v20;
    v52 = v1;
    v53 = v21;
    sub_1E4852228(v8);
    sub_1E4877CAC();
    sub_1E4854770(&qword_1EE2B5A60, MEMORY[0x1E697EA50], MEMORY[0x1E697EA70]);
    v22 = sub_1E4878EAC();
    v23 = *(v3 + 8);
    v23(v6, v2);
    v23(v8, v2);
    if (v22)
    {
      sub_1E487712C();
    }

    else
    {
      v27 = v53;
      sub_1E48771DC();
    }

    v28 = sub_1E487847C();
    v30 = v29;
    v32 = v31;
    v33 = sub_1E48783EC();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    sub_1E477A3C8(v28, v30, v32 & 1);

    v61 = v33;
    v62 = v35;
    v63 = v37 & 1;
    v64 = v39;
    v40 = v56;
    sub_1E48784FC();

    sub_1E477A3C8(v33, v35, v37 & 1);

    v41 = *(v52 + *(v50 + 24) + 80);
    KeyPath = swift_getKeyPath();
    (*(v57 + 32))(v13, v40, v58);
    v43 = &v13[*(v55 + 36)];
    *v43 = KeyPath;
    v43[1] = v41;
    v44 = swift_getKeyPath();
    sub_1E477372C(v13, v17, &qword_1ECF7CF38, &qword_1E487FAC8);
    v45 = v51;
    v46 = &v17[*(v51 + 36)];
    *v46 = v44;
    *(v46 + 1) = 1;
    v46[16] = 0;
    v47 = v54;
    sub_1E477372C(v17, v54, &qword_1ECF7CF40, &qword_1E487FAD0);
    v48 = v47;
    v49 = v60;
    sub_1E477372C(v48, v60, &qword_1ECF7CF40, &qword_1E487FAD0);
    (*(v59 + 56))(v49, 0, 1, v45);
  }

  else
  {
    v24 = v60;
    v25 = *(v59 + 56);

    return v25(v24, 1, 1, v14);
  }
}

uint64_t sub_1E4852D3C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB00, &qword_1E4883548);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v15 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB18, &qword_1E48835D0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DAF0, &qword_1E4883538);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = (v0 + *(type metadata accessor for CircularNextEventContentView.ScheduleContentView(0) + 24));
  if (*v10 == 1 && v10[1] == 1)
  {
    sub_1E48527D0(v9);
    sub_1E4773850(v9, v6, &qword_1ECF7DAF0, &qword_1E4883538);
    swift_storeEnumTagMultiPayload();
    sub_1E4855F70();
    sub_1E4855DFC();
    sub_1E487803C();
    v11 = v9;
    v12 = &qword_1ECF7DAF0;
    v13 = &qword_1E4883538;
  }

  else
  {
    sub_1E4852428(v3);
    sub_1E4773850(v3, v6, &qword_1ECF7DB00, &qword_1E4883548);
    swift_storeEnumTagMultiPayload();
    sub_1E4855F70();
    sub_1E4855DFC();
    sub_1E487803C();
    v11 = v3;
    v12 = &qword_1ECF7DB00;
    v13 = &qword_1E4883548;
  }

  return sub_1E47738B8(v11, v12, v13);
}

uint64_t sub_1E4852F84@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DAF0, &qword_1E4883538);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DAF8, &qword_1E4883540);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB00, &qword_1E4883548);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB08, &unk_1E4883550);
  v22 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v15 = (v1 + *(type metadata accessor for CircularNextEventContentView.ScheduleContentView(0) + 24));
  if (v15[1] == 1)
  {
    if (*v15 == 1)
    {
      sub_1E4852428(v11);
      sub_1E4773850(v11, v8, &qword_1ECF7DB00, &qword_1E4883548);
      swift_storeEnumTagMultiPayload();
      sub_1E4855DFC();
      sub_1E4855F70();
      sub_1E487803C();
      v16 = v11;
      v17 = &qword_1ECF7DB00;
      v18 = &qword_1E4883548;
    }

    else
    {
      sub_1E48527D0(v5);
      sub_1E4773850(v5, v8, &qword_1ECF7DAF0, &qword_1E4883538);
      swift_storeEnumTagMultiPayload();
      sub_1E4855DFC();
      sub_1E4855F70();
      sub_1E487803C();
      v16 = v5;
      v17 = &qword_1ECF7DAF0;
      v18 = &qword_1E4883538;
    }

    sub_1E47738B8(v16, v17, v18);
    sub_1E477372C(v14, a1, &qword_1ECF7DB08, &unk_1E4883550);
    return (*(v22 + 56))(a1, 0, 1, v12);
  }

  else
  {
    v19 = *(v22 + 56);

    return v19(a1, 1, 1, v12);
  }
}

uint64_t sub_1E48532E8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DAB8, &qword_1E4883500);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - v7;
  v9 = sub_1E48788EC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - v14;
  sub_1E4878D2C();
  v25 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E48788DC();
  *v8 = sub_1E4877FAC();
  *(v8 + 1) = 0xBFF0000000000000;
  v8[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DAC0, &qword_1E4883508);
  sub_1E48535C4(a1, &v8[*(v16 + 44)]);
  v17 = *(v10 + 16);
  v17(v13, v15, v9);
  sub_1E4773850(v8, v6, &qword_1ECF7DAB8, &qword_1E4883500);
  v18 = v15;
  v19 = v13;
  v20 = v6;
  v21 = v26;
  v17(v26, v19, v9);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DAC8, &qword_1E4883510);
  sub_1E4773850(v20, &v21[*(v22 + 48)], &qword_1ECF7DAB8, &qword_1E4883500);
  sub_1E47738B8(v8, &qword_1ECF7DAB8, &qword_1E4883500);
  v23 = *(v10 + 8);
  v23(v18, v9);
  sub_1E47738B8(v20, &qword_1ECF7DAB8, &qword_1E4883500);
  v23(v19, v9);
}

void *sub_1E48535C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  *&v79 = sub_1E487719C();
  v3 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v60[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DAD0, &qword_1E4883518);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v72 = &v60[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v60[-v8];
  v9 = type metadata accessor for TextStringThatFits(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v76 = &v60[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v60[-v12];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DAD8, &qword_1E4883520);
  v13 = MEMORY[0x1EEE9AC00](v64);
  v15 = &v60[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v63 = &v60[-v17];
  MEMORY[0x1EEE9AC00](v16);
  v67 = &v60[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DAE0, &qword_1E4883528);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v68 = &v60[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v60[-v22];
  sub_1E4878D2C();
  v24 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E4852D3C();
  EventContent = type metadata accessor for CircularNextEventContentView.ScheduleContentView(0);
  v26 = (a1 + *(EventContent + 20));
  v27 = *v26;
  v28 = a1 + *(EventContent + 24);
  v74 = *(v28 + 40);
  v62 = v28;
  v29 = *(v28 + 88);
  v61 = *(v26 + 16);
  v30 = *(v9 + 32);
  *(v76 + v30) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  v31 = v27;
  swift_storeEnumTagMultiPayload();
  if (v27 >> 62)
  {
    v32 = sub_1E4878F0C();
  }

  else
  {
    v32 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v75;
  v69 = v15;
  v70 = a1;
  v66 = v24;
  v73 = v23;
  if (!v32)
  {
    v43 = v74;

    v36 = MEMORY[0x1E69E7CC0];
    v44 = v72;
LABEL_18:
    v45 = v76;
    *v76 = v36;
    *(v45 + 8) = v43;
    *(v45 + 16) = v29;
    *(v45 + 24) = v61;
    v46 = v65;
    sub_1E4851394(v45, v65);
    v47 = *(v62 + 48);
    v79 = *(v62 + 64);
    v80 = v47;
    v48 = sub_1E487814C();
    v49 = v46;
    v50 = v63;
    sub_1E4851394(v49, v63);
    v51 = &v50[*(v64 + 36)];
    *v51 = v48;
    v52 = v80;
    *(v51 + 24) = v79;
    *(v51 + 8) = v52;
    v51[40] = 0;
    v53 = v67;
    sub_1E4855D8C(v50, v67);
    v54 = v71;
    sub_1E4852F84(v71);
    v55 = v23;
    v56 = v68;
    sub_1E4773850(v55, v68, &qword_1ECF7DAE0, &qword_1E4883528);
    v57 = v69;
    sub_1E4773850(v53, v69, &qword_1ECF7DAD8, &qword_1E4883520);
    sub_1E4773850(v54, v44, &qword_1ECF7DAD0, &qword_1E4883518);
    sub_1E4773850(v56, v33, &qword_1ECF7DAE0, &qword_1E4883528);
    v58 = v33;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DAE8, &qword_1E4883530);
    sub_1E4773850(v57, v58 + *(v59 + 48), &qword_1ECF7DAD8, &qword_1E4883520);
    sub_1E4773850(v44, v58 + *(v59 + 64), &qword_1ECF7DAD0, &qword_1E4883518);
    sub_1E47738B8(v54, &qword_1ECF7DAD0, &qword_1E4883518);
    sub_1E47738B8(v53, &qword_1ECF7DAD8, &qword_1E4883520);
    sub_1E47738B8(v73, &qword_1ECF7DAE0, &qword_1E4883528);
    sub_1E47738B8(v44, &qword_1ECF7DAD0, &qword_1E4883518);
    sub_1E47738B8(v57, &qword_1ECF7DAD8, &qword_1E4883520);
    sub_1E47738B8(v56, &qword_1ECF7DAE0, &qword_1E4883528);
  }

  *&v80 = v31;
  v81 = MEMORY[0x1E69E7CC0];

  result = sub_1E4858274(0, v32 & ~(v32 >> 63), 0);
  if ((v32 & 0x8000000000000000) == 0)
  {
    v77 = v32;
    v35 = 0;
    v36 = v81;
    v37 = v80;
    v38 = v80 & 0xC000000000000001;
    do
    {
      if (v38)
      {
        MEMORY[0x1E6919650](v35);
      }

      else
      {
        v39 = *(v37 + 8 * v35 + 32);
      }

      sub_1E4878D1C();
      sub_1E4878D0C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v40 = v78;
      sub_1E48771DC();

      v81 = v36;
      v42 = *(v36 + 16);
      v41 = *(v36 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1E4858274((v41 > 1), v42 + 1, 1);
        v36 = v81;
      }

      ++v35;
      *(v36 + 16) = v42 + 1;
      (*(v3 + 32))(v36 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v42, v40, v79);
      v37 = v80;
    }

    while (v77 != v35);
    v43 = v74;
    v33 = v75;
    v44 = v72;
    v23 = v73;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4853D14@<X0>(char *a2@<X8>)
{
  *a2 = sub_1E487889C();
  *(a2 + 1) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DAB0, &qword_1E48834F8);
  return sub_1E48532E8(v2, &a2[*(v5 + 44)]);
}

uint64_t sub_1E4853D60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 32);
  EventContent = type metadata accessor for CircularNextEventContentView.ScheduleContentView(0);
  sub_1E485569C(v2 + v4, a2 + *(EventContent + 20), type metadata accessor for CircularNextEventContentViewModel);
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  v6 = *(EventContent + 24);
  if (qword_1EE2B2090 != -1)
  {
    swift_once();
  }

  v7 = (a2 + v6);
  v8 = unk_1EE2BAD90;
  v15[2] = xmmword_1EE2BAD80;
  v15[3] = unk_1EE2BAD90;
  v9 = xmmword_1EE2BADA0;
  v10 = unk_1EE2BADB0;
  v15[4] = xmmword_1EE2BADA0;
  v15[5] = unk_1EE2BADB0;
  v11 = xmmword_1EE2BAD60;
  v12 = *algn_1EE2BAD70;
  v15[0] = xmmword_1EE2BAD60;
  v15[1] = *algn_1EE2BAD70;
  v7[2] = xmmword_1EE2BAD80;
  v7[3] = v8;
  v7[4] = v9;
  v7[5] = v10;
  *v7 = v11;
  v7[1] = v12;
  return sub_1E4855704(v15, &v14);
}

uint64_t sub_1E4853E68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v74 = a1;
  v3 = sub_1E48780BC();
  v72 = *(v3 - 8);
  v73 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v71 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  EventContentViewModel = type metadata accessor for CircularNextEventContentViewModel(0);
  MEMORY[0x1EEE9AC00](EventContentViewModel);
  v67 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v78 = &v61 - v7;
  v8 = sub_1E487753C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v75 = (&v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1E487732C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  EventContent = type metadata accessor for CircularNextEventContentView.BodyContentContainer(0);
  MEMORY[0x1EEE9AC00](EventContent);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DA78, &qword_1E48832C8);
  v66 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v65 = &v61 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DA80, &qword_1E48832D0);
  v69 = *(v17 - 8);
  v70 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v79 = &v61 - v18;
  v19 = sub_1E4877CCC();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v61 - v24;
  sub_1E4851FDC((&v61 - v24));
  sub_1E4877CAC();
  sub_1E4854770(&qword_1EE2B5A60, MEMORY[0x1E697EA50], MEMORY[0x1E697EA70]);
  v77 = sub_1E4878EAC();
  v26 = *(v20 + 8);
  v26(v23, v19);
  v26(v25, v19);
  v28 = v75;
  v27 = EventContent;
  v29 = *(v11 + 16);
  v29(&v15[*(EventContent + 24)], v2, v10);
  v30 = v2;
  v31 = *(v2 + *(type metadata accessor for CircularNextEventContentView(0) + 20));
  v68 = v11 + 16;
  v29(v13, v30, v10);
  swift_bridgeObjectRetain_n();
  v32 = v30;
  sub_1E4851C7C(v28);
  sub_1E4851628(v13, v31, v28, &v15[v27[8]]);
  KeyPath = swift_getKeyPath();
  *&v15[v27[5]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  *v15 = KeyPath;
  v15[8] = 0;
  *&v15[v27[7]] = v31;
  v64 = v10;
  v62 = v29;
  if (v77)
  {
    v34 = sub_1E487725C();
    (*(*(v34 - 8) + 56))(v78, 1, 1, v34);
    v35 = v67;
  }

  else
  {
    v36 = v32;
    v29(v13, v32, v10);

    sub_1E4851C7C(v28);
    v37 = v67;
    sub_1E4851628(v13, v31, v28, v67);
    sub_1E4773850(v37 + *(EventContentViewModel + 28), v78, &unk_1ECF7B688, &qword_1E487C160);
    sub_1E48547B8(v37, type metadata accessor for CircularNextEventContentViewModel);
    v35 = v37;
    v32 = v36;
  }

  v38 = v31;
  v39 = sub_1E4854770(&qword_1EE2B2138, type metadata accessor for CircularNextEventContentView.BodyContentContainer, &unk_1E48833E0);
  v40 = v65;
  v41 = v78;
  v42 = EventContent;
  sub_1E48784BC();
  sub_1E47738B8(v41, &unk_1ECF7B688, &qword_1E487C160);
  sub_1E48547B8(v15, type metadata accessor for CircularNextEventContentView.BodyContentContainer);
  v43 = v71;
  sub_1E487809C();
  v81 = v42;
  v82 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v80;
  sub_1E48785AC();
  (*(v72 + 8))(v43, v73);
  (*(v66 + 8))(v40, v45);
  if (v77)
  {
    v46 = 0;
    v47 = 0;
    v48 = 0xE000000000000000;
  }

  else
  {
    v62(v13, v32, v64);

    v49 = v75;
    sub_1E4851C7C(v75);
    sub_1E4851628(v13, v38, v49, v35);
    sub_1E4851E84();
    v50 = sub_1E4854F24();
    v52 = v51;
    v53 = sub_1E48547B8(v35, type metadata accessor for CircularNextEventContentViewModel);
    v81 = v50;
    v82 = v52;
    sub_1E477A374(v53, v54, v55);
    v46 = sub_1E487848C();
    v48 = v56;
    v47 = v57;
  }

  v81 = v80;
  v82 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v58 = v70;
  v59 = v79;
  sub_1E487856C();
  sub_1E477A3C8(v46, v48, v47 & 1);

  return (*(v69 + 8))(v59, v58);
}

uint64_t sub_1E4854770(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E48547B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E4854818()
{
  if (qword_1EE2B4848 != -1)
  {
    swift_once();
  }

  sub_1E48771EC();
  sub_1E48771EC();
  v0 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];
  sub_1E4878FFC();

  sub_1E481E4BC(v0);
  v1 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v2 = sub_1E4878B9C();

  type metadata accessor for Key(0);
  sub_1E4854770(&qword_1EE2B0D70, type metadata accessor for Key, &unk_1E487A460);
  v3 = sub_1E4878A7C();

  [v1 initWithString:v2 attributes:{v3, 0x80000001E48AA3E0}];

  sub_1E4878FDC();
  sub_1E487900C();
  sub_1E487901C();
  sub_1E4878FEC();

  sub_1E481E4BC(v0);
  v4 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v5 = sub_1E4878B9C();

  v6 = sub_1E4878A7C();

  [v4 initWithString:v5 attributes:v6];

  sub_1E4878FDC();
  sub_1E487900C();
  sub_1E487901C();
  sub_1E4878FEC();
  swift_arrayDestroy();
  return v8;
}

id sub_1E4854B18(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v3 = sub_1E487757C();
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - v10;
  v12 = sub_1E487744C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a2;
  sub_1E48774EC();
  v16 = *(v13 + 48);
  if (v16(v11, 1, v12) == 1)
  {
    sub_1E48773EC();
    if (v16(v11, 1, v12) != 1)
    {
      sub_1E47738B8(v11, &qword_1ECF7BE58, &unk_1E487DDB0);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  v17 = sub_1E485F184();
  v18 = *(v13 + 8);
  v18(v15, v12);
  if (v17)
  {
    return 0;
  }

  v20 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v21 = sub_1E487748C();
  [v20 setCalendar_];

  sub_1E487750C();
  v22 = sub_1E487756C();
  (*(v28 + 8))(v5, v29);
  [v20 setTimeZone_];

  sub_1E48774EC();
  if (v16(v9, 1, v12) == 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = sub_1E48773DC();
    v18(v9, v12);
  }

  [v20 setLocale_];

  v24 = sub_1E4878B9C();
  [v20 setLocalizedDateFormatFromTemplate_];

  v25 = sub_1E48772BC();
  v26 = [v20 stringFromDate_];

  if (!v26)
  {
    sub_1E4878BDC();
    v26 = sub_1E4878B9C();
  }

  v27 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString_];

  return v27;
}

uint64_t sub_1E4854F24()
{
  if (qword_1EE2B4848 != -1)
  {
    swift_once();
  }

  sub_1E48771EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E487A7F0;
  v4 = *v0;
  if (!(*v0 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_10:
    v9 = 0;
    v11 = 0;
LABEL_11:
    v12 = MEMORY[0x1E69E6158];
    *(v3 + 56) = MEMORY[0x1E69E6158];
    v13 = sub_1E478B950(result, v1, v2);
    *(v3 + 64) = v13;
    if (v11)
    {
      v14 = v9;
    }

    else
    {
      v14 = 0;
    }

    v15 = 0xE000000000000000;
    if (v11)
    {
      v15 = v11;
    }

    *(v3 + 32) = v14;
    *(v3 + 40) = v15;
    v16 = v0[1];
    if (v16)
    {
      v17 = [v16 string];
      v18 = sub_1E4878BDC();
      v20 = v19;

      v21 = (v3 + 72);
      *(v3 + 96) = v12;
      *(v3 + 104) = v13;
      if (v20)
      {
        *v21 = v18;
LABEL_21:
        *(v3 + 80) = v20;
        v22 = sub_1E4878BAC();

        return v22;
      }
    }

    else
    {
      v21 = (v3 + 72);
      *(v3 + 96) = v12;
      *(v3 + 104) = v13;
    }

    *v21 = 0;
    v20 = 0xE000000000000000;
    goto LABEL_21;
  }

  result = sub_1E4878F0C();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1E6919650](0, v4);
    goto LABEL_8;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
LABEL_8:
    v7 = v6;
    v8 = [v6 string];

    v9 = sub_1E4878BDC();
    v11 = v10;

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void sub_1E485519C(uint64_t a1)
{
  sub_1E485531C(319, &qword_1EE2B0DB0, sub_1E48552D0, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1E485531C(319, &qword_1EE2B0D80, sub_1E48552D0, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1E485531C(319, &qword_1EE2B4660, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1E48552D0()
{
  result = qword_1EE2B0D88;
  if (!qword_1EE2B0D88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2B0D88);
  }

  return result;
}

void sub_1E485531C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1E48553B8(uint64_t a1)
{
  sub_1E478305C();
  if (v1 <= 0x3F)
  {
    sub_1E485531C(319, &qword_1EE2B1680, MEMORY[0x1E697EA50], MEMORY[0x1E697DCC8]);
    if (v2 <= 0x3F)
    {
      sub_1E487732C();
      if (v3 <= 0x3F)
      {
        sub_1E485531C(319, &qword_1EE2B0DD0, type metadata accessor for DayEvents, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CircularNextEventContentViewModel(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1E48554E4()
{
  result = qword_1EE2B1510;
  if (!qword_1EE2B1510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7DA88, qword_1E4883388);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7DA78, &qword_1E48832C8);
    type metadata accessor for CircularNextEventContentView.BodyContentContainer(255);
    sub_1E4854770(&qword_1EE2B2138, type metadata accessor for CircularNextEventContentView.BodyContentContainer, &unk_1E48833E0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E4854770(&qword_1EE2B10A8, MEMORY[0x1E697CBF0], MEMORY[0x1E697CBE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1510);
  }

  return result;
}

uint64_t sub_1E485569C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1E485573C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1E48782AC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E487744C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E48773EC();
  if (sub_1E485F184())
  {
    (*(v7 + 8))(v9, v6);
    v19 = 0;
  }

  else
  {
    v10 = sub_1E48773DC();
    v11 = [v10 positionOfDayPeriodInFormattedTime];

    (*(v7 + 8))(v9, v6);
    v19 = v11 == 1;
  }

  sub_1E48782BC();
  v12 = *MEMORY[0x1E6980EA0];
  v13 = *(v3 + 104);
  v13(v5, v12, v2);
  v18 = sub_1E48782CC();

  v14 = *(v3 + 8);
  v14(v5, v2);
  sub_1E48781EC();
  sub_1E487825C();
  sub_1E487829C();

  v13(v5, v12, v2);
  v15 = sub_1E48782CC();

  v14(v5, v2);
  sub_1E48782BC();
  v13(v5, v12, v2);
  v16 = sub_1E48782CC();

  v14(v5, v2);
  *a1 = v19;
  *(a1 + 1) = 1;
  *(a1 + 2) = *&v20[9];
  *(a1 + 6) = v21;
  *(a1 + 8) = v18;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 25) = *v20;
  *(a1 + 28) = *&v20[3];
  *(a1 + 32) = 0;
  *(a1 + 40) = v15;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = v16;
  *(a1 + 88) = 0x4010000000000000;
  return result;
}

unint64_t sub_1E4855A4C()
{
  result = qword_1EE2B1390;
  if (!qword_1EE2B1390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7DA90, &qword_1E4883430);
    sub_1E4855B04();
    sub_1E4773680(&unk_1EE2B10E8, &qword_1ECF7DAA8, &qword_1E4883448, MEMORY[0x1E6980488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1390);
  }

  return result;
}

unint64_t sub_1E4855B04()
{
  result = qword_1EE2B14D0;
  if (!qword_1EE2B14D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7DAA0, &qword_1E4883440);
    sub_1E4854770(&qword_1EE2B10A8, MEMORY[0x1E697CBF0], MEMORY[0x1E697CBE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B14D0);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1E4855BDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1E4855C24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E4855CB4(uint64_t a1)
{
  sub_1E485531C(319, &qword_1EE2B1680, MEMORY[0x1E697EA50], MEMORY[0x1E697DCC8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CircularNextEventContentViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E4855D8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DAD8, &qword_1E4883520);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E4855DFC()
{
  result = qword_1EE2B11F8;
  if (!qword_1EE2B11F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7DB00, &qword_1E4883548);
    sub_1E4855E88();
    sub_1E479A3B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B11F8);
  }

  return result;
}

unint64_t sub_1E4855E88()
{
  result = qword_1EE2B5A70;
  if (!qword_1EE2B5A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CF38, &qword_1E487FAC8);
    swift_getOpaqueTypeConformance2();
    sub_1E4773680(&qword_1EE2B5A50, &qword_1ECF7BB68, &qword_1E487C5A0, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B5A70);
  }

  return result;
}

unint64_t sub_1E4855F70()
{
  result = qword_1EE2B13F0;
  if (!qword_1EE2B13F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7DAF0, &qword_1E4883538);
    sub_1E4855FF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B13F0);
  }

  return result;
}

unint64_t sub_1E4855FF4()
{
  result = qword_1EE2B5A68;
  if (!qword_1EE2B5A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7CF40, &qword_1E487FAD0);
    sub_1E4855E88();
    sub_1E4773680(&qword_1EE2B5A48, &qword_1ECF7B938, &qword_1E487AB40, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B5A68);
  }

  return result;
}

uint64_t sub_1E48560AC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Event(0);
  v25 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_1E4858E18(a3 + v15 + v16 * v13, v12, type metadata accessor for Event);
      v17 = a1(v12);
      if (v3)
      {
        sub_1E4858E80(v12, type metadata accessor for Event);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_1E485910C(v12, v24, type metadata accessor for Event);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E4858038(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1E4858038((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_1E485910C(v24, v14 + v15 + v20 * v16, type metadata accessor for Event);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_1E4858E80(v12, type metadata accessor for Event);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_1E4856338(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v19 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E4878F0C())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x1E6919650](v8, v4);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_1E4878FDC();
        sub_1E487900C();
        v4 = v15;
        sub_1E487901C();
        sub_1E4878FEC();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v12;
}

uint64_t sub_1E48564E4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for TimeScalingEngine.SpatialViewParameters(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1E4858124(0, v10, 0);
  v11 = v21;
  v12 = *(type metadata accessor for DayEvents(0) - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1E4858124((v14 > 1), v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_1E485910C(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for TimeScalingEngine.SpatialViewParameters);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4856734(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1E4878FFC();
    v9 = *(type metadata accessor for Event(0) - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v12, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_1E4878FDC();
      sub_1E487900C();
      sub_1E487901C();
      sub_1E4878FEC();
      v10 += v11;
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E48568CC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v24 = a6;
  v25 = a1;
  v8 = v6;
  v26 = a2;
  v10 = a4(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v21 - v12;
  v14 = *(a3 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (!v14)
  {
    return v15;
  }

  v27 = MEMORY[0x1E69E7CC0];
  v22 = a5;
  a5(0, v14, 0);
  v15 = v27;
  v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = a3 + v23;
  v17 = *(v11 + 72);
  while (1)
  {
    v25(v16);
    if (v8)
    {
      break;
    }

    v8 = 0;
    v27 = v15;
    v19 = *(v15 + 16);
    v18 = *(v15 + 24);
    if (v19 >= v18 >> 1)
    {
      v22(v18 > 1, v19 + 1, 1);
      v15 = v27;
    }

    *(v15 + 16) = v19 + 1;
    sub_1E485910C(v13, v15 + v23 + v19 * v17, v24);
    v16 += v17;
    if (!--v14)
    {
      return v15;
    }
  }

  __break(1u);
  return result;
}

uint64_t NextEventTimelineEntryProvider.placeholder(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E487894C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - v7;
  sub_1E4878A3C();
  v9 = (*(v3 + 88))(v8, v2);
  if (v9 == *MEMORY[0x1E6985820] || v9 == *MEMORY[0x1E6985830] || v9 == *MEMORY[0x1E6985808])
  {
    sub_1E4878A3C();
    v12 = sub_1E4856D30(v6);
    (*(v3 + 8))(v6, v2);
    type metadata accessor for FakeEvents();
    sub_1E4806788(a1);
    v13 = type metadata accessor for CalendarEventsTimelineEntry(0);
    result = sub_1E4806788(a1 + v13[5]);
    *(a1 + v13[6]) = v12;
    *(a1 + v13[7]) = 0;
  }

  else
  {
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    sub_1E4878F9C();
    MEMORY[0x1E69192D0](0xD00000000000001BLL, 0x80000001E48A64A0);
    sub_1E4878A3C();
    sub_1E4858B94(&qword_1EE2B4700, MEMORY[0x1E6985840], MEMORY[0x1E6985858]);
    v14 = sub_1E48790CC();
    MEMORY[0x1E69192D0](v14);

    (*(v3 + 8))(v6, v2);
    MEMORY[0x1E69192D0](0xD00000000000001CLL, 0x80000001E48A64C0);
    result = sub_1E487903C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4856D30(uint64_t a1)
{
  v2 = sub_1E487894C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x1E6985820])
  {
    goto LABEL_5;
  }

  if (v6 == *MEMORY[0x1E6985830])
  {
    type metadata accessor for FakeEvents();
    return sub_1E480446C();
  }

  if (v6 == *MEMORY[0x1E6985808])
  {
LABEL_5:
    type metadata accessor for FakeEvents();
    return sub_1E4806FA8();
  }

  else
  {
    v9[0] = 0;
    v9[1] = 0xE000000000000000;
    sub_1E4878F9C();
    MEMORY[0x1E69192D0](0xD00000000000001BLL, 0x80000001E48A64A0);
    sub_1E4858B94(&qword_1EE2B4700, MEMORY[0x1E6985840], MEMORY[0x1E6985858]);
    v8 = sub_1E48790CC();
    MEMORY[0x1E69192D0](v8);

    MEMORY[0x1E69192D0](0xD00000000000001CLL, 0x80000001E48A64C0);
    result = sub_1E487903C();
    __break(1u);
  }

  return result;
}

id NextEventTimelineEntryProvider.getSnapshot(for:in:completion:)(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v57 = a4;
  v58 = a3;
  *&v64 = a1;
  v5 = type metadata accessor for CalendarEventsTimelineEntry(0);
  v55 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v56 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E487894C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E487732C();
  v63 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v53[0] = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v53 - v14;
  v62 = *v4;
  result = [objc_opt_self() CalSimulatedDateForNow];
  if (!result)
  {
    goto LABEL_10;
  }

  v17 = result;
  sub_1E48772FC();

  v18 = [objc_opt_self() shared];
  v54 = [v18 stopTimeDemoModeActive];

  sub_1E4878A3C();
  v59 = *(v8 + 8);
  v59(v10, v7);
  v60 = sub_1E4878DEC();
  v53[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1E487AC40;
  sub_1E4858B94(&qword_1EE2B59F0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v61 = v11;
  v20 = sub_1E48790CC();
  v22 = v21;
  v23 = MEMORY[0x1E69E6158];
  *(v19 + 56) = MEMORY[0x1E69E6158];
  v25 = sub_1E478B950(v20, v21, v24);
  v26 = MEMORY[0x1E69E6530];
  v27 = MEMORY[0x1E69E65A8];
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  *(v19 + 96) = v26;
  *(v19 + 104) = v27;
  *(v19 + 64) = v25;
  *(v19 + 72) = 2;
  sub_1E4878A3C();
  sub_1E4858B94(&qword_1EE2B4700, MEMORY[0x1E6985840], MEMORY[0x1E6985858]);
  v28 = sub_1E48790CC();
  v30 = v29;
  v59(v10, v7);
  *(v19 + 136) = v23;
  *(v19 + 144) = v25;
  v59 = v25;
  *(v19 + 112) = v28;
  *(v19 + 120) = v30;
  sub_1E48493B4(0, &qword_1EE2B46B8, 0x1E69E9BF8);
  v31 = sub_1E4878E4C();
  sub_1E4877AAC(v60, &dword_1E475C000, v31, "Snapshot entry requested for next event complication with start date: %{public}@, daysInEntry: %d, family: %{public}@", 117, 2, v19);

  [objc_opt_self() lookaheadIntervalForDaysPerEntry_];
  v32 = v64;
  v33 = v62;
  sub_1E4858810(v15, v64, v62, type metadata accessor for NextEventComplicationConfigurationIntent, &off_1F5E7CA00, sub_1E4859174, v34);
  v35 = [v32 mirrorCalendarApp];
  if (v35)
  {
    v36 = v35;
    v37 = [v35 BOOLValue];
  }

  else
  {
    v37 = 0;
  }

  v38 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BED0, &qword_1E487BF80);
  v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v40 = swift_allocObject();
  v64 = xmmword_1E487A7E0;
  *(v40 + 16) = xmmword_1E487A7E0;
  v41 = v61;
  (*(v38 + 16))(v40 + v39, v15, v61);
  v42 = v33[8];

  v43 = sub_1E47A5614(v40, v42, 2, v37);

  swift_setDeallocating();
  v44 = *(v38 + 8);
  v44(v40 + v39, v41);
  result = swift_deallocClassInstance();
  if (!v43[2])
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v45 = v56;
  sub_1E4858E18(v43 + ((*(v55 + 80) + 32) & ~*(v55 + 80)), v56, type metadata accessor for CalendarEventsTimelineEntry);

  if (v54)
  {
    v46 = v53[0];
    sub_1E487731C();
    (*(v38 + 40))(v45, v46, v41);
  }

  v47 = sub_1E4878DBC();
  v48 = swift_allocObject();
  *(v48 + 16) = v64;
  v49 = CalendarEventsTimelineEntry.description.getter();
  v50 = v59;
  *(v48 + 56) = MEMORY[0x1E69E6158];
  *(v48 + 64) = v50;
  *(v48 + 32) = v49;
  *(v48 + 40) = v51;
  v52 = sub_1E4878E4C();
  sub_1E4877AAC(v47, &dword_1E475C000, v52, "Calling current entry completion for next event complication with entry: %{public}@", 83, 2, v48);

  v58(v45);
  v44(v15, v41);
  return sub_1E4858E80(v45, type metadata accessor for CalendarEventsTimelineEntry);
}

id NextEventTimelineEntryProvider.getTimeline(for:in:completion:)(void *a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v98 = a3;
  v104 = a2;
  v95 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BEC8, &unk_1E487BF70);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v81 - v8;
  v103 = sub_1E487894C();
  v10 = *(v103 - 8);
  v11 = MEMORY[0x1EEE9AC00](v103);
  v96 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v81 - v13;
  v15 = sub_1E48789CC();
  v100 = *(v15 - 8);
  v101 = v15;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v99 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v81 - v18;
  v106 = sub_1E487732C();
  v97 = *(v106 - 8);
  v20 = MEMORY[0x1EEE9AC00](v106);
  v81 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v81 - v22;
  v24 = *v4;
  result = [objc_opt_self() CalSimulatedDateForNow];
  if (result)
  {
    v26 = result;
    v89 = v24;
    v94 = a4;
    v105 = v23;
    sub_1E48772FC();

    v27 = [objc_opt_self() shared];
    v28 = [v27 stopTimeDemoModeActive];

    sub_1E48789AC();
    v86 = v28;
    v92 = v7;
    v93 = v6;
    v90 = v19;
    v91 = v9;
    if (v28)
    {
      v29 = v19;
      v30 = v10;
      v31 = v99;
      sub_1E48789BC();
      v32 = v100;
      v33 = v19;
      v34 = v101;
      (*(v100 + 8))(v33, v101);
      (*(v32 + 32))(v29, v31, v34);
      v35 = 1;
    }

    else
    {
      v30 = v10;
      v35 = 20;
    }

    v102 = v35;
    sub_1E4878A3C();
    v36 = *(v30 + 8);
    v37 = v103;
    v36(v14, v103);
    v82 = sub_1E4878DEC();
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1E487BC70;
    sub_1E4858B94(&qword_1EE2B59F0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v39 = sub_1E48790CC();
    v41 = v40;
    v42 = MEMORY[0x1E69E6158];
    *(v38 + 56) = MEMORY[0x1E69E6158];
    v44 = sub_1E478B950(v39, v40, v43);
    *(v38 + 32) = v39;
    *(v38 + 40) = v41;
    v45 = MEMORY[0x1E69E6530];
    v46 = MEMORY[0x1E69E65A8];
    *(v38 + 96) = MEMORY[0x1E69E6530];
    *(v38 + 104) = v46;
    v47 = v102;
    *(v38 + 64) = v44;
    *(v38 + 72) = v47;
    *(v38 + 136) = v45;
    *(v38 + 144) = v46;
    *(v38 + 112) = 2;
    sub_1E4878A3C();
    sub_1E4858B94(&qword_1EE2B4700, MEMORY[0x1E6985840], MEMORY[0x1E6985858]);
    v48 = sub_1E48790CC();
    v50 = v49;
    v84 = v30 + 8;
    v83 = v36;
    v36(v14, v37);
    *(v38 + 176) = v42;
    *(v38 + 184) = v44;
    v88 = v44;
    *(v38 + 152) = v48;
    *(v38 + 160) = v50;
    v85 = sub_1E48493B4(0, &qword_1EE2B46B8, 0x1E69E9BF8);
    v51 = sub_1E4878E4C();
    sub_1E4877AAC(v82, &dword_1E475C000, v51, "Timeline entries requested for next event complication with start date: %{public}@, limit: %d, daysPerEntry: %d, family: %{public}@", 131, 2, v38);
    v52 = v105;

    v53 = v96;
    sub_1E4878A3C();
    [objc_opt_self() lookaheadIntervalForDaysPerEntry_];
    v54 = v95;
    v55 = v89;
    sub_1E4858810(v52, v95, v89, type metadata accessor for NextEventComplicationConfigurationIntent, &off_1F5E7CA00, sub_1E4859174, v56);

    v58 = sub_1E47A6300(v57, v52, v102);

    v59 = [v54 mirrorCalendarApp];
    if (v59)
    {
      v60 = v59;
      v61 = [v59 BOOLValue];
    }

    else
    {
      v61 = 0;
    }

    v62 = v97;
    v63 = v55[8];

    v64 = sub_1E47A5614(v58, v63, 2, v61);

    v83(v53, v103);
    v65 = v106;
    if (v86)
    {
      v66 = v81;
      v67 = sub_1E487731C();
      MEMORY[0x1EEE9AC00](v67);
      *(&v81 - 2) = v66;
      v68 = sub_1E48568CC(sub_1E4858BDC, (&v81 - 4), v64, type metadata accessor for CalendarEventsTimelineEntry, sub_1E4858168, type metadata accessor for CalendarEventsTimelineEntry);

      (*(v62 + 8))(v66, v65);
      v64 = v68;
    }

    v69 = sub_1E4878DEC();
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_1E487A7F0;
    v71 = v64[2];
    *(v70 + 56) = MEMORY[0x1E69E6530];
    *(v70 + 64) = MEMORY[0x1E69E65A8];
    *(v70 + 32) = v71;
    type metadata accessor for CalendarEventsTimelineEntry(0);

    v72 = sub_1E4878E9C();
    v74 = v73;

    v75 = v88;
    *(v70 + 96) = MEMORY[0x1E69E6158];
    *(v70 + 104) = v75;
    *(v70 + 72) = v72;
    *(v70 + 80) = v74;
    v76 = sub_1E4878E4C();
    sub_1E4877AAC(v69, &dword_1E475C000, v76, "Calling timeline entries completion for next event complication with %d entries: (first 3) %{public}@", 101, 2, v70);

    v77 = v100;
    v78 = v90;
    v79 = v101;
    (*(v100 + 16))(v99, v90, v101);
    sub_1E4858B94(qword_1EE2B45D0, type metadata accessor for CalendarEventsTimelineEntry, &protocol conformance descriptor for CalendarEventsTimelineEntry);
    v80 = v91;
    sub_1E4878A5C();
    v98(v80);
    (*(v92 + 8))(v80, v93);
    (*(v77 + 8))(v78, v79);
    return (*(v62 + 8))(v105, v106);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id static NextEventTimelineEntryProvider.defaultConfiguration.getter()
{
  v0 = [objc_allocWithZone(type metadata accessor for NextEventComplicationConfigurationIntent()) init];
  sub_1E48493B4(0, &qword_1EE2B0D28, 0x1E696AD98);
  v1 = sub_1E4878E1C();
  [v0 setMirrorCalendarApp_];

  [v0 setCalendars_];
  return v0;
}

void *sub_1E4858038(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E4858600(a1, a2, a3, *v3, &qword_1ECF7BF20, &qword_1E487C190, type metadata accessor for Event);
  *v3 = result;
  return result;
}

char *sub_1E485807C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E48582B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E485809C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E4858600(a1, a2, a3, *v3, &qword_1ECF7DB40, &qword_1E48836D8, type metadata accessor for ColorBarView.Styling);
  *v3 = result;
  return result;
}

void *sub_1E48580E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E4858600(a1, a2, a3, *v3, &qword_1ECF7BED0, &qword_1E487BF80, MEMORY[0x1E6969530]);
  *v3 = result;
  return result;
}

void *sub_1E4858124(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E4858600(a1, a2, a3, *v3, &qword_1ECF7D930, &unk_1E4882C40, type metadata accessor for TimeScalingEngine.SpatialViewParameters);
  *v3 = result;
  return result;
}

void *sub_1E4858168(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E4858600(a1, a2, a3, *v3, &qword_1ECF7DB38, &unk_1E48836C8, type metadata accessor for CalendarEventsTimelineEntry);
  *v3 = result;
  return result;
}

char *sub_1E48581AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E48583EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E48581CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E48584FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E48581EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E4858600(a1, a2, a3, *v3, &qword_1ECF7DB28, &unk_1E48836B0, type metadata accessor for CalendarDateTimelineEntry);
  *v3 = result;
  return result;
}

void *sub_1E4858230(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E4858600(a1, a2, a3, *v3, &qword_1ECF7D3A0, &unk_1E4880E90, type metadata accessor for InlineNextEventContentViewModel.TextOption);
  *v3 = result;
  return result;
}

void *sub_1E4858274(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E4858600(a1, a2, a3, *v3, &qword_1ECF7D398, &qword_1E48836E0, MEMORY[0x1E6968848]);
  *v3 = result;
  return result;
}

char *sub_1E48582B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F8, &qword_1E487AC28);
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

char *sub_1E48583EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB48, &qword_1E48836E8);
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

char *sub_1E48584FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB30, &qword_1E48836C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1E4858600(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
  result = _swift_stdlib_malloc_size(v17);
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

uint64_t sub_1E4858810(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(char *), double a7)
{
  v30 = a5;
  v31 = a6;
  v11 = sub_1E487753C();
  v32 = *(v11 - 8);
  v33 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E487732C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v30 - v19);
  sub_1E48772AC();
  sub_1E4877A7C();
  sub_1E487745C();
  v21 = __swift_project_boxed_opaque_existential_0(a3 + 2, a3[5]);
  v22 = sub_1E4858ACC(v18, v20, a2, *v21, a4, v30);
  v35 = a1;

  a3[7] = sub_1E48560AC(v31, v34, v22);

  type metadata accessor for Utils();

  v24 = sub_1E485B794(v23, v20);

  a3[8] = v24;

  v25 = *(v22 + 16);

  v26 = a3[8];
  LOBYTE(v25) = v25 != *(a3[7] + 16);

  v27 = sub_1E486C514(v25, v18, v26);

  v28 = *(v15 + 8);
  v28(v18, v14);
  (*(v32 + 8))(v13, v33);
  v28(v20, v14);
  a3[8] = v27;
}

uint64_t sub_1E4858ACC(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v15[3] = a5(0);
  v15[4] = a6;
  v15[0] = a3;
  v11 = MEMORY[0x1E6919990](a3);
  sub_1E48451EC(a4, v15, a1, a2, &v14);
  objc_autoreleasePoolPop(v11);
  v12 = v14;
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

uint64_t sub_1E4858B94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4858BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  sub_1E4858E18(a1, a2, type metadata accessor for CalendarEventsTimelineEntry);
  v5 = sub_1E487732C();
  return (*(*(v5 - 8) + 24))(a2, v4, v5);
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for NextEventTimelineEntryProvider(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for NextEventTimelineEntryProvider(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E4858E18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4858E80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E4858EE0(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v22 = a2;
  v23 = a3;
  v21 = a1;
  v9 = type metadata accessor for CalendarEventsTimelineEntry(0);
  v20 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a5 >> 1;
  v25 = a4;
  v12 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = MEMORY[0x1E69E7CC0];
  if (!v12)
  {
    return v13;
  }

  v27 = MEMORY[0x1E69E7CC0];
  sub_1E48581CC(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    v13 = v27;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if ((v25 + v14) >= v24 || v14 >= v12)
      {
        goto LABEL_14;
      }

      sub_1E4858E18(v23 + *(v20 + 72) * (v25 + v14), v11, type metadata accessor for CalendarEventsTimelineEntry);
      v21(&v26, v11);
      if (v6)
      {
        goto LABEL_17;
      }

      v6 = 0;
      sub_1E4858E80(v11, type metadata accessor for CalendarEventsTimelineEntry);
      v16 = v26;
      v27 = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1E48581CC((v17 > 1), v18 + 1, 1);
        v13 = v27;
      }

      *(v13 + 16) = v18 + 1;
      *(v13 + 8 * v18 + 32) = v16;
      ++v14;
      if (v15 == v12)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  sub_1E4858E80(v11, type metadata accessor for CalendarEventsTimelineEntry);

  __break(1u);
  return result;
}

uint64_t sub_1E485910C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4859194()
{
  v0 = sub_1E487861C();
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D0]);
  result = sub_1E487870C();
  qword_1EE2B3C70 = result;
  return result;
}

uint64_t sub_1E48592A4()
{
  v0 = sub_1E487861C();
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D0]);
  sub_1E487870C();
  v3 = sub_1E48786DC();

  qword_1EE2B3C58 = v3;
  return result;
}

uint64_t sub_1E48593B8(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t static PlatterStyling.textColor(from:)(void *a1)
{
  sub_1E477090C();
  v2 = a1;
  sub_1E48785FC();
  return sub_1E4878E0C();
}

uint64_t Collection<>.uniqued()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getAssociatedTypeWitness();
  v17 = sub_1E4878A6C();
  (*(v7 + 16))(v9, v3, a1);
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = &v17;
  v10 = sub_1E4878C6C();

  return v10;
}

void *sub_1E48595A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, _BYTE *a5@<X8>)
{
  v218 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v206 = &v199[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v205 = &v199[-v13];
  MEMORY[0x1EEE9AC00](v12);
  v208 = &v199[-v14];
  v211 = sub_1E487757C();
  v210 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211);
  v209 = &v199[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_1E487720C();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v222 = &v199[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v225 = sub_1E487751C();
  v217 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225);
  v19 = &v199[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v199[-v21];
  v229 = sub_1E487732C();
  v226 = *(v229 - 8);
  v23 = MEMORY[0x1EEE9AC00](v229);
  v207 = &v199[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v228 = &v199[-v26];
  MEMORY[0x1EEE9AC00](v25);
  v227 = &v199[-v27];
  v28 = type metadata accessor for Event(0);
  v230 = *(v28 - 8);
  v231 = v28;
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v199[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v199[-v33];
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v199[-v35];
  v37 = sub_1E487719C();
  v220 = *(v37 - 8);
  v221 = v37;
  v38 = MEMORY[0x1EEE9AC00](v37);
  v215 = &v199[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v38);
  v216 = &v199[-v40];
  v41 = type metadata accessor for DayEvents(0);
  MEMORY[0x1EEE9AC00](v41);
  v223 = &v199[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v224 = a3;
  v43 = sub_1E485E54C(v223, a1, a2, a3);
  v45 = v44;
  result = 0;
  v47 = 0;
  v48 = v43;
  v49 = *(v43 + 16);
  v219 = v45;
  if ((v45 & 1) == 0)
  {
    if (qword_1EE2B4848 != -1)
    {
LABEL_58:
      swift_once();
    }

    result = sub_1E48771EC();
  }

  if (v49 != 1)
  {
    if (!v49)
    {

      v50 = v223[*(v41 + 28)];
      sub_1E487043C(v223, type metadata accessor for DayEvents);
      *a5 = v50;
      type metadata accessor for RectangularNextEventContentViewModel(0);
      return swift_storeEnumTagMultiPayload();
    }

    v19 = *(v48 + 2);
    if (v19)
    {
      v49 = v48;
      v204 = a1;
      v212 = result;
      v213 = v47;
      v214 = a5;
      a1 = &v48[(v230[80] + 32) & ~v230[80]];
      v74 = (v226 + 16);
      v226 += 8;
      v227 = v74;

      v36 = 1;
      do
      {
        a5 = v36;
        if (v19 == v36)
        {
          break;
        }

        sub_1E48703D4(a1 + *(v230 + 9) * v36, v34, type metadata accessor for Event);
        if (!*(v49 + 2))
        {
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        ++v36;
        v22 = v228;
        v75 = v229;
        (*v227)(v228, a1 + v231[6], v229);
        v41 = sub_1E48772EC();
        v76 = v75;
        v49 = v48;
        (*v226)(v22, v76);
        sub_1E487043C(v34, type metadata accessor for Event);
      }

      while ((v41 & 1) != 0);

      result = sub_1E487748C();
      if (!*(v49 + 2))
      {
        goto LABEL_61;
      }

      v216 = v231[5];
      v203 = v49;
      v77 = *v227;
      v48 = v228;
      v78 = v229;
      v225 = result;
      v77(v228, (a1 + v216), v229);
      v202 = sub_1E48772BC();
      v79 = a1;
      v80 = *v226;
      (*v226)(v48, v78);
      v81 = v80;
      v208 = v80;
      v201 = v231[6];
      v217 = v77;
      v77(v48, (a1 + v201), v78);
      v82 = sub_1E48772BC();
      v81(v48, v78);
      v83 = v225;
      v84 = v202;
      v200 = [v225 cal:v202 isMultidayEventForUIWithStartDate:v82 endDate:?];

      v34 = v216;
      v217(v48, &v79[v216], v78);
      LODWORD(v202) = sub_1E48774CC();
      v85 = v208;
      (v208)(v48, v78);
      v225 = v79;
      v217(v48, &v79[v34], v78);
      a1 = sub_1E4871B7C();
      v22 = v85;
      v49 = v203;
      (v22)(v48, v78);
      v36 = 0;
      while (1)
      {
        v41 = v36;
        if (v19 == v36)
        {
          break;
        }

        if (v36 >= *(v49 + 2))
        {
          goto LABEL_57;
        }

        sub_1E48703D4(v225 + *(v230 + 9) * v36++, v31, type metadata accessor for Event);
        v34 = v31[v231[14]];
        sub_1E487043C(v31, type metadata accessor for Event);
        if ((v34 & 0xFE) == 6)
        {
          if (v19 == a5)
          {
            goto LABEL_32;
          }

          goto LABEL_51;
        }
      }

LABEL_31:
      if (v19 != a5)
      {
        goto LABEL_38;
      }

LABEL_32:
      if (v219)
      {
        if (!(v200 & 1 | ((v202 & 1) == 0)))
        {
          goto LABEL_34;
        }
      }

      else if (!(v200 & 1 | ((a1 & 1) == 0)))
      {
LABEL_34:
        v96 = v225;
        v98 = v228;
        v97 = v229;
        v99 = v217;
        v217(v228, (v225 + v216), v229);
        v100 = v207;
        v99(v207, &v96[v201], v97);
        LODWORD(v231) = sub_1E48772EC();
        (v22)(v100, v97);
        (v22)(v98, v97);
        v99(v98, &v96[v216], v97);
        if (v19 != v41 || (v231 & 1) != 0)
        {
LABEL_53:
          v181 = objc_opt_self();
          v182 = sub_1E48772BC();
          v183 = sub_1E487748C();
          v184 = [v181 timeAttributedTextWithDate:v182 calendar:v183 font:0 options:0];

          v185 = [v184 string];
          sub_1E4878BDC();

          sub_1E48771FC();
          a1 = v215;
          v186 = sub_1E48771AC();
          v187 = v218;
          aBlock = v218;
          sub_1E47C4180(v186, v188, v189);

          sub_1E48771BC();
          v190 = *MEMORY[0x1E6993360];
          v191 = [v184 length];
          v192 = swift_allocObject();
          *(v192 + 16) = a1;
          *(v192 + 24) = v187;
          v193 = swift_allocObject();
          *(v193 + 16) = sub_1E47C43D8;
          *(v193 + 24) = v192;
          v236 = sub_1E47C43DC;
          v237 = v193;
          aBlock = MEMORY[0x1E69E9820];
          v233 = 1107296256;
          v234 = sub_1E48373C0;
          v235 = &block_descriptor_62;
          v194 = _Block_copy(&aBlock);

          [v184 enumerateAttribute:v190 inRange:0 options:v191 usingBlock:{0, v194}];

          _Block_release(v194);
          (v208)(v228, v229);
          sub_1E487043C(v223, type metadata accessor for DayEvents);
          LOBYTE(v184) = swift_isEscapingClosureAtFileLocation();

          v117 = v214;
          if ((v184 & 1) == 0)
          {
            goto LABEL_54;
          }

          goto LABEL_63;
        }

        v217(v207, &v96[v201], v229);
        v101 = objc_opt_self();
        v102 = sub_1E48772BC();
        v103 = sub_1E48772BC();
        v104 = sub_1E487748C();
        v105 = [v101 timeIntervalAttributedTextWithStartDate:v102 endDate:v103 calendar:v104 keepRedundantDesignator:0];

        v106 = [v105 string];
        sub_1E4878BDC();

        sub_1E48771FC();
        a1 = v215;
        v107 = sub_1E48771AC();
        v22 = v218;
        aBlock = v218;
        sub_1E47C4180(v107, v108, v109);

        sub_1E48771BC();
        v110 = *MEMORY[0x1E6993360];
        v111 = [v105 length];
        v112 = swift_allocObject();
        *(v112 + 16) = a1;
        *(v112 + 24) = v22;
        v113 = swift_allocObject();
        *(v113 + 16) = sub_1E47C43D8;
        *(v113 + 24) = v112;
        v236 = sub_1E47C43DC;
        v237 = v113;
        aBlock = MEMORY[0x1E69E9820];
        v233 = 1107296256;
        v234 = sub_1E48373C0;
        v235 = &block_descriptor_51;
        v114 = _Block_copy(&aBlock);

        [v105 enumerateAttribute:v110 inRange:0 options:v111 usingBlock:{0, v114}];

        _Block_release(v114);
        v115 = v229;
        v116 = v208;
        (v208)(v207, v229);
        v116(v228, v115);
        sub_1E487043C(v223, type metadata accessor for DayEvents);
        LOBYTE(v105) = swift_isEscapingClosureAtFileLocation();

        v117 = v214;
        if ((v105 & 1) == 0)
        {
LABEL_54:
          v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF10, &qword_1E487C180);
          v196 = &v117[*(v195 + 48)];
          v197 = *(v195 + 64);
          (*(v220 + 32))(v117, a1, v221);
          v198 = v213;
          *v196 = v212;
          v196[1] = v198;
          *&v117[v197] = v49;
          type metadata accessor for RectangularNextEventContentViewModel(0);
          return swift_storeEnumTagMultiPayload();
        }

        __break(1u);
LABEL_38:
        if (v219)
        {
          v118 = v206;
          if ((v202 & 1) == 0)
          {
LABEL_40:
            v119 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
            v120 = sub_1E487748C();
            [v119 setCalendar_];

            v121 = v209;
            sub_1E487750C();
            v122 = sub_1E487756C();
            (*(v210 + 8))(v121, v211);
            [v119 setTimeZone_];

            sub_1E48774EC();
            v123 = sub_1E487744C();
            v124 = *(v123 - 8);
            v125 = 0;
            if ((*(v124 + 48))(v118, 1, v123) != 1)
            {
              v125 = sub_1E48773DC();
              (*(v124 + 8))(v118, v123);
            }

            [v119 setLocale_];

            [v119 setFormattingContext_];
            v126 = sub_1E4878B9C();
            [v119 setLocalizedDateFormatFromTemplate_];

            v128 = v228;
            v127 = v229;
            v217(v228, (v225 + v216), v229);
            v129 = sub_1E48772BC();
            (v22)(v128, v127);
            v130 = [v119 stringFromDate_];
LABEL_47:
            v146 = v223;
            a1 = v215;

            sub_1E4878BDC();
            sub_1E48771FC();
            sub_1E48771AC();

            sub_1E487043C(v146, type metadata accessor for DayEvents);
            v117 = v214;
            goto LABEL_54;
          }
        }

        else
        {
          v118 = v206;
          if ((a1 & 1) == 0)
          {
            goto LABEL_40;
          }
        }

LABEL_51:
        (v217)();
        v167 = objc_opt_self();
        v168 = sub_1E48772BC();
        v169 = sub_1E487748C();
        v170 = [v167 timeAttributedTextWithDate:v168 calendar:v169 font:0 options:0];

        v171 = [v170 string];
        sub_1E4878BDC();

        sub_1E48771FC();
        a1 = v215;
        v172 = sub_1E48771AC();
        v173 = v218;
        aBlock = v218;
        sub_1E47C4180(v172, v174, v175);

        sub_1E48771BC();
        v176 = *MEMORY[0x1E6993360];
        v177 = [v170 length];
        v178 = swift_allocObject();
        *(v178 + 16) = a1;
        *(v178 + 24) = v173;
        v179 = swift_allocObject();
        *(v179 + 16) = sub_1E47C43D8;
        *(v179 + 24) = v178;
        v236 = sub_1E47C43DC;
        v237 = v179;
        aBlock = MEMORY[0x1E69E9820];
        v233 = 1107296256;
        v234 = sub_1E48373C0;
        v235 = &block_descriptor_73;
        v180 = _Block_copy(&aBlock);

        [v170 enumerateAttribute:v176 inRange:0 options:v177 usingBlock:{0, v180}];

        _Block_release(v180);
        (v208)(v228, v229);
        sub_1E487043C(v223, type metadata accessor for DayEvents);
        LOBYTE(v170) = swift_isEscapingClosureAtFileLocation();

        v117 = v214;

        if ((v170 & 1) == 0)
        {
          goto LABEL_54;
        }

        __break(1u);
        goto LABEL_53;
      }

      v131 = [objc_allocWithZone(MEMORY[0x1E696AB88]) init];
      v132 = sub_1E487748C();
      [v131 setCalendar_];

      v133 = v209;
      sub_1E487750C();
      v134 = sub_1E487756C();
      (*(v210 + 8))(v133, v211);
      [v131 setTimeZone_];

      v135 = v205;
      sub_1E48774EC();
      v136 = sub_1E487744C();
      v137 = *(v136 - 8);
      v138 = 0;
      if ((*(v137 + 48))(v135, 1, v136) != 1)
      {
        v138 = sub_1E48773DC();
        (*(v137 + 8))(v135, v136);
      }

      [v131 setLocale_];

      v139 = sub_1E4878B9C();
      [v131 setDateTemplate_];

      v140 = v225;
      v142 = v228;
      v141 = v229;
      v143 = v217;
      v217(v228, (v225 + v216), v229);
      v231 = sub_1E48772BC();
      v144 = v208;
      (v208)(v142, v141);
      v143(v142, &v140[v201], v141);
      v129 = sub_1E48772BC();
      v144(v142, v141);
      v119 = v131;
      v145 = v231;
      v130 = [v131 stringFromDate:v231 toDate:v129];

      goto LABEL_47;
    }

    goto LABEL_60;
  }

  if (!*(v48 + 2))
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v212 = result;
  v213 = v47;
  v214 = a5;
  sub_1E48703D4(&v48[(v230[80] + 32) & ~v230[80]], v36, type metadata accessor for Event);
  v51 = sub_1E487748C();
  v230 = v22;
  v52 = v231[5];
  v53 = sub_1E48772BC();
  v54 = sub_1E48772BC();
  LODWORD(v215) = [v51 cal:v53 isMultidayEventForUIWithStartDate:v54 endDate:?];

  LODWORD(v207) = sub_1E48774CC();
  v55 = sub_1E4871B7C();
  v56 = v217;
  v57 = v225;
  (*(v217 + 13))(v19, *MEMORY[0x1E6969A58], v225);
  v228 = v52;
  v58 = v230;
  sub_1E48774BC();
  v56[1](v19, v57);
  v59 = v226;
  v60 = v229;
  result = (*(v226 + 48))(v58, 1, v229);
  if (result != 1)
  {

    (*(v59 + 32))(v227, v58, v60);
    sub_1E486CD08(&qword_1EE2B5A00, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v61 = sub_1E4878AEC();
    if (v219)
    {
      v22 = v216;
      if ((v207 & (v61 | ~v215) & 1) == 0)
      {
LABEL_11:
        v62 = [objc_allocWithZone(MEMORY[0x1E696AB88]) init];
        v63 = sub_1E487748C();
        [v62 setCalendar_];

        v64 = v209;
        sub_1E487750C();
        v65 = sub_1E487756C();
        (*(v210 + 8))(v64, v211);
        [v62 setTimeZone_];

        v66 = v208;
        sub_1E48774EC();
        v67 = sub_1E487744C();
        v68 = *(v67 - 8);
        v69 = 0;
        if ((*(v68 + 48))(v66, 1, v67) != 1)
        {
          v69 = sub_1E48773DC();
          (*(v68 + 8))(v66, v67);
        }

        [v62 setLocale_];

        v70 = sub_1E4878B9C();
        [v62 setDateTemplate_];

        v71 = sub_1E48772BC();
        v72 = sub_1E48772BC();
        v73 = [v62 stringFromDate:v71 toDate:v72];

        sub_1E4878BDC();
        sub_1E48771FC();
        sub_1E48771AC();

        (*(v59 + 8))(v227, v60);
        sub_1E487043C(v223, type metadata accessor for DayEvents);
        goto LABEL_49;
      }
    }

    else
    {
      v22 = v216;
      if (v215 & 1 | ((v55 & 1) == 0))
      {
        goto LABEL_11;
      }
    }

    if ((sub_1E48772EC() & 1) != 0 || (*(v36 + v231[14]) & 0xFE) == 6)
    {
      v86 = objc_opt_self();
      v87 = sub_1E48772BC();
      v88 = sub_1E487748C();
      v89 = [v86 timeAttributedTextWithDate:v87 calendar:v88 font:0 options:0];

      v90 = [v89 string];
      sub_1E4878BDC();

      sub_1E48771FC();
      v91 = sub_1E48771AC();
      v49 = v218;
      aBlock = v218;
      sub_1E47C4180(v91, v92, v93);

      sub_1E48771BC();
      a5 = *MEMORY[0x1E6993360];
      v94 = [v89 length];
      v41 = swift_allocObject();
      *(v41 + 16) = v22;
      *(v41 + 24) = v49;
      v95 = swift_allocObject();
      *(v95 + 16) = sub_1E47C43D8;
      *(v95 + 24) = v41;
      v236 = sub_1E47C43DC;
      v237 = v95;
      aBlock = MEMORY[0x1E69E9820];
      v233 = 1107296256;
      v234 = sub_1E48373C0;
      v235 = &block_descriptor_95;
      a1 = _Block_copy(&aBlock);
      v19 = v237;

      [v89 enumerateAttribute:a5 inRange:0 options:v94 usingBlock:{0, a1}];

      _Block_release(a1);
      (*(v226 + 8))(v227, v229);
      sub_1E487043C(v223, type metadata accessor for DayEvents);
      LOBYTE(v89) = swift_isEscapingClosureAtFileLocation();

      if (v89)
      {
        __break(1u);
        goto LABEL_31;
      }
    }

    else
    {
      v147 = objc_opt_self();
      v148 = sub_1E48772BC();
      v149 = sub_1E48772BC();
      v150 = sub_1E487748C();
      v151 = [v147 timeIntervalAttributedTextWithStartDate:v148 endDate:v149 calendar:v150 keepRedundantDesignator:0];

      v152 = [v151 string];
      sub_1E4878BDC();

      sub_1E48771FC();
      v153 = sub_1E48771AC();
      v154 = v218;
      aBlock = v218;
      sub_1E47C4180(v153, v155, v156);

      sub_1E48771BC();
      v157 = *MEMORY[0x1E6993360];
      v158 = [v151 length];
      v159 = swift_allocObject();
      *(v159 + 16) = v22;
      *(v159 + 24) = v154;
      v160 = swift_allocObject();
      *(v160 + 16) = sub_1E47C43D8;
      *(v160 + 24) = v159;
      v236 = sub_1E47C43DC;
      v237 = v160;
      aBlock = MEMORY[0x1E69E9820];
      v233 = 1107296256;
      v234 = sub_1E48373C0;
      v235 = &block_descriptor_84;
      v161 = _Block_copy(&aBlock);

      [v151 enumerateAttribute:v157 inRange:0 options:v158 usingBlock:{0, v161}];

      _Block_release(v161);
      (*(v226 + 8))(v227, v229);
      sub_1E487043C(v223, type metadata accessor for DayEvents);
      LOBYTE(v151) = swift_isEscapingClosureAtFileLocation();

      if (v151)
      {
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }
    }

LABEL_49:
    v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF18, &qword_1E487C188);
    v163 = v214;
    v164 = &v214[*(v162 + 48)];
    v165 = *(v162 + 64);
    (*(v220 + 32))(v214, v22, v221);
    v166 = v213;
    *v164 = v212;
    v164[1] = v166;
    sub_1E487049C(v36, &v163[v165], type metadata accessor for Event);
    type metadata accessor for RectangularNextEventContentViewModel(0);
    return swift_storeEnumTagMultiPayload();
  }

LABEL_64:
  __break(1u);
  return result;
}

void *sub_1E485B794(uint64_t a1, char **a2)
{
  v218 = a2;
  v3 = sub_1E487751C();
  v217 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v186 = &v168 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v184 = &v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v185 = &v168 - v8;
  v174 = type metadata accessor for DayEvents(0);
  v173 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v10 = &v168 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_1E48770FC();
  v207 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v216 = &v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_1E487706C();
  *&v208 = *(v220 - 8);
  v12 = MEMORY[0x1EEE9AC00](v220);
  v182 = &v168 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v215 = &v168 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v222 = &v168 - v16;
  v17 = type metadata accessor for Event(0);
  v230 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v204 = &v168 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v203 = &v168 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v168 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v227 = &v168 - v25;
  v226 = sub_1E487732C();
  v26 = *(v226 - 8);
  v27 = MEMORY[0x1EEE9AC00](v226);
  v181 = &v168 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v180 = &v168 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v179 = &v168 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v196 = &v168 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v200 = &v168 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v183 = &v168 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = &v168 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39);
  v229 = &v168 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v199 = &v168 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v170 = &v168 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v50 = &v168 - v49;
  v51 = MEMORY[0x1EEE9AC00](v48);
  v191 = &v168 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v171 = &v168 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v57 = &v168 - v56;
  MEMORY[0x1EEE9AC00](v55);
  v59 = &v168 - v58;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D940, &qword_1E4882DA8);
  v60 = MEMORY[0x1EEE9AC00](v212);
  v211 = &v168 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v169 = &v168 - v62;
  v190 = sub_1E487753C();
  v63 = MEMORY[0x1EEE9AC00](v190);
  MEMORY[0x1EEE9AC00](v63);
  v67 = *(a1 + 16);
  if (!v67)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v195 = v66;
  v168 = v65;
  v213 = v41;
  v172 = v10;
  v206 = v26;
  v221 = &v168 - v64;
  v189 = v67;
  sub_1E4877A7C();
  v68 = v230;
  v202 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v69 = a1 + v202;
  v70 = *(v17 + 20);
  v192 = v26;
  v71 = v26[2];
  v223 = v59;
  v72 = v59;
  v73 = v226;
  v71(v72, v69 + v70, v226);
  v74 = v69 + *(v17 + 24);
  v228 = v57;
  v231 = v71;
  v71(v57, v74, v73);
  v224 = v68[9];
  v230 = v26 + 2;
  v75 = (v26 + 1);
  v178 = v69;
  v76 = v69;
  v77 = v189;
  v78 = v227;
  v225 = v17;
  do
  {
    sub_1E48703D4(v76, v78, type metadata accessor for Event);
    v79 = v226;
    v231(v50, v78 + *(v17 + 20), v226);
    v80 = v223;
    if (sub_1E48772DC())
    {
      (*v75)(v80, v79);
      v231(v80, v50, v79);
    }

    v81 = *(v17 + 24);
    v78 = v227;
    v82 = sub_1E48772CC();
    v201 = *v75;
    v201(v50, v79);
    if (v82)
    {
      v83 = v228;
      v84 = v226;
      v201(v228, v226);
      v231(v83, v78 + v81, v84);
    }

    sub_1E487043C(v78, type metadata accessor for Event);
    v17 = v225;
    v76 += v224;
    --v77;
  }

  while (v77);
  v85 = v212;
  v86 = *(v212 + 48);
  v87 = v192 + 4;
  v88 = v192[4];
  v89 = v169;
  v90 = v226;
  v88(v169, v223, v226);
  v88((v89 + v86), v228, v90);
  v91 = v211;
  sub_1E4773850(v89, v211, &qword_1ECF7D940, &qword_1E4882DA8);
  v92 = *(v85 + 48);
  v192 = v87;
  v177 = v88;
  v88(v171, v91, v90);
  v201((v91 + v92), v90);
  v93 = sub_1E486CD08(&qword_1EE2B5A00, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v94 = v218;
  v188 = v93;
  v95 = sub_1E4878ACC();
  v96 = v191;
  if (v95)
  {
    v97 = v191;
    v98 = v94;
  }

  else
  {
    v98 = (v89 + v86);
    v97 = v191;
  }

  v100 = v231;
  v231(v97, v98, v90);
  v101 = v199;
  v187 = v75;
  v102 = v170;
  sub_1E487745C();
  v100(v101, v102, v90);
  sub_1E4870D68(v222);
  if ((sub_1E4878AEC() & 1) == 0)
  {
    v162 = *(v208 + 8);
    v197 = MEMORY[0x1E69E7CC0];
    v163 = v101;
    v165 = v169;
    v164 = v171;
    v162(v222, v220);
    goto LABEL_55;
  }

  LODWORD(v212) = *MEMORY[0x1E6969A58];
  v223 = (v217 + 104);
  LODWORD(v211) = *MEMORY[0x1E6969A88];
  v210 = *MEMORY[0x1E6969A98];
  v209 = *MEMORY[0x1E6969A00];
  ++v207;
  v219 = (v208 + 8);
  v194 = *MEMORY[0x1E6969A48];
  v176 = (v168 + 8);
  v175 = (v208 + 32);
  v208 = xmmword_1E487BC70;
  v197 = MEMORY[0x1E69E7CC0];
  v103 = v226;
  v218 = (v217 + 8);
  v193 = (v206 + 6);
  while (2)
  {
    v104 = v178;
    v105 = v189;
    v206 = MEMORY[0x1E69E7CC0];
    v205 = MEMORY[0x1E69E7CC0];
    do
    {
      v227 = v105;
      v228 = v104;
      sub_1E48703D4(v104, v24, type metadata accessor for Event);
      v108 = v24;
      v109 = v225;
      v231(v229, v108 + *(v225 + 20), v103);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7D0A0, &unk_1E487FDA0);
      v110 = v217;
      v111 = *(v217 + 72);
      v112 = (*(v217 + 80) + 32) & ~*(v217 + 80);
      v113 = swift_allocObject();
      *(v113 + 16) = v208;
      v114 = v113 + v112;
      v115 = *(v110 + 104);
      v115(v114, v212, v3);
      v115(v114 + v111, v211, v3);
      v115(v114 + 2 * v111, v210, v3);
      v115(v114 + 3 * v111, v209, v3);
      sub_1E486B81C(v113);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v116 = *(v109 + 24);
      v24 = v108;
      v117 = v216;
      sub_1E487747C();

      result = sub_1E48770AC();
      if (v118)
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if (result)
      {
        goto LABEL_23;
      }

      result = sub_1E48770CC();
      if (v119)
      {
        goto LABEL_57;
      }

      if (result)
      {
        goto LABEL_23;
      }

      result = sub_1E48770DC();
      if (v120)
      {
        goto LABEL_58;
      }

      if (result)
      {
LABEL_23:
        sub_1E48772DC();
LABEL_24:
        (*v207)(v117, v214);
        v121 = v108 + v116;
        v103 = v226;
        v231(v213, v121, v226);
        goto LABEL_25;
      }

      result = sub_1E487707C();
      if (v135)
      {
        goto LABEL_59;
      }

      v136 = result;
      if ((sub_1E48772DC() & 1) == 0 || v136)
      {
        goto LABEL_24;
      }

      sub_1E48772AC();
      (*v207)(v117, v214);
      v103 = v226;
LABEL_25:
      v122 = v218;
      v123 = v215;
      sub_1E487702C();
      v124 = sub_1E487700C();
      v125 = *v219;
      (*v219)(v123, v220);
      if (v124)
      {
        v107 = v228;
        if (v24[*(v225 + 48)] == 1)
        {
          sub_1E48703D4(v24, v203, type metadata accessor for Event);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v206 = sub_1E4860CF4(0, v206[2] + 1, 1, v206, &qword_1ECF7BF20, &qword_1E487C190, type metadata accessor for Event);
          }

          v127 = v206[2];
          v126 = v206[3];
          if (v127 >= v126 >> 1)
          {
            v206 = sub_1E4860CF4((v126 > 1), v127 + 1, 1, v206, &qword_1ECF7BF20, &qword_1E487C190, type metadata accessor for Event);
          }

          sub_1E487043C(v24, type metadata accessor for Event);
          v128 = v206;
          v206[2] = v127 + 1;
          v106 = v224;
          v129 = v128 + v202 + v127 * v224;
          v130 = &v232;
        }

        else
        {
          sub_1E48703D4(v24, v204, type metadata accessor for Event);
          v131 = v205;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v131 = sub_1E4860CF4(0, v131[2] + 1, 1, v131, &qword_1ECF7BF20, &qword_1E487C190, type metadata accessor for Event);
          }

          v205 = v131;
          v133 = v131[2];
          v132 = v131[3];
          if (v133 >= v132 >> 1)
          {
            v205 = sub_1E4860CF4((v132 > 1), v133 + 1, 1, v205, &qword_1ECF7BF20, &qword_1E487C190, type metadata accessor for Event);
          }

          sub_1E487043C(v24, type metadata accessor for Event);
          v134 = v205;
          v205[2] = v133 + 1;
          v106 = v224;
          v129 = v134 + v202 + v133 * v224;
          v130 = &v233;
        }

        sub_1E487049C(*(v130 - 32), v129, type metadata accessor for Event);
        v103 = v226;
      }

      else
      {
        sub_1E487043C(v108, type metadata accessor for Event);
        v106 = v224;
        v107 = v228;
      }

      v104 = v107 + v106;
      v105 = v227 - 1;
    }

    while (v227 != 1);
    v137 = v205;
    v138 = v205[2];
    v198 = v115;
    if (v138 || v206[2])
    {
      v139 = v172;
      v231(v172, v199, v103);
      v140 = v174;
      *(v139 + *(v174 + 20)) = v137;
      *(v139 + *(v140 + 24)) = v206;
      *(v139 + *(v140 + 28)) = 0;

      v141 = v197;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v143 = v194;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v141 = sub_1E4860CF4(0, v141[2] + 1, 1, v141, &qword_1ECF7C438, &unk_1E487D628, type metadata accessor for DayEvents);
      }

      v145 = v141[2];
      v144 = v141[3];
      if (v145 >= v144 >> 1)
      {
        v141 = sub_1E4860CF4((v144 > 1), v145 + 1, 1, v141, &qword_1ECF7C438, &unk_1E487D628, type metadata accessor for DayEvents);
      }

      v141[2] = v145 + 1;
      sub_1E487049C(v139, v141 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v145, type metadata accessor for DayEvents);
      v115 = v198;
    }

    else
    {
      v141 = v197;
      v143 = v194;
    }

    v197 = v141;
    v146 = v186;
    v115(v186, v143, v3);
    v147 = v185;
    v148 = v199;
    sub_1E48774BC();
    v228 = *v122;
    (v228)(v146, v3);
    v149 = v226;
    v227 = *v193;
    result = (v227)(v147, 1, v226);
    if (result == 1)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v150 = v183;
    sub_1E487745C();
    v151 = v201;
    v201(v148, v149);
    v151(v147, v149);
    v177(v148, v150, v149);
    sub_1E4877A7C();
    sub_1E487745C();
    v198(v146, v194, v3);
    v152 = v184;
    sub_1E48774BC();
    (v228)(v146, v3);
    result = (v227)(v152, 1, v149);
    if (result == 1)
    {
LABEL_61:
      __break(1u);
      return result;
    }

    v153 = v196;
    sub_1E487745C();
    v201(v152, v149);
    v154 = v180;
    v155 = v231;
    v231(v180, v153, v149);
    v156 = v179;
    sub_1E487728C();
    v155(v154, v200, v149);
    v155(v181, v156, v149);
    v157 = v182;
    sub_1E487702C();
    v158 = v201;
    v201(v156, v226);
    v158(v196, v226);
    v158(v200, v226);
    (*v176)(v195, v190);
    v159 = v222;
    v160 = v220;
    v125(v222, v220);
    v103 = v226;
    (*v175)(v159, v157, v160);

    v161 = v199;
    v96 = v191;
    if (sub_1E4878AEC())
    {
      continue;
    }

    break;
  }

  v163 = v161;
  v164 = v171;
  v165 = v169;
  v125(v222, v220);
LABEL_55:
  v166 = v226;
  v167 = v201;
  v201(v163, v226);
  v167(v170, v166);
  v167(v96, v166);
  v167(v164, v166);
  sub_1E47738B8(v165, &qword_1ECF7D940, &qword_1E4882DA8);
  (*(v168 + 8))(v221, v190);
  return v197;
}

void sub_1E485CFF8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v132 = a4;
  v133 = a5;
  v134 = a3;
  v139 = a2;
  v137 = a1;
  v128 = sub_1E487713C();
  MEMORY[0x1EEE9AC00](v128);
  v129 = v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E4878B8C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v127 = v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1E487714C();
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v122 = v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4878B6C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v121 = v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1E487719C();
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v130 = v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E487720C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v135 = v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v119 - v18;
  v138 = sub_1E487732C();
  v136 = *(v138 - 8);
  v20 = MEMORY[0x1EEE9AC00](v138);
  v131 = v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v119 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v120 = v119 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v119 - v27;
  v29 = sub_1E487757C();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = v119 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v34 = sub_1E487748C();
  [v33 setCalendar_];

  sub_1E487750C();
  v35 = sub_1E487756C();
  (*(v30 + 8))(v32, v29);
  [v33 setTimeZone_];

  sub_1E48774EC();
  v36 = sub_1E487744C();
  v37 = *(v36 - 8);
  v38 = 0;
  if ((*(v37 + 48))(v28, 1, v36) != 1)
  {
    v38 = sub_1E48773DC();
    (*(v37 + 8))(v28, v36);
  }

  [v33 setLocale_];

  sub_1E4773850(v139, v19, &unk_1ECF7C880, &qword_1E4882710);
  v39 = v136;
  v40 = *(v136 + 48);
  v41 = v138;
  if (v40(v19, 1, v138) == 1)
  {
    sub_1E47738B8(v19, &unk_1ECF7C880, &qword_1E4882710);
    v42 = 0;
  }

  else
  {
    (*(v39 + 32))(v23, v19, v41);
    v42 = sub_1E48772EC();
    (*(v39 + 8))(v23, v41);
  }

  sub_1E4773850(v139, v17, &unk_1ECF7C880, &qword_1E4882710);
  if (v40(v17, 1, v41) != 1)
  {
    v43 = v131;
    (*(v39 + 32))(v131, v17, v41);
    if (v42)
    {
      (*(v39 + 8))(v43, v41);
      goto LABEL_10;
    }

    if (sub_1E48774CC())
    {
      v139 = v33;
      v63 = sub_1E487748C();
      v64 = sub_1E48772BC();
      v65 = sub_1E48772BC();
      v66 = v43;
      v67 = [v63 cal:v64 isMultidayEventForUIWithStartDate:v65 endDate:?];

      if (v67 && (sub_1E48774CC() & 1) == 0)
      {
        v105 = objc_opt_self();
        v106 = sub_1E48772BC();
        v107 = sub_1E487748C();
        v108 = [v105 timeAttributedTextWithDate:v106 calendar:v107 font:0 options:0];

        v109 = [v108 string];
        sub_1E4878BDC();

        sub_1E48771FC();
        v110 = v133;
        v111 = sub_1E48771AC();
        v112 = v132;
        aBlock = v132;
        sub_1E47C4180(v111, v113, v114);

        sub_1E48771BC();
        v115 = *MEMORY[0x1E6993360];
        v41 = [v108 length];
        v116 = swift_allocObject();
        *(v116 + 16) = v110;
        *(v116 + 24) = v112;
        v117 = swift_allocObject();
        *(v117 + 16) = sub_1E47C43D8;
        *(v117 + 24) = v116;
        v144 = sub_1E47C43DC;
        v145 = v117;
        aBlock = MEMORY[0x1E69E9820];
        v141 = 1107296256;
        v142 = sub_1E48373C0;
        v143 = &block_descriptor_40;
        v43 = _Block_copy(&aBlock);
        v33 = v145;

        [v108 enumerateAttribute:v115 inRange:0 options:v41 usingBlock:{0, v43}];

        _Block_release(v43);
        v118 = *(v39 + 8);
        v39 += 8;
        v118(v66, v138);
        LOBYTE(v108) = swift_isEscapingClosureAtFileLocation();

        if ((v108 & 1) == 0)
        {
          return;
        }

        __break(1u);
        goto LABEL_29;
      }

      v68 = objc_opt_self();
      v69 = sub_1E48772BC();
      v70 = sub_1E48772BC();
      v71 = sub_1E487748C();
      v72 = [v68 timeIntervalAttributedTextWithStartDate:v69 endDate:v70 calendar:v71 keepRedundantDesignator:0];

      v73 = [v72 string];
      sub_1E4878BDC();

      sub_1E48771FC();
      v74 = v133;
      v75 = sub_1E48771AC();
      v76 = v132;
      aBlock = v132;
      sub_1E47C4180(v75, v77, v78);

      sub_1E48771BC();
      v79 = *MEMORY[0x1E6993360];
      v41 = [v72 length];
      v80 = swift_allocObject();
      *(v80 + 16) = v74;
      *(v80 + 24) = v76;
      v81 = swift_allocObject();
      *(v81 + 16) = sub_1E47C43D8;
      *(v81 + 24) = v80;
      v144 = sub_1E47C43DC;
      v145 = v81;
      aBlock = MEMORY[0x1E69E9820];
      v141 = 1107296256;
      v142 = sub_1E48373C0;
      v143 = &block_descriptor_29;
      v43 = _Block_copy(&aBlock);
      v33 = v145;

      [v72 enumerateAttribute:v79 inRange:0 options:v41 usingBlock:{0, v43}];

      _Block_release(v43);
      v82 = *(v39 + 8);
      v39 += 8;
      v82(v66, v138);
      LOBYTE(v72) = swift_isEscapingClosureAtFileLocation();

      if ((v72 & 1) == 0)
      {
        return;
      }

      __break(1u);
    }

    if ((sub_1E48774CC() & 1) == 0)
    {
      if (qword_1EE2B4848 == -1)
      {
LABEL_26:
        sub_1E48771EC();
        sub_1E48771FC();
        sub_1E48771AC();

        (*(v39 + 8))(v43, v41);
        return;
      }

LABEL_30:
      swift_once();
      goto LABEL_26;
    }

    v83 = v33;
    v84 = objc_opt_self();
    v85 = sub_1E48772BC();
    v86 = sub_1E487748C();
    v87 = [v84 timeAttributedTextWithDate:v85 calendar:v86 font:0 options:0];

    v88 = [v87 string];
    sub_1E4878BDC();

    sub_1E48771FC();
    v43 = v130;
    v89 = sub_1E48771AC();
    v39 = v132;
    aBlock = v132;
    sub_1E47C4180(v89, v90, v91);

    sub_1E48771BC();
    v92 = *MEMORY[0x1E6993360];
    v41 = [v87 length];
    v93 = swift_allocObject();
    *(v93 + 16) = v43;
    *(v93 + 24) = v39;
    v94 = swift_allocObject();
    *(v94 + 16) = sub_1E47C43D8;
    *(v94 + 24) = v93;
    v144 = sub_1E47C43DC;
    v145 = v94;
    aBlock = MEMORY[0x1E69E9820];
    v141 = 1107296256;
    v142 = sub_1E48373C0;
    v143 = &block_descriptor_18;
    v95 = _Block_copy(&aBlock);
    v33 = v145;

    [v87 enumerateAttribute:v92 inRange:0 options:v41 usingBlock:{0, v95}];

    _Block_release(v95);
    LOBYTE(v87) = swift_isEscapingClosureAtFileLocation();

    if ((v87 & 1) == 0)
    {
      sub_1E4878B5C();
      sub_1E4878B4C();
      v96 = MEMORY[0x1E69E7CC0];
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1E486CD08(&qword_1EE2B4680, MEMORY[0x1E69686F0], MEMORY[0x1E69686F8]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D388, &qword_1E4880E78);
      sub_1E4773680(&qword_1EE2B0E10, &qword_1ECF7D388, &qword_1E4880E78, MEMORY[0x1E69E6328]);
      v97 = v122;
      v98 = v124;
      sub_1E4878ECC();
      sub_1E4878B1C();
      (*(v123 + 8))(v97, v98);
      sub_1E4878B4C();
      v99 = v127;
      sub_1E4878B7C();
      v100 = v43;
      if (qword_1EE2B4848 != -1)
      {
        swift_once();
      }

      v101 = qword_1EE2BAF40;
      v102 = v120;
      (*(v119[0] + 56))(v120, 1, 1, v119[1]);
      aBlock = v96;
      sub_1E486CD08(&qword_1EE2B4688, MEMORY[0x1E69686B0], MEMORY[0x1E69686B8]);
      v103 = v101;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D390, &unk_1E4880E80);
      sub_1E4773680(&qword_1EE2B0E18, &qword_1ECF7D390, &unk_1E4880E80, MEMORY[0x1E69E6328]);
      v104 = v129;
      sub_1E4878ECC();
      sub_1E487717C("Ends %@", 7, 2, v99, v104, 0, 0, v101, v102, "Used to denote the end of a multiday event when viewing it on the day it ends in the widget. Format argument comes from a date formatter. Ex: '5:30 PM'", 151, 2);

      (*(v136 + 8))(v131, v138);
      (*(v125 + 8))(v100, v126);
      return;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  sub_1E47738B8(v17, &unk_1ECF7C880, &qword_1E4882710);
LABEL_10:
  if (sub_1E48774CC())
  {
    v44 = objc_opt_self();
    v45 = sub_1E48772BC();
    v46 = sub_1E487748C();
    v47 = [v44 timeAttributedTextWithDate:v45 calendar:v46 font:0 options:0];

    v48 = [v47 string];
    sub_1E4878BDC();

    sub_1E48771FC();
    v49 = v33;
    v50 = v133;
    v51 = sub_1E48771AC();
    v52 = v132;
    aBlock = v132;
    sub_1E47C4180(v51, v53, v54);

    sub_1E48771BC();
    v55 = *MEMORY[0x1E6993360];
    v56 = [v47 length];
    v57 = swift_allocObject();
    *(v57 + 16) = v50;
    *(v57 + 24) = v52;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_1E47C41D4;
    *(v58 + 24) = v57;
    v144 = sub_1E47C41DC;
    v145 = v58;
    aBlock = MEMORY[0x1E69E9820];
    v141 = 1107296256;
    v142 = sub_1E48373C0;
    v143 = &block_descriptor_7;
    v59 = _Block_copy(&aBlock);
    v33 = v145;

    [v47 enumerateAttribute:v55 inRange:0 options:v56 usingBlock:{0, v59}];

    _Block_release(v59);
    LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

    if ((v47 & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  [v33 setFormattingContext_];
  v60 = sub_1E4878B9C();
  [v33 setLocalizedDateFormatFromTemplate_];

  v61 = sub_1E48772BC();
  v62 = [v33 stringFromDate_];

  sub_1E4878BDC();
  sub_1E48771FC();
  sub_1E48771AC();
}

uint64_t sub_1E485E54C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v118 = a4;
  v121 = a1;
  v122 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v103 = v96 - v6;
  v110 = sub_1E487751C();
  v113 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v109 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E487753C();
  v107 = *(v8 - 8);
  v108 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v106 = v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E487732C();
  v123 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v102 = v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v105 = v96 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C380, &qword_1E4882C20);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v101 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v116 = (v96 - v17);
  v18 = type metadata accessor for DayEvents(0);
  v120 = *(v18 - 1);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v100 = v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v99 = v96 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v115 = v96 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v117 = v96 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB90, &qword_1E4883750);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v119 = v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = v96 - v29;
  if (qword_1EE2B1868 != -1)
  {
    swift_once();
  }

  v31 = qword_1EE2B1870;
  v32 = sub_1E48772BC();
  v33 = [v31 stringFromDate_];

  v34 = sub_1E4878BDC();
  v36 = v35;

  v37 = *(v26 + 48);
  v38 = *(v26 + 64);
  v39 = *(v123 + 16);
  v114 = v10;
  v104 = v39;
  v40 = (v39)(v30, a2, v10);
  v41 = MEMORY[0x1E69E7CC0];
  *&v30[v18[5]] = MEMORY[0x1E69E7CC0];
  *&v30[v18[6]] = v41;
  v30[v18[7]] = 0;
  *&v30[v37] = v41;
  v30[v38] = 1;
  if (!*(v122 + 16))
  {
    v55 = sub_1E4878DCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1E487A7E0;
    *(v56 + 56) = MEMORY[0x1E69E6158];
    *(v56 + 64) = sub_1E478B950(v56, v57, v58);
    *(v56 + 32) = v34;
    *(v56 + 40) = v36;
    sub_1E48493B4(0, &qword_1EE2B46B8, 0x1E69E9BF8);
    v59 = sub_1E4878E4C();
    sub_1E4877AAC(v55, &dword_1E475C000, v59, "upNextEventsToDisplay for date: %{public}@ was provided 0 dayEvents", 67, 2, v56);

    v60 = v119;
    sub_1E477372C(v30, v119, &qword_1ECF7DB90, &qword_1E4883750);
    v61 = *&v60[*(v26 + 48)];
    goto LABEL_15;
  }

  v97 = v34;
  v111 = v30;
  v98 = v26;
  v112 = v36;
  MEMORY[0x1EEE9AC00](v40);
  v42 = a2;
  v43 = v118;
  v96[-2] = v118;
  v96[-1] = a2;
  v44 = v116;
  sub_1E47F8D94(sub_1E4870D0C, v45, v116);
  v96[1] = 0;
  v46 = v120 + 48;
  v47 = *(v120 + 48);
  if ((v47)(v44, 1, v18) != 1)
  {
    v119 = v47;
    v120 = v46;

    v62 = v117;
    sub_1E487049C(v44, v117, type metadata accessor for DayEvents);
    type metadata accessor for Utils();
    v60 = v115;
    sub_1E485F9F4(v62, v42, v43, 0, v115);
    v61 = *&v60[v18[5]];
    if (*(v61 + 16) || (v63 = v43, v64 = v105, (v104)(v105, v42, v114), v65 = v106, sub_1E4877A7C(), v66 = *MEMORY[0x1E6969A58], v67 = v113, v68 = v109, v69 = v110, v112 = *(v113 + 104), v112(v109, v66, v110), v70 = sub_1E487752C(), v104 = v18, v71 = v63, v72 = v42, v73 = v70, v74 = *(v67 + 8), v113 = v67 + 8, v116 = v74, v74(v68, v69), v107[1](v65, v108), v76 = v123 + 8, v75 = *(v123 + 8), v77 = v64, v60 = v115, (v75)(v77, v114), v73 < 17))
    {
      sub_1E487043C(v117, type metadata accessor for DayEvents);
      v78 = &qword_1ECF7DB90;
      v79 = &qword_1E4883750;
      v80 = v111;
    }

    else
    {
      v82 = v71;
      v107 = v75;
      v108 = v76;
      v83 = v109;
      v84 = v110;
      v112(v109, *MEMORY[0x1E6969A48], v110);
      v85 = v103;
      sub_1E48774BC();
      v116(v83, v84);
      v86 = v123;
      v87 = v114;
      if ((*(v123 + 48))(v85, 1, v114) != 1)
      {
        v88 = v85;
        v89 = v102;
        v90 = (*(v86 + 32))(v102, v88, v87);
        MEMORY[0x1EEE9AC00](v90);
        v96[-2] = v71;
        v96[-1] = v89;
        v91 = v101;
        sub_1E47F8D94(sub_1E486E0AC, v122, v101);
        v92 = v104;
        if ((v119)(v91, 1, v104) != 1)
        {
          v93 = v91;
          v94 = v99;
          sub_1E487049C(v93, v99, type metadata accessor for DayEvents);
          v95 = v100;
          sub_1E485F9F4(v94, v72, v82, 1, v100);
          sub_1E487043C(v94, type metadata accessor for DayEvents);
          sub_1E487043C(v117, type metadata accessor for DayEvents);
          sub_1E47738B8(v111, &qword_1ECF7DB90, &qword_1E4883750);
          v61 = *(v95 + v92[5]);

          sub_1E487043C(v95, type metadata accessor for DayEvents);
          (v107)(v89, v87);
          goto LABEL_15;
        }

        sub_1E487043C(v117, type metadata accessor for DayEvents);
        sub_1E47738B8(v111, &qword_1ECF7DB90, &qword_1E4883750);
        sub_1E47738B8(v91, &qword_1ECF7C380, &qword_1E4882C20);
        (v107)(v89, v87);
        goto LABEL_12;
      }

      sub_1E487043C(v117, type metadata accessor for DayEvents);
      sub_1E47738B8(v111, &qword_1ECF7DB90, &qword_1E4883750);
      v78 = &unk_1ECF7C880;
      v79 = &qword_1E4882710;
      v80 = v85;
    }

    sub_1E47738B8(v80, v78, v79);
LABEL_12:

    goto LABEL_15;
  }

  sub_1E47738B8(v44, &qword_1ECF7C380, &qword_1E4882C20);
  v48 = sub_1E4878DCC();
  sub_1E48493B4(0, &qword_1EE2B46B8, 0x1E69E9BF8);
  v49 = sub_1E4878E4C();
  v50 = os_log_type_enabled(v49, v48);
  v51 = v112;
  if (v50)
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v124[0] = v53;
    *v52 = 136315138;
    v54 = sub_1E47A0DEC(v97, v51, v124);

    *(v52 + 4) = v54;
    _os_log_impl(&dword_1E475C000, v49, v48, "upNextEventsToDisplay for date: %s contains nil todayDayEvents", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v53);
    MEMORY[0x1E6919FE0](v53, -1, -1);
    MEMORY[0x1E6919FE0](v52, -1, -1);
  }

  else
  {
  }

  v60 = v119;
  sub_1E477372C(v111, v119, &qword_1ECF7DB90, &qword_1E4883750);
  v61 = *&v60[*(v98 + 48)];
LABEL_15:
  sub_1E487049C(v60, v121, type metadata accessor for DayEvents);
  return v61;
}

uint64_t sub_1E485F184()
{
  v1 = sub_1E487742C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v22 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v21 = &v19 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - v10;
  v20 = v0;
  sub_1E487743C();
  v12 = *MEMORY[0x1E6969750];
  v19 = *(v2 + 104);
  v19(v9, v12, v1);
  sub_1E486CD08(&qword_1EE2B4648, MEMORY[0x1E6969760], MEMORY[0x1E6969768]);
  sub_1E4878C7C();
  sub_1E4878C7C();
  if (v25 == v23 && v26 == v24)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1E48790EC();
  }

  v14 = *(v2 + 8);
  v14(v9, v1);
  v14(v11, v1);

  if (v13)
  {
    v15 = 1;
  }

  else
  {
    v16 = v21;
    sub_1E487743C();
    v17 = v22;
    v19(v22, *MEMORY[0x1E6969758], v1);
    sub_1E4878C7C();
    sub_1E4878C7C();
    if (v25 == v23 && v26 == v24)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_1E48790EC();
    }

    v14(v17, v1);
    v14(v16, v1);
  }

  return v15 & 1;
}

id sub_1E485F488(uint64_t a1)
{
  type metadata accessor for Utils();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EE2BAF40 = result;
  return result;
}

uint64_t sub_1E485F4DC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_1E4878F0C();
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
    sub_1E48672DC(a1, a2);
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

  if (v4 <= sub_1E4878F0C() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_1E4878F0C();
  v2 = sub_1E4862FC8(v5, v6);
LABEL_10:

  return sub_1E4867EFC(a1, v2);
}

uint64_t sub_1E485F5D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1 + 20);
  v5 = *(type metadata accessor for ColorBarView.Styling(0) + 40);
  v6 = sub_1E487736C();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

void sub_1E485F654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27[1] = a6;
  v27[2] = a3;
  v8 = sub_1E487719C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB68, &qword_1E4883728);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB70, &qword_1E4883730);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v27 - v17;
  sub_1E4773850(a1, v29, &qword_1ECF7C1B8, &unk_1E487C760);
  if (!v30)
  {
    v20 = &qword_1ECF7C1B8;
    v21 = &unk_1E487C760;
    v22 = v29;
LABEL_7:
    sub_1E47738B8(v22, v20, v21);
    return;
  }

  sub_1E48493B4(0, &qword_1EE2B0D28, 0x1E696AD98);
  if (swift_dynamicCast())
  {
    v19 = v28;
    if ([v28 BOOLValue])
    {
      (*(v9 + 16))(v11, a5, v8);
      sub_1E486CD08(&qword_1EE2B4670, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
      sub_1E4878DAC();
      if ((*(v16 + 48))(v14, 1, v15) == 1)
      {

        v20 = &qword_1ECF7DB68;
        v21 = &qword_1E4883728;
        v22 = v14;
      }

      else
      {
        sub_1E477372C(v14, v18, &qword_1ECF7DB70, &qword_1E4883730);
        v23 = sub_1E487830C();
        sub_1E4773680(&qword_1EE2B0D98, &qword_1ECF7DB70, &qword_1E4883730, MEMORY[0x1E69E66D8]);
        v24 = sub_1E48771CC();
        v28 = v23;
        sub_1E47C4180(v24, v25, v26);
        sub_1E487721C();
        v24(v29, 0);

        v22 = v18;
        v20 = &qword_1ECF7DB70;
        v21 = &qword_1E4883730;
      }

      goto LABEL_7;
    }
  }
}

uint64_t sub_1E485F9F4@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v114 = a4;
  v123 = a2;
  v124 = a3;
  v128 = type metadata accessor for Event(0);
  v125 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v111 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1E487751C();
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v104 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1E487753C();
  v103 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v102 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E487732C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v101 = &v99 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v115 = &v99 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v113 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v99 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v121 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v110 = &v99 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v120 = &v99 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v112 = &v99 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v99 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = &v99 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v99 - v38;
  v40 = type metadata accessor for DayEvents(0);
  v41 = v40;
  v42 = *&a1[*(v40 + 20)];
  if (!*(v42 + 16))
  {
    result = (*(v11 + 16))(a5, a1, v10);
    v52 = a1[v41[7]];
    v53 = MEMORY[0x1E69E7CC0];
    *(a5 + v41[5]) = MEMORY[0x1E69E7CC0];
    *(a5 + v41[6]) = v53;
    *(a5 + v41[7]) = v52;
    return result;
  }

  v108 = v40;
  v99 = v14;
  v109 = a5;
  v43 = *(v11 + 56);
  v119 = v39;
  v44 = v42;
  v126 = v43;
  v127 = v11 + 56;
  v45 = (v43)(v39, 1, 1, v10);
  MEMORY[0x1EEE9AC00](v45);
  *(&v99 - 2) = v123;

  v118 = v44;
  v46 = sub_1E48560AC(sub_1E486E0E4, (&v99 - 4), v44);
  MEMORY[0x1EEE9AC00](v46);
  *(&v99 - 2) = v124;
  *(&v99 - 1) = a1;
  sub_1E47F8DE8(sub_1E486E104, v46, v22);
  v117 = 0;

  v47 = v125;
  v48 = v128;
  v100 = *(v125 + 48);
  v49 = v100(v22, 1, v128);
  v116 = a1;
  if (v49 == 1)
  {
    sub_1E47738B8(v22, &qword_1ECF7B950, &unk_1E487AE90);
    v50 = 1;
  }

  else
  {
    (*(v11 + 16))(v37, &v22[*(v48 + 20)], v10);
    sub_1E487043C(v22, type metadata accessor for Event);
    v50 = 0;
  }

  v126(v37, v50, 1, v10);
  sub_1E4773850(v37, v34, &unk_1ECF7C880, &qword_1E4882710);
  v122 = *(v11 + 48);
  v54 = v122(v34, 1, v10);
  v55 = sub_1E47738B8(v34, &unk_1ECF7C880, &qword_1E4882710);
  if (v54 == 1)
  {
    MEMORY[0x1EEE9AC00](v55);
    *(&v99 - 2) = v123;
    v56 = v118;

    v57 = v117;
    v58 = sub_1E48560AC(sub_1E486E120, (&v99 - 4), v56);
    MEMORY[0x1EEE9AC00](v58);
    v59 = v116;
    *(&v99 - 2) = v124;
    *(&v99 - 1) = v59;
    v60 = v113;
    sub_1E47F8DE8(sub_1E4870D4C, v58, v113);
    v117 = v57;
    v61 = v60;

    sub_1E47738B8(v37, &unk_1ECF7C880, &qword_1E4882710);
    v62 = v128;
    v63 = v100(v60, 1, v128);
    v64 = v119;
    if (v63 == 1)
    {
      sub_1E47738B8(v61, &qword_1ECF7B950, &unk_1E487AE90);
      v65 = 1;
      v66 = v11;
      v67 = v120;
      v68 = v112;
    }

    else
    {
      v66 = v11;
      v68 = v112;
      (*(v11 + 16))(v112, v61 + *(v62 + 20), v10);
      sub_1E487043C(v61, type metadata accessor for Event);
      v65 = 0;
      v67 = v120;
    }

    v126(v68, v65, 1, v10);
    sub_1E477372C(v68, v37, &unk_1ECF7C880, &qword_1E4882710);
    v47 = v125;
  }

  else
  {
    v64 = v119;
    v67 = v120;
    v66 = v11;
    v62 = v128;
  }

  sub_1E4773850(v37, v67, &unk_1ECF7C880, &qword_1E4882710);
  if (v122(v67, 1, v10) == 1)
  {
    result = sub_1E47738B8(v67, &unk_1ECF7C880, &qword_1E4882710);
    v69 = v121;
    if (!*(v118 + 16))
    {
      __break(1u);
      return result;
    }

    v70 = v37;
    v71 = v111;
    sub_1E48703D4(v118 + ((*(v47 + 80) + 32) & ~*(v47 + 80)), v111, type metadata accessor for Event);
    sub_1E47738B8(v64, &unk_1ECF7C880, &qword_1E4882710);
    v72 = v110;
    (*(v66 + 16))(v110, v71 + *(v62 + 20), v10);
    v73 = v71;
    v37 = v70;
    sub_1E487043C(v73, type metadata accessor for Event);
    v126(v72, 0, 1, v10);
    sub_1E477372C(v72, v64, &unk_1ECF7C880, &qword_1E4882710);
  }

  else
  {
    v74 = *(v66 + 32);
    v75 = v115;
    v74(v115, v67, v10);
    if ((v114 & 1) != 0 && (v76 = *(v66 + 16), v128 = v74, v77 = v101, v76(v101, v75, v10), v78 = v102, sub_1E4877A7C(), v79 = v37, v80 = v106, v81 = v104, v82 = v107, (*(v106 + 104))(v104, *MEMORY[0x1E6969A58], v107), v125 = sub_1E487752C(), (*(v80 + 8))(v81, v82), v37 = v79, (*(v103 + 8))(v78, v105), v83 = *(v66 + 8), v84 = v77, v74 = v128, v83(v84, v10), v75 = v115, v125 >= 17))
    {
      v83(v115, v10);
      v64 = v119;
    }

    else
    {
      v85 = v119;
      sub_1E47738B8(v119, &unk_1ECF7C880, &qword_1E4882710);
      v74(v85, v75, v10);
      v64 = v85;
      v126(v85, 0, 1, v10);
    }

    v69 = v121;
  }

  sub_1E4773850(v64, v69, &unk_1ECF7C880, &qword_1E4882710);
  if (v122(v69, 1, v10) == 1)
  {
    sub_1E47738B8(v69, &unk_1ECF7C880, &qword_1E4882710);
    v86 = v109;
    v87 = v116;
    (*(v66 + 16))(v109, v116, v10);
    sub_1E47738B8(v37, &unk_1ECF7C880, &qword_1E4882710);
    result = sub_1E47738B8(v64, &unk_1ECF7C880, &qword_1E4882710);
    v88 = v108;
    v89 = v87[*(v108 + 28)];
    v90 = MEMORY[0x1E69E7CC0];
    *(v86 + *(v108 + 20)) = MEMORY[0x1E69E7CC0];
    *(v86 + *(v88 + 24)) = v90;
    *(v86 + *(v88 + 28)) = v89;
  }

  else
  {
    v91 = v99;
    v92 = (*(v66 + 32))(v99, v69, v10);
    MEMORY[0x1EEE9AC00](v92);
    *(&v99 - 2) = v91;
    v93 = v118;

    v94 = sub_1E48560AC(sub_1E486E1A4, (&v99 - 4), v93);
    v95 = v109;
    v96 = v116;
    (*(v66 + 16))(v109, v116, v10);
    sub_1E47738B8(v37, &unk_1ECF7C880, &qword_1E4882710);
    sub_1E47738B8(v64, &unk_1ECF7C880, &qword_1E4882710);
    v97 = v108;
    v98 = v96[*(v108 + 28)];
    *(v95 + *(v108 + 20)) = v94;
    *(v95 + *(v97 + 24)) = MEMORY[0x1E69E7CC0];
    *(v95 + *(v97 + 28)) = v98;
    return (*(v66 + 8))(v91, v10);
  }

  return result;
}

uint64_t sub_1E4860780(uint64_t a1, uint64_t a2)
{
  sub_1E487732C();
  type metadata accessor for Event(0);
  sub_1E486CD08(&qword_1EE2B5A00, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  return sub_1E4878ADC() & 1;
}

uint64_t sub_1E4860824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  (*(v7 + 16))(v10, a1, AssociatedTypeWitness);
  sub_1E4878D9C();
  v13 = sub_1E4878D7C();
  (*(v7 + 8))(v12, AssociatedTypeWitness);
  return v13 & 1;
}

uint64_t sub_1E48609C4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

char *sub_1E4860A30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB78, &qword_1E4883738);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1E4860B84(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBB8, &qword_1E48837C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E4860CF4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
  result = _swift_stdlib_malloc_size(v17);
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

void sub_1E4860F48(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBB8, &qword_1E48837C0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v4 != a3)
      {
LABEL_5:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_1E486106C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}