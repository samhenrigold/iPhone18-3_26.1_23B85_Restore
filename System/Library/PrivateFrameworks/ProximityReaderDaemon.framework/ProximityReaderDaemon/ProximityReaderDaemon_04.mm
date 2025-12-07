uint64_t sub_2612A6A74()
{
  sub_26124C718(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon14DiscoveryCache_cache, &qword_27FE9F998, &qword_2613A76E0);
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_2612A6AC4()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0x40AC200000000000;
  v1 = OBJC_IVAR____TtC21ProximityReaderDaemon14DiscoveryCache_cache;
  v2 = type metadata accessor for DiscoveryCacheContent(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t sub_2612A6B50(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_2613A241C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F69676572 && a2 == 0xE600000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74736566696E616DLL && a2 == 0xE800000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74736566696E616DLL && a2 == 0xEE006E6F69676552)
  {

    return 3;
  }

  else
  {
    v6 = sub_2613A241C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2612A6CB8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v18 - v1;
  v3 = sub_26139EF7C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26139F87C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DiscoveryCacheContent(0);
  v12 = sub_2612A56C0(&qword_27FE9F9B0, type metadata accessor for DiscoveryCacheContent, &unk_2613A7710);
  result = sub_26124A620(v11, v12);
  if (v14 >> 60 != 15)
  {
    v15 = result;
    v16 = v14;
    v18[2] = v2;
    sub_26139F86C();
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_2613A211C();

    sub_2613A121C();
    v19 = sub_2613A11AC();
    v20 = v17;
    MEMORY[0x2666FFEA0](0xD000000000000013, 0x80000002613B9F10);
    sub_26139EECC();

    sub_26139F83C();
    sub_26124A168(v15, v16);
    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_2612A70F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_26139EF7C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_26139F87C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26139F86C();
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_2613A211C();

  sub_2613A121C();
  v12 = sub_2613A11AC();
  v13 = v9;
  MEMORY[0x2666FFEA0](0xD000000000000013, 0x80000002613B9F10);
  sub_26139EECC();

  sub_26139F84C();
  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2612A7488(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveryCacheContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2612A7514(uint64_t a1)
{
  result = sub_26139F0BC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2612A75BC(uint64_t a1)
{
  sub_2612A7664(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2612A7664(uint64_t a1)
{
  if (!qword_27FE9F9A0)
  {
    type metadata accessor for DiscoveryCacheContent(255);
    v1 = sub_2613A1F8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27FE9F9A0);
    }
  }
}

unint64_t sub_2612A76D0()
{
  result = qword_27FEA6510[0];
  if (!qword_27FEA6510[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA6510);
  }

  return result;
}

unint64_t sub_2612A7728()
{
  result = qword_27FEA6620;
  if (!qword_27FEA6620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA6620);
  }

  return result;
}

unint64_t sub_2612A7780()
{
  result = qword_27FEA6628[0];
  if (!qword_27FEA6628[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA6628);
  }

  return result;
}

uint64_t sub_2612A77D4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t sub_2612A77F8(char a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 24) = a1;
  *(result + 16) = a2;
  return result;
}

void *sub_2612A783C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v52 = a3;
  v7 = sub_26139F0BC();
  v50 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v51 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v47 - v10;
  v12 = sub_26129B780();
  sub_26125A870(v12, v11, &qword_27FE9F560, &qword_2613A3CB0);
  v13 = sub_2613A124C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    sub_26124D0CC(v11);
  }

  else
  {

    v15 = sub_2613A122C();
    v16 = sub_2613A1D7C();

    v49 = v16;
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v55 = v47;
      *v17 = 136380675;
      v18 = sub_2613A0F7C();
      v48 = a1;
      v20 = sub_26124C11C(v18, v19, &v55);
      a1 = v48;

      *(v17 + 4) = v20;
      v21 = v15;
      v22 = v15;
      v23 = v17;
      _os_log_impl(&dword_261243000, v21, v49, "status: %{private}s", v17, 0xCu);
      v24 = v47;
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      MEMORY[0x266701350](v24, -1, -1);
      MEMORY[0x266701350](v23, -1, -1);
    }

    else
    {
    }

    (*(v14 + 8))(v11, v13);
  }

  v25 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v25 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    sub_2613A0F9C();
    if (BYTE8(v55))
    {
      LODWORD(v25) = 0;
    }

    else
    {
      v26 = *&v55;
      v27 = v51;
      sub_26139F0AC();
      sub_26139F07C();
      v29 = v28;
      (*(v50 + 8))(v27, v7);
      LODWORD(v25) = v29 <= v26;
    }
  }

  v30 = qword_2613A7A08[*(v4 + 24)];
  v31 = *(v4 + 16);
  if (v25)
  {
  }

  else
  {
    a1 = 0;
    a2 = 0xE000000000000000;
  }

  v32 = (*(*v31 + 216))(a1, a2, v30);

  type metadata accessor for Mock();
  v33 = sub_26129B0F4(39);
  v34 = MEMORY[0x277D839B0];
  if (v33)
  {
    v35 = sub_2613A18CC();
    v37 = v36;
    *(&v56 + 1) = v34;
    LOBYTE(v55) = 1;
    sub_26125A7B0(&v55, v54);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v32;
    sub_261258F20(v54, v35, v37, isUniquelyReferenced_nonNull_native);

    v32 = v53;
  }

  if (sub_26129B0F4(38))
  {
    v39 = sub_2613A18CC();
    v41 = v40;
    *(&v56 + 1) = v34;
    LOBYTE(v55) = 0;
    sub_26125A7B0(&v55, v54);
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v53 = v32;
    sub_261258F20(v54, v39, v41, v42);

    v32 = v53;
  }

  result = sub_2612A7DE4(v32, &v55);
  v44 = v56;
  v45 = v57;
  v46 = v52;
  *v52 = v55;
  v46[1] = v44;
  *(v46 + 4) = v45;
  return result;
}

double sub_2612A7D1C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2612A7DE4(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_2612A7D78()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2612A7DB0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  *(a9 + 18) = a5;
  *(a9 + 19) = a6;
  *(a9 + 20) = a7;
  *(a9 + 21) = a8;
  *(a9 + 24) = a10;
  *(a9 + 32) = a11;
  return result;
}

uint64_t sub_2612A7DE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v72 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v69 - v4;
  v6 = sub_26129B780();
  sub_26125A870(v6, v5, &qword_27FE9F560, &qword_2613A3CB0);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_26124D0CC(v5);
  }

  else
  {

    v9 = sub_2613A122C();
    v10 = sub_2613A1D7C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v75[0] = v12;
      *v11 = 136380675;
      v13 = sub_2613A180C();
      v15 = sub_26124C11C(v13, v14, v75);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_261243000, v9, v10, "status result: %{private}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x266701350](v12, -1, -1);
      MEMORY[0x266701350](v11, -1, -1);
    }

    (*(v8 + 8))(v5, v7);
  }

  v16 = sub_2613A18CC();
  if (!*(a1 + 16))
  {

    goto LABEL_16;
  }

  v18 = sub_26124E5EC(v16, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_16:
    v70 = 0;
    v71 = 0;
    goto LABEL_17;
  }

  sub_26124C994(*(a1 + 56) + 32 * v18, v75);
  v21 = swift_dynamicCast();
  if (v21)
  {
    v22 = v73;
  }

  else
  {
    v22 = 0;
  }

  if (v21)
  {
    v23 = v74;
  }

  else
  {
    v23 = 0;
  }

  v70 = v23;
  v71 = v22;
LABEL_17:
  v24 = sub_2613A18CC();
  if (*(a1 + 16))
  {
    v26 = sub_26124E5EC(v24, v25);
    v28 = v27;

    if (v28)
    {
      sub_26124C994(*(a1 + 56) + 32 * v26, v75);
      if (swift_dynamicCast())
      {
        v29 = v73;
        goto LABEL_23;
      }
    }
  }

  else
  {
  }

  v29 = 1;
LABEL_23:
  v30 = sub_2613A18CC();
  if (*(a1 + 16))
  {
    v32 = sub_26124E5EC(v30, v31);
    v34 = v33;

    if (v34)
    {
      sub_26124C994(*(a1 + 56) + 32 * v32, v75);
      if (swift_dynamicCast())
      {
        v35 = v73;
        goto LABEL_29;
      }
    }
  }

  else
  {
  }

  v35 = 1;
LABEL_29:
  v36 = sub_2613A18CC();
  if (*(a1 + 16))
  {
    v38 = sub_26124E5EC(v36, v37);
    v40 = v39;

    if (v40)
    {
      sub_26124C994(*(a1 + 56) + 32 * v38, v75);
      if (swift_dynamicCast())
      {
        v41 = v73;
        goto LABEL_35;
      }
    }
  }

  else
  {
  }

  v41 = 0;
LABEL_35:
  v42 = sub_2613A18CC();
  if (*(a1 + 16))
  {
    v44 = sub_26124E5EC(v42, v43);
    v46 = v45;

    if (v46)
    {
      sub_26124C994(*(a1 + 56) + 32 * v44, v75);
      if (swift_dynamicCast())
      {
        v47 = v73;
        goto LABEL_41;
      }
    }
  }

  else
  {
  }

  v47 = 0;
LABEL_41:
  v48 = sub_2613A18CC();
  if (*(a1 + 16))
  {
    v50 = sub_26124E5EC(v48, v49);
    v52 = v51;

    if (v52)
    {
      sub_26124C994(*(a1 + 56) + 32 * v50, v75);
      if (swift_dynamicCast())
      {
        v53 = v73;
        goto LABEL_47;
      }
    }
  }

  else
  {
  }

  v53 = 0;
LABEL_47:
  v54 = sub_2613A18CC();
  if (*(a1 + 16))
  {
    v56 = sub_26124E5EC(v54, v55);
    v58 = v57;

    if (v58)
    {
      sub_26124C994(*(a1 + 56) + 32 * v56, v75);
      if (swift_dynamicCast())
      {
        v59 = v73;
        goto LABEL_53;
      }
    }
  }

  else
  {
  }

  v59 = 0;
LABEL_53:
  v60 = sub_2613A18CC();
  if (!*(a1 + 16))
  {

    goto LABEL_58;
  }

  v62 = sub_26124E5EC(v60, v61);
  v64 = v63;

  if ((v64 & 1) == 0)
  {
LABEL_58:

    v66 = 0;
    v67 = 0;
    goto LABEL_59;
  }

  sub_26124C994(*(a1 + 56) + 32 * v62, v75);

  result = swift_dynamicCast();
  v66 = v73;
  v67 = v74;
  if (!result)
  {
    v66 = 0;
    v67 = 0;
  }

LABEL_59:
  v68 = v72;
  *v72 = v71;
  v68[1] = v70;
  *(v68 + 16) = v29;
  *(v68 + 17) = v35;
  *(v68 + 18) = v41;
  *(v68 + 19) = v47;
  *(v68 + 20) = v53;
  *(v68 + 21) = v59;
  v68[3] = v66;
  v68[4] = v67;
  return result;
}

unint64_t sub_2612A848C()
{
  result = qword_27FE9F9B8;
  if (!qword_27FE9F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F9B8);
  }

  return result;
}

uint64_t sub_2612A8514(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2612A8570(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for StoreAndForwardReadResult(uint64_t a1)
{
  result = qword_27FEA67B0;
  if (!qword_27FEA67B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2612A8628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2612A868C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  v15 = type metadata accessor for StoreAndForwardReadResult(0);
  result = sub_26125D080(a5, a9 + *(v15 + 24));
  v17 = (a9 + *(v15 + 28));
  *v17 = a6;
  v17[1] = a7;
  v17[2] = a8;
  v17[3] = a10;
  return result;
}

uint64_t sub_2612A8734(uint64_t a1)
{
  result = type metadata accessor for TransactionData(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2612A87C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28 - v10;

  sub_2612B1EE0(0, v5, a1, a2, a3);
  v13 = v12;
  if (v4)
  {

    v14 = sub_26129B780();
    sub_26124AA44(v14, v11);
    v15 = sub_2613A124C();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v11, 1, v15) == 1)
    {
      sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v17 = v4;
      v18 = sub_2613A122C();
      v19 = sub_2613A1D8C();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v30 = v19;
        v21 = v20;
        v29 = swift_slowAlloc();
        v32 = v29;
        *v21 = 136315138;
        v31 = v4;
        v22 = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
        v23 = sub_2613A195C();
        v25 = sub_26124C11C(v23, v24, &v32);

        *(v21 + 4) = v25;
        _os_log_impl(&dword_261243000, v18, v30, "Status error: [ %s ]", v21, 0xCu);
        v26 = v29;
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
        MEMORY[0x266701350](v26, -1, -1);
        MEMORY[0x266701350](v21, -1, -1);
      }

      (*(v16 + 8))(v11, v15);
    }

    swift_willThrow();
  }

  else
  {
  }

  return v13;
}

void sub_2612A8A58(void *a1@<X0>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v27 = a1;
  v28[1] = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v25 - v9;
  v11 = sub_26129B780();
  sub_26124AA44(v11, v10);
  v12 = sub_2613A124C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v25[1] = v5;
    v26 = a5;
    v14 = sub_2613A122C();
    v15 = sub_2613A1D9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = a4;
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_261243000, v14, v15, "Requesting status", v17, 2u);
      v18 = v17;
      a4 = v16;
      MEMORY[0x266701350](v18, -1, -1);
    }

    (*(v13 + 8))(v10, v12);
    a5 = v26;
  }

  v19 = sub_2613A189C();
  v28[0] = 0;
  v20 = [v27 statusWithToken:v19 options:a4 error:v28];

  v21 = v28[0];
  if (v20)
  {
    v22 = sub_2613A17FC();
    v23 = v21;

    *a5 = v22;
  }

  else
  {
    v24 = v28[0];
    sub_26139EE7C();

    swift_willThrow();
  }
}

NSObject *sub_2612A8CE8(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4, void *a5, objc_class *a6)
{
  v8 = v6;
  v11 = a4;
  v12 = a3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v33 - v16;

  v18 = sub_2612B24E0(0, v8, v11, a1, a2, v12, a5, a6);
  if (v7)
  {

    v19 = sub_26129B780();
    sub_26124AA44(v19, v17);
    v20 = sub_2613A124C();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v17, 1, v20) == 1)
    {
      sub_26124C718(v17, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v24 = v7;
      v25 = sub_2613A122C();
      v26 = sub_2613A1D8C();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v33[0] = swift_slowAlloc();
        v33[1] = v7;
        v34 = v33[0];
        *v27 = 136315138;
        v28 = v7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
        v29 = sub_2613A195C();
        v31 = sub_26124C11C(v29, v30, &v34);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_261243000, v25, v26, "Prepare error: [ %s ]", v27, 0xCu);
        v32 = v33[0];
        __swift_destroy_boxed_opaque_existential_0Tm(v33[0]);
        MEMORY[0x266701350](v32, -1, -1);
        MEMORY[0x266701350](v27, -1, -1);
      }

      (*(v21 + 8))(v17, v20);
    }

    return swift_willThrow();
  }

  else
  {
    v22 = v18;

    return v22;
  }
}

uint64_t sub_2612A8FB8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = v6;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 96) = a3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  *(v7 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612A9060, 0, 0);
}

uint64_t sub_2612A9060()
{

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_2612A9128;
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 96);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);

  return sub_2612B2FA4(0, v2, v7, v8, v6, v4, v5, v3);
}

uint64_t sub_2612A9128(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 88) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2612A92B8, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_2612A92B8()
{
  v19 = v0;
  v1 = v0[9];
  v2 = sub_26129B780();
  sub_26124AA44(v2, v1);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[9], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v5 = v0[11];
    v6 = v5;
    v7 = sub_2613A122C();
    v8 = sub_2613A1D8C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[11];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315138;
      v0[2] = v9;
      v12 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
      v13 = sub_2613A195C();
      v15 = sub_26124C11C(v13, v14, &v18);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_261243000, v7, v8, "Install error: [ %s ]", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x266701350](v11, -1, -1);
      MEMORY[0x266701350](v10, -1, -1);
    }

    (*(v4 + 8))(v0[9], v3);
  }

  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_2612A94EC(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2612A95C4(uint64_t a1)
{
  v2 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v3 - 8);
  return sub_2612AFAA0(0, v1, v2) & 1;
}

id sub_2612A982C@<X0>(void *a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_26129B780();
  sub_26124AA44(v9, v8);
  v10 = sub_2613A124C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v12 = sub_2613A122C();
    v13 = sub_2613A1D9C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_261243000, v12, v13, "Requesting enable diagnostics", v14, 2u);
      MEMORY[0x266701350](v14, -1, -1);
    }

    (*(v11 + 8))(v8, v10);
  }

  result = [a1 enableDiagnosticModeWithEnable_];
  *a3 = result;
  return result;
}

void sub_2612A9A2C(void *a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_26129B780();
  sub_26124AA44(v8, v7);
  v9 = sub_2613A124C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v11 = sub_2613A122C();
    v12 = sub_2613A1D9C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_261243000, v11, v12, "Requesting to validate read preconditions", v13, 2u);
      MEMORY[0x266701350](v13, -1, -1);
    }

    (*(v10 + 8))(v7, v9);
  }

  type metadata accessor for Mock();
  if (sub_26129B0F4(24))
  {
    sub_2612B48D8();
    swift_allocError();
    *v14 = 1;
    *(v14 + 8) = 64;
    swift_willThrow();
  }

  else
  {
    type metadata accessor for SPRUtils();
    v15 = sub_2612C70E4(a2);
    v17 = v16;
    v23 = v15;
    v18 = (v16 >> 8) & 1;
    v24 = v16 & 0x1FF;
    MEMORY[0x28223BE20](v15);
    *(&v23 - 2) = a1;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FA00, &qword_2613A7AD0);
    sub_26124A238(sub_2612B484C, (&v23 - 4), v19, &v25);
    sub_2612B48CC(v15, v17, v18);
    if (!v2)
    {
      v20 = v25;
      v21 = HIBYTE(v26);
      v22 = v26;
      v23 = v25;
      v24 = v26;
      sub_26124A42C(sub_2612A9D44, 0, v19, &v27);
      sub_2612B48CC(v20, v22, v21);
      sub_2612B48CC(v27, v28, v29);
    }
  }
}

uint64_t sub_2612A9D44(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = sub_26129B780();
  sub_26124AA44(v7, v4);
  v8 = sub_2613A124C();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v4, 1, v8) == 1)
  {
    sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v10 = sub_2613A122C();
    v11 = sub_2613A1D8C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      sub_2612B48D8();
      swift_allocError();
      *v14 = v5;
      *(v14 + 8) = v6;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_261243000, v10, v11, "Error validating read preconditions [ %@ ]", v12, 0xCu);
      sub_26124C718(v13, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v13, -1, -1);
      MEMORY[0x266701350](v12, -1, -1);
    }

    (*(v9 + 8))(v4, v8);
  }

  sub_2612B48D8();
  swift_allocError();
  *v16 = v5;
  *(v16 + 8) = v6;
  return swift_willThrow();
}

void sub_2612A9F88(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;

  sub_2612ADDB0(v6, v5, a2, v3);
}

void sub_2612AA040(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  if (a2)
  {
    _s3__C4CodeOMa_1(0);
    v21[1] = 14001;
    v11 = a2;
    sub_2612B4550(&qword_27FE9F9C8, _s3__C4CodeOMa_1, &unk_2613A9CA0);
    if (sub_26139EDAC())
    {
      v12 = *(a3 + 24);
      *(a3 + 24) = 0;
    }

    (*(*a4 + 184))(a2, a1);
  }

  else if (a1)
  {
    v13 = *(*a4 + 152);
    v21[0] = a1;
    v13();
    v14 = v21[0];
  }

  else
  {
    v15 = sub_26129B780();
    sub_26124AA44(v15, v10);
    v16 = sub_2613A124C();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v10, 1, v16) == 1)
    {
      sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v18 = sub_2613A122C();
      v19 = sub_2613A1D8C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_261243000, v18, v19, "readCard did not return any error or transactionData", v20, 2u);
        MEMORY[0x266701350](v20, -1, -1);
      }

      (*(v17 + 8))(v10, v16);
    }
  }
}

void sub_2612AA2EC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_2612AA378()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v1 - 8);
  sub_2612AE36C(0, v0);
}

id sub_2612AA5D0(void *a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v13 - v3;
  v5 = sub_26129B780();
  sub_26124AA44(v5, v4);
  v6 = sub_2613A124C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v8 = sub_2613A122C();
    v9 = sub_2613A1D9C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_261243000, v8, v9, "Cancelling current readCard", v10, 2u);
      MEMORY[0x266701350](v10, -1, -1);
    }

    (*(v7 + 8))(v4, v6);
  }

  v13[0] = 0;
  if ([a1 cancelReadAndReturnError_])
  {
    return v13[0];
  }

  v12 = v13[0];
  sub_26139EE7C();

  return swift_willThrow();
}

void *sub_2612AA7E0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v28 - v12;
  sub_26124C778(a1, a2);
  sub_26125C348(a3, a4);
  sub_2612AE8CC(0, v6, a1, a2, a3, a4, v30);
  if (!v5)
  {
    return v30[0];
  }

  v14 = sub_26129B780();
  sub_26124AA44(v14, v13);
  v15 = sub_2613A124C();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {

    sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v18 = v5;
    v19 = sub_2613A122C();
    v20 = sub_2613A1D8C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v29 = v20;
      v22 = v21;
      v28 = swift_slowAlloc();
      v30[0] = v28;
      *v22 = 136315138;
      v30[3] = v5;
      v23 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
      v24 = sub_2613A195C();
      v26 = sub_26124C11C(v24, v25, v30);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_261243000, v19, v29, "Secure reader blob error: [ %s ]", v22, 0xCu);
      v27 = v28;
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x266701350](v27, -1, -1);
      MEMORY[0x266701350](v22, -1, -1);
    }

    else
    {
    }

    (*(v16 + 8))(v13, v15);
  }

  return 0;
}

void sub_2612AAAA8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v32 = a2;
  v33[1] = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v30 - v12;
  v14 = sub_26129B780();
  sub_26124AA44(v14, v13);
  v15 = sub_2613A124C();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v30[0] = a3;
    v30[1] = v6;
    v31 = a6;
    v17 = sub_2613A122C();
    v18 = sub_2613A1D9C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = a1;
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_261243000, v17, v18, "Requesting secure reader blob", v20, 2u);
      v21 = v20;
      a1 = v19;
      MEMORY[0x266701350](v21, -1, -1);
    }

    (*(v16 + 8))(v13, v15);
    a6 = v31;
  }

  type metadata accessor for Mock();
  if (sub_26129B0F4(37))
  {
    [objc_opt_self() sleepForTimeInterval_];
  }

  v22 = sub_26139EFFC();
  if (a5 >> 60 == 15)
  {
    v23 = 0;
  }

  else
  {
    v23 = sub_26139EFFC();
  }

  v33[0] = 0;
  v24 = [a1 generateSecureReaderBlobDataWithTrxBlob:v22 pinBlob:v23 error:v33];

  v25 = v33[0];
  if (v24)
  {
    v26 = sub_26139F01C();
    v28 = v27;

    *a6 = v26;
    a6[1] = v28;
  }

  else
  {
    v29 = v25;
    sub_26139EE7C();

    swift_willThrow();
  }
}

double sub_2612AAD88(uint64_t a1, uint64_t a2)
{

  sub_2612B3E84(0, v2, a1, a2);
  v6 = v5;

  return v6;
}

void sub_2612AADF0(void *a1@<X0>, uint64_t a3@<X2>, double *a4@<X8>)
{
  v40 = a3;
  v38 = a4;
  v41[1] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  v12 = sub_26129B780();
  sub_26124AA44(v12, v11);
  v13 = sub_2613A124C();
  v39 = *(v13 - 8);
  v14 = *(v39 + 48);
  if (v14(v11, 1, v13) == 1)
  {
    sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v36 = a1;
    v37 = v9;
    v15 = sub_2613A122C();
    v16 = sub_2613A1D9C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v35 = v4;
      v18 = v17;
      *v17 = 0;
      _os_log_impl(&dword_261243000, v15, v16, "Retrieving SAF session time remaining", v17, 2u);
      MEMORY[0x266701350](v18, -1, -1);
    }

    (*(v39 + 8))(v11, v13);
    a1 = v36;
    v9 = v37;
  }

  v19 = sub_2613A189C();
  v41[0] = 0;
  v20 = [a1 getSAFSessionTimeRemainingWithToken:v19 error:v41];

  if (v20)
  {
    v21 = v41[0];
    sub_2613A1D1C();
    v23 = v22;

    *v38 = v23;
  }

  else
  {
    v24 = v41[0];
    v25 = sub_26139EE7C();

    swift_willThrow();
    sub_26124AA44(v12, v9);
    if (v14(v9, 1, v13) == 1)
    {
      sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v26 = v25;
      v27 = v9;
      v28 = sub_2613A122C();
      v29 = sub_2613A1D8C();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = v25;
        v32 = swift_slowAlloc();
        *v30 = 138412290;
        v33 = v31;
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v30 + 4) = v34;
        *v32 = v34;
        _os_log_impl(&dword_261243000, v28, v29, "Error happened retrieving SAF session duration [%@]", v30, 0xCu);
        sub_26124C718(v32, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v32, -1, -1);
        MEMORY[0x266701350](v30, -1, -1);
      }

      (*(v39 + 8))(v27, v13);
    }

    swift_willThrow();
  }
}

void *sub_2612AB1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v31 - v15;
  v34 = a1;
  v35 = a2;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v39 = a6;
  v40 = a7;
  v17 = v32;
  sub_2612AEF0C(v33, 0, v41);
  if (!v17)
  {
    return v41[0];
  }

  v18 = sub_26129B780();
  sub_26124AA44(v18, v16);
  v19 = sub_2613A124C();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v16, 1, v19) == 1)
  {
    sub_26124C718(v16, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v22 = v17;
    v23 = sub_2613A122C();
    v24 = sub_2613A1D8C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v41[0] = v32;
      *v25 = 136315138;
      v41[5] = v17;
      v26 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
      v27 = sub_2613A195C();
      v29 = sub_26124C11C(v27, v28, v41);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_261243000, v23, v24, "Transaction signature error: [ %s ]", v25, 0xCu);
      v30 = v32;
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x266701350](v30, -1, -1);
      MEMORY[0x266701350](v25, -1, -1);
    }

    (*(v20 + 8))(v16, v19);
  }

  return swift_willThrow();
}

void sub_2612AB480(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v53 = a9;
  v57 = a7;
  v58 = a8;
  v55 = a4;
  v56 = a6;
  v59[1] = *MEMORY[0x277D85DE8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v48 - v16;
  v52 = sub_26129B780();
  sub_26124AA44(v52, v17);
  v18 = sub_2613A124C();
  v54 = *(v18 - 8);
  v19 = *(v54 + 48);
  if (v19(v17, 1, v18) == 1)
  {
    sub_26124C718(v17, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v50 = a3;
    v51 = a5;
    v20 = sub_2613A122C();
    v21 = sub_2613A1D9C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v49 = a1;
      v23 = v22;
      *v22 = 0;
      _os_log_impl(&dword_261243000, v20, v21, "Requesting to sign SAF transaction", v22, 2u);
      v24 = v23;
      a1 = v49;
      MEMORY[0x266701350](v24, -1, -1);
    }

    (*(v54 + 8))(v17, v18);
  }

  v25 = sub_26139EFFC();
  v26 = sub_26139EFFC();
  v27 = sub_26139F10C();
  v28 = sub_2613A189C();
  v59[0] = 0;
  v29 = [a1 signTransactionWithPaymentCardData:v25 generalCardData:v26 transactionUUID:v27 vtid:v28 error:v59];

  v30 = v59[0];
  if (v29)
  {
    sub_26124AA44(v52, v15);
    v31 = v19(v15, 1, v18);
    v32 = v30;
    if (v31 == 1)
    {
      sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v34 = sub_2613A122C();
      v35 = sub_2613A1D9C();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_261243000, v34, v35, "Transaction was signed successfully", v36, 2u);
        MEMORY[0x266701350](v36, -1, -1);
      }

      (*(v54 + 8))(v15, v18);
    }

    v37 = [v29 signature];
    sub_26139F01C();

    v38 = [v29 keyId];
    sub_26139F01C();

    nullsub_1();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;

    v47 = v53;
    *v53 = v40;
    v47[1] = v42;
    v47[2] = v44;
    v47[3] = v46;
  }

  else
  {
    v33 = v59[0];
    sub_26139EE7C();

    swift_willThrow();
  }
}

void sub_2612AB8B4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v29 - v12;
  v32 = a1;
  v33 = a2;
  v34 = a3;
  v35 = a4;
  sub_2612AF4AC(v31, 0, v36);
  if (v5)
  {
    v14 = sub_26129B780();
    sub_26124AA44(v14, v13);
    v15 = sub_2613A124C();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v13, 1, v15) == 1)
    {
      sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v20 = v5;
      v21 = sub_2613A122C();
      v22 = sub_2613A1D8C();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *&v36[0] = v30;
        *v23 = 136315138;
        v38 = v5;
        v24 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
        v25 = sub_2613A195C();
        v27 = sub_26124C11C(v25, v26, v36);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_261243000, v21, v22, "Batch signature error: [ %s ]", v23, 0xCu);
        v28 = v30;
        __swift_destroy_boxed_opaque_existential_0Tm(v30);
        MEMORY[0x266701350](v28, -1, -1);
        MEMORY[0x266701350](v23, -1, -1);
      }

      (*(v16 + 8))(v13, v15);
    }

    swift_willThrow();
  }

  else
  {
    v18 = v36[1];
    v17 = v36[2];
    v19 = v37;
    *a5 = v36[0];
    *(a5 + 16) = v18;
    *(a5 + 32) = v17;
    *(a5 + 48) = v19;
  }
}

double sub_2612ABB48@<D0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, _OWORD *a5@<X8>)
{
  v56 = a3;
  v57 = a4;
  v55 = a5;
  v62 = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v50 - v11;
  v54 = sub_26129B780();
  sub_26124AA44(v54, v12);
  v13 = sub_2613A124C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v12, 1, v13) == 1)
  {
    sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v52 = a1;
    v53 = a2;
    v16 = sub_2613A122C();
    v17 = sub_2613A1D9C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v51 = v14;
      v19 = v18;
      *v18 = 0;
      _os_log_impl(&dword_261243000, v16, v17, "Requesting to sign SAF batch", v18, 2u);
      v20 = v19;
      v14 = v51;
      MEMORY[0x266701350](v20, -1, -1);
    }

    (*(v14 + 8))(v12, v13);
    a1 = v52;
    a2 = v53;
  }

  v21 = sub_26139F10C();
  v22 = sub_2613A189C();
  v58 = 0;
  v23 = [a1 signBatchWithBatchId:v21 count:a2 vtid:v22 error:&v58];

  v24 = v58;
  if (v23)
  {
    sub_26124AA44(v54, v10);
    v25 = v15(v10, 1, v13);
    v26 = v24;
    if (v25 == 1)
    {
      sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v29 = sub_2613A122C();
      v30 = sub_2613A1D9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_261243000, v29, v30, "Batch signed successfully", v31, 2u);
        MEMORY[0x266701350](v31, -1, -1);
      }

      (*(v14 + 8))(v10, v13);
    }

    v32 = [v23 batchSignature];
    v33 = [v32 signature];

    v34 = sub_26139F01C();
    v36 = v35;

    v37 = [v23 batchSignature];
    v38 = [v37 keyId];

    v39 = sub_26139F01C();
    v41 = v40;

    v42 = [v23 intermediateCertificates];
    v43 = sub_2613A1B7C();

    v44 = [v23 leafCertificate];
    v45 = sub_2613A18CC();
    v47 = v46;

    sub_2612CCBD8(v34, v36, v39, v41, v43, v45, v47, v59);
    v48 = v59[1];
    v49 = v55;
    *v55 = v59[0];
    v49[1] = v48;
    result = *&v60;
    v49[2] = v60;
    *(v49 + 6) = v61;
  }

  else
  {
    v27 = v58;
    sub_26139EE7C();

    swift_willThrow();
  }

  return result;
}

uint64_t sub_2612ABFEC(void *a1)
{
  v2 = v1;
  v4 = sub_2613A171C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2613A175C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[4];
  v13 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v12);
  result = sub_26124AAB4(v12, MEMORY[0x277D837D0], v13);
  if (result)
  {
    v15 = result;
    v26 = *(v2 + 16);
    v16 = swift_allocObject();
    v25 = v7;
    v17 = v16;
    swift_weakInit();
    sub_2612B44CC(a1, v29);
    v18 = swift_allocObject();
    v19 = v29[1];
    *(v18 + 24) = v29[0];
    *(v18 + 16) = v17;
    v24 = v17;
    *(v18 + 40) = v19;
    *(v18 + 56) = v29[2];
    *(v18 + 72) = v15;
    aBlock[4] = sub_2612B4528;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_261276D54;
    aBlock[3] = &block_descriptor_3;
    v20 = _Block_copy(aBlock);

    sub_2613A173C();
    v27 = MEMORY[0x277D84F90];
    sub_2612B4550(&qword_27FE9F4B0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F640, &unk_2613AA600);
    v23 = v8;
    sub_26127DF9C(&qword_27FE9F4B8, &unk_27FE9F640, &unk_2613AA600);
    v21 = v25;
    sub_2613A203C();
    MEMORY[0x266700290](0, v11, v21, v20);
    _Block_release(v20);
    (*(v5 + 8))(v21, v4);
    (*(v9 + 8))(v11, v23);
  }

  return result;
}

uint64_t sub_2612AC358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v28[-v7];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = sub_26129B780();
    sub_26124AA44(v10, v8);
    v11 = sub_2613A124C();
    v12 = *(v11 - 8);
    v34 = *(v12 + 48);
    if (v34(v8, 1, v11) == 1)
    {
      v13 = sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v33 = v10;
      sub_2612B44CC(a2, v36);

      v14 = sub_2613A122C();
      v15 = sub_2613A1D9C();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v32 = v12;
        v17 = v16;
        v30 = swift_slowAlloc();
        v37[0] = v30;
        *v17 = 136315394;
        v35 = v36[0];
        v18 = sub_2613A195C();
        v29 = v15;
        v19 = v18;
        v31 = a2;
        v21 = v20;
        sub_2612A0E50(v36);
        v22 = sub_26124C11C(v19, v21, v37);

        *(v17 + 4) = v22;
        *(v17 + 12) = 2080;
        v23 = sub_2613A180C();
        v25 = sub_26124C11C(v23, v24, v37);

        *(v17 + 14) = v25;
        a2 = v31;
        _os_log_impl(&dword_261243000, v14, v29, "Monitor Event Type: [%s] Details: %s", v17, 0x16u);
        v26 = v30;
        swift_arrayDestroy();
        MEMORY[0x266701350](v26, -1, -1);
        v27 = v17;
        v12 = v32;
        MEMORY[0x266701350](v27, -1, -1);
      }

      else
      {

        sub_2612A0E50(v36);
      }

      v13 = (*(v12 + 8))(v8, v11);
    }

    MEMORY[0x28223BE20](v13);
    *&v28[-16] = a2;
    *&v28[-8] = a3;
    sub_2612B0670(&v28[-32], 0);
  }

  return result;
}

uint64_t sub_2612AC860(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  isEscapingClosureAtFileLocation = v29 - v3;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = a1 + 32;
    v7 = MEMORY[0x277D84F90];
    v8 = MEMORY[0x277D837D0];
    do
    {
      sub_2612B44CC(v6, &aBlock);
      v9 = v32;
      v10 = v33;
      __swift_project_boxed_opaque_existential_1(v31, v32);
      v11 = sub_26124AAB4(v9, v8, v10);
      if (v11)
      {
        v12 = v11;
        v13 = aBlock;
        sub_2612A0E50(&aBlock);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2612B1DAC(0, v7[2] + 1, 1, v7);
        }

        v15 = v7[2];
        v14 = v7[3];
        if (v15 >= v14 >> 1)
        {
          v7 = sub_2612B1DAC((v14 > 1), v15 + 1, 1, v7);
        }

        v7[2] = v15 + 1;
        v16 = &v7[2 * v15];
        *(v16 + 32) = v13;
        v16[5] = v12;
      }

      else
      {
        sub_2612A0E50(&aBlock);
      }

      v6 += 48;
      --v5;
    }

    while (v5);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v7[2])
  {
    v17 = *(v29[1] + 16);
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = v7;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_2612B4598;
    *(v20 + 24) = v19;
    v32 = sub_2612B45A0;
    v33 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v31[0] = 1107296256;
    v31[1] = sub_2612AD448;
    v31[2] = &block_descriptor_15;
    v21 = _Block_copy(&aBlock);

    dispatch_sync(v17, v21);
    _Block_release(v21);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v23 = sub_26129B780();
  sub_26124AA44(v23, isEscapingClosureAtFileLocation);
  v24 = sub_2613A124C();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(isEscapingClosureAtFileLocation, 1, v24) == 1)
  {
    return sub_26124C718(isEscapingClosureAtFileLocation, &qword_27FE9F560, &qword_2613A3CB0);
  }

  v26 = sub_2613A122C();
  v27 = sub_2613A1D8C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_261243000, v26, v27, "Could not generate the list of monitor events", v28, 2u);
    MEMORY[0x266701350](v28, -1, -1);
  }

  return (*(v25 + 8))(isEscapingClosureAtFileLocation, v24);
}

uint64_t sub_2612ACC48(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v3 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;

    sub_2612B0084(0, v5, a2);
  }

  return result;
}

id sub_2612ACEFC(unsigned __int8 *a1, void *a2)
{
  v48 = a2;
  v51[1] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v42 - v7;
  v9 = *a1;
  LOBYTE(v51[0]) = *a1;
  v10 = sub_2613A195C();
  v12 = v11;
  v46 = sub_26129B780();
  sub_26124AA44(v46, v8);
  v13 = sub_2613A124C();
  v47 = *(v13 - 8);
  v14 = *(v47 + 48);
  v49 = v13;
  v45 = v14;
  if ((v14)(v8, 1) == 1)
  {

    sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {

    v15 = sub_2613A122C();
    v16 = sub_2613A1D9C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v44 = v6;
      v18 = v17;
      v43 = swift_slowAlloc();
      v51[0] = v43;
      *v18 = 136315394;
      v19 = sub_26124C11C(v10, v12, v51);

      *(v18 + 4) = v19;
      *(v18 + 12) = 2080;
      v20 = sub_2613A180C();
      v22 = sub_26124C11C(v20, v21, v51);

      *(v18 + 14) = v22;
      _os_log_impl(&dword_261243000, v15, v16, "Monitor Event Type: [%s] Details: %s", v18, 0x16u);
      v23 = v43;
      swift_arrayDestroy();
      MEMORY[0x266701350](v23, -1, -1);
      v24 = v18;
      v6 = v44;
      MEMORY[0x266701350](v24, -1, -1);
    }

    else
    {
    }

    (*(v47 + 8))(v8, v49);
  }

  v25 = sub_2612B5D04(v9);
  v26 = sub_2613A0C9C();
  v27 = sub_2613A0C3C();
  v28 = sub_2613A17EC();
  v51[0] = 0;
  v29 = [v48 signalWithEvent:v25 component:v26 origin:v27 details:v28 error:v51];

  if (v29)
  {
    return v51[0];
  }

  v31 = v51[0];
  v32 = sub_26139EE7C();

  swift_willThrow();
  sub_26124AA44(v46, v6);
  if (v45(v6, 1, v49) == 1)
  {

    return sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v33 = v32;
    v34 = sub_2613A122C();
    v35 = sub_2613A1D8C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v50 = v32;
      v51[0] = v37;
      *v36 = 136315138;
      v38 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
      v39 = sub_2613A195C();
      v41 = sub_26124C11C(v39, v40, v51);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_261243000, v34, v35, "Could not report monitor event! Error: [%s]", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      MEMORY[0x266701350](v37, -1, -1);
      MEMORY[0x266701350](v36, -1, -1);
    }

    else
    {
    }

    return (*(v47 + 8))(v6, v49);
  }
}

void sub_2612AD4B0(void *a1, uint64_t a2, uint64_t a3)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v26 - v5;
  v7 = sub_2613A189C();
  v26[0] = 0;
  v8 = [a1 verifyWithPINToken:v7 error:v26];

  if (v8)
  {
    v9 = v26[0];
  }

  else
  {
    v10 = v26[0];
    v11 = sub_26139EE7C();

    swift_willThrow();
    v12 = sub_26129B780();
    sub_26124AA44(v12, v6);
    v13 = sub_2613A124C();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v6, 1, v13) == 1)
    {
      sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v15 = v11;
      v16 = sub_2613A122C();
      v17 = sub_2613A1D8C();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        v20 = v11;
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v18 + 4) = v21;
        *v19 = v21;
        _os_log_impl(&dword_261243000, v16, v17, "PIN token validation failed | error: %@", v18, 0xCu);
        sub_26124C718(v19, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v19, -1, -1);
        MEMORY[0x266701350](v18, -1, -1);
      }

      (*(v14 + 8))(v6, v13);
    }

    _s3__C4CodeOMa_0(0);
    v26[0] = 11004;
    v22 = v11;
    sub_2612B4550(&qword_27FE9F9D0, _s3__C4CodeOMa_0, &unk_2613A7BE8);
    v23 = sub_26139EDAC();

    sub_2612B45EC();
    swift_allocError();
    v25 = 28;
    if (v23)
    {
      v25 = 31;
    }

    *v24 = v25;
    swift_willThrow();
  }
}

uint64_t sub_2612AD800(int a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  if (*(a2 + 24))
  {
    sub_2612B3E28(a3, v52);
  }

  else
  {
    type metadata accessor for SPRUtils();
    sub_2612B3E28(a3, v52);
    sub_261259BE0(0, &qword_27FE9F9F8, 0x277D64038);
    sub_2612C61EC(sub_2612AFA4C);
    if (v3)
    {
      v51 = a1;
      v4 = 0;
      v21 = sub_26129B780();
      sub_26124AA44(v21, v11);
      v22 = sub_2613A124C();
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(v11, 1, v22) == 1)
      {

        sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
        a1 = v51;
      }

      else
      {
        v50 = v22;
        v26 = v3;
        v27 = sub_2613A122C();
        v28 = sub_2613A1D8C();

        v49 = v28;
        v29 = v28;
        v30 = v27;
        if (os_log_type_enabled(v27, v29))
        {
          v31 = swift_slowAlloc();
          v47 = v31;
          v48 = swift_slowAlloc();
          v52[0] = v48;
          *v31 = 136315138;
          v53 = v3;
          v32 = v3;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
          v33 = sub_2613A195C();
          v46 = v30;
          v45 = sub_26124C11C(v33, v34, v52);

          v35 = v47;
          *(v47 + 1) = v45;
          v36 = v35;
          _os_log_impl(&dword_261243000, v30, v49, "Could not make Reader module! Error: [ %s ]", v35, 0xCu);
          v37 = v48;
          __swift_destroy_boxed_opaque_existential_0Tm(v48);
          MEMORY[0x266701350](v37, -1, -1);
          MEMORY[0x266701350](v36, -1, -1);
        }

        else
        {
        }

        (*(v23 + 8))(v11, v50);
        a1 = v51;
      }
    }

    else
    {
      v25 = *(a2 + 24);
      *(a2 + 24) = v53;

      v4 = 0;
    }
  }

  v14 = *(a2 + 24);
  if (v14)
  {
    v15 = v14;
    sub_2612A9A2C(v15, a3);
    if (v4)
    {
      _s3__C4CodeOMa_1(0);
      v52[0] = 14001;
      v16 = v4;
      sub_2612B4550(&qword_27FE9F9C8, _s3__C4CodeOMa_1, &unk_2613A9CA0);
      v17 = sub_26139EDAC();

      if (v17)
      {

        v18 = sub_26129B780();
        sub_26124AA44(v18, v13);
        v19 = sub_2613A124C();
        v20 = *(v19 - 8);
        if ((*(v20 + 48))(v13, 1, v19) == 1)
        {
          sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v51 = a1;
          v38 = sub_2613A122C();
          v39 = sub_2613A1D8C();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            *v40 = 0;
            _os_log_impl(&dword_261243000, v38, v39, "XPC service disconnected, let's try one more time", v40, 2u);
            MEMORY[0x266701350](v40, -1, -1);
          }

          (*(v20 + 8))(v13, v19);
          LOBYTE(a1) = v51;
        }

        v41 = *(a2 + 24);
        *(a2 + 24) = 0;

        if (a1)
        {
          sub_2612B4668();
          swift_allocError();
          *v42 = 1;
          swift_willThrow();
        }

        else
        {
          sub_2612B3E28(a3, v52);
          sub_2612AD800(1, a2, a3);
        }
      }
    }
  }

  else
  {
    sub_2612B4668();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();
  }

  sub_2612B47F8(a3);
  return sub_2612B47F8(a3);
}

void sub_2612ADDB0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v49 - v12;
  if (*(a1 + 24))
  {
    v14 = a2;
  }

  else
  {
    type metadata accessor for SPRUtils();
    sub_261259BE0(0, &qword_27FE9F9F8, 0x277D64038);
    v21 = a2;

    v22 = v56;
    sub_2612C61EC(sub_2612AFA4C);
    if (v22)
    {
      v56 = 0;
      v23 = sub_26129B780();
      sub_26124AA44(v23, v11);
      v24 = sub_2613A124C();
      v54 = *(v24 - 8);
      if ((*(v54 + 48))(v11, 1, v24) == 1)
      {

        sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v52 = v24;
        v34 = v22;
        v35 = sub_2613A122C();
        v36 = sub_2613A1D8C();
        v53 = v22;

        v51 = v36;
        v37 = v36;
        v38 = v35;
        if (os_log_type_enabled(v35, v37))
        {
          v39 = swift_slowAlloc();
          v49 = v39;
          v50 = swift_slowAlloc();
          aBlock[0] = v50;
          *v39 = 136315138;
          aBlock[7] = v53;
          v40 = v53;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
          v41 = sub_2613A195C();
          v55 = a2;
          v43 = sub_26124C11C(v41, v42, aBlock);
          a2 = v55;

          v44 = v49;
          *(v49 + 1) = v43;
          v45 = v38;
          v46 = v38;
          v47 = v44;
          _os_log_impl(&dword_261243000, v45, v51, "Could not make Reader module! Error: [ %s ]", v44, 0xCu);
          v48 = v50;
          __swift_destroy_boxed_opaque_existential_0Tm(v50);
          MEMORY[0x266701350](v48, -1, -1);
          MEMORY[0x266701350](v47, -1, -1);
        }

        else
        {
        }

        (*(v54 + 8))(v11, v52);
      }
    }

    else
    {
      v33 = *(a1 + 24);
      *(a1 + 24) = aBlock[0];

      v56 = 0;
    }
  }

  v15 = *(a1 + 24);
  if (v15)
  {
    v55 = a2;
    v16 = a4;
    v17 = v15;
    v18 = sub_26129B780();
    sub_26124AA44(v18, v13);
    v19 = sub_2613A124C();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v13, 1, v19) == 1)
    {
      sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v27 = sub_2613A122C();
      v28 = sub_2613A1D9C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_261243000, v27, v28, "Requesting readCard", v29, 2u);
        MEMORY[0x266701350](v29, -1, -1);
      }

      (*(v20 + 8))(v13, v19);
    }

    v30 = swift_allocObject();
    *(v30 + 16) = v16;
    *(v30 + 24) = a3;
    aBlock[4] = sub_2612B47F0;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2612AA2EC;
    aBlock[3] = &block_descriptor_37;
    v31 = _Block_copy(aBlock);

    v32 = v55;
    [v17 readCardWithParameter:v55 delegate:a3 completion:v31];
    _Block_release(v31);
  }

  else
  {
    sub_2612B4668();
    v25 = swift_allocError();
    *v26 = 1;
    v56 = v25;
    swift_willThrow();
  }
}

void sub_2612AE36C(int a1, uint64_t a2)
{
  v3 = v2;
  v44 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - v9;
  v11 = *(a2 + 24);
  if (v11)
  {
    goto LABEL_2;
  }

  type metadata accessor for SPRUtils();
  sub_261259BE0(0, &qword_27FE9F9F8, 0x277D64038);
  sub_2612C61EC(sub_2612AFA4C);
  if (v2)
  {
    v3 = 0;
    v18 = sub_26129B780();
    sub_26124AA44(v18, v8);
    v19 = sub_2613A124C();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v8, 1, v19) != 1)
    {
      v27 = v2;
      v28 = sub_2613A122C();
      v29 = sub_2613A1D8C();

      v43 = v29;
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v41 = v30;
        v42 = swift_slowAlloc();
        v46 = v42;
        *v30 = 136315138;
        v45 = v2;
        v31 = v2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
        v32 = sub_2613A195C();
        v39 = sub_26124C11C(v32, v33, &v46);
        v40 = v28;

        v34 = v41;
        *(v41 + 1) = v39;
        v35 = v28;
        v36 = v34;
        _os_log_impl(&dword_261243000, v35, v43, "Could not make Reader module! Error: [ %s ]", v34, 0xCu);
        v37 = v42;
        __swift_destroy_boxed_opaque_existential_0Tm(v42);
        MEMORY[0x266701350](v37, -1, -1);
        MEMORY[0x266701350](v36, -1, -1);
      }

      else
      {
      }

      (*(v20 + 8))(v8, v19);
      v11 = *(a2 + 24);
      if (v11)
      {
        goto LABEL_2;
      }

LABEL_23:
      sub_2612B4668();
      swift_allocError();
      *v38 = 1;
      swift_willThrow();
      return;
    }

    sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
    v11 = *(a2 + 24);
    if (!v11)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = *(a2 + 24);
    *(a2 + 24) = v46;

    v3 = 0;
    v11 = *(a2 + 24);
    if (!v11)
    {
      goto LABEL_23;
    }
  }

LABEL_2:
  v12 = v11;
  sub_2612AA5D0(v12);
  if (v3)
  {
    _s3__C4CodeOMa_1(0);
    v46 = 14001;
    v13 = v3;
    sub_2612B4550(&qword_27FE9F9C8, _s3__C4CodeOMa_1, &unk_2613A9CA0);
    v14 = sub_26139EDAC();

    if (v14)
    {

      v15 = sub_26129B780();
      sub_26124AA44(v15, v10);
      v16 = sub_2613A124C();
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(v10, 1, v16) == 1)
      {
        sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v22 = sub_2613A122C();
        v23 = sub_2613A1D8C();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_261243000, v22, v23, "XPC service disconnected, let's try one more time", v24, 2u);
          MEMORY[0x266701350](v24, -1, -1);
        }

        (*(v17 + 8))(v10, v16);
      }

      v25 = *(a2 + 24);
      *(a2 + 24) = 0;

      if (v44)
      {
        sub_2612B4668();
        swift_allocError();
        *v26 = 1;
        swift_willThrow();

        return;
      }

      sub_2612AE36C(1, a2);
    }
  }
}

uint64_t sub_2612AE8CC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v8 = v7;
  v58 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v59 = &v50 - v19;
  if (*(a2 + 24))
  {
    sub_26124C778(a3, a4);
    sub_26125C348(a5, a6);
  }

  else
  {
    v60 = a7;
    type metadata accessor for SPRUtils();
    sub_26124C778(a3, a4);
    sub_26125C348(a5, a6);
    sub_261259BE0(0, &qword_27FE9F9F8, 0x277D64038);
    sub_2612C61EC(sub_2612AFA4C);
    if (v7)
    {
      v8 = 0;
      v28 = sub_26129B780();
      sub_26124AA44(v28, v18);
      v29 = sub_2613A124C();
      v57 = *(v29 - 8);
      if ((v57[6].isa)(v18, 1, v29) == 1)
      {

        sub_26124C718(v18, &qword_27FE9F560, &qword_2613A3CB0);
        a7 = v60;
      }

      else
      {
        v55 = a2;
        v56 = v29;
        v32 = v7;
        v33 = sub_2613A122C();
        v34 = sub_2613A1D8C();

        v54 = v34;
        v35 = v34;
        v36 = v33;
        if (os_log_type_enabled(v33, v35))
        {
          v37 = swift_slowAlloc();
          v52 = v37;
          v53 = swift_slowAlloc();
          v62 = v53;
          *v37 = 136315138;
          v61 = v7;
          v38 = v7;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
          v39 = sub_2613A195C();
          v51 = v36;
          v50 = sub_26124C11C(v39, v40, &v62);

          v41 = v52;
          *(v52 + 1) = v50;
          v42 = v41;
          _os_log_impl(&dword_261243000, v36, v54, "Could not make Reader module! Error: [ %s ]", v41, 0xCu);
          v43 = v53;
          __swift_destroy_boxed_opaque_existential_0Tm(v53);
          MEMORY[0x266701350](v43, -1, -1);
          MEMORY[0x266701350](v42, -1, -1);
        }

        else
        {
        }

        a7 = v60;
        a2 = v55;
        (v57[1].isa)(v18, v56);
      }
    }

    else
    {
      v31 = *(a2 + 24);
      *(a2 + 24) = v62;

      v8 = 0;
      a7 = v60;
    }
  }

  v20 = *(a2 + 24);
  if (v20)
  {
    v21 = v20;
    sub_2612AAAA8(v21, a3, a4, a6, a7);
    if (v8)
    {
      v60 = a7;
      _s3__C4CodeOMa_1(0);
      v62 = 14001;
      v22 = v8;
      sub_2612B4550(&qword_27FE9F9C8, _s3__C4CodeOMa_1, &unk_2613A9CA0);
      v23 = sub_26139EDAC();

      if (v23)
      {

        v24 = sub_26129B780();
        v25 = v59;
        sub_26124AA44(v24, v59);
        v26 = sub_2613A124C();
        v27 = *(v26 - 8);
        if ((*(v27 + 48))(v25, 1, v26) == 1)
        {
          sub_26124C718(v25, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v44 = sub_2613A122C();
          LODWORD(v56) = sub_2613A1D8C();
          v57 = v44;
          if (os_log_type_enabled(v44, v56))
          {
            v45 = swift_slowAlloc();
            *v45 = 0;
            _os_log_impl(&dword_261243000, v57, v56, "XPC service disconnected, let's try one more time", v45, 2u);
            MEMORY[0x266701350](v45, -1, -1);
          }

          (*(v27 + 8))(v59, v26);
        }

        v46 = *(a2 + 24);
        *(a2 + 24) = 0;

        v47 = v60;
        if (v58)
        {
          sub_2612B4668();
          swift_allocError();
          *v48 = 1;
          swift_willThrow();
        }

        else
        {
          sub_26124C778(a3, a4);
          sub_26125C348(a5, a6);
          sub_2612AE8CC(1, a2, a3, a4, a5, a6, v47);
        }
      }
    }
  }

  else
  {
    sub_2612B4668();
    swift_allocError();
    *v30 = 1;
    swift_willThrow();
  }

  sub_26124C6C4(a3, a4);
  sub_26124A168(a5, a6);
  sub_26124C6C4(a3, a4);
  return sub_26124A168(a5, a6);
}

void sub_2612AEF0C(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = v4;
  v6 = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v47 - v14;
  v16 = *(v3 + 24);
  if (v16)
  {
    goto LABEL_2;
  }

  v54 = a1;
  type metadata accessor for SPRUtils();
  sub_261259BE0(0, &qword_27FE9F9F8, 0x277D64038);
  sub_2612C61EC(sub_2612AFA4C);
  if (v4)
  {
    v55 = a2;
    v5 = 0;
    v23 = sub_26129B780();
    sub_26124AA44(v23, v13);
    v24 = sub_2613A124C();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v13, 1, v24) == 1)
    {

      sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v53 = a3;
      v34 = v4;
      v35 = sub_2613A122C();
      v36 = sub_2613A1D8C();

      v52 = v36;
      v37 = v36;
      v38 = v35;
      if (os_log_type_enabled(v35, v37))
      {
        v39 = swift_slowAlloc();
        v50 = v39;
        v51 = swift_slowAlloc();
        v57 = v51;
        *v39 = 136315138;
        v56 = v4;
        v40 = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
        v41 = sub_2613A195C();
        v49 = v38;
        v48 = sub_26124C11C(v41, v42, &v57);

        v43 = v50;
        *(v50 + 1) = v48;
        v44 = v43;
        _os_log_impl(&dword_261243000, v38, v52, "Could not make Reader module! Error: [ %s ]", v43, 0xCu);
        v45 = v51;
        __swift_destroy_boxed_opaque_existential_0Tm(v51);
        MEMORY[0x266701350](v45, -1, -1);
        MEMORY[0x266701350](v44, -1, -1);
      }

      else
      {
      }

      a3 = v53;
      (*(v25 + 8))(v13, v24);
    }

    a1 = v54;
    a2 = v55;
    v16 = *(v6 + 24);
    if (v16)
    {
      goto LABEL_2;
    }

LABEL_23:
    sub_2612B4668();
    swift_allocError();
    *v46 = 1;
    swift_willThrow();
    return;
  }

  v26 = *(v3 + 24);
  *(v3 + 24) = v57;

  v5 = 0;
  a1 = v54;
  v16 = *(v3 + 24);
  if (!v16)
  {
    goto LABEL_23;
  }

LABEL_2:
  v17 = v16;
  sub_2612B4484(v17, a3);
  if (v5)
  {
    _s3__C4CodeOMa_1(0);
    v57 = 14001;
    v18 = v5;
    sub_2612B4550(&qword_27FE9F9C8, _s3__C4CodeOMa_1, &unk_2613A9CA0);
    v19 = sub_26139EDAC();

    if (v19)
    {
      v55 = a2;

      v20 = sub_26129B780();
      sub_26124AA44(v20, v15);
      v21 = sub_2613A124C();
      v22 = *(v21 - 8);
      if ((*(v22 + 48))(v15, 1, v21) == 1)
      {
        sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v27 = sub_2613A122C();
        v28 = sub_2613A1D8C();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v54 = a1;
          v30 = v29;
          *v29 = 0;
          _os_log_impl(&dword_261243000, v27, v28, "XPC service disconnected, let's try one more time", v29, 2u);
          v31 = v30;
          a1 = v54;
          MEMORY[0x266701350](v31, -1, -1);
        }

        (*(v22 + 8))(v15, v21);
      }

      v32 = *(v6 + 24);
      *(v6 + 24) = 0;

      if (v55)
      {
        sub_2612B4668();
        swift_allocError();
        *v33 = 1;
        swift_willThrow();
      }

      else
      {
        sub_2612AEF0C(a1, 1, a3);
      }
    }
  }
}

void sub_2612AF4AC(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = v4;
  v6 = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v47 - v14;
  v16 = *(v3 + 24);
  if (v16)
  {
    goto LABEL_2;
  }

  v54 = a1;
  type metadata accessor for SPRUtils();
  sub_261259BE0(0, &qword_27FE9F9F8, 0x277D64038);
  sub_2612C61EC(sub_2612AFA4C);
  if (v4)
  {
    v55 = a2;
    v5 = 0;
    v23 = sub_26129B780();
    sub_26124AA44(v23, v13);
    v24 = sub_2613A124C();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v13, 1, v24) == 1)
    {

      sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v53 = a3;
      v34 = v4;
      v35 = sub_2613A122C();
      v36 = sub_2613A1D8C();

      v52 = v36;
      v37 = v36;
      v38 = v35;
      if (os_log_type_enabled(v35, v37))
      {
        v39 = swift_slowAlloc();
        v50 = v39;
        v51 = swift_slowAlloc();
        v57 = v51;
        *v39 = 136315138;
        v56 = v4;
        v40 = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
        v41 = sub_2613A195C();
        v49 = v38;
        v48 = sub_26124C11C(v41, v42, &v57);

        v43 = v50;
        *(v50 + 1) = v48;
        v44 = v43;
        _os_log_impl(&dword_261243000, v38, v52, "Could not make Reader module! Error: [ %s ]", v43, 0xCu);
        v45 = v51;
        __swift_destroy_boxed_opaque_existential_0Tm(v51);
        MEMORY[0x266701350](v45, -1, -1);
        MEMORY[0x266701350](v44, -1, -1);
      }

      else
      {
      }

      a3 = v53;
      (*(v25 + 8))(v13, v24);
    }

    a1 = v54;
    a2 = v55;
    v16 = *(v6 + 24);
    if (v16)
    {
      goto LABEL_2;
    }

LABEL_23:
    sub_2612B4668();
    swift_allocError();
    *v46 = 1;
    swift_willThrow();
    return;
  }

  v26 = *(v3 + 24);
  *(v3 + 24) = v57;

  v5 = 0;
  a1 = v54;
  v16 = *(v3 + 24);
  if (!v16)
  {
    goto LABEL_23;
  }

LABEL_2:
  v17 = v16;
  sub_2612B44AC(v17, a3);
  if (v5)
  {
    _s3__C4CodeOMa_1(0);
    v57 = 14001;
    v18 = v5;
    sub_2612B4550(&qword_27FE9F9C8, _s3__C4CodeOMa_1, &unk_2613A9CA0);
    v19 = sub_26139EDAC();

    if (v19)
    {
      v55 = a2;

      v20 = sub_26129B780();
      sub_26124AA44(v20, v15);
      v21 = sub_2613A124C();
      v22 = *(v21 - 8);
      if ((*(v22 + 48))(v15, 1, v21) == 1)
      {
        sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v27 = sub_2613A122C();
        v28 = sub_2613A1D8C();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v54 = a1;
          v30 = v29;
          *v29 = 0;
          _os_log_impl(&dword_261243000, v27, v28, "XPC service disconnected, let's try one more time", v29, 2u);
          v31 = v30;
          a1 = v54;
          MEMORY[0x266701350](v31, -1, -1);
        }

        (*(v22 + 8))(v15, v21);
      }

      v32 = *(v6 + 24);
      *(v6 + 24) = 0;

      if (v55)
      {
        sub_2612B4668();
        swift_allocError();
        *v33 = 1;
        swift_willThrow();
      }

      else
      {
        sub_2612AF4AC(a1, 1, a3);
      }
    }
  }
}

uint64_t sub_2612AFAA0(int a1, uint64_t a2, int a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v42 - v12;
  v14 = *(a2 + 32);
  if (v14)
  {
    goto LABEL_2;
  }

  type metadata accessor for SPRUtils();
  sub_261259BE0(0, &qword_27FE9FA10, 0x277D64000);
  sub_2612C61EC(sub_2612B0030);
  if (!v3)
  {
    v24 = *(a2 + 32);
    *(a2 + 32) = v50;

    v4 = 0;
    v14 = *(a2 + 32);
    if (v14)
    {
      goto LABEL_2;
    }

LABEL_24:
    sub_2612B4668();
    swift_allocError();
    *v40 = 2;
    swift_willThrow();
    return a2 & 1;
  }

  v51 = a1;
  v4 = 0;
  v21 = sub_26129B780();
  sub_26124AA44(v21, v11);
  v22 = sub_2613A124C();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v11, 1, v22) == 1)
  {

    sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v48 = a3;
    v30 = v3;
    v31 = sub_2613A122C();
    v32 = sub_2613A1D8C();

    v47 = v32;
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v45 = v33;
      v46 = swift_slowAlloc();
      v49 = v3;
      v50 = v46;
      *v33 = 136315138;
      v34 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
      v35 = sub_2613A195C();
      v44 = v31;
      v43 = sub_26124C11C(v35, v36, &v50);

      v37 = v45;
      *(v45 + 1) = v43;
      v38 = v37;
      _os_log_impl(&dword_261243000, v31, v47, "Could not make Configurator module! Error: [ %s ]", v37, 0xCu);
      v39 = v46;
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      MEMORY[0x266701350](v39, -1, -1);
      MEMORY[0x266701350](v38, -1, -1);
    }

    else
    {
    }

    LOBYTE(a3) = v48;
    (*(v23 + 8))(v11, v22);
  }

  a1 = v51;
  v14 = *(a2 + 32);
  if (!v14)
  {
    goto LABEL_24;
  }

LABEL_2:
  v15 = v14;
  sub_2612A982C(v15, a3 & 1, &v52);
  if (v4)
  {
    _s3__C4CodeOMa_1(0);
    v50 = 14001;
    v16 = v4;
    sub_2612B4550(&qword_27FE9F9C8, _s3__C4CodeOMa_1, &unk_2613A9CA0);
    v17 = sub_26139EDAC();

    if (v17)
    {

      v18 = sub_26129B780();
      sub_26124AA44(v18, v13);
      v19 = sub_2613A124C();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v13, 1, v19) == 1)
      {
        sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v51 = a1;
        v25 = sub_2613A122C();
        v26 = sub_2613A1D8C();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_261243000, v25, v26, "XPC service disconnected, let's try one more time", v27, 2u);
          MEMORY[0x266701350](v27, -1, -1);
        }

        (*(v20 + 8))(v13, v19);
        LOBYTE(a1) = v51;
      }

      v28 = *(a2 + 32);
      *(a2 + 32) = 0;

      if ((a1 & 1) == 0)
      {
        LOBYTE(a2) = sub_2612AFAA0(1, a2, a3 & 1);

        return a2 & 1;
      }

      sub_2612B4668();
      swift_allocError();
      *v29 = 2;
      swift_willThrow();
    }
  }

  else
  {

    LOBYTE(a2) = v52;
  }

  return a2 & 1;
}

void sub_2612B0084(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v47 - v12;
  v14 = *(a2 + 40);
  if (!v14)
  {
    type metadata accessor for SPRUtils();
    sub_261259BE0(0, &qword_27FE9F9E8, 0x277D64010);

    v24 = v4;
    sub_2612C61EC(sub_2612B0BF4);
    if (v4)
    {
      v54 = a1;
      v4 = 0;
      v25 = sub_26129B780();
      sub_26124AA44(v25, v11);
      v26 = sub_2613A124C();
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(v11, 1, v26) == 1)
      {

        sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v53 = v26;
        v34 = v24;
        v35 = sub_2613A122C();
        v36 = sub_2613A1D8C();

        v52 = v36;
        v37 = v36;
        v38 = v35;
        if (os_log_type_enabled(v35, v37))
        {
          v39 = swift_slowAlloc();
          v50 = v39;
          v51 = swift_slowAlloc();
          v55[0] = v51;
          *v39 = 136315138;
          v55[3] = v24;
          v40 = v24;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
          v41 = sub_2613A195C();
          v49 = v38;
          v48 = sub_26124C11C(v41, v42, v55);

          v43 = v50;
          *(v50 + 1) = v48;
          v44 = v43;
          _os_log_impl(&dword_261243000, v38, v52, "Could not make Monitor module! Error: [ %s ]", v43, 0xCu);
          v45 = v51;
          __swift_destroy_boxed_opaque_existential_0Tm(v51);
          MEMORY[0x266701350](v45, -1, -1);
          MEMORY[0x266701350](v44, -1, -1);
        }

        else
        {
        }

        (*(v27 + 8))(v11, v53);
      }

      a1 = v54;
      v14 = *(a2 + 40);
      if (v14)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v28 = *(a2 + 40);
      *(a2 + 40) = v55[0];

      v4 = 0;
      v14 = *(a2 + 40);
      if (v14)
      {
        goto LABEL_3;
      }
    }

    sub_2612B4668();
    swift_allocError();
    *v46 = 3;
    swift_willThrow();
    swift_bridgeObjectRelease_n();
    return;
  }

LABEL_3:
  v15 = *(a3 + 16);
  v16 = v14;
  if (v15)
  {
    v17 = (a3 + 40);
    do
    {
      v18 = *v17;
      LOBYTE(v55[0]) = *(v17 - 8);
      v55[1] = v18;

      sub_2612ACEFC(v55, v16);

      v17 += 2;
      --v15;
    }

    while (v15);
  }

  if (v4)
  {
    _s3__C4CodeOMa_1(0);
    v55[0] = 14001;
    v19 = v4;
    sub_2612B4550(&qword_27FE9F9C8, _s3__C4CodeOMa_1, &unk_2613A9CA0);
    v20 = sub_26139EDAC();

    if (v20)
    {
      v54 = a1;

      v21 = sub_26129B780();
      sub_26124AA44(v21, v13);
      v22 = sub_2613A124C();
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(v13, 1, v22) == 1)
      {
        sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v29 = sub_2613A122C();
        v30 = sub_2613A1D8C();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_261243000, v29, v30, "XPC service disconnected, let's try one more time", v31, 2u);
          MEMORY[0x266701350](v31, -1, -1);
        }

        (*(v23 + 8))(v13, v22);
      }

      v32 = *(a2 + 40);
      *(a2 + 40) = 0;

      if (v54)
      {
        sub_2612B4668();
        swift_allocError();
        *v33 = 3;
        swift_willThrow();
      }

      else
      {

        sub_2612B0084(1, a2, a3);
      }
    }
  }

  swift_bridgeObjectRelease_n();
}

void sub_2612B0670(uint64_t a1, int a2)
{
  v4 = v3;
  v5 = v2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v43 - v12;
  v14 = *(v2 + 40);
  if (v14)
  {
    goto LABEL_2;
  }

  type metadata accessor for SPRUtils();
  sub_261259BE0(0, &qword_27FE9F9E8, 0x277D64010);
  sub_2612C61EC(sub_2612B0BF4);
  if (v3)
  {
    v49 = a2;
    v4 = 0;
    v21 = sub_26129B780();
    sub_26124AA44(v21, v11);
    v22 = sub_2613A124C();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v11, 1, v22) == 1)
    {

      sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v48 = a1;
      v30 = v3;
      v31 = sub_2613A122C();
      v32 = sub_2613A1D8C();

      v47 = v32;
      v33 = v32;
      v34 = v31;
      if (os_log_type_enabled(v31, v33))
      {
        v35 = swift_slowAlloc();
        v45 = v35;
        v46 = swift_slowAlloc();
        v51 = v46;
        *v35 = 136315138;
        v50 = v3;
        v36 = v3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
        v37 = sub_2613A195C();
        v44 = v34;
        v43 = sub_26124C11C(v37, v38, &v51);

        v39 = v45;
        *(v45 + 1) = v43;
        v40 = v39;
        _os_log_impl(&dword_261243000, v34, v47, "Could not make Monitor module! Error: [ %s ]", v39, 0xCu);
        v41 = v46;
        __swift_destroy_boxed_opaque_existential_0Tm(v46);
        MEMORY[0x266701350](v41, -1, -1);
        MEMORY[0x266701350](v40, -1, -1);
      }

      else
      {
      }

      a1 = v48;
      (*(v23 + 8))(v11, v22);
    }

    a2 = v49;
    v14 = *(v5 + 40);
    if (v14)
    {
      goto LABEL_2;
    }

LABEL_23:
    sub_2612B4668();
    swift_allocError();
    *v42 = 3;
    swift_willThrow();
    return;
  }

  v24 = *(v2 + 40);
  *(v2 + 40) = v51;

  v4 = 0;
  v14 = *(v2 + 40);
  if (!v14)
  {
    goto LABEL_23;
  }

LABEL_2:
  v15 = v14;
  sub_2612B46BC(v15);
  if (v4)
  {
    _s3__C4CodeOMa_1(0);
    v51 = 14001;
    v16 = v4;
    sub_2612B4550(&qword_27FE9F9C8, _s3__C4CodeOMa_1, &unk_2613A9CA0);
    v17 = sub_26139EDAC();

    if (v17)
    {

      v18 = sub_26129B780();
      sub_26124AA44(v18, v13);
      v19 = sub_2613A124C();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v13, 1, v19) == 1)
      {
        sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v49 = a2;
        v25 = sub_2613A122C();
        v26 = sub_2613A1D8C();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_261243000, v25, v26, "XPC service disconnected, let's try one more time", v27, 2u);
          MEMORY[0x266701350](v27, -1, -1);
        }

        (*(v20 + 8))(v13, v19);
        LOBYTE(a2) = v49;
      }

      v28 = *(v5 + 40);
      *(v5 + 40) = 0;

      if (a2)
      {
        sub_2612B4668();
        swift_allocError();
        *v29 = 3;
        swift_willThrow();

        return;
      }

      sub_2612B0670(a1, 1);
    }
  }
}

void sub_2612B0C48(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v48 - v14;
  v16 = *(a2 + 48);
  if (v16)
  {

    goto LABEL_13;
  }

  v55 = a3;
  type metadata accessor for SPRUtils();
  sub_261259BE0(0, &qword_27FE9F9C0, 0x277D64018);

  v17 = v5;
  sub_2612C61EC(sub_2612B1218);
  if (v5)
  {
    v56 = a1;
    v5 = 0;
    v18 = sub_26129B780();
    sub_26124AA44(v18, v13);
    v19 = sub_2613A124C();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v13, 1, v19) == 1)
    {

      sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v54 = v19;
      v23 = v17;
      v24 = sub_2613A122C();
      v25 = sub_2613A1D8C();

      v53 = v25;
      v26 = v25;
      v27 = v24;
      if (os_log_type_enabled(v24, v26))
      {
        v28 = swift_slowAlloc();
        v51 = v28;
        v52 = swift_slowAlloc();
        v58 = v52;
        *v28 = 136315138;
        v57 = v17;
        v29 = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
        v30 = sub_2613A195C();
        v50 = v27;
        v49 = sub_26124C11C(v30, v31, &v58);

        v32 = v51;
        *(v51 + 1) = v49;
        v33 = v32;
        _os_log_impl(&dword_261243000, v27, v53, "Could not make PIN Controller module! Error: [ %s ]", v32, 0xCu);
        v34 = v52;
        __swift_destroy_boxed_opaque_existential_0Tm(v52);
        MEMORY[0x266701350](v34, -1, -1);
        MEMORY[0x266701350](v33, -1, -1);
      }

      else
      {
      }

      (*(v20 + 8))(v13, v54);
    }

    a3 = v55;
    a1 = v56;
    v16 = *(a2 + 48);
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_7:
    sub_2612B45EC();
    swift_allocError();
    *v22 = 26;
    swift_willThrow();
    swift_bridgeObjectRelease_n();
    return;
  }

  v21 = *(a2 + 48);
  *(a2 + 48) = v58;

  v5 = 0;
  a3 = v55;
  v16 = *(a2 + 48);
  if (!v16)
  {
    goto LABEL_7;
  }

LABEL_13:
  v35 = v16;
  sub_2612AD4B0(v35, a3, a4);
  if (v5)
  {
    _s3__C4CodeOMa_1(0);
    v58 = 14001;
    v36 = v5;
    sub_2612B4550(&qword_27FE9F9C8, _s3__C4CodeOMa_1, &unk_2613A9CA0);
    v37 = sub_26139EDAC();

    if (v37)
    {
      v56 = a1;

      v38 = sub_26129B780();
      sub_26124AA44(v38, v15);
      v39 = sub_2613A124C();
      v40 = *(v39 - 8);
      if ((*(v40 + 48))(v15, 1, v39) == 1)
      {
        sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v41 = sub_2613A122C();
        v42 = sub_2613A1D8C();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v55 = a3;
          v44 = v43;
          *v43 = 0;
          _os_log_impl(&dword_261243000, v41, v42, "XPC service disconnected, let's try one more time", v43, 2u);
          v45 = v44;
          a3 = v55;
          MEMORY[0x266701350](v45, -1, -1);
        }

        (*(v40 + 8))(v15, v39);
      }

      v46 = *(a2 + 48);
      *(a2 + 48) = 0;

      if (v56)
      {
        sub_2612B45EC();
        swift_allocError();
        *v47 = 26;
        swift_willThrow();
      }

      else
      {

        sub_2612B0C48(1, a2, a3, a4);
      }
    }
  }

  swift_bridgeObjectRelease_n();
}

id sub_2612B126C@<X0>(SEL *a1@<X0>, void *a2@<X8>)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [objc_opt_self() shared];
  v9[0] = 0;
  v5 = [v4 *a1];

  v6 = v9[0];
  if (v5)
  {
    *a2 = v5;
    return v6;
  }

  else
  {
    v8 = v9[0];
    sub_26139EE7C();

    return swift_willThrow();
  }
}

uint64_t sub_2612B1354()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2612B13AC()
{
  v0 = swift_allocObject();
  sub_2612B13E4();
  return v0;
}

uint64_t sub_2612B13E4()
{
  v1 = sub_2613A1DDC();
  MEMORY[0x28223BE20](v1);
  v2 = sub_2613A175C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_2613A1E0C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[0] = sub_261259BE0(0, &qword_281451968, 0x277D85C78);
  (*(v4 + 104))(v6, *MEMORY[0x277D85268], v3);
  sub_2613A173C();
  v8[1] = MEMORY[0x277D84F90];
  sub_2612B4550(&qword_281451970, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F460, qword_2613A4D60);
  sub_26127DF9C(qword_281451988, &qword_27FE9F460, qword_2613A4D60);
  sub_2613A203C();
  *(v0 + 16) = sub_2613A1E2C();
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  return v0;
}

uint64_t sub_2612B1654(uint64_t a1)
{
  v2 = sub_2612B4550(&qword_27FE9FA78, type metadata accessor for SPRXPCError, &unk_2613A7DC8);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_2612B16C0(uint64_t a1)
{
  v2 = sub_2612B4550(&qword_27FE9FA78, type metadata accessor for SPRXPCError, &unk_2613A7DC8);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_2612B172C(void *a1, uint64_t a2)
{
  v4 = sub_2612B4550(&qword_27FE9FA78, type metadata accessor for SPRXPCError, &unk_2613A7DC8);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_2612B17BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2612B4550(&qword_27FE9FA78, type metadata accessor for SPRXPCError, &unk_2613A7DC8);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_2612B1838(uint64_t a1)
{
  v2 = sub_2612B4550(&qword_27FE9FA38, type metadata accessor for PINControllerError, &unk_2613A7C24);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_2612B18A4(uint64_t a1)
{
  v2 = sub_2612B4550(&qword_27FE9FA38, type metadata accessor for PINControllerError, &unk_2613A7C24);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_2612B1910(void *a1, uint64_t a2)
{
  v4 = sub_2612B4550(&qword_27FE9FA38, type metadata accessor for PINControllerError, &unk_2613A7C24);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_2612B19A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2612B4550(&qword_27FE9FA38, type metadata accessor for PINControllerError, &unk_2613A7C24);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_2612B1A1C(uint64_t a1)
{
  v2 = sub_2612B4550(&qword_27FE9FA80, type metadata accessor for SPRXPCError, &unk_2613A9D70);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2612B1A88(uint64_t a1)
{
  v2 = sub_2612B4550(&qword_27FE9FA80, type metadata accessor for SPRXPCError, &unk_2613A9D70);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2612B1AF4(uint64_t a1)
{
  v2 = sub_2612B4550(&qword_27FE9FA78, type metadata accessor for SPRXPCError, &unk_2613A7DC8);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_2612B1B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2612B4550(&qword_27FE9FA78, type metadata accessor for SPRXPCError, &unk_2613A7DC8);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_2612B1BE4(uint64_t a1)
{
  v2 = sub_2612B4550(&qword_27FE9FA40, type metadata accessor for PINControllerError, &unk_2613A7D78);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2612B1C50(uint64_t a1)
{
  v2 = sub_2612B4550(&qword_27FE9FA40, type metadata accessor for PINControllerError, &unk_2613A7D78);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2612B1CBC(uint64_t a1)
{
  v2 = sub_2612B4550(&qword_27FE9FA38, type metadata accessor for PINControllerError, &unk_2613A7C24);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_2612B1D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2612B4550(&qword_27FE9FA38, type metadata accessor for PINControllerError, &unk_2613A7C24);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

void *sub_2612B1DAC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F9D8, "Vs");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F9E0, "xs");
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2612B1EE0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v57 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v48 - v15;
  v17 = *(a2 + 32);
  if (v17)
  {
  }

  else
  {
    v56 = a3;
    type metadata accessor for SPRUtils();
    sub_261259BE0(0, &qword_27FE9FA10, 0x277D64000);

    v18 = v6;
    sub_2612C61EC(sub_2612B0030);
    if (v6)
    {
      v55 = a5;
      v6 = 0;
      v19 = sub_26129B780();
      sub_26124AA44(v19, v14);
      v20 = sub_2613A124C();
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(v14, 1, v20) == 1)
      {

        sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v54 = v20;
        v23 = v18;
        v24 = sub_2613A122C();
        v25 = sub_2613A1D8C();

        v53 = v25;
        v26 = v25;
        v27 = v24;
        if (os_log_type_enabled(v24, v26))
        {
          v28 = swift_slowAlloc();
          v51 = v28;
          v52 = swift_slowAlloc();
          v58 = v18;
          v59 = v52;
          *v28 = 136315138;
          v29 = v18;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
          v30 = sub_2613A195C();
          v50 = v27;
          v49 = sub_26124C11C(v30, v31, &v59);

          v32 = v51;
          *(v51 + 1) = v49;
          v33 = v32;
          _os_log_impl(&dword_261243000, v27, v53, "Could not make Configurator module! Error: [ %s ]", v32, 0xCu);
          v34 = v52;
          __swift_destroy_boxed_opaque_existential_0Tm(v52);
          MEMORY[0x266701350](v34, -1, -1);
          MEMORY[0x266701350](v33, -1, -1);
        }

        else
        {
        }

        (*(v21 + 8))(v14, v54);
      }

      a5 = v55;
    }

    else
    {
      v22 = *(a2 + 32);
      *(a2 + 32) = v59;

      v6 = 0;
    }

    a3 = v56;
    v17 = *(a2 + 32);
    if (!v17)
    {
      sub_2612B4668();
      swift_allocError();
      *v41 = 2;
      swift_willThrow();

      return;
    }
  }

  v35 = v17;
  sub_2612A8A58(v35, a5, &v60);
  if (!v6)
  {
    goto LABEL_24;
  }

  _s3__C4CodeOMa_1(0);
  v59 = 14001;
  v36 = v6;
  sub_2612B4550(&qword_27FE9F9C8, _s3__C4CodeOMa_1, &unk_2613A9CA0);
  v37 = sub_26139EDAC();

  if ((v37 & 1) == 0)
  {
    goto LABEL_24;
  }

  v55 = a5;

  v38 = sub_26129B780();
  sub_26124AA44(v38, v16);
  v39 = sub_2613A124C();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v16, 1, v39) == 1)
  {
    sub_26124C718(v16, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v56 = a3;
    v42 = sub_2613A122C();
    v43 = sub_2613A1D8C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_261243000, v42, v43, "XPC service disconnected, let's try one more time", v44, 2u);
      MEMORY[0x266701350](v44, -1, -1);
    }

    (*(v40 + 8))(v16, v39);
    a3 = v56;
  }

  v45 = *(a2 + 32);
  *(a2 + 32) = 0;

  v46 = v55;
  if (v57)
  {
    sub_2612B4668();
    swift_allocError();
    *v47 = 2;
    swift_willThrow();
LABEL_24:

    return;
  }

  sub_2612B1EE0(1, a2, a3, a4, v46);

  swift_bridgeObjectRelease_n();
}

NSObject *sub_2612B24E0(int a1, uint64_t a2, int a3, uint64_t a4, Class a5, int a6, id a7, Class a8)
{
  v10 = v9;
  v105 = a6;
  v101 = a4;
  v96 = a1;
  v108[1] = *MEMORY[0x277D85DE8];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v102 = &v90 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v106 = &v90 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v90 - v24;
  if (*(a2 + 32))
  {

    v26 = *(a2 + 32);
    if (v26)
    {
      goto LABEL_3;
    }

LABEL_47:
    sub_2612B4668();
    swift_allocError();
    *v88 = 2;
    swift_willThrow();

    goto LABEL_48;
  }

  v104 = a7;
  v8 = type metadata accessor for SPRUtils();
  sub_261259BE0(0, &qword_27FE9FA10, 0x277D64000);

  sub_2612C61EC(sub_2612B0030);
  if (v9)
  {
    v92 = 0;
    v93 = a5;
    v32 = sub_26129B780();
    sub_26124AA44(v32, v19);
    v33 = sub_2613A124C();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v19, 1, v33) == 1)
    {

      sub_26124C718(v19, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v103 = a3;
      v70 = v9;
      v71 = sub_2613A122C();
      v72 = sub_2613A1D8C();

      LODWORD(v100) = v72;
      v73 = v72;
      v8 = v71;
      if (os_log_type_enabled(v71, v73))
      {
        v74 = swift_slowAlloc();
        v99 = v74;
        v98 = swift_slowAlloc();
        v107 = v9;
        v108[0] = v98;
        *v74 = 136315138;
        v75 = v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
        v76 = sub_2613A195C();
        v78 = sub_26124C11C(v76, v77, v108);
        v95 = v8;
        v97 = a8;
        v79 = v78;
        a3 = v103;

        v80 = v99;
        *(v99 + 1) = v79;
        a8 = v97;
        _os_log_impl(&dword_261243000, v8, v100, "Could not make Configurator module! Error: [ %s ]", v80, 0xCu);
        v8 = v98;
        __swift_destroy_boxed_opaque_existential_0Tm(v98);
        MEMORY[0x266701350](v8, -1, -1);
        MEMORY[0x266701350](v99, -1, -1);
      }

      else
      {

        a3 = v103;
      }

      (*(v34 + 8))(v19, v33);
    }

    v10 = v92;
    a5 = v93;
  }

  else
  {
    v62 = *(a2 + 32);
    *(a2 + 32) = v108[0];

    v10 = 0;
  }

  a7 = v104;
  v26 = *(a2 + 32);
  if (!v26)
  {
    goto LABEL_47;
  }

LABEL_3:
  v27 = v26;
  v100 = sub_26129B780();
  sub_26124AA44(v100, v25);
  v28 = sub_2613A124C();
  isa = v28[-1].isa;
  v30 = isa[6];
  v99 = isa + 6;
  v97 = isa;
  v98 = v30;
  v31 = (v30)(v25, 1, v28);
  v94 = a2;
  v104 = v27;
  if (v31 == 1)
  {
    sub_26124C718(v25, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v95 = v28;
    v35 = sub_2613A122C();
    v36 = sub_2613A1D9C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v92 = v10;
      v38 = v37;
      v39 = swift_slowAlloc();
      v93 = a5;
      v91 = v39;
      v108[0] = v39;
      *v38 = 136315138;
      if (a3)
      {
        v40 = 4604243;
      }

      else
      {
        v40 = 0x656E696C6E6FLL;
      }

      if (a3)
      {
        v41 = 0xE300000000000000;
      }

      else
      {
        v41 = 0xE600000000000000;
      }

      v42 = a3;
      v43 = a7;
      v44 = a8;
      v45 = sub_26124C11C(v40, v41, v108);

      *(v38 + 4) = v45;
      a8 = v44;
      a7 = v43;
      a3 = v42;
      _os_log_impl(&dword_261243000, v35, v36, "Requesting %s prepare", v38, 0xCu);
      v46 = v91;
      __swift_destroy_boxed_opaque_existential_0Tm(v91);
      a5 = v93;
      MEMORY[0x266701350](v46, -1, -1);
      MEMORY[0x266701350](v38, -1, -1);
    }

    v28 = v95;
    (*(v97 + 1))(v25, v95);
  }

  type metadata accessor for Mock();
  v47 = sub_26129B284(41);
  v103 = a3;
  if (v47)
  {
    v48 = sub_26129B284(41);
    v49 = v106;
    sub_26124AA44(v100, v106);
    if ((v98)(v49, 1, v28) == 1)
    {
      sub_26124C718(v49, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v51 = v28;
      v52 = sub_2613A122C();
      v53 = sub_2613A1D9C();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 134217984;
        *(v54 + 4) = v48;
        _os_log_impl(&dword_261243000, v52, v53, "mockSPRConfigError = %ld", v54, 0xCu);
        MEMORY[0x266701350](v54, -1, -1);
      }

      v28 = v51;
      (*(v97 + 1))(v49, v51);
    }

    v55 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v56 = sub_2613A189C();
    v57 = [v55 initWithDomain:v56 code:v48 userInfo:0];
  }

  else
  {
    v95 = v28;
    if (a5)
    {
      v50 = sub_2613A189C();
    }

    else
    {
      v50 = 0;
    }

    v81 = sub_2613A189C();
    v108[0] = 0;
    v82 = a7;
    v83 = v104;
    v84 = [v104 prepareAndWarnWithToken:v50 force:v105 & 1 enableStoreAndForward:v103 & 1 vtid:v81 error:v108];

    v85 = v108[0];
    if (v84)
    {
      v86 = sub_2613A17FC();
      v87 = v85;

      v8 = sub_2612E2690(v86);

      goto LABEL_48;
    }

    v56 = v108[0];
    v57 = sub_26139EE7C();
    a7 = v82;
    v28 = v95;
  }

  swift_willThrow();
  _s3__C4CodeOMa_1(0);
  v8 = v58;
  v108[0] = 14001;
  v59 = v57;
  sub_2612B4550(&qword_27FE9F9C8, _s3__C4CodeOMa_1, &unk_2613A9CA0);
  v60 = sub_26139EDAC();

  if (v60)
  {

    v61 = v102;
    sub_26124AA44(v100, v102);
    if ((v98)(v61, 1, v28) == 1)
    {
      sub_26124C718(v61, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v8 = sub_2613A122C();
      v63 = sub_2613A1D8C();
      if (os_log_type_enabled(v8, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_261243000, v8, v63, "XPC service disconnected, let's try one more time", v64, 2u);
        v65 = v64;
        v61 = v102;
        MEMORY[0x266701350](v65, -1, -1);
      }

      (*(v97 + 1))(v61, v28);
    }

    v66 = v94;
    v67 = *(v94 + 32);
    *(v94 + 32) = 0;

    v68 = v103;
    if ((v96 & 1) == 0)
    {

      v8 = sub_2612B24E0(1, v66, v68 & 1, v101, a5, v105 & 1, a7, a8);

      swift_bridgeObjectRelease_n();

      goto LABEL_48;
    }

    sub_2612B4668();
    swift_allocError();
    *v69 = 2;
    swift_willThrow();
  }

LABEL_48:

  return v8;
}

uint64_t sub_2612B2FA4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 208) = a7;
  *(v8 + 216) = a8;
  *(v8 + 345) = a5;
  *(v8 + 192) = a4;
  *(v8 + 200) = a6;
  *(v8 + 176) = a2;
  *(v8 + 184) = a3;
  *(v8 + 344) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612B3098, 0, 0);
}

uint64_t sub_2612B3098()
{
  v1 = *(v0 + 176);
  v2 = *(v1 + 32);
  if (v2 || (type metadata accessor for SPRUtils(), sub_261259BE0(0, &qword_27FE9FA10, 0x277D64000), sub_2612C61EC(sub_2612B4EBC), v3 = *(v1 + 32), *(v1 + 32) = *(v0 + 144), v3, (v2 = *(v1 + 32)) != 0))
  {
    *(v0 + 248) = v2;
    v4 = *(v0 + 240);
    v5 = v2;
    v6 = sub_26129B780();
    *(v0 + 256) = v6;
    sub_26124AA44(v6, v4);
    v7 = sub_2613A124C();
    *(v0 + 264) = v7;
    v8 = *(v7 - 8);
    *(v0 + 272) = v8;
    v9 = *(v8 + 48);
    *(v0 + 280) = v9;
    *(v0 + 288) = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v9(v4, 1, v7) == 1)
    {
      sub_26124C718(*(v0 + 240), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v10 = sub_2613A122C();
      v11 = sub_2613A1D9C();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_261243000, v10, v11, "Requesting install", v12, 2u);
        MEMORY[0x266701350](v12, -1, -1);
      }

      v13 = *(v0 + 240);

      (*(v8 + 8))(v13, v7);
    }

    v14 = *(v0 + 216);
    v15 = *(v0 + 345);
    v16 = sub_2613A189C();
    *(v0 + 296) = v16;
    v17 = sub_2613A189C();
    *(v0 + 304) = v17;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 152;
    *(v0 + 24) = sub_2612B3634;
    v18 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FA18, &qword_2613A7AD8);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2612A94EC;
    *(v0 + 104) = &block_descriptor_40;
    *(v0 + 112) = v18;
    [v5 installWithToken:v16 launchSEStorageSheet:v15 seStorageSheetBundleID:v17 seStorageSheetSceneID:0 delegate:v14 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    sub_2612B4668();
    swift_allocError();
    *v19 = 2;
    swift_willThrow();

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_2612B3634()
{
  v1 = *(*v0 + 48);
  *(*v0 + 312) = v1;
  if (v1)
  {
    v2 = sub_2612B380C;
  }

  else
  {
    v2 = sub_2612B3744;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2612B3744()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 152);

  v3 = *(v0 + 248);

  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t sub_2612B380C(uint64_t a1)
{
  v2 = *(v1 + 304);
  v3 = *(v1 + 312);
  v4 = *(v1 + 296);
  swift_willThrow();

  _s3__C4CodeOMa_1(0);
  *(v1 + 160) = 14001;
  v5 = v3;
  sub_2612B4550(&qword_27FE9F9C8, _s3__C4CodeOMa_1, &unk_2613A9CA0);
  LOBYTE(v2) = sub_26139EDAC();

  if ((v2 & 1) == 0)
  {
    v10 = *(v1 + 248);

LABEL_10:

    v22 = *(v1 + 8);

    return v22();
  }

  v6 = *(v1 + 280);
  v8 = *(v1 + 256);
  v7 = *(v1 + 264);
  v9 = *(v1 + 232);

  sub_26124AA44(v8, v9);
  if (v6(v9, 1, v7) == 1)
  {
    sub_26124C718(*(v1 + 232), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v11 = sub_2613A122C();
    v12 = sub_2613A1D8C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_261243000, v11, v12, "XPC service disconnected, let's try one more time", v13, 2u);
      MEMORY[0x266701350](v13, -1, -1);
    }

    v14 = *(v1 + 264);
    v15 = *(v1 + 272);
    v16 = *(v1 + 232);

    (*(v15 + 8))(v16, v14);
  }

  v17 = *(v1 + 176);
  v18 = *(v1 + 344);
  v19 = *(v17 + 32);
  *(v17 + 32) = 0;

  if (v18 == 1)
  {
    v20 = *(v1 + 248);
    sub_2612B4668();
    swift_allocError();
    *v21 = 2;
    swift_willThrow();

    goto LABEL_10;
  }

  v24 = swift_task_alloc();
  *(v1 + 320) = v24;
  *v24 = v1;
  v24[1] = sub_2612B3B4C;
  v25 = *(v1 + 208);
  v26 = *(v1 + 216);
  v27 = *(v1 + 345);
  v28 = *(v1 + 192);
  v29 = *(v1 + 200);
  v30 = *(v1 + 176);
  v31 = *(v1 + 184);

  return sub_2612B2FA4(1, v30, v31, v28, v27, v29, v25, v26);
}

uint64_t sub_2612B3B4C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = sub_2612B3D84;
  }

  else
  {
    *(v4 + 336) = a1;
    v5 = sub_2612B3CC8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2612B3CC8()
{
  v1 = v0[42];
  v2 = v0[31];

  v3 = v0[1];

  return v3(v1);
}

uint64_t sub_2612B3D84()
{
  v1 = *(v0 + 248);

  v2 = *(v0 + 8);

  return v2();
}

void sub_2612B3E84(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v48 - v14;
  v16 = *(a2 + 24);
  if (v16)
  {

    goto LABEL_3;
  }

  v55 = a3;
  type metadata accessor for SPRUtils();
  sub_261259BE0(0, &qword_27FE9F9F8, 0x277D64038);

  v23 = v5;
  sub_2612C61EC(sub_2612AFA4C);
  if (v5)
  {
    v56 = a1;
    v5 = 0;
    v24 = sub_26129B780();
    sub_26124AA44(v24, v13);
    v25 = sub_2613A124C();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v13, 1, v25) == 1)
    {

      sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v54 = v25;
      v35 = v23;
      v36 = sub_2613A122C();
      v37 = sub_2613A1D8C();

      v53 = v37;
      v38 = v37;
      v39 = v36;
      if (os_log_type_enabled(v36, v38))
      {
        v40 = swift_slowAlloc();
        v51 = v40;
        v52 = swift_slowAlloc();
        v57 = v23;
        v58 = v52;
        *v40 = 136315138;
        v41 = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
        v42 = sub_2613A195C();
        v50 = v39;
        v49 = sub_26124C11C(v42, v43, &v58);

        v44 = v51;
        *(v51 + 1) = v49;
        v45 = v44;
        _os_log_impl(&dword_261243000, v39, v53, "Could not make Reader module! Error: [ %s ]", v44, 0xCu);
        v46 = v52;
        __swift_destroy_boxed_opaque_existential_0Tm(v52);
        MEMORY[0x266701350](v46, -1, -1);
        MEMORY[0x266701350](v45, -1, -1);
      }

      else
      {
      }

      (*(v26 + 8))(v13, v54);
    }

    a3 = v55;
    a1 = v56;
    v16 = *(a2 + 24);
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_25:
    sub_2612B4668();
    swift_allocError();
    *v47 = 1;
    swift_willThrow();

    return;
  }

  v27 = *(a2 + 24);
  *(a2 + 24) = v58;

  v5 = 0;
  a3 = v55;
  v16 = *(a2 + 24);
  if (!v16)
  {
    goto LABEL_25;
  }

LABEL_3:
  v17 = v16;
  sub_2612AADF0(v17, a4, &v59);
  if (!v5)
  {
    goto LABEL_18;
  }

  _s3__C4CodeOMa_1(0);
  v58 = 14001;
  v18 = v5;
  sub_2612B4550(&qword_27FE9F9C8, _s3__C4CodeOMa_1, &unk_2613A9CA0);
  v19 = sub_26139EDAC();

  if ((v19 & 1) == 0)
  {
    goto LABEL_18;
  }

  v56 = a1;

  v20 = sub_26129B780();
  sub_26124AA44(v20, v15);
  v21 = sub_2613A124C();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v15, 1, v21) == 1)
  {
    sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v28 = sub_2613A122C();
    v29 = sub_2613A1D8C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v55 = a3;
      v31 = v30;
      *v30 = 0;
      _os_log_impl(&dword_261243000, v28, v29, "XPC service disconnected, let's try one more time", v30, 2u);
      v32 = v31;
      a3 = v55;
      MEMORY[0x266701350](v32, -1, -1);
    }

    (*(v22 + 8))(v15, v21);
  }

  v33 = *(a2 + 24);
  *(a2 + 24) = 0;

  if (v56)
  {
    sub_2612B4668();
    swift_allocError();
    *v34 = 1;
    swift_willThrow();
LABEL_18:

    return;
  }

  sub_2612B3E84(1, a2, a3, a4);

  swift_bridgeObjectRelease_n();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2612B4550(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2612B45EC()
{
  result = qword_27FEA0680;
  if (!qword_27FEA0680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0680);
  }

  return result;
}

unint64_t sub_2612B4668()
{
  result = qword_27FE9F9F0;
  if (!qword_27FE9F9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F9F0);
  }

  return result;
}

id sub_2612B46BC(void *a1)
{
  v3 = sub_2612B5D04(**(v1 + 16));
  v4 = sub_2613A0C9C();
  v5 = sub_2613A0C3C();
  v6 = sub_2613A17EC();
  v9 = 0;
  LODWORD(a1) = [a1 signalWithEvent:v3 component:v4 origin:v5 details:v6 error:&v9];

  if (a1)
  {
    return v9;
  }

  v8 = v9;
  sub_26139EE7C();

  return swift_willThrow();
}

uint64_t objectdestroy_8Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

id sub_2612B484C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v6 = 0;
  if ([v2 validateWithReadParameters:v3 error:&v6])
  {
    return v6;
  }

  v5 = v6;
  sub_26139EE7C();

  return swift_willThrow();
}

void sub_2612B48CC(id a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }
}

unint64_t sub_2612B48D8()
{
  result = qword_27FE9FA08;
  if (!qword_27FE9FA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9FA08);
  }

  return result;
}

double sub_2612B4F1C()
{
  type metadata accessor for TaskManager();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  qword_27FEAEDF8 = v0;
  return result;
}

double sub_2612B4F54()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  return result;
}

uint64_t *sub_2612B4F84()
{
  if (qword_27FEA6EC0 != -1)
  {
    swift_once();
  }

  return &qword_27FEAEDF8;
}

uint64_t sub_2612B502C(uint64_t a1)
{
  swift_beginAccess();
  sub_2612B59B0(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t sub_2612B507C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22[-1] - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22[-1] - v8;
  (*(*v1 + 88))(v22, v7);
  v10 = v22[3];
  sub_26124C718(v22, &qword_27FE9FAC0, &qword_2613A7F30);
  if (v10)
  {
    v11 = sub_26129B7C4();
    sub_26125A870(v11, v9, &qword_27FE9F560, &qword_2613A3CB0);
    v12 = sub_2613A124C();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v9, 1, v12) == 1)
    {
      sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v17 = sub_2613A122C();
      v18 = sub_2613A1D8C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_261243000, v17, v18, "TaskManager is busy", v19, 2u);
        MEMORY[0x266701350](v19, -1, -1);
      }

      (*(v13 + 8))(v9, v12);
    }

    sub_2612B4668();
    swift_allocError();
    *v20 = 0;
    return swift_willThrow();
  }

  else
  {
    sub_2612B5A20(a1, v22);
    (*(*v1 + 96))(v22);
    v14 = sub_2613A1C1C();
    (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v1;

    sub_261266800(0, 0, v5, &unk_2613A7F40, v15);
  }
}

uint64_t sub_2612B53D0()
{
  v10 = v0;
  (*(**(v0 + 96) + 88))();
  if (*(v0 + 40))
  {
    sub_2612B5A20(v0 + 16, v0 + 56);
    sub_26124C718(v0 + 16, &qword_27FE9FAC0, &qword_2613A7F30);
    v1 = *(v0 + 80);
    v2 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v1);
    v7 = (*(v2 + 8) + **(v2 + 8));
    v3 = swift_task_alloc();
    *(v0 + 104) = v3;
    *v3 = v0;
    v3[1] = sub_2612B55D0;

    return v7(v1, v2);
  }

  else
  {
    sub_26124C718(v0 + 16, &qword_27FE9FAC0, &qword_2613A7F30);
    v5 = *(v0 + 96);
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    (*(*v5 + 96))(v8);
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_2612B55D0()
{

  return MEMORY[0x2822009F8](sub_2612B56CC, 0, 0);
}

uint64_t sub_2612B56CC()
{
  v6 = v0;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v1 = v0[12];
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  (*(*v1 + 96))(v4);
  v2 = v0[1];

  return v2();
}

BOOL sub_2612B5764()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v14[-1] - v3;
  (*(*v0 + 88))(v14, v2);
  v5 = v14[3];
  sub_26124C718(v14, &qword_27FE9FAC0, &qword_2613A7F30);
  v6 = sub_26129B7C4();
  sub_26125A870(v6, v4, &qword_27FE9F560, &qword_2613A3CB0);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v4, 1, v7) == 1)
  {
    sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v9 = sub_2613A122C();
    v10 = sub_2613A1D9C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67240192;
      *(v11 + 4) = v5 != 0;
      _os_log_impl(&dword_261243000, v9, v10, "checking TaskManager busy: %{BOOL,public}d", v11, 8u);
      MEMORY[0x266701350](v11, -1, -1);
    }

    (*(v8 + 8))(v4, v7);
  }

  return v5 != 0;
}

uint64_t sub_2612B5968()
{
  sub_26124C718(v0 + 16, &qword_27FE9FAC0, &qword_2613A7F30);

  return swift_deallocClassInstance();
}

uint64_t sub_2612B59B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FAC0, &qword_2613A7F30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2612B5A20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2612B5A84()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261262AA4;

  return sub_2612B53B0(v3, v4, v5, v2);
}

unint64_t sub_2612B5B1C()
{
  result = qword_27FE9FAC8;
  if (!qword_27FE9FAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9FAC8);
  }

  return result;
}

uint64_t type metadata accessor for ReadErrorEventData(uint64_t a1)
{
  result = qword_27FEA7E50;
  if (!qword_27FEA7E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2612B5BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v7 = a4;
  v10 = a4;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = sub_2612BC780(a3, a4, a5);
  *(a6 + 24) = v11;
  *(a6 + 32) = sub_2612CABB0(a3, v7);
  *(a6 + 40) = v12;
  *(a6 + 48) = v10 < 0x40;
  v13 = a6 + *(type metadata accessor for ReadErrorEventData(0) + 36);

  return sub_2612BCC94(a5, v13);
}

uint64_t sub_2612B5C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = sub_26139FACC();
  *(a5 + 24) = v8;
  *(a5 + 32) = sub_26139FACC();
  *(a5 + 40) = v9;
  *(a5 + 48) = a3 == 10;
  v10 = a5 + *(type metadata accessor for ReadErrorEventData(0) + 36);

  return sub_2612BCC94(a4, v10);
}

uint64_t sub_2612B5D10(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v5 = 0x4972656E74726170;
    if (a1 != 2)
    {
      v5 = 0x496E6F6973736573;
    }

    v6 = 0xD000000000000011;
    v7 = 0x80000002613B7F90;
    if (a1)
    {
      v6 = 0x746E61686372656DLL;
      v7 = 0xEA00000000006449;
    }

    if (a1 <= 1u)
    {
      v3 = v6;
    }

    else
    {
      v3 = v5;
    }

    if (v2 <= 1)
    {
      v4 = v7;
    }

    else
    {
      v4 = 0xE900000000000064;
    }
  }

  else if (a1 <= 5u)
  {
    if (a1 == 4)
    {
      v3 = 0x746361736E617274;
      v4 = 0xED000064496E6F69;
    }

    else
    {
      v3 = 0xD000000000000011;
      v4 = 0x80000002613B7EB0;
    }
  }

  else if (a1 == 6)
  {
    v3 = 0x5474736575716572;
    v4 = 0xEB00000000657079;
  }

  else if (a1 == 7)
  {
    v3 = 0x646F4D7972746E65;
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0xE600000000000000;
    v3 = 0x6E6F73616572;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v10 = 0x4972656E74726170;
      }

      else
      {
        v10 = 0x496E6F6973736573;
      }

      v8 = 0xE900000000000064;
      if (v3 != v10)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (a2)
      {
        v9 = 0x746E61686372656DLL;
      }

      else
      {
        v9 = 0xD000000000000011;
      }

      if (a2)
      {
        v8 = 0xEA00000000006449;
      }

      else
      {
        v8 = 0x80000002613B7F90;
      }

      if (v3 != v9)
      {
        goto LABEL_51;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v8 = 0xED000064496E6F69;
      if (v3 != 0x746361736E617274)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v8 = 0x80000002613B7EB0;
      if (v3 != 0xD000000000000011)
      {
LABEL_51:
        v11 = sub_2613A241C();
        goto LABEL_52;
      }
    }
  }

  else if (a2 == 6)
  {
    v8 = 0xEB00000000657079;
    if (v3 != 0x5474736575716572)
    {
      goto LABEL_51;
    }
  }

  else if (a2 == 7)
  {
    v8 = 0xE900000000000065;
    if (v3 != 0x646F4D7972746E65)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v8 = 0xE600000000000000;
    if (v3 != 0x6E6F73616572)
    {
      goto LABEL_51;
    }
  }

  if (v4 != v8)
  {
    goto LABEL_51;
  }

  v11 = 1;
LABEL_52:

  return v11 & 1;
}

uint64_t sub_2612B600C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000064656B63;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6D6F4349556E6970;
    }

    else
    {
      v4 = 0x61745349556E6970;
    }

    if (v3)
    {
      v5 = 0xEE00646574656C70;
    }

    else
    {
      v5 = 0xEC00000064657472;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x6E614349556E6970;
    v5 = 0xED000064656C6563;
  }

  else if (a1 == 3)
  {
    v4 = 0x69614649556E6970;
    v5 = 0xEB0000000064656CLL;
  }

  else
  {
    v4 = 0x6F6C4249556E6970;
    v5 = 0xEC00000064656B63;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6D6F4349556E6970;
    }

    else
    {
      v9 = 0x61745349556E6970;
    }

    if (a2)
    {
      v8 = 0xEE00646574656C70;
    }

    else
    {
      v8 = 0xEC00000064657472;
    }

    if (v4 != v9)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v6 = 0x69614649556E6970;
    if (a2 == 3)
    {
      v2 = 0xEB0000000064656CLL;
    }

    else
    {
      v6 = 0x6F6C4249556E6970;
    }

    if (a2 == 2)
    {
      v7 = 0x6E614349556E6970;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xED000064656C6563;
    }

    else
    {
      v8 = v2;
    }

    if (v4 != v7)
    {
      goto LABEL_34;
    }
  }

  if (v5 != v8)
  {
LABEL_34:
    v10 = sub_2613A241C();
    goto LABEL_35;
  }

  v10 = 1;
LABEL_35:

  return v10 & 1;
}

uint64_t sub_2612B61E0()
{
  sub_2613A256C();
  sub_2613A259C();
  return sub_2613A25CC();
}

uint64_t sub_2612B6258(uint64_t a1, unsigned __int8 a2)
{
  sub_2613A19DC();
}

uint64_t sub_2612B63D4(uint64_t a1)
{
  sub_2613A256C();
  sub_2613A259C();
  return sub_2613A25CC();
}

uint64_t sub_2612B6418@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2612BCD04(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2612B64D4(uint64_t a1)
{
  v2 = sub_2612BCD1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612B6510(uint64_t a1)
{
  v2 = sub_2612BCD1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612B6590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000002613B7F90 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_2613A241C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2612B6624(uint64_t a1)
{
  v2 = sub_2612BCD70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612B6660(uint64_t a1)
{
  v2 = sub_2612BCD70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612B66E0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), uint64_t a7)
{
  v15 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  v14 = *v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15();
  sub_2613A262C();
  sub_2613A238C();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_2612B6828(uint64_t a1)
{
  v2 = sub_2612BCDC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612B6864(uint64_t a1)
{
  v2 = sub_2612BCDC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612B68E4(uint64_t a1)
{
  v2 = sub_2612BCE18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612B6920(uint64_t a1)
{
  v2 = sub_2612BCE18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612B695C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_2612B69B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v68 = a7;
  v65 = a2;
  v66 = a6;
  v63 = a5;
  v64 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v51 - v12;
  v14 = sub_26139F13C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a3[7];
  v61 = a3[6];
  v19 = *(*a3 + 192);
  v62 = v18;

  v21 = v19(v20);
  v59 = v22;
  v60 = v21;
  v23 = sub_26139FD0C();
  v24 = [v23 description];
  v25 = sub_2613A18CC();
  v57 = v26;
  v58 = v25;

  v67 = a4;
  sub_26139FC8C();
  v27 = sub_26139FF4C();
  v55 = v28;
  v56 = v27;
  if (!v68)
  {
    v30 = a3[15];
    v29 = a3[16];
    goto LABEL_5;
  }

  v29 = a3[18];
  if (v29)
  {
    v30 = a3[17];
LABEL_5:
    v54 = v30;
    v53 = v29;
    goto LABEL_7;
  }

  v31 = sub_2613A0CFC();
  v53 = v32;
  v54 = v31;
LABEL_7:
  v33 = v63;

  sub_26139FCEC();
  v63 = sub_26139F0FC();
  v52 = v34;
  v35 = *(v15 + 8);
  v35(v17, v14);
  sub_26125A870(v33, v13, &qword_27FE9F280, &unk_2613A42B0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_26124C718(v13, &qword_27FE9F280, &unk_2613A42B0);
    v36 = sub_2613A0CFC();
    v38 = v37;
  }

  else
  {
    v36 = sub_26139F0DC();
    v38 = v39;
    v35(v13, v14);
  }

  v40 = v68;
  v41 = v66;
  if (!v68)
  {
    v41 = sub_2613A0CFC();
    v40 = v42;
  }

  result = sub_26124C718(v33, &qword_27FE9F280, &unk_2613A42B0);
  v44 = v65;
  *a8 = v64;
  a8[1] = v44;
  v45 = v62;
  a8[2] = v61;
  a8[3] = v45;
  v46 = v59;
  a8[4] = v60;
  a8[5] = v46;
  v47 = v57;
  a8[6] = v58;
  a8[7] = v47;
  v48 = v55;
  a8[8] = v56;
  a8[9] = v48;
  v49 = v53;
  a8[10] = v54;
  a8[11] = v49;
  v50 = v52;
  a8[12] = v63;
  a8[13] = v50;
  a8[14] = v36;
  a8[15] = v38;
  a8[16] = v41;
  a8[17] = v40;
  return result;
}

unint64_t sub_2612B6CDC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x746E61686372656DLL;
    v6 = 0x496E6F6973736573;
    if (a1 != 2)
    {
      v6 = 0x746E756F6D61;
    }

    if (!a1)
    {
      v5 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x746361736E617274;
    v2 = 0x644964616572;
    if (a1 != 7)
    {
      v2 = 0x6973736553666173;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x746361736E617274;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2612B6E28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2612BD25C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2612B6E5C(uint64_t a1)
{
  v2 = sub_2612BCE6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612B6E98(uint64_t a1)
{
  v2 = sub_2612BCE6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612B6ED4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FAF0, &qword_2613A8050);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612BCE6C();
  sub_2613A262C();
  v8[15] = 0;
  sub_2613A238C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_2613A238C();
  v8[13] = 2;
  sub_2613A238C();
  v8[12] = 3;
  sub_2613A238C();
  v8[11] = 4;
  sub_2613A238C();
  v8[10] = 5;
  sub_2613A238C();
  v8[9] = 6;
  sub_2613A238C();
  v8[8] = 7;
  sub_2613A238C();
  v8[7] = 8;
  sub_2613A238C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2612B714C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v71 = a7;
  v72 = a1;
  LODWORD(v57) = a6;
  v74 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v55 - v13;
  v64 = sub_26139F13C();
  v15 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a3[7];
  v69 = a3[6];
  v19 = *(*a3 + 192);
  v70 = v18;

  v21 = v19(v20);
  v67 = v22;
  v68 = v21;
  v23 = a3[14];
  v65 = a3[13];
  v66 = v23;

  v24 = sub_26139FD0C();
  v25 = [v24 description];
  v26 = sub_2613A18CC();
  v62 = v27;
  v63 = v26;

  v28 = *(type metadata accessor for TransactionData(0) + 20);
  v73 = a5;
  v29 = (a5 + v28);
  v30 = v29[1];
  v60 = *v29;
  v61 = v30;
  v75 = a4;

  sub_26139FC8C();
  v31 = sub_26139FF4C();
  v58 = v32;
  v59 = v31;
  if ((v57 & 1) == 0)
  {
    v34 = a3[15];
    v33 = a3[16];
    goto LABEL_5;
  }

  v33 = a3[18];
  if (v33)
  {
    v34 = a3[17];
LABEL_5:
    v57 = v34;
    v56 = v33;
    goto LABEL_6;
  }

  v53 = sub_2613A0CFC();
  v56 = v54;
  v57 = v53;
LABEL_6:
  v35 = v71;
  v36 = v64;

  sub_26139FCEC();
  v71 = sub_26139F0FC();
  v64 = v37;
  v38 = *(v15 + 8);
  v38(v17, v36);
  sub_26125A870(v35, v14, &qword_27FE9F280, &unk_2613A42B0);
  if ((*(v15 + 48))(v14, 1, v36) == 1)
  {
    sub_26124C718(v14, &qword_27FE9F280, &unk_2613A42B0);
    v39 = sub_2613A0CFC();
    v41 = v40;
  }

  else
  {
    v39 = sub_26139F0DC();
    v41 = v42;
    v38(v14, v36);
  }

  sub_26124C718(v35, &qword_27FE9F280, &unk_2613A42B0);
  result = sub_26125D0E4(v73);
  v44 = v74;
  *a8 = v72;
  a8[1] = v44;
  v45 = v70;
  a8[2] = v69;
  a8[3] = v45;
  v46 = v67;
  a8[4] = v68;
  a8[5] = v46;
  v47 = v66;
  a8[6] = v65;
  a8[7] = v47;
  v48 = v62;
  a8[8] = v63;
  a8[9] = v48;
  v49 = v61;
  a8[10] = v60;
  a8[11] = v49;
  v50 = v58;
  a8[12] = v59;
  a8[13] = v50;
  v51 = v56;
  a8[14] = v57;
  a8[15] = v51;
  v52 = v64;
  a8[16] = v71;
  a8[17] = v52;
  a8[18] = v39;
  a8[19] = v41;
  return result;
}

unint64_t sub_2612B74AC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000011;
    v6 = 0x746361736E617274;
    if (a1 != 8)
    {
      v6 = 0x644964616572;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x656D65686373;
    if (a1 != 5)
    {
      v7 = 0x746361736E617274;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x746E61686372656DLL;
    v2 = 0x496E6F6973736573;
    v3 = 0x4972656E74726170;
    if (a1 != 3)
    {
      v3 = 0x746E756F6D61;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2612B7610@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2612BD564(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2612B7638(uint64_t a1)
{
  v2 = sub_2612BCEC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612B7674(uint64_t a1)
{
  v2 = sub_2612BCEC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612B76B0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FAF8, &qword_2613A8058);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612BCEC0();
  sub_2613A262C();
  v8[15] = 0;
  sub_2613A238C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_2613A238C();
  v8[13] = 2;
  sub_2613A238C();
  v8[12] = 3;
  sub_2613A238C();
  v8[11] = 4;
  sub_2613A238C();
  v8[10] = 5;
  sub_2613A238C();
  v8[9] = 6;
  sub_2613A238C();
  v8[8] = 7;
  sub_2613A238C();
  v8[7] = 8;
  sub_2613A238C();
  v8[6] = 9;
  sub_2613A238C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2612B7948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v75 = a8;
  v76 = a2;
  LODWORD(v61) = a7;
  v77 = a5;
  v78 = a6;
  v74 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v57 - v15;
  v67 = sub_26139F13C();
  v17 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3[7];
  v72 = a3[6];
  v21 = *(*a3 + 192);
  v73 = v20;

  v23 = v21(v22);
  v70 = v24;
  v71 = v23;
  v25 = a3[14];
  v68 = a3[13];
  v69 = v25;

  v26 = sub_26139FD0C();
  v27 = [v26 description];
  v28 = sub_2613A18CC();
  v65 = v29;
  v66 = v28;

  v79 = a11;
  if (a11)
  {
    v64 = a10;
  }

  else
  {
    v64 = sub_2613A0CFC();
    v79 = v30;
  }

  sub_26139FC8C();
  v31 = sub_26139FF4C();
  v62 = v32;
  v63 = v31;
  v33 = v75;
  if ((v61 & 1) == 0)
  {
    v35 = a3[15];
    v34 = a3[16];
    goto LABEL_8;
  }

  v34 = a3[18];
  if (v34)
  {
    v35 = a3[17];
LABEL_8:
    v61 = v35;
    v60 = v34;
    goto LABEL_9;
  }

  v55 = sub_2613A0CFC();
  v60 = v56;
  v61 = v55;
LABEL_9:

  sub_26139FCEC();
  v59 = sub_26139F0FC();
  v58 = v36;
  v37 = *(v17 + 8);
  v38 = v67;
  v37(v19, v67);
  sub_26125A870(v33, v16, &qword_27FE9F280, &unk_2613A42B0);
  if ((*(v17 + 48))(v16, 1, v38) == 1)
  {
    sub_26124C718(v16, &qword_27FE9F280, &unk_2613A42B0);
    v39 = sub_2613A0CFC();
    v41 = v40;
  }

  else
  {
    v42 = v38;
    v39 = sub_26139F0DC();
    v41 = v43;
    v37(v16, v42);
  }

  result = sub_26124C718(v33, &qword_27FE9F280, &unk_2613A42B0);
  v45 = v76;
  *a9 = v74;
  a9[1] = v45;
  v46 = v73;
  a9[2] = v72;
  a9[3] = v46;
  v47 = v70;
  a9[4] = v71;
  a9[5] = v47;
  v48 = v69;
  a9[6] = v68;
  a9[7] = v48;
  v49 = v65;
  a9[8] = v66;
  a9[9] = v49;
  v50 = v79;
  a9[10] = v64;
  a9[11] = v50;
  v51 = v62;
  a9[12] = v63;
  a9[13] = v51;
  v52 = v58;
  a9[14] = v59;
  a9[15] = v52;
  v53 = v60;
  a9[16] = v61;
  a9[17] = v53;
  v54 = v78;
  a9[18] = v77;
  a9[19] = v54;
  a9[20] = v39;
  a9[21] = v41;
  return result;
}

unint64_t sub_2612B7CAC(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x746E61686372656DLL;
    v6 = 0x496E6F6973736573;
    v7 = 0x4972656E74726170;
    if (a1 != 3)
    {
      v7 = 0x746E756F6D61;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (!a1)
    {
      v5 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000011;
    v2 = 0x6E6F73616572;
    if (a1 != 9)
    {
      v2 = 0x644964616572;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x656D65686373;
    if (a1 != 5)
    {
      v3 = 0x746361736E617274;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2612B7E2C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2612BD8C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2612B7E60(uint64_t a1)
{
  v2 = sub_2612BCF14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612B7E9C(uint64_t a1)
{
  v2 = sub_2612BCF14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612B7ED8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB00, &qword_2613A8060);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612BCF14();
  sub_2613A262C();
  v8[15] = 0;
  sub_2613A238C();
  if (!v1)
  {
    v8[14] = 1;
    sub_2613A238C();
    v8[13] = 2;
    sub_2613A238C();
    v8[12] = 3;
    sub_2613A238C();
    v8[11] = 4;
    sub_2613A238C();
    v8[10] = 5;
    sub_2613A238C();
    v8[9] = 6;
    sub_2613A238C();
    v8[8] = 7;
    sub_2613A238C();
    v8[7] = 8;
    sub_2613A238C();
    v8[6] = 9;
    sub_2613A238C();
    v8[5] = 10;
    sub_2613A238C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2612B8198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int a5@<W4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v64 = a2;
  v65 = a6;
  LODWORD(v52) = a5;
  v63 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v48 - v10;
  v12 = sub_26139F13C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a3[7];
  v61 = a3[6];
  v17 = *(*a3 + 192);
  v62 = v16;

  v19 = v17(v18);
  v59 = v20;
  v60 = v19;
  v21 = a3[14];
  v57 = a3[13];
  v58 = v21;

  v22 = sub_26139FD0C();
  v23 = [v22 description];
  v24 = sub_2613A18CC();
  v55 = v25;
  v56 = v24;

  sub_26139FC8C();
  v26 = sub_26139FF4C();
  v53 = v27;
  v54 = v26;
  if ((v52 & 1) == 0)
  {
    v29 = a3[15];
    v28 = a3[16];
    goto LABEL_5;
  }

  v28 = a3[18];
  if (v28)
  {
    v29 = a3[17];
LABEL_5:
    v52 = v29;
    v51 = v28;
    goto LABEL_6;
  }

  v46 = sub_2613A0CFC();
  v51 = v47;
  v52 = v46;
LABEL_6:

  sub_26139FCEC();
  v30 = sub_26139F0FC();
  v49 = v31;
  v50 = v30;
  v32 = *(v13 + 8);
  v32(v15, v12);
  sub_26125A870(v65, v11, &qword_27FE9F280, &unk_2613A42B0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_26124C718(v11, &qword_27FE9F280, &unk_2613A42B0);
    v33 = sub_2613A0CFC();
    v35 = v34;
  }

  else
  {
    v33 = sub_26139F0DC();
    v35 = v36;
    v32(v11, v12);
  }

  result = sub_26124C718(v65, &qword_27FE9F280, &unk_2613A42B0);
  v38 = v64;
  *a7 = v63;
  a7[1] = v38;
  v39 = v62;
  a7[2] = v61;
  a7[3] = v39;
  v40 = v59;
  a7[4] = v60;
  a7[5] = v40;
  v41 = v58;
  a7[6] = v57;
  a7[7] = v41;
  v42 = v55;
  a7[8] = v56;
  a7[9] = v42;
  v43 = v53;
  a7[10] = v54;
  a7[11] = v43;
  v44 = v51;
  a7[12] = v52;
  a7[13] = v44;
  v45 = v49;
  a7[14] = v50;
  a7[15] = v45;
  a7[16] = v33;
  a7[17] = v35;
  return result;
}

unint64_t sub_2612B84A8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x746E61686372656DLL;
    v6 = 0x496E6F6973736573;
    if (a1 != 2)
    {
      v6 = 0x4972656E74726170;
    }

    if (!a1)
    {
      v5 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000011;
    v2 = 0x746361736E617274;
    if (a1 != 7)
    {
      v2 = 0x644964616572;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x746E756F6D61;
    if (a1 != 4)
    {
      v3 = 0x746361736E617274;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2612B85F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2612BDC74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2612B8618(uint64_t a1)
{
  v2 = sub_2612BCF68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612B8654(uint64_t a1)
{
  v2 = sub_2612BCF68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612B8690(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB08, &qword_2613A8068);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612BCF68();
  sub_2613A262C();
  v8[15] = 0;
  sub_2613A238C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_2613A238C();
  v8[13] = 2;
  sub_2613A238C();
  v8[12] = 3;
  sub_2613A238C();
  v8[11] = 4;
  sub_2613A238C();
  v8[10] = 5;
  sub_2613A238C();
  v8[9] = 6;
  sub_2613A238C();
  v8[8] = 7;
  sub_2613A238C();
  v8[7] = 8;
  sub_2613A234C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2612B8908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v50 = a1;
  v51 = a2;
  v49 = sub_26139F13C();
  v10 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a3[7];
  v47 = a3[6];
  v14 = *(*a3 + 192);
  v48 = v13;

  v16 = v14(v15);
  v45 = v17;
  v46 = v16;
  v18 = a3[14];
  v44 = a3[13];

  v19 = sub_26139FD0C();
  v20 = [v19 description];
  v21 = sub_2613A18CC();
  v42 = v22;
  v43 = v21;

  sub_26139FC8C();
  v23 = sub_26139FF4C();
  v40 = v24;
  v41 = v23;
  if (a5)
  {
    v25 = a3[18];
    if (!v25)
    {
      v26 = sub_2613A0CFC();
      v27 = v39;
      goto LABEL_6;
    }

    v26 = a3[17];
  }

  else
  {
    v26 = a3[15];
    v25 = a3[16];
  }

  v27 = v25;
LABEL_6:

  sub_26139FCEC();
  v28 = sub_26139F0FC();
  v30 = v29;

  result = (*(v10 + 8))(v12, v49);
  v32 = v51;
  *a6 = v50;
  a6[1] = v32;
  v33 = v48;
  a6[2] = v47;
  a6[3] = v33;
  v34 = v45;
  a6[4] = v46;
  a6[5] = v34;
  v35 = v43;
  a6[6] = v44;
  a6[7] = v18;
  v37 = v41;
  v36 = v42;
  a6[8] = v35;
  a6[9] = v36;
  v38 = v40;
  a6[10] = v37;
  a6[11] = v38;
  a6[12] = v26;
  a6[13] = v27;
  a6[14] = v28;
  a6[15] = v30;
  return result;
}

unint64_t sub_2612B8B14()
{
  v1 = *v0;
  v2 = 0x746E61686372656DLL;
  v3 = 0xD000000000000011;
  if (v1 != 6)
  {
    v3 = 0x746361736E617274;
  }

  v4 = 0x746E756F6D61;
  if (v1 != 4)
  {
    v4 = 0x746361736E617274;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x496E6F6973736573;
  if (v1 != 2)
  {
    v5 = 0x4972656E74726170;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2612B8C38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2612BDF78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2612B8C6C(uint64_t a1)
{
  v2 = sub_2612BCFBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612B8CA8(uint64_t a1)
{
  v2 = sub_2612BCFBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612B8CE4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB10, &qword_2613A8070);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612BCFBC();
  sub_2613A262C();
  v8[15] = 0;
  sub_2613A238C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_2613A238C();
  v8[13] = 2;
  sub_2613A238C();
  v8[12] = 3;
  sub_2613A238C();
  v8[11] = 4;
  sub_2613A238C();
  v8[10] = 5;
  sub_2613A238C();
  v8[9] = 6;
  sub_2613A238C();
  v8[8] = 7;
  sub_2613A238C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2612B8F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2613A0F7C();

  return a1;
}

uint64_t sub_2612B8FA0()
{
  if (*v0)
  {
    return 0x5472656E74726170;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_2612B8FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000002613B7F90 == a2 || (sub_2613A241C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x5472656E74726170 && a2 == 0xEC0000006E656B6FLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2613A241C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_2612B90D4(uint64_t a1)
{
  v2 = sub_2612BD010();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612B9110(uint64_t a1)
{
  v2 = sub_2612BD010();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612B914C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB18, &qword_2613A8078);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612BD010();
  sub_2613A262C();
  v14 = 0;
  sub_2613A238C();
  if (!v5)
  {
    v13 = 1;
    sub_2613A238C();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2612B9300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a7@<X8>)
{
  v12 = sub_2613A0F7C();
  v14 = v13;

  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = v12;
  a7[5] = v14;
  return result;
}

uint64_t sub_2612B9374()
{
  v1 = 0x746E61686372656DLL;
  if (*v0 != 1)
  {
    v1 = 0x546E6F6973736573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_2612B93E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2612BE234(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2612B9408(uint64_t a1)
{
  v2 = sub_2612BD064();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612B9444(uint64_t a1)
{
  v2 = sub_2612BD064();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612B94C8()
{
  v1 = 0x746E61686372656DLL;
  if (*v0 != 1)
  {
    v1 = 0x496E6F6973736573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_2612B9530@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2612BE364(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2612B9558(uint64_t a1)
{
  v2 = sub_2612BD0B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612B9594(uint64_t a1)
{
  v2 = sub_2612BD0B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612B9614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = a3[6];
  v7 = a3[7];
  v9 = *(*a3 + 192);

  v11 = v9(v10);
  v13 = v12;

  *a4 = a1;
  a4[1] = a2;
  a4[2] = v8;
  a4[3] = v7;
  a4[4] = v11;
  a4[5] = v13;
  return result;
}

uint64_t sub_2612B96A4(uint64_t a1)
{
  v2 = sub_2612BD10C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612B96E0(uint64_t a1)
{
  v2 = sub_2612BD10C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612B9760()
{
  v1 = 0x746E61686372656DLL;
  if (*v0 != 1)
  {
    v1 = 0x646F43726F727265;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_2612B97C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2612BE498(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2612B97F0(uint64_t a1)
{
  v2 = sub_2612BD160();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612B982C(uint64_t a1)
{
  v2 = sub_2612BD160();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612B9868(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2613A262C();
  v16 = 0;
  v11 = v13[1];
  sub_2613A238C();
  if (v11)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v15 = 1;
  sub_2613A238C();
  v14 = 2;
  sub_2613A238C();
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_2612B9A54()
{
  v1 = *v0;
  v2 = 0x746E61686372656DLL;
  v3 = 0x496E6F6973736573;
  v4 = 0x746361736E617274;
  if (v1 != 3)
  {
    v4 = 0x646F43726F727265;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2612B9B08@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2612BE5CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2612B9B3C(uint64_t a1)
{
  v2 = sub_2612BD1B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612B9B78(uint64_t a1)
{
  v2 = sub_2612BD1B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612B9BB4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB40, &qword_2613A80A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612BD1B4();
  sub_2613A262C();
  v8[15] = 0;
  sub_2613A238C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_2613A238C();
  v8[13] = 2;
  sub_2613A238C();
  v8[12] = 3;
  sub_2613A238C();
  v8[11] = 4;
  sub_2613A238C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2612B9DAC()
{
  v1 = 0x746E61686372656DLL;
  v2 = 0x496E6F6973736573;
  if (*v0 != 2)
  {
    v2 = 0x646F43726F727265;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2612B9E34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2612BE7A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2612B9E5C(uint64_t a1)
{
  v2 = sub_2612BD208();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612B9E98(uint64_t a1)
{
  v2 = sub_2612BD208();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612B9ED4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB48, &qword_2613A80A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612BD208();
  sub_2613A262C();
  v8[15] = 0;
  sub_2613A238C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_2613A238C();
  v8[13] = 2;
  sub_2613A238C();
  v8[12] = 3;
  sub_2613A238C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2612BA0B8()
{
  sub_2613A256C();
  sub_2613A19DC();

  return sub_2613A25CC();
}

uint64_t sub_2612BA1C4(uint64_t a1)
{
  sub_2613A19DC();
}

uint64_t sub_2612BA2BC(uint64_t a1)
{
  sub_2613A256C();
  sub_2613A19DC();

  return sub_2613A25CC();
}

unint64_t sub_2612BA3C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2612BEE34(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2612BA3F4(uint64_t *a1@<X8>)
{
  v2 = 0xEC00000064656B63;
  v3 = *v1;
  v4 = 0xEC00000064657472;
  v5 = 0x61745349556E6970;
  v6 = 0xED000064656C6563;
  v7 = 0x6E614349556E6970;
  v8 = 0x69614649556E6970;
  if (v3 == 3)
  {
    v2 = 0xEB0000000064656CLL;
  }

  else
  {
    v8 = 0x6F6C4249556E6970;
  }

  if (v3 != 2)
  {
    v7 = v8;
    v6 = v2;
  }

  if (*v1)
  {
    v5 = 0x6D6F4349556E6970;
    v4 = 0xEE00646574656C70;
  }

  if (*v1 <= 1u)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  if (*v1 <= 1u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  *a1 = v9;
  a1[1] = v10;
}

unint64_t sub_2612BA4BC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x746E61686372656DLL;
    v6 = 0x4972656E74726170;
    if (a1 != 2)
    {
      v6 = 0x496E6F6973736573;
    }

    if (!a1)
    {
      v5 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x5474736575716572;
    v2 = 0x646F4D7972746E65;
    if (a1 != 7)
    {
      v2 = 0x6E6F73616572;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x746361736E617274;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2612BA610()
{
  v1 = *v0;
  sub_2613A256C();
  sub_2612B6258(v3, v1);
  return sub_2613A25CC();
}

uint64_t sub_2612BA660(uint64_t a1)
{
  v2 = *v1;
  sub_2613A256C();
  sub_2612B6258(v4, v2);
  return sub_2613A25CC();
}

unint64_t sub_2612BA6A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2612BEE80(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2612BA6D4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2612BA4BC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2612BA700(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x277D84F90];
  v27 = *(a1 + 16);
  sub_261265DD4(0, v1, 0);
  v2 = v28;
  v4 = a1 + 56;
  result = sub_2613A204C();
  v6 = v27;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_42;
    }

    v11 = *(*(a1 + 48) + result);
    if (v11 <= 3)
    {
      if (*(*(a1 + 48) + result) > 1u)
      {
        if (v11 == 2)
        {
          v13 = 0x4972656E74726170;
        }

        else
        {
          v13 = 0x496E6F6973736573;
        }

        v12 = 0xE900000000000064;
      }

      else
      {
        if (*(*(a1 + 48) + result))
        {
          v13 = 0x746E61686372656DLL;
        }

        else
        {
          v13 = 0xD000000000000011;
        }

        if (*(*(a1 + 48) + result))
        {
          v12 = 0xEA00000000006449;
        }

        else
        {
          v12 = 0x80000002613B7F90;
        }
      }
    }

    else if (*(*(a1 + 48) + result) <= 5u)
    {
      if (v11 == 4)
      {
        v13 = 0x746361736E617274;
        v12 = 0xED000064496E6F69;
      }

      else
      {
        v13 = 0xD000000000000011;
        v12 = 0x80000002613B7EB0;
      }
    }

    else if (v11 == 6)
    {
      v13 = 0x5474736575716572;
      v12 = 0xEB00000000657079;
    }

    else if (v11 == 7)
    {
      v12 = 0xE900000000000065;
      v13 = 0x646F4D7972746E65;
    }

    else
    {
      v12 = 0xE600000000000000;
      v13 = 0x6E6F73616572;
    }

    v14 = *(a1 + 36);
    v16 = *(v28 + 16);
    v15 = *(v28 + 24);
    if (v16 >= v15 >> 1)
    {
      v25 = *(a1 + 36);
      v26 = result;
      sub_261265DD4((v15 > 1), v16 + 1, 1);
      v6 = v27;
      v14 = v25;
      result = v26;
    }

    *(v28 + 16) = v16 + 1;
    v17 = v28 + 16 * v16;
    *(v17 + 32) = v13;
    *(v17 + 40) = v12;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_43;
    }

    v4 = a1 + 56;
    v18 = *(a1 + 56 + 8 * v9);
    if ((v18 & v10) == 0)
    {
      goto LABEL_44;
    }

    if (v14 != *(a1 + 36))
    {
      goto LABEL_45;
    }

    v19 = v18 & (-2 << (result & 0x3F));
    if (v19)
    {
      v8 = __clz(__rbit64(v19)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v9 << 6;
      v21 = v9 + 1;
      v22 = (a1 + 64 + 8 * v9);
      while (v21 < (v8 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          sub_26124A218(result, v14, 0);
          v6 = v27;
          v8 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      sub_26124A218(result, v14, 0);
      v6 = v27;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_2612BAA68(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_2613A256C();

    sub_2613A19DC();
    v16 = sub_2613A25CC();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_2613A241C() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2612BAC20(char a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = sub_2612BEECC(MEMORY[0x277D84F90]);
  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_2612BAC6C(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  if (a1 <= 3u)
  {
    v14 = 0xEA00000000006449;
    v15 = 0x746E61686372656DLL;
    v16 = 0x4972656E74726170;
    if (a1 != 2)
    {
      v16 = 0x496E6F6973736573;
    }

    if (!a1)
    {
      v15 = 0xD000000000000011;
      v14 = 0x80000002613B7F90;
    }

    if (a1 <= 1u)
    {
      v12 = v15;
    }

    else
    {
      v12 = v16;
    }

    if (a1 <= 1u)
    {
      v13 = v14;
    }

    else
    {
      v13 = 0xE900000000000064;
    }
  }

  else
  {
    v6 = 0xEB00000000657079;
    v7 = 0x5474736575716572;
    v8 = 0xE900000000000065;
    v9 = 0x646F4D7972746E65;
    if (a1 != 7)
    {
      v9 = 0x6E6F73616572;
      v8 = 0xE600000000000000;
    }

    if (a1 != 6)
    {
      v7 = v9;
      v6 = v8;
    }

    v10 = 0xED000064496E6F69;
    v11 = 0x746361736E617274;
    if (a1 != 4)
    {
      v11 = 0xD000000000000011;
      v10 = 0x80000002613B7EB0;
    }

    if (a1 <= 5u)
    {
      v12 = v11;
    }

    else
    {
      v12 = v7;
    }

    if (a1 <= 5u)
    {
      v13 = v10;
    }

    else
    {
      v13 = v6;
    }
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v3 + 24);
  *(v3 + 24) = 0x8000000000000000;
  sub_2612BC328(a2, a3, v12, v13, isUniquelyReferenced_nonNull_native);

  *(v3 + 24) = v19;
  swift_endAccess();
}

uint64_t sub_2612BAE60(void *a1)
{
  v3 = a1[11];
  v4 = a1[12];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v1 + 24);
  *(v1 + 24) = 0x8000000000000000;
  sub_2612BC328(v3, v4, 0xD000000000000011, 0x80000002613B7F90, isUniquelyReferenced_nonNull_native);
  *(v1 + 24) = v21;
  v6 = a1[6];
  v7 = a1[7];

  v8 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v1 + 24);
  *(v1 + 24) = 0x8000000000000000;
  sub_2612BC328(v6, v7, 0x746E61686372656DLL, 0xEA00000000006449, v8);
  *(v1 + 24) = v22;
  v9 = a1[13];
  v10 = a1[14];

  v11 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v1 + 24);
  *(v1 + 24) = 0x8000000000000000;
  sub_2612BC328(v9, v10, 0x4972656E74726170, 0xE900000000000064, v11);
  *(v1 + 24) = v23;
  v12 = a1[15];
  v13 = a1[16];

  v14 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v1 + 24);
  *(v1 + 24) = 0x8000000000000000;
  sub_2612BC328(v12, v13, 0xD000000000000011, 0x80000002613B7EB0, v14);
  *(v1 + 24) = v24;
  v15 = swift_endAccess();
  v16 = (*(*a1 + 192))(v15);
  v18 = v17;
  swift_beginAccess();

  v19 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v1 + 24);
  *(v1 + 24) = 0x8000000000000000;
  sub_2612BC328(v16, v18, 0x496E6F6973736573, 0xE900000000000064, v19);
  *(v1 + 24) = v25;
  swift_endAccess();
}

uint64_t sub_2612BB0C0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v37 - v4;
  v6 = *(v1 + 16);
  v7 = sub_2612BE928(*(&off_279AD4CD0 + v6));
  v8 = sub_2612BA700(v7);

  v9 = sub_2612BEFE0(v8);

  swift_beginAccess();
  v41 = v1;
  v10 = *(v1 + 24);
  v11 = *(v10 + 16);
  if (v11)
  {
    v38 = v6;
    v39 = v5;
    v40 = a1;
    v12 = sub_2612BB720(v11, 0);
    v13 = sub_2612BC628(&v42, v12 + 4, v11, v10);
    v14 = v42;

    result = sub_2612BF078(v14);
    if (v13 != v11)
    {
      __break(1u);
      return result;
    }

    v5 = v39;
    a1 = v40;
    LOBYTE(v6) = v38;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v16 = v6;
  v17 = sub_2612BEFE0(v12);

  v18 = sub_2612BAA68(v9, v17);

  if (v18)
  {
    v19 = *(v41 + 24);
    *(a1 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB50, &qword_2613ABE40);
    *(a1 + 40) = sub_2612BF080();
    *(a1 + 8) = v19;
    *a1 = v16 + 30;
  }

  else
  {
    v20 = sub_26129B7C4();
    sub_26125A870(v20, v5, &qword_27FE9F560, &qword_2613A3CB0);
    v21 = sub_2613A124C();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v5, 1, v21) == 1)
    {
      result = sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {

      v23 = sub_2613A122C();
      v24 = sub_2613A1D8C();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = v5;
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v42 = v27;
        v28 = 0xEC00000064657472;
        *v26 = 136315138;
        v29 = 0x61745349556E6970;
        v30 = 0xED000064656C6563;
        v31 = 0x6E614349556E6970;
        v32 = 0xEB0000000064656CLL;
        v33 = 0x69614649556E6970;
        if (v16 != 3)
        {
          v33 = 0x6F6C4249556E6970;
          v32 = 0xEC00000064656B63;
        }

        if (v16 != 2)
        {
          v31 = v33;
          v30 = v32;
        }

        if (v16)
        {
          v29 = 0x6D6F4349556E6970;
          v28 = 0xEE00646574656C70;
        }

        if (v16 <= 1)
        {
          v34 = v29;
        }

        else
        {
          v34 = v31;
        }

        if (v16 <= 1)
        {
          v35 = v28;
        }

        else
        {
          v35 = v30;
        }

        v36 = sub_26124C11C(v34, v35, &v42);

        *(v26 + 4) = v36;
        _os_log_impl(&dword_261243000, v23, v24, "The event %s is missing required fields", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v27);
        MEMORY[0x266701350](v27, -1, -1);
        MEMORY[0x266701350](v26, -1, -1);

        v5 = v25;
      }

      else
      {
      }

      result = (*(v22 + 8))(v5, v21);
    }

    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t sub_2612BB508()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2612BB540()
{
  sub_2613A211C();

  v1 = 0xEC00000064657472;
  v2 = *(v0 + 16);
  v3 = 0x61745349556E6970;
  v4 = 0xED000064656C6563;
  v5 = 0x6E614349556E6970;
  v6 = 0xEB0000000064656CLL;
  v7 = 0x69614649556E6970;
  if (v2 != 3)
  {
    v7 = 0x6F6C4249556E6970;
    v6 = 0xEC00000064656B63;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*(v0 + 16))
  {
    v3 = 0x6D6F4349556E6970;
    v1 = 0xEE00646574656C70;
  }

  if (*(v0 + 16) <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (*(v0 + 16) <= 1u)
  {
    v9 = v1;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x2666FFEA0](v8, v9);

  MEMORY[0x2666FFEA0](0x3D3D3D3D3D3D3D20, 0xEA00000000000A3DLL);
  swift_beginAccess();

  v10 = sub_2613A180C();
  v12 = v11;

  MEMORY[0x2666FFEA0](v10, v12);

  return 0x3D3D3D3D3D3D3D3DLL;
}

void *sub_2612BB720(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3F8, &unk_2613A9AF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_2612BB7A4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2613A256C();
  sub_2613A19DC();
  v8 = sub_2613A25CC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2613A241C() & 1) != 0)
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

    sub_2612BBB54(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2612BB8F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB80, &unk_2613ABA70);
  result = sub_2613A20CC();
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
      sub_2613A256C();
      sub_2613A19DC();
      result = sub_2613A25CC();
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

uint64_t sub_2612BBB54(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_2612BB8F4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2612BBCD4();
      goto LABEL_16;
    }

    sub_2612BBE30(v8 + 1);
  }

  v10 = *v4;
  sub_2613A256C();
  sub_2613A19DC();
  result = sub_2613A25CC();
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

      result = sub_2613A241C();
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
  result = sub_2613A248C();
  __break(1u);
  return result;
}

void *sub_2612BBCD4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB80, &unk_2613ABA70);
  v2 = *v0;
  v3 = sub_2613A20BC();
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

uint64_t sub_2612BBE30(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB80, &unk_2613ABA70);
  result = sub_2613A20CC();
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
      sub_2613A256C();

      sub_2613A19DC();
      result = sub_2613A25CC();
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

uint64_t sub_2612BC068(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB88, &qword_2613A9B00);
  v37 = v4;
  result = sub_2613A223C();
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

      sub_2613A256C();
      sub_2613A19DC();
      result = sub_2613A25CC();
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

uint64_t sub_2612BC328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_26124E5EC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_2612BC068(v18, a5 & 1);
      v13 = sub_26124E5EC(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_2613A249C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_2612BC4B0();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

void *sub_2612BC4B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB88, &qword_2613A9B00);
  v2 = *v0;
  v3 = sub_2613A222C();
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

void *sub_2612BC628(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2612BC780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v12 = type metadata accessor for TransactionData(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v38 - v18;
  v20 = v4 >> 6;
  if (v20 == 1)
  {
    return 0x6461655264726163;
  }

  if (v20 != 2)
  {
    return sub_2612CABB0(a1, v4);
  }

  if (v4 == 128 && a1 == 5)
  {
    v26 = v17;
    sub_26125A870(a3, v9, &qword_27FE9F340, &unk_2613A4B40);
    v27 = v26;
    if ((*(v13 + 48))(v9, 1, v26) == 1)
    {
      sub_26124C718(v9, &qword_27FE9F340, &unk_2613A4B40);
    }

    else
    {
      sub_26125D080(v9, v16);
      v40 = sub_2613A196C();
      v41 = v28;
      v38 = 1634953590;
      v39 = 0xE400000000000000;
      sub_26124C7CC();
      v29 = sub_2613A201C();

      if (v29 & 1) != 0 || (v40 = sub_2613A196C(), v41 = v30, v38 = 0x616372657473616DLL, v39 = 0xEA00000000006472, v31 = sub_2613A201C(), , (v31))
      {
        if (v16[*(v27 + 112)] == 1)
        {
          v32 = sub_2613A03EC();
          sub_26125D0E4(v16);
          return v32;
        }
      }

      sub_26125D0E4(v16);
    }

    return 0x4164616552797274;
  }

  else
  {
    if (v4 == 128 && a1 == 11)
    {
      return 0xD000000000000013;
    }

    if (v4 != 128 || a1 != 10)
    {
      return sub_2612CABB0(a1, v4);
    }

    v24 = v17;
    sub_26125A870(a3, v11, &qword_27FE9F340, &unk_2613A4B40);
    if ((*(v13 + 48))(v11, 1, v24) == 1)
    {
      sub_26124C718(v11, &qword_27FE9F340, &unk_2613A4B40);
    }

    else
    {
      sub_26125D080(v11, v19);
      v40 = sub_2613A196C();
      v41 = v33;
      v38 = 1634953590;
      v39 = 0xE400000000000000;
      sub_26124C7CC();
      v34 = sub_2613A201C();

      if (v34 & 1) != 0 || (v40 = sub_2613A196C(), v41 = v35, v38 = 0x616372657473616DLL, v39 = 0xEA00000000006472, v36 = sub_2613A201C(), , (v36))
      {
        if (v19[*(v24 + 112)] == 1)
        {
          v37 = sub_2613A03EC();
          sub_26125D0E4(v19);
          return v37;
        }
      }

      sub_26125D0E4(v19);
    }

    return 0xD000000000000010;
  }
}

uint64_t sub_2612BCC94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2612BCD04(__int16 a1)
{
  if ((a1 - 1200) >= 0x23u)
  {
    return 35;
  }

  else
  {
    return (a1 - 1200);
  }
}

unint64_t sub_2612BCD1C()
{
  result = qword_27FEA7050;
  if (!qword_27FEA7050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA7050);
  }

  return result;
}

unint64_t sub_2612BCD70()
{
  result = qword_27FEA7058;
  if (!qword_27FEA7058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA7058);
  }

  return result;
}

unint64_t sub_2612BCDC4()
{
  result = qword_27FEA7060;
  if (!qword_27FEA7060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA7060);
  }

  return result;
}

unint64_t sub_2612BCE18()
{
  result = qword_27FEA7068;
  if (!qword_27FEA7068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA7068);
  }

  return result;
}

unint64_t sub_2612BCE6C()
{
  result = qword_27FEA7070;
  if (!qword_27FEA7070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA7070);
  }

  return result;
}

unint64_t sub_2612BCEC0()
{
  result = qword_27FEA7078;
  if (!qword_27FEA7078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA7078);
  }

  return result;
}

unint64_t sub_2612BCF14()
{
  result = qword_27FEA7080;
  if (!qword_27FEA7080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA7080);
  }

  return result;
}

unint64_t sub_2612BCF68()
{
  result = qword_27FEA7088;
  if (!qword_27FEA7088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA7088);
  }

  return result;
}

unint64_t sub_2612BCFBC()
{
  result = qword_27FEA7090;
  if (!qword_27FEA7090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA7090);
  }

  return result;
}

unint64_t sub_2612BD010()
{
  result = qword_27FEA7098;
  if (!qword_27FEA7098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA7098);
  }

  return result;
}

unint64_t sub_2612BD064()
{
  result = qword_27FEA70A0;
  if (!qword_27FEA70A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA70A0);
  }

  return result;
}

unint64_t sub_2612BD0B8()
{
  result = qword_27FEA70A8;
  if (!qword_27FEA70A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA70A8);
  }

  return result;
}

unint64_t sub_2612BD10C()
{
  result = qword_27FEA70B0;
  if (!qword_27FEA70B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA70B0);
  }

  return result;
}

unint64_t sub_2612BD160()
{
  result = qword_27FEA70B8;
  if (!qword_27FEA70B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA70B8);
  }

  return result;
}

unint64_t sub_2612BD1B4()
{
  result = qword_27FEA70C0;
  if (!qword_27FEA70C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA70C0);
  }

  return result;
}

unint64_t sub_2612BD208()
{
  result = qword_27FEA70C8[0];
  if (!qword_27FEA70C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA70C8);
  }

  return result;
}

uint64_t sub_2612BD25C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000002613B7F90 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEA00000000006449 || (sub_2613A241C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064 || (sub_2613A241C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E756F6D61 && a2 == 0xE600000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xEF657079546E6F69 || (sub_2613A241C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002613B7EB0 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xED000064496E6F69 || (sub_2613A241C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x644964616572 && a2 == 0xE600000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6973736553666173 && a2 == 0xEC00000064496E6FLL)
  {

    return 8;
  }

  else
  {
    v5 = sub_2613A241C();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_2612BD564(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000002613B7F90 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEA00000000006449 || (sub_2613A241C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064 || (sub_2613A241C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4972656E74726170 && a2 == 0xE900000000000064 || (sub_2613A241C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E756F6D61 && a2 == 0xE600000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656D65686373 && a2 == 0xE600000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xEF657079546E6F69 || (sub_2613A241C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002613B7EB0 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xED000064496E6F69 || (sub_2613A241C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x644964616572 && a2 == 0xE600000000000000)
  {

    return 9;
  }

  else
  {
    v5 = sub_2613A241C();

    if (v5)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_2612BD8C8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000002613B7F90 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEA00000000006449 || (sub_2613A241C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064 || (sub_2613A241C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4972656E74726170 && a2 == 0xE900000000000064 || (sub_2613A241C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E756F6D61 && a2 == 0xE600000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656D65686373 && a2 == 0xE600000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xEF657079546E6F69 || (sub_2613A241C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xED000064496E6F69 || (sub_2613A241C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002613B7EB0 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x644964616572 && a2 == 0xE600000000000000)
  {

    return 10;
  }

  else
  {
    v5 = sub_2613A241C();

    if (v5)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}