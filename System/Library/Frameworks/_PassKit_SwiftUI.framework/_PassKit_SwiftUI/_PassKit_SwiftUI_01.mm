uint64_t sub_23B7F9430@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_23B7F9568(a2, a3, a4);
  result = sub_23B8021C0();
  *a1 = v6;
  return result;
}

uint64_t sub_23B7F9480@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_23B7F9568(a2, a3, a4);
  result = sub_23B8021C0();
  *a1 = v6;
  return result;
}

unint64_t sub_23B7F9568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E186E50;
  if (!qword_27E186E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186E50);
  }

  return result;
}

uint64_t View.onApplePayPaymentMethodChange(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_23B8021A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B802680();
  v10 = sub_23B802390();
  sub_23B802070();

  v11 = sub_23B802190();
  sub_23B7F9848(v11, v12, v13);
  sub_23B8021C0();
  v14 = v21;
  (*(v7 + 8))(v9, v6);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_23B7FAC2C(0, v14[2] + 1, 1, v14, &qword_27E186ED0, &unk_23B8051F0);
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_23B7FAC2C((v16 > 1), v17 + 1, 1, v14, &qword_27E186ED0, &unk_23B8051F0);
  }

  v14[2] = v17 + 1;
  v18 = &v14[2 * v17];
  v18[4] = &unk_23B804F88;
  v18[5] = v15;
  swift_getKeyPath();
  v21 = v14;
  sub_23B8023D0();
}

unint64_t sub_23B7F9848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E186E58;
  if (!qword_27E186E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186E58);
  }

  return result;
}

uint64_t sub_23B7F98BC(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_23B7FAD7C;

  return v7(v4);
}

uint64_t sub_23B7F99B4(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FE8E8](v2, 32, 7);
}

uint64_t sub_23B7F99EC(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23B7F689C;

  return sub_23B7F98BC(a1, a2, v6);
}

uint64_t View.onApplePayShippingContactChange(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_23B8021A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B802680();
  v10 = sub_23B802390();
  sub_23B802070();

  v11 = sub_23B802190();
  sub_23B7FA67C(v11, v12, v13);
  sub_23B8021C0();
  v14 = v21;
  (*(v7 + 8))(v9, v6);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_23B7FAC2C(0, v14[2] + 1, 1, v14, &qword_27E186EC8, &qword_23B8051E8);
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_23B7FAC2C((v16 > 1), v17 + 1, 1, v14, &qword_27E186EC8, &qword_23B8051E8);
  }

  v14[2] = v17 + 1;
  v18 = &v14[2 * v17];
  v18[4] = &unk_23B804FC0;
  v18[5] = v15;
  swift_getKeyPath();
  v21 = v14;
  sub_23B8023D0();
}

uint64_t View.onApplePayShippingMethodChange(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_23B8021A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B802680();
  v10 = sub_23B802390();
  sub_23B802070();

  v11 = sub_23B802190();
  sub_23B7FA7CC(v11, v12, v13);
  sub_23B8021C0();
  v14 = v21;
  (*(v7 + 8))(v9, v6);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_23B7FAC2C(0, v14[2] + 1, 1, v14, &qword_27E186EC0, &qword_23B8051E0);
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_23B7FAC2C((v16 > 1), v17 + 1, 1, v14, &qword_27E186EC0, &qword_23B8051E0);
  }

  v14[2] = v17 + 1;
  v18 = &v14[2 * v17];
  v18[4] = &unk_23B804FF8;
  v18[5] = v15;
  swift_getKeyPath();
  v21 = v14;
  sub_23B8023D0();
}

uint64_t sub_23B7FA00C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  a5();

  return sub_23B8021D0();
}

uint64_t View.onApplePayCouponCodeChange(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186E70, &qword_23B805050);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_23B804C50;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v6 + 32) = &unk_23B805060;
  *(v6 + 40) = v7;

  sub_23B8023D0();
}

uint64_t sub_23B7FA180(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_23B8021C0();
  return v3;
}

uint64_t sub_23B7FA1E8@<X0>(uint64_t (*a1)(void)@<X3>, void *a3@<X8>)
{
  a1();
  result = sub_23B8021C0();
  *a3 = v5;
  return result;
}

uint64_t sub_23B7FA244(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*(*a1 + 16))
  {

    sub_23B7FABC4(v4, v5, v6);
    v7 = sub_23B8021B0();
    sub_23B7F22C4(v3);
    return v7(v9, 0);
  }

  else
  {
    sub_23B7FABC4(a1, a2, a3);
    return sub_23B8021D0();
  }
}

uint64_t sub_23B7FA2F8(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v5 = a2[1];
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_23B7FA3F8;

  return v8(v4, v5);
}

uint64_t sub_23B7FA3F8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_23B7FA5E8@<X0>(void *a1@<X2>, void *a2@<X3>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a4;
    swift_once();
    a4 = v7;
    a2 = v6;
  }

  *a4 = *a2;
}

unint64_t sub_23B7FA67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E186E60;
  if (!qword_27E186E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186E60);
  }

  return result;
}

uint64_t sub_23B7FA6D0(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23B7F689C;

  return sub_23B7F98BC(a1, a2, v6);
}

unint64_t sub_23B7FA7CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E186E68;
  if (!qword_27E186E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186E68);
  }

  return result;
}

uint64_t sub_23B7FA820(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23B7F689C;

  return sub_23B7F98BC(a1, a2, v6);
}

uint64_t sub_23B7FA91C@<X0>(uint64_t a1@<X0>, void *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_23B7FABC4(a1, a3, a4);
  result = sub_23B8021C0();
  *a2 = v6;
  return result;
}

uint64_t sub_23B7FA970(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23B7E5AAC;

  return sub_23B7FA2F8(a1, a2, v6);
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVySaySo35PKPaymentRequestPaymentMethodUpdateCSo0jM0CYacGGGAaBHPxAaBHD1__AlA0cI0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_23B802140();
  sub_23B7FAB40(a4, a2, a3);
  return swift_getWitnessTable();
}

uint64_t sub_23B7FAB40(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_23B7FABC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E186EB8;
  if (!qword_27E186EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186EB8);
  }

  return result;
}

void *sub_23B7FAC2C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
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

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1869E0, &qword_23B804350);
    swift_arrayInitWithCopy();
  }

  return v12;
}

id sub_23B7FAD80()
{
  v0 = objc_opt_self();

  return [v0 openInstallWallet];
}

uint64_t sub_23B7FADB8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_23B8021A0();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2 + *(a1 + 52);
  v11 = *v10;
  if (*(v10 + 8) == 1)
  {
    *a2 = v11;
  }

  else
  {

    sub_23B802680();
    v12 = sub_23B802390();
    sub_23B802070();

    sub_23B802190();
    swift_getAtKeyPath();
    sub_23B7E2D4C(v11, 0);
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_23B7FAF14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_23B8021A0();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2 + *(a1 + 56);
  v11 = *v10;
  if (*(v10 + 8) == 1)
  {
    *a2 = v11;
  }

  else
  {

    sub_23B802680();
    v12 = sub_23B802390();
    sub_23B802070();

    sub_23B802190();
    swift_getAtKeyPath();
    sub_23B7E2D4C(v11, 0);
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t PayLaterView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_23B802660();
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v42 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 - 8);
  v41 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E186ED8, &qword_23B805270);
  v8 = *(a1 + 16);
  v9 = a1;
  v35 = a1;
  sub_23B8026E0();
  sub_23B8022D0();
  v10 = sub_23B7FB594();
  v11 = *(v9 + 24);
  v53 = v11;
  v34 = v11;
  WitnessTable = swift_getWitnessTable();
  v51 = v10;
  v52 = WitnessTable;
  swift_getWitnessTable();
  v13 = sub_23B8024F0();
  v38 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - v14;
  sub_23B8020F0();
  v16 = sub_23B802140();
  v40 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v36 = &v34 - v20;
  v46 = v8;
  v47 = v11;
  v21 = v37;
  v48 = v37;
  sub_23B8021E0();
  sub_23B8024E0();
  v22 = v39;
  v23 = v21;
  v24 = v35;
  (*(v6 + 16))(v39, v23, v35);
  v25 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v26 = swift_allocObject();
  v27 = v34;
  *(v26 + 16) = v8;
  *(v26 + 24) = v27;
  (*(v6 + 32))(v26 + v25, v22, v24);
  v28 = swift_getWitnessTable();
  v29 = v42;
  sub_23B7E125C();
  sub_23B802400();

  (*(v43 + 8))(v29, v44);
  (*(v38 + 8))(v15, v13);
  v30 = sub_23B7FD83C(&qword_27E186418, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
  v49 = v28;
  v50 = v30;
  swift_getWitnessTable();
  v31 = v36;
  sub_23B7E7EA8();
  v32 = *(v40 + 8);
  v32(v19, v16);
  sub_23B7E7EA8();
  return (v32)(v31, v16);
}

unint64_t sub_23B7FB594()
{
  result = qword_27E186EE0;
  if (!qword_27E186EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E186ED8, &qword_23B805270);
    sub_23B7FD83C(&qword_27E186EE8, type metadata accessor for PayLaterViewWrapper, &unk_23B805434);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186EE0);
  }

  return result;
}

uint64_t type metadata accessor for PayLaterViewWrapper(uint64_t a1)
{
  result = qword_27E186F88;
  if (!qword_27E186F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B7FB69C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v26 = a3;
  v5 = sub_23B8026E0();
  v24 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186ED8, &qword_23B805270);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = sub_23B8022D0();
  v25 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - v15;
  v27 = a2;
  v18 = type metadata accessor for PayLaterView(0, a1, a2, v17);
  if (sub_23B7E3498(v18))
  {
    sub_23B7FBA14(v18, v13);
    sub_23B7FB594();
    v28 = v27;
    swift_getWitnessTable();
    sub_23B7E7FB8(v13, v11);
    sub_23B7FD978(v13);
  }

  else
  {
    v32 = v27;
    swift_getWitnessTable();
    sub_23B7E7EA8();
    sub_23B7E7EA8();
    sub_23B7FB594();
    sub_23B7E80B0(v8, v11, v5);
    v19 = *(v24 + 8);
    v19(v8, v5);
    v19(v10, v5);
  }

  v20 = sub_23B7FB594();
  v31 = v27;
  WitnessTable = swift_getWitnessTable();
  v29 = v20;
  v30 = WitnessTable;
  swift_getWitnessTable();
  sub_23B7E7EA8();
  return (*(v25 + 8))(v16, v14);
}

__n128 sub_23B7FBA14@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PayLaterViewWrapper(0);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v2;
  v22 = *(v2 + 4);
  v9 = *(a1 + 36);
  v10 = v6[7];
  v11 = sub_23B802050();
  (*(*(v11 - 8) + 16))(&v8[v10], v2 + v9, v11);
  sub_23B7FAF14(a1, v20);
  v12 = *&v20[0];
  sub_23B7FADB8(a1, &v19);
  v13 = v19;
  *v8 = v21;
  *(v8 + 4) = v22;
  *&v8[v6[8]] = v12;
  *&v8[v6[9]] = v13;
  sub_23B802530();
  sub_23B802150();
  sub_23B7FD9E0(v8, a2);
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186ED8, &qword_23B805270) + 36);
  v15 = v20[5];
  *(v14 + 64) = v20[4];
  *(v14 + 80) = v15;
  *(v14 + 96) = v20[6];
  v16 = v20[1];
  *v14 = v20[0];
  *(v14 + 16) = v16;
  result = v20[3];
  *(v14 + 32) = v20[2];
  *(v14 + 48) = result;
  return result;
}

uint64_t sub_23B7FBC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_23B802630();
  v3[3] = sub_23B802620();
  v6 = swift_task_alloc();
  v3[4] = v6;
  v8 = type metadata accessor for PayLaterView(0, a2, a3, v7);
  *v6 = v3;
  v6[1] = sub_23B7EF068;

  return sub_23B7FC010(v8);
}

uint64_t sub_23B7FBD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for PayLaterView(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 1) + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*(v6 - 1) + 64);
  v10 = v4 + v8;
  v11 = v6[9];
  v12 = sub_23B802050();
  (*(*(v12 - 8) + 8))(v4 + v8 + v11, v12);
  v13 = v6[10];
  v14 = *(v5 - 8);
  if (!(*(v14 + 48))(v4 + v8 + v13, 1, v5))
  {
    (*(v14 + 8))(v10 + v13, v5);
  }

  sub_23B7E2D4C(*(v10 + v6[13]), *(v10 + v6[13] + 8));
  sub_23B7E2D4C(*(v10 + v6[14]), *(v10 + v6[14] + 8));
  v15 = v6[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186630, &qword_23B805280);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_23B8020C0();
    (*(*(v16 - 8) + 8))(v10 + v15, v16);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7);
}

uint64_t sub_23B7FBF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for PayLaterView(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_23B7E5AAC;

  return sub_23B7FBC34(v4 + v9, v6, v7);
}

uint64_t sub_23B7FC010(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_23B802630();
  v2[4] = sub_23B802620();
  v4 = sub_23B802610();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_23B7FC0A8, v4, v3);
}

uint64_t sub_23B7FC0A8()
{
  v1 = v0[3];
  v2 = *(v1 + 4);
  v3 = *(v0[2] + 36);
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_23B7FC168;

  return MEMORY[0x2821FF738](v5, v4, v2, v1 + v3);
}

uint64_t sub_23B7FC168(char a1)
{
  v2 = *v1;
  *(*v1 + 64) = a1;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);

  return MEMORY[0x2822009F8](sub_23B7FC290, v4, v3);
}

uint64_t sub_23B7FC290(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 64);
  v4 = *(v2 + 16);

  sub_23B7E34F8(v3, v4);
  v5 = *(v2 + 8);

  return v5();
}

uint64_t PayLaterView<>.init(amount:currency:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E186EF0, &qword_23B805290);
  v11 = v10[9];
  v12 = sub_23B802050();
  v13 = *(v12 - 8);
  (*(v13 + 16))(a5 + v11, a4, v12);
  v14 = v10[10];
  *(a5 + v10[11]) = 0x4041800000000000;
  v15 = a5 + v10[12];
  sub_23B802470();
  (*(v13 + 8))(a4, v12);
  *v15 = v20;
  *(v15 + 8) = v21;
  v16 = a5 + v10[13];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = a5 + v10[14];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = v10[15];
  *(a5 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186630, &qword_23B805280);
  result = swift_storeEnumTagMultiPayload();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + v14) = 0;
  return result;
}

void *sub_23B7FC4AC(uint64_t a1, int *a2)
{
  v4 = v2;
  v5 = sub_23B802050();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B7FD884();
  (*(v6 + 16))(v8, v4 + a2[5], v5);
  v9 = sub_23B802690();
  [v9 setDisplayStyle_];
  [v9 setAction_];
  return v9;
}

id sub_23B7FC5EC(void *a1, uint64_t a2, int *a3)
{
  v5 = v3;
  v7 = sub_23B802050();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B8026A0();
  (*(v8 + 16))(v10, v5 + a3[5], v7);
  sub_23B8026B0();
  [a1 setDisplayStyle_];
  return [a1 setAction_];
}

uint64_t sub_23B7FC704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B7FD83C(&qword_27E186F98, type metadata accessor for PayLaterViewWrapper, &unk_23B8053A4);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_23B7FC798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B7FD83C(&qword_27E186F98, type metadata accessor for PayLaterViewWrapper, &unk_23B8053A4);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_23B7FC82C(uint64_t a1)
{
  sub_23B7FD83C(&qword_27E186F98, type metadata accessor for PayLaterViewWrapper, &unk_23B8053A4);
  sub_23B802280();
  __break(1u);
}

uint64_t keypath_getTm@<X0>(uint64_t (*a1)(void)@<X3>, void *a3@<X8>)
{
  a1();
  result = sub_23B8021C0();
  *a3 = v5;
  return result;
}

uint64_t sub_23B7FCA78(uint64_t a1)
{
  v2 = sub_23B8020C0();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_23B802170();
}

void sub_23B7FCB88(uint64_t a1)
{
  type metadata accessor for Decimal(319);
  if (v1 <= 0x3F)
  {
    sub_23B802050();
    if (v2 <= 0x3F)
    {
      sub_23B8026E0();
      if (v3 <= 0x3F)
      {
        sub_23B7E7068(319, &qword_27E1866C8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_23B7E7068(319, &qword_27E186F78, &type metadata for PayLaterViewAction, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_23B7E7068(319, &qword_27E186F80, &type metadata for PayLaterViewDisplayStyle, MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_23B7FD480(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23B7FCCFC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = sub_23B802050();
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v33 = *(a3 + 16);
  v34 = v5;
  v8 = *(v33 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(sub_23B8020C0() - 8);
  if (*(v13 + 64) <= 8uLL)
  {
    v14 = 8;
  }

  else
  {
    v14 = *(v13 + 64);
  }

  v15 = *(v6 + 80);
  v16 = *(v6 + 64);
  v17 = *(v8 + 80);
  v18 = *(v8 + 64);
  if (!v9)
  {
    ++v18;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v18 + 7;
  if (a2 > v12)
  {
    v20 = *(v13 + 80) & 0xF8 | 7;
    v21 = v14 + ((v20 + ((((((v19 + ((v16 + ((v15 + 20) & ~v15) + v17) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v20) + 1;
    v22 = 8 * v21;
    if (v21 > 3)
    {
      goto LABEL_18;
    }

    v24 = ((a2 - v12 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v24))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_36;
      }

      goto LABEL_25;
    }

    if (v24 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_36;
      }

      goto LABEL_25;
    }

    if (v24 >= 2)
    {
LABEL_18:
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_36;
      }

LABEL_25:
      v25 = (v23 - 1) << v22;
      if (v21 > 3)
      {
        v25 = 0;
      }

      if (v21)
      {
        if (v21 > 3)
        {
          LODWORD(v21) = 4;
        }

        if (v21 > 2)
        {
          if (v21 == 3)
          {
            LODWORD(v21) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v21) = *a1;
          }
        }

        else if (v21 == 1)
        {
          LODWORD(v21) = *a1;
        }

        else
        {
          LODWORD(v21) = *a1;
        }
      }

      v31 = v12 + (v21 | v25);
      return (v31 + 1);
    }
  }

LABEL_36:
  v26 = (a1 + v15 + 20) & ~v15;
  if (v7 != v12)
  {
    v29 = (v26 + v16 + v17) & ~v17;
    if (v10 == v12)
    {
      if (v9 >= 2)
      {
        v32 = (*(v8 + 48))(v29, v9, v33);
        if (v32 >= 2)
        {
          return v32 - 1;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }

    v30 = *(((((v19 + v29) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v30 >= 0xFFFFFFFF)
    {
      LODWORD(v30) = -1;
    }

    v31 = v30 - 1;
    if (v31 < 0)
    {
      v31 = -1;
    }

    return (v31 + 1);
  }

  v27 = *(v6 + 48);

  return v27(v26, v7, v34);
}

void sub_23B7FD06C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(sub_23B802050() - 8);
  v34 = v6;
  v7 = *(v6 + 84);
  v33 = *(a4 + 16);
  v8 = *(v33 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = v11;
  }

  v13 = 0;
  v14 = *(sub_23B8020C0() - 8);
  if (*(v14 + 64) <= 8uLL)
  {
    v15 = 8;
  }

  else
  {
    v15 = *(v14 + 64);
  }

  v16 = *(v6 + 80);
  v17 = *(v6 + 64);
  v18 = *(v8 + 80);
  v19 = *(v8 + 64);
  if (!v9)
  {
    ++v19;
  }

  v20 = v19 + 7;
  v21 = *(v14 + 80) & 0xF8 | 7;
  v22 = v15 + ((v21 + ((((((v20 + ((v17 + ((v16 + 20) & ~v16) + v18) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v21) + 1;
  if (a3 > v12)
  {
    if (v22 <= 3)
    {
      v23 = ((a3 - v12 + ~(-1 << (8 * v22))) >> (8 * v22)) + 1;
      if (HIWORD(v23))
      {
        v13 = 4;
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
          v13 = v24;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  if (v12 < a2)
  {
    v25 = ~v12 + a2;
    if (v22 < 4)
    {
      v26 = (v25 >> (8 * v22)) + 1;
      if (v22)
      {
        v27 = v25 & ~(-1 << (8 * v22));
        bzero(a1, v22);
        if (v22 != 3)
        {
          if (v22 == 2)
          {
            *a1 = v27;
            if (v13 > 1)
            {
LABEL_59:
              if (v13 == 2)
              {
                *&a1[v22] = v26;
              }

              else
              {
                *&a1[v22] = v26;
              }

              return;
            }
          }

          else
          {
            *a1 = v25;
            if (v13 > 1)
            {
              goto LABEL_59;
            }
          }

          goto LABEL_56;
        }

        *a1 = v27;
        a1[2] = BYTE2(v27);
      }

      if (v13 > 1)
      {
        goto LABEL_59;
      }
    }

    else
    {
      bzero(a1, v22);
      *a1 = v25;
      v26 = 1;
      if (v13 > 1)
      {
        goto LABEL_59;
      }
    }

LABEL_56:
    if (v13)
    {
      a1[v22] = v26;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v22] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    *&a1[v22] = 0;
  }

  else if (v13)
  {
    a1[v22] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (!a2)
  {
    return;
  }

LABEL_42:
  v28 = &a1[v16 + 20] & ~v16;
  if (v7 == v12)
  {
    v29 = *(v34 + 56);

    v29(v28);
  }

  else
  {
    v30 = (v28 + v17 + v18) & ~v18;
    if (v10 == v12)
    {
      v31 = *(v8 + 56);

      v31(v30, a2 + 1, v9, v33);
    }

    else
    {
      v32 = ((((v20 + v30) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (a2 > 0x7FFFFFFE)
      {
        *v32 = a2 - 0x7FFFFFFF;
        v32[1] = 0;
      }

      else
      {
        v32[1] = a2;
      }
    }
  }
}

void sub_23B7FD480(uint64_t a1)
{
  if (!qword_27E186720)
  {
    sub_23B8020C0();
    v1 = sub_23B8020D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27E186720);
    }
  }
}

uint64_t sub_23B7FD4D8(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E186ED8, &qword_23B805270);
  sub_23B8026E0();
  sub_23B8022D0();
  sub_23B7FB594();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B8024F0();
  sub_23B8020F0();
  sub_23B802140();
  swift_getWitnessTable();
  sub_23B7FD83C(&qword_27E186418, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
  return swift_getWitnessTable();
}

uint64_t sub_23B7FD650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_23B802050();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_23B7FD6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_23B802050();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_23B7FD758(uint64_t a1)
{
  type metadata accessor for Decimal(319);
  if (v1 <= 0x3F)
  {
    sub_23B802050();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23B7FD83C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23B7FD884()
{
  result = qword_27E186FA0;
  if (!qword_27E186FA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E186FA0);
  }

  return result;
}

unint64_t sub_23B7FD8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E186FA8;
  if (!qword_27E186FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186FA8);
  }

  return result;
}

unint64_t sub_23B7FD924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E186FB0;
  if (!qword_27E186FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186FB0);
  }

  return result;
}

uint64_t sub_23B7FD978(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186ED8, &qword_23B805270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B7FD9E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PayLaterViewWrapper(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B7FDAA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23B7FD924(a1, a2, a3);

  return sub_23B8021C0();
}

uint64_t sub_23B7FDAF8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_23B8023D0();
}

uint64_t sub_23B7FDB68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23B7FD8D0(a1, a2, a3);

  return sub_23B8021C0();
}

uint64_t sub_23B7FDBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23B7FDDB0(a1, a2, a3);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_23B7FDC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23B7FDD5C(a1, a2, a3);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t _s16_PassKit_SwiftUI26PayWithApplePayButtonLabelVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s16_PassKit_SwiftUI26PayWithApplePayButtonLabelVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_23B7FDD5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E186FD8;
  if (!qword_27E186FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186FD8);
  }

  return result;
}

unint64_t sub_23B7FDDB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E186FE0;
  if (!qword_27E186FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186FE0);
  }

  return result;
}

id sub_23B7FDE20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a4;
  v25 = a1;
  v26 = a2;
  v9 = *(a6 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v13, v12);
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = (v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v17 = *(a6 + 16);
  v18 = *(a6 + 24);
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  (*(v9 + 32))(v16 + v14, v11, a6);
  v19 = (v16 + v15);
  *v19 = v24;
  v19[1] = a5;
  v20 = v25;

  sub_23B7FE4D8(v20, v26, a3, sub_23B7E2D58, v16, v17, v18, &v31);
  if (v31)
  {
    v28 = v32;
    v29 = v33;
    v30 = v34;
    v27 = v31;
    _s35AddPaymentPassViewControllerWrapperVMa(0, v17, v18, v21);
    swift_getWitnessTable();
    return sub_23B802520();
  }

  else
  {
    if (qword_27E186408 != -1)
    {
      swift_once();
    }

    return qword_27E188F98;
  }
}

void sub_23B7FE060()
{
  v0 = *MEMORY[0x277D386B8];
  v1 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v2 = v0;
  v3 = [v1 initWithDomain:v2 code:2 userInfo:0];

  qword_27E188F98 = v3;
}

uint64_t AddPassToWalletButton.init(_:onRequest:onCompletion:fallback:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X7>, _OWORD *a8@<X8>, uint64_t a9)
{
  v24 = a9;
  v17 = sub_23B8026E0();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v23 - v18;
  *&v25 = a1;
  *(&v25 + 1) = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = 3;
  v20 = a1;

  a6(v21);

  (*(*(a7 - 8) + 56))(v19, 0, 1, a7);
  return sub_23B7E7EB4(&v25, v19, a7, v24, a8);
}

uint64_t AddPassToWalletButtonResponse.certificates.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AddPassToWalletButtonResponse.nonce.getter()
{
  v1 = *(v0 + 8);
  sub_23B7FE2A4(v1, *(v0 + 16));
  return v1;
}

uint64_t sub_23B7FE2A4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t AddPassToWalletButtonResponse.nonce.setter(uint64_t a1, uint64_t a2)
{
  result = sub_23B7FE330(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_23B7FE330(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t AddPassToWalletButtonResponse.nonceSignature.getter()
{
  v1 = *(v0 + 24);
  sub_23B7FE2A4(v1, *(v0 + 32));
  return v1;
}

uint64_t AddPassToWalletButtonResponse.nonceSignature.setter(uint64_t a1, uint64_t a2)
{
  result = sub_23B7FE330(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t AddPassToWalletButton<>.init(_:onRequest:onCompletion:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = 259;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

id sub_23B7FE4D8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v9 = a4;
  v14 = _s35AddPaymentPassViewControllerWrapperV11CoordinatorCMa(0, a6, a7, a4);
  v15 = a1;

  v16 = objc_allocWithZone(v14);
  v17 = sub_23B7FE664(v15, a2, a3, v9, a5);
  result = [objc_allocWithZone(MEMORY[0x277D38B20]) initWithRequestConfiguration:v15 delegate:v17];
  if (!result)
  {

    v15 = 0;
    a2 = 0;
    a3 = 0;
    v9 = 0;
    a5 = 0;
    result = 0;
    v17 = 0;
  }

  *a8 = v15;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = v9;
  a8[4] = a5;
  a8[5] = result;
  a8[6] = v17;
  return result;
}

uint64_t sub_23B7FE644(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_27E187000);
  v4 = *(v2 + qword_27E187000);
  v5 = *(v2 + qword_27E187000 + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_23B7E3200(v4, v5);
}

id sub_23B7FE664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *v5;
  v7 = *MEMORY[0x277D85000];
  v8 = (v5 + qword_27E187000);
  *v8 = 0;
  v8[1] = 0;
  *(v5 + qword_27E186FF0) = a1;
  v9 = (v5 + qword_27E186FF8);
  *v9 = a2;
  v9[1] = a3;
  *v8 = a4;
  v8[1] = a5;
  v10 = _s35AddPaymentPassViewControllerWrapperV11CoordinatorCMa(0, *((v7 & v6) + 0x50), *((v7 & v6) + 0x58), a4);
  v12.receiver = v5;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_23B7FE704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  return MEMORY[0x2822009F8](sub_23B7FE728, 0, 0);
}

uint64_t sub_23B7FE728()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 56) + qword_27E186FF8);
  v3 = *(v1 + 32);
  v4 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_23B7FE838;

  return v7(v0 + 16);
}

uint64_t sub_23B7FE838(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_23B7FE938, 0, 0);
}

uint64_t sub_23B7FE938()
{
  v1 = *(v0 + 96);
  (*(v0 + 72))(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23B7FE9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186C48, &qword_23B804970);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23B7F55C4(a3, v25 - v10);
  v12 = sub_23B802660();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23B7F5634(v11);
  }

  else
  {
    sub_23B802650();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23B802610();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23B8025B0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_23B7F5634(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23B7F5634(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_23B7FEC68(void *a1, int a2, void *a3, uint64_t a4, void *a5, void *a6, void *aBlock)
{
  v11 = _Block_copy(aBlock);
  v12 = sub_23B802600();
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a1;
  v17 = sub_23B802040();
  v19 = v18;

  v20 = sub_23B802040();
  v22 = v21;

  v23 = swift_allocObject();
  *(v23 + 16) = v11;
  sub_23B7FF320(v12, v17, v19, v20, v22, sub_23B7F67B8, v23);

  sub_23B7FE330(v20, v22);
  sub_23B7FE330(v17, v19);
}

void sub_23B7FEDA8(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  v11 = a5;
  sub_23B7FF48C(a4, a5);
}

id sub_23B7FEE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = _s35AddPaymentPassViewControllerWrapperV11CoordinatorCMa(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_23B7FEEE8(uint64_t a1)
{

  v2 = *(a1 + qword_27E187000);
  v3 = *(a1 + qword_27E187000 + 8);

  return sub_23B7E3200(v2, v3);
}

uint64_t sub_23B7FEF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for AddPassToWalletButton_iOS(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  v9 = (v7 + 32) & ~v7;
  v10 = v4 + v9;
  sub_23B7E2CBC(*(v4 + v9), *(v4 + v9 + 8), *(v4 + v9 + 16), *(v4 + v9 + 24), *(v4 + v9 + 32), *(v4 + v9 + 40));
  v11 = *(v6 + 36);
  v12 = *(v5 - 8);
  if (!(*(v12 + 48))(v4 + v9 + v11, 1, v5))
  {
    (*(v12 + 8))(v10 + v11, v5);
  }

  sub_23B7E2D4C(*(v10 + *(v6 + 40)), *(v10 + *(v6 + 40) + 8));

  return MEMORY[0x2821FE8E8](v4, ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v7 | 7);
}

id sub_23B7FF124(uint64_t a1, uint64_t a2)
{
  v2 = sub_23B7FF318();

  return v2;
}

id sub_23B7FF17C@<X0>(void *a8@<X8>)
{
  v9 = sub_23B7FF310();
  *a8 = v9;

  return v9;
}

uint64_t sub_23B7FF1D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_23B7FF254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_23B7FF2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  sub_23B802350();
  __break(1u);
}

uint64_t sub_23B7FF320(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186C48, &qword_23B804970);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v22 - v16;
  v18 = sub_23B802660();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v7;
  v19[5] = a1;
  v19[6] = a2;
  v19[7] = a3;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = a6;
  v19[11] = a7;

  sub_23B7FE2A4(a2, a3);
  sub_23B7FE2A4(a4, a5);
  v20 = v7;

  sub_23B7FE9A8(0, 0, v17, &unk_23B805858, v19);
}

uint64_t sub_23B7FF48C(void *a1, void *a2)
{
  v3 = v2;
  v4 = v2 + qword_27E187000;
  v5 = *(v2 + qword_27E187000);
  if (v5)
  {
    v6 = *(v4 + 8);
    if (a1)
    {
      sub_23B7ED858(v5, *(v4 + 8));
      v8 = a1;
      v5(a1, 0);
      sub_23B7E3200(v5, v6);
    }

    else
    {
      if (a2)
      {

        v10 = a2;
        v11 = a2;
      }

      else
      {
        v12 = qword_27E186408;

        if (v12 != -1)
        {
          swift_once();
        }

        v11 = qword_27E188F98;
        v10 = 0;
      }

      v13 = v10;
      v5(v11, 1);
      sub_23B7E3200(v5, v6);
    }
  }

  v14 = (v3 + qword_27E187000);
  v15 = *(v3 + qword_27E187000);
  v16 = *(v3 + qword_27E187000 + 8);
  *v14 = 0;
  v14[1] = 0;

  return sub_23B7E3200(v15, v16);
}

uint64_t sub_23B7FF5F4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B7FF62C()
{
  swift_unknownObjectRelease();

  sub_23B7FE330(*(v0 + 48), *(v0 + 56));
  sub_23B7FE330(*(v0 + 64), *(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_23B7FF68C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23B7E5AAC;

  return sub_23B7FE704(a1, v4, v5, v6, (v1 + 5), v7, v8);
}

uint64_t sub_23B7FF760(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FE8E8](v2, 32, 7);
}

uint64_t sub_23B7FF798(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B7F689C;

  return sub_23B7F569C(a1, v4);
}

uint64_t sub_23B7FF850(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B7E5AAC;

  return sub_23B7F569C(a1, v4);
}

uint64_t sub_23B7FF908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23B7FF960(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_23B7FF9A8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t View.payWithApplePayButtonStyle(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_23B8023D0();
}

uint64_t sub_23B7FFB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23B7FFFF4(a1, a2, a3);

  return sub_23B8021C0();
}

uint64_t sub_23B7FFBAC@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_23B7FFFF4(a2, a3, a4);
  result = sub_23B8021C0();
  *a1 = v6;
  return result;
}

uint64_t View.payWithApplePayButtonDisableCardArt()(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_23B8023D0();
}

uint64_t sub_23B7FFCBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23B7FFFA0(a1, a2, a3);
  sub_23B8021C0();
  return v4;
}

uint64_t sub_23B7FFCF8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_23B7FFFA0(a2, a3, a4);
  result = sub_23B8021C0();
  *a1 = v6;
  return result;
}

uint64_t sub_23B7FFDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23B800068(a1, a2, a3);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_23B7FFE10@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_23B7FFFF4(a2, a3, a4);
  result = sub_23B8021C0();
  *a1 = v6;
  return result;
}

uint64_t sub_23B7FFEAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_23B7FFFA0(a2, a3, a4);
  result = sub_23B8021C0();
  *a1 = v6;
  return result;
}

unint64_t sub_23B7FFFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E187190;
  if (!qword_27E187190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E187190);
  }

  return result;
}

unint64_t sub_23B7FFFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E187198;
  if (!qword_27E187198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E187198);
  }

  return result;
}

unint64_t sub_23B800068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E1871A0;
  if (!qword_27E1871A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1871A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PaymentButtonFeatureFlag.Wallet(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PaymentButtonFeatureFlag.Wallet(_WORD *result, int a2, int a3)
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

unint64_t sub_23B8001BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E1871A8;
  if (!qword_27E1871A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1871A8);
  }

  return result;
}

uint64_t sub_23B800218()
{
  sub_23B8027C0();
  MEMORY[0x23EEAA9E0](0);
  return sub_23B8027E0();
}

uint64_t sub_23B800284(uint64_t a1)
{
  sub_23B8027C0();
  MEMORY[0x23EEAA9E0](0);
  return sub_23B8027E0();
}

uint64_t View.verifyIdentityWithWalletButtonStyle(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_23B8023D0();
}

uint64_t sub_23B800390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23B7F9568(a1, a2, a3);

  return sub_23B8021C0();
}

uint64_t sub_23B800400(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1871B0, &qword_23B805CE8);
  sub_23B802140();
  sub_23B800478();
  return swift_getWitnessTable();
}

unint64_t sub_23B800478()
{
  result = qword_27E1871B8;
  if (!qword_27E1871B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1871B0, &qword_23B805CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1871B8);
  }

  return result;
}

id static AddPassToWalletButtonFilter.paymentNetwork(_:)@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return a1;
}

uint64_t static AddPassToWalletButtonFilter.productIdentifier(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
}

uint64_t static AddPassToWalletButtonFilter.primaryAccountIdentifier(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 2;
}

uint64_t AddPassToWalletButton.init(_:cardholderName:passStyle:primaryAccountSuffix:cardDetails:description:filters:onRequest:onCompletion:fallback:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X6>, uint64_t a7@<X7>, _OWORD *a8@<X8>, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, void (*a14)(uint64_t), uint64_t a15, uint64_t a16, uint64_t a17)
{
  v28 = a6;
  v29 = a7;
  v26 = a3;
  v27 = a4;
  v24 = a1;
  v25 = a2;
  v23 = a8;
  v22 = a11;
  v17 = sub_23B8026E0();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v22 - v18;

  a14(v20);
  (*(*(a16 - 8) + 56))(v19, 0, 1, a16);
  return sub_23B800664(v24, v26, 0, v27, v28, v23, a9, a10, v19, v22, *(&v22 + 1), a12, a13, a16, a17);
}

uint64_t sub_23B800664@<X0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v24 = [objc_allocWithZone(MEMORY[0x277D37D08]) initWithEncryptionScheme_];
  if (v24)
  {
    v25 = v24;
    if (a3)
    {
      v26 = sub_23B802570();
    }

    else
    {
      v26 = 0;
    }

    [v25 setCardholderName_];

    if (a5)
    {
      v27 = sub_23B802570();
    }

    else
    {
      v27 = 0;
    }

    [v25 setPrimaryAccountSuffix_];

    [v25 setStyle_];
    if (a7)
    {
      sub_23B8012B0();
      v28 = sub_23B8025F0();

      [v25 setCardDetails_];
    }

    if (a10)
    {
      v29 = sub_23B802570();
    }

    else
    {
      v29 = 0;
    }

    v30 = a16;
    [v25 setLocalizedDescription_];

    v31 = *(a11 + 16);
    if (v31)
    {
      v39 = a9;
      v32 = (a11 + 48);
      do
      {
        v33 = *(v32 - 2);
        if (*v32)
        {
          v34 = *(v32 - 1);
          v35 = *(v32 - 2);
          if (*v32 == 1)
          {
            sub_23B800E10(v35, v34, 1);
            sub_23B801160(&v40, v33, v34);
          }

          else
          {
            sub_23B800E10(v35, v34, 2);
            v36 = sub_23B802570();
            [v25 setPrimaryAccountIdentifier_];
            sub_23B800E38(v33, v34, 2);
          }
        }

        else
        {
          [v25 setPaymentNetwork_];
        }

        v32 += 24;
        --v31;
      }

      while (v31);

      a9 = v39;
      v30 = a16;
    }

    else
    {
    }

    v37 = sub_23B802670();

    [v25 setProductIdentifiers_];

    *&v40 = v25;
    *(&v40 + 1) = a13;
    v41 = a14;
    v42 = a15;
    v43 = v30;
    v44 = 3;
    return sub_23B7E7EB4(&v40, a12, a17, a18, a9);
  }

  else
  {
    result = sub_23B802750();
    __break(1u);
  }

  return result;
}

uint64_t AddPassToWalletButton.init(_:primaryAccountSuffix:passStyle:cardDetails:description:filters:onRequest:onCompletion:fallback:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, void (*a13)(uint64_t), uint64_t a14, uint64_t a15, uint64_t a16)
{
  v25 = a7;
  v26 = a2;
  v29 = a5;
  v30 = a6;
  v27 = a3;
  v28 = a4;
  v24 = a10;
  v19 = sub_23B8026E0();
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v24 - v21;
  a13(v20);
  (*(*(a15 - 8) + 56))(v22, 0, 1, a15);
  return sub_23B800664(a1, 0, v27, v28, v29, a9, v25, a8, v22, v24, *(&v24 + 1), a11, a12, a15, a16);
}

void AddPassToWalletButton<>.init(_:cardholderName:passStyle:primaryAccountSuffix:cardDetails:description:filters:onRequest:onCompletion:)(void *a1@<X0>, uint64_t a4@<X3>, uint64_t a6@<X6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  v18 = [objc_allocWithZone(MEMORY[0x277D37D08]) initWithEncryptionScheme_];
  if (v18)
  {
    v19 = v18;
    v20 = sub_23B802570();

    [v19 setCardholderName_];

    [v19 setPrimaryAccountSuffix_];
    [v19 setStyle_];
    if (a6)
    {
      sub_23B8012B0();
      v21 = sub_23B8025F0();

      [v19 setCardDetails_];
    }

    if (a9)
    {
      v22 = sub_23B802570();
    }

    else
    {
      v22 = 0;
    }

    v24 = a13;
    v23 = a14;
    v25 = a12;
    [v19 setLocalizedDescription_];

    v33[2] = MEMORY[0x277D84FA0];
    v26 = *(a10 + 16);
    if (v26)
    {
      v27 = (a10 + 48);
      do
      {
        v28 = *(v27 - 2);
        if (*v27)
        {
          v29 = *(v27 - 1);
          v30 = *(v27 - 2);
          if (*v27 == 1)
          {
            sub_23B800E10(v30, v29, 1);
            sub_23B801160(v33, v28, v29);
          }

          else
          {
            sub_23B800E10(v30, v29, 2);
            v31 = sub_23B802570();
            [v19 setPrimaryAccountIdentifier_];
            sub_23B800E38(v28, v29, 2);
          }
        }

        else
        {
          [v19 setPaymentNetwork_];
        }

        v27 += 24;
        --v26;
      }

      while (v26);

      v23 = a14;
      v25 = a12;
      v24 = a13;
    }

    else
    {
    }

    v32 = sub_23B802670();

    [v19 setProductIdentifiers_];

    *a8 = v19;
    *(a8 + 8) = a11;
    *(a8 + 16) = v25;
    *(a8 + 24) = v24;
    *(a8 + 32) = v23;
    *(a8 + 40) = 259;
  }

  else
  {
    sub_23B802750();
    __break(1u);
  }
}

id sub_23B800E10(id result, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  if (!a3)
  {
    return result;
  }

  return result;
}

void sub_23B800E38(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

void AddPassToWalletButton<>.init(_:primaryAccountSuffix:passStyle:cardDetails:description:filters:onRequest:onCompletion:)(void *a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = [objc_allocWithZone(MEMORY[0x277D37D08]) initWithEncryptionScheme_];
  if (v19)
  {
    v20 = v19;
    [v19 setCardholderName_];
    v21 = sub_23B802570();

    [v20 setPrimaryAccountSuffix_];

    [v20 setStyle_];
    if (a5)
    {
      sub_23B8012B0();
      v22 = sub_23B8025F0();

      [v20 setCardDetails_];
    }

    if (a7)
    {
      v23 = sub_23B802570();
    }

    else
    {
      v23 = 0;
    }

    v25 = a12;
    v24 = a13;
    [v20 setLocalizedDescription_];

    v33[2] = MEMORY[0x277D84FA0];
    v26 = *(a8 + 16);
    if (v26)
    {
      v27 = (a8 + 48);
      do
      {
        v28 = *(v27 - 2);
        if (*v27)
        {
          v29 = *(v27 - 1);
          v30 = *(v27 - 2);
          if (*v27 == 1)
          {
            sub_23B800E10(v30, v29, 1);
            sub_23B801160(v33, v28, v29);
          }

          else
          {
            sub_23B800E10(v30, v29, 2);
            v31 = sub_23B802570();
            [v20 setPrimaryAccountIdentifier_];
            sub_23B800E38(v28, v29, 2);
          }
        }

        else
        {
          [v20 setPaymentNetwork_];
        }

        v27 += 24;
        --v26;
      }

      while (v26);

      v24 = a13;
      v25 = a12;
    }

    else
    {
    }

    v32 = sub_23B802670();

    [v20 setProductIdentifiers_];

    *a9 = v20;
    *(a9 + 8) = a10;
    *(a9 + 16) = a11;
    *(a9 + 24) = v25;
    *(a9 + 32) = v24;
    *(a9 + 40) = 259;
  }

  else
  {
    sub_23B802750();
    __break(1u);
  }
}

uint64_t sub_23B801160(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_23B8027C0();
  sub_23B8025C0();
  v8 = sub_23B8027E0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_23B802790() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_23B801624(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

unint64_t sub_23B8012B0()
{
  result = qword_27E1871C0;
  if (!qword_27E1871C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1871C0);
  }

  return result;
}

uint64_t sub_23B80131C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23B801368(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_23B8013C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1871C8, ">-");
  result = sub_23B802710();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_23B8027C0();
      sub_23B8025C0();
      result = sub_23B8027E0();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_23B801624(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_23B8013C4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_23B8017A4();
      goto LABEL_16;
    }

    sub_23B801900(v8 + 1);
  }

  v10 = *v4;
  sub_23B8027C0();
  sub_23B8025C0();
  result = sub_23B8027E0();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_23B802790();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_23B8027A0();
  __break(1u);
  return result;
}

void *sub_23B8017A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1871C8, ">-");
  v2 = *v0;
  v3 = sub_23B802700();
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

uint64_t sub_23B801900(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1871C8, ">-");
  result = sub_23B802710();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_23B8027C0();

      sub_23B8025C0();
      result = sub_23B8027E0();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
    *v2 = v5;
  }

  return result;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_27E188F58 == -1)
  {
    if (qword_27E188F60)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27E188F60)
    {
      return _availability_version_check();
    }
  }

  if (qword_27E188F50 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27E188F44 > a3)
      {
        return 1;
      }

      if (dword_27E188F44 >= a3)
      {
        return dword_27E188F48 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27E188F60;
  if (qword_27E188F60)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27E188F60 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x23EEAAC00](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27E188F44, &dword_27E188F48);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}