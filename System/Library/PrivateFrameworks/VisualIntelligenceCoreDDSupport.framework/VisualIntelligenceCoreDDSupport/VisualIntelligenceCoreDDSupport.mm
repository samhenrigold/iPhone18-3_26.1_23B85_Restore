uint64_t sub_21DDF77F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_21DE08A08();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 72);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_21DDF78B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = sub_21DE08A08();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 72);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21DDF7954()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21DDF798C()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_21DDF7A6C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_21DDF7B88()
{
  v0 = sub_21DE08BA8();
  __swift_allocate_value_buffer(v0, qword_27CE90DA8);
  __swift_project_value_buffer(v0, qword_27CE90DA8);
  return sub_21DE08B98();
}

uint64_t sub_21DDF7C0C()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:v7];
  v2 = v7[0];
  if (v1)
  {
    v3 = sub_21DE089A8();
  }

  else
  {
    v4 = v2;
    v5 = sub_21DE08978();

    swift_willThrow();
    return 0;
  }

  return v3;
}

uint64_t SemanticDataDetectorActionable.title.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SemanticDataDetectorActionable.rawText.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t SemanticDataDetectorActionable.imageName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void SemanticDataDetectorActionable.source.getter(uint64_t *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  sub_21DDF7DA4(v2, v3, v4, v5, v6, v7);
}

void sub_21DDF7DA4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {

    v7 = a4;
  }
}

void *SemanticDataDetectorActionable.button.getter()
{
  v1 = *(v0 + 104);
  v2 = v1;
  return v1;
}

uint64_t SemanticDataDetectorActionable.menuImageName.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

void *SemanticDataDetectorActionable.defaultAction.getter()
{
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

void *SemanticDataDetectorActionable.scannerResult.getter()
{
  v1 = *(v0 + 136);
  v2 = v1;
  return v1;
}

uint64_t SemanticDataDetectorActionable.accessibilityIdentifier.getter()
{
  v1 = *(v0 + 152);

  return v1;
}

void *SemanticDataDetectorActionable.menu.getter()
{
  v1 = *(v0 + 176);
  v2 = v1;
  return v1;
}

uint64_t SemanticDataDetectorActionable.correlationIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SemanticDataDetectorActionable(0) + 72);
  v4 = sub_21DE08A08();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SemanticDataDetectorActionable(uint64_t a1)
{
  result = qword_281222BA0;
  if (!qword_281222BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SemanticDataDetectorActionable.sortOrder.getter()
{
  if (!*(v0 + 72))
  {
    return 0;
  }

  _sSo15DDScannerResultC31VisualIntelligenceCoreDDSupportE12semanticTypeAC020SemanticDataDetectorH0Ovg_0(&v2);
  if (v2 > 0xBuLL)
  {
    return 127;
  }

  else
  {
    return qword_21DE09920[v2];
  }
}

Swift::Void __swiftcall SemanticDataDetectorActionable.performDefaultAction(forView:)(UIView_optional forView)
{
  isa = forView.value.super.super.isa;
  v58[1] = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for SemanticDataDetectorActionable(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v56 - v7;
  v9 = *(v1 + 128);
  if (v9)
  {
    v10 = qword_27CE90DA0;
    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = sub_21DE08BA8();
    __swift_project_value_buffer(v12, qword_27CE90DA8);
    v57 = v11;
    v13 = sub_21DE08B88();
    v14 = sub_21DE08CF8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v58[0] = v16;
      *v15 = 136315138;
      v17 = v57;
      v18 = [v17 description];
      v19 = sub_21DE08C18();
      v21 = v20;

      v22 = sub_21DDF9B94(v19, v21, v58);

      *(v15 + 4) = v22;
      _os_log_impl(&dword_21DDF6000, v13, v14, "performing default action: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x223D4A9A0](v16, -1, -1);
      MEMORY[0x223D4A9A0](v15, -1, -1);
    }

    [v57 dd_performAction];
    v23 = v57;

    return;
  }

  if (!isa)
  {
    return;
  }

  v24 = qword_27CE90DA0;
  v25 = isa;
  if (v24 != -1)
  {
    swift_once();
  }

  v26 = sub_21DE08BA8();
  __swift_project_value_buffer(v26, qword_27CE90DA8);
  v27 = v1;
  sub_21DDF9AD4(v1, v8);
  v28 = sub_21DE08B88();
  v29 = sub_21DE08CF8();
  if (!os_log_type_enabled(v28, v29))
  {

    sub_21DDF9B38(v8);
    v36 = v27[17];
    if (v36)
    {
      goto LABEL_14;
    }

LABEL_20:

    return;
  }

  v30 = swift_slowAlloc();
  v31 = swift_slowAlloc();
  v58[0] = v31;
  *v30 = 136315138;
  sub_21DDF9AD4(v8, v6);
  v32 = sub_21DE08C28();
  v34 = v33;
  sub_21DDF9B38(v8);
  v35 = sub_21DDF9B94(v32, v34, v58);

  *(v30 + 4) = v35;
  _os_log_impl(&dword_21DDF6000, v28, v29, "calculating default action for: %s", v30, 0xCu);
  __swift_destroy_boxed_opaque_existential_0Tm(v31);
  MEMORY[0x223D4A9A0](v31, -1, -1);
  MEMORY[0x223D4A9A0](v30, -1, -1);

  v36 = v27[17];
  if (!v36)
  {
    goto LABEL_20;
  }

LABEL_14:
  v37 = [v36 coreResult];
  v38 = objc_opt_self();
  v39 = v27[21];
  v40 = v27[23];
  v41 = v37;
  sub_21DDF865C(v25, v39, v40);
  v42 = sub_21DE08BB8();

  v58[0] = 0;

  if (v58[0])
  {
    v43 = v58[0];
    v44 = sub_21DE08B88();
    v45 = sub_21DE08CF8();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58[0] = v57;
      *v46 = 136315138;
      v47 = v43;
      v48 = [v47 description];
      v49 = v25;
      v50 = sub_21DE08C18();
      v52 = v51;

      v53 = v50;
      v25 = v49;
      v54 = sub_21DDF9B94(v53, v52, v58);

      *(v46 + 4) = v54;
      _os_log_impl(&dword_21DDF6000, v44, v45, "performing default action: %s", v46, 0xCu);
      v55 = v57;
      __swift_destroy_boxed_opaque_existential_0Tm(v57);
      MEMORY[0x223D4A9A0](v55, -1, -1);
      MEMORY[0x223D4A9A0](v46, -1, -1);
    }

    [v43 dd_performAction];
  }
}

uint64_t sub_21DDF865C(void *a1, unint64_t a2, uint64_t a3)
{
  v33 = a3;
  if (a2)
  {
    v4 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DE08E18())
    {
      v6 = 0;
      v7 = MEMORY[0x277D84F90];
      while ((a2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223D4A330](v6, a2);
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_16;
        }

LABEL_8:
        v10 = v8;
        v11 = [v8 coreResult];
        v12 = v10;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_21DDFD144(0, *(v7 + 2) + 1, 1, v7);
        }

        v14 = *(v7 + 2);
        v13 = *(v7 + 3);
        if (v14 >= v13 >> 1)
        {
          v7 = sub_21DDFD144((v13 > 1), v14 + 1, 1, v7);
        }

        *(v7 + 2) = v14 + 1;
        *&v7[8 * v14 + 32] = v11;
        ++v6;
        if (v9 == i)
        {
          goto LABEL_20;
        }
      }

      if (v6 >= *(v4 + 16))
      {
        goto LABEL_17;
      }

      v8 = *(a2 + 8 * v6 + 32);
      v9 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_8;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }
  }

  v7 = MEMORY[0x277D84F90];
LABEL_20:
  sub_21DE08C18();
  *(&v37 + 1) = v15;
  v16 = MEMORY[0x277D837D0];
  sub_21DE08D88();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90E48, &qword_21DE098E0);
  *&v37 = v7;
  sub_21DDFB008(&v37, v36);
  v17 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_21DE063E8(v36, v39, isUniquelyReferenced_nonNull_native);
  sub_21DDFB018(v39);
  if (v33)
  {
    v19 = sub_21DDFB178(v33);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v39[0] = v17;
    sub_21DDFAD18(v19, sub_21DDFD528, 0, v20, v39);
  }

  v21 = *(v34 + 136);
  if (v21)
  {
    v22 = [v21 value];
    v23 = sub_21DE08C18();
    v25 = v24;

    *&v37 = sub_21DE08C18();
    *(&v37 + 1) = v26;
    sub_21DE08D88();
    v38 = v16;
    *&v37 = v23;
    *(&v37 + 1) = v25;
    sub_21DDFB008(&v37, v36);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    sub_21DE063E8(v36, v39, v27);
    sub_21DDFB018(v39);
  }

  v28 = objc_opt_self();
  v29 = sub_21DE08BB8();

  [a1 bounds];
  v30 = [v28 updateContext:v29 withSourceRect:?];

  v31 = sub_21DE08BC8();
  return v31;
}

uint64_t sub_21DDF89F4()
{
  sub_21DE08F08();
  sub_21DE08C38();

  return sub_21DE08F48();
}

uint64_t sub_21DDF8AB8(uint64_t a1)
{
  sub_21DE08C38();
}

uint64_t sub_21DDF8B68(uint64_t a1)
{
  sub_21DE08F08();
  sub_21DE08C38();

  return sub_21DE08F48();
}

unint64_t sub_21DDF8C28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21DDFAF5C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21DDF8C58(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x72656E6E616373;
  v4 = 0xE700000000000000;
  v5 = 0x74786554776172;
  if (*v1 != 2)
  {
    v5 = 0x6D614E6567616D69;
    v4 = 0xE900000000000065;
  }

  if (*v1)
  {
    v3 = 0x656C746974;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_21DDF8CD8()
{
  v1 = 0x72656E6E616373;
  v2 = 0x74786554776172;
  if (*v0 != 2)
  {
    v2 = 0x6D614E6567616D69;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
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

unint64_t sub_21DDF8D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21DDFAF5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21DDF8D94(uint64_t a1)
{
  v2 = sub_21DDFA1D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DDF8DD0(uint64_t a1)
{
  v2 = sub_21DDFA1D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SemanticDataDetectorActionable.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90DC0, &qword_21DE09510);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90DC8, &qword_21DE09518);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v11 = type metadata accessor for SemanticDataDetectorActionable(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DE089F8();
  v14 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_21DDFA1D8();
  sub_21DE08F58();
  if (v2)
  {

    (*(v8 + 56))(v6, 1, 1, v7);
    sub_21DDFA22C(v6);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 15;
  }

  else
  {
    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v8 + 32))(v10, v6, v7);
    v39 = 0;
    sub_21DDFA344();
    sub_21DE08E98();
    v33 = v8;
    v24 = v37[0];
    v23 = v37[1];
    sub_21DDFA894(0, &qword_27CE90DE0, 0x277CCAAC8);
    sub_21DDFA894(0, &qword_2812229C8, 0x277D04218);
    v25 = sub_21DE08D08();
    if (v25)
    {
      v32 = v25;
      _sSo15DDScannerResultC31VisualIntelligenceCoreDDSupportE12semanticTypeAC020SemanticDataDetectorH0Ovg_0(v37);
      sub_21DDFA398(v24, v23);
      v30 = LOBYTE(v37[0]);
    }

    else
    {
      sub_21DDFA398(v24, v23);
      v32 = 0;
      v30 = 15;
    }

    v38 = v30;
    LOBYTE(v37[0]) = 1;
    v34 = v10;
    v19 = sub_21DE08E88();
    v20 = v26;
    LOBYTE(v37[0]) = 2;
    v17 = sub_21DE08E88();
    v18 = v27;
    LOBYTE(v37[0]) = 3;
    v15 = sub_21DE08E88();
    v16 = v28;
    (*(v33 + 8))(v34, v7);
    v21 = v32;
    v22 = v38;
  }

  *v13 = v22;
  *(v13 + 1) = v19;
  *(v13 + 2) = v20;
  *(v13 + 3) = v17;
  *(v13 + 4) = v18;
  *(v13 + 5) = v15;
  *(v13 + 6) = v16;
  *(v13 + 15) = 0;
  *(v13 + 16) = 0;
  *(v13 + 17) = v21;
  v13[144] = 0;
  *(v13 + 13) = 0;
  *(v13 + 14) = 0;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 152) = 0u;
  *(v13 + 168) = 0u;
  *(v13 + 23) = 0;
  sub_21DDFA294(v13, v35);
  return __swift_destroy_boxed_opaque_existential_0Tm(v36);
}

uint64_t SemanticDataDetectorActionable.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90DE8, &qword_21DE09520);
  v19 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DDFA1D8();
  sub_21DE08F68();
  if (v3[17])
  {
    v8 = sub_21DDF7C0C();
  }

  else
  {
    v8 = 0;
    v9 = 0xF000000000000000;
  }

  v20 = v8;
  v21 = v9;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90DF0, &qword_21DE09528);
  sub_21DDFA3EC();
  sub_21DE08ED8();
  v10 = v2;
  if (v2)
  {

    v10 = 0;
  }

  sub_21DDFA50C(v20, v21);
  v11 = v3[2];
  v20 = v3[1];
  v21 = v11;
  v22 = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90E08, &qword_21DE09530);
  sub_21DDFA520();
  sub_21DE08ED8();
  v12 = v10;
  if (v10)
  {

    v12 = 0;
  }

  v13 = v3[4];
  v20 = v3[3];
  v21 = v13;
  v22 = 2;

  sub_21DE08ED8();
  v14 = v12;
  if (v12)
  {

    v14 = 0;
  }

  v15 = v3[5];
  v16 = v3[6];
  v20 = v15;
  v21 = v16;
  v22 = 3;

  sub_21DE08ED8();
  if (v14)
  {
  }

  return (*(v19 + 8))(v7, v5);
}

BOOL static SemanticDataDetectorActionable.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 136);
  v3 = *(a2 + 136);
  result = (v2 | v3) == 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    sub_21DDFA894(0, &qword_2812229C8, 0x277D04218);
    v6 = v3;
    v7 = v2;
    v8 = sub_21DE08D18();

    return v8 & 1;
  }

  return result;
}

uint64_t SemanticDataDetectorActionable.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 136);
  if (v2)
  {
    v3 = [v2 type];
    sub_21DE08C18();

    sub_21DE08F28();
    sub_21DE08C38();

    v4 = [v2 range];
    v6 = v5;
    sub_21DE08F28();
    MEMORY[0x223D4A480](v4);
    MEMORY[0x223D4A480](v6);
    [v2 category];
    sub_21DE08F28();
    return sub_21DE08F38();
  }

  else
  {
    sub_21DE08F28();
    sub_21DE08F28();
    return sub_21DE08F28();
  }
}

uint64_t SemanticDataDetectorActionable.hashValue.getter()
{
  sub_21DE08F08();
  SemanticDataDetectorActionable.hash(into:)(v1);
  return sub_21DE08F48();
}

uint64_t sub_21DDF9740()
{
  sub_21DE08F08();
  SemanticDataDetectorActionable.hash(into:)(v1);
  return sub_21DE08F48();
}

uint64_t sub_21DDF9784(uint64_t a1)
{
  sub_21DE08F08();
  SemanticDataDetectorActionable.hash(into:)(v2);
  return sub_21DE08F48();
}

BOOL sub_21DDF97C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 136);
  v3 = *(a2 + 136);
  result = (v2 | v3) == 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    sub_21DDFA894(0, &qword_2812229C8, 0x277D04218);
    v6 = v3;
    v7 = v2;
    v8 = sub_21DE08D18();

    return v8 & 1;
  }

  return result;
}

uint64_t sub_21DDF9854(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_21DE08A78();
}

uint64_t sub_21DDF9964(uint64_t a1, uint64_t a2)
{
  sub_21DE08F08();
  swift_getWitnessTable();
  sub_21DE08A88();
  return sub_21DE08F48();
}

uint64_t sub_21DDF99CC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_21DDF9A40(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_21DDF9B94(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_21DDF9AD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SemanticDataDetectorActionable(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DDF9B38(uint64_t a1)
{
  v2 = type metadata accessor for SemanticDataDetectorActionable(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21DDF9B94(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21DDF9C60(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_21DDFAFA8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_21DDF9C60(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_21DDF9D6C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_21DE08DF8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_21DDF9D6C(uint64_t a1, unint64_t a2)
{
  v3 = sub_21DDF9DB8(a1, a2);
  sub_21DDF9EE8(&unk_282F23090);
  return v3;
}

void *sub_21DDF9DB8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_21DDF9FD4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_21DE08DF8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_21DE08C58();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21DDF9FD4(v10, 0);
        result = sub_21DE08DA8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_21DDF9EE8(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_21DDFA048(result, v11, 1, v3);
  v3 = result;
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_21DDF9FD4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90E40, &qword_21DE098D8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21DDFA048(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90E40, &qword_21DE098D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_21DDFA13C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_21DDFA1D8()
{
  result = qword_27CE90DD0;
  if (!qword_27CE90DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90DD0);
  }

  return result;
}

uint64_t sub_21DDFA22C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90DC0, &qword_21DE09510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DDFA294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SemanticDataDetectorActionable(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
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

unint64_t sub_21DDFA344()
{
  result = qword_27CE90DD8;
  if (!qword_27CE90DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90DD8);
  }

  return result;
}

uint64_t sub_21DDFA398(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_21DDFA3EC()
{
  result = qword_27CE90DF8;
  if (!qword_27CE90DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE90DF0, &qword_21DE09528);
    sub_21DDFA4B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90DF8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_21DDFA4B8()
{
  result = qword_27CE90E00;
  if (!qword_27CE90E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90E00);
  }

  return result;
}

uint64_t sub_21DDFA50C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21DDFA398(result, a2);
  }

  return result;
}

unint64_t sub_21DDFA520()
{
  result = qword_27CE90E10;
  if (!qword_27CE90E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE90E08, &qword_21DE09530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90E10);
  }

  return result;
}

void sub_21DDFA60C(uint64_t a1)
{
  sub_21DDFB128(319, &qword_281222A10, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21DDFB128(319, &qword_281222BC0, &type metadata for SemanticDataDetector, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21DDFA83C(319, &qword_281222988, &qword_281222990, 0x277D75220);
      if (v3 <= 0x3F)
      {
        sub_21DDFA83C(319, &qword_2812229F8, &qword_281222A00, 0x277D04340);
        if (v4 <= 0x3F)
        {
          sub_21DDFA83C(319, &qword_2812229C0, &qword_2812229C8, 0x277D04218);
          if (v5 <= 0x3F)
          {
            sub_21DDFA8DC(319, &qword_281222A08, &qword_27CE90E18, &qword_21DE09680);
            if (v6 <= 0x3F)
            {
              sub_21DDFA83C(319, &qword_2812229A0, &qword_2812229A8, 0x277D75710);
              if (v7 <= 0x3F)
              {
                sub_21DDFA8DC(319, &qword_281222A18, &qword_27CE90E20, &qword_21DE09688);
                if (v8 <= 0x3F)
                {
                  sub_21DE08A08();
                  if (v9 <= 0x3F)
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
  }
}

void sub_21DDFA83C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_21DDFA894(255, a3, a4);
    v5 = sub_21DE08D38();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_21DDFA894(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_21DDFA8DC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_21DE08D38();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21DDFA968(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21DDFA988(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SemanticDataDetectorActionable.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SemanticDataDetectorActionable.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21DDFAB3C()
{
  result = qword_27CE90E28;
  if (!qword_27CE90E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90E28);
  }

  return result;
}

uint64_t sub_21DDFABD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21DDFAC6C()
{
  result = qword_27CE90E30;
  if (!qword_27CE90E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90E30);
  }

  return result;
}

unint64_t sub_21DDFACC4()
{
  result = qword_27CE90E38;
  if (!qword_27CE90E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90E38);
  }

  return result;
}

uint64_t sub_21DDFAD18(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v41 = a1;
  v42 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v43 = v8;
  v44 = 0;
  v45 = v11 & v9;
  v46 = a2;
  v47 = a3;

  sub_21DDFD56C(&v37);
  if (!*(&v38 + 1))
  {
LABEL_18:
    sub_21DDFB06C(v41);
  }

  while (1)
  {
    v34 = v37;
    v35 = v38;
    v36 = v39;
    sub_21DDFB008(&v40, v33);
    v15 = *a5;
    v16 = sub_21DE0524C(&v34);
    v18 = *(v15 + 16);
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (*(v15 + 24) < v21)
    {
      sub_21DE05388(v21, a4 & 1);
      v16 = sub_21DE0524C(&v34);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_21;
      }

LABEL_13:
      if (v22)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (a4)
    {
      goto LABEL_13;
    }

    v30 = v16;
    sub_21DE05B98();
    v16 = v30;
    if (v22)
    {
LABEL_6:
      v12 = *a5;
      v13 = 32 * v16;
      sub_21DDFAFA8(*(*a5 + 56) + 32 * v16, v32);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      sub_21DDFB018(&v34);
      v14 = *(v12 + 56);
      __swift_destroy_boxed_opaque_existential_0Tm((v14 + v13));
      sub_21DDFB008(v32, (v14 + v13));
      goto LABEL_7;
    }

LABEL_14:
    v24 = *a5;
    *(*a5 + 8 * (v16 >> 6) + 64) |= 1 << v16;
    v25 = v24[6] + 40 * v16;
    v26 = v34;
    v27 = v35;
    *(v25 + 32) = v36;
    *v25 = v26;
    *(v25 + 16) = v27;
    sub_21DDFB008(v33, (v24[7] + 32 * v16));
    v28 = v24[2];
    v20 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    v24[2] = v29;
LABEL_7:
    sub_21DDFD56C(&v37);
    a4 = 1;
    if (!*(&v38 + 1))
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_21DE08EF8();
  __break(1u);
  return result;
}

unint64_t sub_21DDFAF5C(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DE08E58();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21DDFAFA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_21DDFB008(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_21DDFB128(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_21DDFB178(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90E78, &qword_21DE09A78);
    v2 = sub_21DE08E48();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_21DDFAFA8(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_21DDFB008(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_21DDFB008(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_21DDFB008(v31, v32);
    result = sub_21DE08D68();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_21DDFB008(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_21DDFB440()
{
  v0 = sub_21DE08BA8();
  __swift_allocate_value_buffer(v0, qword_281222A30);
  __swift_project_value_buffer(v0, qword_281222A30);
  return sub_21DE08B98();
}

uint64_t static SemanticDataDetectorActionGenerator.actionables(for:)(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = sub_21DE088F8();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90E50, &qword_21DE099B8);
  v2[19] = swift_task_alloc();
  v4 = type metadata accessor for SemanticDataDetectorActionable(0);
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DDFB624, 0, 0);
}

uint64_t sub_21DDFB624()
{
  v39 = v0;
  *(v0 + 64) = 0;
  v1 = *(v0 + 112);
  *(v0 + 72) = 0xE000000000000000;
  v2 = *(v1 + 32);
  *(v0 + 257) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -(-1 << v2));
  }

  v5 = v3 & *(v1 + 56);
  *(v0 + 192) = MEMORY[0x277D84F90];

  if (v5)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 200) = v5;
    *(v0 + 208) = v7;
    v9 = *(v6 + 48) + 48 * (__clz(__rbit64(v5)) | (v7 << 6));
    v10 = *v9;
    v12 = *(v9 + 8);
    v11 = *(v9 + 16);
    *(v0 + 216) = v11;
    v13 = *(v9 + 24);
    *(v0 + 224) = v13;
    v14 = *(v9 + 32);
    *(v0 + 232) = v14;
    v15 = *(v9 + 40);
    *(v0 + 240) = v15;
    *(v0 + 256) = v10;

    v16 = v13;

    *(v0 + 80) = sub_21DE08C28();
    *(v0 + 88) = v17;

    MEMORY[0x223D4A1B0](8236, 0xE200000000000000);

    MEMORY[0x223D4A1B0](*(v0 + 80), *(v0 + 88));

    *(v0 + 16) = v10;
    *(v0 + 24) = v12;
    *(v0 + 32) = v11;
    *(v0 + 40) = v16;
    *(v0 + 48) = v14;
    *(v0 + 56) = v15;
    v18 = swift_task_alloc();
    *(v0 + 248) = v18;
    *v18 = v0;
    v18[1] = sub_21DDFBA60;
    v19 = *(v0 + 152);

    return sub_21DDFC0F8(v19, v0 + 16);
  }

  else
  {
    v8 = 0;
    while (((63 - v4) >> 6) - 1 != v8)
    {
      v7 = v8 + 1;
      v5 = *(v6 + 8 * v8++ + 64);
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 128);

    v24 = *(v0 + 72);
    *(v0 + 96) = *(v0 + 64);
    *(v0 + 104) = v24;
    sub_21DE088E8();
    sub_21DDFD248();
    v25 = sub_21DE08D48();
    v27 = v26;
    (*(v22 + 8))(v21, v23);

    if (qword_281222A28 != -1)
    {
      swift_once();
    }

    v28 = sub_21DE08BA8();
    __swift_project_value_buffer(v28, qword_281222A30);

    v29 = sub_21DE08B88();
    v30 = sub_21DE08CE8();

    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 112);
    if (v31)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v38 = v34;
      *v33 = 134218242;
      *(v33 + 4) = *(v32 + 16);

      *(v33 + 12) = 2080;
      v35 = sub_21DDF9B94(v25, v27, &v38);

      *(v33 + 14) = v35;
      _os_log_impl(&dword_21DDF6000, v29, v30, "Converted %ld SemanticDataDetectors with types [%s] into actionables.", v33, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x223D4A9A0](v34, -1, -1);
      MEMORY[0x223D4A9A0](v33, -1, -1);
    }

    else
    {
    }

    v36 = *(v0 + 8);
    v37 = *(v0 + 192);

    return v36(v37);
  }
}

uint64_t sub_21DDFBA60()
{

  return MEMORY[0x2822009F8](sub_21DDFBB5C, 0, 0);
}

uint64_t sub_21DDFBB5C()
{
  v46 = v0;
  v1 = *(v0 + 152);
  if ((*(*(v0 + 168) + 48))(v1, 1, *(v0 + 160)) != 1)
  {
    v6 = *(v0 + 184);
    v7 = *(v0 + 176);
    sub_21DDFA294(v1, v6);
    sub_21DDF9AD4(v6, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1 = *(v0 + 192);
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

  v2 = *(v0 + 224);

  sub_21DDFD750(v1, &qword_27CE90E50, &qword_21DE099B8);
  v3 = *(v0 + 208);
  v4 = (*(v0 + 200) - 1) & *(v0 + 200);
  if (v4)
  {
LABEL_3:
    v5 = *(v0 + 112);
LABEL_12:
    *(v0 + 200) = v4;
    *(v0 + 208) = v3;
    v16 = *(v5 + 48) + 48 * (__clz(__rbit64(v4)) | (v3 << 6));
    v17 = *v16;
    v19 = *(v16 + 8);
    v18 = *(v16 + 16);
    *(v0 + 216) = v18;
    v20 = *(v16 + 24);
    *(v0 + 224) = v20;
    v21 = *(v16 + 32);
    *(v0 + 232) = v21;
    v22 = *(v16 + 40);
    *(v0 + 240) = v22;
    *(v0 + 256) = v17;

    v23 = v20;

    *(v0 + 80) = sub_21DE08C28();
    *(v0 + 88) = v24;

    MEMORY[0x223D4A1B0](8236, 0xE200000000000000);

    MEMORY[0x223D4A1B0](*(v0 + 80), *(v0 + 88));

    *(v0 + 16) = v17;
    *(v0 + 24) = v19;
    *(v0 + 32) = v18;
    *(v0 + 40) = v23;
    *(v0 + 48) = v21;
    *(v0 + 56) = v22;
    v25 = swift_task_alloc();
    *(v0 + 248) = v25;
    *v25 = v0;
    v25[1] = sub_21DDFBA60;
    v26 = *(v0 + 152);

    return sub_21DDFC0F8(v26, v0 + 16);
  }

  else
  {
    while (1)
    {
      while (1)
      {
        v15 = v3 + 1;
        if (!__OFADD__(v3, 1))
        {
          break;
        }

        __break(1u);
LABEL_24:
        v1 = sub_21DDFD2C4(0, v1[2] + 1, 1, v1, &qword_27CE90E60, &qword_21DE09A60, type metadata accessor for SemanticDataDetectorActionable);
LABEL_5:
        v10 = v1[2];
        v9 = v1[3];
        if (v10 >= v9 >> 1)
        {
          v1 = sub_21DDFD2C4((v9 > 1), v10 + 1, 1, v1, &qword_27CE90E60, &qword_21DE09A60, type metadata accessor for SemanticDataDetectorActionable);
        }

        v11 = *(v0 + 224);
        v13 = *(v0 + 176);
        v12 = *(v0 + 184);
        v14 = *(v0 + 168);

        sub_21DDF9B38(v12);
        v1[2] = v10 + 1;
        sub_21DDFA294(v13, v1 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v10);
        v3 = *(v0 + 208);
        v4 = (*(v0 + 200) - 1) & *(v0 + 200);
        *(v0 + 192) = v1;
        if (v4)
        {
          goto LABEL_3;
        }
      }

      if (v15 >= (((1 << *(v0 + 257)) + 63) >> 6))
      {
        break;
      }

      v5 = *(v0 + 112);
      v4 = *(v5 + 8 * v15 + 56);
      ++v3;
      if (v4)
      {
        v3 = v15;
        goto LABEL_12;
      }
    }

    v29 = *(v0 + 136);
    v28 = *(v0 + 144);
    v30 = *(v0 + 128);

    v31 = *(v0 + 72);
    *(v0 + 96) = *(v0 + 64);
    *(v0 + 104) = v31;
    sub_21DE088E8();
    sub_21DDFD248();
    v32 = sub_21DE08D48();
    v34 = v33;
    (*(v29 + 8))(v28, v30);

    if (qword_281222A28 != -1)
    {
      swift_once();
    }

    v35 = sub_21DE08BA8();
    __swift_project_value_buffer(v35, qword_281222A30);

    v36 = sub_21DE08B88();
    v37 = sub_21DE08CE8();

    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 112);
    if (v38)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v45 = v41;
      *v40 = 134218242;
      *(v40 + 4) = *(v39 + 16);

      *(v40 + 12) = 2080;
      v42 = sub_21DDF9B94(v32, v34, &v45);

      *(v40 + 14) = v42;
      _os_log_impl(&dword_21DDF6000, v36, v37, "Converted %ld SemanticDataDetectors with types [%s] into actionables.", v40, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      MEMORY[0x223D4A9A0](v41, -1, -1);
      MEMORY[0x223D4A9A0](v40, -1, -1);
    }

    else
    {
    }

    v43 = *(v0 + 8);
    v44 = *(v0 + 192);

    return v43(v44);
  }
}

uint64_t sub_21DDFC0F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  *(v2 + 136) = *(a2 + 16);
  *(v2 + 232) = *a2;
  v4 = *(a2 + 8);
  *(v2 + 120) = a1;
  *(v2 + 128) = v4;
  *(v2 + 152) = v3;

  return MEMORY[0x2822009F8](sub_21DDFC1A0, 0, 0);
}

uint64_t sub_21DDFC1A0()
{
  v50 = v0;
  v49 = *MEMORY[0x277D85DE8];
  if (qword_281222A28 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v1 = *(v0 + 160);
    v2 = *(v0 + 144);
    v3 = sub_21DE08BA8();
    __swift_project_value_buffer(v3, qword_281222A30);

    v4 = v2;

    v5 = sub_21DE08B88();
    v6 = sub_21DE08CE8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 152);
      v41 = *(v0 + 160);
      v43 = v6;
      v8 = *(v0 + 136);
      v9 = *(v0 + 144);
      v10 = *(v0 + 128);
      v11 = *(v0 + 232);
      v12 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v44 = v42;
      *v12 = 136315138;
      LOBYTE(v45[0]) = v11;
      v45[1] = v10;
      v45[2] = v8;
      v46 = v9;
      v47 = v7;
      v48 = v41;

      v13 = v9;

      v14 = SemanticDataDetector.description.getter();
      v16 = v15;
      v17 = v46;

      v18 = sub_21DDF9B94(v14, v16, &v44);

      *(v12 + 4) = v18;
      _os_log_impl(&dword_21DDF6000, v5, v43, "Creating Actionable for %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x223D4A9A0](v42, -1, -1);
      MEMORY[0x223D4A9A0](v12, -1, -1);
    }

    v19 = *(v0 + 160);
    if (!v19)
    {

      v29 = MEMORY[0x277D84F90];
      goto LABEL_21;
    }

    v45[0] = MEMORY[0x277D84F90];
    v20 = v19 >> 62 ? sub_21DE08E18() : *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    swift_bridgeObjectRetain_n();

    if (!v20)
    {
      break;
    }

    v21 = 0;
    v22 = *(v0 + 160);
    v23 = v22 & 0xC000000000000001;
    v24 = v22 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v23)
      {
        v25 = MEMORY[0x223D4A330](v21, v1);
      }

      else
      {
        if (v21 >= *(v24 + 16))
        {
          goto LABEL_27;
        }

        v25 = *(v1 + 8 * v21 + 32);
      }

      v26 = v25;
      v27 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v28 = [v25 coreResult];

      MEMORY[0x223D4A1D0]();
      if (*((v45[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DE08C98();
      }

      sub_21DE08CA8();
      ++v21;
      if (v27 == v20)
      {
        v29 = v45[0];
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
  }

  v29 = MEMORY[0x277D84F90];
LABEL_20:

LABEL_21:
  v30 = *(v0 + 152);
  *(v0 + 56) = sub_21DE08C18();
  *(v0 + 64) = v31;
  sub_21DE08D88();
  *(v0 + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90E68, &qword_21DE09A68);
  *(v0 + 56) = v29;
  sub_21DDFB008((v0 + 56), (v0 + 88));
  v32 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45[0] = v32;
  sub_21DE063E8((v0 + 88), v0 + 16, isUniquelyReferenced_nonNull_native);
  sub_21DDFB018(v0 + 16);
  v34 = v45[0];
  if (v30)
  {

    v36 = sub_21DDFB178(v35);

    v37 = swift_isUniquelyReferenced_nonNull_native();
    v45[0] = v34;
    sub_21DDFAD18(v36, sub_21DDFD528, 0, v37, v45);

    v34 = v45[0];
  }

  *(v0 + 168) = v34;
  *(v0 + 176) = sub_21DE08CD8();
  *(v0 + 184) = sub_21DE08CC8();
  v39 = sub_21DE08CB8();

  return MEMORY[0x2822009F8](sub_21DDFC6A4, v39, v38);
}

uint64_t sub_21DDFC6A4()
{

  *(v0 + 192) = [objc_allocWithZone(MEMORY[0x277D75220]) init];

  return MEMORY[0x2822009F8](sub_21DDFC754, 0, 0);
}

uint64_t sub_21DDFC754()
{
  v38 = v0;
  v37 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = objc_opt_self();
  v4 = [v2 coreResult];
  v5 = sub_21DE08BB8();
  *(v0 + 16) = 0;
  v6 = [v3 buttonActionsForURL:0 result:v4 contact:0 icsString:0 context:v5 view:v1 identifier:0 suggestedActions:0 defaultAction:v0 + 16];
  *(v0 + 200) = v6;

  v7 = *(v0 + 16);
  *(v0 + 208) = v7;
  if (v6)
  {
    v8 = v7;
    _sSo15DDScannerResultC31VisualIntelligenceCoreDDSupportE12semanticTypeAC020SemanticDataDetectorH0Ovg_0(&v36);
    *(v0 + 233) = v36;
    if (v8)
    {
      *(v0 + 216) = sub_21DE08CC8();
      v10 = sub_21DE08CB8();

      return MEMORY[0x2822009F8](sub_21DDFCB0C, v10, v9);
    }

    v15 = [*(v0 + 144) value];
    v16 = sub_21DE08C18();
    v18 = v17;

    v34 = *(v0 + 200);
    v35 = *(v0 + 208);
    v19 = *(v0 + 192);
    v21 = *(v0 + 152);
    v20 = *(v0 + 160);
    v22 = *(v0 + 136);
    v23 = *(v0 + 144);
    v24 = *(v0 + 232);
    v26 = *(v0 + 120);
    v25 = *(v0 + 128);
    *v26 = *(v0 + 233);
    *(v26 + 8) = xmmword_21DE09990;
    *(v26 + 24) = v16;
    *(v26 + 32) = v18;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = v24;
    *(v26 + 64) = v25;
    *(v26 + 72) = v22;
    *(v26 + 80) = v23;
    *(v26 + 88) = v21;
    *(v26 + 96) = v20;
    *(v26 + 104) = v19;
    *(v26 + 112) = 0;
    *(v26 + 120) = 0;
    *(v26 + 128) = v35;
    *(v26 + 136) = v23;
    *(v26 + 144) = 0;
    *(v26 + 152) = xmmword_21DE099A0;
    *(v26 + 168) = v20;
    *(v26 + 176) = v34;
    *(v26 + 184) = v21;
    v27 = type metadata accessor for SemanticDataDetectorActionable(0);

    v28 = v23;

    v29 = v28;
    v30 = v19;
    v13 = v35;
    v31 = v34;
    sub_21DE089F8();

    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
  }

  else
  {
    v11 = *(v0 + 192);
    v12 = *(v0 + 120);
    v13 = v7;

    v14 = type metadata accessor for SemanticDataDetectorActionable(0);
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_21DDFCB0C()
{
  v1 = *(v0 + 208);

  *(v0 + 224) = [v1 dd_action];

  return MEMORY[0x2822009F8](sub_21DDFCBBC, 0, 0);
}

uint64_t sub_21DDFCBBC()
{
  v1 = *(v0 + 224);
  if (!v1)
  {

    v5 = 0;
    v6 = 0;
    v8 = 0;
    v51 = 0xE000000000000000;
    v52 = 0;
    goto LABEL_6;
  }

  v2 = *(v0 + 233);
  v3 = [v1 isPlaceholderAction];
  v4 = *(v0 + 224);
  if ((v3 & 1) == 0 && v2 != 10)
  {
    v5 = [*(v0 + 224) compactIcon];
    v6 = [v4 icon];

    v7 = [v4 quickActionTitle];
    v8 = sub_21DE08C18();
    v51 = v9;

    v52 = *(v0 + 224);
LABEL_6:
    v10 = [*(v0 + 144) value];
    v11 = sub_21DE08C18();
    v49 = v12;
    v50 = v11;

    if (v5 && (v13 = MEMORY[0x223D4A520](v5)) != 0)
    {
      v14 = v13;
      v15 = sub_21DE08C18();
      v47 = v16;
      v48 = v15;

      v53 = v6;
      v54 = v5;
      if (!v6)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v47 = 0;
      v48 = 0;
      v53 = v6;
      v54 = v5;
      if (!v6)
      {
        goto LABEL_13;
      }
    }

    v17 = MEMORY[0x223D4A520](v6);
    if (v17)
    {
      v18 = v17;
      v19 = sub_21DE08C18();
      v21 = v20;

      v22 = v19;
LABEL_14:
      v23 = *(v0 + 208);
      v46 = *(v0 + 200);
      v24 = *(v0 + 192);
      v25 = *(v0 + 152);
      v26 = *(v0 + 160);
      v28 = *(v0 + 136);
      v27 = *(v0 + 144);
      v29 = *(v0 + 232);
      v31 = *(v0 + 120);
      v30 = *(v0 + 128);
      *v31 = *(v0 + 233);
      *(v31 + 8) = v8;
      *(v31 + 16) = v51;
      *(v31 + 24) = v50;
      *(v31 + 32) = v49;
      *(v31 + 40) = v48;
      *(v31 + 48) = v47;
      *(v31 + 56) = v29;
      *(v31 + 64) = v30;
      *(v31 + 72) = v28;
      *(v31 + 80) = v27;
      *(v31 + 88) = v25;
      *(v31 + 96) = v26;
      *(v31 + 104) = v24;
      *(v31 + 112) = v22;
      *(v31 + 120) = v21;
      *(v31 + 128) = v23;
      *(v31 + 136) = v27;
      *(v31 + 144) = 0;
      *(v31 + 152) = xmmword_21DE099A0;
      *(v31 + 168) = v26;
      *(v31 + 176) = v46;
      *(v31 + 184) = v25;
      v32 = type metadata accessor for SemanticDataDetectorActionable(0);

      v33 = v27;

      v34 = v33;
      v35 = v24;
      v36 = v23;
      v37 = v46;
      sub_21DE089F8();

      (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
      goto LABEL_16;
    }

LABEL_13:
    v22 = 0;
    v21 = 0;
    goto LABEL_14;
  }

  v38 = *(v0 + 200);
  v36 = *(v0 + 208);
  v39 = *(v0 + 192);
  v55 = *(v0 + 120);
  v40 = objc_opt_self();
  v41 = sub_21DE08BF8();
  v42 = [v40 __systemImageNamed_];

  v43 = type metadata accessor for SemanticDataDetectorActionable(0);
  (*(*(v43 - 8) + 56))(v55, 1, 1, v43);
LABEL_16:

  v44 = *(v0 + 8);

  return v44();
}

uint64_t static SemanticDataDetectorActionGenerator.filter(results:referenceDate:)(uint64_t a1)
{
  v1 = objc_opt_self();
  sub_21DDFD4A0();
  v2 = sub_21DE08C78();
  v3 = sub_21DE089C8();
  v4 = [v1 filterResults:v2 forTypes:0xFFFFLL referenceDate:v3 referenceTimeZone:0];

  if (!v4)
  {
    sub_21DE08C88();
    v4 = sub_21DE08C78();
  }

  v5 = [objc_opt_self() filterResultsForQuickActions_];

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_21DE08C88();

  return v6;
}

uint64_t SemanticDataDetectorActionGenerator.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

char *sub_21DDFD144(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90E80, &qword_21DE09A80);
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
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_21DDFD248()
{
  result = qword_281222A20;
  if (!qword_281222A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281222A20);
  }

  return result;
}

void *sub_21DDFD2C4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
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

unint64_t sub_21DDFD4A0()
{
  result = qword_2812229C8;
  if (!qword_2812229C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812229C8);
  }

  return result;
}

uint64_t sub_21DDFD528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21DDFD6F4(a1, a2);

  return sub_21DDFAFA8(a1 + 40, a2 + 40);
}

_OWORD *sub_21DDFD56C@<X0>(uint64_t a1@<X8>)
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
    sub_21DDFD6F4(*(v3 + 48) + 40 * v13, &v17);
    sub_21DDFAFA8(*(v3 + 56) + 32 * v13, v22);
    v23 = v17;
    v24 = v18;
    *&v25 = v19;
    result = sub_21DDFB008(v22, (&v25 + 8));
    v15 = *(&v24 + 1);
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v15)
    {
      v16 = v1[5];
      v17 = v23;
      *&v18 = v24;
      *(&v18 + 1) = v15;
      v19 = v25;
      v20 = v26;
      v21 = v27;
      v16(&v17);
      return sub_21DDFD750(&v17, &qword_27CE90E70, &qword_21DE09A70);
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
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
        v15 = 0;
        v12 = 0;
        v27 = 0;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
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

uint64_t sub_21DDFD750(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t SemanticDataDetector.sortOrder.getter()
{
  _sSo15DDScannerResultC31VisualIntelligenceCoreDDSupportE12semanticTypeAC020SemanticDataDetectorH0Ovg_0(&v1);
  if (v1 > 0xBuLL)
  {
    return 127;
  }

  else
  {
    return qword_21DE0AD18[v1];
  }
}

uint64_t sub_21DDFD800(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x72656E6E616373;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x74786554776172;
    }

    else
    {
      v4 = 0x6D614E6567616D69;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE900000000000065;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x656C746974;
    }

    else
    {
      v4 = 0x72656E6E616373;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x74786554776172;
  if (a2 != 2)
  {
    v8 = 0x6D614E6567616D69;
    v7 = 0xE900000000000065;
  }

  if (a2)
  {
    v2 = 0x656C746974;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21DE08EE8();
  }

  return v11 & 1;
}

uint64_t sub_21DDFD944(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xD000000000000011;
  v5 = 0x800000021DE0ADA0;
  v6 = 0x6564724F74726F73;
  v7 = 0xE900000000000072;
  if (a1 != 4)
  {
    v6 = 0xD000000000000013;
    v7 = 0x800000021DE0ADC0;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE700000000000000;
  v9 = 0x74786554776172;
  if (a1 != 1)
  {
    v9 = 0x676E6970756F7267;
    v8 = 0xEC00000061746144;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1701869940;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0x800000021DE0ADA0;
      if (v10 != 0xD000000000000011)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE900000000000072;
      if (v10 != 0x6564724F74726F73)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0x800000021DE0ADC0;
      if (v10 != 0xD000000000000013)
      {
LABEL_34:
        v13 = sub_21DE08EE8();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x74786554776172)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEC00000061746144;
      if (v10 != 0x676E6970756F7267)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1701869940)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_21DDFDB34(unsigned __int8 a1)
{
  sub_21DE08F08();
  sub_21DE08C38();

  return sub_21DE08F48();
}

uint64_t sub_21DDFDC44(uint64_t a1, unsigned __int8 a2)
{
  sub_21DE08F08();
  sub_21DE08C38();

  return sub_21DE08F48();
}

uint64_t SemanticDataDetectorType.sortOrder.getter()
{
  v1 = *v0;
  if (v1 > 0xB)
  {
    return 127;
  }

  else
  {
    return qword_21DE0AD18[v1];
  }
}

uint64_t SemanticDataDetector.description.getter()
{
  v1 = *(v0 + 24);
  sub_21DE08DB8();
  MEMORY[0x223D4A1B0](0xD00000000000001CLL, 0x800000021DE0AEE0);
  sub_21DE08E08();
  MEMORY[0x223D4A1B0](0xD000000000000011, 0x800000021DE0AF00);
  v2 = [v1 description];
  v3 = sub_21DE08C18();
  v5 = v4;

  MEMORY[0x223D4A1B0](v3, v5);

  return 0;
}

uint64_t SemanticDataDetector.rawText.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t DDScannerResult.sortOrder.getter()
{
  _sSo15DDScannerResultC31VisualIntelligenceCoreDDSupportE12semanticTypeAC020SemanticDataDetectorH0Ovg_0(&v1);
  if (v1 > 0xBuLL)
  {
    return 127;
  }

  else
  {
    return qword_21DE0AD18[v1];
  }
}

_BYTE *SemanticDataDetector.init(type:rawText:scannerResult:groupingData:unfilteredResults:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = *result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t SemanticDataDetector.hashValue.getter()
{
  sub_21DE08F08();
  sub_21DE08D28();
  return sub_21DE08F48();
}

uint64_t sub_21DDFDFFC()
{
  sub_21DE08F08();
  sub_21DE08D28();
  return sub_21DE08F48();
}

uint64_t sub_21DDFE064(uint64_t a1)
{
  sub_21DE08F08();
  sub_21DE08D28();
  return sub_21DE08F48();
}

void SemanticDataDetector.detectedEntity.getter(void *a1@<X8>)
{
  v120 = a1;
  v128 = *MEMORY[0x277D85DE8];
  v2 = sub_21DE08B38();
  v119 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DE08998();
  v117 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v106 - v9;
  v11 = sub_21DE08AC8();
  v111 = *(v11 - 8);
  v112 = v11;
  MEMORY[0x28223BE20](v11);
  v110 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_21DE08B78();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v107 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90E88, &qword_21DE09AB0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v106 - v15;
  v17 = sub_21DE08AE8();
  v106 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21DE08B18();
  v115 = *(v20 - 8);
  v116 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v113 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v114 = &v106 - v23;
  v24 = v1[2];
  v118 = v1[1];
  v25 = v1[3];
  _sSo15DDScannerResultC31VisualIntelligenceCoreDDSupportE12semanticTypeAC020SemanticDataDetectorH0Ovg_0(&v125);
  if (v125 > 8u)
  {
    v33 = v119;
    if (v125 > 0xBu)
    {
LABEL_7:
      v34 = sub_21DE08B48();
      v35 = *(*(v34 - 8) + 56);
      v36 = v34;
      v37 = v120;

      v35(v37, 1, 1, v36);
      return;
    }

    if (v125 == 9)
    {
      v126 = v118;
      v127 = v24;

      v38 = v120;
      sub_21DE08B58();
      v39 = MEMORY[0x277D789B8];
      goto LABEL_26;
    }

    if (v125 == 10)
    {
      v124 = 0.0;
      v126 = 0;
      if ([v25 getPhysicalUnitValue:&v124 unit:&v126])
      {
        v40 = v126;
        if (!v126 || (v126 = 0, v127 = 0, v41 = v40, sub_21DE08C08(), !v127))
        {
        }

        v88 = v120;
        sub_21DE08AF8();
        v89 = *MEMORY[0x277D789D0];
        v90 = sub_21DE08B48();
        v91 = *(v90 - 8);
        (*(v91 + 104))(v88, v89, v90);
        (*(v91 + 56))(v88, 0, 1, v90);
LABEL_59:

        return;
      }
    }

    else
    {
      v68 = v2;
      v124 = 0.0;
      v126 = 0;
      if ([v25 getMoneyAmount:&v124 currency:&v126])
      {
        v40 = v126;
        if (!v126 || (v126 = 0, v127 = 0, v69 = v40, sub_21DE08C08(), !v127))
        {
        }

        sub_21DE08B28();
        v92 = v120;
        v33[4](v120, v4, v68);
        v93 = *MEMORY[0x277D789E0];
        v94 = sub_21DE08B48();
        v95 = *(v94 - 8);
        (*(v95 + 104))(v92, v93, v94);
        (*(v95 + 56))(v92, 0, 1, v94);
        goto LABEL_59;
      }
    }

    v70 = sub_21DE08B48();
    (*(*(v70 - 8) + 56))(v120, 1, 1, v70);
    return;
  }

  if (v125 <= 3u)
  {
    if (v125 > 1u)
    {
      if (v125 != 2)
      {
        v126 = 0;
        v124 = 0.0;
        [v25 getTrackingNumber:&v126 carrier:&v124];
        v63 = v124;
        v64 = v126;
        if (v126)
        {
          v126 = 0;
          v127 = 0;
          v65 = v64;
          v66 = *&v63;
          v67 = v65;
          sub_21DE08C08();

          if (v127)
          {
            v118 = v126;
          }

          else
          {
          }
        }

        else
        {

          v86 = *&v63;
        }

        if (v63 == 0.0 || (v126 = 0, v127 = 0, sub_21DE08C08(), *&v63, !v127))
        {
        }

        v96 = v107;
        sub_21DE08B68();
        v97 = v120;
        (*(v108 + 32))(v120, v96, v109);
        v98 = *MEMORY[0x277D78A00];
        v99 = sub_21DE08B48();
        v100 = *(v99 - 8);
        (*(v100 + 104))(v97, v98, v99);
        (*(v100 + 56))(v97, 0, 1, v99);

        return;
      }

      v117[7](v16, 1, 1, v5);

      sub_21DE08AD8();
      v38 = v120;
      (*(v106 + 32))(v120, v19, v17);
      v39 = MEMORY[0x277D789C8];
LABEL_26:
      v47 = *v39;
      v48 = sub_21DE08B48();
      v49 = *(v48 - 8);
      (*(v49 + 104))(v38, v47, v48);
      (*(v49 + 56))(v38, 0, 1, v48);
      return;
    }

    if (!v125)
    {
      v126 = v118;
      v127 = v24;

      v38 = v120;
      sub_21DE08B58();
      v39 = MEMORY[0x277D789A8];
      goto LABEL_26;
    }

    v126 = 0;
    v123 = 0;
    v124 = 0.0;
    v121 = 0;
    v122 = 0;
    [v25 getStreet:&v126 city:&v124 state:&v123 zip:&v122 country:&v121];
    v50 = v122;
    v51 = v123;
    v52 = v124;
    v53 = v126;
    v118 = v126;
    v119 = v121;
    if (v126)
    {
      v126 = 0;
      v127 = 0;
      v54 = v53;
      v55 = v119;
      v56 = v50;
      v57 = v51;
      v58 = *&v52;
      v59 = v54;
      sub_21DE08C08();

      v60 = v126;
      if (!v127)
      {
        v60 = 0;
      }

      v117 = v60;
      if (v52 != 0.0)
      {
LABEL_31:
        v126 = 0;
        v127 = 0;
        sub_21DE08C08();

        v61 = v126;
        if (!v127)
        {
          v61 = 0;
        }

        v112 = v61;
        if (v51)
        {
LABEL_34:
          v126 = 0;
          v127 = 0;
          sub_21DE08C08();

          if (v50)
          {
            goto LABEL_35;
          }

          goto LABEL_51;
        }

LABEL_50:
        if (v50)
        {
LABEL_35:
          v126 = 0;
          v127 = 0;
          sub_21DE08C08();

          if (!v119)
          {
LABEL_52:
            v79 = v114;
            sub_21DE08B08();
            v81 = v115;
            v80 = v116;
            (*(v115 + 16))(v113, v79, v116);
            v82 = v120;
            sub_21DE08B58();
            (*(v81 + 8))(v79, v80);
            v83 = *MEMORY[0x277D789D8];
            v84 = sub_21DE08B48();
            v85 = *(v84 - 8);
            (*(v85 + 104))(v82, v83, v84);
            (*(v85 + 56))(v82, 0, 1, v84);

            return;
          }

LABEL_36:
          v126 = 0;
          v127 = 0;
          v62 = v119;
          sub_21DE08C08();

          goto LABEL_52;
        }

LABEL_51:
        if (!v119)
        {
          goto LABEL_52;
        }

        goto LABEL_36;
      }
    }

    else
    {
      v75 = v119;
      v76 = v50;
      v77 = v51;
      v78 = *&v52;
      v117 = 0;
      if (v52 != 0.0)
      {
        goto LABEL_31;
      }
    }

    v112 = 0;
    if (v51)
    {
      goto LABEL_34;
    }

    goto LABEL_50;
  }

  if (v125 - 6 < 3)
  {
    v26 = [v25 url];
    if (v26)
    {
      v27 = v26;
      sub_21DE08988();

      v28 = v117[4];
      (v28)(v10, v8, v5);
      v29 = v120;
      (v28)(v120, v10, v5);
      v30 = *MEMORY[0x277D78A08];
      v31 = sub_21DE08B48();
      v32 = *(v31 - 8);
      (*(v32 + 104))(v29, v30, v31);
      (*(v32 + 56))(v29, 0, 1, v31);
      return;
    }

    goto LABEL_7;
  }

  if (v125 == 4)
  {
    v126 = 0;
    v124 = 0.0;
    [v25 getFlightNumber:&v126 airline:&v124];
    v42 = v124;
    v43 = v126;
    if (v126)
    {
      v126 = 0;
      v127 = 0;
      v44 = v43;
      v45 = *&v42;
      v46 = v44;
      sub_21DE08C08();

      if (!v127)
      {
      }
    }

    else
    {

      v87 = *&v42;
    }

    if (v42 == 0.0 || (v126 = 0, v127 = 0, sub_21DE08C08(), *&v42, !v127))
    {
    }

    v101 = v110;
    sub_21DE08AB8();
    v102 = v120;
    (*(v111 + 32))(v120, v101, v112);
    v103 = *MEMORY[0x277D789C0];
    v104 = sub_21DE08B48();
    v105 = *(v104 - 8);
    (*(v105 + 104))(v102, v103, v104);
    (*(v105 + 56))(v102, 0, 1, v104);
  }

  else
  {
    v71 = v120;
    *v120 = v118;
    v71[1] = v24;
    v72 = *MEMORY[0x277D789F8];
    v73 = sub_21DE08B48();
    v74 = *(v73 - 8);
    (*(v74 + 104))(v71, v72, v73);
    (*(v74 + 56))(v71, 0, 1, v73);
  }
}

uint64_t sub_21DDFF128(uint64_t a1)
{
  sub_21DE08C38();
}

unint64_t sub_21DDFF228@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21DE06834(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21DDFF258(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701869940;
  v5 = 0xD000000000000011;
  v6 = 0x800000021DE0ADA0;
  v7 = 0xE900000000000072;
  v8 = 0x6564724F74726F73;
  if (v2 != 4)
  {
    v8 = 0xD000000000000013;
    v7 = 0x800000021DE0ADC0;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x74786554776172;
  if (v2 != 1)
  {
    v10 = 0x676E6970756F7267;
    v9 = 0xEC00000061746144;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_21DDFF320()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0xD000000000000011;
  v4 = 0x6564724F74726F73;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x74786554776172;
  if (v1 != 1)
  {
    v5 = 0x676E6970756F7267;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_21DDFF3E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21DE06834(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21DDFF418(uint64_t a1)
{
  v2 = sub_21DE00F40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DDFF454(uint64_t a1)
{
  v2 = sub_21DE00F40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SemanticDataDetector.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90E90, &qword_21DE09AB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE00F40();
  sub_21DE08F58();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v22 = 5;
  sub_21DDFA344();
  sub_21DE08E98();
  v10 = v19;
  v9 = v20;
  sub_21DDFA894(0, &qword_27CE90DE0, 0x277CCAAC8);
  sub_21DDFA894(0, &qword_2812229C8, 0x277D04218);
  v18 = sub_21DE08D08();
  v22 = 0;
  sub_21DE00F94();
  sub_21DE08E98();
  v21 = v19;
  LOBYTE(v19) = 1;
  result = sub_21DE08E88();
  v16 = result;
  v17 = v12;
  if (v18)
  {
    v15 = *(v6 + 8);
    v13 = v18;
    v15(v8, v5);
    sub_21DDFA398(v10, v9);

    *a2 = v21;
    v14 = v17;
    *(a2 + 8) = v16;
    *(a2 + 16) = v14;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = v13;
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  __break(1u);
  return result;
}

uint64_t SemanticDataDetector.encode(to:)(void *a1)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90EA8, &qword_21DE09AC0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v21 = *(v1 + 2);
  v22 = v9;
  v20 = *(v1 + 3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE00F40();
  sub_21DE08F68();
  LOBYTE(v24[0]) = v8;
  v23 = 0;
  sub_21DE00FE8();
  sub_21DE08ED8();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v11 = v20;
  LOBYTE(v24[0]) = 1;
  sub_21DE08EC8();
  v12 = objc_opt_self();
  v24[0] = 0;
  v13 = [v12 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:v24];
  v14 = v24[0];
  if (v13)
  {
    v15 = sub_21DE089A8();
    v17 = v16;

    v24[0] = v15;
    v24[1] = v17;
    v23 = 5;
    sub_21DDFA4B8();
    sub_21DE08ED8();
    (*(v5 + 8))(v7, v4);
    return sub_21DDFA398(v15, v17);
  }

  else
  {
    v18 = v14;
    sub_21DE08978();

    swift_willThrow();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t CROutputRegion.createGroupingData()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x277D84F98];
  v1 = sub_21DE08C18();
  v3 = v2;
  v4 = sub_21DE08C18();
  v6 = v5;
  v7 = sub_21DE08C18();
  v9 = v8;
  v10 = sub_21DE08C18();
  v12 = v11;
  v13 = swift_allocObject();
  v13[2] = v1;
  v13[3] = v3;
  v13[4] = v4;
  v13[5] = v6;
  v13[6] = v7;
  v13[7] = v9;
  v13[8] = v18;
  v13[9] = v10;
  v13[10] = v12;
  v13[11] = v0;
  aBlock[4] = sub_21DE0103C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21DE00278;
  aBlock[3] = &block_descriptor;
  v14 = _Block_copy(aBlock);
  v15 = v18;

  [v15 enumerateContentsWithTypes:4096 usingBlock:v14];
  _Block_release(v14);
  swift_beginAccess();
  v16 = *(v0 + 16);

  return v16;
}

void *sub_21DDFFC38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v20 = result;
    v73 = a3;
    v74 = a4;
    v77 = a7;
    v71 = a11;
    v70 = a10;
    v78 = a1;
    v21 = [v20 dataDetectorsOutputRegions];
    sub_21DDFA894(0, &qword_2812229B0, 0x277D70070);
    v22 = sub_21DE08C88();

    *&v83 = MEMORY[0x277D84F90];
    v79 = a8;
    v75 = a5;
    v76 = a6;
    v72 = v20;
    v23 = v22 & 0xFFFFFFFFFFFFFF8;
    if (v22 >> 62)
    {
LABEL_50:
      v24 = sub_21DE08E18();
    }

    else
    {
      v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = 0;
    v81 = MEMORY[0x277D84F90];
    while (v24 != v25)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x223D4A330](v25, v22);
      }

      else
      {
        if (v25 >= *(v23 + 16))
        {
          goto LABEL_45;
        }

        v26 = *(v22 + 8 * v25 + 32);
      }

      v27 = v26;
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v29 = [v26 ddResult];

      ++v25;
      if (v29)
      {
        MEMORY[0x223D4A1D0]();
        if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DE08C98();
        }

        sub_21DE08CA8();
        v81 = v83;
        v25 = v28;
      }
    }

    v30 = [v78 text];
    if (v30)
    {
      v31 = v30;
      v22 = sub_21DE08C18();
      v33 = v32;
    }

    else
    {
      v22 = 0;
      v33 = 0;
    }

    v34 = [v72 groupType];
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90E18, &qword_21DE09680);
    *&v83 = v81;
    sub_21DDFB008(&v83, v82);

    v35 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_21DE06534(v82, v73, v74, isUniquelyReferenced_nonNull_native);
    v85 = v35;
    if (v33)
    {
      v84 = MEMORY[0x277D837D0];
      *&v83 = v22;
      *(&v83 + 1) = v33;
      sub_21DDFB008(&v83, v82);
      v37 = swift_isUniquelyReferenced_nonNull_native();
      sub_21DE06534(v82, v75, v76, v37);
    }

    else
    {
      sub_21DE051A8(&v83, v75, v76);
      sub_21DDFD750(&v83, &qword_27CE911D8, &qword_21DE0ACF0);
      v35 = v85;
    }

    type metadata accessor for CRDataDetectorsGroupType(0);
    v84 = v38;
    *&v83 = v34;
    sub_21DDFB008(&v83, v82);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    sub_21DE06534(v82, v77, v79, v39);
    v23 = v35;
    v85 = v35;
    v40 = [a9 recognizedLocale];
    if (v40)
    {
      v41 = v40;
      v42 = sub_21DE08C18();
      v44 = v43;

      if ([a9 confidence] == 2)
      {
        v84 = MEMORY[0x277D837D0];
        *&v83 = v42;
        *(&v83 + 1) = v44;
        sub_21DDFB008(&v83, v82);
        v45 = swift_isUniquelyReferenced_nonNull_native();
        sub_21DE06534(v82, v70, v71, v45);
      }

      else
      {
      }
    }

    v46 = v81;
    if (v81 >> 62)
    {
      v69 = sub_21DE08E18();
      v46 = v81;
      v47 = v69;
      if (v69)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v47 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v47)
      {
LABEL_27:
        v48 = 0;
        v79 = v46 & 0xFFFFFFFFFFFFFF8;
        a9 = (v46 & 0xC000000000000001);
        do
        {
          if (a9)
          {
            v49 = MEMORY[0x223D4A330](v48);
          }

          else
          {
            if (v48 >= *(v79 + 16))
            {
              goto LABEL_49;
            }

            v49 = *(v46 + 8 * v48 + 32);
          }

          v50 = v49;
          v51 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            goto LABEL_46;
          }

          v22 = [v49 range];
          v53 = v52;
          swift_beginAccess();
          v54 = v23;

          v23 = swift_isUniquelyReferenced_nonNull_native();
          *&v82[0] = *(a12 + 16);
          v55 = *&v82[0];
          *(a12 + 16) = 0x8000000000000000;
          v56 = sub_21DE05290(v22, v53);
          v58 = *(v55 + 16);
          v59 = (v57 & 1) == 0;
          v60 = __OFADD__(v58, v59);
          v61 = v58 + v59;
          if (v60)
          {
            goto LABEL_47;
          }

          v62 = v57;
          if (*(v55 + 24) >= v61)
          {
            if ((v23 & 1) == 0)
            {
              v68 = v56;
              sub_21DE05D3C();
              v56 = v68;
            }
          }

          else
          {
            sub_21DE05640(v61, v23);
            v56 = sub_21DE05290(v22, v53);
            if ((v62 & 1) != (v63 & 1))
            {
              type metadata accessor for _NSRange(0);
              result = sub_21DE08EF8();
              __break(1u);
              return result;
            }
          }

          v23 = v54;
          v64 = *&v82[0];
          if (v62)
          {
            *(*(*&v82[0] + 56) + 8 * v56) = v54;
          }

          else
          {
            *(*&v82[0] + 8 * (v56 >> 6) + 64) |= 1 << v56;
            v65 = (v64[6] + 16 * v56);
            *v65 = v22;
            v65[1] = v53;
            *(v64[7] + 8 * v56) = v54;
            v66 = v64[2];
            v60 = __OFADD__(v66, 1);
            v67 = v66 + 1;
            if (v60)
            {
              goto LABEL_48;
            }

            v64[2] = v67;
          }

          *(a12 + 16) = v64;
          swift_endAccess();

          ++v48;
          v46 = v81;
        }

        while (v51 != v47);
      }
    }
  }

  return result;
}

void sub_21DE00278(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void *Date.futureReferenceDates.getter()
{
  v0 = sub_21DE089E8();
  v44 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v47 = v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90EB8, &qword_21DE09AC8);
  v2 = *(v40 - 8);
  v3 = MEMORY[0x28223BE20](v40);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v46 = v35 - v6;
  v42 = sub_21DE08A48();
  v7 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DE08A58();
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DE08A38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90EC0, &qword_21DE09AD0);
  v13 = *(v2 + 72);
  v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v35[1] = 2 * v13;
  v36 = swift_allocObject();
  v43 = v36 + v14;
  v15 = *MEMORY[0x277CC9968];
  v35[0] = *(v7 + 104);
  v16 = v42;
  (v35[0])(v9, v15, v42);
  sub_21DE08A28();
  v17 = *(v7 + 8);
  v41 = v7 + 8;
  v17(v9, v16);
  v18 = v16;
  v19 = v35[0];
  (v35[0])(v9, *MEMORY[0x277CC9998], v18);
  v45 = v13;
  v20 = v43;
  sub_21DE08A28();
  v21 = v42;
  v17(v9, v42);
  v19(v9, *MEMORY[0x277CC9988], v21);
  v22 = v20;
  v37 = v12;
  sub_21DE08A28();
  v17(v9, v21);
  v23 = (v44 + 48);
  v24 = (v44 + 32);
  v25 = MEMORY[0x277D84F90];
  v26 = 3;
  v27 = v22;
  v28 = v0;
  do
  {
    v29 = v46;
    sub_21DE01090(v27, v46);
    sub_21DE01100(v29, v5);
    if ((*v23)(v5, 1, v0) == 1)
    {
      sub_21DDFD750(v5, &qword_27CE90EB8, &qword_21DE09AC8);
    }

    else
    {
      v30 = *v24;
      (*v24)(v47, v5, v0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_21DDFD29C(0, v25[2] + 1, 1, v25);
      }

      v32 = v25[2];
      v31 = v25[3];
      if (v32 >= v31 >> 1)
      {
        v25 = sub_21DDFD29C((v31 > 1), v32 + 1, 1, v25);
      }

      v25[2] = v32 + 1;
      v33 = v25 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v32;
      v0 = v28;
      v30(v33, v47, v28);
    }

    v27 += v45;
    --v26;
  }

  while (v26);
  (*(v38 + 8))(v37, v39);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v25;
}

void _sSo15DDScannerResultC31VisualIntelligenceCoreDDSupportE12semanticTypeAC020SemanticDataDetectorH0Ovg_0(_BYTE *a1@<X8>)
{
  v3 = [v1 category] - 2;
  if (v3 < 6 && ((0x27u >> v3) & 1) != 0)
  {
    v4 = 0xD0101020100uLL >> (8 * v3);
  }

  else
  {
    v5 = [v1 type];
    if (!v5)
    {
      sub_21DE08C18();
      v5 = sub_21DE08BF8();
    }

    v6 = *MEMORY[0x277D040D0];
    if (*MEMORY[0x277D040D0])
    {
      type metadata accessor for CFString(0);
      sub_21DE08878(&qword_2812229F0, type metadata accessor for CFString, &unk_21DE0985C);
      v7 = v5;
      v8 = v6;
      v9 = sub_21DE08A78();

      if (v9)
      {

        LOBYTE(v4) = 4;
        goto LABEL_40;
      }
    }

    else
    {
      v10 = v5;
    }

    v11 = *MEMORY[0x277D041B0];
    if (*MEMORY[0x277D041B0] && (type metadata accessor for CFString(0), sub_21DE08878(&qword_2812229F0, type metadata accessor for CFString, &unk_21DE0985C), v12 = v5, v13 = v11, v14 = sub_21DE08A78(), v13, v12, (v14 & 1) != 0))
    {

      LOBYTE(v4) = 3;
    }

    else
    {
      v15 = *MEMORY[0x277D04158];
      if (*MEMORY[0x277D04158] && (type metadata accessor for CFString(0), sub_21DE08878(&qword_2812229F0, type metadata accessor for CFString, &unk_21DE0985C), v16 = v5, v17 = v15, v18 = sub_21DE08A78(), v17, v16, (v18 & 1) != 0))
      {

        LOBYTE(v4) = 5;
      }

      else
      {
        v19 = *MEMORY[0x277D04138];
        if (*MEMORY[0x277D04138])
        {
          type metadata accessor for CFString(0);
          sub_21DE08878(&qword_2812229F0, type metadata accessor for CFString, &unk_21DE0985C);
          v20 = v5;
          v21 = v19;
          v22 = sub_21DE08A78();

          if (v22)
          {
            goto LABEL_18;
          }
        }

        v23 = *MEMORY[0x277D040F8];
        if (*MEMORY[0x277D040F8] && (type metadata accessor for CFString(0), sub_21DE08878(&qword_2812229F0, type metadata accessor for CFString, &unk_21DE0985C), v24 = v5, v25 = v23, v26 = sub_21DE08A78(), v25, v24, (v26 & 1) != 0) || (v27 = *MEMORY[0x277D041C8]) != 0 && (type metadata accessor for CFString(0), sub_21DE08878(&qword_2812229F0, type metadata accessor for CFString, &unk_21DE0985C), v24 = v5, v28 = v27, v29 = sub_21DE08A78(), v28, v24, (v29 & 1) != 0))
        {

          LOBYTE(v4) = 6;
          goto LABEL_40;
        }

        v30 = *MEMORY[0x277D04130];
        if (*MEMORY[0x277D04130])
        {
          type metadata accessor for CFString(0);
          sub_21DE08878(&qword_2812229F0, type metadata accessor for CFString, &unk_21DE0985C);
          v31 = v5;
          v32 = v30;
          v33 = sub_21DE08A78();

          if (v33)
          {

            LOBYTE(v4) = 7;
            goto LABEL_40;
          }
        }

        v34 = *MEMORY[0x277D040F0];
        if (*MEMORY[0x277D040F0] && (type metadata accessor for CFString(0), sub_21DE08878(&qword_2812229F0, type metadata accessor for CFString, &unk_21DE0985C), v20 = v5, v35 = v34, v36 = sub_21DE08A78(), v35, v20, (v36 & 1) != 0))
        {
LABEL_18:

          LOBYTE(v4) = 8;
        }

        else
        {
          v37 = *MEMORY[0x277D040C8];
          if (*MEMORY[0x277D040C8] && (type metadata accessor for CFString(0), sub_21DE08878(&qword_2812229F0, type metadata accessor for CFString, &unk_21DE0985C), v38 = v5, v39 = v37, v40 = sub_21DE08A78(), v39, v38, (v40 & 1) != 0))
          {

            LOBYTE(v4) = 9;
          }

          else
          {
            v41 = *MEMORY[0x277D04168];
            if (!*MEMORY[0x277D04168] || (type metadata accessor for CFString(0), sub_21DE08878(&qword_2812229F0, type metadata accessor for CFString, &unk_21DE0985C), v42 = v5, v43 = v41, v44 = sub_21DE08A78(), v43, v42, (v44 & 1) == 0))
            {
              v45 = *MEMORY[0x277D04140];
              v46 = *MEMORY[0x277D04140];

              if (v45)
              {
                type metadata accessor for CFString(0);
                sub_21DE08878(&qword_2812229F0, type metadata accessor for CFString, &unk_21DE0985C);
                v47 = sub_21DE08A78();

                if (v47)
                {
                  LOBYTE(v4) = 11;
                  goto LABEL_40;
                }
              }

              else
              {
              }

              LOBYTE(v4) = 15;
              goto LABEL_40;
            }

            LOBYTE(v4) = 10;
          }
        }
      }
    }
  }

LABEL_40:
  *a1 = v4;
}

unint64_t sub_21DE00F40()
{
  result = qword_27CE90E98;
  if (!qword_27CE90E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90E98);
  }

  return result;
}

unint64_t sub_21DE00F94()
{
  result = qword_27CE90EA0;
  if (!qword_27CE90EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90EA0);
  }

  return result;
}

unint64_t sub_21DE00FE8()
{
  result = qword_27CE90EB0;
  if (!qword_27CE90EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90EB0);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21DE01090(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90EB8, &qword_21DE09AC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DE01100(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90EB8, &qword_21DE09AC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DDScannerResult.extractDate(referenceDate:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v68 = a1;
  v66 = a2;
  v77 = *MEMORY[0x277D85DE8];
  v3 = sub_21DE089E8();
  v75 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v67 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v62 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v73 = &v62 - v10;
  MEMORY[0x28223BE20](v9);
  v71 = &v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90EB8, &qword_21DE09AC8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v62 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v62 - v19;
  v76 = 0;
  v74 = v2;
  v21 = [v2 type];
  v22 = sub_21DE08C18();
  if (!*MEMORY[0x277D040A8])
  {
LABEL_33:
    __break(1u);
  }

  v24 = v22;
  v25 = v23;

  if (v24 != sub_21DE08C18() || v25 != v26)
  {
    v27 = sub_21DE08EE8();

    if (v27)
    {
      goto LABEL_6;
    }

    v40 = [v74 type];
    result = sub_21DE08C18();
    if (!*MEMORY[0x277D040B0])
    {
      __break(1u);
      return result;
    }

    v43 = result;
    v44 = v42;

    if (v43 != sub_21DE08C18() || v44 != v45)
    {
      v46 = sub_21DE08EE8();

      if ((v46 & 1) == 0)
      {
        v47 = *(v75 + 56);
        v48 = v66;

        return v47(v48, 1, 1, v3);
      }

      goto LABEL_6;
    }
  }

LABEL_6:
  v28 = sub_21DE089C8();
  v29 = [v74 dateFromReferenceDate:v28 referenceTimezone:0 timezoneRef:0 allDayRef:&v76];

  if (v29)
  {
    sub_21DE089D8();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v31 = v15;
  v63 = *(v75 + 56);
  v64 = v75 + 56;
  v63(v18, v30, 1, v3);
  sub_21DE01100(v18, v20);
  sub_21DE01090(v20, v15);
  v32 = (*(v75 + 48))(v15, 1, v3);
  v72 = v3;
  if (v32 == 1)
  {
    v65 = v20;
    v33 = v8;
    sub_21DDFD750(v15, &qword_27CE90EB8, &qword_21DE09AC8);
  }

  else
  {
    v34 = v66;
    v35 = *(v75 + 32);
    v36 = v71;
    v35(v71, v31, v3);
    sub_21DE089B8();
    if (v37 > 0.0)
    {
      sub_21DDFD750(v20, &qword_27CE90EB8, &qword_21DE09AC8);
      v35(v34, v36, v3);
      v38 = v34;
      v39 = v3;
      return (v63)(v38, 0, 1, v39);
    }

    v65 = v20;
    v33 = v8;
    (*(v75 + 8))(v36, v3);
  }

  v49 = Date.futureReferenceDates.getter();
  v50 = v75;
  v71 = v49[2];
  if (!v71)
  {
LABEL_28:

    return sub_21DE01100(v65, v66);
  }

  v51 = 0;
  v70 = v49 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
  v69 = v75 + 16;
  v52 = (v75 + 32);
  v53 = v72;
  while (1)
  {
    if (v51 >= v49[2])
    {
      __break(1u);
      goto LABEL_33;
    }

    v54 = v73;
    (*(v50 + 16))(v73, &v70[*(v50 + 72) * v51], v53);
    v55 = sub_21DE089C8();
    v56 = *(v75 + 8);
    v56(v54, v53);
    v57 = [v74 dateFromReferenceDate:v55 referenceTimezone:0 timezoneRef:0 allDayRef:&v76];

    if (v57)
    {
      break;
    }

LABEL_23:
    ++v51;
    v50 = v75;
    if (v71 == v51)
    {
      goto LABEL_28;
    }
  }

  v58 = v67;
  sub_21DE089D8();

  v59 = *v52;
  (*v52)(v33, v58, v53);
  sub_21DE089B8();
  if (v60 <= 0.0)
  {
    v56(v33, v53);
    goto LABEL_23;
  }

  sub_21DDFD750(v65, &qword_27CE90EB8, &qword_21DE09AC8);

  v61 = v66;
  v59(v66, v33, v53);
  v38 = v61;
  v39 = v53;
  return (v63)(v38, 0, 1, v39);
}

uint64_t DDScannerResult.extractDateComponents(referenceDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v66 = a1;
  v76 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90EC8, &qword_21DE09AD8);
  MEMORY[0x28223BE20](v5 - 8);
  v61 = &v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90ED0, &qword_21DE09AE0);
  MEMORY[0x28223BE20](v7 - 8);
  v60 = &v58 - v8;
  v9 = sub_21DE08968();
  v70 = *(v9 - 8);
  v71 = v9;
  MEMORY[0x28223BE20](v9);
  v65 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_21DE08A58();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v72 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21DE089E8();
  v67 = *(v12 - 8);
  v68 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v69 = &v58 - v16;
  v17 = [v2 type];
  if (!v17)
  {
    sub_21DE08C18();
    v17 = sub_21DE08BF8();
  }

  v74 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90ED8, &qword_21DE09AE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DE09A90;
  v19 = *MEMORY[0x277D040A8];
  *(inited + 32) = *MEMORY[0x277D040A8];
  v20 = *MEMORY[0x277D04198];
  v21 = *MEMORY[0x277D040B0];
  *(inited + 40) = *MEMORY[0x277D04198];
  *(inited + 48) = v21;
  v75 = v17;
  MEMORY[0x28223BE20](inited);
  v56 = &v75;
  v23 = v22;
  v73 = v17;
  v62 = v19;
  v59 = v20;
  v24 = sub_21DE0264C(sub_21DE06814, &v54, inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90EE0, &qword_21DE09AF0);
  swift_arrayDestroy();
  if (v24)
  {
    v25 = sub_21DE089C8();
    v26 = [v3 dateFromReferenceDate:v25 referenceTimezone:0 timezoneRef:0 allDayRef:&v74];

    if (v26)
    {
      v66 = a2;
      sub_21DE089D8();

      (*(v67 + 32))(v69, v15, v68);
      sub_21DE08A38();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90EE8, &qword_21DE09AF8);
      v27 = sub_21DE08A48();
      v28 = *(v27 - 8);
      v29 = *(v28 + 72);
      v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_21DE09AA0;
      v32 = v31 + v30;
      v33 = *(v28 + 104);
      v33(v32, *MEMORY[0x277CC9988], v27);
      v33(v32 + v29, *MEMORY[0x277CC9998], v27);
      v33(v32 + 2 * v29, *MEMORY[0x277CC9968], v27);
      v33(v32 + 3 * v29, *MEMORY[0x277CC9980], v27);
      v33(v32 + 4 * v29, *MEMORY[0x277CC99A0], v27);
      sub_21DE06880(v31);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v34 = v65;
      sub_21DE08A18();

      v35 = v73;
      if (v19)
      {
        type metadata accessor for CFString(0);
        sub_21DE08878(&qword_2812229F0, type metadata accessor for CFString, &unk_21DE0985C);
        v36 = v62;
        v37 = sub_21DE08A78();

        if (v37)
        {

          v38 = v63;
          v39 = v60;
          v40 = v64;
          (*(v63 + 16))(v60, v72, v64);
          (*(v38 + 56))(v39, 0, 1, v40);
          v41 = sub_21DE08A68();
          (*(*(v41 - 8) + 56))(v61, 1, 1, v41);
          v62 = sub_21DE08928();
          v59 = sub_21DE08938();
          sub_21DE08908();
          LOBYTE(v57) = 1;
          v56 = 0;
          LOBYTE(v55) = 1;
          v54 = 0;
          a2 = v66;
          sub_21DE08958();

          v43 = v70;
          v42 = v71;
          (*(v70 + 8))(v34, v71);
          (*(v38 + 8))(v72, v40);
LABEL_12:
          (*(v67 + 8))(v69, v68);
LABEL_15:
          v46 = v42;
          v45 = 0;
          return (*(v43 + 56))(a2, v45, 1, v46);
        }
      }

      a2 = v66;
      if (v20)
      {
        type metadata accessor for CFString(0);
        sub_21DE08878(&qword_2812229F0, type metadata accessor for CFString, &unk_21DE0985C);
        v47 = v59;
        v48 = sub_21DE08A78();

        if (v48)
        {
          v49 = v63;
          v50 = v60;
          v51 = v64;
          (*(v63 + 16))(v60, v72, v64);
          (*(v49 + 56))(v50, 0, 1, v51);
          v52 = sub_21DE08A68();
          (*(*(v52 - 8) + 56))(v61, 1, 1, v52);
          sub_21DE08918();
          sub_21DE08948();
          LOBYTE(v57) = 1;
          v56 = 0;
          LOBYTE(v55) = 1;
          v54 = 0;
          sub_21DE08958();

          v43 = v70;
          v42 = v71;
          (*(v70 + 8))(v34, v71);
          (*(v49 + 8))(v72, v51);
          goto LABEL_12;
        }
      }

      else
      {
      }

      (*(v63 + 8))(v72, v64);
      (*(v67 + 8))(v69, v68);
      v43 = v70;
      v42 = v71;
      (*(v70 + 32))(a2, v34, v71);
      goto LABEL_15;
    }
  }

  v44 = v73;

  v45 = 1;
  v43 = v70;
  v46 = v71;
  return (*(v43 + 56))(a2, v45, 1, v46);
}

uint64_t SemanticDataDetectorType.vlType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (v3 == 6)
  {
    v4 = MEMORY[0x277D796F0];
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    v4 = MEMORY[0x277D796F8];
    goto LABEL_7;
  }

  if (!*v1)
  {
    v4 = MEMORY[0x277D796E8];
LABEL_7:
    v5 = *v4;
    v6 = sub_21DE08AA8();
    v13 = *(v6 - 8);
    (*(v13 + 104))(a1, v5, v6);
    v7 = *(v13 + 56);
    v8 = a1;
    v9 = 0;
    v10 = v6;
    goto LABEL_9;
  }

  v11 = sub_21DE08AA8();
  v7 = *(*(v11 - 8) + 56);
  v10 = v11;
  v8 = a1;
  v9 = 1;
LABEL_9:

  return v7(v8, v9, 1, v10);
}

unint64_t SemanticDataDetectorType.defaultSystemImageName.getter()
{
  result = 0;
  switch(*v0)
  {
    case 1:
      result = 7364973;
      break;
    case 2:
      result = 0x7261646E656C6163;
      break;
    case 3:
      result = 0x676E697070696873;
      break;
    case 4:
      result = 0x656E616C70726961;
      break;
    case 5:
      result = 6650213;
      break;
    case 6:
      result = 0x697261666173;
      break;
    case 7:
    case 9:
      result = 0x65706F6C65766E65;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 0xA:
    case 0xB:
      result = 0xD000000000000013;
      break;
    case 0xC:
      result = 0x65646F637271;
      break;
    case 0xD:
      result = 0x6E6F73726570;
      break;
    case 0xE:
      result = 0xD000000000000018;
      break;
    case 0xF:
      return result;
    default:
      result = 0x656E6F6870;
      break;
  }

  return result;
}

Swift::Bool __swiftcall SemanticDataDetectorType.isMember(of:)(Swift::OpaquePointer of)
{
  v2 = *(of._rawValue + 2);
  v3 = of._rawValue + 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != *v1);
  return v4 != 0;
}

uint64_t sub_21DE0264C(uint64_t (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = *v6++;
      v13 = v8;
      v9 = v8;
      v10 = a1(&v13);

      if (v3)
      {
        break;
      }

      v11 = v7-- == 0;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

unint64_t sub_21DE026F0(char a1)
{
  result = 0x6D754E656E6F6870;
  switch(a1)
  {
    case 1:
      result = 0x73736572646461;
      break;
    case 2:
      result = 0x7261646E656C6163;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x754E746867696C66;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x4C5255626577;
      break;
    case 7:
      result = 0x4C52556C69616DLL;
      break;
    case 8:
      result = 0x55636972656E6567;
      break;
    case 9:
      result = 0x6C69616D65;
      break;
    case 10:
      result = 0x6C61636973796870;
      break;
    case 11:
      result = 0x79656E6F6DLL;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0x614E7265706F7270;
      break;
    case 14:
      result = 0x65646F43707061;
      break;
    case 15:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21DE028D8(uint64_t a1)
{
  v2 = sub_21DE0708C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE02914(uint64_t a1)
{
  v2 = sub_21DE0708C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE02950(uint64_t a1)
{
  v2 = sub_21DE06C48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE0298C(uint64_t a1)
{
  v2 = sub_21DE06C48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE029C8(uint64_t a1)
{
  v2 = sub_21DE07038();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE02A04(uint64_t a1)
{
  v2 = sub_21DE07038();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE02A48@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21DE0835C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21DE02A7C(uint64_t a1)
{
  v2 = sub_21DE06BA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE02AB8(uint64_t a1)
{
  v2 = sub_21DE06BA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE02AF4(uint64_t a1)
{
  v2 = sub_21DE06DEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE02B30(uint64_t a1)
{
  v2 = sub_21DE06DEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE02B6C(uint64_t a1)
{
  v2 = sub_21DE06F90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE02BA8(uint64_t a1)
{
  v2 = sub_21DE06F90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE02BE4(uint64_t a1)
{
  v2 = sub_21DE06E40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE02C20(uint64_t a1)
{
  v2 = sub_21DE06E40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE02C5C(uint64_t a1)
{
  v2 = sub_21DE06F3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE02C98(uint64_t a1)
{
  v2 = sub_21DE06F3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE02CD4(uint64_t a1)
{
  v2 = sub_21DE06CF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE02D10(uint64_t a1)
{
  v2 = sub_21DE06CF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE02D4C(uint64_t a1)
{
  v2 = sub_21DE06E94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE02D88(uint64_t a1)
{
  v2 = sub_21DE06E94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE02DC4(uint64_t a1)
{
  v2 = sub_21DE06D44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE02E00(uint64_t a1)
{
  v2 = sub_21DE06D44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE02E3C(uint64_t a1)
{
  v2 = sub_21DE070E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE02E78(uint64_t a1)
{
  v2 = sub_21DE070E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE02EB4(uint64_t a1)
{
  v2 = sub_21DE06D98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE02EF0(uint64_t a1)
{
  v2 = sub_21DE06D98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE02F2C(uint64_t a1)
{
  v2 = sub_21DE06C9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE02F68(uint64_t a1)
{
  v2 = sub_21DE06C9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE02FA4(uint64_t a1)
{
  v2 = sub_21DE06FE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE02FE0(uint64_t a1)
{
  v2 = sub_21DE06FE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE0301C(uint64_t a1)
{
  v2 = sub_21DE06BF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE03058(uint64_t a1)
{
  v2 = sub_21DE06BF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE03094(uint64_t a1)
{
  v2 = sub_21DE06EE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE030D0(uint64_t a1)
{
  v2 = sub_21DE06EE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SemanticDataDetectorType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90EF0, &qword_21DE09B00);
  v94 = *(v4 - 8);
  v95 = v4;
  MEMORY[0x28223BE20](v4);
  v93 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90EF8, &qword_21DE09B08);
  v91 = *(v6 - 8);
  v92 = v6;
  MEMORY[0x28223BE20](v6);
  v90 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90F00, &qword_21DE09B10);
  v88 = *(v8 - 8);
  v89 = v8;
  MEMORY[0x28223BE20](v8);
  v87 = &v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90F08, &qword_21DE09B18);
  v85 = *(v10 - 8);
  v86 = v10;
  MEMORY[0x28223BE20](v10);
  v84 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90F10, &qword_21DE09B20);
  v82 = *(v12 - 8);
  v83 = v12;
  MEMORY[0x28223BE20](v12);
  v81 = &v50 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90F18, &qword_21DE09B28);
  v79 = *(v14 - 8);
  v80 = v14;
  MEMORY[0x28223BE20](v14);
  v78 = &v50 - v15;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90F20, &qword_21DE09B30);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v50 - v16;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90F28, &qword_21DE09B38);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v50 - v17;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90F30, &qword_21DE09B40);
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v50 - v18;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90F38, &qword_21DE09B48);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v50 - v19;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90F40, &qword_21DE09B50);
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v50 - v20;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90F48, &qword_21DE09B58);
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v50 - v21;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90F50, &qword_21DE09B60);
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = &v50 - v22;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90F58, &qword_21DE09B68);
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v50 - v23;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90F60, &qword_21DE09B70);
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v25 = &v50 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90F68, &qword_21DE09B78);
  v51 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v50 - v27;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90F70, &qword_21DE09B80);
  v29 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v31 = &v50 - v30;
  v32 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE06BA0();
  v96 = v31;
  sub_21DE08F68();
  switch(v32)
  {
    case 1:
      v99 = 1;
      sub_21DE0708C();
      v33 = v96;
      v34 = v97;
      sub_21DE08EB8();
      v39 = *(v52 + 8);
      v40 = v25;
      v41 = &v85;
      goto LABEL_19;
    case 2:
      v99 = 2;
      sub_21DE07038();
      v43 = v54;
      v33 = v96;
      v34 = v97;
      sub_21DE08EB8();
      v39 = *(v55 + 8);
      v40 = v43;
      v41 = &v88;
      goto LABEL_19;
    case 3:
      v99 = 3;
      sub_21DE06FE4();
      v44 = v57;
      v33 = v96;
      v34 = v97;
      sub_21DE08EB8();
      v39 = *(v58 + 8);
      v40 = v44;
      v41 = &v91;
      goto LABEL_19;
    case 4:
      v99 = 4;
      sub_21DE06F90();
      v38 = v60;
      v33 = v96;
      v34 = v97;
      sub_21DE08EB8();
      v39 = *(v61 + 8);
      v40 = v38;
      v41 = &v94;
      goto LABEL_19;
    case 5:
      v99 = 5;
      sub_21DE06F3C();
      v46 = v63;
      v33 = v96;
      v34 = v97;
      sub_21DE08EB8();
      v39 = *(v64 + 8);
      v40 = v46;
      v41 = &v97;
      goto LABEL_19;
    case 6:
      v99 = 6;
      sub_21DE06EE8();
      v47 = v66;
      v33 = v96;
      v34 = v97;
      sub_21DE08EB8();
      v39 = *(v67 + 8);
      v40 = v47;
      v41 = &v98;
      goto LABEL_19;
    case 7:
      v99 = 7;
      sub_21DE06E94();
      v45 = v69;
      v33 = v96;
      v34 = v97;
      sub_21DE08EB8();
      v39 = *(v70 + 8);
      v40 = v45;
      v41 = &v100;
      goto LABEL_19;
    case 8:
      v99 = 8;
      sub_21DE06E40();
      v48 = v72;
      v33 = v96;
      v34 = v97;
      sub_21DE08EB8();
      v39 = *(v73 + 8);
      v40 = v48;
      v41 = &v101;
      goto LABEL_19;
    case 9:
      v99 = 9;
      sub_21DE06DEC();
      v42 = v75;
      v33 = v96;
      v34 = v97;
      sub_21DE08EB8();
      v39 = *(v76 + 8);
      v40 = v42;
      v41 = &v102;
LABEL_19:
      v39(v40, *(v41 - 32));
      return (*(v29 + 8))(v33, v34);
    case 10:
      v99 = 10;
      sub_21DE06D98();
      v35 = v78;
      v33 = v96;
      v34 = v97;
      sub_21DE08EB8();
      v37 = v79;
      v36 = v80;
      goto LABEL_17;
    case 11:
      v99 = 11;
      sub_21DE06D44();
      v35 = v81;
      v33 = v96;
      v34 = v97;
      sub_21DE08EB8();
      v37 = v82;
      v36 = v83;
      goto LABEL_17;
    case 12:
      v99 = 12;
      sub_21DE06CF0();
      v35 = v84;
      v33 = v96;
      v34 = v97;
      sub_21DE08EB8();
      v37 = v85;
      v36 = v86;
      goto LABEL_17;
    case 13:
      v99 = 13;
      sub_21DE06C9C();
      v35 = v87;
      v33 = v96;
      v34 = v97;
      sub_21DE08EB8();
      v37 = v88;
      v36 = v89;
      goto LABEL_17;
    case 14:
      v99 = 14;
      sub_21DE06C48();
      v35 = v90;
      v33 = v96;
      v34 = v97;
      sub_21DE08EB8();
      v37 = v91;
      v36 = v92;
      goto LABEL_17;
    case 15:
      v99 = 15;
      sub_21DE06BF4();
      v35 = v93;
      v33 = v96;
      v34 = v97;
      sub_21DE08EB8();
      v37 = v94;
      v36 = v95;
LABEL_17:
      (*(v37 + 8))(v35, v36);
      break;
    default:
      v99 = 0;
      sub_21DE070E0();
      v33 = v96;
      v34 = v97;
      sub_21DE08EB8();
      (*(v51 + 8))(v28, v26);
      break;
  }

  return (*(v29 + 8))(v33, v34);
}

uint64_t SemanticDataDetectorType.hashValue.getter()
{
  v1 = *v0;
  sub_21DE08F08();
  MEMORY[0x223D4A480](v1);
  return sub_21DE08F48();
}

uint64_t SemanticDataDetectorType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v121 = a2;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91000, &qword_21DE09B88);
  v105 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v116 = &v71 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91008, &qword_21DE09B90);
  v103 = *(v4 - 8);
  v104 = v4;
  MEMORY[0x28223BE20](v4);
  v115 = &v71 - v5;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91010, &qword_21DE09B98);
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v114 = &v71 - v6;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91018, &qword_21DE09BA0);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v113 = &v71 - v7;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91020, &qword_21DE09BA8);
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v112 = &v71 - v8;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91028, &qword_21DE09BB0);
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v111 = &v71 - v9;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91030, &qword_21DE09BB8);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v110 = &v71 - v10;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91038, &qword_21DE09BC0);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v109 = &v71 - v11;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91040, &qword_21DE09BC8);
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v108 = &v71 - v12;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91048, &qword_21DE09BD0);
  v88 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v119 = &v71 - v13;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91050, &qword_21DE09BD8);
  v86 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v118 = &v71 - v14;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91058, &qword_21DE09BE0);
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v117 = &v71 - v15;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91060, &qword_21DE09BE8);
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v107 = &v71 - v16;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91068, &qword_21DE09BF0);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v106 = &v71 - v17;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91070, &qword_21DE09BF8);
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v19 = &v71 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91078, &qword_21DE09C00);
  v76 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v71 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91080, &qword_21DE09C08);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v71 - v25;
  v27 = a1[3];
  v123 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_21DE06BA0();
  v28 = v122;
  sub_21DE08F58();
  if (v28)
  {
LABEL_39:
    v69 = v123;
    return __swift_destroy_boxed_opaque_existential_0Tm(v69);
  }

  v73 = v22;
  v72 = v20;
  v74 = v19;
  v29 = v117;
  v30 = v118;
  v31 = v119;
  v75 = 0;
  v33 = v120;
  v32 = v121;
  v122 = v24;
  v34 = v26;
  v35 = sub_21DE08EA8();
  if (*(v35 + 16) != 1 || (v36 = *(v35 + 32), v36 == 16))
  {
    v39 = sub_21DE08DE8();
    swift_allocError();
    v41 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE91088, &qword_21DE09C10);
    *v41 = &type metadata for SemanticDataDetectorType;
    sub_21DE08E78();
    sub_21DE08DD8();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
    swift_willThrow();
    (*(v122 + 8))(v34, v23);
LABEL_38:
    swift_unknownObjectRelease();
    goto LABEL_39;
  }

  v71 = v35;
  switch(v36)
  {
    case 1:
      v124 = 1;
      sub_21DE0708C();
      v59 = v74;
      v60 = v75;
      sub_21DE08E68();
      if (v60)
      {
        goto LABEL_37;
      }

      (*(v77 + 8))(v59, v78);
      goto LABEL_42;
    case 2:
      v124 = 2;
      sub_21DE07038();
      v51 = v106;
      v52 = v75;
      sub_21DE08E68();
      if (v52)
      {
        goto LABEL_37;
      }

      (*(v79 + 8))(v51, v80);
      goto LABEL_42;
    case 3:
      v124 = 3;
      sub_21DE06FE4();
      v55 = v107;
      v56 = v75;
      sub_21DE08E68();
      if (v56)
      {
        goto LABEL_37;
      }

      (*(v81 + 8))(v55, v82);
      goto LABEL_42;
    case 4:
      v124 = 4;
      sub_21DE06F90();
      v46 = v75;
      sub_21DE08E68();
      if (v46)
      {
        goto LABEL_37;
      }

      (*(v83 + 8))(v29, v84);
      goto LABEL_42;
    case 5:
      v124 = 5;
      sub_21DE06F3C();
      v61 = v75;
      sub_21DE08E68();
      if (v61)
      {
        goto LABEL_37;
      }

      (*(v86 + 8))(v30, v85);
      goto LABEL_42;
    case 6:
      v124 = 6;
      sub_21DE06EE8();
      v64 = v75;
      sub_21DE08E68();
      if (v64)
      {
        goto LABEL_37;
      }

      (*(v88 + 8))(v31, v87);
      goto LABEL_42;
    case 7:
      v124 = 7;
      sub_21DE06E94();
      v57 = v108;
      v58 = v75;
      sub_21DE08E68();
      if (v58)
      {
        goto LABEL_37;
      }

      (*(v89 + 8))(v57, v90);
      goto LABEL_42;
    case 8:
      v124 = 8;
      sub_21DE06E40();
      v67 = v109;
      v68 = v75;
      sub_21DE08E68();
      if (v68)
      {
        goto LABEL_37;
      }

      (*(v91 + 8))(v67, v92);
      goto LABEL_42;
    case 9:
      v124 = 9;
      sub_21DE06DEC();
      v49 = v110;
      v50 = v75;
      sub_21DE08E68();
      if (v50)
      {
        goto LABEL_37;
      }

      (*(v93 + 8))(v49, v94);
      goto LABEL_42;
    case 10:
      v124 = 10;
      sub_21DE06D98();
      v65 = v111;
      v66 = v75;
      sub_21DE08E68();
      if (v66)
      {
        goto LABEL_37;
      }

      (*(v95 + 8))(v65, v96);
      goto LABEL_42;
    case 11:
      v124 = 11;
      sub_21DE06D44();
      v44 = v112;
      v45 = v75;
      sub_21DE08E68();
      if (v45)
      {
        goto LABEL_37;
      }

      (*(v97 + 8))(v44, v98);
      goto LABEL_42;
    case 12:
      v124 = 12;
      sub_21DE06CF0();
      v47 = v113;
      v48 = v75;
      sub_21DE08E68();
      if (v48)
      {
        goto LABEL_37;
      }

      (*(v99 + 8))(v47, v100);
      goto LABEL_42;
    case 13:
      v124 = 13;
      sub_21DE06C9C();
      v62 = v114;
      v63 = v75;
      sub_21DE08E68();
      if (v63)
      {
        goto LABEL_37;
      }

      (*(v101 + 8))(v62, v102);
      goto LABEL_42;
    case 14:
      v124 = 14;
      sub_21DE06C48();
      v42 = v115;
      v43 = v75;
      sub_21DE08E68();
      if (v43)
      {
        goto LABEL_37;
      }

      (*(v103 + 8))(v42, v104);
      goto LABEL_42;
    case 15:
      v124 = 15;
      sub_21DE06BF4();
      v53 = v116;
      v54 = v75;
      sub_21DE08E68();
      if (v54)
      {
        goto LABEL_37;
      }

      (*(v105 + 8))(v53, v33);
      goto LABEL_42;
    default:
      v124 = 0;
      sub_21DE070E0();
      v37 = v73;
      v38 = v75;
      sub_21DE08E68();
      if (v38)
      {
LABEL_37:
        (*(v122 + 8))(v34, v23);
        goto LABEL_38;
      }

      (*(v76 + 8))(v37, v72);
LABEL_42:
      (*(v122 + 8))(v34, v23);
      swift_unknownObjectRelease();
      v69 = v123;
      *v32 = v36;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v69);
}

uint64_t sub_21DE050EC()
{
  v1 = *v0;
  sub_21DE08F08();
  MEMORY[0x223D4A480](v1);
  return sub_21DE08F48();
}

uint64_t sub_21DE05134(uint64_t a1)
{
  v2 = *v1;
  sub_21DE08F08();
  MEMORY[0x223D4A480](v2);
  return sub_21DE08F48();
}

double sub_21DE051A8@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  v4 = v3;
  v6 = sub_21DE05310(a2, a3);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21DE05E9C();
      v10 = v12;
    }

    sub_21DDFB008((*(v10 + 56) + 32 * v8), a1);
    sub_21DE06238(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

unint64_t sub_21DE0524C(uint64_t a1)
{
  v2 = sub_21DE08D68();

  return sub_21DE06040(a1, v2);
}

unint64_t sub_21DE05290(uint64_t a1, uint64_t a2)
{
  sub_21DE08F08();
  MEMORY[0x223D4A480](a1);
  MEMORY[0x223D4A480](a2);
  v4 = sub_21DE08F48();

  return sub_21DE06108(a1, a2, v4);
}

unint64_t sub_21DE05310(uint64_t a1, uint64_t a2)
{
  sub_21DE08F08();
  sub_21DE08C38();
  v4 = sub_21DE08F48();

  return sub_21DE06180(a1, a2, v4);
}

uint64_t sub_21DE05388(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90E78, &qword_21DE09A78);
  result = sub_21DE08E38();
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
        sub_21DDFB008((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_21DDFD6F4(v23, &v36);
        sub_21DDFAFA8(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_21DE08D68();
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
      result = sub_21DDFB008(v35, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_21DE05640(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE911E0, &qword_21DE0ACF8);
  result = sub_21DE08E38();
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
      v29 = *(*(v5 + 48) + 16 * v19);
      v20 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      sub_21DE08F08();
      MEMORY[0x223D4A480](v29);
      MEMORY[0x223D4A480](*(&v29 + 1));
      result = sub_21DE08F48();
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
      *(*(v7 + 48) + 16 * v15) = v29;
      *(*(v7 + 56) + 8 * v15) = v20;
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

uint64_t sub_21DE058E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE911E8, &unk_21DE0AD00);
  v33 = v4;
  result = sub_21DE08E38();
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
        sub_21DDFB008(v24, v34);
      }

      else
      {
        sub_21DDFAFA8(v24, v34);
      }

      sub_21DE08F08();
      sub_21DE08C38();
      result = sub_21DE08F48();
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
      result = sub_21DDFB008(v34, (*(v7 + 56) + 32 * v15));
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

void *sub_21DE05B98()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90E78, &qword_21DE09A78);
  v2 = *v0;
  v3 = sub_21DE08E28();
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
        sub_21DDFD6F4(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_21DDFAFA8(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_21DDFB008(v22, (*(v4 + 56) + v17));
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

void *sub_21DE05D3C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE911E0, &qword_21DE0ACF8);
  v2 = *v0;
  v3 = sub_21DE08E28();
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
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
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

void *sub_21DE05E9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE911E8, &unk_21DE0AD00);
  v2 = *v0;
  v3 = sub_21DE08E28();
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
        sub_21DDFAFA8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_21DDFB008(v25, (*(v4 + 56) + v22));
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

unint64_t sub_21DE06040(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_21DDFD6F4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x223D4A2E0](v9, a1);
      sub_21DDFB018(v9);
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

unint64_t sub_21DE06108(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_21DE06180(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_21DE08EE8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_21DE06238(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21DE08D58() + 1) & ~v5;
    do
    {
      sub_21DE08F08();

      sub_21DE08C38();
      v10 = sub_21DE08F48();

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
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
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

_OWORD *sub_21DE063E8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_21DE0524C(a2);
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
      sub_21DE05B98();
      goto LABEL_7;
    }

    sub_21DE05388(v13, a3 & 1);
    v19 = sub_21DE0524C(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_21DDFD6F4(a2, v21);
      return sub_21DE06684(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_21DE08EF8();
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
  __swift_destroy_boxed_opaque_existential_0Tm(v17);

  return sub_21DDFB008(a1, v17);
}

_OWORD *sub_21DE06534(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21DE05310(a2, a3);
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
      sub_21DE05E9C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_21DE058E0(v16, a4 & 1);
    v11 = sub_21DE05310(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_21DE08EF8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);

    return sub_21DDFB008(a1, v22);
  }

  else
  {
    sub_21DE06700(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_21DE06684(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_21DDFB008(a3, (a4[7] + 32 * a1));
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

_OWORD *sub_21DE06700(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_21DDFB008(a4, (a5[7] + 32 * a1));
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

BOOL sub_21DE0676C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  result = (*a1 | *a2) == 0;
  if (v2)
  {
    v4 = *a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    type metadata accessor for CFString(0);
    sub_21DE08878(&qword_2812229F0, type metadata accessor for CFString, &unk_21DE0985C);
    return sub_21DE08A78() & 1;
  }

  return result;
}

unint64_t sub_21DE06834(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DE08E58();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21DE06880(uint64_t a1)
{
  v2 = sub_21DE08A48();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE911C0, &unk_21DE0ACE0);
    v9 = sub_21DE08D98();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_21DE08878(&qword_27CE911C8, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_21DE08BD8();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_21DE08878(&qword_27CE911D0, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_21DE08BE8();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_21DE06BA0()
{
  result = qword_27CE90F78;
  if (!qword_27CE90F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90F78);
  }

  return result;
}

unint64_t sub_21DE06BF4()
{
  result = qword_27CE90F80;
  if (!qword_27CE90F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90F80);
  }

  return result;
}

unint64_t sub_21DE06C48()
{
  result = qword_27CE90F88;
  if (!qword_27CE90F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90F88);
  }

  return result;
}

unint64_t sub_21DE06C9C()
{
  result = qword_27CE90F90;
  if (!qword_27CE90F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90F90);
  }

  return result;
}

unint64_t sub_21DE06CF0()
{
  result = qword_27CE90F98;
  if (!qword_27CE90F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90F98);
  }

  return result;
}

unint64_t sub_21DE06D44()
{
  result = qword_27CE90FA0;
  if (!qword_27CE90FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90FA0);
  }

  return result;
}

unint64_t sub_21DE06D98()
{
  result = qword_27CE90FA8;
  if (!qword_27CE90FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90FA8);
  }

  return result;
}

unint64_t sub_21DE06DEC()
{
  result = qword_27CE90FB0;
  if (!qword_27CE90FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90FB0);
  }

  return result;
}

unint64_t sub_21DE06E40()
{
  result = qword_27CE90FB8;
  if (!qword_27CE90FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90FB8);
  }

  return result;
}

unint64_t sub_21DE06E94()
{
  result = qword_27CE90FC0;
  if (!qword_27CE90FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90FC0);
  }

  return result;
}

unint64_t sub_21DE06EE8()
{
  result = qword_27CE90FC8;
  if (!qword_27CE90FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90FC8);
  }

  return result;
}

unint64_t sub_21DE06F3C()
{
  result = qword_27CE90FD0;
  if (!qword_27CE90FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90FD0);
  }

  return result;
}

unint64_t sub_21DE06F90()
{
  result = qword_27CE90FD8;
  if (!qword_27CE90FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90FD8);
  }

  return result;
}

unint64_t sub_21DE06FE4()
{
  result = qword_27CE90FE0;
  if (!qword_27CE90FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90FE0);
  }

  return result;
}

unint64_t sub_21DE07038()
{
  result = qword_27CE90FE8;
  if (!qword_27CE90FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90FE8);
  }

  return result;
}

unint64_t sub_21DE0708C()
{
  result = qword_27CE90FF0;
  if (!qword_27CE90FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90FF0);
  }

  return result;
}

unint64_t sub_21DE070E0()
{
  result = qword_27CE90FF8;
  if (!qword_27CE90FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90FF8);
  }

  return result;
}

unint64_t sub_21DE07138()
{
  result = qword_281222BC8;
  if (!qword_281222BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281222BC8);
  }

  return result;
}

unint64_t sub_21DE07190()
{
  result = qword_281222BB8;
  if (!qword_281222BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281222BB8);
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

uint64_t sub_21DE071F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21DE07240(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_21DE072AC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_21DE0733C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SemanticDataDetector.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SemanticDataDetector.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21DE07650()
{
  result = qword_27CE91090;
  if (!qword_27CE91090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91090);
  }

  return result;
}

unint64_t sub_21DE076A8()
{
  result = qword_27CE91098;
  if (!qword_27CE91098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91098);
  }

  return result;
}

unint64_t sub_21DE07700()
{
  result = qword_27CE910A0;
  if (!qword_27CE910A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE910A0);
  }

  return result;
}

unint64_t sub_21DE07758()
{
  result = qword_27CE910A8;
  if (!qword_27CE910A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE910A8);
  }

  return result;
}

unint64_t sub_21DE077B0()
{
  result = qword_27CE910B0;
  if (!qword_27CE910B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE910B0);
  }

  return result;
}

unint64_t sub_21DE07808()
{
  result = qword_27CE910B8;
  if (!qword_27CE910B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE910B8);
  }

  return result;
}

unint64_t sub_21DE07860()
{
  result = qword_27CE910C0;
  if (!qword_27CE910C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE910C0);
  }

  return result;
}

unint64_t sub_21DE078B8()
{
  result = qword_27CE910C8;
  if (!qword_27CE910C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE910C8);
  }

  return result;
}

unint64_t sub_21DE07910()
{
  result = qword_27CE910D0;
  if (!qword_27CE910D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE910D0);
  }

  return result;
}

unint64_t sub_21DE07968()
{
  result = qword_27CE910D8;
  if (!qword_27CE910D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE910D8);
  }

  return result;
}

unint64_t sub_21DE079C0()
{
  result = qword_27CE910E0;
  if (!qword_27CE910E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE910E0);
  }

  return result;
}

unint64_t sub_21DE07A18()
{
  result = qword_27CE910E8;
  if (!qword_27CE910E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE910E8);
  }

  return result;
}

unint64_t sub_21DE07A70()
{
  result = qword_27CE910F0;
  if (!qword_27CE910F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE910F0);
  }

  return result;
}

unint64_t sub_21DE07AC8()
{
  result = qword_27CE910F8;
  if (!qword_27CE910F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE910F8);
  }

  return result;
}

unint64_t sub_21DE07B20()
{
  result = qword_27CE91100;
  if (!qword_27CE91100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91100);
  }

  return result;
}

unint64_t sub_21DE07B78()
{
  result = qword_27CE91108;
  if (!qword_27CE91108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91108);
  }

  return result;
}

unint64_t sub_21DE07BD0()
{
  result = qword_27CE91110;
  if (!qword_27CE91110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91110);
  }

  return result;
}

unint64_t sub_21DE07C28()
{
  result = qword_27CE91118;
  if (!qword_27CE91118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91118);
  }

  return result;
}

unint64_t sub_21DE07C80()
{
  result = qword_27CE91120;
  if (!qword_27CE91120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91120);
  }

  return result;
}

unint64_t sub_21DE07CD8()
{
  result = qword_27CE91128;
  if (!qword_27CE91128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91128);
  }

  return result;
}

unint64_t sub_21DE07D30()
{
  result = qword_27CE91130;
  if (!qword_27CE91130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91130);
  }

  return result;
}

unint64_t sub_21DE07D88()
{
  result = qword_27CE91138;
  if (!qword_27CE91138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91138);
  }

  return result;
}

unint64_t sub_21DE07DE0()
{
  result = qword_27CE91140;
  if (!qword_27CE91140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91140);
  }

  return result;
}

unint64_t sub_21DE07E38()
{
  result = qword_27CE91148;
  if (!qword_27CE91148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91148);
  }

  return result;
}

unint64_t sub_21DE07E90()
{
  result = qword_27CE91150;
  if (!qword_27CE91150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91150);
  }

  return result;
}

unint64_t sub_21DE07EE8()
{
  result = qword_27CE91158;
  if (!qword_27CE91158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91158);
  }

  return result;
}

unint64_t sub_21DE07F40()
{
  result = qword_27CE91160;
  if (!qword_27CE91160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91160);
  }

  return result;
}

unint64_t sub_21DE07F98()
{
  result = qword_27CE91168;
  if (!qword_27CE91168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91168);
  }

  return result;
}

unint64_t sub_21DE07FF0()
{
  result = qword_27CE91170;
  if (!qword_27CE91170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91170);
  }

  return result;
}

unint64_t sub_21DE08048()
{
  result = qword_27CE91178;
  if (!qword_27CE91178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91178);
  }

  return result;
}

unint64_t sub_21DE080A0()
{
  result = qword_27CE91180;
  if (!qword_27CE91180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91180);
  }

  return result;
}

unint64_t sub_21DE080F8()
{
  result = qword_27CE91188;
  if (!qword_27CE91188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91188);
  }

  return result;
}

unint64_t sub_21DE08150()
{
  result = qword_27CE91190;
  if (!qword_27CE91190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91190);
  }

  return result;
}

unint64_t sub_21DE081A8()
{
  result = qword_27CE91198;
  if (!qword_27CE91198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE91198);
  }

  return result;
}

unint64_t sub_21DE08200()
{
  result = qword_27CE911A0;
  if (!qword_27CE911A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE911A0);
  }

  return result;
}

unint64_t sub_21DE08258()
{
  result = qword_27CE911A8;
  if (!qword_27CE911A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE911A8);
  }

  return result;
}

unint64_t sub_21DE082B0()
{
  result = qword_27CE911B0;
  if (!qword_27CE911B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE911B0);
  }

  return result;
}

unint64_t sub_21DE08308()
{
  result = qword_27CE911B8;
  if (!qword_27CE911B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE911B8);
  }

  return result;
}

uint64_t sub_21DE0835C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
  if (v4 || (sub_21DE08EE8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (sub_21DE08EE8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xED0000746E657645 || (sub_21DE08EE8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021DE0AFB0 == a2 || (sub_21DE08EE8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x754E746867696C66 && a2 == 0xEC0000007265626DLL || (sub_21DE08EE8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021DE0AFD0 == a2 || (sub_21DE08EE8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4C5255626577 && a2 == 0xE600000000000000 || (sub_21DE08EE8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4C52556C69616DLL && a2 == 0xE700000000000000 || (sub_21DE08EE8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x55636972656E6567 && a2 == 0xEA00000000004C52 || (sub_21DE08EE8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000 || (sub_21DE08EE8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6C61636973796870 && a2 == 0xED000065756C6156 || (sub_21DE08EE8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x79656E6F6DLL && a2 == 0xE500000000000000 || (sub_21DE08EE8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021DE0AFF0 == a2 || (sub_21DE08EE8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x614E7265706F7270 && a2 == 0xEA0000000000656DLL || (sub_21DE08EE8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x65646F43707061 && a2 == 0xE700000000000000 || (sub_21DE08EE8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 15;
  }

  else
  {
    v6 = sub_21DE08EE8();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_21DE08878(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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