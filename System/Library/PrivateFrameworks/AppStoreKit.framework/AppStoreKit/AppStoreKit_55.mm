uint64_t sub_1E185AE84@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 16);
  if (!v3)
  {
    v5 = MEMORY[0x1E69E7CC8];
LABEL_17:
    *a2 = v5;
    return result;
  }

  v4 = (result + 32);
  v5 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v7 = *v4++;
    v6 = v7;
    if (!v7)
    {
      goto LABEL_4;
    }

    sub_1E134E724(v6 + 184, v21);
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v5;
    v9 = sub_1E135FCF4(v21);
    v11 = v5[2];
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      break;
    }

    v15 = v10;
    if (v5[3] < v14)
    {
      sub_1E1691E4C(v14, isUniquelyReferenced_nonNull_native);
      v9 = sub_1E135FCF4(v21);
      if ((v15 & 1) != (v16 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      v5 = v22;
      if (v15)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v20 = v9;
    sub_1E141ABD8();
    v9 = v20;
    v5 = v22;
    if (v15)
    {
LABEL_3:
      *(v5[7] + 8 * v9) = v6;

      result = sub_1E134B88C(v21);
      goto LABEL_4;
    }

LABEL_12:
    v5[(v9 >> 6) + 8] |= 1 << v9;
    v17 = v9;
    sub_1E134E724(v21, v5[6] + 40 * v9);
    *(v5[7] + 8 * v17) = v6;

    result = sub_1E134B88C(v21);
    v18 = v5[2];
    v13 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (v13)
    {
      goto LABEL_19;
    }

    v5[2] = v19;
LABEL_4:
    if (!--v3)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1E1AF757C();
  __break(1u);
  return result;
}

double sub_1E185B050(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v7 = sub_1E1AEFEAC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA298, &unk_1E1B39750);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA270, &qword_1E1B39720);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v38 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  v36 = *a1;
  v19 = qword_1EE1E7260;
  swift_beginAccess();
  (*(v8 + 16))(v18, a3, v7);
  (*(v8 + 56))(v18, 0, 1, v7);
  v20 = *(v11 + 56);
  sub_1E134FD1C(a2 + v19, v13, &qword_1ECEBA270, &qword_1E1B39720);
  sub_1E134FD1C(v18, &v13[v20], &qword_1ECEBA270, &qword_1E1B39720);
  v21 = *(v8 + 48);
  if (v21(v13, 1, v7) != 1)
  {
    v22 = v38;
    sub_1E134FD1C(v13, v38, &qword_1ECEBA270, &qword_1E1B39720);
    if (v21(&v13[v20], 1, v7) != 1)
    {
      v24 = v35;
      (*(v8 + 32))(v35, &v13[v20], v7);
      sub_1E185E810(&qword_1EE1FADA8, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v25 = sub_1E1AF5DAC();
      v26 = *(v8 + 8);
      v26(v24, v7);
      sub_1E1308058(v18, &qword_1ECEBA270, &qword_1E1B39720);
      v26(v22, v7);
      sub_1E1308058(v13, &qword_1ECEBA270, &qword_1E1B39720);
      if ((v25 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    sub_1E1308058(v18, &qword_1ECEBA270, &qword_1E1B39720);
    (*(v8 + 8))(v22, v7);
LABEL_6:
    sub_1E1308058(v13, &qword_1ECEBA298, &unk_1E1B39750);
    return result;
  }

  sub_1E1308058(v18, &qword_1ECEBA270, &qword_1E1B39720);
  if (v21(&v13[v20], 1, v7) != 1)
  {
    goto LABEL_6;
  }

  sub_1E1308058(v13, &qword_1ECEBA270, &qword_1E1B39720);
LABEL_8:
  v41 = 0;
  v27 = qword_1EE2166A0;
  swift_beginAccess();
  v28 = v37;

  v29 = v36;

  sub_1E185CF54(v30, v28, &v41, v29);
  v32 = v31;

  *(a2 + v27) = v32;

  v33 = v41;
  if (v41)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170, &qword_1E1B06D90);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1E1B06D70;
    *(v34 + 32) = v33;
    v39 = v34;
    v40 = 16;

    sub_1E1AF5BCC();
    sub_1E1360914(v39, v40);
  }

  return result;
}

void *sub_1E185B544(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a1;
  if (MEMORY[0x1E68FFC60](a1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id, a2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id))
  {
    v7 = v6[3];
    v8 = *(v7 + 16);
    v17 = a3;
    if (v8)
    {
      v9 = v7 + 32;
      v10 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1E1300B24(v9, v22);
        __swift_project_boxed_opaque_existential_1Tm(v22, v22[3]);
        sub_1E1AF3FEC();
        if (*(a4 + 16) && (v11 = sub_1E135FCF4(v21), (v12 & 1) != 0))
        {
          v13 = *(*(a4 + 56) + 8 * v11);

          sub_1E134B88C(v21);
          *(&v19 + 1) = type metadata accessor for Badge(0);
          v20 = sub_1E185E810(qword_1EE1E58C8, type metadata accessor for Badge, &protocol conformance descriptor for Badge);
          *&v18 = v13;
        }

        else
        {
          sub_1E134B88C(v21);
          v18 = 0u;
          v19 = 0u;
          v20 = 0;
        }

        __swift_destroy_boxed_opaque_existential_1(v22);
        if (*(&v19 + 1))
        {
          sub_1E1308EC0(&v18, v21);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1E172D098(0, v10[2] + 1, 1, v10);
          }

          v15 = v10[2];
          v14 = v10[3];
          if (v15 >= v14 >> 1)
          {
            v10 = sub_1E172D098((v14 > 1), v15 + 1, 1, v10);
          }

          v10[2] = v15 + 1;
          sub_1E1308EC0(v21, &v10[5 * v15 + 4]);
        }

        else
        {
          sub_1E1308058(&v18, &qword_1ECEB4CE0, &unk_1E1B47A50);
        }

        v9 += 40;
        --v8;
      }

      while (v8);
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    LOBYTE(v22[0]) = 100;
    v6 = Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v10, v22, 1, 2);

    *v17 = v6;
  }

  else
  {
  }

  return v6;
}

double sub_1E185B7AC(uint64_t a1)
{
  v2 = v1;
  v4 = qword_1EE2166A0;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = qword_1EE1F1D20;

  if (v6 == -1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    return result;
  }

  swift_once();
  if (!*(v5 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1E135FCF4(qword_1EE216D20);
  v8 = v7;

  if (v8)
  {
    v10 = sub_1E1858F9C(a1);

    sub_1E185CD40(v11, v10);
    v13 = v12;

    *(v2 + v4) = v13;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170, &qword_1E1B06D90);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1E1B06D70;
    *(v14 + 32) = v10;
    v15 = v14;

    sub_1E1AF5BCC();

    sub_1E1360914(v15, 16);
  }

  return result;
}

double sub_1E185B92C(uint64_t a1, uint64_t *a2)
{
  v4 = qword_1EE2166A0;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = qword_1EE1F1D20;

  if (v6 == -1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    return result;
  }

  swift_once();
  if (!*(v5 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1E135FCF4(qword_1EE216D20);
  v8 = v7;

  if (v8)
  {
    v10 = sub_1E185D314(a2, *(a1 + qword_1EE1E7278));

    sub_1E185CD40(v11, v10);
    v13 = v12;

    *(a1 + v4) = v13;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170, &qword_1E1B06D90);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1E1B06D70;
    *(v14 + 32) = v10;
    v15 = v14;

    sub_1E1AF5BCC();

    sub_1E1360914(v15, 16);
  }

  return result;
}

void sub_1E185BAB4(_BYTE *a1)
{
  v2 = *(v1 + qword_1EE1E7240);
  *(v1 + qword_1EE1E7240) = (*a1 < 0xCuLL) & (0xCF0u >> *a1);
  v3 = v2;
  sub_1E1858EA0(&v3);
}

uint64_t sub_1E185BB30(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, __n128))
{
  v5 = *a1;
  v6 = sub_1E159D6F0(MEMORY[0x1E69E7CC0]);
  v7 = *(v5 + 16);
  v10 = *(v7 + 64);
  v9 = v7 + 64;
  v8 = v10;
  v11 = 1 << *(*(v5 + 16) + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v42 = *(v5 + 16);

  v15 = 0;
  for (i = a2; ; a2 = i)
  {
    if (!v13)
    {
      while (1)
      {
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v16 >= v14)
        {
          goto LABEL_26;
        }

        v13 = *(v9 + 8 * v16);
        ++v15;
        if (v13)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }

    v16 = v15;
LABEL_12:
    v17 = __clz(__rbit64(v13)) | (v16 << 6);
    sub_1E134E724(*(v42 + 48) + 40 * v17, &v46);
    v18 = *(*(v42 + 56) + 8 * v17);
    v43 = v46;
    v44 = v47;
    v19 = v48;
    v20 = *(&v47 + 1);

    if (!v20)
    {
      break;
    }

    v13 &= v13 - 1;
    v46 = v43;
    v47 = v44;
    v48 = v19;
    if (*(a2 + 16))
    {
      sub_1E135FCF4(&v46);
      if (v21)
      {

        v34 = Shelf.replacingContent(with:)(v18);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45[0] = v6;
        sub_1E1598874(v34, &v46, isUniquelyReferenced_nonNull_native);

        v6 = v45[0];
        goto LABEL_5;
      }
    }

    sub_1E134E724(&v46, v45);

    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = sub_1E135FCF4(v45);
    v25 = v6[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_32;
    }

    v29 = v24;
    if (v6[3] < v28)
    {
      sub_1E16889E4(v28, v22);
      v23 = sub_1E135FCF4(v45);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_34;
      }

LABEL_21:
      if (v29)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }

    if (v22)
    {
      goto LABEL_21;
    }

    v36 = v23;
    sub_1E1415C9C();
    v23 = v36;
    if (v29)
    {
LABEL_4:
      *(v6[7] + 8 * v23) = v18;

      sub_1E134B88C(v45);
LABEL_5:
      sub_1E134B88C(&v46);
      goto LABEL_6;
    }

LABEL_22:
    v6[(v23 >> 6) + 8] |= 1 << v23;
    v31 = v23;
    sub_1E134E724(v45, v6[6] + 40 * v23);
    *(v6[7] + 8 * v31) = v18;

    sub_1E134B88C(v45);
    sub_1E134B88C(&v46);
    v32 = v6[2];
    v27 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v27)
    {
      goto LABEL_33;
    }

    v6[2] = v33;
LABEL_6:
    v15 = v16;
  }

LABEL_26:

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + qword_1EE1E7258) = v6;
  }

  swift_beginAccess();
  v38 = swift_weakLoadStrong();
  if (v38)
  {
    *(v38 + qword_1EE216528) = 0;
  }

  return (a4)(0, 0);
}

void sub_1E185BEE8(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + qword_1EE1E7258) = 0;
  }

  swift_beginAccess();
  v5 = swift_weakLoadStrong();
  if (v5)
  {
    *(v5 + qword_1EE216528) = 0;
  }

  sub_1E185E620();
  v6 = swift_allocError();
  *v7 = 1;
  a3(v6, 1);
}

double sub_1E185BFC8(double result)
{
  v2 = qword_1EE1E7258;
  v3 = *(v1 + qword_1EE1E7258);
  if (v3)
  {
    v4 = qword_1EE2166A0;
    swift_beginAccess();
    swift_bridgeObjectRetain_n();

    sub_1E185D114(v5, v3);
    v7 = v6;

    *(v1 + v4) = v7;

    v8 = *(v1 + qword_1EE1E9D48);
    if (v8)
    {
      v9 = (v8 + *(*v8 + 184));
    }

    else
    {
      v9 = &byte_1ECEB71A8;
    }

    swift_beginAccess();
    sub_1E1994D70(asc_1E1B397AA[*v9]);
    v10 = *(v3 + 16);
    if (v10)
    {
      v11 = sub_1E154713C();
      v12 = sub_1E1547130();
      sub_1E1337ECC(v14);
      if (v12 == v10)
      {
LABEL_9:
        sub_1E1A0C2C4(v11);

        *(v1 + v2) = 0;

        return v13;
      }

      __break(1u);
    }

    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  return v13;
}

void sub_1E185C13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_1E1300EA8(a10, a11);
  sub_1E1300EA8(a6, a7);
  sub_1E1300EA8(a4, a5);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void sub_1E185C1A4(uint64_t a1)
{
  if (!qword_1EE1FADA0)
  {
    sub_1E1AEFEAC();
    v1 = sub_1E1AF6D9C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE1FADA0);
    }
  }
}

double sub_1E185C1FC(uint64_t a1)
{
  sub_1E1300B24(a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA230, &qword_1E1B39168);
  type metadata accessor for ShelfBasedProductPage(0);
  if (swift_dynamicCast())
  {
    sub_1E185B7AC(v2);
  }

  return result;
}

void sub_1E185C278(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v70 = a7;
  v71 = a3;
  v11 = sub_1E1AEFEAC();
  v69 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v55 - v15;
  v17 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = *(v17 + 16);
    *&v77 = a4;
    *(&v77 + 1) = a5;

    sub_1E1AF6F6C();
    if (*(v20 + 16) && (v21 = sub_1E135FCF4(v80), (v22 & 1) != 0))
    {
      v23 = *(*(v20 + 56) + 8 * v21);

      sub_1E134B88C(v80);
      v24 = *(v23 + 24);

      v25 = sub_1E167954C(v24);

      if (v25)
      {
        if (v25 >> 62)
        {
          v26 = sub_1E1AF71CC();
          if (v26 >= 1)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v26 >= 1)
          {
LABEL_7:
            if (v26 <= a6)
            {
              v27 = 0xD00000000000001DLL;
              v28 = 0x80000001E1B799F0;
            }

            else
            {
              v27 = 0xD000000000000021;
              v28 = 0x80000001E1B79A10;
              v26 = a6;
            }

            v31 = _s11AppStoreKit24localizedStringWithCount_5count7commentS2S_SiSStF_0(v27, v28, v26);
            v66 = v32;
            v67 = v31;
            sub_1E134E724(v19 + 184, v80);
            v33 = *(v19 + 16);
            v63 = *(v19 + 17);
            v64 = v33;
            v34 = *(v19 + 48);
            v62 = *(v19 + 40);
            v68 = v34;
            v35 = *(v19 + 64);
            v65 = *(v19 + 56);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43F0, "p-\t");
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1E1B02CD0;
            *(inited + 32) = 0xD000000000000011;
            *(inited + 40) = 0x80000001E1B742E0;
            v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA290, &unk_1E1B39740);
            *(inited + 48) = v25;
            v38 = v68;
            *(inited + 72) = v37;
            *(inited + 80) = 0xD00000000000001BLL;
            *(inited + 120) = MEMORY[0x1E69E6530];
            v39 = v70;
            *(inited + 88) = 0x80000001E1B74260;
            *(inited + 96) = v39;
            v60 = v35;

            v61 = sub_1E1303A74(inited);
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5F80, &qword_1E1B192E0);
            swift_arrayDestroy();
            v40 = *(v19 + 81);
            v57 = *(v19 + 80);
            v58 = v40;
            v41 = *(v19 + 96);
            v59 = *(v19 + 88);
            v42 = *(v19 + 112);
            v56 = *(v19 + 104);
            v43 = *(v19 + 144);
            v70 = *(v19 + 120);
            sub_1E134FD1C(v19 + OBJC_IVAR____TtC11AppStoreKit5Badge_impressionMetrics, v16, &unk_1ECEB1770, &unk_1E1AFED20);
            type metadata accessor for Badge(0);
            v44 = swift_allocObject();
            *(v44 + 152) = 0u;
            *(v44 + 168) = 0u;
            sub_1E134FD1C(v80, &v74, &unk_1ECEB5670, qword_1E1B03EC0);
            if (*(&v75 + 1))
            {
              v77 = v74;
              v78 = v75;
              v79 = v76;

              v45 = v41;

              v46 = v43;
            }

            else
            {

              v55 = v41;

              v46 = v43;

              sub_1E1AEFE9C();
              v47 = sub_1E1AEFE7C();
              v49 = v48;
              v50 = v11;
              v45 = v55;
              (*(v69 + 8))(v13, v50);
              v72 = v47;
              v73 = v49;
              v38 = v68;
              sub_1E1AF6F6C();
              sub_1E1308058(&v74, &unk_1ECEB5670, qword_1E1B03EC0);
            }

            sub_1E1308058(v80, &unk_1ECEB5670, qword_1E1B03EC0);
            v51 = v78;
            *(v44 + 184) = v77;
            *(v44 + 200) = v51;
            *(v44 + 216) = v79;
            sub_1E134B7C8(v16, v44 + OBJC_IVAR____TtC11AppStoreKit5Badge_impressionMetrics);
            v52 = v63;
            *(v44 + 16) = v64;
            *(v44 + 17) = v52;
            *(v44 + 40) = v62;
            *(v44 + 48) = v38;
            v53 = v66;
            *(v44 + 24) = v67;
            *(v44 + 32) = v53;
            v54 = v61;
            *(v44 + 56) = v65;
            *(v44 + 64) = v60;
            *(v44 + 72) = v54;
            LOBYTE(v53) = v58;
            *(v44 + 80) = v57;
            *(v44 + 81) = v53;
            *(v44 + 88) = v59;
            *(v44 + 96) = v45;
            *(v44 + 104) = v56;
            *(v44 + 112) = v42;
            *(v44 + 144) = v46;
            *(v44 + 120) = v70;
            *(v44 + 128) = 0;
            *(v44 + 136) = 1;
            v80[0] = v44;
            sub_1E1AF586C();

            goto LABEL_12;
          }
        }

        if (qword_1EE1D27D8 != -1)
        {
          goto LABEL_21;
        }

        goto LABEL_11;
      }
    }

    else
    {
      sub_1E134B88C(v80);
    }

    if (qword_1EE1D27D8 != -1)
    {
LABEL_21:
      swift_once();
    }

LABEL_11:
    v29 = sub_1E1AF591C();
    __swift_project_value_buffer(v29, qword_1EE2154B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();

    v80[0] = 0;
    sub_1E1AF586C();
LABEL_12:

    return;
  }

  if (qword_1EE1D27D8 != -1)
  {
    swift_once();
  }

  v30 = sub_1E1AF591C();
  __swift_project_value_buffer(v30, qword_1EE2154B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();

  v80[0] = 0;
  sub_1E1AF586C();
}

uint64_t sub_1E185CB5C(uint64_t a1)
{
  if (qword_1EE1D27D8 != -1)
  {
    swift_once();
  }

  v1 = sub_1E1AF591C();
  __swift_project_value_buffer(v1, qword_1EE2154B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  swift_getErrorValue();
  v5[3] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0);
  sub_1E1AF38DC();
  sub_1E1308058(v5, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF54AC();

  v5[0] = 0;
  return sub_1E1AF586C();
}

void sub_1E185CD40(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB60B0, &unk_1E1B16240);
  v3 = sub_1E1AF729C();
  v4 = v3;
  v5 = 0;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  v22 = v3 + 64;
  if (v8)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_10:
      v13 = v10 | (v5 << 6);
      sub_1E134E724(*(a1 + 48) + 40 * v13, v26);
      v14 = *(*(a1 + 56) + 8 * v13);
      v23 = v26[0];
      v24 = v26[1];
      v25 = v27;
      v15 = OBJC_IVAR____TtC11AppStoreKit5Shelf_id;
      v16 = qword_1EE1F1D20;

      if (v16 != -1)
      {
        swift_once();
      }

      v17 = (MEMORY[0x1E68FFC60](v14 + v15, qword_1EE216D20) & 1) != 0 ? v28 : v14;

      *(v22 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v18 = v4[6] + 40 * v13;
      *v18 = v23;
      *(v18 + 16) = v24;
      *(v18 + 32) = v25;
      *(v4[7] + 8 * v13) = v17;
      v19 = v4[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        break;
      }

      v4[2] = v21;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        return;
      }

      v12 = *(a1 + 64 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1E185CF54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v33 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB60B0, &unk_1E1B16240);
  v5 = sub_1E1AF729C();
  v6 = v5;
  v7 = 0;
  v28 = a1;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v27 = v5 + 64;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      sub_1E134E724(*(v28 + 48) + 40 * v18, v31);

      v20 = sub_1E185B544(v19, v33, a3, a4);

      *(v27 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v21 = v6[6] + 40 * v18;
      v22 = v31[0];
      v23 = v31[1];
      *(v21 + 32) = v32;
      *v21 = v22;
      *(v21 + 16) = v23;
      *(v6[7] + 8 * v18) = v20;
      v24 = v6[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      v6[2] = v26;
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {

        return;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1E185D114(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB60B0, &unk_1E1B16240);
  v3 = sub_1E1AF729C();
  v4 = v3;
  v5 = 0;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  v24 = v3 + 64;
  v10 = v30;
  if (v8)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_10:
      v14 = v11 | (v5 << 6);
      sub_1E134E724(*(a1 + 48) + 40 * v14, v28);
      v15 = *(*(a1 + 56) + 8 * v14);
      v25 = v28[0];
      v26 = v28[1];
      v27 = v29;
      if (*(v10 + 16))
      {
        v16 = OBJC_IVAR____TtC11AppStoreKit5Shelf_id;

        v17 = sub_1E135FCF4(v15 + v16);
        v18 = v15;
        if (v19)
        {
          v18 = *(*(v30 + 56) + 8 * v17);
        }
      }

      else
      {

        v18 = v15;
      }

      *(v24 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v20 = v4[6] + 40 * v14;
      *v20 = v25;
      *(v20 + 16) = v26;
      *(v20 + 32) = v27;
      *(v4[7] + 8 * v14) = v18;
      v21 = v4[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      v4[2] = v23;
      v10 = v30;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        return;
      }

      v13 = *(a1 + 64 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v8 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1E185D314(uint64_t *a1, int a2)
{
  LODWORD(v72) = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55A0, &unk_1E1B39700);
  v61 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v59 - v3;
  *&v67 = sub_1E1AEFEAC();
  v62 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v60 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v59 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v59 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v59 - v15;
  if (qword_1EE1F1D20 == -1)
  {
    goto LABEL_2;
  }

LABEL_44:
  swift_once();
LABEL_2:
  sub_1E134E724(qword_1EE216D20, v100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2530, &qword_1E1B2D580);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1E1B02CC0;
  *(v17 + 56) = type metadata accessor for ProductTopLockup(0);
  *(v17 + 64) = sub_1E185E810(&unk_1EE1F1D10, type metadata accessor for ProductTopLockup, &protocol conformance descriptor for ProductTopLockup);
  *(v17 + 32) = a1;
  v18 = sub_1E1AEFCCC();
  v19 = *(*(v18 - 8) + 56);
  v64 = v16;
  v19(v16, 1, 1, v18);
  v20 = 1024;
  if ((v72 & 1) == 0)
  {
    v20 = 0;
  }

  v72 = v20;
  v21 = sub_1E1AEFE6C();
  v22 = *(*(v21 - 8) + 56);
  v65 = v10;
  v22(v10, 1, 1, v21);
  v23 = sub_1E1AF46DC();
  v24 = *(*(v23 - 8) + 56);
  v66 = v7;
  v24(v7, 1, 1, v23);
  v19(v13, 1, 1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28C8, &qword_1E1B02F60);
  swift_allocObject();

  v63 = sub_1E1AF35CC();
  v68 = type metadata accessor for Shelf(0);
  v71 = swift_allocObject();
  sub_1E134FD1C(v100, &v94, &unk_1ECEB5670, qword_1E1B03EC0);
  v25 = v13;
  if (*(&v95 + 1))
  {
    v97 = v94;
    v98 = v95;
    v99 = v96;
  }

  else
  {
    v26 = v60;
    sub_1E1AEFE9C();
    v27 = sub_1E1AEFE7C();
    v29 = v28;
    (*(v62 + 8))(v26, v67);
    *&v90 = v27;
    *(&v90 + 1) = v29;
    sub_1E1AF6F6C();
    sub_1E1308058(&v94, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  v30 = v71;
  v31 = v71 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id;
  v32 = v98;
  *v31 = v97;
  *(v31 + 16) = v32;
  *(v31 + 32) = v99;
  sub_1E134FD1C(v66, v30 + OBJC_IVAR____TtC11AppStoreKit5Shelf_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  *(v30 + 16) = 25605;
  *(v30 + 18) = 1;
  *(v30 + 24) = v17;
  LOBYTE(v90) = 5;

  v34 = sub_1E1956360(v33, &v90);

  *(v30 + 32) = v34;
  sub_1E134FD1C(v64, v30 + OBJC_IVAR____TtC11AppStoreKit5Shelf_url, &unk_1ECEB4B60, &unk_1E1B02620);
  *(v30 + OBJC_IVAR____TtC11AppStoreKit5Shelf_mergeWhenFetched) = 0;
  v35 = (v30 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup);
  *v35 = 0x6E6F6D6D6F63;
  v35[1] = 0xE600000000000000;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit5Shelf_fetchStrategy) = 0;
  *(v30 + 40) = 0;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden) = 0;
  v36 = v30 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata;
  *v36 = 0u;
  *(v36 + 16) = 0u;
  *(v36 + 48) = 3221225472;
  *(v36 + 32) = 0u;
  v37 = (v30 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle);
  *v37 = 0;
  v37[1] = 0;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction) = 0;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle) = 1;
  sub_1E134FD1C(v65, v30 + OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_1ECEBB780, &unk_1E1B029A0);
  v62 = v25;
  sub_1E134FD1C(v25, v30 + OBJC_IVAR____TtC11AppStoreKit5Shelf_refreshUrl, &unk_1ECEB4B60, &unk_1E1B02620);
  *(v30 + OBJC_IVAR____TtC11AppStoreKit5Shelf_pageChangeMetrics) = 0;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit5Shelf_presentationHints) = v72;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHorizontal) = 0;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit5Shelf_horizontalScrollTargetBehavior) = 0;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isPersonalized) = 0;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit5Shelf_rowsPerColumn) = 1;
  v38 = v30 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background;
  *v38 = 0u;
  *(v38 + 16) = 0u;
  *(v38 + 32) = 0x8000;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onShouldRemoveModel) = v63;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents) = MEMORY[0x1E69E7CC0];
  v10 = *(v30 + 24);
  a1 = sub_1E13C50E8();

  v39 = 0;
  v93 = MEMORY[0x1E68FF2E0](0, &type metadata for PersonalizationStyle, a1);
  v72 = (v10 + 32);
  v7 = &qword_1ECEB55B0;
  v13 = &unk_1E1B219E0;
  v67 = xmmword_1E1B16440;
  while (2)
  {
    while (2)
    {
      v40 = 0uLL;
      v16 = *(v10 + 2);
      if (v39 == v16)
      {
LABEL_9:
        v79 = 0;
        v39 = v16;
        v77 = v40;
        v78 = v40;
        goto LABEL_13;
      }

      while (1)
      {
        if ((v39 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        if (v39 >= *(v10 + 2))
        {
          goto LABEL_43;
        }

        sub_1E1300B24(v72 + 40 * v39++, &v77);
LABEL_13:
        v75[0] = v77;
        v75[1] = v78;
        v76 = v79;
        if (!*(&v78 + 1))
        {
          memset(v80, 0, 24);
          *(&v80[1] + 8) = v67;
LABEL_21:
          sub_1E1308058(v80, &qword_1ECEB55B8, &qword_1E1B16450);
          v86 = 0;
          v84 = 0u;
          v85 = 0u;
          goto LABEL_22;
        }

        sub_1E1308EC0(v75, v74);
        sub_1E1300B24(v74, &v73);
        a1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0, &qword_1E1B02640);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55A8, &qword_1E1B2E400);
        if ((swift_dynamicCast() & 1) == 0)
        {
          memset(v80, 0, 40);
        }

        __swift_destroy_boxed_opaque_existential_1(v74);
        if (*(&v80[1] + 1) == 1)
        {
          goto LABEL_21;
        }

        v81 = v80[0];
        v82 = v80[1];
        v83 = *&v80[2];
        if (*(&v80[1] + 1))
        {
          break;
        }

        sub_1E1308058(&v81, &qword_1ECEB55B0, &unk_1E1B219E0);
        v40 = 0uLL;
        if (v39 == v16)
        {
          goto LABEL_9;
        }
      }

      *(&v82 + 1) = *(&v80[1] + 1);
      result = sub_1E134FD1C(&v81, v80, &qword_1ECEB55B0, &unk_1E1B219E0);
      if (!*(&v80[1] + 1))
      {
        goto LABEL_47;
      }

      sub_1E1308EC0(v80, &v84);
      sub_1E1308058(&v81, &qword_1ECEB55B0, &unk_1E1B219E0);
      if (!*(&v85 + 1))
      {
LABEL_22:
        sub_1E1308058(&v84, &qword_1ECEB55B0, &unk_1E1B219E0);
        v90 = 0u;
        v91 = 0u;
        v92 = 0;
        goto LABEL_23;
      }

      sub_1E1308EC0(&v84, &v87);
      v44 = *(&v88 + 1);
      v45 = v89;
      v46 = __swift_project_boxed_opaque_existential_1Tm(&v87, *(&v88 + 1));
      v47 = v44;
      a1 = v46;
      if ((PersonalizableModel.needsClientPersonalization.getter(v47, v45) & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v87);
        continue;
      }

      break;
    }

    sub_1E1308EC0(&v87, &v90);
LABEL_23:
    v87 = v90;
    v88 = v91;
    v89 = v92;
    if (*(&v91 + 1))
    {
      sub_1E1308EC0(&v87, &v84);
      v42 = *(&v85 + 1);
      v41 = v86;
      __swift_project_boxed_opaque_existential_1Tm(&v84, *(&v85 + 1));
      (*(v41 + 16))(&v81, v42, v41);
      LOBYTE(v41) = v81;
      __swift_destroy_boxed_opaque_existential_1(&v84);
      a1 = &v93;
      sub_1E1893F1C(&v90, v41);
      continue;
    }

    break;
  }

  v48 = v71;
  *(v71 + OBJC_IVAR____TtC11AppStoreKit5Shelf_personalizationStyles) = v93;
  v49 = (v48 + OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata);
  *v49 = 0u;
  v49[1] = 0u;
  v50 = *(v48 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents);
  if (v50 >> 62)
  {
    v51 = sub_1E1AF71CC();
  }

  else
  {
    v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v53 = v65;
  v52 = v66;
  v54 = v64;
  if (!v51)
  {

LABEL_41:
    sub_1E1308058(v62, &unk_1ECEB4B60, &unk_1E1B02620);
    sub_1E1308058(v52, &unk_1ECEB1770, &unk_1E1AFED20);
    sub_1E1308058(v53, &unk_1ECEBB780, &unk_1E1B029A0);
    sub_1E1308058(v54, &unk_1ECEB4B60, &unk_1E1B02620);
    sub_1E1308058(v100, &unk_1ECEB5670, qword_1E1B03EC0);
    return v71;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55C0, &unk_1E1B16B50);
  if (v51 >= 1)
  {
    v72 = v50 & 0xC000000000000001;
    v55 = (v61 + 8);

    v56 = 0;
    v57 = v50;
    do
    {
      if (v72)
      {
        MEMORY[0x1E68FFD80](v56, v50);
      }

      else
      {
      }

      ++v56;
      sub_1E1302CD4(&qword_1EE1E3C40, &qword_1ECEB55C0, &unk_1E1B16B50, MEMORY[0x1E69AAEC8]);
      sub_1E1AF3CDC();
      v58 = v69;
      sub_1E1AF3CEC();

      __swift_destroy_boxed_opaque_existential_1(&v90);
      (*v55)(v58, v70);
      v50 = v57;
    }

    while (v51 != v56);

    v53 = v65;
    v52 = v66;
    v54 = v64;
    goto LABEL_41;
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1E185DFE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + qword_1EE2168A8);
  v3 = *(v2 + 240);
  if (v3 && *(v3 + 121) == 1)
  {
    if (a2 && (v4 = *(*(a2 + qword_1EE2168A8) + 304)) != 0)
    {
      v5 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v4 >> 62)
      {
        v23 = a2;
        v7 = sub_1E1AF71CC();
        a2 = v23;
        v6 = 0;
      }

      else
      {
        v6 = 0;
        v7 = *(v5 + 16);
      }
    }

    else
    {
      v7 = 0;
      v6 = 1;
    }

    v9 = *(v2 + 304);
    v10 = v9 == 0;
    if (v9)
    {
      if (v9 >> 62)
      {
        v21 = v7;
        v22 = a2;
        v17 = v6;
        v20 = v9 == 0;
        v19 = v9;
        v18 = sub_1E1AF71CC();
        v9 = v19;
        v10 = v20;
        v6 = v17;
        v11 = v18;
        v7 = v21;
        a2 = v22;
      }

      else
      {
        v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v11 = 0;
    }

    if (v9)
    {
      v12 = v7 == v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    if (v6)
    {
      v13 = v10;
    }

    v8 = v13 ^ 1;
    if (!a2)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v8 = 0;
    if (!a2)
    {
      goto LABEL_25;
    }
  }

  v14 = *(*(a2 + qword_1EE2168A8) + 240);
  if (!v14)
  {
LABEL_25:
    v24 = 0u;
    v25 = 0u;
    v15 = 1;
    goto LABEL_26;
  }

  sub_1E134FD1C(v14 + 144, &v24, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v15 = (*(&v25 + 1) == 0) | v8;
LABEL_26:
  sub_1E1308058(&v24, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  return v15 & 1;
}

void sub_1E185E168(unint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1E14C6348(MEMORY[0x1E69E7CC8]);
  v5 = v4;
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E1AF71CC())
  {
    v7 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1E68FFD80](v7, a1);
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_22;
      }

LABEL_9:
      sub_1E134E724(v8 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id, v37);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v5;
      v11 = sub_1E135FCF4(v37);
      v13 = v5[2];
      v14 = (v12 & 1) == 0;
      v15 = __OFADD__(v13, v14);
      v16 = v13 + v14;
      if (v15)
      {
        goto LABEL_24;
      }

      v17 = v12;
      if (v5[3] < v16)
      {
        sub_1E16889E4(v16, isUniquelyReferenced_nonNull_native);
        v11 = sub_1E135FCF4(v37);
        if ((v17 & 1) != (v18 & 1))
        {

          sub_1E1AF757C();
          __break(1u);
          return;
        }

LABEL_14:
        if (v17)
        {
          goto LABEL_4;
        }

        goto LABEL_15;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_14;
      }

      v22 = v11;
      sub_1E1415C9C();
      v11 = v22;
      v5 = v36;
      if (v17)
      {
LABEL_4:
        *(v5[7] + 8 * v11) = v8;

        sub_1E134B88C(v37);
        goto LABEL_5;
      }

LABEL_15:
      v5[(v11 >> 6) + 8] |= 1 << v11;
      v19 = v11;
      sub_1E134E724(v37, v5[6] + 40 * v11);
      *(v5[7] + 8 * v19) = v8;

      sub_1E134B88C(v37);
      v20 = v5[2];
      v15 = __OFADD__(v20, 1);
      v21 = v20 + 1;
      if (v15)
      {
        goto LABEL_25;
      }

      v5[2] = v21;
LABEL_5:
      ++v7;
      if (v9 == i)
      {
        goto LABEL_27;
      }
    }

    if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

    v8 = *(a1 + 8 * v7 + 32);

    v9 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_9;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:
  sub_1E1856620(v5);
  if (*(v23 + 16))
  {
    v24 = v23;
    type metadata accessor for JSIntentDispatcher();
    v25 = *(a2 + 16);
    sub_1E1AF421C();
    sub_1E1AF55EC();
    sub_1E1367B40(v24, v25, "AppStoreKit/ProductDiffablePageContentPresenter.swift", 53, 2);

    *(a2 + qword_1EE216528) = 1;
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    v27[2] = v5;
    v27[3] = v26;
    v27[4] = sub_1E185E5FC;
    v27[5] = a3;
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = swift_allocObject();
    v29[2] = v28;
    v29[3] = sub_1E185E5FC;
    v29[4] = a3;
    v30 = sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
    swift_retain_n();

    v31 = sub_1E1AF68EC();
    v37[3] = v30;
    v37[4] = MEMORY[0x1E69AB720];
    v37[0] = v31;
    sub_1E1AF57FC();

    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {

    sub_1E185E620();
    v32 = swift_allocError();
    *v33 = 0;
    sub_1E19A00A0(v32, 1, a3);
  }
}

unint64_t sub_1E185E620()
{
  result = qword_1ECEBA268;
  if (!qword_1ECEBA268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA268);
  }

  return result;
}

uint64_t sub_1E185E67C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA270, &qword_1E1B39720);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_1E185E6EC(uint64_t *a1)
{
  v3 = *(sub_1E1AEFEAC() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E185B050(a1, v5, v1 + v4, v6);
}

uint64_t objectdestroy_41Tm(void (*a1)(void), void (*a2)(void, __n128), uint64_t a3)
{
  a1(*(v3 + 16));

  (a2)(*(v3 + 40));

  return swift_deallocObject();
}

uint64_t sub_1E185E810(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E185E858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfBasedProductPageIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E185E8BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfBasedProductPageIntent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E185E920(uint64_t a1)
{
  v3 = *(type metadata accessor for ShelfBasedProductPageIntent(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E130B5DC;

  return sub_1E1375520(a1, v14, v13, v7, v1 + v4, v8, v9, v10);
}

uint64_t sub_1E185EA9C(uint64_t a1)
{
  v2 = type metadata accessor for ShelfBasedProductPageIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*TopChartSegment.mergingWith(_:)(uint64_t a1))(char *, char *, uint64_t)
{
  v2 = v1;
  v79 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28, &unk_1E1B11460);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v73 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v83 = &v72 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v72 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v86 = &v72 - v11;
  v81 = sub_1E1AF3C3C();
  v87 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v84 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v85 = &v72 - v14;
  v15 = *&v1[OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shortName + 8];
  v78 = *&v1[OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shortName];
  v16 = *&v1[OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_longName + 8];
  v76 = *&v1[OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_longName];
  v17 = OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfOrdering;
  swift_beginAccess();
  v18 = *&v2[v17];
  v19 = MEMORY[0x1E69E7CC0];
  v90[0] = MEMORY[0x1E69E7CC0];
  v20 = *(v18 + 16);
  v21 = OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfMapping;
  v75 = v16;

  v77 = v15;

  swift_beginAccess();
  if (!v20)
  {
    v82 = v19;
    goto LABEL_14;
  }

  v22 = 0;
  v23 = v18 + 32;
  v72 = v20 - 1;
  v82 = MEMORY[0x1E69E7CC0];
  v74 = v18 + 32;
  do
  {
    v24 = v23 + 40 * v22;
    v25 = v22;
    while (1)
    {
      if (v25 >= *(v18 + 16))
      {
        __break(1u);
        goto LABEL_38;
      }

      sub_1E134E724(v24, v91);
      if (*(*&v2[v21] + 16))
      {
        break;
      }

LABEL_4:
      ++v25;
      sub_1E134B88C(v91);
      v24 += 40;
      if (v20 == v25)
      {
        goto LABEL_14;
      }
    }

    sub_1E135FCF4(v91);
    if ((v26 & 1) == 0)
    {

      goto LABEL_4;
    }

    v27 = sub_1E134B88C(v91);
    MEMORY[0x1E68FEF20](v27);
    if (*((v90[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v22 = v25 + 1;
    sub_1E1AF62AC();
    v82 = v90[0];
    v23 = v74;
  }

  while (v72 != v25);
LABEL_14:

  v28 = OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfOrdering;
  swift_beginAccess();
  v18 = *(a1 + v28);
  v89[0] = v19;
  v29 = *(v18 + 16);
  v30 = OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfMapping;

  swift_beginAccess();
  if (!v29)
  {
LABEL_25:

    v91[0] = v82;
    sub_1E1728208(v19);
    v37 = v91[0];
    sub_1E134FD1C(a1 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_nextPage, v91, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v38 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v82 = *(v87 + 16);
    v39 = v85;
    v40 = v81;
    v82(v85, &v2[v38], v81);
    v74 = *&v2[OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent];
    v41 = sub_1E1AF39DC();
    v42 = *(v41 - 8);
    v43 = v86;
    (*(v42 + 56))(v86, 1, 1, v41);
    v44 = swift_allocObject();
    v45 = sub_1E175EC2C(v37);
    v47 = v46;

    *(v44 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfOrdering) = v45;
    *(v44 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfMapping) = v47;
    v48 = (v44 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shortName);
    v49 = v77;
    *v48 = v78;
    v48[1] = v49;
    v50 = (v44 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_longName);
    v51 = v75;
    *v50 = v76;
    v50[1] = v51;
    *(v44 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_isIncomplete) = 0;
    sub_1E134FD1C(v91, v44 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_nextPage, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v52 = v84;
    v53 = v39;
    v54 = v82;
    v82(v84, v53, v40);
    v19 = v80;
    sub_1E134FD1C(v43, v80, &qword_1ECEB3B28, &unk_1E1B11460);
    *(v44 + 16) = 0;
    v54(v44 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics, v52, v40);
    v82 = v44;
    *(v44 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v74;
    v55 = v83;
    sub_1E134FD1C(v19, v83, &qword_1ECEB3B28, &unk_1E1B11460);
    v78 = v42;
    v18 = *(v42 + 48);
    v79 = v41;
    if ((v18)(v55, 1, v41) != 1)
    {
      v2 = v40;
      v60 = qword_1EE1E3BC8;

      if (v60 != -1)
      {
        goto LABEL_39;
      }

      goto LABEL_28;
    }

    sub_1E1308058(v19, &qword_1ECEB3B28, &unk_1E1B11460);
    v56 = *(v87 + 8);
    v56(v52, v40);
    sub_1E1308058(v86, &qword_1ECEB3B28, &unk_1E1B11460);
    v56(v85, v40);
    sub_1E1308058(v91, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v57 = v55;
    v58 = &qword_1ECEB3B28;
    v59 = &unk_1E1B11460;
    goto LABEL_34;
  }

  v31 = 0;
  v32 = v18 + 32;
  v72 = v29 - 1;
  v19 = MEMORY[0x1E69E7CC0];
  v74 = v18 + 32;
LABEL_16:
  v33 = v32 + 40 * v31;
  v34 = v31;
  while (v34 < *(v18 + 16))
  {
    sub_1E134E724(v33, v91);
    if (*(*(a1 + v30) + 16))
    {

      sub_1E135FCF4(v91);
      if (v35)
      {

        v36 = sub_1E134B88C(v91);
        MEMORY[0x1E68FEF20](v36);
        if (*((v89[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E1AF625C();
        }

        v31 = v34 + 1;
        sub_1E1AF62AC();
        v19 = v89[0];
        v32 = v74;
        if (v72 != v34)
        {
          goto LABEL_16;
        }

        goto LABEL_25;
      }
    }

    ++v34;
    sub_1E134B88C(v91);
    v33 += 40;
    if (v29 == v34)
    {
      goto LABEL_25;
    }
  }

LABEL_38:
  __break(1u);
LABEL_39:
  swift_once();
LABEL_28:
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
  __swift_project_value_buffer(v61, qword_1EE1E3BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
  sub_1E1AF39EC();
  v62 = v88;
  v63 = v73;
  v64 = v87;
  v65 = v79;
  v66 = v78;
  if (v88)
  {
  }

  v67 = *(v66 + 8);
  v67(v83, v65);
  if (!v62)
  {
    sub_1E1308058(v19, &qword_1ECEB3B28, &unk_1E1B11460);
    v69 = *(v64 + 8);
    v69(v84, v2);
    sub_1E1308058(v86, &qword_1ECEB3B28, &unk_1E1B11460);
    v69(v85, v2);
    v58 = &qword_1ECEB2DF0;
    v59 = &unk_1E1B02CE0;
    v57 = v91;
LABEL_34:
    sub_1E1308058(v57, v58, v59);
    return v82;
  }

  sub_1E134FD1C(v19, v63, &qword_1ECEB3B28, &unk_1E1B11460);
  if ((v18)(v63, 1, v65) == 1)
  {
    sub_1E1308058(v19, &qword_1ECEB3B28, &unk_1E1B11460);
    v68 = *(v64 + 8);
    v68(v84, v2);
    sub_1E1308058(v86, &qword_1ECEB3B28, &unk_1E1B11460);
    v68(v85, v2);
    sub_1E1308058(v91, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v57 = v63;
    v58 = &qword_1ECEB3B28;
    v59 = &unk_1E1B11460;
    goto LABEL_34;
  }

  sub_1E15F0974();
  sub_1E1308058(v19, &qword_1ECEB3B28, &unk_1E1B11460);
  v71 = *(v64 + 8);
  v71(v84, v2);
  sub_1E1308058(v86, &qword_1ECEB3B28, &unk_1E1B11460);
  v71(v85, v2);
  sub_1E1308058(v91, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v67(v63, v65);
  return v82;
}

uint64_t TopChartSegment.__allocating_init(shortName:longName:shelves:isIncomplete:nextPage:pageRefreshPolicy:pageMetrics:pageRenderEvent:using:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  LODWORD(v67) = a6;
  v65 = a3;
  v66 = a4;
  v64 = a2;
  v69 = a10;
  v70 = a8;
  v71 = a9;
  v72 = a7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28, &unk_1E1B11460);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v63 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v68 = &v60 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v60 - v18;
  v20 = sub_1E1AF3C3C();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_allocObject();
  v25 = sub_1E175EC2C(a5);
  v27 = v26;

  *(v24 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfOrdering) = v25;
  *(v24 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfMapping) = v27;
  v28 = (v24 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shortName);
  v29 = v64;
  v30 = v65;
  *v28 = a1;
  v28[1] = v29;
  v31 = (v24 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_longName);
  v32 = v66;
  *v31 = v30;
  v31[1] = v32;
  *(v24 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_isIncomplete) = v67;
  sub_1E134FD1C(v72, v24 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_nextPage, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v33 = *(v21 + 16);
  v33(v23, v71, v20);
  sub_1E134FD1C(a11, v19, &qword_1ECEB3B28, &unk_1E1B11460);
  *(v24 + 16) = v70;
  v33((v24 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v23, v20);
  v34 = v68;
  *(v24 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v69;
  v35 = v19;
  v36 = v19;
  v37 = v34;
  sub_1E134FD1C(v36, v34, &qword_1ECEB3B28, &unk_1E1B11460);
  v38 = sub_1E1AF39DC();
  v66 = *(v38 - 8);
  v67 = v38;
  v39 = *(v66 + 48);
  if ((v39)(v37, 1) == 1)
  {
    sub_1E1308058(a11, &qword_1ECEB3B28, &unk_1E1B11460);
    v40 = *(v21 + 8);
    v40(v71, v20);
    sub_1E1308058(v72, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1308058(v35, &qword_1ECEB3B28, &unk_1E1B11460);
    v40(v23, v20);
    v41 = v37;
  }

  else
  {
    v60 = v39;
    v42 = v37;
    v62 = a11;
    v64 = v23;
    v65 = v21;
    v43 = v35;
    v44 = qword_1EE1E3BC8;

    if (v44 != -1)
    {
      swift_once();
    }

    v61 = v20;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
    __swift_project_value_buffer(v45, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
    sub_1E1AF39EC();
    v46 = v73;
    v48 = v66;
    v47 = v67;
    if (v73)
    {
    }

    v49 = *(v48 + 8);
    v49(v42, v47);
    if (!v46)
    {

      sub_1E1308058(v62, &qword_1ECEB3B28, &unk_1E1B11460);
      v55 = *(v65 + 8);
      v56 = v61;
      v55(v71, v61);
      sub_1E1308058(v72, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1308058(v43, &qword_1ECEB3B28, &unk_1E1B11460);
      v55(v64, v56);
      return v24;
    }

    v50 = v43;
    v51 = v43;
    v52 = v63;
    sub_1E134FD1C(v51, v63, &qword_1ECEB3B28, &unk_1E1B11460);
    if (v60(v52, 1, v47) != 1)
    {
      sub_1E15F0974();

      sub_1E1308058(v62, &qword_1ECEB3B28, &unk_1E1B11460);
      v57 = *(v65 + 8);
      v58 = v61;
      v57(v71, v61);
      sub_1E1308058(v72, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1308058(v50, &qword_1ECEB3B28, &unk_1E1B11460);
      v57(v64, v58);
      v49(v52, v47);
      return v24;
    }

    sub_1E1308058(v62, &qword_1ECEB3B28, &unk_1E1B11460);
    v53 = *(v65 + 8);
    v54 = v61;
    v53(v71, v61);
    sub_1E1308058(v72, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1308058(v50, &qword_1ECEB3B28, &unk_1E1B11460);
    v53(v64, v54);
    v41 = v52;
  }

  sub_1E1308058(v41, &qword_1ECEB3B28, &unk_1E1B11460);
  return v24;
}

uint64_t TopChartSegment.init(shortName:longName:shelves:isIncomplete:nextPage:pageRefreshPolicy:pageMetrics:pageRenderEvent:using:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  LODWORD(v61) = a6;
  v60 = a4;
  v57 = a2;
  v58 = a3;
  v62 = a10;
  v63 = a8;
  v64 = a9;
  v65 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28, &unk_1E1B11460);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v56 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v59 = &v55 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v55 - v19;
  v21 = sub_1E1AF3C3C();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1E175EC2C(a5);
  v27 = v26;

  *(v11 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfOrdering) = v25;
  *(v11 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfMapping) = v27;
  v28 = (v11 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shortName);
  v29 = v57;
  v30 = v58;
  *v28 = a1;
  v28[1] = v29;
  v31 = (v11 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_longName);
  v32 = v60;
  *v31 = v30;
  v31[1] = v32;
  *(v11 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_isIncomplete) = v61;
  sub_1E134FD1C(v65, v11 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_nextPage, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v33 = *(v22 + 16);
  v33(v24, v64, v21);
  sub_1E134FD1C(a11, v20, &qword_1ECEB3B28, &unk_1E1B11460);
  *(v11 + 16) = v63;
  v61 = v21;
  v33((v11 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v24, v21);
  v60 = v11;
  *(v11 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v62;
  v34 = v59;
  sub_1E134FD1C(v20, v59, &qword_1ECEB3B28, &unk_1E1B11460);
  v35 = sub_1E1AF39DC();
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  if (v37(v34, 1, v35) == 1)
  {
    sub_1E1308058(a11, &qword_1ECEB3B28, &unk_1E1B11460);
    v38 = *(v22 + 8);
    v39 = v61;
    v38(v64, v61);
    sub_1E1308058(v65, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1308058(v20, &qword_1ECEB3B28, &unk_1E1B11460);
    v38(v24, v39);
    v40 = v34;
  }

  else
  {
    v55 = a11;
    v57 = v24;
    v41 = qword_1EE1E3BC8;

    if (v41 != -1)
    {
      swift_once();
    }

    v58 = v22;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
    __swift_project_value_buffer(v42, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
    sub_1E1AF39EC();
    v43 = v66;
    v44 = v64;
    if (v66)
    {
    }

    v45 = *(v36 + 8);
    v45(v34, v35);
    if (!v43)
    {

      sub_1E1308058(v55, &qword_1ECEB3B28, &unk_1E1B11460);
      v49 = *(v58 + 8);
      v50 = v61;
      v49(v44, v61);
      sub_1E1308058(v65, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1308058(v20, &qword_1ECEB3B28, &unk_1E1B11460);
      v49(v57, v50);
      return v60;
    }

    v46 = v56;
    sub_1E134FD1C(v20, v56, &qword_1ECEB3B28, &unk_1E1B11460);
    if (v37(v46, 1, v35) != 1)
    {
      sub_1E15F0974();

      sub_1E1308058(v55, &qword_1ECEB3B28, &unk_1E1B11460);
      v51 = *(v58 + 8);
      v52 = v44;
      v53 = v61;
      v51(v52, v61);
      sub_1E1308058(v65, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1308058(v20, &qword_1ECEB3B28, &unk_1E1B11460);
      v51(v57, v53);
      v45(v46, v35);
      return v60;
    }

    sub_1E1308058(v55, &qword_1ECEB3B28, &unk_1E1B11460);
    v47 = *(v58 + 8);
    v48 = v61;
    v47(v44, v61);
    sub_1E1308058(v65, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1308058(v20, &qword_1ECEB3B28, &unk_1E1B11460);
    v47(v57, v48);
    v40 = v46;
  }

  sub_1E1308058(v40, &qword_1ECEB3B28, &unk_1E1B11460);
  return v60;
}

void *TopChartSegment.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v88 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90, &qword_1E1B00D30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v77 = &v74 - v6;
  v7 = sub_1E1AF5A6C();
  v78 = *(v7 - 8);
  v79 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v76 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v74 - v10;
  v92 = sub_1E1AF39DC();
  v89 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v82 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v75 = &v74 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v74 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v87 = &v74 - v19;
  v20 = sub_1E1AF380C();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v81 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v74 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v74 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v74 - v30;
  v84 = a1;
  sub_1E1AF381C();
  LOBYTE(a1) = sub_1E1AF370C();
  v80 = v21;
  v33 = *(v21 + 8);
  v32 = v21 + 8;
  v85 = v20;
  v33(v31, v20);
  v83 = v3;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_isIncomplete) = a1 & 1;
  v34 = MEMORY[0x1E69E7CC0];
  v86 = v33;
  if (a1)
  {
    if (qword_1EE1E3BC8 != -1)
    {
      swift_once();
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
    __swift_project_value_buffer(v35, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
    sub_1E1AF396C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
    v36 = swift_allocObject();
    *(v36 + 16) = v34;
    *&v90 = v36;
    if (qword_1EE1E3BC8 != -1)
    {
      swift_once();
    }

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
    __swift_project_value_buffer(v37, qword_1EE1E3BD0);
    sub_1E1AF395C();
  }

  v38 = v84;
  v39 = v87;
  v40 = v77;
  (*(v89 + 32))(v87, v17, v92);
  sub_1E1AF381C();
  sub_1E1AF374C();
  v86(v28, v85);
  v41 = v78;
  v42 = v79;
  if ((*(v78 + 48))(v40, 1, v79) == 1)
  {
    sub_1E1308058(v40, &qword_1ECEB1F90, &qword_1E1B00D30);
    v43 = v83;
    v44 = MEMORY[0x1E69E7CC0];
    *(v83 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfOrdering) = MEMORY[0x1E69E7CC0];
    v45 = sub_1E159D6F0(v44);
  }

  else
  {
    (*(v41 + 32))(v11, v40, v42);
    (*(v41 + 16))(v76, v11, v42);
    (*(v89 + 16))(v75, v39, v92);
    type metadata accessor for Shelf(0);
    v84 = v11;
    v46 = v41;
    sub_1E14FC394();
    v47 = sub_1E1AF631C();
    v48 = sub_1E175EC2C(v47);
    v45 = v49;

    (*(v46 + 8))(v84, v42);
    v50 = v83;
    *(v83 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfOrdering) = v48;
    v43 = v50;
  }

  v51 = v88;
  *(v43 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfMapping) = v45;
  sub_1E1AF381C();
  v52 = sub_1E1AF37CC();
  v54 = v53;
  v56 = v85;
  v55 = v86;
  v86(v25, v85);
  v57 = (v43 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shortName);
  *v57 = v52;
  v57[1] = v54;
  sub_1E1AF381C();
  v58 = sub_1E1AF37CC();
  v60 = v59;
  v55(v25, v56);
  v61 = (v43 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_longName);
  *v61 = v58;
  v61[1] = v60;
  sub_1E1AF381C();
  sub_1E1AF37EC();
  v55(v25, v56);
  v62 = (v43 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_nextPage);
  v63 = v91;
  *v62 = v90;
  v62[1] = v63;
  v64 = v81;
  (*(v80 + 16))(v81, v38, v56);
  v65 = v89;
  v66 = *(v89 + 16);
  v67 = v82;
  v88 = v32;
  v68 = v51;
  v69 = v51;
  v70 = v92;
  v66(v82, v69, v92);
  v71 = BasePage.init(deserializing:using:)(v64, v67);
  v72 = *(v65 + 8);
  v72(v68, v70);
  v55(v38, v56);
  v72(v87, v70);
  return v71;
}

uint64_t TopChartSegment.shortName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shortName);

  return v1;
}

uint64_t TopChartSegment.longName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_longName);

  return v1;
}

double TopChartSegment.applyShelfUpdates(_:)(uint64_t (*a1)(uint64_t))
{
  v3 = OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfMapping;
  swift_beginAccess();

  sub_1E14E6CA4(v4, a1);
  v6 = v5;

  *(v1 + v3) = v6;

  return result;
}

void TopChartSegment.appending(contentsOf:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28, &unk_1E1B11460);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v95 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v106 = &v95 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v105 = &v95 - v14;
  v102 = sub_1E1AF3C3C();
  v108 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v104 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v109 = &v95 - v17;
  ShelfBasedPage.shelves.getter(v4, &protocol witness table for TopChartSegment);
  v96 = v7;
  v101 = v10;
  if (v18 >> 62)
  {
    goto LABEL_50;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  v20 = &unk_1ECEF4000;
  v21 = &unk_1ECEF4000;
  v22 = MEMORY[0x1E69E7CC0];
  v107 = v4;
  if (v19 != 1)
  {
    goto LABEL_60;
  }

  v23 = OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfOrdering;
  swift_beginAccess();
  v103 = v23;
  v24 = *(a1 + v23);
  v113 = v22;
  v25 = v22;
  v26 = *(v24 + 16);
  v27 = OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfMapping;

  swift_beginAccess();
  if (v26)
  {
    v28 = 0;
    v29 = v24 + 32;
    v99 = v26 - 1;
    v25 = MEMORY[0x1E69E7CC0];
    v100 = v24 + 32;
LABEL_6:
    v30 = v29 + 40 * v28;
    v4 = v28;
    do
    {
      if (v4 >= *(v24 + 16))
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        v19 = sub_1E1AF71CC();
        goto LABEL_3;
      }

      sub_1E134E724(v30, v112);
      if (*(*(a1 + v27) + 16))
      {

        sub_1E135FCF4(v112);
        if (v31)
        {

          v32 = sub_1E134B88C(v112);
          MEMORY[0x1E68FEF20](v32);
          if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E1AF625C();
          }

          v28 = v4 + 1;
          sub_1E1AF62AC();
          v25 = v113;
          v33 = v99 == v4;
          v4 = v107;
          v21 = &unk_1ECEF4000;
          v29 = v100;
          if (v33)
          {
            goto LABEL_18;
          }

          goto LABEL_6;
        }
      }

      ++v4;
      sub_1E134B88C(v112);
      v30 += 40;
    }

    while (v26 != v4);
    v4 = v107;
    v21 = &unk_1ECEF4000;
  }

LABEL_18:

  v34 = v25 >> 62 ? sub_1E1AF71CC() : *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);

  v20 = &unk_1ECEF4000;
  v22 = MEMORY[0x1E69E7CC0];
  if (v34 != 1)
  {
    goto LABEL_60;
  }

  ShelfBasedPage.shelves.getter(v4, &protocol witness table for TopChartSegment);
  if (v35 >> 62)
  {
    v51 = v35;
    v36 = sub_1E1AF71CC();
    v35 = v51;
    if (v36)
    {
LABEL_23:
      v37 = __OFSUB__(v36, 1);
      v38 = v36 - 1;
      if (v37)
      {
        __break(1u);
      }

      else if ((v35 & 0xC000000000000001) == 0)
      {
        if ((v38 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v38 < *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v100 = *(v35 + 8 * v38 + 32);

          goto LABEL_28;
        }

        __break(1u);
        goto LABEL_58;
      }

      v100 = MEMORY[0x1E68FFD80](v38);
LABEL_28:

      v39 = *(a1 + v103);
      v113 = v22;
      v25 = v22;
      v40 = *(v39 + 16);

      swift_beginAccess();
      if (v40)
      {
        v41 = 0;
        v42 = v39 + 32;
        v99 = v40 - 1;
        v25 = MEMORY[0x1E69E7CC0];
        v103 = v39 + 32;
        do
        {
          v43 = v42 + 40 * v41;
          v4 = v41;
          while (1)
          {
            if (v4 >= *(v39 + 16))
            {
              goto LABEL_49;
            }

            sub_1E134E724(v43, v112);
            if (!*(*(a1 + v27) + 16))
            {
              goto LABEL_31;
            }

            sub_1E135FCF4(v112);
            if (v44)
            {
              break;
            }

LABEL_31:
            ++v4;
            sub_1E134B88C(v112);
            v43 += 40;
            if (v40 == v4)
            {
              v4 = v107;
              v21 = &unk_1ECEF4000;
              goto LABEL_42;
            }
          }

          v45 = sub_1E134B88C(v112);
          MEMORY[0x1E68FEF20](v45);
          if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E1AF625C();
          }

          v41 = v4 + 1;
          sub_1E1AF62AC();
          v25 = v113;
          v33 = v99 == v4;
          v4 = v107;
          v21 = &unk_1ECEF4000;
          v42 = v103;
        }

        while (!v33);
      }

LABEL_42:

      if (!(v25 >> 62))
      {
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

LABEL_59:

        v20 = &unk_1ECEF4000;
        v22 = MEMORY[0x1E69E7CC0];
        goto LABEL_60;
      }

LABEL_58:
      if (sub_1E1AF71CC())
      {
LABEL_44:
        if ((v25 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E68FFD80](0, v25);
        }

        else
        {
          if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170, &qword_1E1B06D90);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_1E1B06D70;
        *v112 = *(v100 + 24);

        sub_1E17285A0(v47);
        v48 = *v112;
        v112[0] = 100;
        v49 = Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v48, v112, 1, 2);

        v50 = v46;
        *(v46 + 32) = v49;

        goto LABEL_72;
      }

      goto LABEL_59;
    }
  }

  else
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36)
    {
      goto LABEL_23;
    }
  }

LABEL_60:
  ShelfBasedPage.shelves.getter(v4, &protocol witness table for TopChartSegment);
  v103 = v52;
  v53 = v20[376];
  swift_beginAccess();
  v54 = *(a1 + v53);
  v111[0] = v22;
  v55 = *(v54 + 16);
  v56 = v22;
  v57 = v21[377];

  swift_beginAccess();
  if (!v55)
  {
    goto LABEL_71;
  }

  v58 = 0;
  v59 = v54 + 32;
  v99 = v55 - 1;
  v56 = MEMORY[0x1E69E7CC0];
  v100 = v54 + 32;
  do
  {
    v60 = v59 + 40 * v58;
    v61 = v58;
    while (1)
    {
      if (v61 >= *(v54 + 16))
      {
        __break(1u);
        goto LABEL_85;
      }

      sub_1E134E724(v60, v112);
      if (*(*(a1 + v57) + 16))
      {
        break;
      }

LABEL_63:
      ++v61;
      sub_1E134B88C(v112);
      v60 += 40;
      if (v55 == v61)
      {
        goto LABEL_71;
      }
    }

    sub_1E135FCF4(v112);
    if ((v62 & 1) == 0)
    {

      goto LABEL_63;
    }

    v63 = sub_1E134B88C(v112);
    MEMORY[0x1E68FEF20](v63);
    if (*((v111[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v58 = v61 + 1;
    sub_1E1AF62AC();
    v56 = v111[0];
    v59 = v100;
  }

  while (v99 != v61);
LABEL_71:

  *v112 = v103;
  sub_1E1728208(v56);
  v50 = *v112;
LABEL_72:
  v64 = *(v2 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shortName + 8);
  v99 = *(v2 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shortName);
  v65 = *(v2 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_longName + 8);
  v98 = *(v2 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_longName);
  sub_1E134FD1C(a1 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_nextPage, v112, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v66 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v97 = *(v108 + 16);
  v58 = v102;
  v97(v109, v2 + v66, v102);
  v100 = *(v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent);
  v67 = sub_1E1AF39DC();
  v103 = *(v67 - 8);
  v68 = v105;
  (*(v103 + 56))(v105, 1, 1, v67);
  v69 = swift_allocObject();

  v70 = sub_1E175EC2C(v50);
  v72 = v71;

  *(v69 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfOrdering) = v70;
  *(v69 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfMapping) = v72;
  v73 = (v69 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shortName);
  *v73 = v99;
  v73[1] = v64;
  v74 = (v69 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_longName);
  *v74 = v98;
  v74[1] = v65;
  *(v69 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_isIncomplete) = 0;
  sub_1E134FD1C(v112, v69 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_nextPage, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v75 = v104;
  v76 = v69;
  v77 = v97;
  v97(v104, v109, v58);
  v78 = v68;
  v79 = v68;
  v80 = v106;
  sub_1E134FD1C(v79, v106, &qword_1ECEB3B28, &unk_1E1B11460);
  *(v76 + 16) = 0;
  v77(v76 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics, v75, v58);
  v107 = v76;
  *(v76 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v100;
  v55 = v101;
  sub_1E134FD1C(v80, v101, &qword_1ECEB3B28, &unk_1E1B11460);
  v56 = *(v103 + 48);
  v2 = v67;
  if (v56(v55, 1, v67) == 1)
  {

    sub_1E1308058(v80, &qword_1ECEB3B28, &unk_1E1B11460);
    v81 = *(v108 + 8);
    v81(v75, v58);
    sub_1E1308058(v78, &qword_1ECEB3B28, &unk_1E1B11460);
    v81(v109, v58);
    goto LABEL_80;
  }

  v82 = qword_1EE1E3BC8;

  if (v82 != -1)
  {
LABEL_85:
    swift_once();
  }

  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
  __swift_project_value_buffer(v83, qword_1EE1E3BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
  v84 = v55;
  sub_1E1AF39EC();
  v85 = v110;
  v55 = v96;
  v86 = v108;
  if (v110)
  {
  }

  v87 = *(v103 + 8);
  v87(v84, v2);
  if (!v85)
  {
    sub_1E1308058(v106, &qword_1ECEB3B28, &unk_1E1B11460);
    v93 = *(v86 + 8);
    v93(v104, v58);
    sub_1E1308058(v105, &qword_1ECEB3B28, &unk_1E1B11460);
    v93(v109, v58);
    v91 = &qword_1ECEB2DF0;
    v92 = &unk_1E1B02CE0;
    v90 = v112;
    goto LABEL_82;
  }

  v88 = v106;
  sub_1E134FD1C(v106, v55, &qword_1ECEB3B28, &unk_1E1B11460);
  if (v56(v55, 1, v2) == 1)
  {
    sub_1E1308058(v88, &qword_1ECEB3B28, &unk_1E1B11460);
    v89 = *(v86 + 8);
    v89(v104, v58);
    sub_1E1308058(v105, &qword_1ECEB3B28, &unk_1E1B11460);
    v89(v109, v58);
LABEL_80:
    sub_1E1308058(v112, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v90 = v55;
    v91 = &qword_1ECEB3B28;
    v92 = &unk_1E1B11460;
LABEL_82:
    sub_1E1308058(v90, v91, v92);
  }

  else
  {
    sub_1E15F0974();
    sub_1E1308058(v88, &qword_1ECEB3B28, &unk_1E1B11460);
    v94 = *(v86 + 8);
    v94(v104, v58);
    sub_1E1308058(v105, &qword_1ECEB3B28, &unk_1E1B11460);
    v94(v109, v58);
    sub_1E1308058(v112, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v87(v55, v2);
  }
}

uint64_t sub_1E1861D20()
{

  return sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_nextPage, &qword_1ECEB2DF0, &unk_1E1B02CE0);
}

uint64_t TopChartSegment.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_nextPage, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  return v0;
}

uint64_t TopChartSegment.__deallocating_deinit()
{
  TopChartSegment.deinit();

  return swift_deallocClassInstance();
}

double sub_1E1861F84(uint64_t (*a1)(uint64_t))
{
  v3 = OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfMapping;
  swift_beginAccess();

  sub_1E14E6CA4(v4, a1);
  v6 = v5;

  *(v1 + v3) = v6;

  return result;
}

void (*sub_1E1862010@<X0>(uint64_t *a1@<X0>, void (**a2)(char *, char *, uint64_t)@<X8>))(char *, char *, uint64_t)
{
  result = TopChartSegment.mergingWith(_:)(*a1);
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for TopChartSegment(uint64_t a1)
{
  result = qword_1ECEBA2D0;
  if (!qword_1ECEBA2D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *ArcadeSubscriptionStateAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  v30 = v4;
  v31 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF380C();
  v32 = *(v7 - 8);
  v8 = v32;
  MEMORY[0x1EEE9AC00](v7);
  v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  type metadata accessor for Action(0);
  sub_1E1AF381C();
  v13 = static Action.tryToMakeInstance(byDeserializing:using:)(v12, a2);
  v14 = *(v8 + 8);
  v14(v12, v7);
  v15 = v27;
  *(v27 + OBJC_IVAR____TtC11AppStoreKit29ArcadeSubscriptionStateAction_notSubscribedAction) = v13;
  sub_1E1AF381C();
  v16 = static Action.tryToMakeInstance(byDeserializing:using:)(v12, a2);
  v14(v12, v7);
  *(v15 + OBJC_IVAR____TtC11AppStoreKit29ArcadeSubscriptionStateAction_purchasingAction) = v16;
  sub_1E1AF381C();
  v17 = static Action.tryToMakeInstance(byDeserializing:using:)(v12, a2);
  v14(v12, v7);
  *(v15 + OBJC_IVAR____TtC11AppStoreKit29ArcadeSubscriptionStateAction_subscribedAction) = v17;
  sub_1E1AF381C();
  v18 = static Action.tryToMakeInstance(byDeserializing:using:)(v12, a2);
  v19 = v12;
  v20 = v30;
  v14(v19, v7);
  *(v15 + OBJC_IVAR____TtC11AppStoreKit29ArcadeSubscriptionStateAction_unknownAction) = v18;
  v21 = *(v32 + 16);
  v22 = v28;
  v32 = a1;
  v21(v28, a1, v7);
  v23 = v31;
  v24 = v29;
  (*(v31 + 16))(v29, a2, v20);
  v25 = Action.init(deserializing:using:)(v22, v24);
  (*(v23 + 8))(a2, v20);
  v14(v32, v7);
  return v25;
}

void *ArcadeSubscriptionStateAction.__allocating_init(notSubscribedAction:purchasingAction:subscribedAction:unknownAction:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a4;
  v9 = sub_1E1AEFEAC();
  v29 = *(v9 - 8);
  v30 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v29 - v13;
  v15 = sub_1E1AF3E1C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + OBJC_IVAR____TtC11AppStoreKit29ArcadeSubscriptionStateAction_notSubscribedAction) = a1;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit29ArcadeSubscriptionStateAction_purchasingAction) = a2;
  v20 = a5;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit29ArcadeSubscriptionStateAction_subscribedAction) = a3;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit29ArcadeSubscriptionStateAction_unknownAction) = v31;
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  (*(v16 + 16))(v18, a5, v15);
  v21 = sub_1E1AF46DC();
  (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
  v22 = (v19 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v22 = 0u;
  v22[1] = 0u;
  v23 = v19 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v37, &v34);
  if (*(&v35 + 1))
  {
    v24 = v35;
    *v23 = v34;
    *(v23 + 1) = v24;
    *(v23 + 4) = v36;
  }

  else
  {
    sub_1E1AEFE9C();
    v25 = sub_1E1AEFE7C();
    v27 = v26;
    (*(v29 + 8))(v11, v30);
    v32 = v25;
    v33 = v27;
    sub_1E1AF6F6C();
    sub_1E1308058(&v34, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  (*(v16 + 8))(v20, v15);
  sub_1E1308058(v37, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E134B7C8(v14, v19 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v19[2] = 0xD000000000000020;
  v19[3] = 0x80000001E1B79B40;
  v19[4] = 0;
  v19[5] = 0;
  (*(v16 + 32))(v19 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v18, v15);
  return v19;
}

void *ArcadeSubscriptionStateAction.init(notSubscribedAction:purchasingAction:subscribedAction:unknownAction:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v32 = a4;
  v11 = sub_1E1AEFEAC();
  v30 = *(v11 - 8);
  v31 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v30 - v15;
  v17 = sub_1E1AF3E1C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + OBJC_IVAR____TtC11AppStoreKit29ArcadeSubscriptionStateAction_notSubscribedAction) = a1;
  *(v6 + OBJC_IVAR____TtC11AppStoreKit29ArcadeSubscriptionStateAction_purchasingAction) = a2;
  *(v6 + OBJC_IVAR____TtC11AppStoreKit29ArcadeSubscriptionStateAction_subscribedAction) = a3;
  v21 = a5;
  *(v6 + OBJC_IVAR____TtC11AppStoreKit29ArcadeSubscriptionStateAction_unknownAction) = v32;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  (*(v18 + 16))(v20, a5, v17);
  v22 = sub_1E1AF46DC();
  (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
  v23 = (v6 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v23 = 0u;
  v23[1] = 0u;
  sub_1E138853C(v41, &v35);
  if (*(&v36 + 1))
  {
    v38 = v35;
    v39 = v36;
    v40 = v37;
  }

  else
  {
    sub_1E1AEFE9C();
    v24 = sub_1E1AEFE7C();
    v26 = v25;
    (*(v30 + 8))(v13, v31);
    v33 = v24;
    v34 = v26;
    sub_1E1AF6F6C();
    sub_1E1308058(&v35, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  (*(v18 + 8))(v21, v17);
  sub_1E1308058(v41, &unk_1ECEB5670, qword_1E1B03EC0);
  v27 = v6 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v27 + 4) = v40;
  v28 = v39;
  *v27 = v38;
  *(v27 + 1) = v28;
  sub_1E134B7C8(v16, v6 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v6[2] = 0xD000000000000020;
  v6[3] = 0x80000001E1B79B40;
  v6[4] = 0;
  v6[5] = 0;
  (*(v18 + 32))(v6 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v20, v17);
  return v6;
}

double sub_1E1862CE0()
{

  return result;
}

uint64_t ArcadeSubscriptionStateAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return v0;
}

uint64_t ArcadeSubscriptionStateAction.__deallocating_deinit()
{
  ArcadeSubscriptionStateAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArcadeSubscriptionStateAction(uint64_t a1)
{
  result = qword_1EE1E8F28;
  if (!qword_1EE1E8F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1862F80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA340, &qword_1E1B399E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E1B398F0;
  v1 = type metadata accessor for AlertAction(0);
  v2 = sub_1E18650B0(&qword_1ECEB4150, type metadata accessor for AlertAction);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for ArcadeAction(0);
  v4 = sub_1E18650B0(&qword_1ECEBA348, type metadata accessor for ArcadeAction);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for ArcadeLaunchAttributionAction(0);
  v6 = sub_1E18650B0(&qword_1ECEB7390, type metadata accessor for ArcadeLaunchAttributionAction);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for ArcadeSubscriptionStateAction(0);
  v8 = sub_1E18650B0(qword_1ECEB57B0, type metadata accessor for ArcadeSubscriptionStateAction);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  v9 = type metadata accessor for CancelPreorderAction(0);
  v10 = sub_1E18650B0(&qword_1ECEBA350, type metadata accessor for CancelPreorderAction);
  *(v0 + 96) = v9;
  *(v0 + 104) = v10;
  v11 = type metadata accessor for CompoundAction(0);
  v12 = sub_1E18650B0(&qword_1ECEBA358, type metadata accessor for CompoundAction);
  *(v0 + 112) = v11;
  *(v0 + 120) = v12;
  v13 = type metadata accessor for CopyTextAction(0);
  v14 = sub_1E18650B0(&qword_1ECEBA360, type metadata accessor for CopyTextAction);
  *(v0 + 128) = v13;
  *(v0 + 136) = v14;
  v15 = type metadata accessor for ExternalUrlAction(0);
  v16 = sub_1E18650B0(&qword_1ECEBA368, type metadata accessor for ExternalUrlAction);
  *(v0 + 144) = v15;
  *(v0 + 152) = v16;
  v17 = type metadata accessor for FlowBackAction(0);
  v18 = sub_1E18650B0(&qword_1ECEBA370, type metadata accessor for FlowBackAction);
  *(v0 + 160) = v17;
  *(v0 + 168) = v18;
  v19 = type metadata accessor for GameCenterDashboardAction(0);
  v20 = sub_1E18650B0(qword_1ECEB91C0, type metadata accessor for GameCenterDashboardAction);
  *(v0 + 176) = v19;
  *(v0 + 184) = v20;
  v21 = type metadata accessor for GameCenterPlayerProfileAction(0);
  v22 = sub_1E18650B0(&qword_1ECEB4210, type metadata accessor for GameCenterPlayerProfileAction);
  *(v0 + 192) = v21;
  *(v0 + 200) = v22;
  v23 = type metadata accessor for HttpAction(0);
  v24 = sub_1E18650B0(qword_1ECEB3A10, type metadata accessor for HttpAction);
  *(v0 + 208) = v23;
  *(v0 + 216) = v24;
  v25 = type metadata accessor for LocalAction(0);
  v26 = sub_1E18650B0(qword_1ECEB3888, type metadata accessor for LocalAction);
  *(v0 + 224) = v25;
  *(v0 + 232) = v26;
  v27 = type metadata accessor for OfferAction(0);
  v28 = sub_1E18650B0(&qword_1ECEB97A0, type metadata accessor for OfferAction);
  *(v0 + 240) = v27;
  *(v0 + 248) = v28;
  v29 = type metadata accessor for OfferAlertAction(0);
  v30 = sub_1E18650B0(&qword_1ECEBA378, type metadata accessor for OfferAlertAction);
  *(v0 + 256) = v29;
  *(v0 + 264) = v30;
  v31 = type metadata accessor for OfferStateAction(0);
  v32 = sub_1E18650B0(&qword_1ECEB4CA8, type metadata accessor for OfferStateAction);
  *(v0 + 272) = v31;
  *(v0 + 280) = v32;
  v33 = type metadata accessor for OpenAppAction(0);
  v34 = sub_1E18650B0(&qword_1ECEB7388, type metadata accessor for OpenAppAction);
  *(v0 + 288) = v33;
  *(v0 + 296) = v34;
  v35 = type metadata accessor for OpenGamesUIAction(0);
  v36 = sub_1E18650B0(&qword_1ECEBA380, type metadata accessor for OpenGamesUIAction);
  *(v0 + 304) = v35;
  *(v0 + 312) = v36;
  v37 = type metadata accessor for RateAction(0);
  v38 = sub_1E18650B0(qword_1ECEB9D00, type metadata accessor for RateAction);
  *(v0 + 320) = v37;
  *(v0 + 328) = v38;
  v39 = type metadata accessor for RateLimitedAction(0);
  v40 = sub_1E18650B0(qword_1ECEB9F98, type metadata accessor for RateLimitedAction);
  *(v0 + 336) = v39;
  *(v0 + 344) = v40;
  v41 = type metadata accessor for ReportConcernAction(0);
  v42 = sub_1E18650B0(&qword_1ECEB3EA8, type metadata accessor for ReportConcernAction);
  *(v0 + 352) = v41;
  *(v0 + 360) = v42;
  v43 = type metadata accessor for SearchAction(0);
  v44 = sub_1E18650B0(&qword_1ECEB6FB8, type metadata accessor for SearchAction);
  *(v0 + 368) = v43;
  *(v0 + 376) = v44;
  v45 = type metadata accessor for SearchAdAction(0);
  v46 = sub_1E18650B0(qword_1ECEB9928, type metadata accessor for SearchAdAction);
  *(v0 + 384) = v45;
  *(v0 + 392) = v46;
  v47 = type metadata accessor for SignInAction(0);
  v48 = sub_1E18650B0(&qword_1ECEBA388, type metadata accessor for SignInAction);
  *(v0 + 400) = v47;
  *(v0 + 408) = v48;
  v49 = type metadata accessor for SignOutAction(0);
  v50 = sub_1E18650B0(&qword_1ECEBA390, type metadata accessor for SignOutAction);
  *(v0 + 416) = v49;
  *(v0 + 424) = v50;
  v51 = type metadata accessor for ShareSheetAction(0);
  v52 = sub_1E18650B0(&qword_1ECEB9E08, type metadata accessor for ShareSheetAction);
  *(v0 + 432) = v51;
  *(v0 + 440) = v52;
  v53 = type metadata accessor for TabChangeAction(0);
  v54 = sub_1E18650B0(&qword_1ECEBA398, type metadata accessor for TabChangeAction);
  *(v0 + 448) = v53;
  *(v0 + 456) = v54;
  updated = type metadata accessor for UpdateAllAction(0);
  v56 = sub_1E18650B0(&qword_1ECEB39A0, type metadata accessor for UpdateAllAction);
  *(v0 + 464) = updated;
  *(v0 + 472) = v56;
  v57 = type metadata accessor for WriteReviewAction(0);
  v58 = sub_1E18650B0(qword_1ECEB4328, type metadata accessor for WriteReviewAction);
  *(v0 + 480) = v57;
  *(v0 + 488) = v58;
  v59 = type metadata accessor for UnhideAppAction(0);
  result = sub_1E18650B0(&qword_1ECEBA3A0, type metadata accessor for UnhideAppAction);
  *(v0 + 496) = v59;
  *(v0 + 504) = result;
  off_1ECEBA2E0 = v0;
  return result;
}

uint64_t sub_1E1863574()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8720, &unk_1E1B399F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CC0;
  *(inited + 32) = 0x69746341776F6C66;
  *(inited + 40) = 0xEA00000000006E6FLL;
  v1 = type metadata accessor for FlowAction(0);
  v2 = sub_1E18650B0(&qword_1ECEB3EB0, type metadata accessor for FlowAction);
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  v3 = sub_1E15A27DC(inited);
  swift_setDeallocating();
  result = sub_1E1308058(inited + 32, &qword_1ECEB8728, &unk_1E1B2D4A0);
  qword_1ECEBA2E8 = v3;
  return result;
}

uint64_t sub_1E1863654()
{
  if (qword_1ECEB1298 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECEBA2E8;
  v1 = qword_1ECEB1290;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = off_1ECEBA2E0;
  v3 = *(off_1ECEBA2E0 + 2);
  if (v3)
  {

    v4 = MEMORY[0x1E69E7CC0];
    v5 = 32;
    do
    {
      v17 = *&v2[v5];
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA330, &qword_1E1B399D8);
      v6 = sub_1E1AF5E8C();
      v8 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1E172F158(0, v4[2] + 1, 1, v4);
      }

      v10 = v4[2];
      v9 = v4[3];
      if (v10 >= v9 >> 1)
      {
        v4 = sub_1E172F158((v9 > 1), v10 + 1, 1, v4);
      }

      v4[2] = v10 + 1;
      v11 = &v4[4 * v10];
      v11[4] = v6;
      v11[5] = v8;
      *(v11 + 3) = v17;
      v5 += 16;
      --v3;
    }

    while (v3);

    if (v4[2])
    {
      goto LABEL_13;
    }

LABEL_15:
    v12 = MEMORY[0x1E69E7CC8];
    goto LABEL_16;
  }

  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_15;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB37A0, &unk_1E1B25790);
  v12 = sub_1E1AF72CC();
LABEL_16:
  *&v18 = v12;

  sub_1E18645CC(v13, 1, &v18);

  v14 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v18 = v0;
  sub_1E1864BA0(v14, sub_1E1865104, 0, isUniquelyReferenced_nonNull_native, &v18);

  result = v18;
  qword_1ECEBA2F0 = v18;
  return result;
}

double static AppStoreActionKinds.table.getter()
{
  if (qword_1ECEB12A0 != -1)
  {
    swift_once();
  }

  return result;
}

unint64_t sub_1E1863940()
{
  result = qword_1ECEBA2F8;
  if (!qword_1ECEBA2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA2F8);
  }

  return result;
}

double sub_1E1863994()
{
  if (qword_1ECEB12A0 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1E18639F0()
{
  if (qword_1ECEB12A0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECEBA2F0;

  v1 = sub_1E1AF501C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v0;
  sub_1E1864E20(v1, sub_1E1865104, 0, isUniquelyReferenced_nonNull_native, &v6);

  sub_1E1864958(v6);
  v4 = v3;

  return v4;
}

uint64_t sub_1E1863AF8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v96 = a2;
  v87 = a3;
  v4 = sub_1E1AF380C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v86 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1E1AF3FCC();
  v85 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v83 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA300, &qword_1E1B399A8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v90 = &v80 - v8;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA308, &qword_1E1B399B0);
  v92 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v80 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA310, &unk_1E1B399B8);
  v93 = *(v14 - 8);
  v94 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v84 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v80 - v17;
  v104 = sub_1E1AF39DC();
  v97 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v80 - v22;
  MEMORY[0x1EEE9AC00](v24);
  *&v98 = &v80 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v80 - v27;
  v29 = dynamic_cast_existential_2_conditional(a1, a1, MEMORY[0x1E69AAF28], MEMORY[0x1E69E6440]);
  if (v29)
  {
    v32 = v29;
    v91 = v30;
    v92 = v31;
    v33 = v96;
    __swift_project_boxed_opaque_existential_1Tm(v96, v96[3]);
    sub_1E1AF76AC();
    sub_1E1AF39BC();
    sub_1E1AF399C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA320, &qword_1E1B399C8);
    sub_1E1AF39FC();
    v34 = v94;
    v35 = *(v93 + 1);
    v35(v18, v94);
    v36 = v104;
    if (!v100)
    {
      v37 = sub_1E1864578();
      v100 = v89;
      v101 = v37;
      v38 = v84;
      sub_1E1AF399C();
      sub_1E1AF395C();
      v39 = v38;
      v36 = v104;
      v35(v39, v34);
      v40 = v97;
      (*(v97 + 8))(v28, v36);
      (*(v40 + 32))(v28, v98, v36);
    }

    __swift_project_boxed_opaque_existential_1Tm(v33, v33[3]);
    v42 = v97;
    v41 = v98;
    (*(v97 + 16))(v98, v28, v36);
    MEMORY[0x1E68FE9D0](v41);
    sub_1E1AF76BC();

    *&v102 = v32;
    *(&v102 + 1) = v91;
    v103 = v92;
    __swift_allocate_boxed_opaque_existential_0(&v100);
    v43 = v95;
    sub_1E1AF657C();
    if (v43)
    {
      (*(v42 + 8))(v28, v36);
      return __swift_deallocate_boxed_opaque_existential_1(&v100);
    }

    v98 = v102;
    v67 = v102;
    v68 = __swift_project_boxed_opaque_existential_1Tm(&v100, v102);
    v69 = v87;
    *(v87 + 24) = v98;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v69);
    (*(*(v67 - 8) + 16))(boxed_opaque_existential_0, v68, v67);
    (*(v42 + 8))(v28, v36);
    return __swift_destroy_boxed_opaque_existential_1(&v100);
  }

  v45 = v90;
  v93 = v10;
  v84 = v20;
  v47 = v91;
  v46 = v92;
  v94 = v23;
  v48 = v96;
  v49 = dynamic_cast_existential_2_conditional(a1, a1, MEMORY[0x1E69AAF28], MEMORY[0x1E69AB1C0]);
  if (v49)
  {
    v80 = v50;
    v81 = v51;
    v82 = v49;
    v52 = v48;
    __swift_project_boxed_opaque_existential_1Tm(v48, v48[3]);
    sub_1E1AF76AC();
    sub_1E1AF39BC();
    sub_1E1AF398C();
    v53 = v45;
    sub_1E1AF39FC();
    v54 = v47;
    v57 = *(v46 + 8);
    v55 = v46 + 8;
    v56 = v57;
    v57(v13, v88);
    v58 = v85;
    v59 = (*(v85 + 48))(v53, 1, v54);
    sub_1E1308058(v53, &qword_1ECEBA300, &qword_1E1B399A8);
    v60 = v97;
    if (v59 == 1)
    {
      sub_1E1864578();
      v92 = v55;
      v61 = v83;
      sub_1E1AF3FDC();
      v62 = v93;
      sub_1E1AF398C();
      v63 = v104;
      v64 = v98;
      v65 = v94;
      sub_1E1AF395C();
      v56(v62, v88);
      (*(v58 + 8))(v61, v91);
      (*(v60 + 8))(v65, v63);
      (*(v60 + 32))(v65, v64, v63);
    }

    sub_1E1300B24(v52, v99);
    v66 = v95;
    sub_1E1AF372C();
    if (v66)
    {
      return (*(v60 + 8))(v94, v104);
    }

    v75 = v94;
    (*(v60 + 16))(v84, v94, v104);
    *&v102 = v82;
    *(&v102 + 1) = v80;
    v103 = v81;
    __swift_allocate_boxed_opaque_existential_0(&v100);
    sub_1E1AF463C();
    v98 = v102;
    v76 = v102;
    v77 = __swift_project_boxed_opaque_existential_1Tm(&v100, v102);
    v78 = v87;
    *(v87 + 24) = v98;
    v79 = __swift_allocate_boxed_opaque_existential_0(v78);
    (*(*(v76 - 8) + 16))(v79, v77, v76);
    (*(v60 + 8))(v75, v104);
    return __swift_destroy_boxed_opaque_existential_1(&v100);
  }

  v71 = sub_1E1AF708C();
  swift_allocError();
  v73 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7710, &qword_1E1B29E10);
  *v73 = a1;
  __swift_project_boxed_opaque_existential_1Tm(v48, v48[3]);
  sub_1E1AF768C();
  v100 = 0;
  v101 = 0xE000000000000000;
  sub_1E1AF6FEC();

  v100 = 60;
  v101 = 0xE100000000000000;
  v74 = sub_1E1AF772C();
  MEMORY[0x1E68FECA0](v74);

  MEMORY[0x1E68FECA0](0xD000000000000012, 0x80000001E1B79BE0);
  sub_1E1AF707C();
  (*(*(v71 - 8) + 104))(v73, *MEMORY[0x1E69E6AF8], v71);
  return swift_willThrow();
}

unint64_t sub_1E1864578()
{
  result = qword_1ECEBA318;
  if (!qword_1ECEBA318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA318);
  }

  return result;
}

void sub_1E18645CC(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v37 = *(a1 + 48);
  v9 = *a3;

  v10 = sub_1E13018F8(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1E1692108(v15, v6 & 1);
    v10 = sub_1E13018F8(v8, v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1E1AF757C();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_1E141AD70();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0, qword_1E1B05740);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  *(v21[7] + 16 * v10) = v37;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1E1AF6FEC();
    MEMORY[0x1E68FECA0](0xD00000000000001BLL, 0x80000001E1B5E120);
    sub_1E1AF714C();
    MEMORY[0x1E68FECA0](39, 0xE100000000000000);
    sub_1E1AF71FC();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v4 != 1)
  {
    v6 = (a1 + 80);
    v25 = 1;
    while (v25 < *(a1 + 16))
    {
      v8 = *(v6 - 2);
      v7 = *(v6 - 1);
      v37 = *v6;
      v26 = *a3;

      v27 = sub_1E13018F8(v8, v7);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_1E1692108(v31, 1);
        v27 = sub_1E13018F8(v8, v7);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v8;
      v34[1] = v7;
      *(v33[7] + 16 * v27) = v37;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v25;
      v33[2] = v36;
      v6 += 2;
      if (v4 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void sub_1E1864958(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA328, &qword_1E1B399D0);
    v2 = sub_1E1AF72CC();
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
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
        v14 = *v12;
        v13 = v12[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA330, &qword_1E1B399D8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA338, &qword_1E1B399E0);
        swift_dynamicCast();
        v15 = sub_1E13018F8(v14, v13);
        if (v16)
        {
          v8 = (v2[6] + 16 * v15);
          *v8 = v14;
          v8[1] = v13;
          v9 = v15;

          *(v2[7] + 8 * v9) = v21;
          v7 = v10;
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

          *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
          v17 = (v2[6] + 16 * v15);
          *v17 = v14;
          v17[1] = v13;
          *(v2[7] + 8 * v15) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_21;
          }

          v2[2] = v20;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

double sub_1E1864B80@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v2;

  return result;
}

void sub_1E1864BA0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, __n128), uint64_t a3, char a4, void *a5)
{
  v43 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v37 = a4;
    v12 = v11;
LABEL_14:
    v14 = (v12 << 10) | (16 * __clz(__rbit64(v9)));
    v15 = *(a1 + 56);
    v16 = (*(a1 + 48) + v14);
    v17 = v16[1];
    v41[0] = *v16;
    v41[1] = v17;
    v42 = *(v15 + v14);

    (a2)(&v38, v41);

    v18 = v38;
    v19 = v39;
    v36 = v40;
    v20 = *v43;
    v22 = sub_1E13018F8(v38, v39);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_25;
    }

    v26 = v21;
    if (v20[3] >= v25)
    {
      if ((v37 & 1) == 0)
      {
        sub_1E141AD70();
      }
    }

    else
    {
      sub_1E1692108(v25, v37 & 1);
      v27 = sub_1E13018F8(v18, v19);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_27;
      }

      v22 = v27;
    }

    v9 &= v9 - 1;
    v29 = *v43;
    if (v26)
    {

      *(v29[7] + 16 * v22) = v36;
    }

    else
    {
      v29[(v22 >> 6) + 8] |= 1 << v22;
      v30 = (v29[6] + 16 * v22);
      *v30 = v18;
      v30[1] = v19;
      *(v29[7] + 16 * v22) = v36;
      v31 = v29[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_26;
      }

      v29[2] = v33;
    }

    a4 = 1;
    v11 = v12;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_1E1337ECC(a1);

      return;
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v37 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1E1AF757C();
  __break(1u);
}

void sub_1E1864E20(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, __n128), uint64_t a3, char a4, void *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v12 = v11;
LABEL_14:
    v14 = (v12 << 10) | (16 * __clz(__rbit64(v9)));
    v15 = *(a1 + 56);
    v16 = (*(a1 + 48) + v14);
    v17 = v16[1];
    v42[0] = *v16;
    v42[1] = v17;
    v43 = *(v15 + v14);

    (a2)(&v39, v42);

    v18 = v39;
    v19 = v40;
    v36 = v41;
    v20 = *v44;
    v22 = sub_1E13018F8(v39, v40);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_25;
    }

    v26 = v21;
    if (v20[3] >= v25)
    {
      if ((v38 & 1) == 0)
      {
        sub_1E141AD70();
      }
    }

    else
    {
      sub_1E1692108(v25, v38 & 1);
      v27 = sub_1E13018F8(v18, v19);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_27;
      }

      v22 = v27;
    }

    v9 &= v9 - 1;
    v29 = *v44;
    if (v26)
    {
      v37 = *(v29[7] + 16 * v22);

      *(v29[7] + 16 * v22) = v37;
    }

    else
    {
      v29[(v22 >> 6) + 8] |= 1 << v22;
      v30 = (v29[6] + 16 * v22);
      *v30 = v18;
      v30[1] = v19;
      *(v29[7] + 16 * v22) = v36;
      v31 = v29[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_26;
      }

      v29[2] = v33;
    }

    a4 = 1;
    v11 = v12;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_1E1337ECC(a1);

      return;
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1E1AF757C();
  __break(1u);
}

uint64_t sub_1E18650B0(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t RiverRow.Context.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  RiverRow.Context.init(_:)(a1);
  return v2;
}

uint64_t RiverRow.__allocating_init(context:number:origin:itemSize:interItemSpacing:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  v14 = swift_allocObject();
  RiverRow.init(context:number:origin:itemSize:interItemSpacing:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

void sub_1E18651D8(void *a1, uint64_t a2, int a3, int a4, int a5, int a6, uint64_t a7, double a8, double a9)
{
  v145 = a7;
  v116 = a6;
  v117 = a5;
  v138 = a4;
  v137 = a3;
  v136 = a1;
  v13 = *v9;
  v144 = sub_1E1AF745C();
  v14 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v143 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 88);
  v17 = *(v13 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v126 = sub_1E1AF6D9C();
  v142 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v134 = &v115 - v19;
  v135 = AssociatedTypeWitness;
  v20 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v21);
  v125 = &v115 - v22;
  v149 = v9;
  v23 = *(v9 + 2);
  v24 = v16[4];
  swift_unknownObjectRetain();
  v148 = v16;
  v25 = v24(v17, v16);
  swift_unknownObjectRelease();
  v139 = v25;
  v26 = v25 - 1;
  v27 = v25 < 1 || a9 <= COERCE_DOUBLE(1);
  v146 = v23;
  v147 = v17;
  if (v27)
  {
    v28 = v149;
    swift_beginAccess();
    v29 = *(v28 + 9);
    v30 = 1 << *(v29 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v29 + 64);
    v33 = (v30 + 63) >> 6;

    v34 = 0;
    while (v32)
    {
      v35 = v34;
LABEL_14:
      v36 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v152 = *(*(v29 + 56) + ((v35 << 9) | (8 * v36)));
      v37 = v152;
      swift_beginAccess();
      v38 = swift_getAssociatedTypeWitness();
      type metadata accessor for RiverViewRecycler(255, v38, v39, v40);
      v41 = v37;
      swift_getWitnessTable();
      sub_1E1AF1E2C();
      sub_1E1AF1E0C();
      swift_endAccess();
    }

    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v35 >= v33)
      {

        swift_beginAccess();
        swift_getAssociatedTypeWitness();
        sub_1E1AF5CCC();
        sub_1E1AF5CBC();
        swift_endAccess();
        return;
      }

      v32 = *(v29 + 64 + 8 * v35);
      ++v34;
      if (v32)
      {
        v34 = v35;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v42 = v148;
  v43 = v149[4];
  v44 = v149[6];
  v45 = v148 + 8;
  v46 = v148[8];
  swift_unknownObjectRetain();
  v133 = v45;
  v132 = v46;
  v46(&v153, v17, v42);
  swift_unknownObjectRelease();
  if (v153 == 1)
  {
    v47 = *(v149 + 3);
    v48 = __OFSUB__(v139, v47);
    v49 = v139 - v47;
    v50 = v137;
    if (v48)
    {
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    if (v49 < 0)
    {
      v48 = __OFSUB__(0, v49);
      v49 = -v49;
      if (v48)
      {
        goto LABEL_102;
      }
    }

    if (v49 >= v26)
    {
      v49 = v26;
    }

    v127 = v49 & ~(v49 >> 63);
  }

  else
  {
    v51 = a2;
    v52 = v148;
    v53 = v148[3];
    swift_unknownObjectRetain();
    v54 = v53(v17, v52);
    swift_unknownObjectRelease();
    if (!v54)
    {
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    v55 = *(v149 + 3);
    v56 = v139 / v54 * v55;
    if ((v139 / v54 * v55) >> 64 != v56 >> 63)
    {
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    v127 = v56 % v139;
    v17 = v147;
    v50 = v137;
    a2 = v51;
  }

  v57 = v43 + v44;
  v58 = a8 - v149[7];
  v59 = v58 / v57;
  if (COERCE__INT64(fabs(v58 / v57)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_95;
  }

  if (v59 <= -9.22337204e18)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  if (v59 >= 9.22337204e18)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v60 = v59;
  v61 = fmod(v58, v57);
  v62 = v61 + a9;
  v63 = -v61;
  if (v50)
  {
    v64 = -v57;
  }

  else
  {
    v64 = v57;
  }

  if (v50)
  {
    v65 = -v57;
  }

  else
  {
    v65 = v57 + a9;
  }

  if (v50)
  {
    v66 = v62;
  }

  else
  {
    v66 = v63;
  }

  v131 = *(*v23 + 104);
  v130 = v148 + 12;
  v120 = a2 + v139;
  v67 = __OFADD__(a2, v139);
  v119 = v67;
  v129 = v148 + 9;
  v128 = (v20 + 48);
  v124 = (v20 + 32);
  v123 = v148 + 11;
  v122 = (v20 + 8);
  v121 = (v142 + 1);
  v142 = (v14 + 104);
  v141 = (v14 + 8);
  v140 = *MEMORY[0x1E69E7048];
  v118 = v60;
  v68 = v60;
  while (1)
  {
    v73 = v66 <= v65;
    if (v50)
    {
      v73 = v65 <= v66;
    }

    if (!v73)
    {
      break;
    }

    swift_beginAccess();
    v152 = v68;
    v74 = swift_getAssociatedTypeWitness();
    sub_1E1AF5CEC();
    v75 = v151;
    if (v151)
    {
      swift_endAccess();
      if (v138)
      {
        v76 = 1;
      }

      else
      {
        v83 = [v75 layer];
        v84 = sub_1E1AF5DBC();
        v85 = [v83 animationForKey_];

        if (v85)
        {

          v76 = 0;
        }

        else
        {
          v76 = 1;
        }
      }
    }

    else
    {
      v77 = v17;
      swift_endAccess();
      swift_beginAccess();
      type metadata accessor for RiverViewRecycler(255, v74, v78, v79);
      swift_getWitnessTable();
      sub_1E1AF1E2C();
      sub_1E1AF1DFC();
      swift_endAccess();
      v80 = v148;
      v81 = v148[12];
      v75 = v151;
      swift_unknownObjectRetain();
      v81(v75, v77, v80);
      swift_unknownObjectRelease();
      v151 = v75;
      v152 = v68;
      swift_beginAccess();
      sub_1E1AF5CCC();
      sub_1E1AF5CFC();
      swift_endAccess();
      swift_unknownObjectRetain();
      v132(&v153, v77, v80);
      swift_unknownObjectRelease();
      if (v153 == 1)
      {
        if (v139 > 3)
        {
          v82 = &v68[v127];
          if (__OFADD__(v127, v68))
          {
            goto LABEL_93;
          }
        }

        else
        {
          v82 = v120;
          if (v119)
          {
            goto LABEL_94;
          }
        }
      }

      else
      {
        v82 = &v68[v127];
        if (__OFADD__(v127, v68))
        {
          goto LABEL_92;
        }
      }

      v86 = v82 % v139;
      v87 = v148;
      v88 = v148[9];
      swift_unknownObjectRetain();
      v89 = v134;
      v90 = v147;
      v88(v86, v147, v87);
      swift_unknownObjectRelease();
      v91 = v135;
      if ((*v128)(v89, 1, v135) == 1)
      {
        (*v121)(v89, v126);
      }

      else
      {
        v92 = v125;
        (*v124)(v125, v89, v91);
        v93 = v148;
        v94 = v148[11];
        swift_unknownObjectRetain();
        v94(v92, v86, v75, v90, v93);
        swift_unknownObjectRelease();
        (*v122)(v92, v91);
      }

      v76 = 1;
      v50 = v137;
    }

    v95 = [v75 superview];
    if (v95)
    {

      if ((v76 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      [v136 addSubview_];
    }

    v69 = v149[5];
    v70 = v149[8];
    v71 = v143;
    v72 = v144;
    (*v142)(v143, v140, v144);
    CGPoint.rounded(_:)(v71, v66, v70);
    (*v141)(v71, v72);
    [v75 setFrame_];
LABEL_45:

    v66 = v64 + v66;
    v48 = __OFADD__(v68++, 1);
    v17 = v147;
    if (v48)
    {
      goto LABEL_90;
    }
  }

  if ((v116 & 1) == 0)
  {
    if (v68 >= v118)
    {
      v96 = v149;
      swift_beginAccess();
      v97 = *(v96 + 9);
      v98 = v97 + 64;
      v99 = 1 << v97[32];
      v100 = -1;
      if (v99 < 64)
      {
        v100 = ~(-1 << v99);
      }

      v101 = v100 & *(v97 + 8);
      v144 = *(*v146 + 104);
      v102 = (v99 + 63) >> 6;

      v103 = 0;
      v143 = v97;
      while (v101)
      {
LABEL_80:
        v108 = __clz(__rbit64(v101));
        v101 &= v101 - 1;
        v109 = (v103 << 9) | (8 * v108);
        v110 = *(*(v97 + 6) + v109);
        v111 = *(*(v97 + 7) + v109);
        if (v110 >= v118 && v110 < v68)
        {
          if (v117)
          {
            v113 = v111;
            v114 = [v113 layer];
            [v114 removeAllAnimations];
          }
        }

        else
        {
          v152 = *(*(v97 + 7) + v109);
          swift_beginAccess();
          v145 = swift_getAssociatedTypeWitness();
          type metadata accessor for RiverViewRecycler(255, v145, v104, v105);
          v106 = v111;
          swift_getWitnessTable();
          sub_1E1AF1E2C();
          sub_1E1AF1E0C();
          swift_endAccess();
          v150 = v110;
          swift_beginAccess();
          sub_1E1AF5CCC();
          v97 = v143;
          sub_1E1AF5C8C();
          swift_endAccess();
        }
      }

      while (1)
      {
        v107 = v103 + 1;
        if (__OFADD__(v103, 1))
        {
          goto LABEL_91;
        }

        if (v107 >= v102)
        {

          return;
        }

        v101 = *&v98[8 * v107];
        ++v103;
        if (v101)
        {
          v103 = v107;
          goto LABEL_80;
        }
      }
    }

LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
  }
}

uint64_t RiverRowLayoutStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

void *RiverRow.Context.init(_:)(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for RiverViewRecycler(0, AssociatedTypeWitness, v4, v5);
  swift_getWitnessTable();
  sub_1E1AF1E1C();
  *(v1 + 16) = a1;
  return v1;
}

char *RiverRow.Context.deinit()
{
  swift_unknownObjectRelease();
  v1 = *(*v0 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for RiverViewRecycler(255, AssociatedTypeWitness, v3, v4);
  swift_getWitnessTable();
  v5 = sub_1E1AF1E2C();
  (*(*(v5 - 8) + 8))(v0 + v1, v5);
  return v0;
}

uint64_t RiverRow.Context.__deallocating_deinit()
{
  RiverRow.Context.deinit();

  return swift_deallocClassInstance();
}

uint64_t RiverRow.init(context:number:origin:itemSize:interItemSpacing:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = MEMORY[0x1E69E6530];
  swift_getTupleTypeMetadata2();
  v17 = sub_1E1AF627C();
  v19 = sub_1E1694F24(v17, v16, AssociatedTypeWitness, MEMORY[0x1E69E6540], v18);

  *(v7 + 72) = v19;
  *(v7 + 56) = a3;
  *(v7 + 64) = a4;
  *(v7 + 32) = a5;
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return v7;
}

double RiverRow.items.getter()
{
  swift_beginAccess();

  return result;
}

void sub_1E18664DC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 88);
  v4 = *(v3 + 80);
  v5 = *(*a1 + 80);
  swift_unknownObjectRetain();
  v6 = v4(v5, v3);
  swift_unknownObjectRelease();
  *a2 = v6;
}

uint64_t RiverRow.deinit()
{

  return v0;
}

uint64_t RiverRow.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1E1866604()
{
  result = qword_1ECEBA3A8;
  if (!qword_1ECEBA3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA3A8);
  }

  return result;
}

uint64_t sub_1E18667E4(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for RiverViewRecycler(255, AssociatedTypeWitness, v2, v3);
  swift_getWitnessTable();
  result = sub_1E1AF1E2C();
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1E186692C(void *a1)
{
  v2 = [a1 layer];
  [v2 removeAllAnimations];

  return [a1 setHidden_];
}

id sub_1E1866994(void *a1)
{
  v2 = [a1 layer];
  [v2 removeAllAnimations];

  return [a1 removeFromSuperview];
}

void sub_1E1866A08(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 72);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(v2 + 56) + ((v8 << 9) | (8 * v9)));
    v11 = [v10 layer];
    [v11 removeAllAnimations];
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

AppStoreKit::TopShelfInsetItem::TintStyle_optional __swiftcall TopShelfInsetItem.TintStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

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

  *v2 = v5;
  return result;
}

uint64_t TopShelfInsetItem.TintStyle.rawValue.getter()
{
  if (*v0)
  {
    return 1802658148;
  }

  else
  {
    return 0x746867696CLL;
  }
}

void sub_1E1866BD8(char *a2@<X8>)
{
  v3 = sub_1E1AF72FC();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void *TopShelfInsetItem.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v32 = a2;
  v5 = sub_1E1AF39DC();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF380C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v31 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  sub_1E1AF381C();
  v13 = sub_1E1AF37CC();
  v15 = v14;
  v16 = *(v8 + 8);
  v16(v12, v7);
  v17 = (v3 + OBJC_IVAR____TtC11AppStoreKit17TopShelfInsetItem_heading);
  *v17 = v13;
  v17[1] = v15;
  sub_1E1AF381C();
  v18 = sub_1E1AF37CC();
  v20 = v19;
  v16(v12, v7);
  v21 = (v3 + OBJC_IVAR____TtC11AppStoreKit17TopShelfInsetItem_subheading);
  *v21 = v18;
  v21[1] = v20;
  v22 = v32;
  sub_1E1AF381C();
  sub_1E1866FC4();
  sub_1E1AF369C();
  v16(v12, v7);
  *(v3 + OBJC_IVAR____TtC11AppStoreKit17TopShelfInsetItem_tintStyle) = v37;
  v23 = *(v8 + 16);
  v24 = v31;
  v33 = a1;
  v23(v31, a1, v7);
  v25 = v36;
  v26 = v35;
  v27 = v34;
  (*(v35 + 16))(v34, v22, v36);
  v28 = TopShelfItem.init(deserializing:using:)(v24, v27);
  (*(v26 + 8))(v22, v25);
  v16(v33, v7);
  return v28;
}

unint64_t sub_1E1866FC4()
{
  result = qword_1ECEBA3B0;
  if (!qword_1ECEBA3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA3B0);
  }

  return result;
}

uint64_t TopShelfInsetItem.heading.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit17TopShelfInsetItem_heading);

  return v1;
}

uint64_t TopShelfInsetItem.subheading.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit17TopShelfInsetItem_subheading);

  return v1;
}

double sub_1E18670A4()
{

  return result;
}

void *TopShelfInsetItem.deinit()
{
  v0 = TopShelfItem.deinit();

  return v0;
}

uint64_t TopShelfInsetItem.__deallocating_deinit()
{
  TopShelfItem.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1E18671E0()
{
  result = qword_1ECEBA3B8;
  if (!qword_1ECEBA3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA3B8);
  }

  return result;
}

uint64_t type metadata accessor for TopShelfInsetItem(uint64_t a1)
{
  result = qword_1ECEBA3C0;
  if (!qword_1ECEBA3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1867398()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1EE215480);
  __swift_project_value_buffer(v4, qword_1EE215480);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

uint64_t sub_1E1867584()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1EE216170);
  __swift_project_value_buffer(v4, qword_1EE216170);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

uint64_t sub_1E18676D8()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1EE1E35C8);
  __swift_project_value_buffer(v4, qword_1EE1E35C8);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

uint64_t sub_1E1867850()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1ECEBA3D0);
  __swift_project_value_buffer(v4, qword_1ECEBA3D0);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

uint64_t sub_1E1867A58@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1E1AF591C();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1E1867B1C()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1ECEF4BF8);
  __swift_project_value_buffer(v4, qword_1ECEF4BF8);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

uint64_t Conditional<>.value(in:rounded:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E1AF745C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v12 = a1;
  (*(*v10 + 104))(&v13, &v12, v7);
  (*(v6 + 16))(v9, a2, v5);
  result = (*(v6 + 88))(v9, v5);
  if (result != *MEMORY[0x1E69E7038] && result != *MEMORY[0x1E69E7030] && result != *MEMORY[0x1E69E7040] && result != *MEMORY[0x1E69E7048] && result != *MEMORY[0x1E69E7020] && result != *MEMORY[0x1E69E7028])
  {
    sub_1E1AF655C();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

unint64_t sub_1E1867E84(uint64_t a1)
{
  sub_1E1AF6FEC();

  v3 = (*(*a1 + 96))(v2);
  MEMORY[0x1E68FECA0](v3);

  MEMORY[0x1E68FECA0](41, 0xE100000000000000);
  return 0xD000000000000029;
}

uint64_t sub_1E1867F34()
{
  if (*(v0 + 16))
  {

    sub_1E1AF6FEC();
    MEMORY[0x1E68FECA0](0x79747265706F7270, 0xEA0000000000203ALL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA408, &qword_1E1B39F08);
    sub_1E1AF714C();
    MEMORY[0x1E68FECA0](0xD000000000000010, 0x80000001E1B79E10);
    v1 = sub_1E1AF654C();
    MEMORY[0x1E68FECA0](v1);

    MEMORY[0x1E68FECA0](0xD000000000000011, 0x80000001E1B79E30);
    v2 = sub_1E1AF654C();
    MEMORY[0x1E68FECA0](v2);

    MEMORY[0x1E68FECA0](0x656372756F73202CLL, 0xEA0000000000203ALL);
    sub_1E1AF105C();
    sub_1E1AF714C();
  }

  else
  {
    sub_1E1AF6FEC();
    MEMORY[0x1E68FECA0](0x746E6174736E6F63, 0xEA0000000000203ALL);
    v3 = sub_1E1AF654C();
    MEMORY[0x1E68FECA0](v3);

    MEMORY[0x1E68FECA0](0x656372756F73202CLL, 0xEA0000000000203ALL);
    sub_1E1AF105C();
    sub_1E1AF714C();
  }

  return 0;
}

double sub_1E1868174(void *a1, double a2)
{
  if (*(v2 + 16))
  {
    v11[0] = a1;

    swift_unknownObjectRetain();
    swift_getAtKeyPath();
    swift_unknownObjectRelease();
  }

  v4 = qword_1EE1EEF80;
  v5 = [a1 traitCollection];
  v6 = sub_1E1AF105C();
  v11[3] = v6;
  v11[4] = MEMORY[0x1E69AB870];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v2 + v4, v6);
  sub_1E1AF054C();
  v9 = v8;

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v9;
}

uint64_t sub_1E18682A0()
{

  v1 = qword_1EE1EEF80;
  v2 = sub_1E1AF105C();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_1E1868310()
{

  v1 = qword_1EE1EEF80;
  v2 = sub_1E1AF105C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double Conditional<>.rawValue(in:)(uint64_t a1)
{
  v2 = *v1;
  v4 = a1;
  (*(*v2 + 104))(&v5, &v4);
  return v5;
}

{
  v2 = *v1;
  v4 = a1;
  (*(*v2 + 104))(&v5, &v4);
  return v5;
}

void Conditional<>.languageAwareOutsets(compatibleWith:)(uint64_t a1)
{
  if (**v1 == &off_1EE1EEED8)
  {

    v2 = sub_1E1AF104C();
    sub_1E1AF6BAC();
  }
}

double sub_1E1868524(uint64_t a1)
{
  v2 = *v1;
  v5 = a1;
  v3 = *(*v2 + 104);

  v3(&v6, &v5);

  return v6;
}

void sub_1E1868598(uint64_t a1)
{
  if (**v1 == &off_1EE1EEED8)
  {

    v2 = sub_1E1AF104C();
    sub_1E1AF6BAC();
  }
}

uint64_t sub_1E186866C()
{
  v1 = *v0;
  strcpy(v4, "Conditional(");
  BYTE5(v4[1]) = 0;
  HIWORD(v4[1]) = -5120;
  v2 = (*(*v1 + 96))();
  MEMORY[0x1E68FECA0](v2);

  MEMORY[0x1E68FECA0](41, 0xE100000000000000);
  return v4[0];
}

id sub_1E1868714@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 traitCollection];
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for DimensionExpression(uint64_t a1)
{
  result = qword_1EE1EEEB0;
  if (!qword_1EE1EEEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E18687A8@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  KeyPath = swift_getKeyPath(a2);
  type metadata accessor for DimensionExpression(0);
  v10 = swift_allocObject();
  *(v10 + 16) = KeyPath;
  *(v10 + 24) = a4;
  *(v10 + 32) = a5;
  v11 = qword_1EE1EEF80;
  v12 = sub_1E1AF105C();
  result = (*(*(v12 - 8) + 32))(v10 + v11, a1, v12);
  *a3 = v10;
  return result;
}

uint64_t Conditional<>.init(regularConstant:compactConstant:regularSource:compactSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_1E1AF105C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v12 + 24) & ~v12;
  v14 = (*(v11 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v12 + v14 + 8) & ~v12;
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  v17 = *(v11 + 32);
  v17(v16 + v13, a1, v10);
  *(v16 + v14) = a5;
  v17(v16 + v15, a2, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B20, &unk_1E1B41630);
  result = swift_allocObject();
  *(result + 16) = sub_1E1868AF0;
  *(result + 24) = v16;
  *a3 = result;
  return result;
}

uint64_t sub_1E18689B0@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>)
{
  v9 = [*a1 traitCollection];
  if (sub_1E1AF696C())
  {
    v10 = sub_1E1AF105C();
    v18 = v10;
    v19 = MEMORY[0x1E69AB870];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
    (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, a2, v10);
  }

  else
  {
    v12 = sub_1E1AF105C();
    v18 = v12;
    v19 = MEMORY[0x1E69AB870];
    v13 = __swift_allocate_boxed_opaque_existential_0(v17);
    (*(*(v12 - 8) + 16))(v13, a3, v12);
  }

  sub_1E1AF054C();
  v15 = v14;

  result = __swift_destroy_boxed_opaque_existential_1(v17);
  *a4 = v15;
  return result;
}

uint64_t sub_1E1868AF0@<X0>(id *a1@<X0>, double *a2@<X8>)
{
  v5 = *(sub_1E1AF105C() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 24) & ~v6;
  v8 = v2 + ((v6 + ((*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v6);

  return sub_1E18689B0(a1, v2 + v7, v8, a2);
}

uint64_t Conditional<>.init(roundedCornersConstant:nonRoundedCornersConstant:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  HasRoundedCorners = JUScreenClassHasRoundedCorners(a1, a2);
  type metadata accessor for DimensionExpression(0);
  v10 = swift_allocObject();
  v11 = v10;
  *(v10 + 16) = 0;
  if (HasRoundedCorners)
  {
    v12 = a4;
  }

  else
  {
    v12 = a5;
  }

  *(v10 + 24) = v12;
  *(v10 + 32) = v12;
  v13 = qword_1EE1EEF80;
  v14 = sub_1E1AF105C();
  result = (*(*(v14 - 8) + 32))(v11 + v13, a1, v14);
  *a3 = v11;
  return result;
}

uint64_t Conditional<>.init(whenOneOf:useConstant:otherwiseUse:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  Main = JUScreenClassGetMain(a1, a2);
  v11 = sub_1E14AB290(Main, a1);

  type metadata accessor for DimensionExpression(0);
  v12 = swift_allocObject();
  v13 = v12;
  *(v12 + 16) = 0;
  if (v11)
  {
    v14 = a4;
  }

  else
  {
    v14 = a5;
  }

  *(v12 + 24) = v14;
  *(v12 + 32) = v14;
  v15 = qword_1EE1EEF80;
  v16 = sub_1E1AF105C();
  result = (*(*(v16 - 8) + 32))(v13 + v15, a2, v16);
  *a3 = v13;
  return result;
}

uint64_t Conditional<>.anyDimension.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = &type metadata for AnyDimensionWrapper;
  a1[4] = sub_1E1868D7C();
  *a1 = v3;
}

unint64_t sub_1E1868D7C()
{
  result = qword_1EE1EF2D0;
  if (!qword_1EE1EF2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1EF2D0);
  }

  return result;
}

uint64_t sub_1E1868DD0(uint64_t a1)
{
  result = sub_1E1AF105C();
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

void sub_1E1868E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = *(a1 + 16);
  if (!v42)
  {
LABEL_44:
    swift_beginAccess();

    sub_1E1AF586C();

    return;
  }

  v3 = 0;
  v41 = a1 + 32;
  while (1)
  {
    v7 = (v41 + 56 * v3);
    v8 = v7[1];
    if (!v8)
    {
      goto LABEL_6;
    }

    v9 = *v7;
    v6 = v7[2];
    v5 = v7[3];
    v10 = v7[5];
    v11 = v7[6];
    v44 = v7[4];
    if (!*(v10 + 16))
    {

LABEL_19:
      v18 = 0;
      goto LABEL_21;
    }

    sub_1E1AF762C();

    sub_1E1AF5F0C();
    v12 = sub_1E1AF767C();
    v13 = -1 << *(v10 + 32);
    v14 = v12 & ~v13;
    if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_19;
    }

    v15 = ~v13;
    while (1)
    {
      v16 = (*(v10 + 48) + 16 * v14);
      v17 = *v16 == v9 && v8 == v16[1];
      if (v17 || (sub_1E1AF74AC() & 1) != 0)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v18 = 1;
LABEL_21:
    v43 = v6;
    if (*(v11 + 16))
    {
      v19 = v5;
      sub_1E1AF762C();

      sub_1E1AF5F0C();
      v20 = sub_1E1AF767C();
      v21 = -1 << *(v11 + 32);
      v22 = v20 & ~v21;
      if ((*(v11 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (*(v11 + 48) + 16 * v22);
          v25 = *v24 == v9 && v8 == v24[1];
          if (v25 || (sub_1E1AF74AC() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v11 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = *(a3 + 16);
        *(a3 + 16) = 0x8000000000000000;
        sub_1E159B6E8(1, v9, v8, isUniquelyReferenced_nonNull_native);
        *(a3 + 16) = v45;
        goto LABEL_4;
      }

LABEL_30:

      v5 = v19;
      v6 = v43;
    }

    if (!v18)
    {
      goto LABEL_5;
    }

    v19 = v5;
    swift_beginAccess();
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(a3 + 16);
    *(a3 + 16) = 0x8000000000000000;
    v29 = sub_1E13018F8(v9, v8);
    v30 = v27[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      break;
    }

    v33 = v28;
    if (v27[3] >= v32)
    {
      if (v26)
      {
        if ((v28 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        sub_1E1419E9C();
        if ((v33 & 1) == 0)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      sub_1E1690408(v32, v26);
      v34 = sub_1E13018F8(v9, v8);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_47;
      }

      v29 = v34;
      if ((v33 & 1) == 0)
      {
LABEL_36:
        v27[(v29 >> 6) + 8] |= 1 << v29;
        v36 = (v27[6] + 16 * v29);
        *v36 = v9;
        v36[1] = v8;
        *(v27[7] + v29) = 0;
        v37 = v27[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_46;
        }

        v27[2] = v39;

        goto LABEL_41;
      }
    }

    *(v27[7] + v29) = 0;
LABEL_41:
    *(a3 + 16) = v27;
LABEL_4:
    swift_endAccess();
    v5 = v19;
    v6 = v43;
LABEL_5:
    sub_1E1869DB8(v9, v8, v6, v5, v44, v10, v11);
LABEL_6:
    if (++v3 == v42)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  sub_1E1AF757C();
  __break(1u);
}

double sub_1E18692EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((sub_1E1AF57BC() & 1) == 0)
  {
    if (a4)
    {
      v11 = a4;
      if (qword_1EE1E35B0 != -1)
      {
        swift_once();
      }

      v12 = sub_1E1AF591C();
      __swift_project_value_buffer(v12, qword_1EE216158);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
      sub_1E1AF382C();
      swift_getErrorValue();
      v15[3] = v14;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
      (*(*(v14 - 8) + 16))(boxed_opaque_existential_0);
      sub_1E1AF38BC();
      sub_1E13E44F8(v15);
      sub_1E1AF54AC();

      sub_1E1AF584C();
    }

    else
    {

      sub_1E1AF586C();
    }
  }

  return result;
}

void sub_1E1869578(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80, &unk_1E1B02B80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1E1B02CC0;
    v11 = a4;
    sub_1E1AF6FEC();
    MEMORY[0x1E68FECA0](0xD000000000000031, 0x80000001E1B79E80);
    v83 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0, qword_1E1B05740);
    sub_1E1AF714C();
    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 32) = 0;
    *(v10 + 40) = 0xE000000000000000;
    sub_1E1AF760C();

    sub_1E1AF584C();

    return;
  }

  v12 = a6;
  v76 = a7;
  v71 = a8;
  v72 = a5;
  v14 = *(isUniquelyReferenced_nonNull_native + 16);
  v73 = isUniquelyReferenced_nonNull_native;
  v74 = a3;
  v79 = a6;
  if (!v14)
  {
    v17 = MEMORY[0x1E69E7CC0];
    v26 = *(a6 + 16);
    if (!v26)
    {
      goto LABEL_29;
    }

LABEL_19:
    v27 = (v12 + 40);
    v28 = v73;
    do
    {
      v29 = v17;
      v31 = *(v27 - 1);
      v30 = *v27;
      v81 = v31;
      v82 = v30;
      MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
      v70 = &v81;

      if (sub_1E14F2168(sub_1E1869E38, v69, v28))
      {

        v17 = v29;
      }

      else
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native)
        {
          v17 = v29;
        }

        else
        {
          isUniquelyReferenced_nonNull_native = sub_1E130C06C(0, *(v29 + 16) + 1, 1, v29);
          v17 = isUniquelyReferenced_nonNull_native;
        }

        v33 = *(v17 + 16);
        v32 = *(v17 + 24);
        if (v33 >= v32 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_1E130C06C((v32 > 1), v33 + 1, 1, v17);
          v17 = isUniquelyReferenced_nonNull_native;
        }

        *(v17 + 16) = v33 + 1;
        v34 = v17 + 16 * v33;
        *(v34 + 32) = v31;
        *(v34 + 40) = v30;
      }

      v27 += 2;
      --v26;
    }

    while (v26);
LABEL_29:
    v78 = *(v17 + 16);
    if (!v78)
    {
      v75 = MEMORY[0x1E69E7CC0];
LABEL_62:

      v59 = v75;
      v83 = v75;
      v60 = v73;
      if (a9)
      {
        v61 = v71;
        v81 = v71;
        v82 = a9;
        MEMORY[0x1EEE9AC00](v58);
        v70 = &v81;

        v62 = sub_1E14F2168(sub_1E1869E38, v69, v79);
        if (v62 & 1) != 0 || (v81 = v61, v82 = a9, MEMORY[0x1EEE9AC00](v62), v70 = &v81, (sub_1E14F2168(sub_1E1869E38, v69, v60)))
        {
          v63 = *(v59 + 2);
          if (v63)
          {
            v64 = 0;
            v65 = v59 + 40;
            while (1)
            {
              v66 = *(v65 - 1) == v61 && *v65 == a9;
              if (v66 || (sub_1E1AF74AC() & 1) != 0)
              {
                break;
              }

              ++v64;
              v65 += 2;
              if (v63 == v64)
              {
                goto LABEL_76;
              }
            }

            sub_1E14879E8(v64);

            v59 = v83;
          }

LABEL_76:
          v67 = *(v59 + 2);
          v68 = swift_isUniquelyReferenced_nonNull_native();
          if (!v68 || v67 >= *(v59 + 3) >> 1)
          {
            v59 = sub_1E130C06C(v68, v67 + 1, 1, v59);
            v83 = v59;
          }

          sub_1E14F3D98(0, 0, 1, v61, a9);
        }
      }

      v81 = v59;
      sub_1E1AF586C();

      return;
    }

    v35 = 0;
    v77 = v17 + 32;
    v36 = a2 + 56;
    v37 = v74;
    v38 = v74 + 56;
    v75 = MEMORY[0x1E69E7CC0];
    v80 = v17;
    while (1)
    {
      if (v35 >= *(v17 + 16))
      {
        goto LABEL_84;
      }

      v39 = (v77 + 16 * v35);
      v41 = *v39;
      v40 = v39[1];
      ++v35;
      if (*(a2 + 16))
      {
        sub_1E1AF762C();

        sub_1E1AF5F0C();
        v42 = sub_1E1AF767C();
        v43 = -1 << *(a2 + 32);
        v44 = v42 & ~v43;
        if ((*(v36 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
        {
          v45 = ~v43;
          do
          {
            v46 = (*(a2 + 48) + 16 * v44);
            if (*v46 == v41 && v46[1] == v40)
            {
              goto LABEL_32;
            }

            v42 = sub_1E1AF74AC();
            if (v42)
            {
              goto LABEL_32;
            }

            v44 = (v44 + 1) & v45;
          }

          while (((*(v36 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) != 0);
        }
      }

      else
      {
      }

      if (*(v37 + 16))
      {
        sub_1E1AF762C();
        sub_1E1AF5F0C();
        v42 = sub_1E1AF767C();
        v48 = -1 << *(v37 + 32);
        v49 = v42 & ~v48;
        if ((*(v38 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
        {
          break;
        }
      }

LABEL_31:
      v81 = v41;
      v82 = v40;
      MEMORY[0x1EEE9AC00](v42);
      v70 = &v81;
      if (sub_1E14F2168(sub_1E1869E38, v69, v76))
      {
LABEL_55:
        v53 = v75;
        v54 = swift_isUniquelyReferenced_nonNull_native();
        v83 = v53;
        if ((v54 & 1) == 0)
        {
          sub_1E135C088(0, *(v53 + 2) + 1, 1);
          v53 = v83;
        }

        v17 = v80;
        v56 = *(v53 + 2);
        v55 = *(v53 + 3);
        if (v56 >= v55 >> 1)
        {
          sub_1E135C088((v55 > 1), v56 + 1, 1);
          v17 = v80;
          v53 = v83;
        }

        *(v53 + 2) = v56 + 1;
        v75 = v53;
        v57 = &v53[16 * v56];
        *(v57 + 4) = v41;
        *(v57 + 5) = v40;
        v37 = v74;
        if (v35 == v78)
        {
          goto LABEL_62;
        }
      }

      else
      {
LABEL_32:

        v17 = v80;
        if (v35 == v78)
        {
          goto LABEL_62;
        }
      }
    }

    v50 = ~v48;
    while (1)
    {
      v51 = (*(v37 + 48) + 16 * v49);
      if (*v51 == v41 && v51[1] == v40)
      {
        goto LABEL_55;
      }

      v42 = sub_1E1AF74AC();
      if (v42)
      {
        goto LABEL_55;
      }

      v49 = (v49 + 1) & v50;
      if (((*(v38 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  v15 = 0;
  v16 = isUniquelyReferenced_nonNull_native + 40;
  v17 = MEMORY[0x1E69E7CC0];
  v78 = isUniquelyReferenced_nonNull_native + 40;
LABEL_5:
  v80 = v17;
  v18 = (v16 + 16 * v15);
  v19 = v15;
  while (v19 < v14)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_83;
    }

    v21 = *(v18 - 1);
    v20 = *v18;
    v81 = v21;
    v82 = v20;
    MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
    v70 = &v81;

    v12 = v79;
    if (sub_1E14F2168(sub_1E14A937C, v69, v79))
    {
      v22 = v80;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v22;
      v83 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1E135C088(0, *(v22 + 2) + 1, 1);
        v12 = v79;
        v17 = v83;
      }

      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      if (v24 >= v23 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_1E135C088((v23 > 1), v24 + 1, 1);
        v12 = v79;
        v17 = v83;
      }

      *(v17 + 16) = v24 + 1;
      v25 = v17 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v20;
      v16 = v78;
      if (v15 == v14)
      {
LABEL_16:
        v26 = *(v12 + 16);
        if (!v26)
        {
          goto LABEL_29;
        }

        goto LABEL_19;
      }

      goto LABEL_5;
    }

    ++v19;
    v18 += 2;
    if (v15 == v14)
    {
      v17 = v80;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
}

double sub_1E1869DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1E1869E54(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_1E1AF1DDC();
  v40 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA418, &unk_1E1B3A280);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v33 - v14;
  v16 = sub_1E1AF1BCC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v33 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v33 - v24;
  sub_1E1AF1BEC();
  sub_1E186E290(&qword_1EE1E3CC0, MEMORY[0x1E69ABB48], MEMORY[0x1E69ABB38]);
  v39 = a1;
  sub_1E1AF160C();
  v33 = v25;
  v34 = v17;
  (*(v17 + 16))(v19, v25, v16);
  v26 = MEMORY[0x1E69ABB20];
  sub_1E186E290(&qword_1ECEBA458, MEMORY[0x1E69ABB20], MEMORY[0x1E69ABB28]);
  sub_1E1AF60AC();
  sub_1E186E290(&unk_1ECEBA460, v26, MEMORY[0x1E69ABB30]);
  sub_1E1AF6DBC();
  v27 = v40;
  v28 = v40 + 48;
  v29 = *(v40 + 48);
  if (v29(v15, 1, v10) != 1)
  {
    v30 = *(v27 + 32);
    v40 = v27 + 32;
    v35 = (v27 + 8);
    v36 = v30;
    v37 = v15;
    v38 = v28;
    do
    {
      v36(v12, v15, v10);
      sub_1E1AF1DBC();
      __swift_project_boxed_opaque_existential_1Tm(v41, v41[3]);
      sub_1E1AF1DCC();
      [v39 layoutDirection];
      sub_1E1AF6B2C(a2, a3, a4, a5);
      v15 = v37;
      sub_1E1AF1D9C();
      (*v35)(v12, v10);
      __swift_destroy_boxed_opaque_existential_1(v41);
      sub_1E1AF6DBC();
    }

    while (v29(v15, 1, v10) != 1);
  }

  v31 = *(v34 + 8);
  v31(v22, v16);
  return (v31)(v33, v16);
}

uint64_t sub_1E186A2FC(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_1E1AF1DDC();
  v40 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA418, &unk_1E1B3A280);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v33 - v14;
  v16 = sub_1E1AF1AFC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v33 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v33 - v24;
  sub_1E1AF1B1C();
  sub_1E186E290(&qword_1ECEBA420, MEMORY[0x1E69ABAE8], MEMORY[0x1E69ABAD8]);
  v39 = a1;
  sub_1E1AF160C();
  v33 = v25;
  v34 = v17;
  (*(v17 + 16))(v19, v25, v16);
  v26 = MEMORY[0x1E69ABAB0];
  sub_1E186E290(&qword_1ECEBA428, MEMORY[0x1E69ABAB0], MEMORY[0x1E69ABAB8]);
  sub_1E1AF60AC();
  sub_1E186E290(&unk_1ECEBA430, v26, MEMORY[0x1E69ABAC0]);
  sub_1E1AF6DBC();
  v27 = v40;
  v28 = v40 + 48;
  v29 = *(v40 + 48);
  if (v29(v15, 1, v10) != 1)
  {
    v30 = *(v27 + 32);
    v40 = v27 + 32;
    v35 = (v27 + 8);
    v36 = v30;
    v37 = v15;
    v38 = v28;
    do
    {
      v36(v12, v15, v10);
      sub_1E1AF1DBC();
      __swift_project_boxed_opaque_existential_1Tm(v41, v41[3]);
      sub_1E1AF1DCC();
      [v39 layoutDirection];
      sub_1E1AF6B2C(a2, a3, a4, a5);
      v15 = v37;
      sub_1E1AF1D9C();
      (*v35)(v12, v10);
      __swift_destroy_boxed_opaque_existential_1(v41);
      sub_1E1AF6DBC();
    }

    while (v29(v15, 1, v10) != 1);
  }

  v31 = *(v34 + 8);
  v31(v22, v16);
  return (v31)(v33, v16);
}

uint64_t MediumLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  sub_1E186A90C(a1, a9 + 280);
  sub_1E1300B24(a2, a9);
  sub_1E134FD1C(a3, a9 + 40, &qword_1ECEB2AD0, &unk_1E1B03790);
  sub_1E1300B24(a4, a9 + 80);
  sub_1E1300B24(a5, a9 + 120);
  sub_1E134FD1C(a6, a9 + 160, &qword_1ECEB2AD0, &unk_1E1B03790);
  sub_1E1300B24(a7, a9 + 200);
  __swift_project_boxed_opaque_existential_1Tm(a8, a8[3]);
  sub_1E1AF11AC();
  __swift_destroy_boxed_opaque_existential_1(a7);
  sub_1E1308058(a6, &qword_1ECEB2AD0, &unk_1E1B03790);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  sub_1E1308058(a3, &qword_1ECEB2AD0, &unk_1E1B03790);
  __swift_destroy_boxed_opaque_existential_1(a2);
  sub_1E186A944(a1);
  return __swift_destroy_boxed_opaque_existential_1(a8);
}

uint64_t MediumLockupLayout.Metrics.init(artworkSize:artworkMargin:headingSpace:titleSpace:titleWithHeadingRegularSpace:titleWithHeadingShortSpace:subtitleRegularSpace:subtitleShortSpace:tertiaryTitleRegularSpace:tertiaryTitleShortSpace:offerTextRegularSpace:offerTextShortSpace:offerButtonTopMargin:offerButtonBottomMargin:offerButtonSize:layoutMargins:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, __int128 *a16, __int128 *a17, __int128 *a18, __int128 *a19, __int128 *a20, __int128 *a21)
{
  v33 = *a2;
  *a9 = *a1;
  *(a9 + 8) = v33;
  sub_1E1308EC0(a3, a9 + 16);
  sub_1E1308EC0(a4, a9 + 56);
  sub_1E1308EC0(a5, a9 + 96);
  sub_1E1308EC0(a6, a9 + 136);
  sub_1E1308EC0(a7, a9 + 176);
  sub_1E1308EC0(a8, a9 + 216);
  sub_1E1308EC0(a16, a9 + 256);
  sub_1E1308EC0(a17, a9 + 296);
  sub_1E1308EC0(a18, a9 + 336);
  sub_1E1308EC0(a19, a9 + 376);
  sub_1E1308EC0(a20, a9 + 416);
  result = sub_1E1308EC0(a21, a9 + 456);
  *(a9 + 496) = a10;
  *(a9 + 504) = a11;
  *(a9 + 512) = a12;
  *(a9 + 520) = a13;
  *(a9 + 528) = a14;
  *(a9 + 536) = a15;
  return result;
}

void MediumLockupLayout.Metrics.artworkSize.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
}

void MediumLockupLayout.Metrics.artworkMargin.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
}

uint64_t MediumLockupLayout.Metrics.headingSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));

  return sub_1E1308EC0(a1, v1 + 16);
}

uint64_t MediumLockupLayout.Metrics.titleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 56));

  return sub_1E1308EC0(a1, v1 + 56);
}

uint64_t MediumLockupLayout.Metrics.titleWithHeadingRegularSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 96));

  return sub_1E1308EC0(a1, v1 + 96);
}

uint64_t MediumLockupLayout.Metrics.titleWithHeadingShortSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 136));

  return sub_1E1308EC0(a1, v1 + 136);
}

uint64_t MediumLockupLayout.Metrics.subtitleRegularSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 176));

  return sub_1E1308EC0(a1, v1 + 176);
}

uint64_t MediumLockupLayout.Metrics.subtitleShortSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 216));

  return sub_1E1308EC0(a1, v1 + 216);
}

uint64_t MediumLockupLayout.Metrics.tertiaryTitleRegularSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 256));

  return sub_1E1308EC0(a1, v1 + 256);
}

uint64_t MediumLockupLayout.Metrics.tertiaryTitleShortSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 296));

  return sub_1E1308EC0(a1, v1 + 296);
}

uint64_t MediumLockupLayout.Metrics.offerTextRegularSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 336));

  return sub_1E1308EC0(a1, v1 + 336);
}

uint64_t MediumLockupLayout.Metrics.offerTextShortSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 376));

  return sub_1E1308EC0(a1, v1 + 376);
}

uint64_t MediumLockupLayout.Metrics.offerButtonTopMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 416));

  return sub_1E1308EC0(a1, v1 + 416);
}

uint64_t MediumLockupLayout.Metrics.offerButtonBottomMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 456));

  return sub_1E1308EC0(a1, v1 + 456);
}

void MediumLockupLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[64] = a1;
  v4[65] = a2;
  v4[66] = a3;
  v4[67] = a4;
}

uint64_t sub_1E186B300@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v139 = sub_1E1AF18BC();
  v6 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v8 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_1E1AF184C();
  v144 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v147 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_1E1AF188C();
  v151 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v145 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_1E1AF189C();
  v11 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v143 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v136 = &v127 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v127 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v142 = &v127 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v135 = &v127 - v21;
  sub_1E134FD1C((v2 + 5), &v169, &qword_1ECEB2AD0, &unk_1E1B03790);
  if (!*(&v170 + 1))
  {
LABEL_5:
    sub_1E1308058(&v169, &qword_1ECEB2AD0, &unk_1E1B03790);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1Tm(&v169, *(&v170 + 1));
  v22 = sub_1E1AF117C();
  __swift_destroy_boxed_opaque_existential_1(&v169);
  if ((v22 & 1) == 0)
  {
    sub_1E134FD1C((v3 + 5), &v169, &qword_1ECEB2AD0, &unk_1E1B03790);
    if (*(&v170 + 1))
    {
      __swift_project_boxed_opaque_existential_1Tm(&v169, *(&v170 + 1));
      v153 = sub_1E1AF112C();
      __swift_destroy_boxed_opaque_existential_1(&v169);
      goto LABEL_7;
    }

    goto LABEL_5;
  }

LABEL_6:
  v153 = 0;
LABEL_7:
  __swift_project_boxed_opaque_existential_1Tm(v3 + 25, v3[28]);
  if (sub_1E1AF117C())
  {
    v155 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(v3 + 25, v3[28]);
    v155 = sub_1E1AF112C();
  }

  __swift_project_boxed_opaque_existential_1Tm(v3 + 15, v3[18]);
  if (sub_1E1AF117C())
  {
    v141 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(v3 + 15, v3[18]);
    v141 = sub_1E1AF112C();
  }

  sub_1E134FD1C((v3 + 20), &v169, &qword_1ECEB2AD0, &unk_1E1B03790);
  if (!*(&v170 + 1))
  {
LABEL_17:
    sub_1E1308058(&v169, &qword_1ECEB2AD0, &unk_1E1B03790);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1Tm(&v169, *(&v170 + 1));
  v23 = sub_1E1AF117C();
  __swift_destroy_boxed_opaque_existential_1(&v169);
  if ((v23 & 1) == 0)
  {
    sub_1E134FD1C((v3 + 20), &v169, &qword_1ECEB2AD0, &unk_1E1B03790);
    if (*(&v170 + 1))
    {
      __swift_project_boxed_opaque_existential_1Tm(&v169, *(&v170 + 1));
      v154 = sub_1E1AF112C();
      __swift_destroy_boxed_opaque_existential_1(&v169);
      goto LABEL_19;
    }

    goto LABEL_17;
  }

LABEL_18:
  v154 = 0;
LABEL_19:
  v24 = sub_1E1AF696C();
  v140 = v8;
  v137 = v17;
  v138 = v6;
  v150 = a1;
  if (v24)
  {
    v152 = 1;
  }

  else
  {
    v152 = sub_1E1AF698C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB25E8, &unk_1E1B50470);
  v25 = swift_allocObject();
  v26 = v153;
  v25[32] = v153 & 1;
  v27 = v154;
  v28 = v155 & 1;
  v25[33] = v155 & 1;
  v29 = v27 & 1;
  v25[34] = v27 & 1;
  v30 = MEMORY[0x1E69E7CC0];
  if (v26)
  {
    *&v169 = MEMORY[0x1E69E7CC0];
    sub_1E135C288(0, 1, 1);
    v30 = v169;
    v32 = *(v169 + 16);
    v31 = *(v169 + 24);
    if (v32 >= v31 >> 1)
    {
      sub_1E135C288((v31 > 1), v32 + 1, 1);
      v30 = v169;
    }

    *(v30 + 16) = v32 + 1;
    *(v30 + v32 + 32) = 1;
  }

  if (v155)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v169 = v30;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1E135C288(0, *(v30 + 16) + 1, 1);
      v30 = v169;
    }

    v35 = *(v30 + 16);
    v34 = *(v30 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_1E135C288((v34 > 1), v35 + 1, 1);
      v30 = v169;
    }

    *(v30 + 16) = v35 + 1;
    *(v30 + v35 + 32) = v28;
  }

  if (v154)
  {
    v36 = swift_isUniquelyReferenced_nonNull_native();
    *&v169 = v30;
    if ((v36 & 1) == 0)
    {
      sub_1E135C288(0, *(v30 + 16) + 1, 1);
      v30 = v169;
    }

    v38 = *(v30 + 16);
    v37 = *(v30 + 24);
    if (v38 >= v37 >> 1)
    {
      sub_1E135C288((v37 > 1), v38 + 1, 1);
      v30 = v169;
    }

    *(v30 + 16) = v38 + 1;
    *(v30 + v38 + 32) = v29;
  }

  swift_setDeallocating();
  swift_deallocClassInstance();
  v39 = *(v30 + 16);

  if ((sub_1E1AF698C() & 1) != 0 && v39 < 2)
  {
    if (v153)
    {
      sub_1E134FD1C((v3 + 5), &v169, &qword_1ECEB2AD0, &unk_1E1B03790);
    }

    else
    {
      v171 = 0;
      v169 = 0u;
      v170 = 0u;
    }

    sub_1E1300B24((v3 + 10), &v166);
    sub_1E1300B24((v3 + 15), &v163);
    if (v154)
    {
      sub_1E134FD1C((v3 + 20), &v160, &qword_1ECEB2AD0, &unk_1E1B03790);
    }

    else
    {
      v162 = 0;
      v160 = 0u;
      v161 = 0u;
    }

    v43 = 4 - v39;
    if (v155)
    {
      sub_1E1300B24((v3 + 25), &v157);
    }

    else
    {
      v159 = 0;
      v157 = 0u;
      v158 = 0u;
    }

    a2[3] = &type metadata for MultilineTextLayout;
    a2[4] = sub_1E186E194();
    a2[5] = sub_1E186E1E8();
    v44 = swift_allocObject();
    *a2 = v44;
    sub_1E1300B24((v3 + 37), v44 + 216);
    sub_1E1300B24((v3 + 42), v44 + 256);
    sub_1E1300B24((v3 + 57), v44 + 296);
    sub_1E1300B24((v3 + 67), v156);
    *(v44 + 336) = 0u;
    *(v44 + 352) = 0u;
    *(v44 + 368) = 0u;
    *(v44 + 384) = 0u;
    *(v44 + 400) = 0u;
    sub_1E13BC4E4(v156, v44 + 336);
    *(v44 + 416) = 2;
    *(v44 + 424) = v43;
    v45 = v170;
    *(v44 + 16) = v169;
    *(v44 + 32) = v45;
    *(v44 + 48) = v171;
    sub_1E1308EC0(&v166, v44 + 56);
    result = sub_1E1308EC0(&v163, v44 + 96);
    v46 = v161;
    *(v44 + 136) = v160;
    *(v44 + 152) = v46;
    *(v44 + 168) = v162;
    v47 = v158;
    *(v44 + 176) = v157;
    *(v44 + 192) = v47;
    *(v44 + 208) = v159;
    return result;
  }

  if (((v39 == 0) & v152) != 0)
  {
    sub_1E1300B24((v3 + 10), &v169);
    sub_1E1300B24((v3 + 15), &v166);
    sub_1E1300B24((v3 + 42), &v163);
    sub_1E1300B24((v3 + 57), &v160);
    sub_1E1300B24((v3 + 57), &v157);
    v40 = sub_1E1AF1C6C();
    v41 = MEMORY[0x1E69ABB68];
    a2[3] = v40;
    a2[4] = v41;
    a2[5] = MEMORY[0x1E69ABB70];
    __swift_allocate_boxed_opaque_existential_0(a2);
    return sub_1E1AF1C5C();
  }

  sub_1E134FD1C((v3 + 5), &v169, &qword_1ECEB2AD0, &unk_1E1B03790);
  if (*(&v170 + 1))
  {
    __swift_project_boxed_opaque_existential_1Tm(&v169, *(&v170 + 1));
    sub_1E1AF146C();
    __swift_destroy_boxed_opaque_existential_1(&v169);
  }

  else
  {
    sub_1E1308058(&v169, &qword_1ECEB2AD0, &unk_1E1B03790);
  }

  sub_1E134FD1C((v3 + 5), &v169, &qword_1ECEB2AD0, &unk_1E1B03790);
  if (*(&v170 + 1))
  {
    __swift_project_boxed_opaque_existential_1Tm(&v169, *(&v170 + 1));
    sub_1E1AF144C();
    __swift_destroy_boxed_opaque_existential_1(&v169);
  }

  else
  {
    sub_1E1308058(&v169, &qword_1ECEB2AD0, &unk_1E1B03790);
  }

  __swift_project_boxed_opaque_existential_1Tm(v3 + 10, v3[13]);
  sub_1E1AF146C();
  __swift_project_boxed_opaque_existential_1Tm(v3 + 10, v3[13]);
  sub_1E1AF144C();
  __swift_project_boxed_opaque_existential_1Tm(v3 + 15, v3[18]);
  sub_1E1AF146C();
  __swift_project_boxed_opaque_existential_1Tm(v3 + 15, v3[18]);
  sub_1E1AF144C();
  sub_1E134FD1C((v3 + 20), &v169, &qword_1ECEB2AD0, &unk_1E1B03790);
  if (*(&v170 + 1))
  {
    __swift_project_boxed_opaque_existential_1Tm(&v169, *(&v170 + 1));
    sub_1E1AF146C();
    __swift_destroy_boxed_opaque_existential_1(&v169);
  }

  else
  {
    sub_1E1308058(&v169, &qword_1ECEB2AD0, &unk_1E1B03790);
  }

  sub_1E134FD1C((v3 + 20), &v169, &qword_1ECEB2AD0, &unk_1E1B03790);
  v129 = v11;
  if (*(&v170 + 1))
  {
    __swift_project_boxed_opaque_existential_1Tm(&v169, *(&v170 + 1));
    sub_1E1AF144C();
    __swift_destroy_boxed_opaque_existential_1(&v169);
  }

  else
  {
    sub_1E1308058(&v169, &qword_1ECEB2AD0, &unk_1E1B03790);
  }

  sub_1E134FD1C((v3 + 5), &v166, &qword_1ECEB2AD0, &unk_1E1B03790);
  v48 = MEMORY[0x1E69ABA08];
  if (v167)
  {
    sub_1E1308EC0(&v166, &v169);
    if (v153)
    {
      v49 = *(&v170 + 1);
      v50 = v171;
      v51 = __swift_project_boxed_opaque_existential_1Tm(&v169, *(&v170 + 1));
      v167 = v49;
      v168 = *(v50 + 8);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v166);
      (*(*(v49 - 8) + 16))(boxed_opaque_existential_0, v51, v49);
      v53 = *v48;
      v54 = v151;
      v56 = v145;
      v55 = v146;
      (*(v151 + 104))(v145, v53, v146);
      v57 = MEMORY[0x1E69E7CC0];
      *&v163 = MEMORY[0x1E69E7CC0];
      sub_1E186E290(&qword_1EE1D2A80, MEMORY[0x1E69AB9F8], MEMORY[0x1E69ABA00]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AF0, &qword_1E1B08CF0);
      sub_1E1383E14();
      v58 = v147;
      v59 = v149;
      sub_1E1AF6EEC();
      sub_1E1AF186C();
      (*(v144 + 8))(v58, v59);
      (*(v54 + 8))(v56, v55);
      __swift_destroy_boxed_opaque_existential_1(&v166);
      v60 = sub_1E172D494(0, 1, 1, v57);
      v62 = v60[2];
      v61 = v60[3];
      if (v62 >= v61 >> 1)
      {
        v60 = sub_1E172D494((v61 > 1), v62 + 1, 1, v60);
      }

      v60[2] = v62 + 1;
      (*(v129 + 32))(v60 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + *(v129 + 72) * v62, v135, v148);
      __swift_destroy_boxed_opaque_existential_1(&v169);
      v48 = MEMORY[0x1E69ABA08];
      goto LABEL_70;
    }

    __swift_destroy_boxed_opaque_existential_1(&v169);
    v60 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1E1308058(&v166, &qword_1ECEB2AD0, &unk_1E1B03790);
    v60 = MEMORY[0x1E69E7CC0];
    if (v153)
    {
LABEL_70:
      v63 = 52;
      if (v152 & 1 | ((v155 & 1) == 0))
      {
        v63 = 47;
      }

      goto LABEL_75;
    }
  }

  v63 = 42;
LABEL_75:
  sub_1E1300B24(&v3[v63], &v169);
  v64 = v3[13];
  v65 = v3[14];
  v66 = __swift_project_boxed_opaque_existential_1Tm(v3 + 10, v64);
  v167 = v64;
  v168 = *(v65 + 8);
  v67 = __swift_allocate_boxed_opaque_existential_0(&v166);
  (*(*(v64 - 8) + 16))(v67, v66, v64);
  v68 = *v48;
  v69 = v151;
  v70 = *(v151 + 104);
  v72 = v145;
  v71 = v146;
  LODWORD(v135) = v68;
  v150 = v151 + 104;
  v134 = v70;
  v70(v145);
  *&v163 = MEMORY[0x1E69E7CC0];
  v73 = sub_1E186E290(&qword_1EE1D2A80, MEMORY[0x1E69AB9F8], MEMORY[0x1E69ABA00]);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AF0, &qword_1E1B08CF0);
  v75 = sub_1E1383E14();
  v76 = v147;
  v131 = v75;
  v132 = v74;
  v77 = v149;
  v133 = v73;
  sub_1E1AF6EEC();
  sub_1E1AF186C();
  v127 = *(v144 + 8);
  v127(v76, v77);
  v78 = *(v69 + 8);
  v151 = v69 + 8;
  v130 = v78;
  v78(v72, v71);
  __swift_destroy_boxed_opaque_existential_1(&v166);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v60 = sub_1E172D494(0, v60[2] + 1, 1, v60);
  }

  v80 = v60[2];
  v79 = v60[3];
  if (v80 >= v79 >> 1)
  {
    v60 = sub_1E172D494((v79 > 1), v80 + 1, 1, v60);
  }

  v60[2] = v80 + 1;
  v81 = v129 + 32;
  v82 = *(v129 + 32);
  v129 = (*(v129 + 80) + 32) & ~*(v129 + 80);
  v128 = *(v81 + 40);
  v83 = v142;
  v142 = v82;
  (v82)(v60 + v129 + v128 * v80, v83, v148);
  if (v141)
  {
    v84 = 62;
    if (v152 & 1 | (((v155 | v154) & 1) == 0))
    {
      v84 = 57;
    }

    sub_1E1300B24(&v3[v84], &v166);
    v85 = v3[18];
    v86 = v3[19];
    v87 = __swift_project_boxed_opaque_existential_1Tm(v3 + 15, v85);
    v164 = v85;
    v165 = *(v86 + 8);
    v88 = __swift_allocate_boxed_opaque_existential_0(&v163);
    (*(*(v85 - 8) + 16))(v88, v87, v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA440, &unk_1E1B3A290);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_1E1B02CC0;
    sub_1E1AF183C();
    *&v160 = v89;
    v90 = v147;
    v91 = v149;
    sub_1E1AF6EEC();
    v93 = v145;
    v92 = v146;
    v134(v145, v135, v146);
    sub_1E1AF186C();
    v130(v93, v92);
    v94 = v127;
    v127(v90, v91);
    __swift_destroy_boxed_opaque_existential_1(&v163);
    v96 = v60[2];
    v95 = v60[3];
    if (v96 >= v95 >> 1)
    {
      v60 = sub_1E172D494((v95 > 1), v96 + 1, 1, v60);
    }

    __swift_destroy_boxed_opaque_existential_1(&v166);
    v60[2] = v96 + 1;
    (v142)(v60 + v129 + v96 * v128, v137, v148);
  }

  else
  {
    v94 = v127;
  }

  sub_1E134FD1C((v3 + 20), &v163, &qword_1ECEB2AD0, &unk_1E1B03790);
  if (v164)
  {
    sub_1E1308EC0(&v163, &v166);
    if (v154)
    {
      v97 = 72;
      if (v152 & 1 | ((((v141 | v155) | v153) & 1) == 0))
      {
        v97 = 67;
      }

      sub_1E1300B24(&v3[v97], &v163);
      v98 = v167;
      v99 = v168;
      v100 = __swift_project_boxed_opaque_existential_1Tm(&v166, v167);
      *(&v161 + 1) = v98;
      v162 = *(v99 + 8);
      v101 = __swift_allocate_boxed_opaque_existential_0(&v160);
      (*(*(v98 - 8) + 16))(v101, v100, v98);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA440, &unk_1E1B3A290);
      v102 = swift_allocObject();
      *(v102 + 16) = xmmword_1E1B02CC0;
      sub_1E1AF183C();
      *&v157 = v102;
      v103 = v147;
      v104 = v149;
      sub_1E1AF6EEC();
      v106 = v145;
      v105 = v146;
      v134(v145, v135, v146);
      sub_1E1AF186C();
      v107 = v106;
      v94 = v127;
      v130(v107, v105);
      v94(v103, v104);
      __swift_destroy_boxed_opaque_existential_1(&v160);
      v109 = v60[2];
      v108 = v60[3];
      if (v109 >= v108 >> 1)
      {
        v60 = sub_1E172D494((v108 > 1), v109 + 1, 1, v60);
      }

      __swift_destroy_boxed_opaque_existential_1(&v163);
      v60[2] = v109 + 1;
      (v142)(v60 + v129 + v109 * v128, v136, v148);
    }

    __swift_destroy_boxed_opaque_existential_1(&v166);
  }

  else
  {
    sub_1E1308058(&v163, &qword_1ECEB2AD0, &unk_1E1B03790);
  }

  v110 = 82;
  if (v152 & 1 | ((v153 & 1) == 0))
  {
    v110 = 77;
  }

  sub_1E1300B24(&v3[v110], &v166);
  v111 = v3[28];
  v112 = v3[29];
  v113 = __swift_project_boxed_opaque_existential_1Tm(v3 + 25, v111);
  v164 = v111;
  v165 = *(v112 + 8);
  v114 = __swift_allocate_boxed_opaque_existential_0(&v163);
  (*(*(v111 - 8) + 16))(v114, v113, v111);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA440, &unk_1E1B3A290);
  v115 = swift_allocObject();
  *(v115 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF183C();
  *&v160 = v115;
  v116 = v147;
  v117 = v149;
  sub_1E1AF6EEC();
  v119 = v145;
  v118 = v146;
  v134(v145, v135, v146);
  sub_1E1AF186C();
  v130(v119, v118);
  v94(v116, v117);
  __swift_destroy_boxed_opaque_existential_1(&v163);
  v121 = v60[2];
  v120 = v60[3];
  if (v121 >= v120 >> 1)
  {
    v60 = sub_1E172D494((v120 > 1), v121 + 1, 1, v60);
  }

  v123 = v139;
  v122 = v140;
  v124 = v138;
  v60[2] = v121 + 1;
  (v142)(v60 + v129 + v121 * v128, v143, v148);
  (*(v124 + 104))(v122, *MEMORY[0x1E69ABA28], v123);
  v164 = sub_1E1AF140C();
  v165 = MEMORY[0x1E69AB908];
  __swift_allocate_boxed_opaque_existential_0(&v163);
  sub_1E1AF13FC();
  v125 = sub_1E1AF18DC();
  v126 = MEMORY[0x1E69ABA38];
  a2[3] = v125;
  a2[4] = v126;
  a2[5] = MEMORY[0x1E69ABA40];
  __swift_allocate_boxed_opaque_existential_0(a2);
  sub_1E1AF18CC();
  __swift_destroy_boxed_opaque_existential_1(&v166);
  return __swift_destroy_boxed_opaque_existential_1(&v169);
}

uint64_t MediumLockupLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v6;
  v129 = a2;
  v123 = sub_1E1AF19AC();
  v120 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v122 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v119 = &v92 - v11;
  v124 = sub_1E1AF1A0C();
  v121 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v118 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1E1AF180C();
  v112 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v113 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF181C();
  v116 = *(v14 - 8);
  v117 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v115 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E1AF184C();
  v110 = *(v16 - 8);
  v111 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v108 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1E1AF188C();
  v107 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v106 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E1AF18BC();
  v98 = *(v19 - 8);
  v99 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v125 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E1AF18DC();
  v127 = *(v21 - 8);
  v128 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v126 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E1AF745C();
  v94 = *(v23 - 8);
  v95 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1E1AF1B0C();
  v100 = *(v26 - 8);
  v101 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v102 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1E1AF1B1C();
  v104 = *(v28 - 8);
  v105 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v103 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1E1AF13EC();
  v31 = *(v30 - 8);
  v96 = v30;
  v97 = v31;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v92 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v92 - v38;
  sub_1E1AF6B0C();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = [a1 traitCollection];
  sub_1E186B300(v48, v144);

  v49 = *(v6 + 35);
  v138[0] = a1;
  (*(*v49 + 104))(v139, v138);
  v50 = *v139;
  v51 = *&v139[1];
  v52 = *(v7 + 36);
  v138[0] = a1;
  (*(*v52 + 104))(v139, v138);
  v53 = v139[0];
  __swift_project_boxed_opaque_existential_1Tm(v7, *(v7 + 3));
  sub_1E1AF11AC();
  v130 = a1;
  v54 = [a1 traitCollection];
  LOBYTE(v48) = sub_1E1AF698C();

  if (v48)
  {
    sub_1E1AF13CC();
    __swift_project_boxed_opaque_existential_1Tm(v143, v143[3]);
    sub_1E1AF11FC();
    v128 = sub_1E1AF1BAC();
    v140 = v128;
    v141 = MEMORY[0x1E69ABB10];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v139);
    Resize.init(_:size:)(v138, boxed_opaque_existential_0, v50, v51);
    sub_1E1AF13DC();
    v56 = v96;
    v57 = v97;
    v93 = v39;
    v58 = *(v97 + 8);
    v58(v33, v96);
    v59 = v58;
    __swift_destroy_boxed_opaque_existential_1(v139);
    __swift_project_boxed_opaque_existential_1Tm(v144, v145);
    sub_1E1AF11FC();
    sub_1E1AF13DC();
    __swift_destroy_boxed_opaque_existential_1(v139);
    v58(v36, v56);
    __swift_project_boxed_opaque_existential_1Tm(v7 + 30, *(v7 + 33));
    sub_1E1AF11FC();
    v60 = v7[97];
    v61 = v7[98];
    v62 = v128;
    v140 = v128;
    v63 = MEMORY[0x1E69ABB10];
    v141 = MEMORY[0x1E69ABB10];
    v64 = __swift_allocate_boxed_opaque_existential_0(v139);
    Resize.init(_:size:)(v138, v64, v60, v61);
    (*(v100 + 104))(v102, *MEMORY[0x1E69ABAC8], v101);
    v136 = v56;
    v137 = MEMORY[0x1E69AB8F8];
    v65 = __swift_allocate_boxed_opaque_existential_0(v135);
    v66 = v93;
    (*(v57 + 16))(v65, v93, v56);
    v138[3] = v62;
    v138[4] = v63;
    v67 = __swift_allocate_boxed_opaque_existential_0(v138);
    Resize.init(_:size:)(v135, v67, v45, v47);
    v68 = v103;
    sub_1E1AF1B2C();
    v69 = [v130 traitCollection];
    sub_1E186A2FC(v69, v41, v43, v45, v47);

    sub_1E1AF106C();
    (*(v104 + 8))(v68, v105);
    v59(v66, v56);
  }

  else
  {
    v70 = *(v7 + 95);
    __swift_project_boxed_opaque_existential_1Tm(v7 + 92, v70);
    sub_1E13BC274(v70);
    v71 = sub_1E1AF12DC();
    (*(v94 + 8))(v25, v95);
    (*(v98 + 104))(v125, *MEMORY[0x1E69ABA30], v99);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AE0, &qword_1E1B02A80);
    sub_1E1AF189C();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    v72 = v71 + v7[98];
    v140 = MEMORY[0x1E69E7DE0];
    v141 = MEMORY[0x1E69AB858];
    *v139 = v72;
    v74 = v106;
    v73 = v107;
    v75 = v109;
    (*(v107 + 104))(v106, *MEMORY[0x1E69ABA08], v109);
    v138[0] = MEMORY[0x1E69E7CC0];
    sub_1E186E290(&qword_1EE1D2A80, MEMORY[0x1E69AB9F8], MEMORY[0x1E69ABA00]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AF0, &qword_1E1B08CF0);
    sub_1E1383E14();
    v76 = v108;
    v77 = v111;
    sub_1E1AF6EEC();
    sub_1E1AF186C();
    (*(v110 + 8))(v76, v77);
    (*(v73 + 8))(v74, v75);
    __swift_destroy_boxed_opaque_existential_1(v139);
    v78 = sub_1E1AF140C();
    v79 = MEMORY[0x1E69AB908];
    v140 = v78;
    v141 = MEMORY[0x1E69AB908];
    __swift_allocate_boxed_opaque_existential_0(v139);
    sub_1E1AF13FC();
    v80 = v126;
    sub_1E1AF18CC();
    v81 = v128;
    v140 = v128;
    v141 = MEMORY[0x1E69ABA38];
    v142 = MEMORY[0x1E69ABA40];
    v82 = __swift_allocate_boxed_opaque_existential_0(v139);
    (*(v127 + 16))(v82, v80, v81);
    sub_1E1383E78(v144, v138);
    (*(v112 + 104))(v113, *MEMORY[0x1E69AB9E8], v114);
    sub_1E1300B24((v7 + 87), v135);
    v83 = v115;
    sub_1E1AF17FC();
    v84 = v117;
    v140 = v117;
    v141 = MEMORY[0x1E69AB9F0];
    v85 = __swift_allocate_boxed_opaque_existential_0(v139);
    v86 = v116;
    (*(v116 + 16))(v85, v83, v84);
    sub_1E1300B24(v143, v138);
    v136 = MEMORY[0x1E69E7DE0];
    v137 = MEMORY[0x1E69AB858];
    v135[0] = v53;
    v134 = 0;
    v132 = 0u;
    v133 = 0u;
    v131[3] = v78;
    v131[4] = v79;
    __swift_allocate_boxed_opaque_existential_0(v131);
    sub_1E1AF13FC();
    v87 = *MEMORY[0x1E69ABA80];
    v88 = *(v120 + 104);
    v89 = v123;
    v88(v119, v87, v123);
    v88(v122, v87, v89);
    v90 = v118;
    sub_1E1AF19EC();
    sub_1E1AF19CC();
    (*(v121 + 8))(v90, v124);
    (*(v86 + 8))(v83, v84);
    (*(v127 + 8))(v126, v128);
  }

  __swift_destroy_boxed_opaque_existential_1(v143);
  return __swift_destroy_boxed_opaque_existential_1(v144);
}

uint64_t sub_1E186D840(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_1E186E140();
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x1EEE18170](a1, a2, v10, a3, v11, v12);
}

double _s11AppStoreKit18MediumLockupLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(double *a1, void *a2, double a3)
{
  v26 = sub_1E1AF745C();
  v5 = *(v26 - 8);
  v6 = MEMORY[0x1EEE9AC00](v26);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 traitCollection];
  v10 = sub_1E1AF698C();
  v25 = v5;
  if (v10)
  {
    sub_1E1300B24((a1 + 2), v29);
    sub_1E1300B24((a1 + 7), v30);
    sub_1E1300B24((a1 + 22), v31);
    sub_1E1300B24((a1 + 32), v27);
    memset(v32, 0, sizeof(v32));
    sub_1E13BC4E4(v27, v32);
    v33 = xmmword_1E1B02CD0;
    __swift_project_boxed_opaque_existential_1Tm(v30, v30[3]);
    sub_1E1AF12EC();
    __swift_project_boxed_opaque_existential_1Tm(v31, v31[3]);
    sub_1E1AF12EC();
    sub_1E134FD1C(&v32[40], v27, &unk_1ECEB47F0, &qword_1E1B05780);
    if (v28)
    {
      __swift_project_boxed_opaque_existential_1Tm(v27, v28);
      sub_1E1AF12EC();
      __swift_destroy_boxed_opaque_existential_1(v27);
    }

    else
    {
      sub_1E1308058(v27, &unk_1ECEB47F0, &qword_1E1B05780);
    }

    sub_1E186E23C(v29);
  }

  else
  {
    v24 = v9;
    v11 = sub_1E1AF696C();
    v12 = *(a1 + 10);
    __swift_project_boxed_opaque_existential_1Tm(a1 + 7, v12);
    v13 = v26;
    sub_1E13BC274(v12);
    sub_1E1AF12DC();
    v14 = *(v5 + 8);
    v14(v8, v13);
    if (v11)
    {
      v15 = *(a1 + 25);
      __swift_project_boxed_opaque_existential_1Tm(a1 + 22, v15);
    }

    else
    {
      v16 = *(a1 + 30);
      __swift_project_boxed_opaque_existential_1Tm(a1 + 27, v16);
      sub_1E13BC274(v16);
      sub_1E1AF12DC();
      v14(v8, v13);
      v15 = *(a1 + 45);
      __swift_project_boxed_opaque_existential_1Tm(a1 + 42, v15);
    }

    sub_1E13BC274(v15);
    sub_1E1AF12DC();
    v14(v8, v13);
    v9 = v24;
  }

  v17 = *(a1 + 55);
  __swift_project_boxed_opaque_existential_1Tm(a1 + 52, v17);
  sub_1E13BC274(v17);
  sub_1E1AF12DC();
  v18 = *(v25 + 8);
  v18(v8, v26);
  v19 = *a1;
  v27[0] = a2;
  (*(*v19 + 104))(v29, v27);
  if (sub_1E1AF698C())
  {
    *v29 = a1[1];

    sub_1E1AF102C();
    Conditional<>.value(in:rounded:)(a2, v8);
    v18(v8, v26);
  }

  else
  {
    v20 = *(a1 + 60);
    __swift_project_boxed_opaque_existential_1Tm(a1 + 57, v20);
    sub_1E13BC274(v20);
    sub_1E1AF12DC();
    v18(v8, v26);
  }

  sub_1E1AF6B7C();
  v22 = v21;

  return v22;
}

unint64_t sub_1E186DE44()
{
  result = qword_1EE1DDEC8[0];
  if (!qword_1EE1DDEC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1DDEC8);
  }

  return result;
}

uint64_t sub_1E186DEA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 824))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E186DEE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 824) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 824) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E186E018(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 544))
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

uint64_t sub_1E186E060(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 536) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 544) = 1;
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

    *(result + 544) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E186E140()
{
  result = qword_1ECEBA410;
  if (!qword_1ECEBA410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA410);
  }

  return result;
}

unint64_t sub_1E186E194()
{
  result = qword_1ECEBA448;
  if (!qword_1ECEBA448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA448);
  }

  return result;
}

unint64_t sub_1E186E1E8()
{
  result = qword_1ECEBA450;
  if (!qword_1ECEBA450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA450);
  }

  return result;
}

uint64_t sub_1E186E290(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E186E320(uint64_t a1)
{
  sub_1E1430C30(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1E186E434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[0] = a1;
  v20[1] = a2;
  v2 = type metadata accessor for ProductCapabilityView.HorizontalLayout(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA490, &qword_1E1B3A3A0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v20 - v6;
  v8 = type metadata accessor for ProductCapabilityView.VerticalLayout(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1E1AF227C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1870428(&qword_1ECEB3BA8, &qword_1E1B09640, MEMORY[0x1E697E730], v14);
  v15 = _s11AppStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v12 + 8))(v14, v11);
  KeyPath = swift_getKeyPath("Ȉ:\v");
  if (v15)
  {
    *(v10 + *(v8 + 20)) = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BA8, &qword_1E1B09640);
    swift_storeEnumTagMultiPayload();
    *v10 = v20[0];
    sub_1E1870360(v10, v7, type metadata accessor for ProductCapabilityView.VerticalLayout);
    swift_storeEnumTagMultiPayload();
    sub_1E187022C(&qword_1ECEBA498, type metadata accessor for ProductCapabilityView.VerticalLayout, &unk_1E1B3A468);
    sub_1E187022C(&qword_1ECEBA4A0, type metadata accessor for ProductCapabilityView.HorizontalLayout, &unk_1E1B3A418);

    sub_1E1AF259C();
    v17 = type metadata accessor for ProductCapabilityView.VerticalLayout;
    v18 = v10;
  }

  else
  {
    *(v4 + *(v2 + 20)) = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BA8, &qword_1E1B09640);
    swift_storeEnumTagMultiPayload();
    *v4 = v20[0];
    sub_1E1870360(v4, v7, type metadata accessor for ProductCapabilityView.HorizontalLayout);
    swift_storeEnumTagMultiPayload();
    sub_1E187022C(&qword_1ECEBA498, type metadata accessor for ProductCapabilityView.VerticalLayout, &unk_1E1B3A468);
    sub_1E187022C(&qword_1ECEBA4A0, type metadata accessor for ProductCapabilityView.HorizontalLayout, &unk_1E1B3A418);

    sub_1E1AF259C();
    v17 = type metadata accessor for ProductCapabilityView.HorizontalLayout;
    v18 = v4;
  }

  return sub_1E18703C8(v18, v17);
}

uint64_t sub_1E186E868@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v51 = type metadata accessor for ProductCapabilityView.TextStack(0);
  MEMORY[0x1EEE9AC00](v51);
  v55 = &v49[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v49[-v6];
  v7 = sub_1E1AF227C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49[-v12];
  v14 = *a1;
  v15 = *(*a1 + 16);
  v16 = *(v15 + 64);
  v53 = *(v15 + 56);

  if (v16)
  {
    v17 = v16;
    v18 = sub_1E1AF2AAC();
  }

  else
  {
    v18 = sub_1E1AF2AFC();
  }

  v52 = v18;
  v50 = sub_1E1AF271C();
  sub_1E186ED0C(type metadata accessor for ProductCapabilityView.HorizontalLayout, v13);
  _s11AppStoreKit15PageEnvironmentV4isAXSbvg_0();
  v19 = *(v8 + 8);
  v19(v13, v7);
  sub_1E1AF207C();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v80 = 0;
  v56 = sub_1E1AF26EC();
  sub_1E186ED0C(type metadata accessor for ProductCapabilityView.HorizontalLayout, v10);
  _s11AppStoreKit15PageEnvironmentV4isAXSbvg_0();
  v19(v10, v7);
  sub_1E1AF207C();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v82 = 0;
  v36 = v54;
  *v54 = v14;
  v63[0] = 0x4000000000000000;
  sub_1E153C0A0();

  sub_1E1AF20EC();
  v63[0] = 0x4008000000000000;
  sub_1E1AF20EC();
  v63[0] = 0x4008000000000000;
  sub_1E1AF20EC();
  v37 = v55;
  sub_1E1870360(v36, v55, type metadata accessor for ProductCapabilityView.TextStack);
  v39 = v52;
  v38 = v53;
  *&v57[0] = v53;
  *(&v57[0] + 1) = v52;
  v51 = xmmword_1E1B3A2A0;
  v57[1] = xmmword_1E1B3A2A0;
  v40 = v50;
  LOBYTE(v58) = v50;
  *(&v58 + 1) = *v81;
  DWORD1(v58) = *&v81[3];
  *(&v58 + 1) = v21;
  *&v59 = v23;
  *(&v59 + 1) = v25;
  *&v60 = v27;
  BYTE8(v60) = 0;
  *(&v60 + 9) = v84[0];
  HIDWORD(v60) = *(v84 + 3);
  LOBYTE(v61) = v56;
  DWORD1(v61) = *&v83[3];
  *(&v61 + 1) = *v83;
  *(&v61 + 1) = v29;
  *&v62[0] = v31;
  *(&v62[0] + 1) = v33;
  *&v62[1] = v35;
  BYTE8(v62[1]) = 0;
  v41 = v57[0];
  v42 = v59;
  a2[2] = v58;
  a2[3] = v42;
  *a2 = v41;
  a2[1] = xmmword_1E1B3A2A0;
  v43 = v60;
  v44 = v61;
  v45 = v62[0];
  *(a2 + 105) = *(v62 + 9);
  a2[5] = v44;
  a2[6] = v45;
  a2[4] = v43;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA530, &qword_1E1B3A500);
  sub_1E1870360(v37, a2 + *(v46 + 48), type metadata accessor for ProductCapabilityView.TextStack);
  v47 = a2 + *(v46 + 64);
  *v47 = 0;
  v47[8] = 0;
  sub_1E134FD1C(v57, v63, &qword_1ECEBA538, &qword_1E1B3A508);
  sub_1E18703C8(v36, type metadata accessor for ProductCapabilityView.TextStack);
  sub_1E18703C8(v37, type metadata accessor for ProductCapabilityView.TextStack);
  v63[0] = v38;
  v63[1] = v39;
  v64 = v51;
  v65 = v40;
  *v66 = *v81;
  *&v66[3] = *&v81[3];
  v67 = v21;
  v68 = v23;
  v69 = v25;
  v70 = v27;
  v71 = 0;
  *v72 = v84[0];
  *&v72[3] = *(v84 + 3);
  v73 = v56;
  *&v74[3] = *&v83[3];
  *v74 = *v83;
  v75 = v29;
  v76 = v31;
  v77 = v33;
  v78 = v35;
  v79 = 0;
  return sub_1E1308058(v63, &qword_1ECEBA538, &qword_1E1B3A508);
}

uint64_t sub_1E186ED0C@<X0>(uint64_t (*a1)(void, double)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1E1AF24DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BA8, &qword_1E1B09640);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  v13 = a1(0, v10);
  sub_1E134FD1C(v2 + *(v13 + 20), v12, &qword_1ECEB3BA8, &qword_1E1B09640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1E1AF227C();
    return (*(*(v14 - 8) + 32))(a2, v12, v14);
  }

  else
  {
    sub_1E1AF682C();
    v16 = sub_1E1AF26BC();
    sub_1E1AF0F1C();

    sub_1E1AF24CC();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1E186EF1C()
{
  v1 = sub_1E1AF261C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA518, &qword_1E1B3A4F0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  *v7 = sub_1E1AF251C();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA520, &qword_1E1B3A4F8);
  sub_1E186E868(v0, &v7[*(v8 + 44)]);
  sub_1E1AF260C();
  sub_1E1302CD4(&qword_1ECEBA528, &qword_1ECEBA518, &qword_1E1B3A4F0, MEMORY[0x1E69817F8]);
  sub_1E1AF29FC();
  (*(v2 + 8))(v4, v1);
  return sub_1E1308058(v7, &qword_1ECEBA518, &qword_1E1B3A4F0);
}

uint64_t sub_1E186F0D8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v23 = a2;
  v22 = sub_1E1AF261C();
  v3 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA4E0, &qword_1E1B3A4C0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA4E8, &qword_1E1B3A4C8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  *v8 = sub_1E1AF257C();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA4F0, &qword_1E1B3A4D0);
  sub_1E186F3D0(a1, &v8[*(v16 + 44)]);
  sub_1E1AF260C();
  sub_1E1302CD4(&qword_1ECEBA4F8, &qword_1ECEBA4E0, &qword_1E1B3A4C0, MEMORY[0x1E6981870]);
  sub_1E1AF29FC();
  (*(v3 + 8))(v5, v22);
  sub_1E1308058(v8, &qword_1ECEBA4E0, &qword_1E1B3A4C0);
  v17 = *(v10 + 16);
  v17(v12, v15, v9);
  v18 = v23;
  v17(v23, v12, v9);
  v19 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA500, &qword_1E1B3A4D8) + 48)];
  *v19 = 0;
  v19[8] = 0;
  v20 = *(v10 + 8);
  v20(v15, v9);
  return (v20)(v12, v9);
}

uint64_t sub_1E186F3D0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for ProductCapabilityView.TextStack(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v35 - v8);
  v10 = sub_1E1AF227C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *(*a1 + 16);
  v16 = *(v15 + 64);
  v38 = *(v15 + 56);

  if (v16)
  {
    v17 = v16;
    v18 = sub_1E1AF2AAC();
  }

  else
  {
    v18 = sub_1E1AF2AFC();
  }

  v37 = v18;
  v36 = sub_1E1AF26FC();
  sub_1E186ED0C(type metadata accessor for ProductCapabilityView.VerticalLayout, v13);
  _s11AppStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v11 + 8))(v13, v10);
  sub_1E1AF207C();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v51 = 0;
  *v9 = v14;
  v42[0] = 0x4000000000000000;
  sub_1E153C0A0();

  sub_1E1AF20EC();
  v42[0] = 0x4008000000000000;
  sub_1E1AF20EC();
  v42[0] = 0x4008000000000000;
  sub_1E1AF20EC();
  sub_1E1870360(v9, v6, type metadata accessor for ProductCapabilityView.TextStack);
  v27 = v38;
  *&v39[0] = v38;
  v28 = v37;
  *(&v39[0] + 1) = v37;
  v35 = xmmword_1E1B3A2A0;
  v39[1] = xmmword_1E1B3A2A0;
  v29 = v36;
  LOBYTE(v40) = v36;
  *(&v40 + 1) = v52[0];
  DWORD1(v40) = *(v52 + 3);
  *(&v40 + 1) = v20;
  *v41 = v22;
  *&v41[8] = v24;
  *&v41[16] = v26;
  v41[24] = 0;
  v30 = v39[0];
  *(a2 + 57) = *&v41[9];
  v31 = *v41;
  a2[2] = v40;
  a2[3] = v31;
  *a2 = v30;
  a2[1] = xmmword_1E1B3A2A0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA508, &qword_1E1B3A4E0);
  sub_1E1870360(v6, a2 + *(v32 + 48), type metadata accessor for ProductCapabilityView.TextStack);
  v33 = a2 + *(v32 + 64);
  *v33 = 0;
  v33[8] = 0;
  sub_1E134FD1C(v39, v42, &qword_1ECEBA510, &qword_1E1B3A4E8);
  sub_1E18703C8(v9, type metadata accessor for ProductCapabilityView.TextStack);
  sub_1E18703C8(v6, type metadata accessor for ProductCapabilityView.TextStack);
  v42[0] = v27;
  v42[1] = v28;
  v43 = v35;
  v44 = v29;
  *v45 = v52[0];
  *&v45[3] = *(v52 + 3);
  v46 = v20;
  v47 = v22;
  v48 = v24;
  v49 = v26;
  v50 = 0;
  return sub_1E1308058(v42, &qword_1ECEBA510, &qword_1E1B3A4E8);
}

uint64_t sub_1E186F79C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1E1AF252C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA4D8, &qword_1E1B3A4B8);
  return sub_1E186F0D8(v1, (a1 + *(v3 + 44)));
}

double sub_1E186F7EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA580, &qword_1E1B3A720);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v16 - v9;
  sub_1E186F954(a1, a2, v16 - v9);
  if (a1)
  {
    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
    *&v17 = v11;
    *(&v17 + 1) = v12;
    if (!Artwork.URLTemplate.isBundleImage.getter())
    {
      v16[0] = v11;
      v16[1] = v12;
      Artwork.URLTemplate.isSystemImage.getter();
    }
  }

  sub_1E1AF2D1C();
  sub_1E1AF214C();
  sub_1E137F600(v10, a3, &qword_1ECEBA580, &qword_1E1B3A720);
  v13 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA588, &qword_1E1B3A728) + 36));
  v14 = v18;
  *v13 = v17;
  v13[1] = v14;
  result = *&v19;
  v13[2] = v19;
  return result;
}

uint64_t sub_1E186F954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA590, &qword_1E1B3A730);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA598, &qword_1E1B3A738);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - v13;
  if (a1)
  {
    v27 = v11;
    v15 = type metadata accessor for SwiftUIArtworkView(0);
    v16 = v15[6];
    v17 = *MEMORY[0x1E6981688];
    v18 = sub_1E1AF2BAC();
    (*(*(v18 - 8) + 104))(&v14[v16], v17, v18);
    *(v14 + 1) = 0;
    *(v14 + 2) = 0;
    *v14 = a1;
    v14[24] = 1;
    v19 = &v14[v15[7]];
    *v19 = 0;
    *(v19 + 1) = 0;
    v19[16] = 1;
    v14[v15[8]] = 2;
    v14[v15[9]] = 0;
    v20 = sub_1E1AF277C();
    (*(*(v20 - 8) + 56))(v9, 1, 1, v20);

    v21 = sub_1E1AF27AC();
    sub_1E1308058(v9, &qword_1ECEBA590, &qword_1E1B3A730);
    KeyPath = swift_getKeyPath(byte_1E1B3A740);
    v23 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3C28, &qword_1E1B3A770) + 36)];
    *v23 = KeyPath;
    v23[1] = v21;
    *&v14[*(v10 + 36)] = a2;
    sub_1E137F600(v14, a3, &qword_1ECEBA598, &qword_1E1B3A738);
    (*(v27 + 56))(a3, 0, 1, v10);
  }

  else
  {
    v25 = *(v11 + 56);

    return v25(a3, 1, 1, v10, v12);
  }
}

uint64_t sub_1E186FC64@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA568, &qword_1E1B3A610);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v47 - v7;
  v9 = *a1;
  v10 = *(*a1 + 16);
  v11 = *(v10 + 32);
  v59 = *(v10 + 24);
  v60 = v11;
  sub_1E13B8AA4();

  v52 = sub_1E1AF293C();
  v51 = v12;
  v14 = v13;
  v50 = v15;
  v49 = sub_1E1AF26EC();
  type metadata accessor for ProductCapabilityView.TextStack(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5408, &qword_1E1B3A510);
  sub_1E1AF20FC();
  sub_1E1AF207C();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = v14 & 1;
  LOBYTE(v59) = v14 & 1;
  v48 = v14 & 1;
  LOBYTE(v55) = 0;
  v25 = *(v9 + 24);
  *(v8 + 2) = swift_getKeyPath(byte_1E1B3A618);
  v8[56] = 0;
  v26 = type metadata accessor for LinkableTextView(0);
  v27 = v26[8];
  *&v8[v27] = swift_getKeyPath(byte_1E1B3A648);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6DC0, &qword_1E1B3EB70);
  swift_storeEnumTagMultiPayload();
  v28 = &v8[v26[9]];
  *v28 = swift_getKeyPath(byte_1E1B3A680);
  v28[8] = 0;
  v29 = &v8[v26[10]];
  *v29 = swift_getKeyPath(aH_3);
  v29[8] = 0;
  v30 = &v8[v26[11]];
  *v30 = swift_getKeyPath(asc_1E1B3A6E0);
  v30[8] = 0;
  *v8 = v25;
  *(v8 + 4) = 256;

  LOBYTE(v26) = sub_1E1AF26FC();
  sub_1E1AF20FC();
  sub_1E1AF207C();
  v31 = &v8[*(v4 + 44)];
  *v31 = v26;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  v36 = v53;
  sub_1E134FD1C(v8, v53, &qword_1ECEBA568, &qword_1E1B3A610);
  v37 = v52;
  *&v55 = v52;
  v38 = v51;
  *(&v55 + 1) = v51;
  LOBYTE(v56) = v24;
  v39 = v50;
  *(&v56 + 1) = v50;
  v40 = v49;
  LOBYTE(v57) = v49;
  *(&v57 + 1) = v17;
  *v58 = v19;
  *&v58[8] = v21;
  *&v58[16] = v23;
  v58[24] = 0;
  v41 = *v58;
  v42 = v54;
  v54[2] = v57;
  v42[3] = v41;
  *(v42 + 57) = *&v58[9];
  v43 = v56;
  *v42 = v55;
  v42[1] = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA570, &qword_1E1B3A710);
  sub_1E134FD1C(v36, v42 + *(v44 + 48), &qword_1ECEBA568, &qword_1E1B3A610);
  v45 = v42 + *(v44 + 64);
  *v45 = 0;
  v45[8] = 0;
  sub_1E134FD1C(&v55, &v59, &qword_1ECEBA578, &qword_1E1B3A718);
  sub_1E1308058(v8, &qword_1ECEBA568, &qword_1E1B3A610);
  sub_1E1308058(v36, &qword_1ECEBA568, &qword_1E1B3A610);
  v59 = v37;
  v60 = v38;
  v61 = v48;
  v62 = v39;
  v63 = v40;
  v64 = v17;
  v65 = v19;
  v66 = v21;
  v67 = v23;
  v68 = 0;
  return sub_1E1308058(&v59, &qword_1ECEBA578, &qword_1E1B3A718);
}

uint64_t sub_1E1870064@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_1E1AF257C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5408, &qword_1E1B3A510);
  sub_1E1AF20FC();
  *a2 = v4;
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA560, &qword_1E1B3A608);
  return sub_1E186FC64(v2, (a2 + *(v5 + 44)));
}

uint64_t sub_1E187010C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](v1);
  sub_1E1870360(v3, &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ProductCapabilityView);
  sub_1E187022C(&qword_1ECEB8A88, type metadata accessor for ProductCapabilityView, &unk_1E1B3A338);
  return sub_1E1AF0CBC();
}

uint64_t sub_1E187022C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E1870360(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E18703C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E1870428@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1E1AF24DC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_1E134FD1C(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_1E1AF682C();
    v19 = sub_1E1AF26BC();
    sub_1E1AF0F1C();

    sub_1E1AF24CC();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_1E1870650@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E1AF24DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1E134FD1C(v2, v11, &qword_1ECEBA5A0, &qword_1E1B3A778);
  if (v13 == 1)
  {
    v9 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v9;
    *(a1 + 32) = v12;
  }

  else
  {
    sub_1E1AF682C();
    v10 = sub_1E1AF26BC();
    sub_1E1AF0F1C();

    sub_1E1AF24CC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_1E18707EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E1AF24DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5388, &unk_1E1B3A3E0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1E134FD1C(v2, &v13 - v9, &qword_1ECEB5388, &unk_1E1B3A3E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1E137F600(v10, a1, &qword_1ECEB5340, &qword_1E1B15C60);
  }

  sub_1E1AF682C();
  v12 = sub_1E1AF26BC();
  sub_1E1AF0F1C();

  sub_1E1AF24CC();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

void sub_1E1870A1C(uint64_t a1)
{
  type metadata accessor for ProductCapabilityViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1E1430C30(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1E1870AA0()
{
  result = qword_1ECEBA4C8;
  if (!qword_1ECEBA4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBA4D0, "z");
    sub_1E187022C(&qword_1ECEBA498, type metadata accessor for ProductCapabilityView.VerticalLayout, &unk_1E1B3A468);
    sub_1E187022C(&qword_1ECEBA4A0, type metadata accessor for ProductCapabilityView.HorizontalLayout, &unk_1E1B3A418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA4C8);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_8Tm(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

void *__swift_store_extra_inhabitant_index_9Tm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v10 = *(*(v9 - 8) + 56);
    v11 = v7 + *(a4 + 20);

    return v10(v11, a2, a2, v9);
  }

  return result;
}

void sub_1E1870D64(uint64_t a1)
{
  type metadata accessor for ProductCapabilityViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1E1870DF0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E1870DF0(uint64_t a1)
{
  if (!qword_1ECEB5430)
  {
    sub_1E153C0A0();
    v1 = sub_1E1AF210C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECEB5430);
    }
  }
}

unint64_t sub_1E1870E94()
{
  result = qword_1ECEBA5B8;
  if (!qword_1ECEBA5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBA588, &qword_1E1B3A728);
    sub_1E1870F20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA5B8);
  }

  return result;
}

unint64_t sub_1E1870F20()
{
  result = qword_1ECEBA5C0;
  if (!qword_1ECEBA5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBA580, &qword_1E1B3A720);
    sub_1E1870FA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA5C0);
  }

  return result;
}

unint64_t sub_1E1870FA4()
{
  result = qword_1ECEBA5C8;
  if (!qword_1ECEBA5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBA5D0, &qword_1E1B3A788);
    sub_1E1871028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA5C8);
  }

  return result;
}

unint64_t sub_1E1871028()
{
  result = qword_1ECEBA5D8;
  if (!qword_1ECEBA5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBA598, &qword_1E1B3A738);
    sub_1E1430F7C();
    sub_1E1302CD4(&qword_1ECEB6E20, &qword_1ECEB6E28, &qword_1E1B1FB28, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA5D8);
  }

  return result;
}

char *PageFacetsChangeAction.__allocating_init(filterParameter:title:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v15 = &v14[OBJC_IVAR____TtC11AppStoreKit22PageFacetsChangeAction_filterParameter];
  *v15 = a1;
  *(v15 + 1) = a2;
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v16 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v17 = sub_1E1AF3E1C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v14[v16], a5, v17);
  v19 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v20 = sub_1E1AF46DC();
  (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
  v21 = &v14[OBJC_IVAR____TtC11AppStoreKit6Action_clickSender];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v22 = &v14[OBJC_IVAR____TtC11AppStoreKit6Action_id];
  sub_1E138853C(v38, &v35);
  if (*(&v36 + 1))
  {
    v23 = v36;
    *v22 = v35;
    *(v22 + 1) = v23;
    *(v22 + 4) = v37;
  }

  else
  {
    sub_1E1AEFE9C();
    v24 = sub_1E1AEFE7C();
    v25 = v10;
    v26 = a5;
    v27 = a3;
    v28 = a4;
    v29 = v24;
    v30 = v11;
    v32 = v31;
    (*(v30 + 8))(v13, v25);
    v34[1] = v29;
    v34[2] = v32;
    a4 = v28;
    a3 = v27;
    a5 = v26;
    sub_1E1AF6F6C();
    sub_1E1308058(&v35, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  (*(v18 + 8))(a5, v17);
  sub_1E1308058(v38, &unk_1ECEB5670, qword_1E1B03EC0);
  *(v14 + 2) = a3;
  *(v14 + 3) = a4;
  *(v14 + 4) = 0;
  *(v14 + 5) = 0;
  return v14;
}

void *PageFacetsChangeAction.init(filterParameter:title:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v31 = a3;
  v32 = a4;
  v10 = sub_1E1AEFEAC();
  v30 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v30 - v14;
  v16 = sub_1E1AF3E1C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (v6 + OBJC_IVAR____TtC11AppStoreKit22PageFacetsChangeAction_filterParameter);
  *v20 = a1;
  v20[1] = a2;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  (*(v17 + 16))(v19, a5, v16);
  v21 = sub_1E1AF46DC();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  v22 = (v6 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v22 = 0u;
  v22[1] = 0u;
  sub_1E138853C(v41, &v35);
  if (*(&v36 + 1))
  {
    v38 = v35;
    v39 = v36;
    v40 = v37;
  }

  else
  {
    sub_1E1AEFE9C();
    v23 = sub_1E1AEFE7C();
    v25 = v24;
    (*(v30 + 8))(v12, v10);
    v33 = v23;
    v34 = v25;
    sub_1E1AF6F6C();
    sub_1E1308058(&v35, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  (*(v17 + 8))(a5, v16);
  sub_1E1308058(v41, &unk_1ECEB5670, qword_1E1B03EC0);
  v26 = v6 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v26 + 4) = v40;
  v27 = v39;
  *v26 = v38;
  *(v26 + 1) = v27;
  sub_1E134B7C8(v15, v6 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v28 = v32;
  v6[2] = v31;
  v6[3] = v28;
  v6[4] = 0;
  v6[5] = 0;
  (*(v17 + 32))(v6 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v19, v16);
  return v6;
}

uint64_t PageFacetsChangeAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v32 = a2;
  v27 = *v3;
  v31 = sub_1E1AF39DC();
  v35 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  v33 = a1;
  sub_1E1AF381C();
  v13 = sub_1E1AF37CC();
  v15 = v14;
  v16 = *(v7 + 8);
  v34 = v6;
  v16(v12, v6);
  if (v15)
  {
    v17 = (v30 + OBJC_IVAR____TtC11AppStoreKit22PageFacetsChangeAction_filterParameter);
    *v17 = v13;
    v17[1] = v15;
    v18 = v33;
    (*(v7 + 16))(v9, v33, v34);
    v6 = v28;
    v20 = v31;
    v19 = v32;
    (*(v35 + 16))(v28, v32, v31);
    v21 = v29;
    v22 = Action.init(deserializing:using:)(v9, v6);
    if (!v21)
    {
      v6 = v22;
    }

    (*(v35 + 8))(v19, v20);
    v16(v18, v34);
  }

  else
  {
    v23 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v24 = 0x61507265746C6966;
    v25 = v27;
    v24[1] = 0xEF726574656D6172;
    v24[2] = v25;
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x1E69AB690], v23);
    swift_willThrow();
    (*(v35 + 8))(v32, v31);
    v16(v33, v34);
    swift_deallocPartialClassInstance();
  }

  return v6;
}

uint64_t PageFacetsChangeAction.filterParameter.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit22PageFacetsChangeAction_filterParameter);

  return v1;
}

uint64_t PageFacetsChangeAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return v0;
}

uint64_t PageFacetsChangeAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PageFacetsChangeAction(uint64_t a1)
{
  result = qword_1ECEBA5E0;
  if (!qword_1ECEBA5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArcadeSubscribePageIntent.init(url:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0xD000000000000019;
  *(a2 + 1) = 0x80000001E1B3A7D0;
  v4 = *(type metadata accessor for ArcadeSubscribePageIntent(0) + 20);
  v5 = sub_1E1AEFCCC();
  v6 = *(*(v5 - 8) + 32);

  return v6(&a2[v4], a1, v5);
}

uint64_t type metadata accessor for ArcadeSubscribePageIntent(uint64_t a1)
{
  result = qword_1EE1D8F38;
  if (!qword_1EE1D8F38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArcadeSubscribePageIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ArcadeSubscribePageIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArcadeSubscribePageIntent(0) + 20);
  v4 = sub_1E1AEFCCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

JSValue __swiftcall ArcadeSubscribePageIntent.makeValue(in:)(JSContext in)
{
  v2 = objc_opt_self();
  result.super.isa = [v2 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    type metadata accessor for ArcadeSubscribePageIntent(0);
    v7 = sub_1E1AEFBDC();
    v6 = [v2 valueWithObject:sub_1E1AF755C() inContext:{in.super.isa, v7, v5}];
    result.super.isa = swift_unknownObjectRelease();
    if (v6)
    {
      sub_1E1AF6C5C();
      return isa;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E18721D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1E18722BC(uint64_t a1)
{
  v2 = *v1;
  v4 = a1;
  (*(*v2 + 104))(&v5, &v4);
  return v5;
}

double String.extractElementKindContentIdentifier()@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[0] = 47;
  v19[1] = 0xE100000000000000;
  v18[2] = v19;

  v7 = sub_1E1872C00(0x7FFFFFFFFFFFFFFFLL, 1, sub_1E14F35A4, v18, a1, a2, v6);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = (v7 + 32 * v8);
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    v13 = v9[3];

    v14 = MEMORY[0x1E68FEBF0](v10, v11, v12, v13);
    v16 = v15;

    v18[4] = v14;
    v18[5] = v16;
    sub_1E1AF6F6C();
    DiffablePageContentIdentifier.init(_:)(v19, a3);
  }

  else
  {

    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t static UICollectionReusableView.defaultReuseIdentifier.getter()
{
  v1 = v0;
  if (qword_1EE1ED618 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EE2169E8;
  if (*(qword_1EE2169E8 + 16) && (v3 = sub_1E131A7E8(v1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 16 * v3);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = NSStringFromClass(ObjCClassFromMetadata);
    v5 = sub_1E1AF5DFC();
    v9 = v8;

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = qword_1EE2169E8;
    qword_1EE2169E8 = 0x8000000000000000;
    sub_1E159B1C0(v5, v9, v1, isUniquelyReferenced_nonNull_native);
    qword_1EE2169E8 = v12;
    swift_endAccess();
  }

  return v5;
}

uint64_t static UICollectionReusableView.elementKind.getter()
{
  v1 = v0;
  if (qword_1EE1ED630 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EE2169F8;
  if (*(qword_1EE2169F8 + 16) && (v3 = sub_1E131A7E8(v1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 16 * v3);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v10 = static UICollectionReusableView.defaultReuseIdentifier.getter();
    v11 = v6;
    MEMORY[0x1E68FECA0](0x746E656D656C652ELL, 0xEC000000646E694BLL);
    v5 = v10;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = qword_1EE2169F8;
    qword_1EE2169F8 = 0x8000000000000000;
    sub_1E159B1C0(v10, v11, v1, isUniquelyReferenced_nonNull_native);
    qword_1EE2169F8 = v9;
    swift_endAccess();
  }

  return v5;
}

uint64_t sub_1E18726F0()
{
  v1 = v0;
  if (qword_1EE1ED628 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EE2169F0;
  if (*(qword_1EE2169F0 + 16) && (v3 = sub_1E131A7E8(v1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 16 * v3);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1E1AF6FEC();
    v6 = static UICollectionReusableView.defaultReuseIdentifier.getter();
    v8 = v7;

    MEMORY[0x1E68FECA0](0xD000000000000011, 0x80000001E1B79F70);
    v5 = v6;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = qword_1EE2169F0;
    qword_1EE2169F0 = 0x8000000000000000;
    sub_1E159B1C0(v6, v8, v1, isUniquelyReferenced_nonNull_native);
    qword_1EE2169F0 = v11;
    swift_endAccess();
  }

  return v5;
}

uint64_t static UICollectionReusableView.makeUniqueElementKind()()
{
  v0 = sub_1E1AEFEAC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[0] = static UICollectionReusableView.elementKind.getter();
  v9[1] = v4;
  MEMORY[0x1E68FECA0](95, 0xE100000000000000);
  sub_1E1AEFE9C();
  v5 = sub_1E1AEFE7C();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  MEMORY[0x1E68FECA0](v5, v7);

  return v9[0];
}

uint64_t static UICollectionReusableView.makeItemScopedElementKind(in:uniquify:)(uint64_t a1, char a2)
{
  v3 = sub_1E1AEFEAC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v16 = 0xE000000000000000;
  v7 = sub_1E18726F0();
  MEMORY[0x1E68FECA0](v7);
  if (a2)
  {

    MEMORY[0x1E68FECA0](95, 0xE100000000000000);
    sub_1E1AEFE9C();
    v8 = sub_1E1AEFE7C();
    v10 = v9;
    (*(v4 + 8))(v6, v3);
    MEMORY[0x1E68FECA0](v8, v10);
  }

  sub_1E1AF5D3C();
  type metadata accessor for ItemLayoutContext(0);
  swift_getKeyPath("Є:\v");
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80, &unk_1E1B042D0);
  sub_1E1AF3DAC();

  v11 = sub_1E1AF6F1C();
  MEMORY[0x1E68FECA0](v11);

  sub_1E134B88C(v14);
  return v15;
}

uint64_t sub_1E1872B94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  sub_1E13B8AA4();
  v3 = sub_1E1AF6E9C();

  return v3 & 1;
}

unint64_t sub_1E1872C00@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1E1AF609C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1E172E5F0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1E172E5F0((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1E1AF607C();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1E1AF5F2C();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1E1AF5F2C();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1E1AF609C();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1E172E5F0(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1E1AF609C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1E172E5F0(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1E172E5F0((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1E1AF5F2C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *GameCenterDashboardAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  v12 = *(v9 + 16);
  v16 = a1;
  v12(v11, a1, v8);
  (*(v5 + 16))(v7, a2, v4);
  v13 = Action.init(deserializing:using:)(v11, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v16, v8);
  return v13;
}

char *GameCenterDashboardAction.__allocating_init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a4;
  v33 = a5;
  v30 = a2;
  v31 = a3;
  v10 = sub_1E1AEFEAC();
  v27 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v29 = a1;
  sub_1E134FD1C(a1, v39, &unk_1ECEB5670, qword_1E1B03EC0);
  v14 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v15 = sub_1E1AF3E1C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v28 = a6;
  v17(&v13[v14], a6, v15);
  sub_1E134FD1C(a7, &v13[OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics], &unk_1ECEB1770, &unk_1E1AFED20);
  v18 = &v13[OBJC_IVAR____TtC11AppStoreKit6Action_clickSender];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v19 = &v13[OBJC_IVAR____TtC11AppStoreKit6Action_id];
  sub_1E134FD1C(v39, &v36, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v37 + 1))
  {
    v20 = v37;
    *v19 = v36;
    *(v19 + 1) = v20;
    *(v19 + 4) = v38;
  }

  else
  {
    sub_1E1AEFE9C();
    v21 = sub_1E1AEFE7C();
    v23 = v22;
    (*(v27 + 8))(v12, v10);
    v34 = v21;
    v35 = v23;
    sub_1E1AF6F6C();
    sub_1E1308058(&v36, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a7, &unk_1ECEB1770, &unk_1E1AFED20);
  (*(v16 + 8))(v28, v15);
  sub_1E1308058(v29, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E1308058(v39, &unk_1ECEB5670, qword_1E1B03EC0);
  v24 = v31;
  *(v13 + 2) = v30;
  *(v13 + 3) = v24;
  v25 = v33;
  *(v13 + 4) = v32;
  *(v13 + 5) = v25;
  return v13;
}

void *GameCenterDashboardAction.init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v38 = a7;
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v40 = a2;
  v37 = sub_1E1AEFEAC();
  v36 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v35 - v14;
  v16 = sub_1E1AF3E1C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  v20 = a1;
  v21 = a6;
  v22 = v38;
  sub_1E134FD1C(v20, v52, &unk_1ECEB5670, qword_1E1B03EC0);
  (*(v17 + 16))(v19, v21, v16);
  sub_1E134FD1C(v22, v15, &unk_1ECEB1770, &unk_1E1AFED20);
  v23 = (v8 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v23 = 0u;
  v23[1] = 0u;
  sub_1E134FD1C(v52, &v46, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v47 + 1))
  {
    v49 = v46;
    v50 = v47;
    v51 = v48;
  }

  else
  {
    sub_1E1AEFE9C();
    v24 = v22;
    v25 = sub_1E1AEFE7C();
    v26 = v15;
    v28 = v27;
    (*(v36 + 8))(v12, v37);
    v44 = v25;
    v45 = v28;
    v22 = v24;
    v15 = v26;
    sub_1E1AF6F6C();
    sub_1E1308058(&v46, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(v22, &unk_1ECEB1770, &unk_1E1AFED20);
  (*(v17 + 8))(v21, v16);
  sub_1E1308058(v39, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E1308058(v52, &unk_1ECEB5670, qword_1E1B03EC0);
  v29 = v8 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v29 + 4) = v51;
  v30 = v50;
  *v29 = v49;
  *(v29 + 1) = v30;
  sub_1E134B7C8(v15, v8 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v31 = v41;
  v32 = v42;
  v8[2] = v40;
  v8[3] = v31;
  v33 = v43;
  v8[4] = v32;
  v8[5] = v33;
  (*(v17 + 32))(v8 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v19, v16);
  return v8;
}

char *GameCenterDashboardAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v17 = a1;
  v13(v12, a1, v8, v10);
  (*(v5 + 16))(v7, a2, v4);
  v14 = Action.init(deserializing:using:)(v12, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v17, v8);
  return v14;
}

uint64_t GameCenterDashboardAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  return v0;
}

uint64_t GameCenterDashboardAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GameCenterDashboardAction(uint64_t a1)
{
  result = qword_1EE1D8D38;
  if (!qword_1EE1D8D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall PageFacetsPresenter.setFacets(_:selectedFacetOptions:)(AppStoreKit::PageFacets_optional *_, Swift::OpaquePointer selectedFacetOptions)
{
  v3 = v2;
  v6 = sub_1E1AF320C();
  v21 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF324C();
  v19 = *(v9 - 8);
  v20 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  rawValue = _->value.facetGroups._rawValue;
  countAndFlagsBits = _->value.resetButtonTitle.value._countAndFlagsBits;
  object = _->value.resetButtonTitle.value._object;
  v18[1] = *(v3 + 80);
  allowsResetButton = _->value.allowsResetButton;
  v16 = swift_allocObject();
  *(v16 + 16) = v3;
  *(v16 + 24) = rawValue;
  *(v16 + 32) = countAndFlagsBits;
  *(v16 + 40) = object;
  *(v16 + 48) = allowsResetButton;
  *(v16 + 56) = selectedFacetOptions;
  aBlock[4] = sub_1E1874C48;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_81;
  v17 = _Block_copy(aBlock);

  sub_1E13C0418(rawValue, countAndFlagsBits, object);

  sub_1E1AF322C();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850, MEMORY[0x1E69E6328]);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v11, v8, v17);
  _Block_release(v17);
  (*(v21 + 8))(v8, v6);
  (*(v19 + 8))(v11, v20);
}

uint64_t sub_1E1873F9C()
{
  v0 = sub_1E159FA90(MEMORY[0x1E69E7CC0]);
  qword_1EE1DCBA0 = 0;
  qword_1EE1DCBA8 = 0;
  qword_1EE1DCB98 = 0;
  byte_1EE1DCBB0 = 0;
  result = sub_1E13C045C(0, 0, 0);
  qword_1EE1DCBB8 = v0;
  return result;
}