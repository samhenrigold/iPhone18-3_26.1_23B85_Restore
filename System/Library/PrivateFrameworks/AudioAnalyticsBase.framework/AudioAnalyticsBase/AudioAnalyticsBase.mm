uint64_t type metadata accessor for OsTransactionHandler(uint64_t a1)
{
  result = qword_281336258;
  if (!qword_281336258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static OsTransactionHandler.shared.getter()
{
  if (qword_281336270 != -1)
  {
    swift_once();
  }
}

Swift::Bool __swiftcall OsTransactionHandler.inactive()()
{
  v1 = sub_2239B2FC8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  os_unfair_lock_lock(v5 + 4);
  if (*(v0 + 24))
  {
    v6 = 0;
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC18AudioAnalyticsBase20OsTransactionHandler_lastActiveTime);
    sub_2239B2FB8();
    sub_2239B2FA8();
    v9 = v8;
    (*(v2 + 8))(v4, v1);
    v6 = v7 < v9 + -10.0;
  }

  os_unfair_lock_unlock(v5 + 4);
  return v6;
}

double static Double.now()()
{
  v0 = sub_2239B2FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2239B2FB8();
  sub_2239B2FA8();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static Utilities.processName(for:)(int a1)
{
  v9 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF78, &unk_2239B8670);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2239B51F0;
  *(v2 + 32) = 0xE00000001;
  v3 = (v2 + 32);
  *(v2 + 40) = 1;
  *(v2 + 44) = a1;
  bzero(v8, 0x288uLL);
  v7 = 648;
  v4 = sysctl(v3, 4u, v8, &v7, 0, 0);
  if (v4 == sub_2239B3068())
  {
    v5 = sub_2239B3268();

    return v5;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_22395DCA4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_2239B3048();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

Swift::Void __swiftcall OsTransactionHandler.sessionStarted(for:)(Swift::Int64 a1)
{
  v2 = v1;
  v4 = sub_2239B2FC8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v2 + 16);
  os_unfair_lock_lock(v8 + 4);
  if (!*(v2 + 24))
  {
    sub_2239B31E8();
    v9 = os_transaction_create();

    *(v2 + 24) = v9;
    swift_unknownObjectRelease();
    sub_2239B2FB8();
    sub_2239B2FA8();
    v11 = v10;
    (*(v5 + 8))(v7, v4);
    *(v2 + OBJC_IVAR____TtC18AudioAnalyticsBase20OsTransactionHandler_lastActiveTime) = v11;
    v12 = sub_2239B3028();
    v13 = sub_2239B34D8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = a1;
      _os_log_impl(&dword_22395C000, v12, v13, "Marking dirty, created OsTransaction. { reporterID=%lld }", v14, 0xCu);
      MEMORY[0x223DEF1D0](v14, -1, -1);
    }
  }

  swift_beginAccess();
  sub_22395DF70(&v16, a1);
  swift_endAccess();
  os_unfair_lock_unlock(v8 + 4);
}

uint64_t sub_22395DF70(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_2239B3A08();
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
    sub_22395E050(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_22395E050(uint64_t result, unint64_t a2, char a3)
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
    sub_223997390(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_223998324();
      a2 = v7;
      goto LABEL_12;
    }

    sub_223998A04(v5 + 1);
  }

  v8 = *v3;
  result = sub_2239B3A08();
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
  result = sub_2239B3998();
  __break(1u);
  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *Dictionary<>.asSimpleType()(uint64_t a1)
{
  v2 = sub_2239B3048();
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x28223BE20](v2);
  v47 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD18, &qword_2239B5750);
  result = sub_2239B3778();
  v5 = result;
  v6 = 0;
  v50 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v14 = result + 8;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v18 = v15 | (v6 << 6);
      v19 = (*(v50 + 48) + 16 * v18);
      v21 = *v19;
      v20 = v19[1];
      sub_22395E644(*(v50 + 56) + 32 * v18, v55);
      sub_22395E644(v55, &v51);

      SimpleType.init(_:)(&v51, &v53);
      v22 = v54;
      if (v54 == 255)
      {
        break;
      }

      result = __swift_destroy_boxed_opaque_existential_0Tm(v55);
      v23 = v53;
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v24 = (v5[6] + 16 * v18);
      *v24 = v21;
      v24[1] = v20;
      v25 = v5[7] + 24 * v18;
      *v25 = v23;
      *(v25 + 16) = v22;
      v26 = v5[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_20;
      }

      v5[2] = v28;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    sub_22397617C(v53, *(&v53 + 1), 255);
    sub_2239A1E9C();
    v29 = swift_allocError();
    v31 = v30;
    __swift_project_boxed_opaque_existential_1(v55, v55[3]);
    swift_getDynamicType();
    v32 = sub_2239B3AC8();
    v34 = v33;
    v51 = 0;
    v52 = 0xE000000000000000;
    sub_2239B3758();
    v35 = v51;
    v36 = v52;
    *v31 = v32;
    v31[1] = v34;
    v31[2] = v35;
    v31[3] = v36;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0Tm(v55);
    v37 = v47;
    sub_2239B3038();
    v38 = v29;
    v39 = sub_2239B3028();
    v40 = sub_2239B34D8();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v55[0] = v42;
      *v41 = 136380675;
      swift_getErrorValue();
      v43 = sub_2239B39B8();
      v45 = sub_223973B2C(v43, v44, v55);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_22395C000, v39, v40, "%{private}s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x223DEF1D0](v42, -1, -1);
      MEMORY[0x223DEF1D0](v41, -1, -1);
    }

    else
    {
    }

    (*(v48 + 8))(v37, v49);
    return 0;
  }

  else
  {
LABEL_5:
    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return v5;
      }

      v17 = *(v8 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  return result;
}

uint64_t sub_22395E644(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *SimpleType.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2239B3048();
  v124 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2239B2EA8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22395E644(a1, v133);
  sub_22395F84C(0, &qword_2813365E0, 0x277CCABB0);
  if (swift_dynamicCast())
  {
    v11 = v130;
    if (*MEMORY[0x277CBED28])
    {
      v12 = v130 == *MEMORY[0x277CBED28];
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(a1);

      v15 = 3;
      v14 = 1;
      goto LABEL_28;
    }

    v13 = *MEMORY[0x277CBED10];

    if (v13)
    {
      if (v11 == v13)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(a1);
        v14 = 0;
        v15 = 3;
LABEL_28:
        result = __swift_destroy_boxed_opaque_existential_0Tm(v133);
        *a2 = v14;
        *(a2 + 8) = 0;
        *(a2 + 16) = v15;
        return result;
      }
    }
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v15 = 0;
    v14 = v130;
    goto LABEL_28;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v15 = 0;
    v14 = v130;
    goto LABEL_28;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v15 = 0;
    v14 = v130;
    goto LABEL_28;
  }

  if (swift_dynamicCast() || swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v15 = 0;
    v14 = v130;
    goto LABEL_28;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v14 = v130;
LABEL_27:
    v15 = 1;
    goto LABEL_28;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v14 = v130;
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v14 = v130;
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v14 = v130;
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v17 = v130;
    result = __swift_destroy_boxed_opaque_existential_0Tm(v133);
    *a2 = v17;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    return result;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v18 = *&v130;
    result = __swift_destroy_boxed_opaque_existential_0Tm(v133);
    *a2 = v18;
LABEL_35:
    *(a2 + 8) = 0;
    *(a2 + 16) = 2;
    return result;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v19 = v130;
    result = __swift_destroy_boxed_opaque_existential_0Tm(v133);
    *a2 = v19;
    goto LABEL_35;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v20 = v130;
    result = __swift_destroy_boxed_opaque_existential_0Tm(v133);
    *a2 = v20;
    *(a2 + 16) = 4;
    return result;
  }

  sub_22395F84C(0, &unk_281335D20, 0x277CBEA60);
  if (!swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF18, &unk_2239B53C0);
    if (swift_dynamicCast())
    {
      v30 = v132;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD18, &qword_2239B5750);
      result = sub_2239B3778();
      v31 = 0;
      v32 = v30[8];
      v119 = v30 + 8;
      v122 = v30;
      v33 = 1 << *(v30 + 32);
      v34 = -1;
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      v35 = v34 & v32;
      v118 = (v33 + 63) >> 6;
      v121[0] = result;
      v120 = result + 8;
      if ((v34 & v32) != 0)
      {
        while (1)
        {
          v36 = __clz(__rbit64(v35));
          v35 &= v35 - 1;
LABEL_58:
          v39 = v36 | (v31 << 6);
          v40 = *(v122 + 56);
          v41 = (*(v122 + 48) + 16 * v39);
          v42 = v41[1];
          v123 = *v41;
          sub_22395E644(v40 + 32 * v39, &v130);
          sub_22395E644(&v130, &v126);

          SimpleType.init(_:)(&v126, &v128);
          v43 = v129;
          if (v129 == 255)
          {
            break;
          }

          result = __swift_destroy_boxed_opaque_existential_0Tm(&v130);
          v44 = v128;
          *(v120 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
          v45 = v121[0];
          v46 = (*(v121[0] + 6) + 16 * v39);
          *v46 = v123;
          v46[1] = v42;
          v47 = v45[7] + 24 * v39;
          *v47 = v44;
          *(v47 + 16) = v43;
          v48 = v45[2];
          v49 = __OFADD__(v48, 1);
          v50 = v48 + 1;
          if (v49)
          {
            goto LABEL_102;
          }

          v45[2] = v50;
          if (!v35)
          {
            goto LABEL_53;
          }
        }

        sub_22397617C(v128, *(&v128 + 1), 255);
        sub_2239A1E9C();
        v103 = swift_allocError();
        v105 = v104;
        __swift_project_boxed_opaque_existential_1(&v130, v131);
        swift_getDynamicType();
        v106 = sub_2239B3AC8();
        v108 = v107;
        *&v126 = 0;
        *(&v126 + 1) = 0xE000000000000000;
        sub_2239B3758();
        v109 = v126;
        *v105 = v106;
        *(v105 + 8) = v108;
        *(v105 + 16) = v109;
        v86 = v103;
        swift_willThrow();

LABEL_87:
        __swift_destroy_boxed_opaque_existential_0Tm(&v130);
LABEL_89:
        __swift_destroy_boxed_opaque_existential_0Tm(v133);
        sub_2239B3038();
        v94 = v86;
        v95 = sub_2239B3028();
        v96 = sub_2239B34D8();

        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v133[0] = v98;
          *v97 = 136380675;
          v123 = v86;
          swift_getErrorValue();
          v99 = sub_2239B39B8();
          v101 = sub_223973B2C(v99, v100, v133);

          *(v97 + 4) = v101;
          _os_log_impl(&dword_22395C000, v95, v96, "%{private}s", v97, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v98);
          MEMORY[0x223DEF1D0](v98, -1, -1);
          MEMORY[0x223DEF1D0](v97, -1, -1);

          v102 = v123;
        }

        else
        {

          v102 = v86;
        }

        __swift_destroy_boxed_opaque_existential_0Tm(a1);
        result = (*(v124 + 8))(v6, v4);
        goto LABEL_97;
      }

LABEL_53:
      v37 = v31;
      while (1)
      {
        v31 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v31 >= v118)
        {

          __swift_destroy_boxed_opaque_existential_0Tm(a1);
          result = __swift_destroy_boxed_opaque_existential_0Tm(v133);
          v78 = &v134;
          goto LABEL_94;
        }

        v38 = v119[v31];
        ++v37;
        if (v38)
        {
          v36 = __clz(__rbit64(v38));
          v35 = (v38 - 1) & v38;
          goto LABEL_58;
        }
      }

      __break(1u);
      goto LABEL_101;
    }

    sub_22395F84C(0, &qword_27D0A0490, 0x277CBEAC0);
    if (swift_dynamicCast())
    {
      *&v130 = 0;
      v119 = v132;
      sub_2239B30D8();
      v121[0] = v130;
      if (v130)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD18, &qword_2239B5750);
        v58 = v121[0];
        result = sub_2239B3778();
        v59 = 0;
        v60 = v58[8];
        v118 = (v58 + 8);
        v61 = 1 << *(v58 + 32);
        v62 = -1;
        if (v61 < 64)
        {
          v62 = ~(-1 << v61);
        }

        v63 = v62 & v60;
        v117 = (v61 + 63) >> 6;
        v123 = result;
        v120 = result + 8;
        if ((v62 & v60) != 0)
        {
          while (1)
          {
            v64 = __clz(__rbit64(v63));
            v63 &= v63 - 1;
LABEL_79:
            v67 = v64 | (v59 << 6);
            v68 = *(v121[0] + 7);
            v69 = (*(v121[0] + 6) + 16 * v67);
            v70 = v69[1];
            v122 = *v69;
            sub_22395E644(v68 + 32 * v67, &v130);
            sub_22395E644(&v130, &v126);

            SimpleType.init(_:)(&v126, &v128);
            v71 = v129;
            if (v129 == 255)
            {
              break;
            }

            result = __swift_destroy_boxed_opaque_existential_0Tm(&v130);
            v72 = v128;
            *(v120 + ((v67 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v67;
            v73 = v123;
            v74 = (v123[6] + 16 * v67);
            *v74 = v122;
            v74[1] = v70;
            v75 = v73[7] + 24 * v67;
            *v75 = v72;
            *(v75 + 16) = v71;
            v76 = v73[2];
            v49 = __OFADD__(v76, 1);
            v77 = v76 + 1;
            if (v49)
            {
              goto LABEL_104;
            }

            v123[2] = v77;
            if (!v63)
            {
              goto LABEL_74;
            }
          }

          sub_22397617C(v128, *(&v128 + 1), 255);
          sub_2239A1E9C();
          v110 = swift_allocError();
          v112 = v111;
          __swift_project_boxed_opaque_existential_1(&v130, v131);
          swift_getDynamicType();
          v113 = sub_2239B3AC8();
          v115 = v114;
          *&v126 = 0;
          *(&v126 + 1) = 0xE000000000000000;
          sub_2239B3758();
          v116 = v126;
          *v112 = v113;
          *(v112 + 8) = v115;
          *(v112 + 16) = v116;
          v86 = v110;
          swift_willThrow();

LABEL_86:

          goto LABEL_87;
        }

LABEL_74:
        v65 = v59;
        while (1)
        {
          v59 = v65 + 1;
          if (__OFADD__(v65, 1))
          {
            break;
          }

          if (v59 >= v117)
          {

            __swift_destroy_boxed_opaque_existential_0Tm(a1);
            result = __swift_destroy_boxed_opaque_existential_0Tm(v133);
            v78 = &v135;
LABEL_94:
            *a2 = *(v78 - 32);
            *(a2 + 8) = 0;
            *(a2 + 16) = 6;
            return result;
          }

          v66 = *(v118 + 8 * v59);
          ++v65;
          if (v66)
          {
            v64 = __clz(__rbit64(v66));
            v63 = (v66 - 1) & v66;
            goto LABEL_79;
          }
        }

LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }
    }

    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    result = __swift_destroy_boxed_opaque_existential_0Tm(v133);
LABEL_97:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = -1;
    return result;
  }

  v21 = v132;
  v122 = [v132 count];
  v125 = MEMORY[0x277D84F90];
  sub_223982A80(0, v122 & ~(v122 >> 63), 0);
  v123 = v125;
  v119 = v21;
  result = sub_2239B3558();
  if (v122 < 0)
  {
    goto LABEL_103;
  }

  v22 = v122;
  if (!v122)
  {
LABEL_62:
    sub_2239A39EC();
    while (1)
    {
      sub_2239B35B8();
      if (!v127)
      {

        __swift_destroy_boxed_opaque_existential_0Tm(a1);
        (*(v8 + 8))(v10, v7);
        sub_2239A3A44(&v126);
        result = __swift_destroy_boxed_opaque_existential_0Tm(v133);
        *a2 = v123;
        *(a2 + 8) = 0;
        *(a2 + 16) = 5;
        return result;
      }

      sub_2239685CC(&v126, &v130);
      sub_22395E644(&v130, &v126);
      SimpleType.init(_:)(&v126, &v128);
      v51 = v129;
      if (v129 == 255)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v130);
      v52 = v128;
      v53 = v123;
      v125 = v123;
      v55 = v123[2];
      v54 = v123[3];
      v56 = (v55 + 1);
      if (v55 >= v54 >> 1)
      {
        LODWORD(v122) = v51;
        v123 = (v55 + 1);
        *v121 = v128;
        v120 = v55;
        sub_223982A80((v54 > 1), v55 + 1, 1);
        v56 = v123;
        v55 = v120;
        v52 = *v121;
        LOBYTE(v51) = v122;
        v53 = v125;
      }

      v53[2] = v56;
      v123 = v53;
      v57 = &v53[3 * v55];
      *(v57 + 2) = v52;
      *(v57 + 48) = v51;
    }

    (*(v8 + 8))(v10, v7);
    sub_22397617C(v128, *(&v128 + 1), v129);
    sub_2239A1E9C();
    v87 = swift_allocError();
    v89 = v88;
    __swift_project_boxed_opaque_existential_1(&v130, v131);
    swift_getDynamicType();
    v90 = sub_2239B3AC8();
    v92 = v91;
    *&v126 = 0;
    *(&v126 + 1) = 0xE000000000000000;
    sub_2239B3758();
    v93 = v126;
    *v89 = v90;
    *(v89 + 8) = v92;
    *(v89 + 16) = v93;
    v86 = v87;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0Tm(&v130);

    goto LABEL_89;
  }

  v120 = sub_2239A39EC();
  while (1)
  {
    result = sub_2239B35B8();
    if (!v131)
    {
      break;
    }

    sub_22395E644(&v130, &v126);
    SimpleType.init(_:)(&v126, &v128);
    v23 = v129;
    if (v129 == 255)
    {
      (*(v8 + 8))(v10, v7);
      sub_22397617C(v128, *(&v128 + 1), v129);
      sub_2239A1E9C();
      v79 = swift_allocError();
      v81 = v80;
      __swift_project_boxed_opaque_existential_1(&v130, v131);
      swift_getDynamicType();
      v82 = sub_2239B3AC8();
      v84 = v83;
      *&v126 = 0;
      *(&v126 + 1) = 0xE000000000000000;
      sub_2239B3758();
      v85 = v126;
      *v81 = v82;
      *(v81 + 8) = v84;
      *(v81 + 16) = v85;
      v86 = v79;
      swift_willThrow();

      goto LABEL_86;
    }

    v121[0] = *(&v128 + 1);
    v122 = v128;
    __swift_destroy_boxed_opaque_existential_0Tm(&v130);
    v24 = v123;
    v125 = v123;
    v26 = v123[2];
    v25 = v123[3];
    v27 = (v26 + 1);
    if (v26 >= v25 >> 1)
    {
      LODWORD(v118) = v23;
      v123 = (v26 + 1);
      v117 = v26;
      sub_223982A80((v25 > 1), v26 + 1, 1);
      v27 = v123;
      v26 = v117;
      LOBYTE(v23) = v118;
      v24 = v125;
    }

    v24[2] = v27;
    v123 = v24;
    v28 = &v24[3 * v26];
    v29 = v121[0];
    v28[4] = v122;
    v28[5] = v29;
    *(v28 + 48) = v23;
    if (!--v22)
    {
      goto LABEL_62;
    }
  }

LABEL_105:
  __break(1u);
  return result;
}

uint64_t TraceArgs.init(arg1:arg2:arg3:arg4:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_22395F84C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t Preference.init(_:initValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = 0xD00000000000001FLL;
  v6[3] = 0x80000002239B9F30;
  return Preference.init(_:initValue:)(v6, a3, a4, a4, a5);
}

{
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *a5 = *a1;
  *(a5 + 16) = v8;
  *(a5 + 24) = v9;
  v10 = type metadata accessor for Preference(0, a3, a3, a4);
  v14 = *(a3 - 8);
  (*(v14 + 16))(a5 + *(v10 + 32), a2, a3);
  v11 = *(v14 + 32);
  v12 = a5 + *(v10 + 28);

  return v11(v12, a2, a3);
}

Swift::Void __swiftcall Preference.sync()()
{
  v2 = v0;
  v3 = *(v0 + 16);
  v4 = sub_2239B3598();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *(v3 - 8);
  MEMORY[0x28223BE20](v6);
  v11 = &v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DefaultsUtilities.get<A>(key:applicationID:userName:)(0xE600000000000000, v3, v8);
  if ((*(v9 + 48))(v8, 1, v3) == 1)
  {
    (*(v5 + 8))(v8, v4);
    (*(v9 + 24))(v1 + *(v2 + 28), v1 + *(v2 + 32), v3);
  }

  else
  {
    (*(v9 + 32))(v11, v8, v3);
    (*(v9 + 40))(v1 + *(v2 + 28), v11, v3);
  }
}

uint64_t static DefaultsUtilities.get<A>(key:applicationID:userName:)@<X0>(uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v48 = a6;
  v49 = a8;
  v9 = sub_2239B3598();
  v46 = *(v9 - 8);
  v47 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v46 - v11;
  v13 = *(a7 - 8);
  MEMORY[0x28223BE20](v10);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2239B3158();
  CFPreferencesAppSynchronize(v16);

  v17 = sub_2239B3158();
  v18 = sub_2239B3158();
  v19 = sub_2239B3158();
  v20 = CFPreferencesCopyValue(v17, v18, v19, *MEMORY[0x277CBF010]);

  *&v50 = v20;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0068, &qword_2239B5D78);
  v21 = swift_dynamicCast();
  v22 = *(v13 + 56);
  if (v21)
  {
    v22(v12, 0, 1, a7);
    v23 = *(v13 + 32);
    v23(v15, v12, a7);
    v24 = v49;
    v23(v49, v15, a7);
    v25 = v24;
    v26 = 0;
LABEL_20:
    v41 = a7;
    goto LABEL_21;
  }

  v27 = v49;
  v22(v12, 1, 1, a7);
  (*(v46 + 8))(v12, v47);
  v28 = swift_conformsToProtocol2();
  if (v28)
  {
    v29 = a7;
  }

  else
  {
    v29 = 0;
  }

  if (v29)
  {
    if (v20)
    {
      v30 = v28;
      v53 = v20;
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        if (swift_conformsToProtocol2())
        {
          v48 = a7;
          v46 = sub_2239B3598();
          v47 = &v46;
          v31 = *(v46 - 8);
          MEMORY[0x28223BE20](v46);
          v33 = &v46 - v32;
          sub_2239B3938();
          v34 = *(v29 - 8);
          if ((*(v34 + 48))(v33, 1, v29) == 1)
          {
            (*(v31 + 8))(v33, v46);
            v52 = 0;
            v50 = 0u;
            v51 = 0u;
          }

          else
          {
            *(&v51 + 1) = v29;
            v52 = v30;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v50);
            (*(v34 + 32))(boxed_opaque_existential_1, v33, v29);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0070, &qword_2239B5D80);
          v44 = v27;
          v45 = v48;
          v26 = swift_dynamicCast() ^ 1;
          v25 = v44;
          v41 = v45;
          goto LABEL_21;
        }
      }
    }
  }

  if (!swift_dynamicCastMetatype() || !v20)
  {
    goto LABEL_19;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (v35)
  {
    v36 = [v35 BOOLValue];
    swift_unknownObjectRelease();
    LOBYTE(v50) = v36;
    v26 = swift_dynamicCast() ^ 1;
    v25 = v27;
    goto LABEL_20;
  }

  swift_unknownObjectRelease();
  v53 = v20;
  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v25 = v27;
    v26 = 1;
    goto LABEL_20;
  }

  v37 = sub_2239B31D8();
  v39 = v38;

  *&v50 = v37;
  *(&v50 + 1) = v39;
  MEMORY[0x28223BE20](v40);
  *(&v46 - 2) = &v50;
  LOBYTE(v37) = sub_223968CB8(sub_223968D9C, (&v46 - 4), &unk_2836FD148);
  swift_arrayDestroy();

  LOBYTE(v50) = v37 & 1;
  v26 = swift_dynamicCast() ^ 1;
  v25 = v27;
  v41 = a7;
LABEL_21:
  v22(v25, v26, 1, v41);
  sub_2239605FC();
  return swift_unknownObjectRelease();
}

uint64_t sub_22396013C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_223960180()
{
  if (qword_281336898 != -1)
  {
    swift_once();
  }

  v0 = *(off_2813368A0 + 2);

  os_unfair_lock_lock((v0 + 24));
  sub_223960244((v0 + 16), &v3);
  os_unfair_lock_unlock((v0 + 24));
  v1 = v3;

  if (v1)
  {
    sub_22396F840();
  }
}

uint64_t sub_223960260@<X0>(double *a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v6 = sub_2239B2FC8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2239B2FB8();
  sub_2239B2FA8();
  v11 = v10;
  result = (*(v7 + 8))(v9, v6);
  v13 = *a1;
  if (*a1 <= v11)
  {
    *a1 = v11 + *(a2 + 24);
  }

  *a3 = v13 <= v11;
  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_223960400@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);

  os_unfair_lock_lock(v3 + 6);
  sub_223964C70(&v3[4], a1);
  os_unfair_lock_unlock(v3 + 6);
}

uint64_t Preference.query()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  Preference.sync()();
  v5 = *(*(*(a1 + 16) - 8) + 16);
  v6 = v2 + *(a1 + 28);

  return v5(a2, v6);
}

uint64_t sub_2239605FC()
{
  v0 = sub_2239B3078();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2239B30B8();
  v4 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281336880 != -1)
  {
    swift_once();
  }

  v9[1] = qword_281336888;
  aBlock[4] = sub_223960180;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22396013C;
  aBlock[3] = &block_descriptor_10;
  v7 = _Block_copy(aBlock);
  sub_2239B3098();
  v11 = MEMORY[0x277D84F90];
  sub_22396091C(&unk_281336638, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0060, &qword_2239B5D70);
  sub_223960964(&qword_281336628, &qword_27D0A0060, &qword_2239B5D70);
  sub_2239B3608();
  MEMORY[0x223DEE310](0, v6, v3, v7);
  _Block_release(v7);
  (*(v1 + 8))(v3, v0);
  (*(v4 + 8))(v6, v10);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22396091C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_223960964(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t Config.rtcConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  v4 = *(v1 + 192);
  v10 = *(v1 + 176);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 208);
  v6 = *(v1 + 144);
  v9[0] = *(v1 + 128);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_223960A4C(v9, v8);
}

uint64_t static Utilities.audioCapturesEnabled()()
{
  v0 = sub_223960C28(0x4965727574706143, 0xED0000617461444FLL, 0xD00000000000001CLL, 0x80000002239BB030, 0x656C69626F6DLL, 0xE600000000000000);
  if ((v0 == 2 || (v0 & 1) == 0) && ((v1 = sub_223960C28(0xD000000000000015, 0x80000002239BB050, 0xD000000000000013, 0x80000002239BB070, 0x656C69626F6DLL, 0xE600000000000000), v1 == 2) || (v1 & 1) == 0) && ((v2 = sub_223960C28(0xD000000000000011, 0x80000002239BB090, 0xD000000000000013, 0x80000002239BB070, 0x656C69626F6DLL, 0xE600000000000000), v2 == 2) || (v2 & 1) == 0) && ((v3 = sub_223960C28(0xD000000000000012, 0x80000002239BB0B0, 0xD000000000000013, 0x80000002239BB070, 0x656C69626F6DLL, 0xE600000000000000), v3 == 2) || (v3 & 1) == 0))
  {
    v4 = sub_223960C28(0xD000000000000016, 0x80000002239BB0D0, 0xD000000000000013, 0x80000002239BB070, 0x656C69626F6DLL, 0xE600000000000000);
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

unint64_t sub_223960C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_2239B3158();
  CFPreferencesAppSynchronize(v6);

  v7 = sub_2239B3158();
  v8 = sub_2239B3158();
  v9 = sub_2239B3158();
  v10 = CFPreferencesCopyValue(v7, v8, v9, *MEMORY[0x277CBF010]);

  *&v29 = v10;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0068, &qword_2239B5D78);
  if (swift_dynamicCast())
  {
    v11 = v32;
LABEL_16:
    sub_2239605FC();
    swift_unknownObjectRelease();
    return v11;
  }

  if (!v10)
  {
LABEL_17:
    sub_2239605FC();
    swift_unknownObjectRelease();
    return 2;
  }

  v32 = v10;
  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    swift_unknownObjectRetain();
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      v11 = [v20 BOOLValue];
      swift_unknownObjectRelease();
      goto LABEL_16;
    }

    swift_unknownObjectRelease();
    v32 = v10;
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      v21 = sub_2239B31D8();
      v23 = v22;

      *&v29 = v21;
      *(&v29 + 1) = v23;
      MEMORY[0x28223BE20](v24);
      v28[2] = &v29;
      LOBYTE(v21) = sub_223968CB8(sub_223968D9C, v28, &unk_2836FBA60);
      swift_arrayDestroy();

      v11 = v21 & 1;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v12 = v29;
  if (!swift_conformsToProtocol2())
  {

    goto LABEL_12;
  }

  v13 = MEMORY[0x277D839B0];
  v14 = sub_2239B3598();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - v16;
  if (v29 == __PAIR128__(0xE400000000000000, 1702195828) || (sub_2239B3958() & 1) != 0)
  {

    v18 = 1;
  }

  else if (v12 == __PAIR128__(0xE500000000000000, 0x65736C6166))
  {

    v18 = 0;
  }

  else
  {
    v27 = sub_2239B3958();

    v18 = 0;
    if ((v27 & 1) == 0)
    {
      v18 = 2;
    }
  }

  *v17 = v18;
  v19 = *(v13 - 8);
  if ((*(v19 + 48))(v17, 1, v13) == 1)
  {
    (*(v15 + 8))(v17, v14);
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
  }

  else
  {
    *(&v30 + 1) = v13;
    v31 = MEMORY[0x277D839E0];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
    (*(v19 + 32))(boxed_opaque_existential_1, v17, v13);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0070, &qword_2239B5D80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    LOBYTE(v32) = 2;
  }

  sub_2239605FC();
  swift_unknownObjectRelease();
  return v32;
}

uint64_t static Utilities.ringBufferAudioCapturesEnabled()()
{
  v0 = sub_223961330(0xD000000000000015, 0x80000002239BB0F0, 0xD000000000000013, 0x80000002239BB070, 0x656C69626F6DLL, 0xE600000000000000);
  v2 = v1;
  v3 = (v0 - 1) < 3;
  v4 = sub_223964914(0xD000000000000012, 0x80000002239BB110, 0xD00000000000001CLL, 0x80000002239BB030, 0x656C69626F6DLL, 0xE600000000000000);
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  if (v6 == 0x74726F6853 && v7 == 0xE500000000000000 || (sub_2239B3958() & 1) != 0 || v6 == 0x6D756964654DLL && v7 == 0xE600000000000000 || (sub_2239B3958() & 1) != 0 || v6 == 1735290700 && v7 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v8 = sub_2239B3958();
  }

  v9 = v3 & ~v2;
  v10 = sub_223961330(0xD000000000000015, 0x80000002239BB050, 0xD000000000000013, 0x80000002239BB070, 0x656C69626F6DLL, 0xE600000000000000);
  if ((v11 & 1) != 0 || v10 <= 1)
  {
    v12 = v9 | v8;
  }

  else if (v9)
  {
    v12 = 1;
  }

  else
  {
    v12 = v8 | (v10 < 5);
  }

  return v12 & 1;
}

unsigned __int8 *sub_223961330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_2239B3158();
  CFPreferencesAppSynchronize(v6);

  v7 = sub_2239B3158();
  v8 = sub_2239B3158();
  v9 = sub_2239B3158();
  v10 = CFPreferencesCopyValue(v7, v8, v9, *MEMORY[0x277CBF010]);

  v49 = v10;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0068, &qword_2239B5D78);
  if (swift_dynamicCast())
  {
    v11 = v46;
    sub_2239605FC();
    swift_unknownObjectRelease();
    return v11;
  }

  if (!v10 || (v49 = v10, swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
  {
    sub_2239605FC();
    swift_unknownObjectRelease();
    return 0;
  }

  v12 = MEMORY[0x277D83B88];
  v13 = sub_2239B3598();
  v14 = *(v13 - 8);
  result = MEMORY[0x28223BE20](v13);
  v17 = &v46 - v16;
  v18 = HIBYTE(*(&v46 + 1)) & 0xFLL;
  v19 = v46 & 0xFFFFFFFFFFFFLL;
  if ((*(&v46 + 1) & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(*(&v46 + 1)) & 0xFLL;
  }

  else
  {
    v20 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

    v41 = 0;
    v40 = 1;
    goto LABEL_71;
  }

  if ((*(&v46 + 1) & 0x1000000000000000) != 0)
  {
    v22 = sub_223988D5C(v46, *(&v46 + 1), 10);
    v40 = v45;
LABEL_68:

    if (v40)
    {
      v41 = 0;
    }

    else
    {
      v41 = v22;
    }

LABEL_71:
    *v17 = v41;
    v17[8] = v40 & 1;
    v42 = *(v12 - 8);
    if ((*(v42 + 48))(v17, 1, v12) == 1)
    {
      (*(v14 + 8))(v17, v13);
      v48 = 0;
      v46 = 0u;
      v47 = 0u;
    }

    else
    {
      *(&v47 + 1) = v12;
      v48 = MEMORY[0x277D83C00];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v46);
      (*(v42 + 32))(boxed_opaque_existential_1, v17, v12);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0070, &qword_2239B5D80);
    v44 = swift_dynamicCast();
    if ((v44 & 1) == 0)
    {
      v49 = 0;
    }

    v50 = v44 ^ 1;
    sub_2239605FC();
    swift_unknownObjectRelease();
    return v49;
  }

  if ((*(&v46 + 1) & 0x2000000000000000) == 0)
  {
    if ((v46 & 0x1000000000000000) != 0)
    {
      result = ((*(&v46 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_2239B36B8();
    }

    v21 = *result;
    if (v21 == 43)
    {
      if (v19 >= 1)
      {
        v18 = v19 - 1;
        if (v19 != 1)
        {
          v22 = 0;
          if (result)
          {
            v29 = result + 1;
            while (1)
            {
              v30 = *v29 - 48;
              if (v30 > 9)
              {
                goto LABEL_66;
              }

              v31 = 10 * v22;
              if ((v22 * 10) >> 64 != (10 * v22) >> 63)
              {
                goto LABEL_66;
              }

              v22 = v31 + v30;
              if (__OFADD__(v31, v30))
              {
                goto LABEL_66;
              }

              ++v29;
              if (!--v18)
              {
                goto LABEL_67;
              }
            }
          }

          goto LABEL_58;
        }

LABEL_66:
        v22 = 0;
        LOBYTE(v18) = 1;
        goto LABEL_67;
      }

      goto LABEL_83;
    }

    if (v21 != 45)
    {
      if (v19)
      {
        v22 = 0;
        while (1)
        {
          v35 = *result - 48;
          if (v35 > 9)
          {
            break;
          }

          v36 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            break;
          }

          v22 = v36 + v35;
          if (__OFADD__(v36, v35))
          {
            break;
          }

          ++result;
          if (!--v19)
          {
            goto LABEL_58;
          }
        }
      }

      goto LABEL_66;
    }

    if (v19 >= 1)
    {
      v18 = v19 - 1;
      if (v19 != 1)
      {
        v22 = 0;
        if (result)
        {
          v23 = result + 1;
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              goto LABEL_66;
            }

            v25 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              goto LABEL_66;
            }

            v22 = v25 - v24;
            if (__OFSUB__(v25, v24))
            {
              goto LABEL_66;
            }

            ++v23;
            if (!--v18)
            {
              goto LABEL_67;
            }
          }
        }

LABEL_58:
        LOBYTE(v18) = 0;
LABEL_67:
        LOBYTE(v49) = v18;
        v40 = v18;
        goto LABEL_68;
      }

      goto LABEL_66;
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  *(&v46 + 1) &= 0xFFFFFFFFFFFFFFuLL;
  if (v46 != 43)
  {
    if (v46 != 45)
    {
      if (v18)
      {
        v22 = 0;
        v37 = &v46;
        while (1)
        {
          v38 = *v37 - 48;
          if (v38 > 9)
          {
            break;
          }

          v39 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            break;
          }

          v22 = v39 + v38;
          if (__OFADD__(v39, v38))
          {
            break;
          }

          ++v37;
          if (!--v18)
          {
            goto LABEL_67;
          }
        }
      }

      goto LABEL_66;
    }

    if (v18)
    {
      if (--v18)
      {
        v22 = 0;
        v26 = &v46 + 1;
        while (1)
        {
          v27 = *v26 - 48;
          if (v27 > 9)
          {
            break;
          }

          v28 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            break;
          }

          v22 = v28 - v27;
          if (__OFSUB__(v28, v27))
          {
            break;
          }

          ++v26;
          if (!--v18)
          {
            goto LABEL_67;
          }
        }
      }

      goto LABEL_66;
    }

    goto LABEL_82;
  }

  if (v18)
  {
    if (--v18)
    {
      v22 = 0;
      v32 = &v46 + 1;
      while (1)
      {
        v33 = *v32 - 48;
        if (v33 > 9)
        {
          break;
        }

        v34 = 10 * v22;
        if ((v22 * 10) >> 64 != (10 * v22) >> 63)
        {
          break;
        }

        v22 = v34 + v33;
        if (__OFADD__(v34, v33))
        {
          break;
        }

        ++v32;
        if (!--v18)
        {
          goto LABEL_67;
        }
      }
    }

    goto LABEL_66;
  }

LABEL_84:
  __break(1u);
  return result;
}

uint64_t sub_223961920(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_223961974(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_2239619E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_223961A28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t Dictionary<>.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = Keys.rawValue.getter();
  if (*(a1 + 16) && (v6 = sub_22396236C(v4, v5), (v7 & 1) != 0))
  {
    v8 = *(a1 + 56) + 24 * v6;
    v9 = *v8;
    v10 = *(v8 + 8);
    *a2 = *v8;
    *(a2 + 8) = v10;
    v11 = *(v8 + 16);
    *(a2 + 16) = v11;
    sub_22396298C(v9, v10, v11);
  }

  else
  {

    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = -1;
  }

  return result;
}

uint64_t Keys.rawValue.getter()
{
  result = 0x726574726F706572;
  switch(*v0)
  {
    case 1:
      return 0x5465636976726573;
    case 2:
      return 0xD000000000000015;
    case 3:
      return 0xD00000000000001ELL;
    case 4:
    case 0x20:
      return 0xD000000000000018;
    case 5:
      return 0xD00000000000001ALL;
    case 6:
      return 0xD000000000000012;
    case 7:
      return 0xD000000000000010;
    case 8:
      return 0x645F657669746361;
    case 9:
    case 0x11:
    case 0x2A:
    case 0x31:
      return 0xD000000000000017;
    case 0xA:
      return 0x78646967736DLL;
    case 0xB:
      return 0x746E6367736DLL;
    case 0xC:
      return 0x6365735F79616C70;
    case 0xD:
      return 0xD000000000000015;
    case 0xE:
    case 0x3A:
      return 0xD000000000000016;
    case 0xF:
      return 0x6F6973736553584DLL;
    case 0x10:
      return 0xD00000000000001CLL;
    case 0x12:
      return 0xD000000000000024;
    case 0x13:
      return 0x656D756C6F76;
    case 0x14:
      return 0x755F656369766564;
    case 0x15:
      return 0x65706F6373;
    case 0x16:
      return 0x646574756D5F7369;
    case 0x17:
      return 0x726F70736E617274;
    case 0x18:
    case 0x1E:
    case 0x35:
    case 0x36:
      return 0xD000000000000011;
    case 0x19:
      return 0x74737265676E6972;
    case 0x1A:
      return 0x6F6D746E656C6973;
    case 0x1B:
      return 0xD000000000000015;
    case 0x1C:
      v3 = 0x616D726F466DLL;
      return v3 & 0xFFFFFFFFFFFFLL | 0x4974000000000000;
    case 0x1D:
      v3 = 0x6375646F7270;
      return v3 & 0xFFFFFFFFFFFFLL | 0x4974000000000000;
    case 0x1F:
      return 0x5F65736E61707865;
    case 0x21:
    case 0x3C:
    case 0x41:
      return 0xD000000000000014;
    case 0x22:
      return 0xD000000000000015;
    case 0x23:
      return 0x5F746168635F7076;
    case 0x24:
      return 0xD000000000000015;
    case 0x25:
      return 0x73617079625F7076;
    case 0x26:
      return 0xD00000000000001BLL;
    case 0x27:
    case 0x44:
      return 0xD000000000000019;
    case 0x28:
      return 0x69737265765F7076;
    case 0x29:
      return 0x737265646F636F76;
    case 0x2B:
      return 0x6D754E6C65646F6DLL;
    case 0x2C:
      v2 = 1685217640;
      goto LABEL_41;
    case 0x2D:
      v2 = 1836214630;
LABEL_41:
      result = v2 | 0x6572617700000000;
      break;
    case 0x2E:
      result = 0xD000000000000020;
      break;
    case 0x2F:
    case 0x32:
    case 0x37:
      result = 0xD00000000000001DLL;
      break;
    case 0x30:
      result = 0xD000000000000015;
      break;
    case 0x33:
      result = 0xD000000000000015;
      break;
    case 0x34:
      result = 0xD000000000000013;
      break;
    case 0x38:
      result = 0x6E5F656369766564;
      break;
    case 0x39:
      result = 0xD000000000000015;
      break;
    case 0x3B:
      result = 0x7461635F72697268;
      break;
    case 0x3D:
      result = 0x6D5F6C6576617274;
      break;
    case 0x3E:
      result = 0x735F6C6576617274;
      break;
    case 0x3F:
      result = 0x6867696E6574616CLL;
      break;
    case 0x40:
      result = 0x6465636E61686E65;
      break;
    case 0x42:
      result = 0x79745F6575737369;
      break;
    case 0x43:
      result = 0x65566769666E6F63;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_22396236C(uint64_t a1, uint64_t a2)
{
  sub_2239B3A18();
  sub_2239B3228();
  v4 = sub_2239B3A78();

  return sub_223962840(a1, a2, v4);
}

uint64_t static ActiveDevicesFilter.modifyMessage(_:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v45 = *a1;
  v46 = v3;
  v50 = *(a1 + 10);
  v4 = a1[4];
  v48 = a1[3];
  v49 = v4;
  v47 = a1[2];
  if (!*(*(&v45 + 1) + 16))
  {
    goto LABEL_18;
  }

  v5 = sub_22396236C(0x645F657669746361, 0xEE00736563697665);
  if ((v6 & 1) == 0)
  {
    goto LABEL_17;
  }

  v7 = *(*(&v45 + 1) + 56) + 24 * v5;
  if (*(v7 + 16) != 4)
  {
    goto LABEL_17;
  }

  v9 = *v7;
  v8 = *(v7 + 8);
  swift_bridgeObjectRetain_n();
  v10 = sub_223963E34(v9, v8, &unk_2836FBAD0);
  if (!v10)
  {

    sub_223963BB4(v9, v8, 4);
LABEL_18:
    v33 = v48;
    *(a2 + 32) = v47;
    *(a2 + 48) = v33;
    *(a2 + 64) = v49;
    *(a2 + 80) = v50;
    v34 = v46;
    *a2 = v45;
    *(a2 + 16) = v34;
    return sub_2239628F8(&v45, &v43);
  }

  v43 = 8283;
  v44 = 0xE200000000000000;
  v42 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
  sub_223968C1C(&qword_281335D60, &qword_27D09FE70, "<r", MEMORY[0x277D83958]);
  v11 = sub_2239B3128();
  MEMORY[0x223DEE030](v11);

  MEMORY[0x223DEE030](23840, 0xE200000000000000);

  if (v9 == 8283 && v8 == v44)
  {
    sub_223963BB4(v9, v8, 4);
    goto LABEL_16;
  }

  v13 = sub_2239B3958();
  sub_223963BB4(v9, v8, 4);
  if (v13)
  {
LABEL_16:

LABEL_17:

    goto LABEL_18;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = *(&v45 + 1);
  sub_2239639F0(8283, 0xE200000000000000, 4, 0x645F657669746361, 0xEE00736563697665, isUniquelyReferenced_nonNull_native);
  v15 = v45;
  v16 = WORD2(v45);
  v39 = BYTE9(v47);
  v40 = BYTE8(v47);
  v38 = BYTE10(v47);
  v17 = *(&v48 + 1);
  v37 = v48;
  v36 = v49;

  sub_223968E14();
  v42 = *(&v45 + 1);
  sub_223965588(&v42);
  sub_223965338(&v42);
  swift_beginAccess();
  v18 = *aUnknown_0;
  v19 = qword_2813367E8;

  v20 = v42;
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_2239639F0(v18, v19, 4, 0x65566769666E6F63, 0xED00006E6F697372, v21);
  v42 = v20;
  sub_223968F38(&v42, v15, v16);
  sub_223969288(&v42);
  sub_22396879C(&v42);
  v22 = v42;

  v24 = sub_2239651A4(v23);
  v26 = v25;
  LOBYTE(v19) = v27;

  v41 = v19 & 1;

  if (*(v22 + 16) && (v28 = sub_22396236C(0xD000000000000018, 0x80000002239B9090), (v29 & 1) != 0) && (v30 = *(v22 + 56) + 24 * v28, *(v30 + 16) == 4))
  {
    v32 = *v30;
    v31 = *(v30 + 8);
  }

  else
  {
    v32 = 0;
    v31 = 0;
  }

  if (!v31)
  {
    v32 = *(&v49 + 1);
    v31 = v50;
  }

  *a2 = v15;
  *(a2 + 4) = v16;
  *(a2 + 8) = v22;
  *(a2 + 16) = v24;
  *(a2 + 24) = v26;
  *(a2 + 32) = v41;
  *(a2 + 40) = v40;
  *(a2 + 41) = v39;
  *(a2 + 42) = v38;
  *(a2 + 48) = v37;
  *(a2 + 56) = v17;
  *(a2 + 64) = v36;
  *(a2 + 72) = v32;
  *(a2 + 80) = v31;
  return result;
}

unint64_t sub_223962840(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2239B3958())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *Message.flattenToAnyDictionary()()
{
  v0 = Message.flatten()();
  v1 = Dictionary<>.asStringAny()(v0);

  return v1;
}

uint64_t sub_22396298C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 4 || a3 == 6 || a3 == 5)
  {
  }

  return v3;
}

uint64_t sub_2239629B8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void *a5)
{
  v64 = a5;
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (63 - v6) >> 6;

  v10 = 0;
  v49 = v9;
  v50 = v5;
  while (1)
  {
    v15 = v8;
    v16 = v10;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v18 = __clz(__rbit64(v15)) | (v16 << 6);
    v19 = (*(a1 + 48) + 16 * v18);
    v20 = v19[1];
    v21 = *(a1 + 56) + 24 * v18;
    v23 = *v21;
    v22 = *(v21 + 8);
    v24 = *(v21 + 16);
    v55[0] = *v19;
    v55[1] = v20;
    v56 = v23;
    v57 = v22;
    v58 = v24;

    sub_22396298C(v23, v22, v24);
    a2(&v59, v55);
    v25 = v56;
    v26 = v57;
    v27 = v58;

    sub_223963BB4(v25, v26, v27);
    v28 = v60;
    if (!v60)
    {
LABEL_22:
      sub_22396D730(a1);
    }

    v29 = v59;
    v30 = v61;
    v31 = v62;
    v53 = v63;
    v32 = *v64;
    v34 = sub_22396236C(v59, v60);
    v35 = v32[2];
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_24;
    }

    v38 = v33;
    if (v32[3] >= v37)
    {
      if ((a4 & 1) == 0)
      {
        sub_223963D78();
      }
    }

    else
    {
      sub_223965FA8(v37, a4 & 1);
      v39 = sub_22396236C(v29, v28);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_26;
      }

      v34 = v39;
    }

    v41 = (v15 - 1) & v15;
    v42 = *v64;
    if (v38)
    {

      v11 = v42[7] + 24 * v34;
      v12 = *v11;
      v13 = *(v11 + 8);
      *v11 = v30;
      *(v11 + 8) = v31;
      v14 = *(v11 + 16);
      *(v11 + 16) = v53;
      sub_223963BB4(v12, v13, v14);
    }

    else
    {
      v42[(v34 >> 6) + 8] |= 1 << v34;
      v43 = (v42[6] + 16 * v34);
      *v43 = v29;
      v43[1] = v28;
      v44 = v42[7] + 24 * v34;
      *v44 = v30;
      *(v44 + 8) = v31;
      *(v44 + 16) = v53;
      v45 = v42[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_25;
      }

      v42[2] = v47;
    }

    a4 = 1;
    v10 = v16;
    v9 = v49;
    v5 = v50;
    v8 = v41;
  }

  v17 = v10;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v9)
    {
      goto LABEL_22;
    }

    v15 = *(v5 + 8 * v16);
    ++v17;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_2239B39A8();
  __break(1u);
  return result;
}

uint64_t sub_223962CA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  v6 = *(a1 + 32);
  *(a2 + 32) = v6;
  *a2 = v3;
  *(a2 + 8) = v2;

  return sub_22396298C(v4, v5, v6);
}

uint64_t Message.flatten()()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v25 = *(v0 + 8);
  v24 = *(v0 + 40);
  v22 = *(v0 + 32);
  v23 = *(v0 + 41);
  v3 = *(v0 + 42);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 80);
  v20 = *(v0 + 24);
  v21 = *(v0 + 72);
  v7 = *(v0 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FFA0, &qword_2239B5B30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2239B51F0;
  *(inited + 32) = 0x6761746F69647561;
  *(inited + 40) = 0xE800000000000000;
  v26 = _s18AudioAnalyticsBase9UtilitiesO24eventCategoryDescription4fromSSSo0a5EventF0V_tFZ_0(v1);
  v27 = v9;
  MEMORY[0x223DEE030](24415, 0xE200000000000000);
  v10 = _s18AudioAnalyticsBase9UtilitiesO20eventTypeDescription4fromSSSo0a5EventF0V_tFZ_0(v7);
  MEMORY[0x223DEE030](v10);

  v11 = v27;
  *(inited + 48) = v26;
  *(inited + 56) = v11;
  *(inited + 64) = 4;
  *(inited + 72) = 0xD000000000000015;
  *(inited + 80) = 0x80000002239B9210;
  *(inited + 88) = v2;
  *(inited + 96) = 0;
  *(inited + 104) = 2;
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x80000002239BA860;
  *(inited + 128) = v3;
  *(inited + 136) = 0;
  *(inited + 144) = 3;
  strcpy((inited + 152), "untrustworthy");
  *(inited + 166) = -4864;
  *(inited + 168) = v4;
  *(inited + 176) = v5;
  *(inited + 184) = 4;

  v12 = sub_2239638CC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FFA8, &qword_2239B5B38);
  swift_arrayDestroy();
  if ((v22 & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v12;
    sub_2239639F0(v20, 0, 2, 0xD000000000000011, 0x80000002239B9230, isUniquelyReferenced_nonNull_native);
  }

  if (v6)
  {

    v14 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v12;
    sub_2239639F0(v21, v6, 4, 0xD000000000000018, 0x80000002239B9090, v14);
  }

  if (v23)
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v12;
    sub_2239639F0(1, 0, 3, 0xD000000000000011, 0x80000002239BA880, v15);
  }

  if (v24)
  {
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v12;
    sub_2239639F0(1, 0, 3, 0x646E756465527369, 0xEB00000000746E61, v16);
  }

  if (qword_2813363A0 != -1)
  {
    swift_once();
  }

  if (byte_2813363AA == 1)
  {
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v12;
    sub_2239639F0(1, 0, 3, 0x79727261437369, 0xE700000000000000, v17);
  }

  v18 = swift_isUniquelyReferenced_nonNull_native();
  v26 = v12;
  sub_2239629B8(v25, sub_223962CA0, 0, v18, &v26);

  return v26;
}

uint64_t _s18AudioAnalyticsBase9UtilitiesO24eventCategoryDescription4fromSSSo0a5EventF0V_tFZ_0(int a1)
{
  v1 = a1 & 0xFFFF0000;
  v2 = a1;
  if ((a1 & 0xFFFF0000) <= 0x7FFFFFF)
  {
    switch(v1)
    {
      case 0x80000000:
        v3 = 0xE700000000000000;
        v4 = 0x786F626C6F6F54;
        goto LABEL_17;
      case 0:
        if (!a1)
        {
          return 0;
        }

        goto LABEL_19;
      case 0x4000000:
        v3 = 0xE400000000000000;
        v4 = 1229211981;
        goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (v1 > 0x1FFFFFFF)
  {
    if (v1 != 0x20000000)
    {
      if (v1 == 0x40000000)
      {
        v3 = 0xE700000000000000;
        v4 = 0x676E6974756F52;
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    v3 = 0xE300000000000000;
    v4 = 4997448;
  }

  else
  {
    if (v1 != 0x8000000)
    {
      if (v1 == 0x10000000)
      {
        v3 = 0xE300000000000000;
        v4 = 5264196;
        goto LABEL_17;
      }

LABEL_14:
      v3 = 0xE900000000000064;
      v4 = 0x656E696665646E55;
      goto LABEL_17;
    }

    v3 = 0xE700000000000000;
    v4 = 0x6E6F6973736553;
  }

LABEL_17:
  MEMORY[0x223DEE030](v4, v3);

  if (v2)
  {
    MEMORY[0x223DEE030](95, 0xE100000000000000);
LABEL_19:
    v5 = sub_22396326C(v2);
    MEMORY[0x223DEE030](v5);
  }

  return 0;
}

unint64_t sub_22396326C(int a1)
{
  v1 = a1 + 1;
  result = 0x636972656E6547;
  switch(v1)
  {
    case 0:
      result = 0x6E776F6E6B6E55;
      break;
    case 2:
      return result;
    case 3:
      result = 0x64726F636552;
      break;
    case 4:
      result = 0x7475706E49;
      break;
    case 5:
      result = 0x6B63616279616C50;
      break;
    case 6:
      result = 0x74757074754FLL;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 20297;
      break;
    case 9:
      result = 0x7075746553;
      break;
    case 10:
      result = 0x6552746E65696C43;
      break;
    case 11:
      result = 0x6168436574756F52;
      break;
    case 12:
      result = 0x726F727245;
      break;
    case 13:
      result = 0x74726F7065524F49;
      break;
    case 14:
      result = 0x616D726F66726550;
      break;
    case 15:
      result = 0x656D756C6F56;
      break;
    case 16:
      result = 0x65736E61707845;
      break;
    case 17:
      result = 0x48676E6972616548;
      break;
    case 18:
      result = 0x73646F50726941;
      break;
    case 19:
      result = 0x6F72506563696F56;
      break;
    case 21:
      result = 0x6C616974617053;
      break;
    case 22:
      result = 0x556F5478694D5056;
      break;
    case 23:
      result = 0x6863746157;
      break;
    case 24:
      result = 0x636E657265666E49;
      break;
    case 25:
      result = 0x6E6172546C6C6143;
      break;
    case 26:
      result = 0x756F527261456E49;
      break;
    default:
      result = 0x656E696665646E55;
      break;
  }

  return result;
}

unint64_t _s18AudioAnalyticsBase9UtilitiesO20eventTypeDescription4fromSSSo0a5EventF0V_tFZ_0(unsigned __int16 a1)
{
  v1 = a1;
  result = 0x636972656E6547;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 0x7472617453;
      break;
    case 2:
      result = 1886352467;
      break;
    case 3:
      result = 0x6574617669746341;
      break;
    case 4:
      result = 0x6176697463616544;
      break;
    case 5:
      result = 0x7075746553;
      break;
    case 6:
      result = 0x726F727245;
      break;
    case 7:
      result = 0x7465446575737349;
      break;
    case 8:
      result = 0x676F4C7265776F50;
      break;
    case 9:
      result = 0x696E556F69647541;
      break;
    case 10:
      result = 0x766972444944494DLL;
      break;
    case 11:
      result = 0x7972616D6D7553;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0x7078456F69647541;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0x694B726F736E6553;
      break;
    case 16:
      result = 0x656C706D6953;
      break;
    case 17:
      result = 0x6172676F74736948;
      break;
    case 18:
      result = 0x6574617453;
      break;
    case 19:
      result = 0x6F4C79726F6D654DLL;
      break;
    case 20:
      result = 0x6E49646F50726941;
      break;
    case 22:
      result = 0xD000000000000010;
      break;
    case 23:
      result = 0x73676E6974746553;
      break;
    default:
      result = 0x6E776F6E6B6E55;
      break;
  }

  return result;
}

unint64_t sub_2239638CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD18, &qword_2239B5750);
    v3 = sub_2239B3798();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      sub_22396298C(v7, v8, v9);
      result = sub_22396236C(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2239639F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v11 = a3;
  v14 = *v6;
  v15 = sub_22396236C(a4, a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_223963D78();
      v15 = v23;
      goto LABEL_8;
    }

    sub_223965FA8(v20, a6 & 1);
    v15 = sub_22396236C(a4, a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      result = sub_2239B39A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 24 * v15;
    v27 = *v26;
    v28 = *(v26 + 8);
    *v26 = a1;
    *(v26 + 8) = a2;
    v29 = *(v26 + 16);
    *(v26 + 16) = v11;

    return sub_223963BB4(v27, v28, v29);
  }

  else
  {
    sub_223963B60(v15, a4, a5, a1, a2, v11, v25);
  }
}

unint64_t sub_223963B60(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a7[7] + 24 * result;
  *v8 = a4;
  *(v8 + 8) = a5;
  *(v8 + 16) = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t sub_223963BB4(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 4 || a3 == 6 || a3 == 5)
  {
  }

  return v3;
}

void *sub_223963BE0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD18, &qword_2239B5750);
  v2 = *v0;
  v3 = sub_2239B3778();
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

        result = sub_22396298C(v23, v24, v26);
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

uint64_t sub_223963DA4(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

char *sub_223963E34(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v58 = a3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE78, &qword_2239B5158);
  v57 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v48 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE80, &qword_2239B5160);
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x28223BE20](v4);
  v54 = (&v48 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE88, &qword_2239B5168);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE90, &qword_2239B5170);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE98, &qword_2239B5178);
  v50 = *(v16 - 8);
  v51 = v16;
  MEMORY[0x28223BE20](v16);
  v49 = &v48 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FEA0, &qword_2239B5180);
  sub_2239B2FF8();
  sub_2239B32F8();

  sub_223968C1C(&qword_2813365C8, &qword_27D09FE88, &qword_2239B5168, MEMORY[0x277D85AC0]);
  sub_2239B2FE8();
  sub_2239B3008();

  v18 = *(v7 + 8);
  v18(v10, v6);
  v18(v12, v6);
  v19 = v50;
  v20 = v51;
  if ((*(v50 + 48))(v15, 1, v51) == 1)
  {

    sub_22396EC14(v15);
    return 0;
  }

  (*(v19 + 32))(v49, v15, v20);
  swift_getKeyPath();
  sub_2239B3018();

  v21 = MEMORY[0x223DEDFD0](v61, v62, v63, v64);
  v23 = v22;

  v61 = v21;
  v62 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FEA8, &qword_2239B51A8);
  v24 = v54;
  sub_2239B2FF8();
  sub_223968C64();
  sub_223968C1C(&qword_2813365D0, &qword_27D09FE80, &qword_2239B5160, MEMORY[0x277D85AC0]);
  v25 = v56;
  v26 = sub_2239B3108();
  (*(v55 + 8))(v24, v25);

  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = *(v57 + 16);
    v29 = *(v57 + 80);
    v48 = v26;
    v30 = v26 + ((v29 + 32) & ~v29);
    v55 = *(v57 + 72);
    v56 = v28;
    v57 += 16;
    v54 = (v57 - 8);
    v31 = MEMORY[0x277D84F90];
    v32 = v52;
    v33 = v53;
    v28(v52, v30, v53);
    while (1)
    {
      swift_getKeyPath();
      sub_2239B3018();

      v34 = MEMORY[0x223DEDFD0](v61, v62, v63, v64);
      v36 = v35;

      v61 = v34;
      v62 = v36;
      MEMORY[0x28223BE20](v37);
      *(&v48 - 2) = &v61;
      v38 = sub_223968CB8(sub_223968D9C, (&v48 - 4), v58);

      if (v38)
      {
        v59 = 8315;
        v60 = 0xE200000000000000;
        swift_getKeyPath();
        sub_2239B3018();

        v39 = MEMORY[0x223DEDFD0](v61, v62, v63, v64);
        v41 = v40;

        MEMORY[0x223DEE030](v39, v41);

        MEMORY[0x223DEE030](32032, 0xE200000000000000);
        v42 = v59;
        v43 = v60;
        (*v54)(v32, v33);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_22396547C(0, *(v31 + 2) + 1, 1, v31);
        }

        v45 = *(v31 + 2);
        v44 = *(v31 + 3);
        if (v45 >= v44 >> 1)
        {
          v31 = sub_22396547C((v44 > 1), v45 + 1, 1, v31);
        }

        *(v31 + 2) = v45 + 1;
        v46 = &v31[16 * v45];
        *(v46 + 4) = v42;
        *(v46 + 5) = v43;
        v32 = v52;
        v33 = v53;
      }

      else
      {
        (*v54)(v32, v33);
      }

      v30 += v55;
      if (!--v27)
      {
        break;
      }

      v56(v32, v30, v33);
    }

    v19 = v50;
    v20 = v51;
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
  }

  (*(v19 + 8))(v49, v20);
  if (!*(v31 + 2))
  {

    return 0;
  }

  return v31;
}

uint64_t static Utilities.createEventCategory(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v21 = MEMORY[0x277D84F90];
    sub_22396511C(0, v1, 0);
    v3 = v21;
    v4 = (a1 + 32);
    v5 = v21[1].u64[0];
    do
    {
      v7 = *v4++;
      v6 = v7;
      v22 = v3;
      v8 = v3[1].u64[1];
      v9 = v5 + 1;
      if (v5 >= v8 >> 1)
      {
        sub_22396511C((v8 > 1), v5 + 1, 1);
        v3 = v22;
      }

      v3[1].i64[0] = v9;
      v3[2].i32[v5++] = v6;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
    v9 = *(MEMORY[0x277D84F90] + 16);
    if (!v9)
    {
      v11 = 0;
      goto LABEL_15;
    }
  }

  if (v9 <= 7)
  {
    v10 = 0;
    LODWORD(v11) = 0;
LABEL_13:
    v18 = v9 - v10;
    v19 = 4 * v10 + 32;
    do
    {
      v11 = *(v3->i32 + v19) | v11;
      v19 += 4;
      --v18;
    }

    while (v18);
    goto LABEL_15;
  }

  v10 = v9 & 0xFFFFFFFFFFFFFFF8;
  v12 = v3 + 3;
  v13 = 0uLL;
  v14 = v9 & 0xFFFFFFFFFFFFFFF8;
  v15 = 0uLL;
  do
  {
    v13 = vorrq_s8(v12[-1], v13);
    v15 = vorrq_s8(*v12, v15);
    v12 += 2;
    v14 -= 8;
  }

  while (v14);
  v16 = vorrq_s8(v15, v13);
  v17 = vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
  v11 = (v17.i32[0] | v17.i32[1]);
  if (v9 != v10)
  {
    goto LABEL_13;
  }

LABEL_15:

  return v11;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_22396486C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 2) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
}

CFPropertyListRef sub_223964914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_2239B3158();
  CFPreferencesAppSynchronize(v6);

  v7 = sub_2239B3158();
  v8 = sub_2239B3158();
  v9 = sub_2239B3158();
  v10 = CFPreferencesCopyValue(v7, v8, v9, *MEMORY[0x277CBF010]);

  v24 = v10;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0068, &qword_2239B5D78);
  if (swift_dynamicCast())
  {
    v11 = v21;
    sub_2239605FC();
    swift_unknownObjectRelease();
    return v11;
  }

  if (!v10 || (v24 = v10, swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
  {
LABEL_9:
    sub_2239605FC();
    swift_unknownObjectRelease();
    return 0;
  }

  v12 = MEMORY[0x277D837D0];
  if (!swift_conformsToProtocol2())
  {

    goto LABEL_9;
  }

  v13 = sub_2239B3598();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - v15;
  v17 = MEMORY[0x277D83840];
  sub_2239B3938();
  v18 = *(v12 - 8);
  if ((*(v18 + 48))(v16, 1, v12) == 1)
  {
    (*(v14 + 8))(v16, v13);
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
  }

  else
  {
    *(&v22 + 1) = v12;
    v23 = v17;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
    (*(v18 + 32))(boxed_opaque_existential_1, v16, v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0070, &qword_2239B5D80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v24 = 0;
    v25 = 0;
  }

  sub_2239605FC();
  swift_unknownObjectRelease();
  return v24;
}

uint64_t sub_223964C8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_223964CF0@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *result;
  if (*result && *(v5 + 16))
  {
    result = sub_22396236C(a2, a3);
    if (v6)
    {
      v7 = *(v5 + 56) + 24 * result;
      v8 = *v7;
      v9 = *(v7 + 8);
      *a4 = *v7;
      *(a4 + 8) = v9;
      v10 = *(v7 + 16);
      *(a4 + 16) = v10;
      return sub_22396298C(v8, v9, v10);
    }

    else
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = -1;
    }
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = -1;
  }

  return result;
}

void OSAllocatedUnfairLock<A>.load<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v4));
  sub_223964E30(a2 + v3);

  os_unfair_lock_unlock((a2 + v4));
}

uint64_t static ConfigCommon.matches(audioServiceType:config:)(int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = a1;
    v5 = a2 + 32;
    while (1)
    {
      sub_223964C8C(v5, v15);
      v6 = v16;
      v7 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      (*(v7 + 8))(v13, v6, v7);
      v8 = v13[0];
      v9 = BYTE2(v13[0]);

      v10 = (a1 & 0x10000) == 0 && v4 == v8;
      v11 = v10;
      if ((v9 & 1) != 0 || v11)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      v5 += 40;
      if (!--v2)
      {
        goto LABEL_12;
      }
    }

    sub_2239695C0(v15, v13);
    sub_223964F8C(v13);
    return 1;
  }

  else
  {
LABEL_12:
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_223964F8C(v13);
    return 0;
  }
}

uint64_t sub_223964F8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF48, &qword_2239B57A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_223965018(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF68, &qword_2239B5AF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_22396511C(char *a1, int64_t a2, char a3)
{
  result = sub_223965018(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22396514C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2239B3958() & 1;
  }
}

double sub_2239651A4(uint64_t a1)
{
  v2 = sub_2239B2FC8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2239B2FB8();
  sub_2239B2FA8();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  if (*(a1 + 16))
  {
    v8 = sub_22396236C(0xD000000000000015, 0x80000002239B9210);
    if (v9)
    {
      v10 = *(a1 + 56) + 24 * v8;
      v11 = *(v10 + 8);
      v12 = *(v10 + 16);
      v18 = *v10;
      v19 = v11;
      v20 = v12;
      sub_22396298C(v18, v11, v12);
      v21 = SimpleType.unwrapToDouble()();
      v13 = *&v21.is_nil;
      v15 = v14;
      sub_223963BB4(v18, v19, v20);
      if ((v15 & 1) == 0 && v7 + -31536000.0 <= v13)
      {
        return v13;
      }
    }
  }

  return v7;
}

unint64_t sub_223965338(unint64_t result)
{
  v1 = *result;
  if (*(*result + 16))
  {
    v2 = result;
    result = sub_22396236C(0x6D617473656D6974, 0xE900000000000070);
    if (v3)
    {
      if (*(v1 + 16) && (v4 = sub_22396236C(0x6D617473656D6974, 0xE900000000000070), (v5 & 1) != 0))
      {
        v6 = *(v1 + 56) + 24 * v4;
        v7 = *v6;
        v8 = *(v6 + 8);
        v9 = *(v6 + 16);
        sub_22396298C(*v6, v8, *(v6 + 16));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v11 = *v2;
        sub_2239639F0(v7, v8, v9, 0xD000000000000011, 0x80000002239BA960, isUniquelyReferenced_nonNull_native);
        *v2 = v11;
      }

      else
      {
        sub_22398D454(0xD000000000000011, 0x80000002239BA960, &v11);
        sub_22397617C(v11, v12, v13);
      }

      sub_22398D454(0x6D617473656D6974, 0xE900000000000070, &v11);
      return sub_22397617C(v11, v12, v13);
    }
  }

  return result;
}

char *sub_22396547C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FFB8, qword_2239B5BF0);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_223965588(uint64_t *a1)
{
  v78 = sub_2239B2E38();
  v84 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = a1;
  v3 = *a1;
  v6 = *(*a1 + 64);
  v5 = *a1 + 64;
  v4 = v6;
  v7 = 1 << *(v3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v80 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v11;
    if (!v9)
    {
      break;
    }

LABEL_8:
    v13 = (*(v3 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v9)))));
    v14 = v13[1];
    v85 = *v13;
    v86 = v14;
    v91 = v85;
    v92 = v14;
    v15 = qword_281335F20;

    if (v15 != -1)
    {
      swift_once();
    }

    v9 &= v9 - 1;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0268, &qword_2239B6EA0);
    __swift_project_value_buffer(v16, qword_281335F28);
    sub_223968C64();
    sub_223968C1C(&qword_2813365D8, &qword_27D0A0268, &qword_2239B6EA0, MEMORY[0x277D85AC0]);
    if (sub_2239B3118())
    {
      v17 = v80;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v89 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22396C7F0(0, *(v17 + 16) + 1, 1);
        v17 = v89;
      }

      v19 = v85;
      v21 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_22396C7F0((v20 > 1), v21 + 1, 1);
        v17 = v89;
      }

      *(v17 + 16) = v21 + 1;
      v80 = v17;
      v22 = v17 + 16 * v21;
      v23 = v86;
      *(v22 + 32) = v19;
      *(v22 + 40) = v23;
    }

    else
    {
    }
  }

  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      result = sub_2239B39A8();
      __break(1u);
      return result;
    }

    if (v11 >= v10)
    {
      break;
    }

    v9 = *(v5 + 8 * v11);
    ++v12;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  v24 = v80;
  v76 = *(v80 + 16);
  if (v76)
  {
    v25 = 0;
    v75 = (v84 + 8);
    v26 = (v80 + 40);
    while (1)
    {
      if (v25 >= *(v24 + 16))
      {
        goto LABEL_50;
      }

      v83 = v26;
      v84 = v25;
      v33 = *(v26 - 1);
      v32 = *v26;
      v34 = *(v3 + 16);

      v86 = v3;
      if (v34 && (v35 = sub_22396236C(v33, v32), (v36 & 1) != 0))
      {
        v37 = *(v3 + 56) + 24 * v35;
        v38 = *v37;
        v39 = *(v37 + 16);
        v81 = *(v37 + 8);
        v82 = v38;
        sub_22396298C(v38, v81, v39);
      }

      else
      {
        v81 = 0;
        v82 = 0;
        v39 = 255;
      }

      LODWORD(v85) = v39;
      v91 = v33;
      v92 = v32;
      v40 = v77;
      sub_2239B2E28();
      sub_22396C8B8();
      v41 = sub_2239B35D8();
      v43 = v42;
      (*v75)(v40, v78);
      v89 = v41;
      v90 = v43;
      if (qword_281335F20 != -1)
      {
        swift_once();
      }

      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0268, &qword_2239B6EA0);
      __swift_project_value_buffer(v44, qword_281335F28);
      v87 = 95;
      v88 = 0xE100000000000000;
      sub_22396C864();
      sub_22396C810();
      sub_223968C1C(&qword_2813365D8, &qword_27D0A0268, &qword_2239B6EA0, MEMORY[0x277D85AC0]);
      sub_2239B34B8();

      v45 = v91;
      v46 = v92;
      v3 = v86;
      v47 = sub_22396236C(v33, v32);
      v49 = v48;

      v50 = v79;
      v51 = v85;
      if (v49)
      {
        v52 = swift_isUniquelyReferenced_nonNull_native();
        v3 = *v50;
        v91 = *v50;
        if (!v52)
        {
          sub_223963D78();
          v3 = v91;
        }

        sub_223963BB4(*(*(v3 + 56) + 24 * v47), *(*(v3 + 56) + 24 * v47 + 8), *(*(v3 + 56) + 24 * v47 + 16));
        sub_22396C90C(v47, v3);
        *v50 = v3;
      }

      if (v51 != 255)
      {
        break;
      }

      v63 = sub_22396236C(v45, v46);
      v65 = v64;

      if ((v65 & 1) == 0)
      {
        goto LABEL_21;
      }

      v66 = swift_isUniquelyReferenced_nonNull_native();
      v3 = *v50;
      v91 = *v50;
      if (!v66)
      {
        sub_223963D78();
        v3 = v91;
      }

      sub_223963BB4(*(*(v3 + 56) + 24 * v63), *(*(v3 + 56) + 24 * v63 + 8), *(*(v3 + 56) + 24 * v63 + 16));
      sub_22396C90C(v63, v3);
LABEL_20:
      *v50 = v3;
LABEL_21:
      v25 = v84 + 1;
      v26 = v83 + 2;
      v24 = v80;
      if (v76 == v84 + 1)
      {
      }
    }

    v53 = swift_isUniquelyReferenced_nonNull_native();
    v91 = *v50;
    v54 = v91;
    v55 = sub_22396236C(v45, v46);
    v57 = *(v54 + 16);
    v58 = (v56 & 1) == 0;
    v59 = __OFADD__(v57, v58);
    v60 = v57 + v58;
    if (v59)
    {
      goto LABEL_51;
    }

    v61 = v56;
    if (*(v54 + 24) < v60)
    {
      sub_223965FA8(v60, v53);
      v55 = sub_22396236C(v45, v46);
      if ((v61 & 1) != (v62 & 1))
      {
        goto LABEL_53;
      }

      goto LABEL_43;
    }

    if (v53)
    {
LABEL_43:
      v68 = v81;
      v67 = v82;
      if ((v61 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v73 = v55;
      sub_223963D78();
      v55 = v73;
      v68 = v81;
      v67 = v82;
      if ((v61 & 1) == 0)
      {
LABEL_44:
        v3 = v91;
        *(v91 + 8 * (v55 >> 6) + 64) |= 1 << v55;
        v69 = (*(v3 + 48) + 16 * v55);
        *v69 = v45;
        v69[1] = v46;
        v70 = *(v3 + 56) + 24 * v55;
        *v70 = v67;
        *(v70 + 8) = v68;
        *(v70 + 16) = v51;
        v71 = *(v3 + 16);
        v59 = __OFADD__(v71, 1);
        v72 = v71 + 1;
        if (v59)
        {
          goto LABEL_52;
        }

        *(v3 + 16) = v72;
        goto LABEL_20;
      }
    }

    v27 = v55;

    v3 = v91;
    v28 = *(v91 + 56) + 24 * v27;
    v29 = *v28;
    v30 = *(v28 + 8);
    *v28 = v67;
    *(v28 + 8) = v68;
    v31 = *(v28 + 16);
    *(v28 + 16) = v51;
    sub_223963BB4(v29, v30, v31);
    goto LABEL_20;
  }
}

uint64_t sub_223965CC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD18, &qword_2239B5750);
  v38 = v4;
  result = sub_2239B3788();
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

        sub_22396298C(v25, v26, v27);
      }

      sub_2239B3A18();
      sub_2239B3228();
      result = sub_2239B3A78();
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

void *Dictionary<>.asStringAny()(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD70, &qword_2239B4D78);
  result = sub_2239B3778();
  v3 = a1;
  v4 = 0;
  v347 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v363 = result + 8;
  v364 = result;
  v342 = a1;
  v362 = v8;
  if (!v7)
  {
LABEL_6:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_362;
      }

      if (v4 >= v8)
      {
        return result;
      }

      v12 = *(v347 + 8 * v4);
      ++v11;
      if (v12)
      {
        v9 = __clz(__rbit64(v12));
        v10 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }
  }

  while (1)
  {
    v9 = __clz(__rbit64(v7));
    v10 = (v7 - 1) & v7;
LABEL_11:
    v13 = v9 | (v4 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(v3 + 56) + 24 * v13;
    v18 = *v17;
    v19 = *(v17 + 16);
    v367 = v10;
    v368 = v4;
    v369 = v15;
    v370 = v13;
    if (v19 > 2)
    {
      break;
    }

    if (*(v17 + 16))
    {
      if (v19 == 1)
      {
        v21 = MEMORY[0x277D84D38];
      }

      else
      {
        if (v19 != 2)
        {
          goto LABEL_383;
        }

        v21 = MEMORY[0x277D839F8];
      }
    }

    else
    {
      v21 = MEMORY[0x277D84A28];
    }

    v442 = v21;
    *&v441 = v18;
LABEL_182:

LABEL_356:
    *(v363 + ((v370 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v370;
    v309 = (v364[6] + 16 * v370);
    *v309 = v369;
    v309[1] = v16;
    sub_2239685CC(&v441, (v364[7] + 32 * v370));
    v310 = v364[2];
    v65 = __OFADD__(v310, 1);
    v311 = v310 + 1;
    if (v65)
    {
      goto LABEL_374;
    }

    result = v364;
    v364[2] = v311;
    v7 = v367;
    v4 = v368;
    v8 = v362;
    if (!v367)
    {
      goto LABEL_6;
    }
  }

  v20 = *(v17 + 8);
  if (*(v17 + 16) <= 4u)
  {
    if (v19 != 3)
    {
      if (v19 != 4)
      {
        goto LABEL_383;
      }

      v442 = MEMORY[0x277D837D0];
      *&v441 = v18;
      *(&v441 + 1) = v20;

      sub_22396298C(v18, v20, 4);
      goto LABEL_356;
    }

    v442 = MEMORY[0x277D839B0];
    LOBYTE(v441) = v18 & 1;
    goto LABEL_182;
  }

  v376 = *v17;
  v336 = v16;
  v343 = *(v17 + 8);
  if (v19 != 5)
  {
    if (v19 != 6)
    {
      goto LABEL_383;
    }

    v3 = v342;
    v164 = sub_2239B3778();
    v349 = v18 + 64;
    v165 = 1 << *(v18 + 32);
    if (v165 < 64)
    {
      v166 = ~(-1 << v165);
    }

    else
    {
      v166 = -1;
    }

    v390 = v166 & *(v18 + 64);
    sub_22396298C(v18, v20, 6);

    sub_22396298C(v18, v20, 6);
    v167 = 0;
    v168 = (v165 + 63) >> 6;
    v359 = v168;
    v361 = v164 + 64;
    v366 = v164;
    v169 = v390;
    if (v390)
    {
LABEL_190:
      v170 = __clz(__rbit64(v169));
      v171 = (v169 - 1) & v169;
      goto LABEL_196;
    }

LABEL_191:
    v172 = v167;
    while (1)
    {
      v167 = v172 + 1;
      if (__OFADD__(v172, 1))
      {
        goto LABEL_366;
      }

      if (v167 >= v168)
      {
        break;
      }

      v173 = *(v349 + 8 * v167);
      ++v172;
      if (v173)
      {
        v170 = __clz(__rbit64(v173));
        v171 = (v173 - 1) & v173;
LABEL_196:
        v174 = v170 | (v167 << 6);
        v175 = (*(v18 + 48) + 16 * v174);
        v176 = *v175;
        v177 = v175[1];
        v178 = *(v18 + 56) + 24 * v174;
        v179 = *v178;
        v180 = *(v178 + 16);
        v375 = v167;
        v391 = v171;
        v380 = v176;
        v384 = v174;
        if (v180 <= 2)
        {
          if (*(v178 + 16))
          {
            if (v180 == 1)
            {
              v182 = MEMORY[0x277D84D38];
            }

            else
            {
              if (v180 != 2)
              {
                goto LABEL_383;
              }

              v182 = MEMORY[0x277D839F8];
            }
          }

          else
          {
            v182 = MEMORY[0x277D84A28];
          }

          v442 = v182;
          *&v441 = v179;
          goto LABEL_252;
        }

        v181 = *(v178 + 8);
        if (*(v178 + 16) <= 4u)
        {
          if (v180 != 3)
          {
            if (v180 != 4)
            {
              goto LABEL_383;
            }

            v442 = MEMORY[0x277D837D0];
            *&v441 = v179;
            *(&v441 + 1) = v181;

            sub_22396298C(v179, v181, 4);
            goto LABEL_253;
          }

          v442 = MEMORY[0x277D839B0];
          LOBYTE(v441) = v179 & 1;
LABEL_252:

          goto LABEL_253;
        }

        v386 = *v178;
        v341 = v177;
        v346 = *(v178 + 8);
        if (v180 == 5)
        {
          v183 = *(v179 + 16);
          if (v183)
          {
            sub_22396298C(v179, v181, 5);

            sub_22396298C(v179, v181, 5);
            v426 = MEMORY[0x277D84F90];
            sub_2239829F0(0, v183, 0);
            v184 = 0;
            v185 = v426;
            v406 = v179 + 32;
            v186 = v183;
            v350 = v183;
            do
            {
              if (v184 >= *(v179 + 16))
              {
                goto LABEL_372;
              }

              v187 = v406 + 24 * v184;
              v188 = *v187;
              v189 = *(v187 + 16);
              if (v189 <= 2)
              {
                if (*(v187 + 16))
                {
                  if (v189 == 1)
                  {
                    v191 = MEMORY[0x277D84D38];
                  }

                  else
                  {
                    if (v189 != 2)
                    {
                      goto LABEL_383;
                    }

                    v191 = MEMORY[0x277D839F8];
                  }
                }

                else
                {
                  v191 = MEMORY[0x277D84A28];
                }

                v442 = v191;
                *&v441 = v188;
              }

              else
              {
                v190 = *(v187 + 8);
                if (*(v187 + 16) > 4u)
                {
                  v397 = v184;
                  v402 = v185;
                  v393 = *v187;
                  if (v189 == 5)
                  {
                    v192 = *(v188 + 16);
                    if (v192)
                    {
                      v354 = *(v187 + 8);
                      sub_22396298C(v188, v190, 5);
                      v423 = MEMORY[0x277D84F90];

                      sub_2239829F0(0, v192, 0);
                      v193 = v423;
                      v194 = (v188 + 48);
                      do
                      {
                        v432 = *(v194 - 2);
                        v438 = *(v194 - 1);
                        v195 = *v194;
                        sub_22396298C(v432, v438, *v194);
                        SimpleType.unwrap()(&v441);
                        sub_223963BB4(v432, v438, v195);
                        v197 = *(v423 + 16);
                        v196 = *(v423 + 24);
                        if (v197 >= v196 >> 1)
                        {
                          sub_2239829F0((v196 > 1), v197 + 1, 1);
                        }

                        v194 += 24;
                        *(v423 + 16) = v197 + 1;
                        sub_2239685CC(&v441, (v423 + 32 * v197 + 32));
                        --v192;
                      }

                      while (v192);
                      v188 = v393;
                      v190 = v354;
                      sub_223963BB4(v393, v354, 5);
                      v18 = v376;
                      v186 = v350;
                      v185 = v402;
                    }

                    else
                    {
                      sub_22396298C(v188, v190, 5);
                      v193 = MEMORY[0x277D84F90];
                    }

                    v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03A8, &qword_2239B7448);
                    sub_223963BB4(v188, v190, 5);
                    *&v441 = v193;
                  }

                  else
                  {
                    if (v189 != 6)
                    {
                      goto LABEL_383;
                    }

                    v198 = sub_2239B3778();
                    v199 = v190;
                    v200 = v188 + 64;
                    v201 = 1 << *(v188 + 32);
                    if (v201 < 64)
                    {
                      v202 = ~(-1 << v201);
                    }

                    else
                    {
                      v202 = -1;
                    }

                    v416 = v202 & *(v188 + 64);
                    sub_22396298C(v188, v199, 6);
                    v355 = v199;
                    sub_22396298C(v188, v199, 6);
                    v203 = 0;
                    v204 = (v201 + 63) >> 6;
                    v205 = v416;
                    if (v416)
                    {
                      do
                      {
                        v206 = __clz(__rbit64(v205));
                        v417 = (v205 - 1) & v205;
LABEL_238:
                        v209 = v206 | (v203 << 6);
                        v210 = (*(v188 + 48) + 16 * v209);
                        v211 = v210[1];
                        v410 = *v210;
                        v212 = *(v188 + 56) + 24 * v209;
                        v213 = *v212;
                        v214 = *(v212 + 8);
                        v215 = *(v212 + 16);

                        sub_22396298C(v213, v214, v215);
                        SimpleType.unwrap()(&v441);
                        sub_223963BB4(v213, v214, v215);
                        *(v198 + ((v209 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v209;
                        v216 = (v198[6] + 16 * v209);
                        *v216 = v410;
                        v216[1] = v211;
                        sub_2239685CC(&v441, (v198[7] + 32 * v209));
                        v217 = v198[2];
                        v65 = __OFADD__(v217, 1);
                        v218 = v217 + 1;
                        if (v65)
                        {
                          goto LABEL_376;
                        }

                        v198[2] = v218;
                        v18 = v376;
                        v179 = v386;
                        v184 = v397;
                        v185 = v402;
                        v188 = v393;
                        v205 = v417;
                      }

                      while (v417);
                    }

                    v207 = v203;
                    v186 = v350;
                    while (1)
                    {
                      v203 = v207 + 1;
                      if (__OFADD__(v207, 1))
                      {
                        goto LABEL_363;
                      }

                      if (v203 >= v204)
                      {
                        break;
                      }

                      v208 = *(v200 + 8 * v203);
                      ++v207;
                      if (v208)
                      {
                        v206 = __clz(__rbit64(v208));
                        v417 = (v208 - 1) & v208;
                        goto LABEL_238;
                      }
                    }

                    sub_223963BB4(v188, v355, 6);
                    v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF18, &unk_2239B53C0);
                    sub_223963BB4(v188, v355, 6);
                    *&v441 = v198;
                  }
                }

                else if (v189 == 3)
                {
                  v442 = MEMORY[0x277D839B0];
                  LOBYTE(v441) = v188 & 1;
                }

                else
                {
                  if (v189 != 4)
                  {
                    goto LABEL_383;
                  }

                  v442 = MEMORY[0x277D837D0];
                  *&v441 = v188;
                  *(&v441 + 1) = v190;
                  sub_22396298C(v188, v190, 4);
                }
              }

              v220 = *(v185 + 16);
              v219 = *(v185 + 24);
              if (v220 >= v219 >> 1)
              {
                sub_2239829F0((v219 > 1), v220 + 1, 1);
                v186 = v350;
              }

              ++v184;
              *(v185 + 16) = v220 + 1;
              sub_2239685CC(&v441, (v185 + 32 * v220 + 32));
            }

            while (v184 != v186);
            v306 = v346;
            sub_223963BB4(v179, v346, 5);
            v3 = v342;
          }

          else
          {

            v306 = v181;
            sub_22396298C(v179, v181, 5);
            v185 = MEMORY[0x277D84F90];
          }

          v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03A8, &qword_2239B7448);
          sub_223963BB4(v179, v306, 5);
          *&v441 = v185;
          v177 = v341;
          goto LABEL_253;
        }

        if (v180 != 6)
        {
          goto LABEL_383;
        }

        v224 = sub_2239B3778();
        v332 = v179 + 64;
        v225 = 1 << *(v179 + 32);
        if (v225 < 64)
        {
          v226 = ~(-1 << v225);
        }

        else
        {
          v226 = -1;
        }

        v227 = v226 & *(v179 + 64);
        sub_22396298C(v179, v181, 6);

        sub_22396298C(v179, v181, 6);
        v228 = 0;
        v229 = (v225 + 63) >> 6;
        v230 = v224 + 8;
        v320 = v229;
        v322 = v224;
        if (!v227)
        {
          goto LABEL_264;
        }

        while (2)
        {
          v231 = __clz(__rbit64(v227));
          v227 &= v227 - 1;
LABEL_269:
          v234 = v231 | (v228 << 6);
          v235 = (*(v179 + 48) + 16 * v234);
          v236 = *v235;
          v237 = v235[1];
          v238 = *(v179 + 56) + 24 * v234;
          v239 = *v238;
          v240 = *(v238 + 16);
          v418 = v236;
          if (v240 <= 2)
          {
            if (*(v238 + 16))
            {
              if (v240 == 1)
              {
                v242 = MEMORY[0x277D84D38];
              }

              else
              {
                if (v240 != 2)
                {
                  goto LABEL_383;
                }

                v242 = MEMORY[0x277D839F8];
              }
            }

            else
            {
              v242 = MEMORY[0x277D84A28];
            }

            v442 = v242;
            *&v441 = v239;
            goto LABEL_287;
          }

          v241 = *(v238 + 8);
          if (*(v238 + 16) <= 4u)
          {
            if (v240 != 3)
            {
              if (v240 != 4)
              {
                goto LABEL_383;
              }

              v442 = MEMORY[0x277D837D0];
              *&v441 = v239;
              *(&v441 + 1) = v241;
              v351 = v241;

              sub_22396298C(v239, v351, 4);
              goto LABEL_346;
            }

            v442 = MEMORY[0x277D839B0];
            LOBYTE(v441) = v239 & 1;
LABEL_287:

            goto LABEL_346;
          }

          v394 = v227;
          v373 = v234;
          v398 = *v238;
          v334 = v237;
          if (v240 == 5)
          {
            v243 = v230;
            v244 = *(v239 + 16);
            if (v244)
            {
              v245 = *(v238 + 8);
              sub_22396298C(v239, v241, 5);

              sub_22396298C(v239, v245, 5);
              v427 = MEMORY[0x277D84F90];
              sub_2239829F0(0, v244, 0);
              v246 = v427;
              v247 = (v239 + 48);
              do
              {
                v433 = *(v247 - 2);
                v439 = *(v247 - 1);
                v248 = *v247;
                sub_22396298C(v433, v439, *v247);
                SimpleType.unwrap()(&v441);
                sub_223963BB4(v433, v439, v248);
                v250 = *(v427 + 16);
                v249 = *(v427 + 24);
                if (v250 >= v249 >> 1)
                {
                  sub_2239829F0((v249 > 1), v250 + 1, 1);
                }

                v247 += 24;
                *(v427 + 16) = v250 + 1;
                sub_2239685CC(&v441, (v427 + 32 * v250 + 32));
                --v244;
              }

              while (v244);
              v239 = v398;
              sub_223963BB4(v398, v245, 5);
              v179 = v386;
              v229 = v320;
              v224 = v322;
            }

            else
            {
              v245 = *(v238 + 8);

              sub_22396298C(v239, v245, 5);
              v246 = MEMORY[0x277D84F90];
            }

            v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03A8, &qword_2239B7448);
            sub_223963BB4(v239, v245, 5);
            *&v441 = v246;
            v230 = v243;
            v227 = v394;
            v234 = v373;
            goto LABEL_345;
          }

          if (v240 != 6)
          {
            goto LABEL_383;
          }

          v313 = v230;
          v251 = *(v238 + 8);
          v325 = sub_2239B3778();
          v315 = v239 + 64;
          v252 = 1 << *(v239 + 32);
          if (v252 < 64)
          {
            v253 = ~(-1 << v252);
          }

          else
          {
            v253 = -1;
          }

          v411 = v253 & *(v239 + 64);
          sub_22396298C(v239, v251, 6);

          v352 = v251;
          sub_22396298C(v239, v251, 6);
          v254 = 0;
          v255 = v252 + 63;
          v256 = v325;
          v257 = v255 >> 6;
          v330 = v255 >> 6;
          while (2)
          {
            if (v411)
            {
              v258 = __clz(__rbit64(v411));
              v259 = (v411 - 1) & v411;
LABEL_302:
              v262 = v258 | (v254 << 6);
              v263 = (*(v398 + 48) + 16 * v262);
              v264 = *v263;
              v265 = v263[1];
              v266 = *(v398 + 56) + 24 * v262;
              v267 = *v266;
              v268 = *(v266 + 16);
              v407 = v262;
              v411 = v259;
              v403 = v264;
              if (v268 <= 2)
              {
                if (*(v266 + 16))
                {
                  if (v268 == 1)
                  {
                    v270 = MEMORY[0x277D84D38];
                  }

                  else
                  {
                    if (v268 != 2)
                    {
                      goto LABEL_383;
                    }

                    v270 = MEMORY[0x277D839F8];
                  }
                }

                else
                {
                  v270 = MEMORY[0x277D84A28];
                }

                v442 = v270;
                *&v441 = v267;
LABEL_320:
              }

              else
              {
                v269 = *(v266 + 8);
                if (v268 > 4)
                {
                  v356 = v267;
                  v314 = v265;
                  v327 = v269;
                  if (v268 == 5)
                  {
                    v271 = *(v267 + 16);
                    if (v271)
                    {
                      v272 = v267;
                      sub_22396298C(v267, v269, 5);

                      sub_22396298C(v272, v327, 5);
                      v428 = MEMORY[0x277D84F90];
                      sub_2239829F0(0, v271, 0);
                      v273 = v428;
                      v274 = (v272 + 48);
                      do
                      {
                        v434 = *(v274 - 2);
                        v440 = *(v274 - 1);
                        v275 = *v274;
                        sub_22396298C(v434, v440, *v274);
                        SimpleType.unwrap()(&v441);
                        sub_223963BB4(v434, v440, v275);
                        v277 = *(v428 + 16);
                        v276 = *(v428 + 24);
                        if (v277 >= v276 >> 1)
                        {
                          sub_2239829F0((v276 > 1), v277 + 1, 1);
                        }

                        v274 += 24;
                        *(v428 + 16) = v277 + 1;
                        sub_2239685CC(&v441, (v428 + 32 * v277 + 32));
                        --v271;
                      }

                      while (v271);
                      v298 = v356;
                      v299 = v327;
                      sub_223963BB4(v356, v327, 5);
                      v179 = v386;
                      v234 = v373;
                      v256 = v325;
                    }

                    else
                    {
                      v298 = v267;

                      v299 = v327;
                      sub_22396298C(v298, v327, 5);
                      v273 = MEMORY[0x277D84F90];
                    }

                    v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03A8, &qword_2239B7448);
                    sub_223963BB4(v298, v299, 5);
                    *&v441 = v273;
                    v229 = v320;
                    v224 = v322;
                    v257 = v330;
                  }

                  else
                  {
                    if (v268 != 6)
                    {
                      goto LABEL_383;
                    }

                    v278 = v267;
                    v279 = v269;
                    v280 = sub_2239B3778();
                    v312 = v278 + 64;
                    v281 = 1 << *(v278 + 32);
                    if (v281 < 64)
                    {
                      v282 = ~(-1 << v281);
                    }

                    else
                    {
                      v282 = -1;
                    }

                    v388 = v282 & *(v278 + 64);
                    sub_22396298C(v278, v279, 6);

                    sub_22396298C(v278, v279, 6);
                    v283 = 0;
                    v284 = (v281 + 63) >> 6;
                    v316 = v280 + 64;
                    v318 = v280;
                    while (v388)
                    {
                      v285 = __clz(__rbit64(v388));
                      v388 &= v388 - 1;
LABEL_334:
                      v288 = v285 | (v283 << 6);
                      v289 = (*(v356 + 48) + 16 * v288);
                      v290 = v289[1];
                      v338 = *v289;
                      v291 = *(v356 + 56) + 24 * v288;
                      v292 = *v291;
                      v293 = *(v291 + 8);
                      v294 = *(v291 + 16);

                      sub_22396298C(v292, v293, v294);
                      SimpleType.unwrap()(&v441);
                      sub_223963BB4(v292, v293, v294);
                      v280 = v318;
                      *(v316 + ((v288 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v288;
                      v295 = (v318[6] + 16 * v288);
                      *v295 = v338;
                      v295[1] = v290;
                      sub_2239685CC(&v441, (v318[7] + 32 * v288));
                      v296 = v318[2];
                      v65 = __OFADD__(v296, 1);
                      v297 = v296 + 1;
                      if (v65)
                      {
                        goto LABEL_382;
                      }

                      v318[2] = v297;
                      v179 = v386;
                      v234 = v373;
                      v257 = v330;
                    }

                    v286 = v283;
                    v256 = v325;
                    while (1)
                    {
                      v283 = v286 + 1;
                      if (__OFADD__(v286, 1))
                      {
                        goto LABEL_375;
                      }

                      if (v283 >= v284)
                      {
                        break;
                      }

                      v287 = *(v312 + 8 * v283);
                      ++v286;
                      if (v287)
                      {
                        v285 = __clz(__rbit64(v287));
                        v388 = (v287 - 1) & v287;
                        goto LABEL_334;
                      }
                    }

                    sub_223963BB4(v356, v327, 6);
                    v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF18, &unk_2239B53C0);
                    sub_223963BB4(v356, v327, 6);
                    *&v441 = v280;
                    v229 = v320;
                    v224 = v322;
                  }

                  v265 = v314;
                }

                else
                {
                  if (v268 == 3)
                  {
                    v442 = MEMORY[0x277D839B0];
                    LOBYTE(v441) = v267 & 1;
                    goto LABEL_320;
                  }

                  v442 = MEMORY[0x277D837D0];
                  *&v441 = v267;
                  *(&v441 + 1) = v269;
                  v357 = v267;
                  v328 = v269;

                  sub_22396298C(v357, v328, 4);
                }
              }

              *(v325 + 64 + ((v407 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v407;
              v300 = (v256[6] + 16 * v407);
              *v300 = v403;
              v300[1] = v265;
              sub_2239685CC(&v441, (v256[7] + 32 * v407));
              v301 = v256[2];
              v65 = __OFADD__(v301, 1);
              v302 = v301 + 1;
              if (v65)
              {
                goto LABEL_381;
              }

              v256[2] = v302;
              v227 = v394;
              continue;
            }

            break;
          }

          v260 = v254;
          while (1)
          {
            v254 = v260 + 1;
            if (__OFADD__(v260, 1))
            {
              goto LABEL_371;
            }

            if (v254 >= v257)
            {
              break;
            }

            v261 = *(v315 + 8 * v254);
            ++v260;
            if (v261)
            {
              v258 = __clz(__rbit64(v261));
              v259 = (v261 - 1) & v261;
              goto LABEL_302;
            }
          }

          sub_223963BB4(v398, v352, 6);
          v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF18, &unk_2239B53C0);
          sub_223963BB4(v398, v352, 6);
          *&v441 = v256;
          v230 = v313;
LABEL_345:
          v237 = v334;
LABEL_346:
          *(v230 + ((v234 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v234;
          v303 = (v224[6] + 16 * v234);
          *v303 = v418;
          v303[1] = v237;
          sub_2239685CC(&v441, (v224[7] + 32 * v234));
          v304 = v224[2];
          v65 = __OFADD__(v304, 1);
          v305 = v304 + 1;
          if (v65)
          {
            goto LABEL_380;
          }

          v224[2] = v305;
          if (v227)
          {
            continue;
          }

          break;
        }

LABEL_264:
        v232 = v228;
        while (1)
        {
          v228 = v232 + 1;
          if (__OFADD__(v232, 1))
          {
            goto LABEL_369;
          }

          if (v228 >= v229)
          {
            break;
          }

          v233 = *(v332 + 8 * v228);
          ++v232;
          if (v233)
          {
            v231 = __clz(__rbit64(v233));
            v227 = (v233 - 1) & v233;
            goto LABEL_269;
          }
        }

        sub_223963BB4(v179, v346, 6);
        v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF18, &unk_2239B53C0);
        sub_223963BB4(v179, v346, 6);
        *&v441 = v224;
        v177 = v341;
        v3 = v342;
        v18 = v376;
LABEL_253:
        *(v361 + ((v384 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v384;
        v221 = (v366[6] + 16 * v384);
        *v221 = v380;
        v221[1] = v177;
        sub_2239685CC(&v441, (v366[7] + 32 * v384));
        v222 = v366[2];
        v65 = __OFADD__(v222, 1);
        v223 = v222 + 1;
        if (v65)
        {
          goto LABEL_378;
        }

        v366[2] = v223;
        v168 = v359;
        v167 = v375;
        v169 = v391;
        if (v391)
        {
          goto LABEL_190;
        }

        goto LABEL_191;
      }
    }

    sub_223963BB4(v18, v343, 6);
    v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF18, &unk_2239B53C0);
    sub_223963BB4(v18, v343, 6);
    *&v441 = v366;
    goto LABEL_355;
  }

  v374 = *(v18 + 16);
  if (!v374)
  {

    v307 = v20;
    sub_22396298C(v18, v20, 5);
    v308 = MEMORY[0x277D84F90];
LABEL_354:
    v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03A8, &qword_2239B7448);
    sub_223963BB4(v18, v307, 5);
    *&v441 = v308;
LABEL_355:
    v16 = v336;
    goto LABEL_356;
  }

  sub_22396298C(v18, v20, 5);

  sub_22396298C(v18, v20, 5);
  v424 = MEMORY[0x277D84F90];
  sub_2239829F0(0, v374, 0);
  v22 = 0;
  v387 = v424;
  v23 = v18 + 32;
  v335 = v18 + 32;
  while (1)
  {
    if (v22 >= *(v18 + 16))
    {
      goto LABEL_370;
    }

    v24 = v23 + 24 * v22;
    v25 = *v24;
    v26 = *(v24 + 16);
    if (v26 <= 2)
    {
      if (*(v24 + 16))
      {
        v28 = v387;
        if (v26 == 1)
        {
          v29 = MEMORY[0x277D84D38];
        }

        else
        {
          if (v26 != 2)
          {
            goto LABEL_383;
          }

          v29 = MEMORY[0x277D839F8];
        }

        v442 = v29;
        *&v441 = v25;
        goto LABEL_174;
      }

      v442 = MEMORY[0x277D84A28];
      *&v441 = v25;
      goto LABEL_80;
    }

    v27 = *(v24 + 8);
    if (*(v24 + 16) <= 4u)
    {
      v28 = v387;
      if (v26 == 3)
      {
        v442 = MEMORY[0x277D839B0];
        LOBYTE(v441) = v25 & 1;
        goto LABEL_174;
      }

      if (v26 != 4)
      {
        goto LABEL_383;
      }

      v442 = MEMORY[0x277D837D0];
      *&v441 = v25;
      *(&v441 + 1) = v27;
      v69 = v22;
      sub_22396298C(v25, v27, 4);
      v22 = v69;
LABEL_80:
      v28 = v387;
      goto LABEL_174;
    }

    v389 = *v24;
    v360 = v22;
    v365 = *(v24 + 8);
    if (v26 != 5)
    {
      break;
    }

    v30 = *(v25 + 16);
    if (v30)
    {
      sub_22396298C(v25, v27, 5);
      v420 = MEMORY[0x277D84F90];

      sub_2239829F0(0, v30, 0);
      v31 = 0;
      v32 = v420;
      v399 = v25 + 32;
      v33 = v30;
      v371 = v30;
      while (v31 < *(v25 + 16))
      {
        v34 = v399 + 24 * v31;
        v35 = *v34;
        v36 = *(v34 + 16);
        if (v36 <= 2)
        {
          if (*(v34 + 16))
          {
            if (v36 == 1)
            {
              v38 = MEMORY[0x277D84D38];
            }

            else
            {
              if (v36 != 2)
              {
                goto LABEL_383;
              }

              v38 = MEMORY[0x277D839F8];
            }
          }

          else
          {
            v38 = MEMORY[0x277D84A28];
          }

          v442 = v38;
          *&v441 = v35;
        }

        else
        {
          v37 = *(v34 + 8);
          if (*(v34 + 16) > 4u)
          {
            v395 = v31;
            v404 = *v34;
            if (v36 != 5)
            {
              if (v36 != 6)
              {
                goto LABEL_383;
              }

              v45 = sub_2239B3778();
              v46 = v35 + 64;
              v47 = v37;
              v48 = 1 << *(v35 + 32);
              if (v48 < 64)
              {
                v49 = ~(-1 << v48);
              }

              else
              {
                v49 = -1;
              }

              v412 = v49 & *(v35 + 64);
              sub_22396298C(v35, v47, 6);
              v378 = v47;
              sub_22396298C(v35, v47, 6);
              v50 = 0;
              v51 = (v48 + 63) >> 6;
              v381 = v32;
              v52 = v412;
              if (!v412)
              {
LABEL_59:
                v54 = v50;
                v33 = v371;
                while (1)
                {
                  v50 = v54 + 1;
                  if (__OFADD__(v54, 1))
                  {
                    break;
                  }

                  if (v50 >= v51)
                  {
                    sub_223963BB4(v404, v378, 6);
                    v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF18, &unk_2239B53C0);
                    sub_223963BB4(v404, v378, 6);
                    *&v441 = v45;
                    v18 = v376;
                    goto LABEL_70;
                  }

                  v55 = *(v46 + 8 * v50);
                  ++v54;
                  if (v55)
                  {
                    v53 = __clz(__rbit64(v55));
                    v413 = (v55 - 1) & v55;
                    goto LABEL_64;
                  }
                }

                __break(1u);
                goto LABEL_361;
              }

              while (1)
              {
                v53 = __clz(__rbit64(v52));
                v413 = (v52 - 1) & v52;
LABEL_64:
                v56 = v53 | (v50 << 6);
                v57 = (*(v404 + 48) + 16 * v56);
                v58 = v57[1];
                v408 = *v57;
                v59 = *(v404 + 56) + 24 * v56;
                v60 = *v59;
                v61 = *(v59 + 8);
                v62 = *(v59 + 16);

                sub_22396298C(v60, v61, v62);
                SimpleType.unwrap()(&v441);
                sub_223963BB4(v60, v61, v62);
                *(v45 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v56;
                v63 = (v45[6] + 16 * v56);
                *v63 = v408;
                v63[1] = v58;
                sub_2239685CC(&v441, (v45[7] + 32 * v56));
                v64 = v45[2];
                v65 = __OFADD__(v64, 1);
                v66 = v64 + 1;
                if (v65)
                {
                  goto LABEL_368;
                }

                v45[2] = v66;
                v25 = v389;
                v32 = v381;
                v31 = v395;
                v52 = v413;
                if (!v413)
                {
                  goto LABEL_59;
                }
              }
            }

            v39 = *(v35 + 16);
            if (v39)
            {
              v377 = *(v34 + 8);
              sub_22396298C(v35, v37, 5);
              v419 = MEMORY[0x277D84F90];

              sub_2239829F0(0, v39, 0);
              v40 = v419;
              v41 = (v35 + 48);
              do
              {
                v429 = *(v41 - 2);
                v435 = *(v41 - 1);
                v42 = *v41;
                sub_22396298C(v429, v435, *v41);
                SimpleType.unwrap()(&v441);
                sub_223963BB4(v429, v435, v42);
                v44 = *(v419 + 16);
                v43 = *(v419 + 24);
                if (v44 >= v43 >> 1)
                {
                  sub_2239829F0((v43 > 1), v44 + 1, 1);
                }

                v41 += 24;
                *(v419 + 16) = v44 + 1;
                sub_2239685CC(&v441, (v419 + 32 * v44 + 32));
                --v39;
              }

              while (v39);
              v35 = v404;
              v37 = v377;
              sub_223963BB4(v404, v377, 5);
              v25 = v389;
              v33 = v371;
              v31 = v395;
            }

            else
            {
              sub_22396298C(v35, v37, 5);
              v40 = MEMORY[0x277D84F90];
            }

            v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03A8, &qword_2239B7448);
            sub_223963BB4(v35, v37, 5);
            *&v441 = v40;
          }

          else if (v36 == 3)
          {
            v442 = MEMORY[0x277D839B0];
            LOBYTE(v441) = v35 & 1;
          }

          else
          {
            if (v36 != 4)
            {
              goto LABEL_383;
            }

            v442 = MEMORY[0x277D837D0];
            *&v441 = v35;
            *(&v441 + 1) = v37;
            sub_22396298C(v35, v37, 4);
          }
        }

LABEL_70:
        v68 = *(v32 + 16);
        v67 = *(v32 + 24);
        if (v68 >= v67 >> 1)
        {
          sub_2239829F0((v67 > 1), v68 + 1, 1);
          v33 = v371;
        }

        ++v31;
        *(v32 + 16) = v68 + 1;
        sub_2239685CC(&v441, (v32 + 32 * v68 + 32));
        if (v31 == v33)
        {
          v159 = v365;
          sub_223963BB4(v25, v365, 5);
          v23 = v335;
          goto LABEL_173;
        }
      }

LABEL_365:
      __break(1u);
LABEL_366:
      __break(1u);
      goto LABEL_367;
    }

    v159 = *(v24 + 8);
    sub_22396298C(v25, v27, 5);
    v32 = MEMORY[0x277D84F90];
LABEL_173:
    v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03A8, &qword_2239B7448);
    sub_223963BB4(v25, v159, 5);
    *&v441 = v32;
    v28 = v387;
    v22 = v360;
LABEL_174:
    v425 = v28;
    v161 = *(v28 + 16);
    v160 = *(v28 + 24);
    if (v161 >= v160 >> 1)
    {
      v163 = v22;
      sub_2239829F0((v160 > 1), v161 + 1, 1);
      v23 = v335;
      v22 = v163;
      v28 = v425;
    }

    *(v28 + 16) = v161 + 1;
    v387 = v28;
    v162 = v22 + 1;
    sub_2239685CC(&v441, (v28 + 32 * v161 + 32));
    v22 = v162;
    if (v162 == v374)
    {
      v307 = v343;
      sub_223963BB4(v18, v343, 5);
      v3 = v342;
      v308 = v387;
      goto LABEL_354;
    }
  }

  if (v26 != 6)
  {
    goto LABEL_383;
  }

  v70 = sub_2239B3778();
  v71 = v25 + 64;
  v72 = 1 << *(v25 + 32);
  if (v72 < 64)
  {
    v73 = ~(-1 << v72);
  }

  else
  {
    v73 = -1;
  }

  v414 = v73 & *(v25 + 64);
  sub_22396298C(v25, v27, 6);
  sub_22396298C(v25, v27, 6);
  v74 = 0;
  v75 = (v72 + 63) >> 6;
  v76 = v70 + 8;
  v379 = v70 + 8;
  v339 = v25 + 64;
  v340 = v70;
  v337 = v75;
  v77 = v414;
  if (!v414)
  {
LABEL_87:
    v80 = v74;
    while (1)
    {
      v74 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        break;
      }

      if (v74 >= v75)
      {
        sub_223963BB4(v25, v365, 6);
        v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF18, &unk_2239B53C0);
        sub_223963BB4(v25, v365, 6);
        *&v441 = v70;
        v28 = v387;
        v22 = v360;
        v18 = v376;
        v23 = v335;
        goto LABEL_174;
      }

      v81 = *(v71 + 8 * v74);
      ++v80;
      if (v81)
      {
        v78 = __clz(__rbit64(v81));
        v79 = (v81 - 1) & v81;
        goto LABEL_92;
      }
    }

LABEL_361:
    __break(1u);
LABEL_362:
    __break(1u);
LABEL_363:
    __break(1u);
LABEL_364:
    __break(1u);
    goto LABEL_365;
  }

  while (1)
  {
    v78 = __clz(__rbit64(v77));
    v79 = (v77 - 1) & v77;
LABEL_92:
    v82 = v78 | (v74 << 6);
    v83 = (*(v25 + 48) + 16 * v82);
    v84 = v83[1];
    v405 = *v83;
    v409 = v82;
    v85 = *(v25 + 56) + 24 * v82;
    v86 = *v85;
    v87 = *(v85 + 16);
    v415 = v79;
    if (v87 > 2)
    {
      break;
    }

    if (*(v85 + 16))
    {
      if (v87 == 1)
      {
        v89 = MEMORY[0x277D84D38];
      }

      else
      {
        if (v87 != 2)
        {
          goto LABEL_383;
        }

        v89 = MEMORY[0x277D839F8];
      }
    }

    else
    {
      v89 = MEMORY[0x277D84A28];
    }

    v442 = v89;
    *&v441 = v86;
LABEL_110:
    v93 = v84;

LABEL_111:
    *(v76 + ((v409 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v409;
    v99 = (v70[6] + 16 * v409);
    *v99 = v405;
    v99[1] = v93;
    sub_2239685CC(&v441, (v70[7] + 32 * v409));
    v100 = v70[2];
    v65 = __OFADD__(v100, 1);
    v101 = v100 + 1;
    if (v65)
    {
      goto LABEL_373;
    }

    v70[2] = v101;
    v77 = v415;
    if (!v415)
    {
      goto LABEL_87;
    }
  }

  v88 = *(v85 + 8);
  if (*(v85 + 16) <= 4u)
  {
    if (v87 != 3)
    {
      if (v87 != 4)
      {
        goto LABEL_383;
      }

      v442 = MEMORY[0x277D837D0];
      *&v441 = v86;
      *(&v441 + 1) = v88;
      v102 = v86;
      v93 = v84;

      sub_22396298C(v102, v88, 4);
      goto LABEL_111;
    }

    v442 = MEMORY[0x277D839B0];
    LOBYTE(v441) = v86 & 1;
    goto LABEL_110;
  }

  v348 = *(v85 + 8);
  if (v87 == 5)
  {
    v90 = *(v86 + 16);
    if (v90)
    {
      v91 = v84;
      sub_22396298C(v86, v88, 5);
      v92 = v86;
      v93 = v91;

      sub_22396298C(v92, v88, 5);
      v421 = MEMORY[0x277D84F90];
      sub_2239829F0(0, v90, 0);
      v94 = v421;
      v323 = v92;
      v95 = (v92 + 48);
      do
      {
        v430 = *(v95 - 2);
        v436 = *(v95 - 1);
        v96 = *v95;
        sub_22396298C(v430, v436, *v95);
        SimpleType.unwrap()(&v441);
        sub_223963BB4(v430, v436, v96);
        v98 = *(v421 + 16);
        v97 = *(v421 + 24);
        if (v98 >= v97 >> 1)
        {
          sub_2239829F0((v97 > 1), v98 + 1, 1);
        }

        v95 += 24;
        *(v421 + 16) = v98 + 1;
        sub_2239685CC(&v441, (v421 + 32 * v98 + 32));
        --v90;
      }

      while (v90);
      v158 = v323;
      v88 = v348;
      sub_223963BB4(v323, v348, 5);
      v25 = v389;
      v71 = v339;
      v70 = v340;
      v75 = v337;
    }

    else
    {
      v158 = *v85;
      v93 = v84;

      sub_22396298C(v158, v88, 5);
      v94 = MEMORY[0x277D84F90];
    }

    v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03A8, &qword_2239B7448);
    sub_223963BB4(v158, v88, 5);
    *&v441 = v94;
    v76 = v379;
    goto LABEL_111;
  }

  if (v87 != 6)
  {
    goto LABEL_383;
  }

  v103 = v84;
  v104 = sub_2239B3778();
  v329 = v86 + 64;
  v105 = 1 << *(v86 + 32);
  if (v105 < 64)
  {
    v106 = ~(-1 << v105);
  }

  else
  {
    v106 = -1;
  }

  v400 = v106 & *(v86 + 64);
  sub_22396298C(v86, v348, 6);
  v319 = v103;

  sub_22396298C(v86, v348, 6);
  v107 = 0;
  v108 = v105 + 63;
  v76 = v379;
  v109 = v108 >> 6;
  v372 = v104 + 64;
  v358 = v108 >> 6;
  v385 = v104;
  v110 = v400;
  if (!v400)
  {
LABEL_122:
    v113 = v107;
    while (1)
    {
      v107 = v113 + 1;
      if (__OFADD__(v113, 1))
      {
        goto LABEL_364;
      }

      if (v107 >= v109)
      {
        sub_223963BB4(v86, v348, 6);
        v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF18, &unk_2239B53C0);
        sub_223963BB4(v86, v348, 6);
        *&v441 = v385;
        v75 = v337;
        v93 = v319;
        goto LABEL_111;
      }

      v114 = *(v329 + 8 * v107);
      ++v113;
      if (v114)
      {
        v111 = __clz(__rbit64(v114));
        v112 = (v114 - 1) & v114;
        goto LABEL_127;
      }
    }
  }

  while (2)
  {
    v111 = __clz(__rbit64(v110));
    v112 = (v110 - 1) & v110;
LABEL_127:
    v115 = v111 | (v107 << 6);
    v116 = (*(v86 + 48) + 16 * v115);
    v117 = *v116;
    v118 = v116[1];
    v119 = *(v86 + 56) + 24 * v115;
    v120 = *v119;
    v121 = *(v119 + 16);
    v396 = v117;
    v401 = v112;
    if (v121 <= 2)
    {
      if (*(v119 + 16))
      {
        if (v121 == 1)
        {
          v123 = MEMORY[0x277D84D38];
        }

        else
        {
          if (v121 != 2)
          {
            goto LABEL_383;
          }

          v123 = MEMORY[0x277D839F8];
        }
      }

      else
      {
        v123 = MEMORY[0x277D84A28];
      }

      v442 = v123;
      *&v441 = v120;
LABEL_145:

      goto LABEL_165;
    }

    v122 = *(v119 + 8);
    if (v121 <= 4)
    {
      if (v121 == 3)
      {
        v442 = MEMORY[0x277D839B0];
        LOBYTE(v441) = v120 & 1;
        goto LABEL_145;
      }

      v442 = MEMORY[0x277D837D0];
      *&v441 = v120;
      *(&v441 + 1) = v122;
      v383 = v120;
      v345 = v122;

      sub_22396298C(v383, v345, 4);
LABEL_165:
      *(v372 + ((v115 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v115;
      v155 = (v385[6] + 16 * v115);
      *v155 = v396;
      v155[1] = v118;
      sub_2239685CC(&v441, (v385[7] + 32 * v115));
      v156 = v385[2];
      v65 = __OFADD__(v156, 1);
      v157 = v156 + 1;
      if (v65)
      {
        goto LABEL_377;
      }

      v385[2] = v157;
      v109 = v358;
      v110 = v401;
      if (!v401)
      {
        goto LABEL_122;
      }

      continue;
    }

    break;
  }

  v382 = v120;
  v321 = v118;
  v344 = v122;
  if (v121 == 5)
  {
    v124 = *(v120 + 16);
    if (v124)
    {
      v125 = v120;
      sub_22396298C(v120, v122, 5);

      sub_22396298C(v125, v344, 5);
      v422 = MEMORY[0x277D84F90];
      sub_2239829F0(0, v124, 0);
      v126 = v422;
      v127 = (v125 + 48);
      do
      {
        v431 = *(v127 - 2);
        v437 = *(v127 - 1);
        v128 = *v127;
        sub_22396298C(v431, v437, *v127);
        SimpleType.unwrap()(&v441);
        sub_223963BB4(v431, v437, v128);
        v130 = *(v422 + 16);
        v129 = *(v422 + 24);
        if (v130 >= v129 >> 1)
        {
          sub_2239829F0((v129 > 1), v130 + 1, 1);
        }

        v127 += 24;
        *(v422 + 16) = v130 + 1;
        sub_2239685CC(&v441, (v422 + 32 * v130 + 32));
        --v124;
      }

      while (v124);
      v153 = v382;
      v154 = v344;
      sub_223963BB4(v382, v344, 5);
    }

    else
    {
      v153 = v120;

      v154 = v344;
      sub_22396298C(v153, v344, 5);
      v126 = MEMORY[0x277D84F90];
    }

    v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03A8, &qword_2239B7448);
    sub_223963BB4(v153, v154, 5);
    *&v441 = v126;
    v25 = v389;
    v71 = v339;
    v70 = v340;
    v76 = v379;
LABEL_164:
    v118 = v321;
    goto LABEL_165;
  }

  if (v121 == 6)
  {
    v324 = v86;
    v326 = v115;
    v131 = v120;
    v132 = v122;
    v133 = sub_2239B3778();
    v317 = v131 + 64;
    v134 = 1 << *(v131 + 32);
    if (v134 < 64)
    {
      v135 = ~(-1 << v134);
    }

    else
    {
      v135 = -1;
    }

    v392 = v135 & *(v131 + 64);
    sub_22396298C(v131, v132, 6);

    v136 = v132;
    v137 = v133;
    sub_22396298C(v131, v136, 6);
    v138 = 0;
    v139 = (v134 + 63) >> 6;
    v331 = v133 + 64;
    v333 = v133;
    while (v392)
    {
      v140 = __clz(__rbit64(v392));
      v392 &= v392 - 1;
LABEL_159:
      v143 = v140 | (v138 << 6);
      v144 = (*(v382 + 48) + 16 * v143);
      v145 = v144[1];
      v353 = *v144;
      v146 = *(v382 + 56) + 24 * v143;
      v147 = *v146;
      v148 = *(v146 + 8);
      v149 = *(v146 + 16);

      sub_22396298C(v147, v148, v149);
      SimpleType.unwrap()(&v441);
      sub_223963BB4(v147, v148, v149);
      v137 = v333;
      *(v331 + ((v143 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v143;
      v150 = (v333[6] + 16 * v143);
      *v150 = v353;
      v150[1] = v145;
      sub_2239685CC(&v441, (v333[7] + 32 * v143));
      v151 = v333[2];
      v65 = __OFADD__(v151, 1);
      v152 = v151 + 1;
      if (v65)
      {
        goto LABEL_379;
      }

      v333[2] = v152;
    }

    v141 = v138;
    v76 = v379;
    v115 = v326;
    while (1)
    {
      v138 = v141 + 1;
      if (__OFADD__(v141, 1))
      {
        break;
      }

      if (v138 >= v139)
      {
        sub_223963BB4(v382, v344, 6);
        v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF18, &unk_2239B53C0);
        sub_223963BB4(v382, v344, 6);
        *&v441 = v137;
        v25 = v389;
        v71 = v339;
        v70 = v340;
        v86 = v324;
        goto LABEL_164;
      }

      v142 = *(v317 + 8 * v138);
      ++v141;
      if (v142)
      {
        v140 = __clz(__rbit64(v142));
        v392 = (v142 - 1) & v142;
        goto LABEL_159;
      }
    }

LABEL_367:
    __break(1u);
LABEL_368:
    __break(1u);
LABEL_369:
    __break(1u);
LABEL_370:
    __break(1u);
LABEL_371:
    __break(1u);
LABEL_372:
    __break(1u);
LABEL_373:
    __break(1u);
LABEL_374:
    __break(1u);
LABEL_375:
    __break(1u);
LABEL_376:
    __break(1u);
LABEL_377:
    __break(1u);
LABEL_378:
    __break(1u);
LABEL_379:
    __break(1u);
LABEL_380:
    __break(1u);
LABEL_381:
    __break(1u);
LABEL_382:
    __break(1u);
  }

LABEL_383:
  result = sub_2239B3768();
  __break(1u);
  return result;
}

_OWORD *sub_2239685CC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t Message.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 41);
  v3 = *(v1 + 42);
  v5 = *(v1 + 48);
  v4 = *(v1 + 56);
  v6 = *(v1 + 64);
  *a1 = *(v1 + 40);
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
}

id static Predicate.evaluate(_:with:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  v4 = sub_2239B30C8();
  v5 = [v3 evaluatePredicate:a1 with:v4];

  return v5;
}

BOOL Message.shouldRetain.getter()
{
  v1 = *(v0 + 8);
  if (*(v1 + 16) && (v2 = sub_22396236C(0xD00000000000001BLL, 0x80000002239BA8C0), (v3 & 1) != 0))
  {
    v4 = *(v1 + 56) + 24 * v2;
    v7 = *v4;
    v8 = *(v4 + 8);
    v9 = *(v4 + 16);
    sub_22396298C(*v4, v8, v9);
    v5 = SimpleType.isTrue()();
    sub_223963BB4(v7, v8, v9);
  }

  else
  {
    return 0;
  }

  return v5;
}

uint64_t sub_22396879C(uint64_t result)
{
  v1 = *result;
  if (*(*result + 16))
  {
    v2 = result;
    result = sub_22396236C(0x6F6973736553584DLL, 0xEF656D756C6F566ELL);
    if (v3)
    {
      v4 = *(v1 + 56) + 24 * result;
      v9 = *v4;
      v11 = *(v4 + 8);
      v12 = *(v4 + 16);
      sub_22396298C(*v4, v11, v12);
      v13 = SimpleType.unwrapToDouble()();
      v5 = *&v13.is_nil;
      v7 = v6;
      result = sub_223963BB4(v9, v11, v12);
      if ((v7 & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v10 = *v2;
        result = sub_2239639F0(COERCE__INT64(round(v5 * 10000.0) / 10000.0), 0, 2, 0x6F6973736553584DLL, 0xEF656D756C6F566ELL, isUniquelyReferenced_nonNull_native);
        *v2 = v10;
      }
    }
  }

  return result;
}

Swift::Double_optional __swiftcall SimpleType.unwrapToDouble()()
{
  v1 = *v0;
  v2 = *(v0 + 1) | ((*(v0 + 5) | (v0[7] << 16)) << 32);
  v3 = *v0;
  v4 = *(v0 + 1);
  LODWORD(v5) = v0[16];
  if (LODWORD(v5) <= 1)
  {
    if (v0[16])
    {
      if (LODWORD(v5) != 1)
      {
        goto LABEL_13;
      }

      v5 = (v1 | (v2 << 8));
      v8 = 1;
    }

    else
    {
      v5 = (v1 | (v2 << 8));
      v8 = 0;
    }

LABEL_12:
    sub_22396298C(v3, v4, v8);
    goto LABEL_14;
  }

  if (LODWORD(v5) == 2)
  {
    LOBYTE(v5) = *v0;
    v8 = 2;
    goto LABEL_12;
  }

  if (LODWORD(v5) == 3)
  {
    sub_22396298C(v3, v4, 3);
    LOBYTE(v5) = 0;
    goto LABEL_14;
  }

  if (LODWORD(v5) != 4)
  {
LABEL_13:
    v9 = v1 | (v2 << 8);
    v10 = v4;
    sub_22396298C(v3, v4, SLOBYTE(v5));
    sub_223963BB4(v9, v10, SLOBYTE(v5));
    LOBYTE(v5) = 0;
    goto LABEL_14;
  }

  *&v5 = v1 | (v2 << 8);
  v6 = *(v0 + 1);
  sub_22396298C(v3, v4, 4);
  LOBYTE(v5) = sub_22396E920(*&v5, v6);
LABEL_14:
  v11 = LOBYTE(v5);
  result.value = v7;
  result.is_nil = v11;
  return result;
}

uint64_t sub_223968A00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Void __swiftcall Message.addToContent(from:)(Swift::OpaquePointer from)
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 8);
  sub_2239629B8(from._rawValue, sub_223962CA0, 0, isUniquelyReferenced_nonNull_native, &v4);

  *(v1 + 8) = v4;
}

__n128 __swift_memcpy162_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 80);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t static Utilities.applicationName(from:)(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E55;
  if (*(a1 + 16))
  {
    v3 = sub_22396236C(0xD000000000000018, 0x80000002239B9090);
    if (v4)
    {
      v5 = *(a1 + 56) + 24 * v3;
      if (*(v5 + 16) == 4)
      {
        v1 = *v5;
      }
    }
  }

  return v1;
}

uint64_t sub_223968C1C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_223968C64()
{
  result = qword_281335D78;
  if (!qword_281335D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281335D78);
  }

  return result;
}

uint64_t sub_223968CF0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_223968DBC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2239B3958() & 1;
  }
}

uint64_t sub_223968E14()
{
  if (qword_281335F10 != -1)
  {
    swift_once();
  }

  v0 = *(off_281335F18 + 2);

  os_unfair_lock_lock((v0 + 24));
  sub_223960244((v0 + 16), &v5);
  os_unfair_lock_unlock((v0 + 24));
  v1 = v5;

  if (v1)
  {
    sub_22396D3CC();
  }

  if (qword_281335EE8 != -1)
  {
    swift_once();
  }

  v2 = off_281335EF0;

  os_unfair_lock_lock(v2 + 8);
  v3 = *&v2[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v2 + 8);

  return v3;
}

uint64_t *sub_223968F38(uint64_t *result, int a2, __int16 a3)
{
  if (a2 == 7 && a3 == 6)
  {
    v3 = result;
    if (qword_281336308 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = sub_223960C28(qword_281336310, *algn_281336318, qword_281336320, unk_281336328, 0x656C69626F6DLL, 0xE600000000000000);
    if (v4 == 2)
    {
      v5 = HIBYTE(word_281336330);
    }

    else
    {
      v5 = v4 & 1;
    }

    if (v4 == 2)
    {
      v6 = HIBYTE(word_281336330);
    }

    else
    {
      v6 = v4;
    }

    LOBYTE(word_281336330) = v5;
    swift_endAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    result = sub_2239639F0(v6 & 1, 0, 3, 0xD000000000000013, 0x80000002239BA940, isUniquelyReferenced_nonNull_native);
    *v3 = v8;
  }

  return result;
}

uint64_t Message.init(category:type:content:metadata:)@<X0>(int a1@<W0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a4;
  v9 = a4[1];
  v11 = a4[2];
  v32 = *(a4 + 24);
  v12 = sub_223968E14();
  v33 = v13;
  v38 = a3;
  sub_223965588(&v38);
  sub_223965338(&v38);
  swift_beginAccess();
  v14 = *aUnknown_0;
  v15 = qword_2813367E8;

  v16 = v38;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2239639F0(v14, v15, 4, 0x65566769666E6F63, 0xED00006E6F697372, isUniquelyReferenced_nonNull_native);
  v38 = v16;
  v35 = a1;
  v36 = a2;
  sub_223968F38(&v38, a1, a2);
  sub_223969288(&v38);
  sub_22396879C(&v38);
  v18 = v38;

  v20 = sub_2239651A4(v19);
  v34 = v21;
  LOBYTE(v15) = v22;

  v37 = v15 & 1;
  if (v11)
  {

    v12 = v9;
    v24 = v10 & 1;
    v25 = (v10 >> 8) & 1;
    v26 = WORD1(v10) & 1;
    v27 = v32 & 1;
    if (!*(v18 + 16))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v24 = 0;
    LOBYTE(v25) = 0;
    LOBYTE(v26) = 0;
    v27 = 0;
    v11 = v33;
    if (!*(v18 + 16))
    {
LABEL_8:
      v30 = 0;
      v31 = 0;
      goto LABEL_9;
    }
  }

  result = sub_22396236C(0xD000000000000018, 0x80000002239B9090);
  if ((v28 & 1) == 0)
  {
    goto LABEL_8;
  }

  v29 = *(v18 + 56) + 24 * result;
  if (*(v29 + 16) != 4)
  {
    goto LABEL_8;
  }

  v30 = *v29;
  v31 = *(v29 + 8);
  result = sub_22396298C(*v29, v31, 4);
LABEL_9:
  *a5 = v35;
  *(a5 + 4) = v36;
  *(a5 + 8) = v18;
  *(a5 + 16) = v20;
  *(a5 + 24) = v34;
  *(a5 + 32) = v37;
  *(a5 + 40) = v24;
  *(a5 + 41) = v25;
  *(a5 + 42) = v26;
  *(a5 + 48) = v12;
  *(a5 + 56) = v11;
  *(a5 + 64) = v27;
  *(a5 + 72) = v30;
  *(a5 + 80) = v31;
  return result;
}

unint64_t sub_223969288(unint64_t result)
{
  v1 = *result;
  if (*(*result + 16))
  {
    v2 = result;
    result = sub_22396236C(0xD00000000000001ALL, 0x80000002239B95A0);
    if (v3)
    {
      v4 = *(v1 + 56) + 24 * result;
      v5 = *v4;
      v6 = *(v4 + 8);
      v7 = *(v4 + 16);
      v8 = *(v1 + 16);
      sub_22396298C(*v4, v6, *(v4 + 16));
      if (v8 && (sub_22396236C(0xD000000000000018, 0x80000002239B9090), (v9 & 1) != 0))
      {
        sub_223963BB4(v5, v6, v7);
      }

      else
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v11[0] = *v2;
        sub_2239639F0(v5, v6, v7, 0xD000000000000018, 0x80000002239B9090, isUniquelyReferenced_nonNull_native);
        *v2 = v11[0];
      }

      sub_22398D454(0xD00000000000001ALL, 0x80000002239B95A0, v11);
      return sub_22397617C(v11[0], v11[1], v12);
    }
  }

  return result;
}

uint64_t static ConfigCommon.matches(sessionAppName:config:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v6 = a3 + 32;
    while (1)
    {
      sub_223964C8C(v6, v17);
      v7 = v18;
      v8 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      (*(v8 + 8))(&v14, v7, v8);
      v9 = v15;

      if (!v9)
      {
        break;
      }

      if (a2)
      {
        *&v14 = a1;
        *(&v14 + 1) = a2;
        MEMORY[0x28223BE20](v10);
        v13[2] = &v14;
        v11 = sub_223968CB8(sub_223968D9C, v13, v9);

        if (v11)
        {
          break;
        }
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      v6 += 40;
      if (!--v3)
      {
        goto LABEL_9;
      }
    }

    sub_2239695C0(v17, &v14);
    sub_223964F8C(&v14);
    return 1;
  }

  else
  {
LABEL_9:
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    sub_223964F8C(&v14);
    return 0;
  }
}

uint64_t sub_2239695C0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t DiagnosticConfig.instanceDescription.getter()
{
  v1 = v0[13];
  v11[12] = v0[12];
  v11[13] = v1;
  v11[14] = v0[14];
  v2 = v0[9];
  v11[8] = v0[8];
  v11[9] = v2;
  v3 = v0[11];
  v11[10] = v0[10];
  v11[11] = v3;
  v4 = v0[5];
  v11[4] = v0[4];
  v11[5] = v4;
  v5 = v0[7];
  v11[6] = v0[6];
  v11[7] = v5;
  v6 = v0[1];
  v11[0] = *v0;
  v11[1] = v6;
  v7 = v0[3];
  v11[2] = v0[2];
  v11[3] = v7;
  v8 = sub_2239696A8(v11);
  v9 = *(sub_2239646B8(v11) + 8 * (v8 != 1));

  return v9;
}

uint64_t DiagnosticConfig.commonConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[13];
  v27[12] = v1[12];
  v27[13] = v3;
  v27[14] = v1[14];
  v4 = v1[9];
  v27[8] = v1[8];
  v27[9] = v4;
  v5 = v1[11];
  v27[10] = v1[10];
  v27[11] = v5;
  v6 = v1[5];
  v27[4] = v1[4];
  v27[5] = v6;
  v7 = v1[7];
  v27[6] = v1[6];
  v27[7] = v7;
  v8 = v1[1];
  v27[0] = *v1;
  v27[1] = v8;
  v9 = v1[3];
  v27[2] = v1[2];
  v27[3] = v9;
  v10 = sub_2239696A8(v27);
  v11 = sub_2239646B8(v27);
  v12 = 176;
  v13 = 192;
  if (v10 == 1)
  {
    v12 = 192;
  }

  v14 = 178;
  if (v10 == 1)
  {
    v14 = 194;
  }

  v15 = 184;
  v16 = 200;
  if (v10 == 1)
  {
    v15 = 200;
  }

  v17 = 208;
  if (v10 == 1)
  {
    v13 = 208;
  }

  v18 = 216;
  if (v10 == 1)
  {
    v16 = 216;
    v17 = 224;
    v18 = 232;
  }

  v19 = *(v11 + v17);
  v20 = *(v11 + v16);
  v21 = *(v11 + v13);
  v22 = *(v11 + v15);
  v23 = *(v11 + v14);
  v24 = *(v11 + v12);
  v25 = *(v11 + v18);

  *a1 = v24;
  *(a1 + 2) = v23;
  *(a1 + 8) = v22;
  *(a1 + 16) = v21;
  *(a1 + 24) = v20;
  *(a1 + 32) = v19;
  *(a1 + 40) = v25;
  return result;
}

uint64_t DiagnosticConfig.diagnosticRulesConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[13];
  v29[12] = v1[12];
  v29[13] = v3;
  v29[14] = v1[14];
  v4 = v1[9];
  v29[8] = v1[8];
  v29[9] = v4;
  v5 = v1[11];
  v29[10] = v1[10];
  v29[11] = v5;
  v6 = v1[5];
  v29[4] = v1[4];
  v29[5] = v6;
  v7 = v1[7];
  v29[6] = v1[6];
  v29[7] = v7;
  v8 = v1[1];
  v29[0] = *v1;
  v29[1] = v8;
  v9 = v1[3];
  v29[2] = v1[2];
  v29[3] = v9;
  v10 = sub_2239696A8(v29);
  v11 = sub_2239646B8(v29);
  if (v10 == 1)
  {
    v12 = *(v11 + 184);
    v27 = *(v11 + 176);
    v13 = *(v11 + 160);
    v14 = *(v11 + 168);
    v15 = *(v11 + 144);
    v16 = *(v11 + 152);
    v18 = *(v11 + 128);
    v17 = *(v11 + 136);
    v19 = *(v11 + 120);
    v20 = *(v11 + 124);
    v21 = *(v11 + 112);
    v24 = *(v11 + 104);
    v22 = v11 + 104;
    v23 = v24;
  }

  else
  {
    v12 = *(v11 + 168);
    v27 = *(v11 + 160);
    v13 = *(v11 + 144);
    v14 = *(v11 + 152);
    v15 = *(v11 + 128);
    v16 = *(v11 + 136);
    v18 = *(v11 + 112);
    v17 = *(v11 + 120);
    v19 = *(v11 + 104);
    v20 = *(v11 + 108);
    v21 = *(v11 + 96);
    v25 = *(v11 + 88);
    v22 = v11 + 88;
    v23 = v25;
  }

  result = sub_223969B50(v22, v28);
  *a1 = v23;
  *(a1 + 8) = v21;
  *(a1 + 16) = v19;
  *(a1 + 20) = v20;
  *(a1 + 24) = v18;
  *(a1 + 32) = v17;
  *(a1 + 40) = v15;
  *(a1 + 48) = v16;
  *(a1 + 56) = v13;
  *(a1 + 64) = v14;
  *(a1 + 72) = v27;
  *(a1 + 80) = v12;
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

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t static ConfigCommon.matches(sessionProcessName:config:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v6 = a3 + 32;
    while (1)
    {
      sub_223964C8C(v6, &v16);
      v7 = v17;
      v8 = v18;
      __swift_project_boxed_opaque_existential_1(&v16, v17);
      (*(v8 + 8))(v14, v7, v8);
      v9 = *(&v14[0] + 1);

      if (!v9)
      {
        break;
      }

      if (a2)
      {
        *&v14[0] = a1;
        *(&v14[0] + 1) = a2;
        MEMORY[0x28223BE20](v10);
        v13[2] = v14;
        v11 = sub_223968CB8(sub_2239847DC, v13, v9);

        if (v11)
        {
          break;
        }
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v16);
      v6 += 40;
      if (!--v3)
      {
        goto LABEL_9;
      }
    }

    sub_2239695C0(&v16, v14);
    sub_223964F8C(v14);
    return 1;
  }

  else
  {
LABEL_9:
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_223964F8C(v14);
    return 0;
  }
}

uint64_t DiagnosticRulesConfig.requiredDefault.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

void *RouterConfig.predicate.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t static Constants.unknownReporterID.getter()
{
  if (qword_281336778 != -1)
  {
    swift_once();
  }

  return qword_281335EE0;
}

uint64_t sub_223969CF0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v2 = *(a2 + 8);
  v3 = sub_22396A284(*(a1 + 8));
  v4 = sub_22396A284(v2);
  v5 = sub_22396A45C(v3, v4);

  return v5 & 1;
}

unint64_t *sub_223969D88(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v29 = result;
  v30 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v34 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = (*(a3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v31 = v12;
    v16 = *(a3 + 56) + 24 * v12;
    v18 = *v16;
    v17 = *(v16 + 8);
    v19 = *(v16 + 16);

    v33 = v17;
    sub_22396298C(v18, v17, v19);
    if (qword_281335F40 != -1)
    {
      swift_once();
    }

    v20 = qword_2813382B0;
    if (*(qword_2813382B0 + 16) && (sub_2239B3A18(), sub_2239B3228(), v21 = sub_2239B3A78(), v22 = -1 << *(v20 + 32), v23 = v21 & ~v22, ((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0))
    {
      v24 = ~v22;
      while (1)
      {
        v25 = (*(v20 + 48) + 16 * v23);
        v26 = *v25 == v14 && v25[1] == v15;
        if (v26 || (sub_2239B3958() & 1) != 0)
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      sub_223963BB4(v18, v33, v19);

      v7 = v34;
    }

    else
    {
LABEL_24:
      sub_223963BB4(v18, v33, v19);

      *(v29 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      v27 = __OFADD__(v30++, 1);
      v7 = v34;
      if (v27)
      {
        goto LABEL_29;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return sub_22396A004(v29, a2, v30, a3);
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v34 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_22396A004(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD18, &qword_2239B5750);
  result = sub_2239B3798();
  v8 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  v11 = result + 64;
  v36 = v4;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v37 = (v9 - 1) & v9;
LABEL_16:
    v15 = v12 | (v10 << 6);
    v16 = (*(v4 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v4 + 56) + 24 * v15;
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    v23 = v8;
    sub_2239B3A18();

    sub_22396298C(v20, v21, v22);
    sub_2239B3228();
    result = sub_2239B3A78();
    v8 = v23;
    v24 = -1 << *(v23 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v11 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v11 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v11 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v11 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v23 + 48) + 16 * v27);
    *v32 = v17;
    v32[1] = v18;
    v33 = *(v23 + 56) + 24 * v27;
    *v33 = v20;
    *(v33 + 8) = v21;
    *(v33 + 16) = v22;
    ++*(v23 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v36;
    v9 = v37;
    if (!v5)
    {
      return v8;
    }
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      return v8;
    }

    v14 = a1[v10];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v37 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t *sub_22396A284(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_223969D88(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_223990814(v8, v4, v2);
  result = MEMORY[0x223DEF1D0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t Message.appName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t Message.appName.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_22396A45C(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v7 = 0;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  v10 = -1 << v8;
  if (v8 < 64)
  {
    v9 = ~v10;
  }

  v11 = v9 & *(a1 + 64);
  v12 = (v8 + 63) >> 6;
  while (2)
  {
    while (2)
    {
      while (2)
      {
        if (v11)
        {
          v13 = __clz(__rbit64(v11));
          v326 = (v11 - 1) & v11;
          goto LABEL_13;
        }

        v14 = v7;
        do
        {
          v7 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
LABEL_272:
            v75 = v11;
            v225 = v10;
            sub_22396298C(v11, v10, v4);
            v226 = v3;
            v227 = v324;
            v228 = 0;
            goto LABEL_281;
          }

          if (v7 >= v12)
          {
            return 1;
          }

          v15 = *(a1 + 64 + 8 * v7);
          ++v14;
        }

        while (!v15);
        v13 = __clz(__rbit64(v15));
        v326 = (v15 - 1) & v15;
LABEL_13:
        v16 = v13 | (v7 << 6);
        v17 = *(a1 + 48) + 16 * v16;
        v18 = *v17;
        v3 = *(v17 + 8);
        v19 = *(a1 + 56) + 24 * v16;
        v20 = *v19;
        v21 = *(v19 + 8);
        LODWORD(v4) = *(v19 + 16);

        sub_22396298C(v20, v21, v4);
        v22 = v3 == 0;
        if (*&v3 == 0.0)
        {
          return v22;
        }

        v327 = v20;
        v328 = v21;
        v23 = sub_22396236C(v18, v3);
        v25 = v24;

        if ((v25 & 1) == 0)
        {
          v2 = v327;
          v5 = v328;
          goto LABEL_323;
        }

        v26 = *(a2 + 56) + 24 * v23;
        v28 = *v26;
        v27 = *(v26 + 8);
        v29 = *(v26 + 16);
        if (v29 <= 2)
        {
          v2 = v327;
          v5 = v328;
          if (*(v26 + 16))
          {
            if (v29 != 1)
            {
              if (v4 != 2)
              {
                goto LABEL_322;
              }

              sub_223963BB4(*v26, v27, 2);
              sub_223963BB4(v327, v328, 2);
              v36 = *&v28 == *&v327;
LABEL_36:
              v11 = v326;
              if (!v36)
              {
                return v22;
              }

              continue;
            }

            sub_223963BB4(*v26, v27, 1);
            if (v4 != 1)
            {
              goto LABEL_323;
            }

            v30 = v327;
            v31 = v328;
            v32 = 1;
          }

          else
          {
            sub_223963BB4(*v26, v27, 0);
            if (v4)
            {
              goto LABEL_323;
            }

            v30 = v327;
            v31 = v328;
            v32 = 0;
          }

          sub_223963BB4(v30, v31, v32);
          v36 = v28 == v327;
          goto LABEL_36;
        }

        break;
      }

      v2 = v327;
      v5 = v328;
      if (*(v26 + 16) <= 4u)
      {
        if (v29 == 3)
        {
          sub_223963BB4(*v26, v27, 3);
          if (v4 != 3)
          {
            goto LABEL_323;
          }

          sub_223963BB4(v327, v328, 3);
          v11 = v326;
          if ((v28 ^ v327))
          {
            return v22;
          }

          continue;
        }

        if (v4 == 4)
        {
          if (v28 != v327 || v27 != v328)
          {
            v3 = *(v26 + 8);
            LOBYTE(v4) = sub_2239B3958();

            sub_223963BB4(v28, v3, 4);
            v38 = v327;
            v39 = v328;
            v40 = 4;
            goto LABEL_46;
          }

          v322 = *(v26 + 16);

          v34 = v327;
          v35 = v328;
          v41 = 4;
LABEL_52:
          sub_223963BB4(v34, v35, v41);
          sub_223963BB4(v327, v5, v322);
          v11 = v326;
          continue;
        }

LABEL_269:
        v221 = *(v26 + 8);
        v222 = *(v26 + 16);

        LOBYTE(v29) = v222;
        v27 = v221;
        goto LABEL_322;
      }

      break;
    }

    if (v29 != 5)
    {
      if (v4 == 6)
      {
        v3 = *(v26 + 8);
        sub_22396298C(*v26, v27, 6);
        sub_22396298C(v28, v3, 6);
        sub_22396298C(v327, v328, 6);
        LOBYTE(v4) = sub_22396A45C(v28, v327);
        sub_223963BB4(v327, v328, 6);
        sub_223963BB4(v28, v3, 6);
        sub_223963BB4(v28, v3, 6);
        v38 = v327;
        v39 = v328;
        v40 = 6;
LABEL_46:
        sub_223963BB4(v38, v39, v40);
        v11 = v326;
        if ((v4 & 1) == 0)
        {
          return v22;
        }

        continue;
      }

      goto LABEL_269;
    }

    break;
  }

  if (v4 != 5)
  {
    goto LABEL_269;
  }

  v3 = *(v28 + 16);
  if (v3 != *(v327 + 16))
  {
    v223 = *(v26 + 8);
    v224 = v29;

    LOBYTE(v29) = v224;
    v27 = v223;
    LOBYTE(v4) = 5;
    goto LABEL_322;
  }

  v322 = 5;
  if (*&v3 == 0.0)
  {
    v42 = *(v26 + 8);

    goto LABEL_50;
  }

  if (v28 == v327)
  {
    v33 = *(v26 + 8);

    v34 = v327;
    v35 = v33;
LABEL_51:
    v41 = 5;
    goto LABEL_52;
  }

  v321 = v28 + 32;
  v43 = *(v26 + 8);
  sub_22396298C(v28, v27, 5);
  v310 = v43;
  sub_22396298C(v28, v43, 5);
  sub_22396298C(v327, v328, 5);
  v47 = 0;
  v318 = v28;
  v320 = v3;
  while (2)
  {
    if (v47 >= *(v28 + 16))
    {
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      v256 = v45;
      goto LABEL_300;
    }

    if (v47 >= *(v327 + 16))
    {
      goto LABEL_296;
    }

    v48 = v321 + 24 * v47;
    v3 = *v48;
    v323 = v47;
    v324 = *(v48 + 8);
    v49 = *(v48 + 16);
    v50 = v327 + 32 + 24 * v47;
    v11 = *v50;
    v10 = *(v50 + 8);
    LODWORD(v4) = *(v50 + 16);
    if (v49 <= 2)
    {
      if (v49)
      {
        if (v49 != 1)
        {
          if (v4 != 2)
          {
            v229 = *v50;
            v230 = *(v50 + 8);
            sub_22396298C(*v50, v230, *(v50 + 16));
            v231 = v3;
            v232 = v324;
            v233 = 2;
            goto LABEL_278;
          }

          v65 = *&v3;
          v66 = *v50;
          v67 = v3;
          v4 = *v50;
          v68 = *(v50 + 8);
          sub_223963BB4(v67, v324, 2);
          sub_223963BB4(v4, v68, 2);
          if (v65 != v66)
          {
            goto LABEL_321;
          }

          goto LABEL_56;
        }

        if (v4 != 1)
        {
          v75 = *v50;
          v225 = *(v50 + 8);
          sub_22396298C(*v50, v225, *(v50 + 16));
          v226 = v3;
          v227 = v324;
          v228 = 1;
          goto LABEL_281;
        }

        v53 = v3;
        v54 = *v50;
        v43 = v3;
        v55 = *(v50 + 8);
        sub_223963BB4(v53, v324, 1);
        v56 = v54;
        v57 = v55;
        v58 = 1;
      }

      else
      {
        if (*(v50 + 16))
        {
          goto LABEL_272;
        }

        v63 = v3;
        v54 = *v50;
        v43 = v3;
        v64 = *(v50 + 8);
        sub_223963BB4(v63, v324, 0);
        v56 = v54;
        v57 = v64;
        v58 = 0;
      }

      sub_223963BB4(v56, v57, v58);
      v36 = v43 == v54;
      v28 = v318;
      if (!v36)
      {
        goto LABEL_321;
      }

      goto LABEL_56;
    }

    if (v49 <= 4)
    {
      if (v49 == 3)
      {
        if (v4 == 3)
        {
          v51 = v3;
          v4 = *v50;
          v43 = v3;
          v52 = *(v50 + 8);
          sub_223963BB4(v51, v324, 3);
          sub_223963BB4(v4, v52, 3);
          if ((v4 ^ v43))
          {
            goto LABEL_321;
          }

          goto LABEL_56;
        }

        v229 = *v50;
        v230 = *(v50 + 8);
        sub_22396298C(*v50, v230, *(v50 + 16));
        v231 = v3;
        v232 = v324;
        v233 = 3;
LABEL_278:
        sub_223963BB4(v231, v232, v233);
        v234 = v229;
        v28 = v318;
        v235 = v230;
        v236 = v4;
LABEL_279:
        sub_223963BB4(v234, v235, v236);
        goto LABEL_321;
      }

      if (v4 != 4)
      {
        v229 = *v50;
        v230 = *(v50 + 8);
        sub_22396298C(*v50, v230, *(v50 + 16));
        sub_22396298C(v3, v324, 4);
        v231 = v3;
        v232 = v324;
        v233 = 4;
        goto LABEL_278;
      }

      if (v3 == v11 && v324 == v10)
      {
        v43 = v324;
        sub_22396298C(v3, v324, 4);
        sub_22396298C(v3, v324, 4);
        sub_223963BB4(v3, v324, 4);
        sub_223963BB4(v3, v324, 4);
        goto LABEL_56;
      }

      LOBYTE(v4) = v324;
      v70 = *v50;
      v43 = v3;
      v71 = *(v50 + 8);
      LODWORD(v319) = sub_2239B3958();
      sub_22396298C(v70, v71, 4);
      sub_22396298C(v43, v324, 4);
      sub_223963BB4(v43, v324, 4);
      v72 = v70;
      v28 = v318;
      sub_223963BB4(v72, v71, 4);
LABEL_91:
      if ((v319 & 1) == 0)
      {
        goto LABEL_321;
      }

LABEL_56:
      v47 = v323 + 1;
      v3 = v320;
      if (v323 + 1 != v320)
      {
        continue;
      }

      sub_223963BB4(v327, v5, 5);
      v42 = v310;
      sub_223963BB4(v28, v310, 5);
      v34 = v28;
LABEL_50:
      v35 = v42;
      goto LABEL_51;
    }

    break;
  }

  if (v49 != 5)
  {
    v73 = *v50;
    v74 = *(v50 + 8);
    v75 = *v50;
    if (v4 == 6)
    {
      v43 = v324;
      v4 = *(v50 + 8);
      sub_22396298C(v73, v74, 6);
      sub_22396298C(v3, v324, 6);
      sub_22396298C(v75, v4, 6);
      sub_22396298C(v3, v324, 6);
      LODWORD(v319) = sub_22396A45C(v3, v75);
      sub_223963BB4(v3, v324, 6);
      sub_223963BB4(v75, v4, 6);
      sub_223963BB4(v75, v4, 6);
      sub_223963BB4(v3, v324, 6);
      v28 = v318;
      goto LABEL_91;
    }

    v225 = *(v50 + 8);
    sub_22396298C(v73, v74, *(v50 + 16));
    sub_22396298C(v3, v324, 6);
    v226 = v3;
    v227 = v324;
    v228 = 6;
LABEL_281:
    sub_223963BB4(v226, v227, v228);
    sub_223963BB4(v75, v225, v4);
    goto LABEL_320;
  }

  if (v4 != 5)
  {
    v229 = *v50;
    v230 = *(v50 + 8);
    sub_22396298C(*v50, v230, *(v50 + 16));
    sub_22396298C(v3, v324, 5);
    v231 = v3;
    v232 = v324;
    v233 = 5;
    goto LABEL_278;
  }

  v59 = *(v3 + 16);
  if (v59 != *(v11 + 16))
  {
    v237 = *v50;
    v238 = *(v50 + 8);
    sub_22396298C(*v50, v238, 5);
    sub_22396298C(v3, v324, 5);
    sub_223963BB4(v3, v324, 5);
    v234 = v237;
    v28 = v318;
    v235 = v238;
    v236 = 5;
    goto LABEL_279;
  }

  if (v59)
  {
    v60 = v3 == v11;
  }

  else
  {
    v60 = 1;
  }

  if (v60)
  {
    v61 = *v50;
    LOBYTE(v4) = v324;
    v43 = v3;
    v62 = *(v50 + 8);
    sub_22396298C(*v50, v62, 5);
    sub_22396298C(v43, v324, 5);
    sub_223963BB4(v43, v324, 5);
    sub_223963BB4(v61, v62, 5);
    v28 = v318;
    goto LABEL_56;
  }

  v313 = v11 + 32;
  v314 = v3 + 32;
  v76 = *v50;
  v316 = v3;
  v3 = *(v50 + 8);
  sub_22396298C(v11, v10, 5);
  sub_22396298C(v316, v324, 5);
  v315 = v76;
  v306 = v3;
  sub_22396298C(v76, v3, 5);
  sub_22396298C(v316, v324, 5);
  v80 = 0;
  v312 = v59;
  while (2)
  {
    if (v80 >= *(v316 + 16))
    {
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      v267 = v79;
      v268 = v78;
      v281 = v77;
LABEL_308:
      sub_22396298C(v292, v281, v267);

      LOBYTE(v79) = v267;
      v77 = v281;
      v171 = v292;
      v2 = v327;
      v78 = v268;
      v173 = v291;
LABEL_309:
      v269 = v77;
      v270 = v79;
      v271 = v78;
      v272 = v173;
      sub_22396298C(v173, v78, v59);
      sub_223963BB4(v171, v269, v270);
      sub_223963BB4(v272, v271, v59);
      sub_223963BB4(v171, v269, v270);
LABEL_312:
      sub_223963BB4(v3, v280, 5);
      sub_223963BB4(v287, v284, 5);
      sub_223963BB4(v287, v284, 5);
      v262 = v3;
      v263 = v280;
      v264 = 5;
      goto LABEL_313;
    }

    if (v80 >= *(v315 + 16))
    {
      goto LABEL_304;
    }

    v87 = v314 + 24 * v80;
    v3 = *v87;
    v317 = *(v87 + 8);
    v88 = *(v87 + 16);
    v89 = v313 + 24 * v80;
    v90 = *(v89 + 8);
    v319 = *v89;
    v91 = *(v89 + 16);
    if (v88 <= 2)
    {
      if (v88)
      {
        if (v88 != 1)
        {
          if (v91 != 2)
          {
            v239 = *v89;
            v240 = *(v89 + 8);
            sub_22396298C(v319, v90, *(v89 + 16));
            v241 = v3;
            v242 = v317;
            v243 = 2;
            goto LABEL_290;
          }

          v100 = *(v89 + 8);
          sub_223963BB4(v3, v317, 2);
          sub_223963BB4(v319, v100, 2);
          v59 = v312;
          if (*&v3 != *&v319)
          {
            goto LABEL_319;
          }

          goto LABEL_135;
        }

        if (v91 != 1)
        {
          v239 = *v89;
          v240 = *(v89 + 8);
          sub_22396298C(v319, v90, *(v89 + 16));
          v241 = v3;
          v242 = v317;
          v243 = 1;
          goto LABEL_290;
        }

        v93 = v3;
        v82 = *v89;
        v83 = v3;
        v3 = *(v89 + 8);
        sub_223963BB4(v93, v317, 1);
        v84 = v319;
        v85 = v3;
        v86 = 1;
      }

      else
      {
        if (*(v89 + 16))
        {
          v239 = *v89;
          v240 = *(v89 + 8);
          sub_22396298C(v319, v90, *(v89 + 16));
          v241 = v3;
          v242 = v317;
          v243 = 0;
          goto LABEL_290;
        }

        v81 = v3;
        v82 = *v89;
        v83 = v3;
        v3 = *(v89 + 8);
        sub_223963BB4(v81, v317, 0);
        v84 = v319;
        v85 = v3;
        v86 = 0;
      }

      sub_223963BB4(v84, v85, v86);
      v59 = v312;
      if (v83 != *&v82)
      {
        goto LABEL_319;
      }

      goto LABEL_135;
    }

    if (v88 <= 4)
    {
      if (v88 == 3)
      {
        if (v91 == 3)
        {
          v92 = *(v89 + 8);
          sub_223963BB4(v3, v317, 3);
          sub_223963BB4(v319, v92, 3);
          v59 = v312;
          if ((v319 ^ v3))
          {
            goto LABEL_319;
          }

          goto LABEL_135;
        }

        v239 = *v89;
        v240 = *(v89 + 8);
        sub_22396298C(v319, v90, *(v89 + 16));
        v241 = v3;
        v242 = v317;
        v243 = 3;
LABEL_290:
        sub_223963BB4(v241, v242, v243);
        v244 = *&v239;
        v245 = v240;
        v246 = v91;
        goto LABEL_318;
      }

      if (v91 != 4)
      {
        v239 = *v89;
        v240 = *(v89 + 8);
        sub_22396298C(v319, v90, *(v89 + 16));
        sub_22396298C(v3, v317, 4);
        v241 = v3;
        v242 = v317;
        v243 = 4;
        goto LABEL_290;
      }

      if (v3 != v319 || v317 != v90)
      {
        v102 = v3;
        v3 = *(v89 + 8);
        LODWORD(v311) = sub_2239B3958();
        sub_22396298C(v319, v3, 4);
        sub_22396298C(v102, v317, 4);
        sub_223963BB4(v102, v317, 4);
        v103 = v319;
        v104 = v3;
        v105 = 4;
        goto LABEL_131;
      }

      sub_22396298C(v3, v317, 4);
      sub_22396298C(v3, v317, 4);
      sub_223963BB4(v3, v317, 4);
      v97 = v3;
      v98 = v317;
      v99 = 4;
LABEL_134:
      sub_223963BB4(v97, v98, v99);
      v59 = v312;
      goto LABEL_135;
    }

    if (v88 != 5)
    {
      if (v91 != 6)
      {
        v239 = *v89;
        v240 = *(v89 + 8);
        sub_22396298C(v319, v90, *(v89 + 16));
        sub_22396298C(v3, v317, 6);
        v241 = v3;
        v242 = v317;
        v243 = 6;
        goto LABEL_290;
      }

      v106 = *(v89 + 8);
      sub_22396298C(v319, v90, 6);
      sub_22396298C(v3, v317, 6);
      sub_22396298C(v319, v106, 6);
      sub_22396298C(v3, v317, 6);
      LODWORD(v311) = sub_22396A45C(v3, v319);
      sub_223963BB4(v3, v317, 6);
      sub_223963BB4(v319, v106, 6);
      sub_223963BB4(v319, v106, 6);
      v103 = v3;
      v104 = v317;
      v105 = 6;
LABEL_131:
      sub_223963BB4(v103, v104, v105);
      v59 = v312;
      if ((v311 & 1) == 0)
      {
        goto LABEL_319;
      }

LABEL_135:
      if (++v80 == v59)
      {
        v43 = v316;
        LOBYTE(v4) = v324;
        sub_223963BB4(v316, v324, 5);
        sub_223963BB4(v315, v306, 5);
        sub_223963BB4(v315, v306, 5);
        sub_223963BB4(v316, v324, 5);
        v5 = v328;
        v28 = v318;
        goto LABEL_56;
      }

      continue;
    }

    break;
  }

  if (v91 != 5)
  {
    v239 = *v89;
    v240 = *(v89 + 8);
    sub_22396298C(v319, v90, *(v89 + 16));
    sub_22396298C(v3, v317, 5);
    v241 = v3;
    v242 = v317;
    v243 = 5;
    goto LABEL_290;
  }

  v94 = *(v3 + 16);
  if (v94 != *(v319 + 16))
  {
    v247 = *(v89 + 8);
    sub_22396298C(v319, v90, 5);
    sub_22396298C(v3, v317, 5);
    sub_223963BB4(v3, v317, 5);
    v244 = v319;
    v245 = v247;
    goto LABEL_317;
  }

  if (v94)
  {
    v95 = v3 == v319;
  }

  else
  {
    v95 = 1;
  }

  if (v95)
  {
    v96 = v3;
    v3 = *(v89 + 8);
    sub_22396298C(v319, v90, 5);
    sub_22396298C(v96, v317, 5);
    sub_223963BB4(v96, v317, 5);
    v97 = v319;
    v98 = v3;
LABEL_119:
    v99 = 5;
    goto LABEL_134;
  }

  v308 = v3 + 32;
  v309 = v3;
  v107 = *(v89 + 8);
  sub_22396298C(v319, v90, 5);
  sub_22396298C(v309, v317, 5);
  v293 = v107;
  sub_22396298C(v319, v107, 5);
  result = sub_22396298C(v309, v317, 5);
  v109 = 0;
  v307 = v94;
  while (2)
  {
    if (v109 >= *(v309 + 16))
    {
      __break(1u);
LABEL_327:
      __break(1u);
LABEL_328:
      __break(1u);
LABEL_329:
      __break(1u);
LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
LABEL_332:
      __break(1u);
LABEL_333:
      __break(1u);
      return result;
    }

    if (v109 >= *(v319 + 16))
    {
      goto LABEL_327;
    }

    v110 = v308 + 24 * v109;
    v111 = *v110;
    v112 = *(v110 + 8);
    v113 = *(v110 + 16);
    v114 = v319 + 32 + 24 * v109;
    v115 = *(v114 + 8);
    v311 = *v114;
    v116 = *(v114 + 16);
    if (v113 <= 2)
    {
      if (*(v110 + 16))
      {
        if (v113 != 1)
        {
          if (v116 != 2)
          {
            goto LABEL_293;
          }

          v130 = *v110;
          sub_223963BB4(v111, v112, 2);
          result = sub_223963BB4(v311, v115, 2);
          if (v130 != *&v311)
          {
            goto LABEL_316;
          }

LABEL_139:
          if (++v109 == v307)
          {
            sub_223963BB4(v309, v317, 5);
            v3 = v293;
            sub_223963BB4(v319, v293, 5);
            sub_223963BB4(v319, v293, 5);
            v97 = v309;
            v98 = v317;
            goto LABEL_119;
          }

          continue;
        }

        if (v116 != 1)
        {
          goto LABEL_293;
        }

        v120 = v109;
        v121 = *v110;
        sub_223963BB4(v111, v112, 1);
        v122 = v311;
        v123 = v311;
        v124 = v115;
        v125 = 1;
      }

      else
      {
        if (*(v114 + 16))
        {
          goto LABEL_293;
        }

        v120 = v109;
        v121 = *v110;
        sub_223963BB4(v111, v112, 0);
        v122 = v311;
        v123 = v311;
        v124 = v115;
        v125 = 0;
      }

      result = sub_223963BB4(v123, v124, v125);
      v36 = v121 == v122;
      v109 = v120;
      if (!v36)
      {
        goto LABEL_316;
      }

      goto LABEL_139;
    }

    break;
  }

  if (*(v110 + 16) <= 4u)
  {
    if (v113 == 3)
    {
      if (v116 != 3)
      {
        goto LABEL_293;
      }

      v117 = v109;
      v118 = *v110;
      sub_223963BB4(v111, v112, 3);
      result = sub_223963BB4(v311, v115, 3);
      v119 = v311 ^ v118;
      v109 = v117;
      if (v119)
      {
        goto LABEL_316;
      }

      goto LABEL_139;
    }

    if (v116 != 4)
    {
      goto LABEL_292;
    }

    if (v111 != v311 || v112 != v115)
    {
      v303 = v109;
      v132 = *v110;
      v133 = *(v114 + 8);
      v134 = *(v110 + 8);
      v304 = sub_2239B3958();
      sub_22396298C(v311, v133, 4);
      sub_22396298C(v132, v134, 4);
      v135 = v132;
      v109 = v303;
      sub_223963BB4(v135, v134, 4);
      v136 = v311;
      v137 = v133;
      v138 = 4;
LABEL_171:
      result = sub_223963BB4(v136, v137, v138);
      if ((v304 & 1) == 0)
      {
        goto LABEL_316;
      }

      goto LABEL_139;
    }

    v299 = v113;
    v141 = *v110;
    v142 = *(v110 + 8);
    sub_22396298C(v111, v112, 4);
    sub_22396298C(v141, v142, 4);
    sub_223963BB4(v141, v142, 4);
LABEL_177:
    result = sub_223963BB4(v141, v142, v299);
    goto LABEL_139;
  }

  v302 = v109;
  if (v113 != 5)
  {
    if (v116 != 6)
    {
LABEL_292:
      v248 = *v110;
      v249 = *(v110 + 8);
      v250 = v113;
      sub_22396298C(v111, v112, v113);

      LOBYTE(v113) = v250;
      v112 = v249;
      v111 = v248;
LABEL_293:
      v251 = v111;
      v252 = v112;
      v253 = v113;
      sub_22396298C(v311, v115, v116);
      sub_223963BB4(v251, v252, v253);
      goto LABEL_315;
    }

    v139 = *v110;
    v140 = *(v110 + 8);
    sub_22396298C(v311, v115, 6);
    sub_22396298C(v139, v140, 6);
    sub_22396298C(v311, v115, 6);
    sub_22396298C(v139, v140, 6);
    v304 = sub_22396A45C(v139, v311);
    sub_223963BB4(v139, v140, 6);
    sub_223963BB4(v311, v115, 6);
    sub_223963BB4(v311, v115, 6);
    v136 = v139;
    v109 = v302;
    v137 = v140;
    v138 = 6;
    goto LABEL_171;
  }

  if (v116 != 5)
  {
    goto LABEL_292;
  }

  v126 = *(v111 + 16);
  v296 = v112;
  v297 = *(v114 + 8);
  if (v126 != *(v311 + 16))
  {
    v254 = v111;
    v255 = v112;
    sub_22396298C(v311, v115, 5);
    sub_22396298C(v254, v255, 5);
    sub_22396298C(v311, v115, 5);
    v301 = v254;
    sub_22396298C(v254, v255, 5);
    goto LABEL_314;
  }

  v299 = 5;
  if (!v126)
  {
    v127 = *v114;
    goto LABEL_175;
  }

  v127 = *&v111;
  if (v111 == v311)
  {
LABEL_175:
    v128 = v111;
    v143 = *(v114 + 8);
    sub_22396298C(*&v127, v115, 5);
    v142 = v296;
    sub_22396298C(v128, v296, 5);
    sub_22396298C(*&v127, v297, 5);
    sub_22396298C(v128, v296, 5);
    *&v311 = v127;
LABEL_176:
    v141 = v128;
    sub_223963BB4(v128, v142, 5);
    sub_223963BB4(v311, v143, 5);
    sub_223963BB4(v311, v143, 5);
    v109 = v302;
    goto LABEL_177;
  }

  v300 = v111 + 32;
  v301 = v111;
  v298 = *(v111 + 16);
  sub_22396298C(v311, v115, 5);
  sub_22396298C(v301, v296, 5);
  sub_22396298C(v311, v115, 5);
  result = sub_22396298C(v301, v296, 5);
  v128 = v301;
  v129 = 0;
  while (1)
  {
    if (v129 >= *(v128 + 16))
    {
      goto LABEL_328;
    }

    if (v129 >= *(v311 + 16))
    {
      goto LABEL_329;
    }

    v148 = v300 + 24 * v129;
    v3 = *v148;
    v44 = *(v148 + 8);
    v46 = *(v148 + 16);
    v149 = v311 + 32 + 24 * v129;
    v45 = *v149;
    v43 = *(v149 + 8);
    LODWORD(v4) = *(v149 + 16);
    v305 = v129;
    if (v46 > 2)
    {
      break;
    }

    if (v46)
    {
      if (v46 != 1)
      {
        if (v4 != 2)
        {
          goto LABEL_301;
        }

        v155 = *&v3;
        v156 = *v149;
        v157 = v3;
        v158 = *v149;
        sub_223963BB4(v157, v44, 2);
        result = sub_223963BB4(v158, v43, 2);
        if (v155 != v156)
        {
          goto LABEL_314;
        }

        goto LABEL_181;
      }

      if (v4 != 1)
      {
        goto LABEL_301;
      }

      v144 = *v149;
      sub_223963BB4(v3, v44, 1);
      v145 = v144;
      v146 = v43;
      v147 = 1;
    }

    else
    {
      if (*(v149 + 16))
      {
        goto LABEL_301;
      }

      v144 = *v149;
      sub_223963BB4(v3, v44, 0);
      v145 = v144;
      v146 = v43;
      v147 = 0;
    }

    result = sub_223963BB4(v145, v146, v147);
    if (v3 != v144)
    {
      goto LABEL_314;
    }

LABEL_181:
    v129 = v305 + 1;
    v128 = v301;
    if (v305 + 1 == v298)
    {
      v142 = v296;
      v143 = v297;
      goto LABEL_176;
    }
  }

  if (v46 <= 4)
  {
    if (v46 == 3)
    {
      if (v4 != 3)
      {
        goto LABEL_301;
      }

      v150 = *v149;
      sub_223963BB4(v3, v44, 3);
      result = sub_223963BB4(v150, v43, 3);
      if ((v150 ^ v3))
      {
        goto LABEL_314;
      }

      goto LABEL_181;
    }

    if (v4 != 4)
    {
      v256 = *v149;
      goto LABEL_300;
    }

    if (v3 != v45 || v44 != v43)
    {
      v160 = v3;
      v161 = *(v149 + 8);
      v162 = v44;
      v163 = *v149;
      v294 = sub_2239B3958();
      sub_22396298C(v163, v161, 4);
      sub_22396298C(v160, v162, 4);
      sub_223963BB4(v160, v162, 4);
      v164 = v163;
      v165 = v161;
      v166 = 4;
      goto LABEL_211;
    }

    v282 = v46;
    v217 = v44;
    sub_22396298C(v3, v44, 4);
    sub_22396298C(v3, v217, 4);
    sub_223963BB4(v3, v217, 4);
    goto LABEL_262;
  }

  if (v46 == 5)
  {
    if (v4 != 5)
    {
      goto LABEL_297;
    }

    v151 = *(v3 + 16);
    v280 = v44;
    if (v151 != *(v45 + 16))
    {
      v265 = v44;
      v266 = *v149;
      sub_22396298C(v45, v43, 5);
      sub_22396298C(v3, v265, 5);
      v287 = v266;
      v284 = v43;
      sub_22396298C(v266, v43, 5);
      sub_22396298C(v3, v265, 5);
      goto LABEL_312;
    }

    v282 = 5;
    if (v151)
    {
      v152 = v3;
      if (v3 != v45)
      {
        v285 = v45 + 32;
        v286 = v3 + 32;
        v153 = *v149;
        v283 = *(v3 + 16);
        sub_22396298C(v45, v43, 5);
        v284 = v43;
        sub_22396298C(v3, v280, 5);
        v287 = v153;
        sub_22396298C(v153, v43, 5);
        result = sub_22396298C(v3, v280, 5);
        v154 = 0;
        while (1)
        {
          if (v154 >= *(v3 + 16))
          {
            goto LABEL_330;
          }

          if (v154 >= *(v287 + 16))
          {
            goto LABEL_331;
          }

          v170 = v286 + 24 * v154;
          v171 = *v170;
          v77 = *(v170 + 8);
          v79 = *(v170 + 16);
          v172 = v285 + 24 * v154;
          v173 = *v172;
          v78 = *(v172 + 8);
          LODWORD(v59) = *(v172 + 16);
          v295 = v154;
          if (v79 <= 2)
          {
            if (v79)
            {
              if (v79 != 1)
              {
                if (v59 != 2)
                {
                  goto LABEL_309;
                }

                v199 = *v172;
                v200 = *(v172 + 8);
                v201 = *v172;
                sub_223963BB4(v171, v77, 2);
                result = sub_223963BB4(v201, v200, 2);
                if (*&v171 != v199)
                {
                  goto LABEL_312;
                }

                goto LABEL_214;
              }

              if (v59 != 1)
              {
                goto LABEL_309;
              }

              v176 = *(v172 + 8);
              v177 = *v172;
              sub_223963BB4(v171, v77, 1);
              v178 = v177;
              v179 = v176;
              v180 = 1;
            }

            else
            {
              if (*(v172 + 16))
              {
                goto LABEL_309;
              }

              v198 = *(v172 + 8);
              v177 = *v172;
              sub_223963BB4(v171, v77, 0);
              v178 = v177;
              v179 = v198;
              v180 = 0;
            }

            result = sub_223963BB4(v178, v179, v180);
            if (v171 != v177)
            {
              goto LABEL_312;
            }
          }

          else
          {
            v291 = *v172;
            v292 = v171;
            if (v79 > 4)
            {
              v281 = v77;
              v278 = *(v172 + 8);
              if (v79 != 5)
              {
                if (v59 != 6)
                {
                  v267 = v79;
                  v268 = *(v172 + 8);
                  goto LABEL_308;
                }

                v209 = *(v172 + 8);
                v210 = *v172;
                sub_22396298C(v173, v78, 6);
                sub_22396298C(v292, v281, 6);
                sub_22396298C(v210, v209, 6);
                sub_22396298C(v292, v281, 6);
                v290 = sub_22396A45C(v292, v210);
                sub_223963BB4(v292, v281, 6);
                sub_223963BB4(v210, v278, 6);
                sub_223963BB4(v210, v278, 6);
                v206 = v292;
                v207 = v281;
                v208 = 6;
                goto LABEL_251;
              }

              if (v59 != 5)
              {
                v267 = v79;
                v268 = *(v172 + 8);
                goto LABEL_308;
              }

              v181 = *(v171 + 16);
              if (v181 != *(v173 + 16))
              {
                v276 = v3;
                v273 = v77;
                v274 = *(v172 + 8);
                v275 = *v172;
                sub_22396298C(v173, v78, 5);
                sub_22396298C(v171, v273, 5);
                sub_22396298C(v275, v274, 5);
                sub_22396298C(v171, v273, 5);
LABEL_311:
                sub_223963BB4(v292, v281, 5);
                sub_223963BB4(v291, v278, 5);
                sub_223963BB4(v291, v278, 5);
                sub_223963BB4(v292, v281, 5);
                v3 = v276;
                goto LABEL_312;
              }

              v279 = *(v171 + 16);
              v277 = 5;
              if (v181)
              {
                v182 = v171;
                v183 = v171;
                if (v171 != v173)
                {
                  v276 = v3;
                  v184 = *(v172 + 8);
                  sub_22396298C(v173, v78, 5);
                  sub_22396298C(v171, v281, 5);
                  sub_22396298C(v291, v184, 5);
                  sub_22396298C(v171, v281, 5);
                  v185 = v291;
                  v186 = 0;
                  v187 = (v291 + 48);
                  v188 = (v171 + 48);
                  result = v171;
                  while (v186 < *(result + 16))
                  {
                    result = *(v188 - 2);
                    v189 = *(v188 - 1);
                    v288 = v186;
                    v289 = v188;
                    v190 = *v188;
                    v332 = result;
                    v333 = v189;
                    v334 = v190;
                    if (v186 >= *(v185 + 16))
                    {
                      goto LABEL_333;
                    }

                    v192 = *(v187 - 1);
                    v329 = *(v187 - 2);
                    v191 = v329;
                    v330 = v192;
                    v331 = *v187;
                    v193 = v331;
                    sub_22396298C(result, v189, v190);
                    sub_22396298C(v191, v192, v193);
                    v194 = static SimpleType.== infix(_:_:)(&v332, &v329);
                    sub_223963BB4(v329, v330, v331);
                    sub_223963BB4(v332, v333, v334);
                    if ((v194 & 1) == 0)
                    {
                      goto LABEL_311;
                    }

                    v186 = v288 + 1;
                    v187 += 24;
                    v188 = v289 + 24;
                    v185 = v291;
                    result = v292;
                    if (v279 == v288 + 1)
                    {
                      v195 = v281;
                      v196 = v278;
                      v197 = v291;
                      v3 = v276;
                      goto LABEL_256;
                    }
                  }

                  goto LABEL_332;
                }
              }

              else
              {
                v182 = *v172;
                v183 = v171;
              }

              v214 = v182;
              v291 = v182;
              v215 = *(v172 + 8);
              sub_22396298C(v182, v78, 5);
              v216 = v183;
              v195 = v281;
              sub_22396298C(v216, v281, 5);
              sub_22396298C(v214, v215, 5);
              sub_22396298C(v292, v281, 5);
              v197 = v291;
              result = v292;
              v196 = v278;
LABEL_256:
              sub_223963BB4(result, v195, 5);
              sub_223963BB4(v197, v196, 5);
              v211 = v197;
              v171 = v292;
              v212 = v196;
              v213 = 5;
            }

            else
            {
              if (v79 == 3)
              {
                if (v59 != 3)
                {
                  goto LABEL_309;
                }

                v174 = *(v172 + 8);
                v175 = *v172;
                sub_223963BB4(v171, v77, 3);
                result = sub_223963BB4(v175, v174, 3);
                if ((v175 ^ v171))
                {
                  goto LABEL_312;
                }

                goto LABEL_214;
              }

              if (v59 != 4)
              {
                goto LABEL_305;
              }

              if (v171 != v173 || v77 != v78)
              {
                v203 = v77;
                v204 = *(v172 + 8);
                v205 = *v172;
                v290 = sub_2239B3958();
                sub_22396298C(v205, v204, 4);
                sub_22396298C(v292, v203, 4);
                sub_223963BB4(v292, v203, 4);
                v206 = v291;
                v207 = v204;
                v208 = 4;
LABEL_251:
                result = sub_223963BB4(v206, v207, v208);
                if ((v290 & 1) == 0)
                {
                  goto LABEL_312;
                }

                goto LABEL_214;
              }

              v277 = v79;
              v195 = v77;
              sub_22396298C(v171, v77, 4);
              sub_22396298C(v171, v195, 4);
              v211 = v171;
              v212 = v195;
              v213 = 4;
            }

            sub_223963BB4(v211, v212, v213);
            result = sub_223963BB4(v171, v195, v277);
          }

LABEL_214:
          v154 = v295 + 1;
          if (v295 + 1 == v283)
          {
            v219 = v3;
            v220 = v284;
            v217 = v280;
            v152 = v287;
            goto LABEL_261;
          }
        }
      }
    }

    else
    {
      v152 = *v149;
    }

    sub_22396298C(v152, v43, 5);
    v218 = v3;
    v219 = v3;
    v220 = v43;
    v217 = v280;
    sub_22396298C(v218, v280, 5);
    sub_22396298C(v152, v220, 5);
    sub_22396298C(v219, v280, 5);
LABEL_261:
    sub_223963BB4(v219, v217, 5);
    sub_223963BB4(v152, v220, 5);
    sub_223963BB4(v152, v220, 5);
    v3 = v219;
LABEL_262:
    result = sub_223963BB4(v3, v217, v282);
    goto LABEL_181;
  }

  v167 = v3;
  v168 = v44;
  if (v4 == 6)
  {
    v284 = *(v149 + 8);
    v169 = *v149;
    sub_22396298C(v45, v284, 6);
    sub_22396298C(v167, v168, 6);
    sub_22396298C(v169, v284, 6);
    sub_22396298C(v167, v168, 6);
    v294 = sub_22396A45C(v167, v169);
    sub_223963BB4(v167, v168, 6);
    sub_223963BB4(v169, v284, 6);
    sub_223963BB4(v169, v284, 6);
    v164 = v167;
    v165 = v168;
    v166 = 6;
LABEL_211:
    result = sub_223963BB4(v164, v165, v166);
    if ((v294 & 1) == 0)
    {
      goto LABEL_314;
    }

    goto LABEL_181;
  }

  v256 = *v149;
  v43 = *(v149 + 8);
LABEL_300:
  v257 = v44;
  v258 = v46;
  sub_22396298C(v3, v44, v46);

  LOBYTE(v46) = v258;
  v44 = v257;
  v45 = v256;
LABEL_301:
  v259 = v44;
  v260 = v45;
  v261 = v46;
  sub_22396298C(v45, v43, v4);
  sub_223963BB4(v3, v259, v261);
  sub_223963BB4(v260, v43, v4);
  v262 = v3;
  v263 = v259;
  v264 = v261;
LABEL_313:
  sub_223963BB4(v262, v263, v264);
LABEL_314:
  LOBYTE(v116) = 5;
  v251 = v301;
  v252 = v296;
  sub_223963BB4(v301, v296, 5);
  v115 = v297;
  sub_223963BB4(v311, v297, 5);
  v253 = 5;
LABEL_315:
  sub_223963BB4(v311, v115, v116);
  sub_223963BB4(v251, v252, v253);
LABEL_316:
  sub_223963BB4(v309, v317, 5);
  sub_223963BB4(v319, v293, 5);
  sub_223963BB4(v319, v293, 5);
  v244 = v309;
  v245 = v317;
LABEL_317:
  v246 = 5;
LABEL_318:
  sub_223963BB4(v244, v245, v246);
LABEL_319:
  sub_223963BB4(v316, v324, 5);
  sub_223963BB4(v315, v306, 5);
  sub_223963BB4(v315, v306, 5);
  sub_223963BB4(v316, v324, 5);
  v5 = v328;
LABEL_320:
  v28 = v318;
LABEL_321:
  LOBYTE(v4) = 5;
  sub_223963BB4(v2, v5, 5);
  sub_223963BB4(v28, v310, 5);
  v27 = v310;
  LOBYTE(v29) = v322;
LABEL_322:
  sub_223963BB4(v28, v27, v29);
LABEL_323:
  sub_223963BB4(v2, v5, v4);
  return 0;
}

char *sub_22396C6E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FFB8, qword_2239B5BF0);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_22396C7F0(char *a1, int64_t a2, char a3)
{
  result = sub_22396C6E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_22396C810()
{
  result = qword_281335D70;
  if (!qword_281335D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281335D70);
  }

  return result;
}

unint64_t sub_22396C864()
{
  result = qword_281335D68;
  if (!qword_281335D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281335D68);
  }

  return result;
}

unint64_t sub_22396C8B8()
{
  result = qword_281336630;
  if (!qword_281336630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281336630);
  }

  return result;
}

uint64_t sub_22396C90C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2239B3628() + 1) & ~v5;
    do
    {
      sub_2239B3A18();

      sub_2239B3228();
      v10 = sub_2239B3A78();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (24 * v3 < (24 * v6) || v16 >= v17 + 24 || v3 != v6)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}