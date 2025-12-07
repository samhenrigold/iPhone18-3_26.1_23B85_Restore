uint64_t ControlPicker.init<A, B, C>(kind:intent:displayName:preferredSize:stateProvider:title:value:affordances:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v53 = a8;
  v54 = a2;
  v55 = a7;
  v56 = a4;
  v57 = a3;
  v58 = a5;
  v51 = a9;
  v52 = a1;
  v47 = a17;
  v48 = a19;
  v45 = a14;
  v46 = a16;
  v43 = a12;
  v44 = a13;
  v49 = a10;
  v50 = a11;
  v22 = *(a18 - 8);
  v42 = a20;
  MEMORY[0x1EEE9AC00](a1);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for PickerStateProviderBox(0, a18, a21, v25);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v39 - v27;
  v29 = sub_192224FB0();
  MEMORY[0x1EEE9AC00](v29 - 8);
  v30 = *a6;
  v31 = *(swift_getAssociatedConformanceWitness() + 8);
  v32 = sub_192224BB0();
  v40 = v33;
  v41 = v32;
  if (!v58)
  {
    sub_192224BC0();
    v56 = sub_192227980();
    v58 = v34;
  }

  v59[0] = v30;
  v35 = v55;
  (*(v22 + 16))(v24, v55, a18);
  (*(v22 + 32))(v28, v24, a18);
  WitnessTable = swift_getWitnessTable();
  v37 = sub_192224BA0();
  sub_192080134(v52, v54, v57, v41, v40, v56, v58, v59, v51, v28, 3, v37, v53, v49, v50, v43, v44, v45, a15, v46, v47, v26, v31, v48, v42, WitnessTable);
  return (*(v22 + 8))(v35, a18);
}

id sub_1921467D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19214C644();
  sub_192224C80();
  v11 = sub_1921D85E8(v10, a1, a6);
  (*(v8 + 8))(v10, a1);
  return v11;
}

uint64_t sub_1921468D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = MEMORY[0x1EEE9AC00](a1);
  v11(v10);
  return sub_192227570();
}

uint64_t sub_192146960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = MEMORY[0x1EEE9AC00](a1);
  v12(v11);
  return sub_192227570();
}

uint64_t sub_1921469F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = MEMORY[0x1EEE9AC00](a1);
  v14(v13);
  return sub_192227570();
}

id sub_192146A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19214C644();
  sub_192224C80();
  v10 = sub_1921D85E8(v9, a1, a5);
  (*(v7 + 8))(v9, a1);
  return v10;
}

uint64_t sub_192146B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v10(v9);
  return sub_192227570();
}

uint64_t sub_192146C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = MEMORY[0x1EEE9AC00](a1);
  v12(v11);
  return sub_192227570();
}

uint64_t _s9WidgetKit13ControlPickerV4bodyQrvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 152);
  v6 = *(v1 + 160);
  v8 = *(v1 + 168);
  v10 = *(v1 + 176);
  v9 = *(v1 + 184);
  v11 = *(v1 + 192);
  sub_192081C60(v1 + 56, v5);
  swift_storeEnumTagMultiPayload();
  sub_19207ED1C(v5, a1);
  v12 = type metadata accessor for WidgetDescriptor(0);
  v13 = v12[7];

  *(a1 + v13) = &unk_1F06A8010;
  *(a1 + v12[39]) = v8;
  v14 = (a1 + v12[5]);

  *v14 = v7;
  v14[1] = v6;
  v15 = (a1 + v12[6]);

  *v15 = 0;
  v15[1] = 0;
  v16 = (a1 + v12[40]);

  *v16 = v10;
  v16[1] = v9;
  *(a1 + v12[36]) = v11;
  *(a1 + v12[29]) = v11;
  return result;
}

uint64_t ControlPicker.init<A, B, C>(kind:intent:stateProvider:content:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v29 = a8;
  v30 = a7;
  v26 = a5;
  v27 = a6;
  v28 = a4;
  v33 = a2;
  v34 = a3;
  v31 = a9;
  v32 = a1;
  v16 = *(a13 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v20, a13, v17);
  v21 = swift_allocObject();
  v21[2] = a10;
  v21[3] = a11;
  v21[4] = a12;
  v21[5] = a13;
  v21[6] = a14;
  v21[7] = a15;
  v23 = v26;
  v22 = v27;
  v21[8] = a16;
  v21[9] = v23;
  v21[10] = v22;
  v24 = swift_allocObject();
  v24[2] = a10;
  v24[3] = a11;
  v24[4] = a12;
  v24[5] = a13;
  v24[6] = a14;
  v24[7] = a15;
  v24[8] = a16;
  v35 = 0;
  ControlPicker.init<A, B, C, D>(kind:intent:displayName:preferredSize:stateProvider:title:subtitle:value:affordances:)(v32, v33, v34, 0, 0, &v35, v19, sub_192147114, v31, v21, nullsub_1, v24, v30, v29, 0, 0, a10, a11, MEMORY[0x1E6981E70], a12, a13, a14, MEMORY[0x1E6981E60], a15, a16);
  return (*(v16 + 8))(v28, a13);
}

uint64_t sub_192146FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13(v10);
  sub_1921BB14C();
  v14 = *(v6 + 8);
  v14(v8, a5);
  sub_1921BB14C();
  return (v14)(v12, a5);
}

uint64_t ControlPicker.disabled(_:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  (*(*(a2 - 8) + 16))(a3, v4, a2);
  sub_1920B2B7C(v4 + 104, &v31);
  if (BYTE7(v33) == 1)
  {
    return sub_1920B2BD8(&v31);
  }

  sub_19209CBAC(&v31, v42);
  sub_192033A64(v42, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADF0C38, &qword_1922371C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v21[0] = v31;
  v21[1] = v32;
  v8 = a1 & 1;
  v18 = v31;
  v19 = v32;
  v20[0] = v8;
  *&v20[81] = v38;
  *&v20[97] = v39;
  *&v20[113] = *v40;
  *&v20[128] = *&v40[15];
  *&v20[17] = v34;
  *&v20[33] = v35;
  *&v20[49] = v36;
  *&v20[65] = v37;
  *&v20[1] = v33;
  v16[3] = &type metadata for ControlPickerTemplateProvider;
  v16[4] = &off_1F06AFD68;
  v9 = swift_allocObject();
  v16[0] = v9;
  v10 = *&v20[112];
  v9[9] = *&v20[96];
  v9[10] = v10;
  v9[11] = *&v20[128];
  v11 = *&v20[48];
  v9[5] = *&v20[32];
  v9[6] = v11;
  v12 = *&v20[80];
  v9[7] = *&v20[64];
  v9[8] = v12;
  v13 = v19;
  v9[1] = v18;
  v9[2] = v13;
  v14 = *&v20[16];
  v9[3] = *v20;
  v9[4] = v14;
  v22 = v8;
  v28 = v38;
  v29 = v39;
  *v30 = *v40;
  *&v30[15] = *&v40[15];
  v24 = v34;
  v25 = v35;
  v26 = v36;
  v27 = v37;
  v23 = v33;
  sub_1920800B4(&v18, &v15);
  sub_192080104(v21);
  __swift_destroy_boxed_opaque_existential_1(v42);
  v17 = 0;
  return sub_192147370(v16, a3 + 104);
}

uint64_t sub_192147410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_19214744C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 193))
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

uint64_t sub_192147494(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *(result + 192) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 193) = 1;
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

    *(result + 193) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of PickerStateProvider.state(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1920A59A8;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_192147668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920EF2F4;

  return v9(a1, a2, a3);
}

uint64_t sub_192147790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1920B3B44;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1921478C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 56) + **(a4 + 56));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1920B3B44;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1921479F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 64) + **(a4 + 64));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1920B3B44;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_192147B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_192147B5C, 0, 0);
}

uint64_t sub_192147B5C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (AssociatedTypeWitness == &type metadata for EmptyConfiguration)
  {
    swift_dynamicCast();
    v8 = v0[1];

    return v8();
  }

  else
  {
    v2 = AssociatedTypeWitness;
    v3 = swift_task_alloc();
    v0[6] = v3;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *v3 = v0;
    v3[1] = sub_1920F9F30;
    v5 = v0[2];
    v6 = v0[3];

    return sub_19213431C(v5, v6, v2, AssociatedConformanceWitness);
  }
}

uint64_t sub_192147CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 + 24) + 40))(a1, *(a3 + 16), *(a3 + 24));
  swift_getAssociatedTypeWitness();
  sub_192227C40();
  swift_getWitnessTable();
  sub_192227DE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0CC0, &qword_1922374E0);
  if (sub_192227EF0())
  {
    sub_192227C60();
  }

  else
  {
    v5 = sub_192227C10();

    sub_192134734();
    swift_allocError();
    *v6 = a2;
    *(v6 + 8) = v5;
    *(v6 + 16) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_192147E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v6 = *(a3 + 24);
  v10 = (*(v6 + 48) + **(v6 + 48));
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1920A59A8;

  return v10(a1, a2, v7, v6);
}

uint64_t sub_192147F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4[7] = AssociatedConformanceWitness;
  v4[8] = *(AssociatedConformanceWitness + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v6 = sub_192228240();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[12] = AssociatedTypeWitness;
  v4[13] = *(AssociatedTypeWitness - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_192148188, 0, 0);
}

uint64_t sub_192148188()
{
  sub_192147CA8(v0[2], v0[3], v0[4]);
  v1 = v0[14];
  v2 = v0[7];
  (*(v0[13] + 16))(v1, v0[15], v0[12]);
  v3 = *(v2 + 32);
  v4 = swift_checkMetadataState();
  v3(v1, v4, v2);
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_192148310;
  v6 = v0[11];
  v7 = v0[8];

  return MEMORY[0x1EEDB2D48](v6, 1, v4, v7);
}

uint64_t sub_192148310()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_1921484D8;
  }

  else
  {
    (*(v2[10] + 8))(v2[11], v2[9]);
    v3 = sub_19214843C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19214843C()
{
  (*(v0[13] + 8))(v0[15], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1921484D8()
{
  (*(v0[13] + 8))(v0[15], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_192148570(uint64_t a1, uint64_t a2)
{
  v3 = sub_192147E28(a1, a2);
  v4 = *(v2 + 8);

  return v4(v3);
}

uint64_t sub_1921485D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920B3B44;

  return sub_192147E40(a1, a2, a3);
}

uint64_t sub_192148680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920B3B44;

  return sub_192147F70(a1, a2, a3);
}

uint64_t sub_19214872C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1920B3B44;

  return sub_19210A4F4(a1);
}

uint64_t sub_1921487C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a2;
  swift_getAssociatedTypeWitness();
  v4[8] = swift_getAssociatedConformanceWitness();
  v4[9] = swift_getAssociatedTypeWitness();
  v4[10] = swift_task_alloc();
  v8 = swift_checkMetadataState();
  v4[11] = v8;
  v4[12] = *(v8 - 8);
  v4[13] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[14] = AssociatedTypeWitness;
  v4[15] = *(AssociatedTypeWitness - 8);
  v10 = swift_task_alloc();
  v4[16] = v10;
  v11 = swift_task_alloc();
  v4[17] = v11;
  *v11 = v4;
  v11[1] = sub_1921489E8;

  return sub_192147B38(v10, a1, a3, a4);
}

uint64_t sub_1921489E8()
{
  v2 = *v1;
  v2[18] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_19214916C, 0, 0);
  }

  else
  {
    v9 = (*(v2[7] + 48) + **(v2[7] + 48));
    v3 = swift_task_alloc();
    v2[19] = v3;
    *v3 = v2;
    v3[1] = sub_192148BE4;
    v4 = v2[16];
    v5 = v2[13];
    v6 = v2[6];
    v7 = v2[7];

    return v9(v5, v4, v6, v7);
  }
}

uint64_t sub_192148BE4()
{
  v2 = *v1;
  v2[20] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1921491F0, 0, 0);
  }

  else
  {
    v8 = (*(v2[7] + 40) + **(v2[7] + 40));
    v3 = swift_task_alloc();
    v2[21] = v3;
    *v3 = v2;
    v3[1] = sub_192148DDC;
    v4 = v2[6];
    v5 = v2[7];
    v6 = v2[16];

    return v8(v6, v4, v5);
  }
}

uint64_t sub_192148DDC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v5 = sub_19214928C;
  }

  else
  {
    *(v4 + 184) = a1;
    v5 = sub_192148F04;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_192148F04()
{
  *(v0 + 32) = *(v0 + 184);
  v1 = *(v0 + 104);
  v2 = swift_task_alloc();
  *(v2 + 16) = *(v0 + 48);
  *(v2 + 32) = v1;
  sub_192227C40();
  swift_getWitnessTable();
  sub_192227E80();

  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);
  if (*(v0 + 24) == 1)
  {
    sub_192228420();
    v9 = sub_192227990();
    v11 = v10;
    sub_19214C5F0();
    swift_allocError();
    *v12 = v9;
    v12[1] = v11;
    swift_willThrow();
    (*(v4 + 8))(v3, v6);
    (*(v8 + 8))(v5, v7);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = *(v0 + 16);
    (*(v4 + 8))(*(v0 + 128), *(v0 + 112));
    (*(v8 + 8))(v5, v7);

    v16 = *(v0 + 8);

    return v16(v15);
  }
}

uint64_t sub_19214916C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1921491F0()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_19214928C()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_192149344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  swift_checkMetadataState();
  sub_192228420();
  sub_192228420();
  swift_getAssociatedConformanceWitness();
  v11 = sub_192227910();
  v12 = *(v5 + 8);
  v12(v7, AssociatedTypeWitness);
  v12(v10, AssociatedTypeWitness);
  return v11 & 1;
}

uint64_t sub_19214952C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[6] = AssociatedTypeWitness;
  v5[7] = *(AssociatedTypeWitness - 8);
  v10 = swift_task_alloc();
  v5[8] = v10;
  v11 = swift_task_alloc();
  v5[9] = v11;
  *v11 = v5;
  v11[1] = sub_192149660;

  return sub_192147B38(v10, a1, a4, a5);
}

uint64_t sub_192149660()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_19214C840, 0, 0);
  }

  else
  {
    v9 = (*(v2[5] + 56) + **(v2[5] + 56));
    v3 = swift_task_alloc();
    v2[11] = v3;
    *v3 = v2;
    v3[1] = sub_192149858;
    v4 = v2[4];
    v5 = v2[5];
    v6 = v2[2];
    v7 = v2[8];

    return v9(v7, v6, v4, v5);
  }
}

uint64_t sub_192149858()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_19214C838;
  }

  else
  {
    v2 = sub_19214C830;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19214996C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a3;
  v6[3] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[4] = AssociatedTypeWitness;
  v6[5] = *(AssociatedTypeWitness - 8);
  v11 = swift_task_alloc();
  v6[6] = v11;
  v6[7] = sub_192227CC0();
  v6[8] = sub_192227CB0();
  v12 = swift_task_alloc();
  v6[9] = v12;
  *v12 = v6;
  v12[1] = sub_192149ABC;

  return sub_192147B38(v11, a1, a5, a6);
}

uint64_t sub_192149ABC()
{
  *(*v1 + 80) = v0;

  v3 = sub_192227C70();
  if (v0)
  {
    v4 = sub_192149CCC;
  }

  else
  {
    v4 = sub_192149C18;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_192149C18()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];

  v5 = v4(v1);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_192149CCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_192149D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a3;
  v6[3] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[4] = AssociatedTypeWitness;
  v6[5] = *(AssociatedTypeWitness - 8);
  v11 = swift_task_alloc();
  v6[6] = v11;
  v6[7] = sub_192227CC0();
  v6[8] = sub_192227CB0();
  v12 = swift_task_alloc();
  v6[9] = v12;
  *v12 = v6;
  v12[1] = sub_192149E8C;

  return sub_192147B38(v11, a1, a5, a6);
}

uint64_t sub_192149E8C()
{
  *(*v1 + 80) = v0;

  v3 = sub_192227C70();
  if (v0)
  {
    v4 = sub_19214C82C;
  }

  else
  {
    v4 = sub_19214C848;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_192149FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[8] = AssociatedTypeWitness;
  v6[9] = *(AssociatedTypeWitness - 8);
  v11 = swift_task_alloc();
  v6[10] = v11;
  v6[11] = sub_192227CC0();
  v6[12] = sub_192227CB0();
  v12 = swift_task_alloc();
  v6[13] = v12;
  *v12 = v6;
  v12[1] = sub_19214A140;

  return sub_192147B38(v11, a1, a5, a6);
}

uint64_t sub_19214A140()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {
    v4 = sub_192227C70();

    return MEMORY[0x1EEE6DFA0](sub_19214A650, v4, v3);
  }

  else
  {
    v10 = (*(v2[7] + 40) + **(v2[7] + 40));
    v5 = swift_task_alloc();
    v2[15] = v5;
    *v5 = v2;
    v5[1] = sub_19214A350;
    v6 = v2[6];
    v7 = v2[7];
    v8 = v2[10];

    return v10(v8, v6, v7);
  }
}

uint64_t sub_19214A350(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_192227C70();
    v7 = v6;
    v8 = sub_19214A6BC;
  }

  else
  {
    *(v4 + 136) = a1;
    v5 = sub_192227C70();
    v7 = v9;
    v8 = sub_19214A4D0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t sub_19214A4D0()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  v14 = *(v0 + 32);

  *(v0 + 16) = v1;
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v7 + 32) = v14;
  *(v7 + 48) = v2;
  swift_getAssociatedTypeWitness();
  v8 = sub_192227C40();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_19204301C(sub_19214C584, v7, v8, MEMORY[0x1E6981910], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);

  (*(v3 + 8))(v2, v4);

  v12 = *(v0 + 8);

  return v12(v11);
}

uint64_t sub_19214A650()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19214A6BC()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19214A750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[8] = AssociatedTypeWitness;
  v6[9] = *(AssociatedTypeWitness - 8);
  v11 = swift_task_alloc();
  v6[10] = v11;
  v6[11] = sub_192227CC0();
  v6[12] = sub_192227CB0();
  v12 = swift_task_alloc();
  v6[13] = v12;
  *v12 = v6;
  v12[1] = sub_19214A8A8;

  return sub_192147B38(v11, a1, a5, a6);
}

uint64_t sub_19214A8A8()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {
    v4 = sub_192227C70();

    return MEMORY[0x1EEE6DFA0](sub_19214C834, v4, v3);
  }

  else
  {
    v10 = (*(v2[7] + 40) + **(v2[7] + 40));
    v5 = swift_task_alloc();
    v2[15] = v5;
    *v5 = v2;
    v5[1] = sub_19214AAB8;
    v6 = v2[6];
    v7 = v2[7];
    v8 = v2[10];

    return v10(v8, v6, v7);
  }
}

uint64_t sub_19214AAB8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_192227C70();
    v7 = v6;
    v8 = sub_19214C844;
  }

  else
  {
    *(v4 + 136) = a1;
    v5 = sub_192227C70();
    v7 = v9;
    v8 = sub_19214AC38;
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t sub_19214AC38()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  v14 = *(v0 + 32);

  *(v0 + 16) = v1;
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v7 + 32) = v14;
  *(v7 + 48) = v2;
  swift_getAssociatedTypeWitness();
  v8 = sub_192227C40();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_19204301C(sub_19214C54C, v7, v8, &type metadata for ControlAffordances, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);

  (*(v3 + 8))(v2, v4);

  v12 = *(v0 + 8);

  return v12(v11);
}

uint64_t sub_19214ADB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[6] = AssociatedTypeWitness;
  v5[7] = *(AssociatedTypeWitness - 8);
  v10 = swift_task_alloc();
  v5[8] = v10;
  v11 = swift_task_alloc();
  v5[9] = v11;
  *v11 = v5;
  v11[1] = sub_19214AEEC;

  return sub_192147B38(v10, a2, a4, a5);
}

uint64_t sub_19214AEEC()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1920AA0F4, 0, 0);
  }

  else
  {
    v9 = (*(v2[5] + 64) + **(v2[5] + 64));
    v3 = swift_task_alloc();
    v2[11] = v3;
    *v3 = v2;
    v3[1] = sub_19214B0E4;
    v4 = v2[8];
    v5 = v2[4];
    v6 = v2[5];
    v7 = v2[2];

    return v9(v7, v4, v5, v6);
  }
}

uint64_t sub_19214B0E4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_19214B278;
  }

  else
  {
    v2 = sub_19214B1F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19214B1F8()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_19214B278()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_19214B2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[49] = a3;
  v4[50] = v3;
  v4[47] = a1;
  v4[48] = a2;
  sub_192227CC0();
  v4[51] = sub_192227CB0();
  v6 = sub_192227C70();
  v4[52] = v6;
  v4[53] = v5;

  return MEMORY[0x1EEE6DFA0](sub_19214B390, v6, v5);
}

uint64_t sub_19214B390()
{
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v3 = *(v0 + 376);
  v4 = *v1;
  v5 = v1[2];
  *(v0 + 32) = v1[1];
  *(v0 + 48) = v5;
  *(v0 + 16) = v4;
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[6];
  *(v0 + 96) = v1[5];
  *(v0 + 112) = v8;
  *(v0 + 64) = v6;
  *(v0 + 80) = v7;
  v9 = v1[7];
  v10 = v1[8];
  v11 = v1[10];
  *(v0 + 160) = v1[9];
  *(v0 + 176) = v11;
  *(v0 + 128) = v9;
  *(v0 + 144) = v10;
  *(v0 + 192) = v2;
  v3[3] = type metadata accessor for ControlTemplatePicker(0);
  v3[4] = sub_19214BB44(&qword_1EADF03A8, type metadata accessor for ControlTemplatePicker, &protocol conformance descriptor for ControlTemplatePicker);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1920800B4(v1, v0 + 200);
  v13 = v2;
  v14 = swift_task_alloc();
  *(v0 + 432) = v14;
  *v14 = v0;
  v14[1] = sub_19214B4D4;
  v15 = *(v0 + 384);

  return sub_192111D70(boxed_opaque_existential_1, v15);
}

uint64_t sub_19214B4D4()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  v3 = *(v2 + 424);
  v4 = *(v2 + 416);
  if (v0)
  {
    v5 = sub_19214B680;
  }

  else
  {
    v5 = sub_19214B610;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_19214B610()
{
  sub_19214BB8C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19214B680()
{
  v1 = *(v0 + 376);
  sub_19214BB8C(v0 + 16);

  __swift_deallocate_boxed_opaque_existential_1(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19214B724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v4;
  v9 = v3[9];
  *(v7 + 144) = v3[8];
  *(v7 + 160) = v9;
  *(v7 + 176) = v3[10];
  v10 = v3[5];
  *(v7 + 80) = v3[4];
  *(v7 + 96) = v10;
  v11 = v3[7];
  *(v7 + 112) = v3[6];
  *(v7 + 128) = v11;
  v12 = v3[1];
  *(v7 + 16) = *v3;
  *(v7 + 32) = v12;
  v13 = v3[3];
  *(v7 + 48) = v3[2];
  *(v7 + 64) = v13;
  v14 = swift_task_alloc();
  *(v7 + 192) = v14;
  *v14 = v7;
  v14[1] = sub_19214B80C;

  return sub_19214B2F4(a1, a2, a3);
}

uint64_t sub_19214B80C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_19214B900(uint64_t a1)
{
  v6 = (*(v1 + 144) + **(v1 + 144));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1920A5800;

  return v6(a1);
}

uint64_t sub_19214B9F4(uint64_t a1, uint64_t a2)
{
  v8 = (*(v2 + 160) + **(v2 + 160));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1920B3B44;

  return v8(a2, a1);
}

uint64_t sub_19214BB44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_19214BC70@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  if (v3)
  {
    v3(v7);
    v4 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v4;
    *(a1 + 64) = v8;
    v5 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v5;
  }

  else
  {
    *(a1 + 64) = 0;
    *&v5 = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return *&v5;
}

uint64_t sub_19214BCE4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1920EF9CC;

  return sub_1921487C4(a1, v1 + v6, v4, v5);
}

uint64_t sub_19214BDC8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1920B3B44;

  return sub_19214952C(a1, a2, v2 + v8, v6, v7);
}

uint64_t sub_19214BEB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = (v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1920EF9CC;

  return sub_19214996C(a1, v1 + v6, v8, v9, v4, v5);
}

uint64_t sub_19214BFD8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = (v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1920EF9CC;

  return sub_192149FE8(a1, v1 + v6, v8, v9, v4, v5);
}

uint64_t sub_19214C0FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = (v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1920EF9CC;

  return sub_19214A750(a1, v1 + v6, v8, v9, v4, v5);
}

uint64_t objectdestroy_56Tm()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_19214C2A0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1920B3B44;

  return sub_19214ADB8(a1, a2, v2 + v8, v6, v7);
}

uint64_t objectdestroy_64Tm()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_19214C428(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = (v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1920EF9CC;

  return sub_192149D3C(a1, v1 + v6, v8, v9, v4, v5);
}

uint64_t sub_19214C584@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 32))(a1, *(v2 + 48));
  *a2 = result;
  return result;
}

unint64_t sub_19214C5F0()
{
  result = qword_1EADF0CC8;
  if (!qword_1EADF0CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0CC8);
  }

  return result;
}

unint64_t sub_19214C644()
{
  result = qword_1EADEDEF8;
  if (!qword_1EADEDEF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADEDEF8);
  }

  return result;
}

double sub_19214C7A4@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 96);
  if (v3)
  {
    v3(v7);
    v4 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v4;
    *(a1 + 64) = v8;
    v5 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v5;
  }

  else
  {
    *(a1 + 64) = 0;
    *&v5 = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return *&v5;
}

id sub_19214C89C@<X0>(void *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_metadata;
  v4 = *(v3 + *(type metadata accessor for WidgetArchivableMetadata(0) + 28));
  *a1 = v4;

  return v4;
}

id sub_19214C8EC()
{
  v1 = v0 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_metadata;
  v2 = *(v1 + *(type metadata accessor for WidgetArchivableMetadata(0) + 32));

  return v2;
}

uint64_t sub_19214C934@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_metadata;
  v4 = type metadata accessor for WidgetArchivableMetadata(0);
  return sub_1920555AC(v3 + *(v4 + 44), a1, type metadata accessor for TimelineReloadPolicy);
}

BOOL sub_19214C98C()
{
  v1 = sub_1922266C0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0CD8, &unk_192237800);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v10 - v6;
  v8 = OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_archivedStates;
  swift_beginAccess();
  sub_19202CFFC(v0 + v8, v7, &qword_1EADF0CD8, &unk_192237800);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_192033970(v7, &qword_1EADF0CD8, &unk_192237800);
    return 1;
  }

  else
  {
    (*(v2 + 16))(v4, v7, v1);
    sub_192033970(v7, &qword_1EADF0CD8, &unk_192237800);
    sub_19205E17C(&qword_1EADEDD88, MEMORY[0x1E697C620], MEMORY[0x1E697C628]);
    sub_192227E00();
    sub_192227E60();
    (*(v2 + 8))(v4, v1);
    return v10[2] == v10[1];
  }
}

uint64_t sub_19214CBC0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_metadata;
  v4 = *(type metadata accessor for WidgetArchivableMetadata(0) + 20);
  v5 = sub_192225150();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_19214CC48@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_metadata;
  v4 = type metadata accessor for WidgetArchivableMetadata(0);
  return sub_1920555AC(v3 + *(v4 + 24), a1, type metadata accessor for BundleStub);
}

uint64_t sub_19214CCA0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t sub_19214CD34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
}

double sub_19214CD94()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_19214CDCC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t sub_19214CE64(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F0, &qword_19222A7A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_192224E00();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7, v9);
  v12 = *a2;
  (*(v8 + 32))(v6, v11, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v13 = OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection____lazy_storage___dateRange;
  swift_beginAccess();
  sub_192096378(v6, v12 + v13);
  return swift_endAccess();
}

uint64_t sub_19214CFF8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F0, &qword_19222A7A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_192224E00();
  v7 = *(v6 - 8);
  (*(v7 + 32))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection____lazy_storage___dateRange;
  swift_beginAccess();
  sub_192096378(v5, v1 + v8);
  return swift_endAccess();
}

void (*sub_19214D120(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F0, &qword_19222A7A0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[7] = v7;
  v8 = sub_192224E00();
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  if (v3)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v5[10] = v10;
  sub_1920419A4(v10);
  return sub_19214D240;
}

void sub_19214D240(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 64);
  v7 = *(*a1 + 48);
  if (a2)
  {
    (*(v3 + 16))(v2[7], v2[10], v2[8]);
    (*(v3 + 56))(v5, 0, 1, v6);
    v8 = OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection____lazy_storage___dateRange;
    swift_beginAccess();
    sub_192096378(v5, v7 + v8);
    swift_endAccess();
    (*(v3 + 8))(v4, v6);
  }

  else
  {
    (*(v3 + 32))(v2[7], v2[10], v2[8]);
    (*(v3 + 56))(v5, 0, 1, v6);
    v9 = OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection____lazy_storage___dateRange;
    swift_beginAccess();
    sub_192096378(v5, v7 + v9);
    swift_endAccess();
  }

  free(v4);
  free(v5);

  free(v2);
}

void sub_19214D3B8()
{
  v1 = v0 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_metadata;
  v2 = *(v1 + *(type metadata accessor for WidgetArchivableMetadata(0) + 28));
  KeyPath = swift_getKeyPath();
  v4 = v2;
  v5 = sub_192066C3C(KeyPath);

  if (!v5)
  {
    goto LABEL_12;
  }

  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_9:

    __break(1u);
    goto LABEL_10;
  }

  if (!sub_192228340())
  {
    goto LABEL_9;
  }

LABEL_4:

  if ((v5 & 0xC000000000000001) != 0)
  {
LABEL_10:
    MEMORY[0x193B0B410](0, v5);
    goto LABEL_7;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v5 + 32);
LABEL_7:

    return;
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t sub_19214D49C@<X0>(unint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_19205E20C(a1, a2, a3);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    result = sub_192069070(a1, v7, a4);
    if (v4)
    {
      return result;
    }

    v9 = 0;
  }

  v11 = type metadata accessor for ViewableTimelineEntry(0);
  return (*(*(v11 - 8) + 56))(a4, v9, 1, v11);
}

uint64_t sub_19214D544(uint64_t a1)
{
  v25 = a1;
  v2 = sub_192225150();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries;
  v24 = v1;

  v7 = sub_192096880(v6);

  v9 = *(v7 + 16);
  v10 = (v3 + 8);
  v11 = v7 + 40 * v9 - 8;
  while (1)
  {
    v12 = v9;
    if (!v9)
    {

      v21 = sub_192096880(v20);

      v22 = *(v21 + 16);

      v19 = v22 == 0;
      goto LABEL_7;
    }

    if (v9 > *(v7 + 16))
    {
      break;
    }

    --v9;
    sub_192033A64(v11, v27);
    v14 = v28;
    v13 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    (*(v13 + 8))(v14, v13);
    sub_19205E17C(&qword_1ED7486A8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    LOBYTE(v13) = sub_1922278B0();
    (*v10)(v5, v2);
    result = __swift_destroy_boxed_opaque_existential_1(v27);
    v11 -= 40;
    if ((v13 & 1) == 0)
    {

      sub_192096880(v15);

      v17 = sub_192096880(v16);

      v18 = *(v17 + 16) - 1;

      v19 = v18 == v9;
LABEL_7:
      LOBYTE(v27[0]) = v12 == 0;
      v26 = v19;
      return v9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _TimelineArchivedViewCollection.deinit()
{

  sub_192033970(v0 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection____lazy_storage___dateRange, &qword_1EADEE9F0, &qword_19222A7A0);
  sub_192055614(v0 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_metadata, type metadata accessor for WidgetArchivableMetadata);
  sub_192033970(v0 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_archivedStates, &qword_1EADF0CD8, &unk_192237800);
  return v0;
}

id sub_19214D850()
{
  v1 = *v0 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_metadata;
  v2 = *(v1 + *(type metadata accessor for WidgetArchivableMetadata(0) + 32));

  return v2;
}

uint64_t sub_19214D8C0@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  *a1 = *(v3 + 16);
  return result;
}

double sub_19214D908()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_19214D94C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0CD8, &unk_192237800);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of _TimelineArchivedViewCollection.viewableEntry(for:in:ignoringEnvironmentKeys:)()
{
  return (*(*v0 + 320))();
}

{
  return (*(*v0 + 328))();
}

unint64_t sub_19214DC80()
{
  result = qword_1ED74C6A8;
  if (!qword_1ED74C6A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED74C6A8);
  }

  return result;
}

double ActivityViewEntryMetadata.metrics.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = result;
  return result;
}

double ActivityViewEntryMetadata.metrics.setter(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  *(v1 + 32) = result;
  return result;
}

__n128 ActivityViewEntryMetadata.backgroundTintColor.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 60);
  v3 = *(v1 + 61);
  result = *(v1 + 44);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  a1[1].n128_u8[1] = v3;
  return result;
}

__n128 ActivityViewEntryMetadata.backgroundTintColor.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  v3 = a1[1].n128_u8[1];
  result = *a1;
  *(v1 + 44) = *a1;
  *(v1 + 60) = v2;
  *(v1 + 61) = v3;
  return result;
}

__n128 ActivityViewEntryMetadata.textColor.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[5].n128_u8[0];
  v3 = v1[5].n128_u8[1];
  result = v1[4];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  a1[1].n128_u8[1] = v3;
  return result;
}

__n128 ActivityViewEntryMetadata.textColor.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  v3 = a1[1].n128_u8[1];
  result = *a1;
  v1[4] = *a1;
  v1[5].n128_u8[0] = v2;
  v1[5].n128_u8[1] = v3;
  return result;
}

unint64_t sub_19214DE30()
{
  v1 = *v0;
  v2 = 0x7363697274656DLL;
  v3 = 0x6F6C6F4374786574;
  if (v1 != 3)
  {
    v3 = 0x6465766968637261;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000013;
  }

  if (*v0)
  {
    v2 = 0xD000000000000019;
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

uint64_t sub_19214DEE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_19214EBBC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_19214DF08(uint64_t a1)
{
  v2 = sub_19214E770();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19214DF44(uint64_t a1)
{
  v2 = sub_19214E770();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityViewEntryMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0CE0, &qword_1922378C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  v9 = *(v3 + 4);
  v25 = *(v3 + 40);
  v10 = *(v3 + 44);
  v23 = *(v3 + 52);
  v24 = v10;
  LODWORD(v10) = *(v3 + 60);
  v21 = *(v3 + 61);
  v22 = v10;
  v11 = *(v3 + 9);
  *&v18 = *(v3 + 8);
  *(&v18 + 1) = v11;
  LODWORD(v10) = *(v3 + 80);
  v19 = *(v3 + 81);
  v20 = v10;
  v12 = *(v3 + 82);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19214E770();
  sub_192228B90();
  v13 = *v3;
  v28 = v3[1];
  v27 = v13;
  v29 = v9;
  v26 = 0;
  sub_19214E7C4();
  sub_1922288C0();
  if (!v2)
  {
    v15 = v22;
    v17 = v23;
    v16 = v24;
    LOBYTE(v27) = 1;
    sub_192228870();
    *&v27 = v16;
    *(&v27 + 1) = v17;
    LOBYTE(v28) = v15;
    BYTE1(v28) = v21;
    v26 = 2;
    sub_19214E818();
    sub_192228850();
    v27 = v18;
    LOBYTE(v28) = v20;
    BYTE1(v28) = v19;
    v26 = 3;
    sub_192228850();
    LOBYTE(v27) = v12;
    v26 = 4;
    sub_19214E86C();
    sub_1922288C0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ActivityViewEntryMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0CE8, &qword_1922378C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  v33 = 1;
  v32 = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19214E770();
  sub_192228B70();
  if (!v2)
  {
    v28 = 0;
    sub_19214E8C0();
    sub_1922287C0();
    v26 = v29;
    v27 = v30;
    v9 = v31;
    LOBYTE(v29) = 1;
    v25 = sub_192228770();
    v28 = 2;
    sub_19214E914();
    sub_192228750();
    v23 = *(&v29 + 1);
    v24 = v29;
    v10 = v30;
    v33 = BYTE1(v30);
    v28 = 3;
    sub_192228750();
    v22 = v10;
    v12 = v24;
    v21 = *(&v29 + 1);
    v13 = v29;
    HIDWORD(v20) = v30;
    v32 = BYTE1(v30);
    v28 = 4;
    sub_19214E968();
    sub_1922287C0();
    (*(v6 + 8))(v8, v5);
    v14 = v25 & 1;
    v15 = v29;
    v16 = v33;
    v17 = v32;
    v18 = v27;
    *a2 = v26;
    *(a2 + 16) = v18;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
    *(a2 + 44) = v12;
    *(a2 + 52) = v23;
    *(a2 + 60) = v22;
    *(a2 + 61) = v16;
    v19 = v21;
    *(a2 + 64) = v13;
    *(a2 + 72) = v19;
    *(a2 + 80) = BYTE4(v20);
    *(a2 + 81) = v17;
    *(a2 + 82) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _s9WidgetKit25ActivityViewEntryMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 60);
  v5 = *(a1 + 61);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 60);
  v9 = *(a2 + 61);
  v12 = *(a2 + 80);
  v13 = *(a1 + 80);
  v16 = *(a2 + 81);
  v17 = *(a1 + 81);
  v14 = *(a2 + 82);
  v15 = *(a1 + 82);
  v10 = CGRectEqualToRect(*a1, *a2);
  result = 0;
  if (v10 && v2 == v6 && ((v3 ^ v7) & 1) == 0)
  {
    if (v5)
    {
      if (v9)
      {
        goto LABEL_6;
      }
    }

    else if ((v9 & 1) == 0)
    {
      if (v4)
      {
        if ((v8 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((v8 & 1) != 0 || (sub_192227290() & 1) == 0)
      {
        return 0;
      }

LABEL_6:
      if (v17)
      {
        if (v16)
        {
          return v15 ^ v14 ^ 1u;
        }
      }

      else if ((v16 & 1) == 0)
      {
        if (v13)
        {
          if (v12)
          {
            return v15 ^ v14 ^ 1u;
          }
        }

        else if (v12 & 1) == 0 && (sub_192227290())
        {
          return v15 ^ v14 ^ 1u;
        }
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_19214E770()
{
  result = qword_1EADEE0F8;
  if (!qword_1EADEE0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE0F8);
  }

  return result;
}

unint64_t sub_19214E7C4()
{
  result = qword_1EADED968;
  if (!qword_1EADED968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED968);
  }

  return result;
}

unint64_t sub_19214E818()
{
  result = qword_1EADEDAF8;
  if (!qword_1EADEDAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDAF8);
  }

  return result;
}

unint64_t sub_19214E86C()
{
  result = qword_1EADEDA20;
  if (!qword_1EADEDA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDA20);
  }

  return result;
}

unint64_t sub_19214E8C0()
{
  result = qword_1EADED130;
  if (!qword_1EADED130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED130);
  }

  return result;
}

unint64_t sub_19214E914()
{
  result = qword_1EADED198;
  if (!qword_1EADED198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED198);
  }

  return result;
}

unint64_t sub_19214E968()
{
  result = qword_1EADED170;
  if (!qword_1EADED170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED170);
  }

  return result;
}

__n128 __swift_memcpy83_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 79) = *(a2 + 79);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_19214E9E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 83))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_19214EA34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 82) = 0;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 83) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 83) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_19214EAB8()
{
  result = qword_1EADF0CF0;
  if (!qword_1EADF0CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0CF0);
  }

  return result;
}

unint64_t sub_19214EB10()
{
  result = qword_1EADEE0E8;
  if (!qword_1EADEE0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE0E8);
  }

  return result;
}

unint64_t sub_19214EB68()
{
  result = qword_1EADEE0F0;
  if (!qword_1EADEE0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE0F0);
  }

  return result;
}

uint64_t sub_19214EBBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7363697274656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000192249650 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000019224BD30 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6C6F4374786574 && a2 == 0xE900000000000072 || (sub_1922289A0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465766968637261 && a2 == 0xEE00796C696D6146)
  {

    return 4;
  }

  else
  {
    v6 = sub_1922289A0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

__n128 MetricsRequest.init(width:height:cornerRadius:edgeInsets:clipMargin:scaleFactor:)@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  v12 = *a1;
  v13 = a1[1];
  v14 = *(a1 + 16);
  v15 = *a2;
  v16 = a2[1];
  v17 = *(a2 + 16);
  v18 = *(type metadata accessor for MetricsRequest(0) + 40);
  v19 = sub_192226600();
  (*(*(v19 - 8) + 56))(a4 + v18, 1, 1, v19);
  *(a4 + 48) = a5;
  result = *a3;
  v21 = *(a3 + 16);
  *(a4 + 56) = *a3;
  *a4 = v12;
  *(a4 + 8) = v13;
  *(a4 + 16) = v14;
  *(a4 + 24) = v15;
  *(a4 + 32) = v16;
  *(a4 + 40) = v17;
  *(a4 + 72) = v21;
  *(a4 + 88) = *(a3 + 32);
  *(a4 + 96) = a6;
  *(a4 + 104) = a7;
  return result;
}

uint64_t type metadata accessor for MetricsRequest(uint64_t a1)
{
  result = qword_1ED74BA48;
  if (!qword_1ED74BA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 MetricsRequest.width.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 MetricsRequest.width.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u8[0] = v2;
  return result;
}

__n128 MetricsRequest.height.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 24);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 MetricsRequest.height.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = v2;
  return result;
}

__n128 MetricsRequest.edgeInsets.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  result = *(v1 + 56);
  v4 = *(v1 + 72);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 MetricsRequest.edgeInsets.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 88) = *(a1 + 32);
  return result;
}

uint64_t MetricsRequest.watchDisplayVariant.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MetricsRequest(0) + 40);

  return sub_192150CF4(v3, a1);
}

uint64_t MetricsRequest.watchDisplayVariant.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MetricsRequest(0) + 40);

  return sub_192150D64(a1, v3);
}

uint64_t sub_19214F120(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6772614D70696C63;
    v6 = 0x636146656C616373;
    if (a1 != 8)
    {
      v6 = 0xD000000000000013;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x746F427465736E69;
    if (a1 != 5)
    {
      v7 = 0x6172547465736E69;
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
    v1 = 0x6874646977;
    v2 = 0x615272656E726F63;
    v3 = 0x706F547465736E69;
    if (a1 != 3)
    {
      v3 = 0x61654C7465736E69;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x746867696568;
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

uint64_t sub_19214F28C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_19214F120(*a1);
  v5 = v4;
  if (v3 == sub_19214F120(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1922289A0();
  }

  return v8 & 1;
}

uint64_t sub_19214F314()
{
  v1 = *v0;
  sub_192228AD0();
  sub_19214F120(v1);
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_19214F378(uint64_t a1)
{
  sub_19214F120(*v1);
  sub_1922279B0();
}

uint64_t sub_19214F3CC()
{
  v1 = *v0;
  sub_192228AD0();
  sub_19214F120(v1);
  sub_1922279B0();

  return sub_192228B30();
}

unint64_t sub_19214F42C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_192151200(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_19214F45C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19214F120(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_19214F4A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_192151200(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19214F4CC(uint64_t a1)
{
  v2 = sub_192150DD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19214F508(uint64_t a1)
{
  v2 = sub_192150DD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MetricsRequest.init(width:height:cornerRadius:edgeInsets:clipMargin:scaleFactor:watchDisplayVariant:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>)
{
  v14 = *a1;
  v15 = a1[1];
  v16 = *(a1 + 16);
  v17 = *a2;
  v18 = a2[1];
  v19 = *(a2 + 16);
  v20 = *(type metadata accessor for MetricsRequest(0) + 40);
  v21 = sub_192226600();
  (*(*(v21 - 8) + 56))(a5 + v20, 1, 1, v21);
  *(a5 + 48) = a6;
  v22 = *(a3 + 16);
  *(a5 + 56) = *a3;
  *a5 = v14;
  *(a5 + 8) = v15;
  *(a5 + 16) = v16;
  *(a5 + 24) = v17;
  *(a5 + 32) = v18;
  *(a5 + 40) = v19;
  *(a5 + 72) = v22;
  *(a5 + 88) = *(a3 + 32);
  *(a5 + 96) = a7;
  *(a5 + 104) = a8;

  return sub_192150D64(a4, a5 + v20);
}

uint64_t MetricsRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD38, &qword_1922316A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v42 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0CF8, &qword_192237AC0);
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v42 - v7;
  v9 = type metadata accessor for MetricsRequest(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v11 + 72) = 0u;
  *(v11 + 56) = 0u;
  v11[88] = 1;
  v13 = *(v12 + 48);
  v14 = sub_192226600();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v17 = v15 + 56;
  v45 = v13;
  v48 = v11;
  v16(&v11[v13], 1, 1, v14);
  v18 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_192150DD4();
  v19 = v46;
  sub_192228B70();
  if (v19)
  {
    v22 = v48;
    __swift_destroy_boxed_opaque_existential_1(v47);
    return sub_192033970(v22 + v45, &qword_1EADEFD38, &qword_1922316A0);
  }

  else
  {
    v42[1] = v17;
    v46 = v16;
    v20 = v44;
    v51 = 0;
    sub_192150E28();
    v21 = v8;
    sub_1922287C0();
    v24 = v50;
    v25 = v48;
    *v48 = v49;
    *(v25 + 16) = v24;
    v51 = 1;
    sub_1922287C0();
    v26 = v50;
    *(v25 + 24) = v49;
    *(v25 + 40) = v26;
    LOBYTE(v49) = 2;
    sub_192228780();
    *(v25 + 48) = v27;
    LOBYTE(v49) = 7;
    sub_192228780();
    *(v25 + 96) = v28;
    LOBYTE(v49) = 8;
    sub_192228780();
    *(v25 + 104) = v29;
    LOBYTE(v49) = 9;
    v30 = sub_192228800();
    if (v30)
    {
      LOBYTE(v49) = 9;
      sub_19215124C(&qword_1EADF0D00, MEMORY[0x1E697F8E8], MEMORY[0x1E697F900]);
      sub_1922287C0();
      v46(v5, 0, 1, v14);
      sub_192150D64(v5, v25 + v45);
    }

    LOBYTE(v49) = 3;
    sub_192228780();
    v31 = v43;
    v33 = v32;
    LOBYTE(v49) = 4;
    sub_192228780();
    v35 = v34;
    LOBYTE(v49) = 5;
    sub_192228780();
    v37 = v36;
    LOBYTE(v49) = 6;
    sub_192228780();
    v39 = v38;
    (*(v20 + 8))(v21, v6);
    v40 = v48;
    *(v48 + 7) = v33;
    *(v40 + 64) = v35;
    *(v40 + 72) = v37;
    *(v40 + 80) = v39;
    *(v40 + 88) = 0;
    v41 = v48;
    sub_1920F864C(v48, v31);
    __swift_destroy_boxed_opaque_existential_1(v47);
    return sub_192101B1C(v41);
  }
}

uint64_t MetricsRequest.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD38, &qword_1922316A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v29 = &v27 - v5;
  v6 = sub_192226600();
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0D08, &qword_192237AC8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192150DD4();
  sub_192228B90();
  v13 = *(v2 + 16);
  v33 = *v2;
  v34 = v13;
  v32 = 0;
  sub_192150E7C();
  v14 = v31;
  sub_1922288C0();
  if (v14)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v31 = v8;
  v15 = *(v2 + 40);
  v33 = *(v2 + 24);
  v34 = v15;
  v32 = 1;
  sub_1922288C0();
  *&v33 = *(v2 + 6);
  v32 = 2;
  sub_192059A84();
  sub_1922288C0();
  v17 = v10;
  *&v33 = *(v2 + 12);
  v32 = 7;
  sub_1922288C0();
  *&v33 = *(v2 + 13);
  v32 = 8;
  sub_1922288C0();
  v28 = v9;
  if ((*(v2 + 88) & 1) == 0)
  {
    v23 = *(v2 + 9);
    v22 = *(v2 + 10);
    v24 = *(v2 + 8);
    *&v33 = *(v2 + 7);
    v32 = 3;
    sub_1922288C0();
    *&v33 = v24;
    v32 = 4;
    sub_1922288C0();
    *&v33 = v23;
    v32 = 5;
    sub_1922288C0();
    *&v33 = v22;
    v32 = 6;
    sub_1922288C0();
  }

  v18 = type metadata accessor for MetricsRequest(0);
  v19 = v29;
  sub_192150CF4(v2 + *(v18 + 40), v29);
  v20 = v30;
  v21 = v6;
  if ((*(v30 + 48))(v19, 1, v6) == 1)
  {
    (*(v17 + 8))(v12, v28);
    return sub_192033970(v19, &qword_1EADEFD38, &qword_1922316A0);
  }

  else
  {
    v25 = v31;
    (*(v20 + 32))(v31, v19, v21);
    LOBYTE(v33) = 9;
    sub_19215124C(&qword_1EADF0D10, MEMORY[0x1E697F8E8], MEMORY[0x1E697F8F0]);
    v26 = v28;
    sub_1922288C0();
    (*(v20 + 8))(v25, v21);
    return (*(v17 + 8))(v12, v26);
  }
}

uint64_t MetricsRequest.hash(into:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD38, &qword_1922316A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - v3;
  LOBYTE(v3) = *(v1 + 16);
  v23 = *v1;
  v24 = v3;
  DimensionRequest.hash(into:)();
  v5 = *(v1 + 40);
  v23 = *(v1 + 24);
  v24 = v5;
  DimensionRequest.hash(into:)();
  v6 = *(v1 + 6);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x193B0BAC0](*&v6);
  v7 = *(v1 + 12);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  MEMORY[0x193B0BAC0](*&v7);
  v8 = *(v1 + 13);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  MEMORY[0x193B0BAC0](*&v8);
  v9 = *(v1 + 9);
  v10 = *(v1 + 10);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  if (*(v1 + 88))
  {
    v11 = 0x3FF0000000000000;
  }

  else
  {
    v11 = *&v10;
  }

  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  if (*(v1 + 88))
  {
    v12 = 0x3FF0000000000000;
  }

  else
  {
    v12 = *&v9;
  }

  v13 = *(v1 + 8);
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  if (*(v1 + 88))
  {
    v14 = 0x3FF0000000000000;
  }

  else
  {
    v14 = *&v13;
  }

  if (*(v1 + 7) == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = *(v1 + 7);
  }

  if (*(v1 + 88))
  {
    v16 = 0x3FF0000000000000;
  }

  else
  {
    v16 = *&v15;
  }

  MEMORY[0x193B0BAC0](v16);
  MEMORY[0x193B0BAC0](v14);
  MEMORY[0x193B0BAC0](v12);
  MEMORY[0x193B0BAC0](v11);
  v17 = type metadata accessor for MetricsRequest(0);
  sub_192150CF4(v1 + *(v17 + 40), v4);
  v18 = sub_192226600();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v4, 1, v18) == 1)
  {
    sub_192033970(v4, &qword_1EADEFD38, &qword_1922316A0);
    v20 = 1;
  }

  else
  {
    v21 = sub_1922265F0();
    (*(v19 + 8))(v4, v18);
    v20 = v21;
  }

  return MEMORY[0x193B0BA90](v20);
}

uint64_t MetricsRequest.description.getter()
{
  v1 = v0;
  v2 = 7104878;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000017, 0x800000019224BD50);
  v3 = DimensionRequest.description.getter();
  MEMORY[0x193B0A990](v3);

  MEMORY[0x193B0A990](0x746867696568202CLL, 0xE90000000000003DLL);
  v4 = DimensionRequest.description.getter();
  MEMORY[0x193B0A990](v4);

  MEMORY[0x193B0A990](0xD000000000000010, 0x800000019224BD70);
  v5 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE18, &unk_19223C580);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_19222B480;
  v7 = MEMORY[0x1E69E7DE0];
  *(v6 + 56) = MEMORY[0x1E69E7DE0];
  v8 = sub_192150ED0();
  *(v6 + 64) = v8;
  *(v6 + 32) = v5;
  v9 = sub_192227970();
  MEMORY[0x193B0A990](v9);

  MEMORY[0x193B0A990](0x614D70696C63202CLL, 0xED00003D6E696772);
  v10 = *(v1 + 96);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_19222B480;
  *(v11 + 56) = v7;
  *(v11 + 64) = v8;
  *(v11 + 32) = v10;
  v12 = sub_192227970();
  MEMORY[0x193B0A990](v12);

  MEMORY[0x193B0A990](0x46656C616373202CLL, 0xEE003D726F746361);
  v13 = *(v1 + 104);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_19222B480;
  *(v14 + 56) = v7;
  *(v14 + 64) = v8;
  *(v14 + 32) = v13;
  v15 = sub_192227970();
  MEMORY[0x193B0A990](v15);

  MEMORY[0x193B0A990](0xD000000000000012, 0x800000019224BD90);
  v16 = *(v1 + 88);
  if (v16)
  {
    v17 = 0xE300000000000000;
    MEMORY[0x193B0A990](7104878, 0xE300000000000000);

    MEMORY[0x193B0A990](0x6E696461656C202CLL, 0xEA00000000003D67);
    v18 = 7104878;
  }

  else
  {
    v19 = sub_192227D10();
    MEMORY[0x193B0A990](v19);

    MEMORY[0x193B0A990](0x6E696461656C202CLL, 0xEA00000000003D67);
    v18 = sub_192227D10();
    v17 = v20;
  }

  MEMORY[0x193B0A990](v18, v17);

  MEMORY[0x193B0A990](0x6D6F74746F62202CLL, 0xE90000000000003DLL);
  if (v16)
  {
    v21 = 0xE300000000000000;
    MEMORY[0x193B0A990](7104878, 0xE300000000000000);

    MEMORY[0x193B0A990](0x696C69617274202CLL, 0xEB000000003D676ELL);
  }

  else
  {
    v22 = sub_192227D10();
    MEMORY[0x193B0A990](v22);

    MEMORY[0x193B0A990](0x696C69617274202CLL, 0xEB000000003D676ELL);
    v2 = sub_192227D10();
    v21 = v23;
  }

  MEMORY[0x193B0A990](v2, v21);

  MEMORY[0x193B0A990](62, 0xE100000000000000);
  return 0;
}

uint64_t MetricsRequest.hashValue.getter()
{
  sub_192228AD0();
  MetricsRequest.hash(into:)(v1);
  return sub_192228B30();
}

uint64_t sub_192150854()
{
  sub_192228AD0();
  MetricsRequest.hash(into:)(v1);
  return sub_192228B30();
}

uint64_t sub_192150898()
{
  sub_192228AD0();
  MetricsRequest.hash(into:)(v1);
  return sub_192228B30();
}

uint64_t _s9WidgetKit14MetricsRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_192226600();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD38, &qword_1922316A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0D28, &qword_192237D38);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = *a1;
  v16 = *a2;
  v17 = *(a2 + 16);
  if ((*(a1 + 16) & 1) == 0)
  {
    if (v15 != v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }

LABEL_9:
    v18 = *(a1 + 24);
    v19 = *(a2 + 24);
    v17 = *(a2 + 40);
    if (*(a1 + 40))
    {
      if (!*(a2 + 40))
      {
        return v17;
      }

      v17 = 0;
      if (v18 != v19 || *(a1 + 32) != *(a2 + 32))
      {
        return v17;
      }
    }

    else
    {
      if (v18 != v19)
      {
        LOBYTE(v17) = 1;
      }

      if (v17)
      {
        return 0;
      }
    }

    if (*(a1 + 48) == *(a2 + 48))
    {
      v20 = *(a2 + 88);
      if ((*(a1 + 88) & 1) == 0)
      {
        if (*(a2 + 88))
        {
          return 0;
        }

        v21 = v12;
        v20 = sub_1922259A0();
        v12 = v21;
      }

      if ((v20 & 1) == 0 || *(a1 + 96) != *(a2 + 96) || *(a1 + 104) != *(a2 + 104))
      {
        return 0;
      }

      v22 = v12;
      v23 = *(type metadata accessor for MetricsRequest(0) + 40);
      v24 = *(v22 + 48);
      sub_192150CF4(a1 + v23, v14);
      sub_192150CF4(a2 + v23, &v14[v24]);
      v25 = *(v5 + 48);
      if (v25(v14, 1, v4) == 1)
      {
        if (v25(&v14[v24], 1, v4) == 1)
        {
          sub_192033970(v14, &qword_1EADEFD38, &qword_1922316A0);
          return 1;
        }

        goto LABEL_29;
      }

      sub_192150CF4(v14, v10);
      if (v25(&v14[v24], 1, v4) == 1)
      {
        (*(v5 + 8))(v10, v4);
LABEL_29:
        sub_192033970(v14, &qword_1EADF0D28, &qword_192237D38);
        return 0;
      }

      (*(v5 + 32))(v7, &v14[v24], v4);
      sub_19215124C(&qword_1EADF0D30, MEMORY[0x1E697F8E8], MEMORY[0x1E697F8F8]);
      v27 = sub_192227910();
      v28 = *(v5 + 8);
      v28(v7, v4);
      v28(v10, v4);
      sub_192033970(v14, &qword_1EADEFD38, &qword_1922316A0);
      if (v27)
      {
        return 1;
      }
    }

    return 0;
  }

  if (*(a2 + 16))
  {
    v17 = 0;
    if (v15 == v16 && *(a1 + 8) == *(a2 + 8))
    {
      goto LABEL_9;
    }
  }

  return v17;
}

uint64_t sub_192150CF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD38, &qword_1922316A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_192150D64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD38, &qword_1922316A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_192150DD4()
{
  result = qword_1EADEE3C0;
  if (!qword_1EADEE3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE3C0);
  }

  return result;
}

unint64_t sub_192150E28()
{
  result = qword_1EADEDF48;
  if (!qword_1EADEDF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDF48);
  }

  return result;
}

unint64_t sub_192150E7C()
{
  result = qword_1EADED148;
  if (!qword_1EADED148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED148);
  }

  return result;
}

unint64_t sub_192150ED0()
{
  result = qword_1EADED360;
  if (!qword_1EADED360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED360);
  }

  return result;
}

void sub_192150F94(uint64_t a1)
{
  sub_192151040();
  if (v1 <= 0x3F)
  {
    sub_192151090(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_192151040()
{
  if (!qword_1ED74C3E0[0])
  {
    v0 = sub_192228240();
    if (!v1)
    {
      atomic_store(v0, qword_1ED74C3E0);
    }
  }
}

void sub_192151090(uint64_t a1)
{
  if (!qword_1ED74BAD8)
  {
    sub_192226600();
    v1 = sub_192228240();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED74BAD8);
    }
  }
}

unint64_t sub_1921510FC()
{
  result = qword_1EADF0D20;
  if (!qword_1EADF0D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0D20);
  }

  return result;
}

unint64_t sub_192151154()
{
  result = qword_1EADEE3B0;
  if (!qword_1EADEE3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE3B0);
  }

  return result;
}

unint64_t sub_1921511AC()
{
  result = qword_1EADEE3B8;
  if (!qword_1EADEE3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE3B8);
  }

  return result;
}

unint64_t sub_192151200(uint64_t a1, uint64_t a2)
{
  v2 = sub_192228700();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_19215124C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ControlAffordances.init(tint:status:actionHint:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  return result;
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI4TextVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1921512FC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_192151358(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_192151410()
{
  sub_192228220();

  JUMPOUT(0x193B0B480);
}

uint64_t sub_1921514A0()
{
  sub_192151410();

  return swift_deallocClassInstance();
}

uint64_t ActivityWidgetRequest.descriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_descriptor;
  v4 = sub_192225360();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ActivityWidgetRequest.defaultPayload.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_defaultPayload);
  sub_1920367C8(v1, *(v0 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_defaultPayload + 8));
  return v1;
}

uint64_t ActivityWidgetRequest.PayloadMetadata.payloadID.getter()
{
  v1 = *v0;

  return v1;
}

double ActivityWidgetRequest.payloadMetadata.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata + 8);
  v3 = *(v1 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata + 16);
  v4 = *(v1 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata + 17);
  v5 = *(v1 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata + 18);
  *a1 = *(v1 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
  *(a1 + 18) = v5;

  return result;
}

id ActivityWidgetRequest.environment.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_environment);
  *a1 = v2;
  return v2;
}

void sub_192151694(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_jindoEnvironment;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1921516F4@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_jindoEnvironment;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *a1 = v4;

  return v4;
}

void sub_192151758(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_jindoEnvironment;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
}

uint64_t sub_192151810(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6D6E6F7269766E65;
    v7 = 0x7363697274656DLL;
    v8 = 0xD000000000000012;
    if (a1 != 3)
    {
      v8 = 0x50746C7561666564;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x646E6148656C6966;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x5665766968637261;
    v2 = 0x7974746168437369;
    if (a1 != 9)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x656C6174537369;
    v4 = 0x4964616F6C796170;
    if (a1 != 6)
    {
      v4 = 0x697472656C417369;
    }

    if (a1 != 5)
    {
      v3 = v4;
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

uint64_t sub_1921519AC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_192151810(*a1);
  v5 = v4;
  if (v3 == sub_192151810(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1922289A0();
  }

  return v8 & 1;
}

uint64_t sub_192151A34()
{
  v1 = *v0;
  sub_192228AD0();
  sub_192151810(v1);
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_192151A98(uint64_t a1)
{
  sub_192151810(*v1);
  sub_1922279B0();
}

uint64_t sub_192151AEC()
{
  v1 = *v0;
  sub_192228AD0();
  sub_192151810(v1);
  sub_1922279B0();

  return sub_192228B30();
}

unint64_t sub_192151B4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_192154B94(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_192151B7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_192151810(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_192151BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_192154B94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_192151BF8(uint64_t a1)
{
  v2 = sub_192155888();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192151C34(uint64_t a1)
{
  v2 = sub_192155888();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_192151C70(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0E28, &qword_192238218);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192156208();
  sub_192228B90();
  LOBYTE(v15) = 0;
  sub_192225360();
  sub_1921558DC(&qword_1EADECEE8, MEMORY[0x1E6959B98], MEMORY[0x1E6959BA0]);
  sub_1922288C0();
  if (!v2)
  {
    v9 = type metadata accessor for ActivityWidgetRequest.CodingProxy(0);
    LOBYTE(v15) = 1;
    type metadata accessor for ActivityMetricsDefinition(0);
    sub_1921558DC(&qword_1EADECAC8, type metadata accessor for ActivityMetricsDefinition, &protocol conformance descriptor for ActivityMetricsDefinition);
    sub_1922288C0();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    v15 = *v10;
    v16 = v11;
    v14 = 2;
    sub_1920367C8(v15, v11);
    sub_1920593E0();
    sub_1922288C0();
    sub_192039140(v15, v16);
    LOBYTE(v15) = 3;
    sub_192228870();
    LOBYTE(v15) = 4;
    sub_192228860();
    LOBYTE(v15) = 5;
    sub_192228870();
    LOBYTE(v15) = *(v3 + *(v9 + 40));
    v14 = 6;
    sub_1921559A8();
    sub_192228850();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_192151FA0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v24 = type metadata accessor for ActivityMetricsDefinition(0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_192225360();
  v25 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF0E18, &qword_192238210);
  v26 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v7 = &v22 - v6;
  v8 = type metadata accessor for ActivityWidgetRequest.CodingProxy(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 40);
  v10[v12] = 3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192156208();
  v30 = v7;
  v13 = v31;
  sub_192228B70();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14 = v26;
    v15 = v27;
    v22 = v12;
    v31 = v8;
    LOBYTE(v32) = 0;
    sub_1921558DC(&qword_1EADEDED8, MEMORY[0x1E6959B98], MEMORY[0x1E6959BA8]);
    v16 = v28;
    sub_1922287C0();
    (*(v25 + 32))(v10, v16, v4);
    LOBYTE(v32) = 1;
    sub_1921558DC(qword_1EADED6F0, type metadata accessor for ActivityMetricsDefinition, &protocol conformance descriptor for ActivityMetricsDefinition);
    sub_1922287C0();
    v17 = v31;
    sub_19215625C(v15, &v10[v31[5]], type metadata accessor for ActivityMetricsDefinition);
    v33 = 2;
    sub_192047340();
    sub_1922287C0();
    *&v10[v17[6]] = v32;
    LOBYTE(v32) = 3;
    v10[v17[7]] = sub_192228770() & 1;
    LOBYTE(v32) = 4;
    v18 = sub_192228760();
    v19 = &v10[v17[8]];
    *v19 = v18;
    v19[1] = v20;
    LOBYTE(v32) = 5;
    v10[v17[9]] = sub_192228770() & 1;
    v33 = 6;
    sub_1921562C4();
    sub_192228750();
    (*(v14 + 8))(v30, v29);
    v21 = v23;
    v10[v22] = v32;
    sub_192156318(v10, v21, type metadata accessor for ActivityWidgetRequest.CodingProxy);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_192155A84(v10, type metadata accessor for ActivityWidgetRequest.CodingProxy);
  }
}

uint64_t sub_192152590()
{
  v1 = *v0;
  v2 = 0x7470697263736564;
  v3 = 0x697472656C417369;
  if (v1 != 5)
  {
    v3 = 0x5665766968637261;
  }

  v4 = 0x656C6174537369;
  if (v1 != 3)
  {
    v4 = 0x4964616F6C796170;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7363697274656DLL;
  if (v1 != 1)
  {
    v5 = 0x50746C7561666564;
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

uint64_t sub_19215268C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_192154BE0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1921526B4(uint64_t a1)
{
  v2 = sub_192156208();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921526F0(uint64_t a1)
{
  v2 = sub_192156208();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ActivityWidgetRequest.__allocating_init(descriptor:metrics:defaultPayload:fileHandle:environment:isStale:payloadID:archiveVersion:isAlerting:isChatty:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, char a7, uint64_t a8, uint64_t a9, char *a10, char a11, char a12)
{
  v13 = v12;
  v18 = objc_allocWithZone(v13);
  v19 = *a6;
  v20 = *a10;
  *&v18[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_jindoEnvironment] = 0;
  v21 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_descriptor;
  v22 = sub_192225360();
  v23 = *(v22 - 8);
  (*(v23 + 16))(&v18[v21], a1, v22);
  sub_192156318(a2, &v18[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_metrics], type metadata accessor for ActivityMetricsDefinition);
  v24 = &v18[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_defaultPayload];
  *v24 = a3;
  v24[1] = a4;
  *&v18[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_fileHandle] = a5;
  *&v18[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_environment] = v19;
  v18[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_archiveVersion] = v20;
  v25 = &v18[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata];
  *v25 = a8;
  *(v25 + 1) = a9;
  v25[16] = a7;
  v25[17] = a11;
  v25[18] = a12;
  v32.receiver = v18;
  v32.super_class = v13;
  v26 = objc_msgSendSuper2(&v32, sel_init);
  sub_192155A84(a2, type metadata accessor for ActivityMetricsDefinition);
  (*(v23 + 8))(a1, v22);
  return v26;
}

id ActivityWidgetRequest.init(descriptor:metrics:defaultPayload:fileHandle:environment:isStale:payloadID:archiveVersion:isAlerting:isChatty:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, char a7, uint64_t a8, uint64_t a9, char *a10, char a11, char a12)
{
  v17 = *a6;
  v18 = *a10;
  *&v12[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_jindoEnvironment] = 0;
  v19 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_descriptor;
  v20 = sub_192225360();
  v21 = *(v20 - 8);
  (*(v21 + 16))(&v12[v19], a1, v20);
  sub_192156318(a2, &v12[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_metrics], type metadata accessor for ActivityMetricsDefinition);
  v22 = &v12[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_defaultPayload];
  *v22 = a3;
  v22[1] = a4;
  *&v12[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_fileHandle] = a5;
  *&v12[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_environment] = v17;
  v12[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_archiveVersion] = v18;
  v23 = &v12[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata];
  *v23 = a8;
  *(v23 + 1) = a9;
  v23[16] = a7;
  v23[17] = a11;
  v23[18] = a12;
  v29.receiver = v12;
  v29.super_class = type metadata accessor for ActivityWidgetRequest(0);
  v24 = objc_msgSendSuper2(&v29, sel_init);
  sub_192155A84(a2, type metadata accessor for ActivityMetricsDefinition);
  (*(v21 + 8))(a1, v20);
  return v24;
}

id ActivityWidgetRequest.__allocating_init(descriptor:metrics:defaultPayload:fileHandle:environment:jindoEnvironment:isStale:payloadID:archiveVersion:isAlerting:isChatty:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, void **a6, void **a7, char a8, uint64_t a9, uint64_t a10, char *a11, char a12, char a13)
{
  v14 = v13;
  v70 = v14;
  v22 = objc_allocWithZone(v14);
  v23 = *a6;
  v65 = *a7;
  v67 = *a11;
  v24 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_jindoEnvironment;
  *&v22[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_jindoEnvironment] = 0;
  v25 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_descriptor;
  v26 = sub_192225360();
  v69 = *(v26 - 8);
  v75 = a1;
  v71 = v26;
  (*(v69 + 16))(&v22[v25], a1);
  v74 = a2;
  sub_192156318(a2, &v22[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_metrics], type metadata accessor for ActivityMetricsDefinition);
  v27 = &v22[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_defaultPayload];
  *v27 = a3;
  v27[1] = a4;
  *&v22[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_fileHandle] = a5;
  KeyPath = swift_getKeyPath();
  v72 = a3;
  v73 = a4;
  sub_1920367C8(a3, a4);
  v66 = a5;
  v29 = v23;
  v30 = v29;
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v31 = type metadata accessor for WidgetEnvironment.Storage();
    v32 = objc_allocWithZone(v31);
    v33 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v32[v33] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v34 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v35 = *&v29[v34];
    swift_beginAccess();
    *&v32[v33] = v35;

    v80.receiver = v32;
    v80.super_class = v31;
    v30 = objc_msgSendSuper2(&v80, sel_init);
  }

  sub_19204C8C0(0, KeyPath);

  v36 = swift_getKeyPath();
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v37 = type metadata accessor for WidgetEnvironment.Storage();
    v38 = objc_allocWithZone(v37);
    v39 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v38[v39] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v40 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v41 = *&v30[v40];
    swift_beginAccess();
    *&v38[v39] = v41;

    v79.receiver = v38;
    v79.super_class = v37;
    v42 = objc_msgSendSuper2(&v79, sel_init);

    v30 = v42;
  }

  v43 = a13;
  v45 = a9;
  v44 = a10;
  sub_19204C8C0(0, v36);

  *&v22[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_environment] = v30;
  if (v65)
  {
    v46 = swift_getKeyPath();
    v47 = v65;
    v48 = v47;
    if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
    {
      v49 = type metadata accessor for WidgetEnvironment.Storage();
      v50 = objc_allocWithZone(v49);
      v51 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
      *&v50[v51] = sub_192043788(MEMORY[0x1E69E7CC0]);
      v52 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
      swift_beginAccess();
      v53 = *&v47[v52];
      swift_beginAccess();
      *&v50[v51] = v53;

      v77.receiver = v50;
      v77.super_class = v49;
      v48 = objc_msgSendSuper2(&v77, &selRef_colorGamut);
    }

    sub_19204C8C0(0, v46);

    v54 = swift_getKeyPath();
    if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
    {
      v55 = type metadata accessor for WidgetEnvironment.Storage();
      v56 = objc_allocWithZone(v55);
      v57 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
      *&v56[v57] = sub_192043788(MEMORY[0x1E69E7CC0]);
      v58 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
      swift_beginAccess();
      v59 = *&v48[v58];
      swift_beginAccess();
      *&v56[v57] = v59;

      v76.receiver = v56;
      v76.super_class = v55;
      v60 = objc_msgSendSuper2(&v76, &selRef_colorGamut);

      v48 = v60;
    }

    v45 = a9;
    v44 = a10;
    v43 = a13;
    sub_19204C8C0(0, v54);
  }

  else
  {
    v48 = 0;
  }

  swift_beginAccess();
  v61 = *&v22[v24];
  *&v22[v24] = v48;

  v22[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_archiveVersion] = v67;
  v62 = &v22[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata];
  *v62 = v45;
  *(v62 + 1) = v44;
  v62[16] = a8 & 1;
  v62[17] = a12 & 1;
  v62[18] = v43 & 1;
  v78.receiver = v22;
  v78.super_class = v70;
  v63 = objc_msgSendSuper2(&v78, sel_init);

  sub_192039140(v72, v73);
  sub_192155A84(v74, type metadata accessor for ActivityMetricsDefinition);
  (*(v69 + 8))(v75, v71);
  return v63;
}

id ActivityWidgetRequest.init(descriptor:metrics:defaultPayload:fileHandle:environment:jindoEnvironment:isStale:payloadID:archiveVersion:isAlerting:isChatty:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, void **a6, void **a7, char a8, uint64_t a9, uint64_t a10, char *a11, char a12, char a13)
{
  v14 = v13;
  v20 = *a6;
  v63 = *a7;
  v65 = *a11;
  v21 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_jindoEnvironment;
  *&v14[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_jindoEnvironment] = 0;
  v22 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_descriptor;
  v23 = sub_192225360();
  v67 = *(v23 - 8);
  v68 = v23;
  v72 = a1;
  (*(v67 + 16))(&v14[v22], a1);
  v71 = a2;
  sub_192156318(a2, &v14[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_metrics], type metadata accessor for ActivityMetricsDefinition);
  v24 = &v14[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_defaultPayload];
  *v24 = a3;
  v24[1] = a4;
  *&v14[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_fileHandle] = a5;
  KeyPath = swift_getKeyPath();
  v69 = a3;
  v70 = a4;
  sub_1920367C8(a3, a4);
  v64 = a5;
  v26 = v20;
  v27 = v26;
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v28 = type metadata accessor for WidgetEnvironment.Storage();
    v29 = objc_allocWithZone(v28);
    v30 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v29[v30] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v31 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v32 = *&v26[v31];
    swift_beginAccess();
    *&v29[v30] = v32;

    v77.receiver = v29;
    v77.super_class = v28;
    v27 = objc_msgSendSuper2(&v77, sel_init);
  }

  sub_19204C8C0(0, KeyPath);

  v33 = swift_getKeyPath();
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v34 = type metadata accessor for WidgetEnvironment.Storage();
    v35 = objc_allocWithZone(v34);
    v36 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v35[v36] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v37 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v38 = *&v27[v37];
    swift_beginAccess();
    *&v35[v36] = v38;

    v76.receiver = v35;
    v76.super_class = v34;
    v39 = objc_msgSendSuper2(&v76, sel_init);

    v27 = v39;
  }

  v40 = a13;
  v42 = a9;
  v41 = a10;
  sub_19204C8C0(0, v33);

  *&v14[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_environment] = v27;
  if (v63)
  {
    v43 = swift_getKeyPath();
    v44 = v63;
    v45 = v44;
    if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
    {
      v46 = type metadata accessor for WidgetEnvironment.Storage();
      v47 = objc_allocWithZone(v46);
      v48 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
      *&v47[v48] = sub_192043788(MEMORY[0x1E69E7CC0]);
      v49 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
      swift_beginAccess();
      v50 = *&v44[v49];
      swift_beginAccess();
      *&v47[v48] = v50;

      v74.receiver = v47;
      v74.super_class = v46;
      v45 = objc_msgSendSuper2(&v74, &selRef_colorGamut);
    }

    sub_19204C8C0(0, v43);

    v51 = swift_getKeyPath();
    if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
    {
      v52 = type metadata accessor for WidgetEnvironment.Storage();
      v53 = objc_allocWithZone(v52);
      v54 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
      *&v53[v54] = sub_192043788(MEMORY[0x1E69E7CC0]);
      v55 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
      swift_beginAccess();
      v56 = *&v45[v55];
      swift_beginAccess();
      *&v53[v54] = v56;

      v73.receiver = v53;
      v73.super_class = v52;
      v57 = objc_msgSendSuper2(&v73, &selRef_colorGamut);

      v45 = v57;
    }

    v41 = a10;
    v40 = a13;
    v42 = a9;
    sub_19204C8C0(0, v51);
  }

  else
  {
    v45 = 0;
  }

  swift_beginAccess();
  v58 = *&v14[v21];
  *&v14[v21] = v45;

  v14[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_archiveVersion] = v65;
  v59 = &v14[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata];
  *v59 = v42;
  *(v59 + 1) = v41;
  v59[16] = a8 & 1;
  v59[17] = a12 & 1;
  v59[18] = v40 & 1;
  v60 = type metadata accessor for ActivityWidgetRequest(0);
  v75.receiver = v14;
  v75.super_class = v60;
  v61 = objc_msgSendSuper2(&v75, sel_init);

  sub_192039140(v69, v70);
  sub_192155A84(v71, type metadata accessor for ActivityMetricsDefinition);
  (*(v67 + 8))(v72, v68);
  return v61;
}

void sub_192153628(void *a1)
{
  v3 = v1;
  v27 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0DD0, &qword_192237F20);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192155888();
  sub_192228B90();
  v25 = *(v3 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_environment);
  v9 = v25;
  LOBYTE(v24[0]) = 0;
  sub_1920E2830();
  v10 = v9;
  sub_1922288C0();
  if (v2)
  {

LABEL_6:
    (*(v6 + 8))(v8, v5);
    return;
  }

  LOBYTE(v25) = 2;
  type metadata accessor for ActivityMetricsDefinition(0);
  sub_1921558DC(&qword_1EADECAC8, type metadata accessor for ActivityMetricsDefinition, &protocol conformance descriptor for ActivityMetricsDefinition);
  sub_1922288C0();
  v11 = *(v3 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_defaultPayload + 8);
  v25 = *(v3 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_defaultPayload);
  v26 = v11;
  LOBYTE(v24[0]) = 4;
  sub_1920367C8(v25, v11);
  sub_1920593E0();
  sub_1922288C0();
  sub_192039140(v25, v26);
  LOBYTE(v25) = 3;
  sub_192225360();
  sub_1921558DC(&qword_1EADECEE8, MEMORY[0x1E6959B98], MEMORY[0x1E6959BA0]);
  sub_1922288C0();
  LOBYTE(v25) = 5;
  sub_192228870();
  LOBYTE(v25) = 7;
  sub_192228870();
  LOBYTE(v25) = 9;
  sub_192228870();
  if (*(v3 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_archiveVersion) != 3)
  {
    LOBYTE(v25) = *(v3 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_archiveVersion);
    LOBYTE(v24[0]) = 8;
    sub_1921559A8();
    sub_1922288C0();
  }

  v12 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_jindoEnvironment;
  swift_beginAccess();
  v24[0] = *(v3 + v12);
  v23 = 10;
  v13 = v24[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0DE0, &qword_192237F28);
  sub_192155924();
  sub_1922288C0();

  v14 = objc_opt_self();
  v15 = *(v3 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_fileHandle);
  v24[0] = 0;
  v16 = [v14 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:v24];
  v17 = v24[0];
  if (!v16)
  {
    v21 = v17;
    sub_192224F90();

    swift_willThrow();
    goto LABEL_6;
  }

  v18 = sub_192225080();
  v20 = v19;

  v24[0] = v18;
  v24[1] = v20;
  v23 = 1;
  sub_1922288C0();
  (*(v6 + 8))(v8, v5);
  sub_192039140(v18, v20);
}

char *ActivityWidgetRequest.init(coder:)(void *a1)
{
  v2 = type metadata accessor for ActivityMetricsDefinition(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v74 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_192225360();
  v73 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0DF8, &qword_192237F30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v56 - v6;
  v8 = type metadata accessor for ActivityWidgetRequest.CodingProxy(0);
  v76 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v75 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WidgetEnvironment.Storage();
  v10 = sub_192228140();
  sub_19202A7A8(0, &unk_1ED74C360, 0x1E696AC00);
  v11 = sub_192228140();
  v12 = sub_192227930();
  v70 = [a1 decodeBoolForKey_];

  v13 = sub_192227930();
  v14 = [a1 decodeBoolForKey_];

  v15 = sub_192227930();
  v16 = [a1 decodeBoolForKey_];

  sub_19202A7A8(0, &qword_1ED74BC20, 0x1E696AEC0);
  v17 = sub_192228140();
  if (!v17)
  {
    goto LABEL_5;
  }

  v67 = v14;
  v18 = v17;
  v66 = sub_192227960();
  v20 = v19;

  sub_19202A7A8(0, &qword_1ED74C600, 0x1E695DEF0);
  v21 = sub_192228140();
  if (!v21)
  {

LABEL_5:

LABEL_6:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v65 = v16;
  v68 = v20;
  v22 = v21;
  v23 = sub_192225080();
  v25 = v24;

  sub_192224F30();
  swift_allocObject();
  v26 = sub_192224F20();
  sub_1921558DC(qword_1EADEDBB8, type metadata accessor for ActivityWidgetRequest.CodingProxy, &unk_192238198);
  v69 = v25;
  sub_192224F00();
  v63 = v26;
  v64 = v23;
  v76[7](v7, 0, 1, v8);
  v28 = v75;
  sub_19215625C(v7, v75, type metadata accessor for ActivityWidgetRequest.CodingProxy);
  if (!v10)
  {
    sub_192155A84(v28, type metadata accessor for ActivityWidgetRequest.CodingProxy);

    sub_192039140(v64, v69);

    goto LABEL_6;
  }

  if (!v11)
  {
    v55 = v10;
    sub_192155A84(v28, type metadata accessor for ActivityWidgetRequest.CodingProxy);

    sub_192039140(v64, v69);

    goto LABEL_6;
  }

  v59 = *(v73 + 16);
  v29 = v72;
  v76 = v10;
  v61 = v11;
  v30 = v71;
  v59(v72, v28, v71);
  v31 = v28 + v8[5];
  v32 = v74;
  v62 = type metadata accessor for ActivityMetricsDefinition;
  sub_192156318(v31, v74, type metadata accessor for ActivityMetricsDefinition);
  v33 = (v28 + v8[6]);
  v35 = *v33;
  v34 = v33[1];
  v58 = v35;
  v57 = v34;
  v60 = *(v28 + v8[10]);
  v36 = type metadata accessor for ActivityWidgetRequest(0);
  v37 = objc_allocWithZone(v36);
  *&v37[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_jindoEnvironment] = 0;
  v38 = v29;
  v39 = v30;
  v59(&v37[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_descriptor], v38, v30);
  sub_192156318(v32, &v37[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_metrics], type metadata accessor for ActivityMetricsDefinition);
  v40 = &v37[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_defaultPayload];
  v41 = v58;
  v42 = v57;
  *v40 = v58;
  v40[1] = v42;
  v43 = v61;
  *&v37[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_fileHandle] = v61;
  v44 = v76;
  *&v37[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_environment] = v76;
  v37[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_archiveVersion] = v60;
  v45 = &v37[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata];
  v46 = v68;
  *v45 = v66;
  *(v45 + 1) = v46;
  v45[16] = v70;
  v45[17] = v67;
  v45[18] = v65;
  v47 = v44;
  v48 = v43;
  v76 = v47;
  v49 = v48;
  sub_1920367C8(v41, v42);
  v77.receiver = v37;
  v77.super_class = v36;
  v50 = objc_msgSendSuper2(&v77, sel_init);
  sub_192155A84(v74, v62);
  (*(v73 + 8))(v72, v39);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v51 = sub_192228140();

  sub_192039140(v64, v69);

  v52 = v76;
  sub_192155A84(v75, type metadata accessor for ActivityWidgetRequest.CodingProxy);
  if (v51)
  {
    v53 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_jindoEnvironment;
    swift_beginAccess();
    v54 = *&v50[v53];
    *&v50[v53] = v51;
  }

  return v50;
}

double sub_192154474(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ActivityWidgetRequest.CodingProxy(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_environment);
  v8 = sub_192227930();
  [a1 encodeObject:v7 forKey:v8];

  v9 = *(v2 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_fileHandle);
  v10 = sub_192227930();
  [a1 encodeObject:v9 forKey:v10];

  v11 = (v2 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata);
  v12 = *(v2 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata + 16);
  v39 = *(v2 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata + 16);
  v13 = sub_192227930();
  [a1 encodeBool:v12 forKey:v13];

  v14 = v11[1];
  v38 = *v11;
  v15 = sub_192227930();
  v16 = sub_192227930();
  [a1 encodeObject:v15 forKey:v16];

  v17 = *(v11 + 17);
  v18 = sub_192227930();
  [a1 encodeBool:v17 forKey:v18];

  v19 = *(v11 + 18);
  v20 = sub_192227930();
  [a1 encodeBool:v19 forKey:v20];

  sub_192224F70();
  swift_allocObject();
  sub_192224F60();
  sub_192224F40();
  v21 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_descriptor;
  v22 = sub_192225360();
  (*(*(v22 - 8) + 16))(v6, v2 + v21, v22);
  sub_192156318(v2 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_metrics, &v6[v4[5]], type metadata accessor for ActivityMetricsDefinition);
  v23 = *(v2 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_archiveVersion);
  v24 = *(v2 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_defaultPayload);
  v25 = *(v2 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_defaultPayload + 8);
  v26 = &v6[v4[6]];
  *v26 = v24;
  v26[1] = v25;
  v6[v4[7]] = v39;
  v27 = &v6[v4[8]];
  *v27 = v38;
  *(v27 + 1) = v14;
  v6[v4[9]] = v17;
  v6[v4[10]] = v23;
  sub_1920367C8(v24, v25);
  sub_1921558DC(&unk_1EADECBF0, type metadata accessor for ActivityWidgetRequest.CodingProxy, &unk_192238170);

  v28 = sub_192224F50();
  v30 = v29;
  sub_192155A84(v6, type metadata accessor for ActivityWidgetRequest.CodingProxy);
  v31 = sub_192225050();
  v32 = sub_192227930();
  [a1 encodeObject:v31 forKey:v32];

  v33 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_jindoEnvironment;
  swift_beginAccess();
  v34 = *(v2 + v33);
  if (v34)
  {
    v35 = v34;
    v36 = sub_192227930();
    [a1 encodeObject:v35 forKey:v36];
    sub_192039140(v28, v30);
  }

  else
  {
    sub_192039140(v28, v30);
  }

  return result;
}

id ActivityWidgetRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivityWidgetRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityWidgetRequest(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_192154B44@<X0>(char **a1@<X8>, void *a2@<X0>)
{
  result = sub_192154E50(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_192154B94(uint64_t a1, uint64_t a2)
{
  v2 = sub_192228700();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_192154BE0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEA0000000000726FLL || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x50746C7561666564 && a2 == 0xEE0064616F6C7961 || (sub_1922289A0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C6174537369 && a2 == 0xE700000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4964616F6C796170 && a2 == 0xE900000000000044 || (sub_1922289A0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x697472656C417369 && a2 == 0xEA0000000000676ELL || (sub_1922289A0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5665766968637261 && a2 == 0xEE006E6F69737265)
  {

    return 6;
  }

  else
  {
    v5 = sub_1922289A0();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

char *sub_192154E50(void *a1)
{
  v2 = sub_192225360();
  v67 = *(v2 - 8);
  v68 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v70 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v52 - v5;
  v69 = type metadata accessor for ActivityMetricsDefinition(0);
  MEMORY[0x1EEE9AC00](v69);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v52 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF0E30, &unk_192238220);
  v71 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - v13;
  v15 = a1[3];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v16 = sub_192155888();
  v17 = v72;
  sub_192228B70();
  if (!v17)
  {
    v65 = v16;
    v66 = v8;
    v18 = v70;
    v72 = v6;
    LOBYTE(v74) = 2;
    sub_1921558DC(qword_1EADED6F0, type metadata accessor for ActivityMetricsDefinition, &protocol conformance descriptor for ActivityMetricsDefinition);
    v19 = v14;
    sub_1922287C0();
    v20 = v11;
    v78 = 0;
    v21 = sub_192044634();
    sub_1922287C0();
    v22 = v74;
    v78 = 4;
    v23 = sub_192047340();
    sub_1922287C0();
    v69 = v23;
    v64 = v21;
    v24 = v74;
    v25 = v75;
    LOBYTE(v74) = 5;
    v77 = sub_192228770();
    LOBYTE(v74) = 6;
    v62 = sub_192228760();
    v63 = v26;
    LOBYTE(v74) = 7;
    v61 = sub_192228770();
    v78 = 8;
    sub_1921562C4();
    sub_192228750();
    v60 = v24;
    v28 = v74;
    LOBYTE(v74) = 9;
    v59 = sub_192228740();
    LOBYTE(v74) = 3;
    sub_1921558DC(&qword_1EADEDED8, MEMORY[0x1E6959B98], MEMORY[0x1E6959BA8]);
    sub_1922287C0();
    v29 = v25;
    v57 = v20;
    v78 = 1;
    v58 = v12;
    v69 = v19;
    sub_1922287C0();
    v31 = v74;
    v30 = v75;
    sub_19202A7A8(0, &qword_1ED749280, 0x1E696ACD0);
    sub_19202A7A8(0, &unk_1ED74C360, 0x1E696AC00);
    v55 = v31;
    v56 = v30;
    v32 = sub_192228010();
    v33 = v32;
    if (v32)
    {
      v54 = *(v67 + 16);
      v34 = v68;
      v54(v18, v72, v68);
      v53 = type metadata accessor for ActivityMetricsDefinition;
      sub_192156318(v57, v66, type metadata accessor for ActivityMetricsDefinition);
      v65 = type metadata accessor for ActivityWidgetRequest(0);
      v35 = objc_allocWithZone(v65);
      *&v35[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_jindoEnvironment] = 0;
      v54(&v35[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_descriptor], v18, v34);
      v36 = v66;
      v37 = v53;
      sub_192156318(v66, &v35[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_metrics], v53);
      v38 = &v35[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_defaultPayload];
      v39 = v60;
      *v38 = v60;
      v38[1] = v29;
      *&v35[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_fileHandle] = v33;
      *&v35[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_environment] = v22;
      v35[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_archiveVersion] = v28;
      LOBYTE(v38) = v77 & 1;
      v40 = v61 & 1;
      v41 = &v35[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata];
      *v41 = v62;
      *(v41 + 1) = v63;
      v41[16] = v38;
      v41[17] = v40;
      v41[18] = v59 & 1;
      sub_1920367C8(v39, v29);
      v76.receiver = v35;
      v76.super_class = v65;
      v42 = v33;
      v65 = v22;
      v15 = objc_msgSendSuper2(&v76, sel_init);
      sub_192155A84(v36, v37);
      v43 = *(v67 + 8);
      v43(v70, v68);
      v78 = 10;
      sub_192228750();
      sub_192039140(v55, v56);

      sub_192039140(v60, v29);
      v43(v72, v68);
      sub_192155A84(v57, type metadata accessor for ActivityMetricsDefinition);
      (*(v71 + 8))(v69, v58);
      v49 = v74;
      v50 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_jindoEnvironment;
      swift_beginAccess();
      v51 = *(v15 + v50);
      *(v15 + v50) = v49;

      __swift_destroy_boxed_opaque_existential_1(v73);
      return v15;
    }

    v44 = sub_1922284A0();
    swift_allocError();
    v46 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0);
    *v46 = sub_19202A7A8(0, &qword_1ED74BB40, 0x1E6994370);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF21D0, &qword_192238230);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_19222B480;
    v48 = v65;
    *(v47 + 56) = &type metadata for ActivityWidgetRequest.CodingKeys;
    *(v47 + 64) = v48;
    *(v47 + 32) = 1;
    sub_192228480();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6B08], v44);
    swift_willThrow();
    sub_192039140(v55, v56);
    sub_192039140(v60, v29);

    v15 = (v67 + 8);
    (*(v67 + 8))(v72, v68);
    sub_192155A84(v57, type metadata accessor for ActivityMetricsDefinition);
    (*(v71 + 8))(v69, v58);
  }

  __swift_destroy_boxed_opaque_existential_1(v73);
  return v15;
}

unint64_t sub_192155888()
{
  result = qword_1EADF0DD8;
  if (!qword_1EADF0DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0DD8);
  }

  return result;
}

uint64_t sub_1921558DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_192155924()
{
  result = qword_1EADF0DE8;
  if (!qword_1EADF0DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0DE0, &qword_192237F28);
    sub_1920E2830();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0DE8);
  }

  return result;
}

unint64_t sub_1921559A8()
{
  result = qword_1EADECB40;
  if (!qword_1EADECB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECB40);
  }

  return result;
}

uint64_t sub_192155A1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0DF8, &qword_192237F30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_192155A84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_192155AEC(uint64_t a1)
{
  result = sub_192225360();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ActivityMetricsDefinition(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_192155DDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 19))
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

uint64_t sub_192155E24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 19) = 1;
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

    *(result + 19) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_192155EA0(uint64_t a1)
{
  sub_192225360();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ActivityMetricsDefinition(319);
    if (v2 <= 0x3F)
    {
      sub_192155F60();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_192155F60()
{
  if (!qword_1EADEDF58)
  {
    v0 = sub_192228240();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADEDF58);
    }
  }
}

uint64_t getEnumTagSinglePayload for ActivityWidgetRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityWidgetRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_192156104()
{
  result = qword_1EADF0E00;
  if (!qword_1EADF0E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0E00);
  }

  return result;
}

unint64_t sub_19215615C()
{
  result = qword_1EADF0E08;
  if (!qword_1EADF0E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0E08);
  }

  return result;
}

unint64_t sub_1921561B4()
{
  result = qword_1EADF0E10;
  if (!qword_1EADF0E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0E10);
  }

  return result;
}

unint64_t sub_192156208()
{
  result = qword_1EADEDF90;
  if (!qword_1EADEDF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDF90);
  }

  return result;
}

uint64_t sub_19215625C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1921562C4()
{
  result = qword_1ED749960;
  if (!qword_1ED749960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749960);
  }

  return result;
}

uint64_t sub_192156318(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_192156394()
{
  result = qword_1EADF0E40;
  if (!qword_1EADF0E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0E40);
  }

  return result;
}

unint64_t sub_1921563EC()
{
  result = qword_1EADEDF78;
  if (!qword_1EADEDF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDF78);
  }

  return result;
}

unint64_t sub_192156444()
{
  result = qword_1EADEDF80;
  if (!qword_1EADEDF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDF80);
  }

  return result;
}

double sub_192156558()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_192225950();

  return result;
}

uint64_t sub_1921565D0()
{
  sub_1922254B0();
  sub_1922254A0();
  v0 = COERCE_DOUBLE(sub_192225470());
  v2 = v1;

  if (v2)
  {
    v3 = 13.0;
  }

  else
  {
    v3 = v0;
  }

  type metadata accessor for DatePublisher(0);
  swift_allocObject();
  result = sub_1921567A8(0x646E6F636573, 0xE600000000000000, v3);
  qword_1EADF0E48 = result;
  return result;
}

uint64_t sub_1921566A4()
{
  type metadata accessor for DatePublisher(0);
  swift_allocObject();
  result = sub_1921569D8(0x6F63657365766966, 0xEB0000000073646ELL, 5.0);
  qword_1EADF0E58 = result;
  return result;
}

uint64_t sub_192156738(double a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, unint64_t, double), uint64_t *a5)
{
  type metadata accessor for DatePublisher(0);
  swift_allocObject();
  result = a4(a3, 0xE800000000000000, a1);
  *a5 = result;
  return result;
}

uint64_t sub_1921567A8(uint64_t a1, uint64_t a2, double a3)
{
  v22 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FC8, &qword_192238818);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  v10 = sub_192225150();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  v17 = OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher__date;
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  (*(v11 + 16))(v13, v16, v10);
  sub_192225930();
  (*(v11 + 8))(v16, v10);
  (*(v7 + 32))(v3 + v17, v9, v6);
  *(v3 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_requesters) = MEMORY[0x1E69E7CD0];
  *(v3 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_machTimer) = 0;
  *(v3 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_updateInterval) = 1.0 / a3;
  v18 = (v3 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_name);
  v19 = v22;
  *v18 = a1;
  v18[1] = v19;
  return v3;
}

uint64_t sub_1921569D8(uint64_t a1, uint64_t a2, double a3)
{
  v22 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FC8, &qword_192238818);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  v10 = sub_192225150();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  v17 = OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher__date;
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  (*(v11 + 16))(v13, v16, v10);
  sub_192225930();
  (*(v11 + 8))(v16, v10);
  (*(v7 + 32))(v3 + v17, v9, v6);
  *(v3 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_requesters) = MEMORY[0x1E69E7CD0];
  *(v3 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_machTimer) = 0;
  *(v3 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_updateInterval) = a3;
  v18 = (v3 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_name);
  v19 = v22;
  *v18 = a1;
  v18[1] = v19;
  return v3;
}

uint64_t sub_192156C00(uint64_t a1)
{
  v2 = v1;
  v4 = sub_192225150();
  v70 = *(v4 - 8);
  v71 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v69 = &v64.i8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v64.i8[-v7];
  BSDispatchQueueAssertMain();
  v10 = *(v1 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_name);
  v9 = *(v1 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_name + 8);
  if (qword_1EADECED0 != -1)
  {
    swift_once();
  }

  v11 = sub_1922258B0();
  v12 = __swift_project_value_buffer(v11, qword_1EAE00740);

  v13 = sub_192225890();
  v14 = sub_192227FB0();

  v15 = os_log_type_enabled(v13, v14);
  v73 = v12;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_19202B8CC(v10, v9, aBlock);
    _os_log_impl(&dword_192028000, v13, v14, "startTickingForView %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x193B0C7F0](v17, -1, -1);
    MEMORY[0x193B0C7F0](v16, -1, -1);
  }

  v18 = OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_requesters;
  swift_beginAccess();
  v19 = *(*(v2 + v18) + 16);
  v72 = a1;
  v68 = v10;
  if (v19)
  {

    v20 = sub_192225890();
    v21 = sub_192227FB0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v67 = v18;
      v23 = v22;
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136446466;
      *(v23 + 4) = sub_19202B8CC(v10, v9, aBlock);
      *(v23 + 12) = 2082;
      v75 = a1;
      v25 = sub_192227990();
      v27 = sub_19202B8CC(v25, v26, aBlock);

      *(v23 + 14) = v27;
      _os_log_impl(&dword_192028000, v20, v21, "Publishing %{public}s to new requester %{public}s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v24, -1, -1);
      MEMORY[0x193B0C7F0](v23, -1, -1);
    }

    _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
    swift_getKeyPath();
    swift_getKeyPath();
    v28 = v70;
    v29 = v71;
    (*(v70 + 16))(v69, v8, v71);

    sub_192225960();
    (*(v28 + 8))(v8, v29);
  }

  else
  {
    v67 = v18;
    v30 = objc_allocWithZone(MEMORY[0x1E698E660]);
    v31 = sub_192227930();
    v32 = [v30 initWithIdentifier_];

    v33 = *(v2 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_machTimer);
    *(v2 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_machTimer) = v32;
    v66 = v32;

    _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
    sub_1922250B0();
    v64 = v34;
    v35 = v70;
    v36 = v10;
    v65 = *(v70 + 8);
    v37 = v71;
    v38 = v65(v8, v71);
    *v38.i64 = *v64.i64 - trunc(*v64.i64);
    v39.f64[0] = NAN;
    v39.f64[1] = NAN;
    v40 = 1.0 - *vbslq_s8(vnegq_f64(v39), v38, v64).i64;
    v41 = *(v2 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_updateInterval);
    if (v41 > 1.0)
    {
      v42 = 1.0;
    }

    else
    {
      v42 = 0.05;
    }

    sub_19202A7A8(0, &qword_1ED74C690, 0x1E69E9610);
    v43 = sub_192228080();
    v44 = swift_allocObject();
    swift_weakInit();
    v45 = swift_allocObject();
    v45[2] = v44;
    v45[3] = v36;
    v45[4] = v9;
    aBlock[4] = sub_19215E504;
    aBlock[5] = v45;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_192037950;
    aBlock[3] = &block_descriptor_1;
    v46 = _Block_copy(aBlock);

    [v66 scheduleRepeatingWithFireInterval:v43 repeatInterval:v46 leewayInterval:v40 queue:v41 handler:v42];
    _Block_release(v46);

    _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
    swift_getKeyPath();
    swift_getKeyPath();
    (*(v35 + 16))(v69, v8, v37);

    sub_192225960();
    v65(v8, v37);

    v47 = sub_192225890();
    v48 = sub_192227FB0();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      aBlock[0] = v50;
      *v49 = 136446466;
      *(v49 + 4) = sub_19202B8CC(v68, v9, aBlock);
      *(v49 + 12) = 2082;
      v75 = v72;
      v51 = sub_192227990();
      v53 = sub_19202B8CC(v51, v52, aBlock);

      *(v49 + 14) = v53;
      _os_log_impl(&dword_192028000, v47, v48, "Started machtimer %{public}s %{public}s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v50, -1, -1);
      MEMORY[0x193B0C7F0](v49, -1, -1);
    }
  }

  v54 = sub_192225890();
  v55 = sub_192227F80();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v56 = 136446466;
    v58 = sub_19202B8CC(v68, v9, aBlock);

    *(v56 + 4) = v58;
    *(v56 + 12) = 2082;
    v59 = v72;
    v75 = v72;
    v60 = sub_192227990();
    v62 = sub_19202B8CC(v60, v61, aBlock);

    *(v56 + 14) = v62;
    _os_log_impl(&dword_192028000, v54, v55, "Add reference to %{public}s: %{public}s", v56, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193B0C7F0](v57, -1, -1);
    MEMORY[0x193B0C7F0](v56, -1, -1);
  }

  else
  {

    v59 = v72;
  }

  swift_beginAccess();
  sub_1921C1F1C(&v75, v59);
  return swift_endAccess();
}

uint64_t sub_1921574E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = sub_192225150();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1EADECED0 != -1)
    {
      swift_once();
    }

    v14 = sub_1922258B0();
    __swift_project_value_buffer(v14, qword_1EAE00740);

    v15 = sub_192225890();
    v16 = sub_192227F80();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v23 = v6;
      v18 = a3;
      v19 = v17;
      v20 = swift_slowAlloc();
      v24 = v20;
      *v19 = 136446210;
      v21 = v18;
      v6 = v23;
      *(v19 + 4) = sub_19202B8CC(v21, a4, &v24);
      _os_log_impl(&dword_192028000, v15, v16, "Tick %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x193B0C7F0](v20, -1, -1);
      MEMORY[0x193B0C7F0](v19, -1, -1);
    }

    _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
    swift_getKeyPath();
    swift_getKeyPath();
    (*(v7 + 16))(v9, v12, v6);
    sub_192225960();
    return (*(v7 + 8))(v12, v6);
  }

  return result;
}

void sub_19215777C(uint64_t a1)
{
  v2 = v1;
  BSDispatchQueueAssertMain();
  v5 = *(v1 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_name);
  v4 = *(v1 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_name + 8);
  if (qword_1EADECED0 != -1)
  {
    swift_once();
  }

  v6 = sub_1922258B0();
  __swift_project_value_buffer(v6, qword_1EAE00740);

  v7 = sub_192225890();
  v8 = sub_192227F80();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22[0] = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_19202B8CC(v5, v4, v22);
    *(v9 + 12) = 2082;
    v11 = sub_192227990();
    v13 = sub_19202B8CC(v11, v12, v22);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_192028000, v7, v8, "Remove reference from %{public}s: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193B0C7F0](v10, -1, -1);
    MEMORY[0x193B0C7F0](v9, -1, -1);
  }

  v14 = OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_requesters;
  swift_beginAccess();
  sub_1921C49B4(a1);
  swift_endAccess();
  if (!*(*(v2 + v14) + 16))
  {

    v15 = sub_192225890();
    v16 = sub_192227FB0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22[0] = v18;
      *v17 = 136446210;
      v19 = sub_19202B8CC(v5, v4, v22);

      *(v17 + 4) = v19;
      _os_log_impl(&dword_192028000, v15, v16, "Stopped %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x193B0C7F0](v18, -1, -1);
      MEMORY[0x193B0C7F0](v17, -1, -1);
    }

    else
    {
    }

    v20 = OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_machTimer;
    [*(v2 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_machTimer) invalidate];
    v21 = *(v2 + v20);
    *(v2 + v20) = 0;
  }
}

uint64_t sub_192157A8C()
{
  v1 = OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher__date;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FC8, &qword_192238818);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_192157B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_192049464();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.tintParameters.getter()
{
  sub_19204149C();
  sub_1922261E0();
  return v1;
}

void *sub_192157C08@<X0>(void *a1@<X8>)
{
  sub_19204149C();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

void (*EnvironmentValues.tintParameters.modify(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  a1[3] = sub_19204149C();
  sub_1922261E0();
  return sub_192157CF4;
}

void sub_192157CF4(uint64_t a1, char a2)
{
  v2 = *a1;
  *(a1 + 8) = *a1;
  if (a2)
  {
    v4 = v2;
    sub_1922261F0();
    v5 = *a1;
  }

  else
  {
    sub_1922261F0();
  }
}

uint64_t EnvironmentValues.isCarPlayDisplay.getter()
{
  sub_1920F74DC();
  sub_1922261E0();
  return v1;
}

uint64_t (*EnvironmentValues.isCarPlayDisplay.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1920F74DC();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_192157E68;
}

uint64_t sub_192157EA0()
{
  v1 = sub_1922261D0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_192227FA0();
    v6 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v7 = sub_192049898(v5, 0);
    (*(v2 + 8))(v4, v1, v7);
    LOBYTE(v5) = v9[15];
  }

  return v5 & 1;
}

void *sub_192157FE8()
{
  v1 = sub_1922261D0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    v6 = v5;
  }

  else
  {

    sub_192227FA0();
    v7 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v8 = sub_19209561C(v5, 0);
    (*(v2 + 8))(v4, v1, v8);
    return v10[1];
  }

  return v5;
}

uint64_t sub_192158138()
{
  v1 = sub_1922261D0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 32);
  if (*(v0 + 40) != 1)
  {

    sub_192227FA0();
    v6 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v7 = sub_192049898(v5, 0);
    (*(v2 + 8))(v4, v1, v7);
    LOBYTE(v5) = v9[15];
  }

  return v5 & 1;
}

uint64_t sub_192158280@<X0>(void *a1@<X8>)
{
  v3 = sub_1922261D0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FE0, &qword_192238860);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for _ClockHandRotationEffect(0);
  sub_19202CFFC(v1 + *(v10 + 32), v9, &qword_1EADF0FE0, &qword_192238860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_19204E300(v9, a1, &qword_1EADEED10, &unk_19222B0F0);
  }

  sub_192227FA0();
  v12 = sub_192226D00();
  sub_1922257A0();

  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_192158468@<X0>(void *a1@<X8>)
{
  v3 = sub_1922261D0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FE8, &qword_192238868);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for _ClockHandRotationEffect(0);
  sub_19202CFFC(v1 + *(v10 + 36), v9, &qword_1EADF0FE8, &qword_192238868);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_19204E300(v9, a1, &qword_1EADEECD0, &qword_1922363D0);
  }

  sub_192227FA0();
  v12 = sub_192226D00();
  sub_1922257A0();

  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_192158650()
{
  v1 = sub_1922261D0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for _ClockHandRotationEffect(0) + 44);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
  }

  else
  {

    sub_192227FA0();
    v7 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v8 = sub_19206A098(v6, 0);
    (*(v2 + 8))(v4, v1, v8);
    return v10[1];
  }

  return v6;
}

uint64_t sub_1921587B0()
{
  v1 = sub_1922261D0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for _ClockHandRotationEffect(0) + 48);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_192227FA0();
    v7 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v8 = sub_192049898(v6, 0);
    (*(v2 + 8))(v4, v1, v8);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_192158908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v55 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  MEMORY[0x1EEE9AC00](v48);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = sub_192225150();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v45 - v19;
  v46 = *a1;
  v47 = *(a1 + 8);
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  *(a3 + 32) = swift_getKeyPath();
  *(a3 + 40) = 0;
  *(a3 + 48) = swift_getKeyPath();
  *(a3 + 56) = 0;
  v21 = type metadata accessor for _ClockHandRotationEffect(0);
  v22 = v21[8];
  *(a3 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FE0, &qword_192238860);
  swift_storeEnumTagMultiPayload();
  v23 = v21[9];
  *(a3 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FE8, &qword_192238868);
  swift_storeEnumTagMultiPayload();
  v24 = a3 + v21[10];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  v25 = a3 + v21[11];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  v26 = a3 + v21[12];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  *(a3 + v21[13]) = 0;
  v27 = v21[14];
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v50 = *(v15 + 16);
  v50(v17, v20, v14);
  v52 = v27;
  v53 = v17;
  sub_1922274E0();
  v28 = *(v15 + 8);
  v49 = v14;
  v54 = v15 + 8;
  v28(v20, v14);
  v29 = sub_192224EA0();
  (*(*(v29 - 8) + 56))(v13, 1, 1, v29);
  sub_19202CFFC(v13, v10, &qword_1EADEECD0, &qword_1922363D0);
  sub_1922274E0();
  sub_192033970(v13, &qword_1EADEECD0, &qword_1922363D0);
  v30 = a3 + v21[16];
  LODWORD(v56) = 0;
  sub_1922274E0();
  v31 = *(&v57 + 1);
  *v30 = v57;
  *(v30 + 8) = v31;
  v56 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FA8, &qword_1922385E8);
  sub_1922274E0();
  v32 = v46;
  v33 = a3 + v21[18];
  *v33 = v46;
  v34 = v47;
  *(v33 + 8) = v47;
  v51 = v28;
  if (v34 == 1)
  {
    if (v32 != 0.0)
    {
      if (*&v32 != 1)
      {
LABEL_15:
        if (qword_1EADEE940 != -1)
        {
          swift_once();
        }

        v35 = &qword_1EADF0E48;
        goto LABEL_18;
      }

      goto LABEL_12;
    }
  }

  else if (v32 < 43200.0 || v32 > 1.79769313e308)
  {
    if (v32 < 3600.0 || v32 >= 43200.0)
    {
      goto LABEL_15;
    }

LABEL_12:
    if (qword_1EADEE950 != -1)
    {
      swift_once();
    }

    v35 = &qword_1EADF0E58;
    goto LABEL_18;
  }

  if (qword_1EADEE948 != -1)
  {
    swift_once();
  }

  v35 = &qword_1EADF0E50;
LABEL_18:
  v36 = v21[17];
  *(a3 + v21[19]) = *v35;
  v56 = 0;

  sub_1922274E0();

  *(a3 + v36) = v57;
  v37 = v21[21];
  v38 = sub_192225300();
  v39 = *(v38 - 8);
  v40 = a3 + v37;
  v41 = v55;
  (*(v39 + 16))(v40, v55, v38);
  v42 = (a3 + v21[20]);
  *v42 = a4;
  v42[1] = a5;
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v43 = v49;
  v50(v53, v20, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F88, &qword_1922385A8);
  sub_192227500();
  (*(v39 + 8))(v41, v38);
  return v51(v20, v43);
}

uint64_t sub_192158F5C()
{
  v1 = 0x646F69726570;
  if (*v0 != 1)
  {
    v1 = 0x656E6F5A656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F68636E61;
  }
}

uint64_t sub_192158FB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_19215E3F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_192158FD8(uint64_t a1)
{
  v2 = sub_19215932C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192159014(uint64_t a1)
{
  v2 = sub_19215932C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _ClockHandRotationEffect.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = sub_192225300();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0E68, &qword_1922383D0);
  v7 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19215932C();
  sub_192228B70();
  if (!v2)
  {
    v10 = v7;
    v11 = v16;
    type metadata accessor for CGPoint(0);
    v20 = 0;
    sub_19203FFCC(&qword_1EADECA50, type metadata accessor for CGPoint, MEMORY[0x1E695EFC0]);
    sub_1922287C0();
    v12 = v18;
    v13 = v19;
    LOBYTE(v18) = 1;
    sub_192228780();
    v18 = v14;
    LOBYTE(v19) = 0;
    v20 = 2;
    sub_19203FFCC(&qword_1EADECEF0, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BE0]);
    sub_1922287C0();
    sub_192158908(&v18, v6, v11, v12, v13);
    (*(v10 + 8))(v9, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_19215932C()
{
  result = qword_1ED748598;
  if (!qword_1ED748598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED748598);
  }

  return result;
}

uint64_t _ClockHandRotationEffect.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0E70, &qword_1922383D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19215932C();
  sub_192228B90();
  v11 = *(v3 + *(type metadata accessor for _ClockHandRotationEffect(0) + 80));
  v10[15] = 0;
  type metadata accessor for CGPoint(0);
  sub_19203FFCC(&qword_1EADECA58, type metadata accessor for CGPoint, MEMORY[0x1E695EFA8]);
  sub_1922288C0();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_192228880();
    LOBYTE(v11) = 2;
    sub_192225300();
    sub_19203FFCC(&qword_1EADECEF8, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BC8]);
    sub_1922288C0();
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_192159618(uint64_t a1)
{
  v2 = type metadata accessor for _ClockHandRotationEffect(0);
  v3 = sub_1922252D0();
  sub_1922250B0();
  v5 = v4 + v3;
  v6 = v1 + *(v2 + 72);
  if (*(v6 + 8))
  {
    v7 = dbl_192238A08[*v6];
  }

  else
  {
    v7 = *v6;
  }

  v8 = fmod(v5, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FF8, &qword_192238878);
  sub_1922274F0();
  if (!v13)
  {
    goto LABEL_12;
  }

  if (*(v13 + OBJC_IVAR____TtC9WidgetKitP33_A678AB8EBD96EB0F22F9B66B950B3AAD13DatePublisher_updateInterval) < 1.0)
  {

    goto LABEL_12;
  }

  v9 = *v6;
  v10 = *(v6 + 8);

  if (v10 != 1)
  {
    if (v9 > 60.0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (*&v9 >= 2uLL)
  {
LABEL_11:
    v8 = round(v8 * 60.0) / 60.0;
  }

LABEL_12:
  if (*(v6 + 8))
  {
    v11 = dbl_192238A08[*v6];
  }

  else
  {
    v11 = *v6;
  }

  return (v8 + v8) * 3.14159265 / v11;
}

unint64_t sub_192159780()
{
  result = qword_1EADF0E98;
  if (!qword_1EADF0E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0E88, &qword_1922383F0);
    sub_192031E74(&qword_1EADF0EA0, &qword_1EADF0E90, &qword_1922383F8, MEMORY[0x1E697FDF8]);
    sub_19206CAC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0E98);
  }

  return result;
}

unint64_t sub_192159838()
{
  result = qword_1EADF0EA8;
  if (!qword_1EADF0EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0E78, &qword_1922383E0);
    sub_192031E74(&qword_1EADF0EB0, &qword_1EADF0EB8, &qword_192238400, MEMORY[0x1E697C278]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0EC0, &unk_192238408);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEECD0, &qword_1922363D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0EC8, &qword_192238418);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0ED0, &qword_192238420);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0ED8, &qword_192238428);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0EE0, &qword_192238430);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0EE8, &qword_192238438);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0EF0, &qword_192238440);
    sub_192159B04(&qword_1EADECDF8, &qword_1EADF0EF0, &qword_192238440, sub_192159AD4);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_192049464();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1920494E8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0EA8);
  }

  return result;
}

uint64_t sub_192159B04(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_192159B88()
{
  result = qword_1EADECE28;
  if (!qword_1EADECE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0F00, &qword_192238450);
    sub_192159C40();
    sub_192031E74(&qword_1EADECD10, &qword_1EADF0F20, &qword_192238470, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECE28);
  }

  return result;
}

unint64_t sub_192159C40()
{
  result = qword_1EADECE38;
  if (!qword_1EADECE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0F08, &qword_192238458);
    sub_192159CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECE38);
  }

  return result;
}

unint64_t sub_192159CCC()
{
  result = qword_1EADECE48;
  if (!qword_1EADECE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0F10, &qword_192238460);
    sub_192031E74(&qword_1EADECD78, &qword_1EADF0F18, &qword_192238468, MEMORY[0x1E697F380]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECE48);
  }

  return result;
}

unint64_t sub_192159D84()
{
  result = qword_1EADF0F30;
  if (!qword_1EADF0F30)
  {
    sub_19202A7A8(255, &qword_1EADF0F38, 0x1E6994428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0F30);
  }

  return result;
}

uint64_t sub_192159DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FD0, &qword_192238820);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v122 = &v97 - v5;
  v6 = type metadata accessor for _ClockHandRotationEffect(0);
  v131 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v130 = v7;
  v128 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  MEMORY[0x1EEE9AC00](v121);
  v127 = (&v97 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v97 - v10);
  v12 = sub_192225150();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F18, &qword_192238468);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v97 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F10, &qword_192238460);
  v20 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v97 - v21;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F08, &qword_192238458);
  MEMORY[0x1EEE9AC00](v100);
  v124 = &v97 - v23;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F00, &qword_192238450);
  MEMORY[0x1EEE9AC00](v99);
  v102 = &v97 - v24;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0EF8, &qword_192238448);
  MEMORY[0x1EEE9AC00](v101);
  v103 = &v97 - v25;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0EF0, &qword_192238440);
  MEMORY[0x1EEE9AC00](v129);
  v98 = &v97 - v26;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0EE8, &qword_192238438);
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v104 = &v97 - v27;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0ED8, &qword_192238428);
  v107 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v125 = &v97 - v28;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0ED0, &qword_192238420);
  v110 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v108 = &v97 - v29;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0EC8, &qword_192238418);
  v113 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v111 = &v97 - v30;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0EC0, &unk_192238408);
  v116 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v114 = &v97 - v31;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FD8, &qword_192238828);
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v118 = &v97 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0E90, &qword_1922383F8);
  (*(*(v33 - 8) + 16))(v18, a1, v33);
  if (sub_19215B0E0())
  {
    v34 = 0.0;
  }

  else
  {
    v34 = 1.0;
  }

  sub_19204E300(v18, v22, &qword_1EADF0F18, &qword_192238468);
  v35 = *(v20 + 44);
  v36 = v2;
  *&v22[v35] = v34;
  sub_192158280(v11);
  v37 = *(v13 + 48);
  if (v37(v11, 1, v12) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F88, &qword_1922385A8);
    sub_1922274F0();
    if (v37(v11, 1, v12) != 1)
    {
      sub_192033970(v11, &qword_1EADEED10, &unk_19222B0F0);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  v126 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F90, &unk_1922385B0);
  v38 = v127;
  sub_1922274F0();
  v39 = sub_1920490B8(v15, v38);
  sub_192033970(v38, &qword_1EADEECD0, &qword_1922363D0);
  (*(v13 + 8))(v15, v12);
  sub_1922276A0();
  v41 = v40;
  v43 = v42;
  v44 = v124;
  sub_19204E300(v22, v124, &qword_1EADF0F10, &qword_192238460);
  v45 = (v44 + *(v100 + 36));
  *v45 = v39;
  *(v45 + 1) = v41;
  *(v45 + 2) = v43;
  KeyPath = swift_getKeyPath();
  v47 = v102;
  v48 = &v102[*(v99 + 36)];
  v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F20, &qword_192238470) + 28);
  v50 = *MEMORY[0x1E697E7D0];
  v51 = sub_192225C60();
  (*(*(v51 - 8) + 104))(v48 + v49, v50, v51);
  *v48 = KeyPath;
  sub_19204E300(v44, v47, &qword_1EADF0F08, &qword_192238458);
  v52 = v128;
  sub_19204938C(v36, v128);
  v53 = (*(v131 + 80) + 16) & ~*(v131 + 80);
  v54 = *(v131 + 80);
  v55 = swift_allocObject();
  sub_1920493F0(v52, v55 + v53);
  v56 = v103;
  sub_19204E300(v47, v103, &qword_1EADF0F00, &qword_192238450);
  v57 = (v56 + *(v101 + 36));
  *v57 = sub_19215E510;
  v57[1] = v55;
  v57[2] = 0;
  v57[3] = 0;
  sub_19204938C(v36, v52);
  v124 = v54;
  v58 = swift_allocObject();
  sub_1920493F0(v52, v58 + v53);
  v59 = v98;
  sub_19204E300(v56, v98, &qword_1EADF0EF8, &qword_192238448);
  v60 = v129;
  v61 = (v59 + *(v129 + 36));
  *v61 = 0;
  v61[1] = 0;
  v61[2] = sub_19215E934;
  v61[3] = v58;
  LOBYTE(v133) = sub_192157EA0() & 1;
  sub_19204938C(v36, v52);
  v62 = swift_allocObject();
  sub_1920493F0(v52, v62 + v53);
  v63 = sub_192159B04(&qword_1EADECDF8, &qword_1EADF0EF0, &qword_192238440, sub_192159AD4);
  v131 = v36;
  v64 = v104;
  sub_1922271F0();

  sub_192033970(v59, &qword_1EADF0EF0, &qword_192238440);
  LOBYTE(v132) = sub_192158138() & 1;
  sub_19204938C(v131, v52);
  v65 = swift_allocObject();
  sub_1920493F0(v52, v65 + v53);
  *&v133 = v60;
  *(&v133 + 1) = MEMORY[0x1E69E6370];
  v134 = v63;
  v135 = MEMORY[0x1E69E6388];
  v129 = MEMORY[0x1E6981448];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v67 = v106;
  sub_1922271F0();

  (*(v105 + 8))(v64, v67);
  v68 = sub_192157FE8();
  v132 = v68;
  sub_19204938C(v131, v52);
  v69 = swift_allocObject();
  sub_1920493F0(v52, v69 + v53);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0EE0, &qword_192238430);
  *&v133 = v67;
  *(&v133 + 1) = MEMORY[0x1E69E6370];
  v134 = OpaqueTypeConformance2;
  v135 = MEMORY[0x1E69E6388];
  v70 = swift_getOpaqueTypeConformance2();
  v71 = sub_192049464();
  v72 = v108;
  v73 = v109;
  v74 = v125;
  sub_1922271F0();

  (*(v107 + 8))(v74, v73);
  LOBYTE(v132) = sub_1921587B0() & 1;
  sub_19204938C(v131, v52);
  v75 = swift_allocObject();
  sub_1920493F0(v52, v75 + v53);
  *&v133 = v73;
  *(&v133 + 1) = v105;
  v134 = v70;
  v135 = v71;
  v125 = swift_getOpaqueTypeConformance2();
  v76 = v111;
  v77 = v112;
  sub_1922271F0();

  (*(v110 + 8))(v72, v77);
  v78 = (v131 + *(v126 + 64));
  v79 = *v78;
  v80 = *(v78 + 1);
  LODWORD(v133) = v79;
  *(&v133 + 1) = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FF0, &qword_192238870);
  sub_1922274F0();
  sub_19204938C(v131, v52);
  v81 = swift_allocObject();
  sub_1920493F0(v52, v81 + v53);
  *&v133 = v77;
  *(&v133 + 1) = MEMORY[0x1E69E6370];
  v134 = v125;
  v135 = MEMORY[0x1E69E6388];
  v82 = swift_getOpaqueTypeConformance2();
  v83 = v114;
  v84 = v115;
  sub_1922271F0();

  (*(v113 + 8))(v76, v84);
  v85 = v127;
  sub_192158468(v127);
  sub_19204938C(v131, v52);
  v86 = swift_allocObject();
  v125 = v53;
  sub_1920493F0(v52, v86 + v53);
  *&v133 = v84;
  *(&v133 + 1) = MEMORY[0x1E69E7668];
  v134 = v82;
  v87 = v131;
  v135 = MEMORY[0x1E69E7688];
  swift_getOpaqueTypeConformance2();
  sub_1920494E8();
  v88 = v118;
  v89 = v117;
  sub_1922271F0();

  sub_192033970(v85, &qword_1EADEECD0, &qword_1922363D0);
  (*(v116 + 8))(v83, v89);
  v133 = *(v87 + *(v126 + 68));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FF8, &qword_192238878);
  sub_1922274F0();
  if (v132)
  {
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FC8, &qword_192238818);
    v90 = v122;
    sub_192225940();
    swift_endAccess();

    v91 = 0;
  }

  else
  {
    v90 = v122;
    v91 = 1;
  }

  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1000, &qword_192238880);
  (*(*(v92 - 8) + 56))(v90, v91, 1, v92);
  v93 = v128;
  sub_19204938C(v87, v128);
  v94 = v125;
  v95 = swift_allocObject();
  sub_1920493F0(v93, &v94[v95]);
  sub_19215CBFC(v90, sub_19215EBC0, v95, v123);

  sub_192033970(v90, &qword_1EADF0FD0, &qword_192238820);
  return (*(v119 + 8))(v88, v120);
}

uint64_t sub_19215B0E0()
{
  v1 = sub_1922261D0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 48);
  if (*(v0 + 56) == 1)
  {
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_6:
    v9 = v0 + *(type metadata accessor for _ClockHandRotationEffect(0) + 72);
    v10 = *v9;
    if (*(v9 + 8) == 1)
    {
      if (*&v10 < 2uLL)
      {
LABEL_8:
        v8 = 0;
        return v8 & 1;
      }
    }

    else if (v10 > 60.0)
    {
      goto LABEL_8;
    }

    v11 = sub_192157FE8();
    if (!v11 || (v12 = v11, v13 = [v11 glassOptions], v12, !v13) || (v14 = objc_msgSend(v13, sel_wantsSubduedGlass), v13, (v14 & 1) == 0))
    {
      v8 = sub_192157EA0();
      return v8 & 1;
    }

    goto LABEL_5;
  }

  sub_192227FA0();
  v6 = sub_192226D00();
  sub_1922257A0();

  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  swift_getAtKeyPath();
  v7 = sub_192049898(v5, 0);
  (*(v2 + 8))(v4, v1, v7);
  if ((v16[15] & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_5:
  v8 = 1;
  return v8 & 1;
}

void *sub_19215B2D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v12 - v6);
  v8 = (a1 + *(type metadata accessor for _ClockHandRotationEffect(0) + 64));
  v9 = *v8;
  v10 = *(v8 + 1);
  v14 = *v8;
  v15 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FF0, &qword_192238870);
  result = sub_1922274F0();
  if (v16 == -1)
  {
    __break(1u);
  }

  else
  {
    v12[1] = v16 + 1;
    v12[2] = v9;
    v13 = v10;
    sub_192227500();

    sub_192158468(v7);
    sub_19202CFFC(v7, v4, &qword_1EADEECD0, &qword_1922363D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F90, &unk_1922385B0);
    sub_192227500();
    return sub_192033970(v7, &qword_1EADEECD0, &qword_1922363D0);
  }

  return result;
}

void *sub_19215B46C(uint64_t a1)
{
  type metadata accessor for _ClockHandRotationEffect(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FF0, &qword_192238870);
  result = sub_1922274F0();
  if (v2)
  {
    sub_192227500();

    return sub_19215B540(0xD000000000000013, 0x800000019224C080);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19215B540(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v130 = a1;
  v5 = sub_192225150();
  v124 = *(v5 - 8);
  v125 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v122 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v123 = &v118 - v8;
  v9 = sub_1922261D0();
  v127 = *(v9 - 8);
  v128 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v126 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _ClockHandRotationEffect(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v118 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v118 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v118 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v118 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v118 - v27;
  v30 = v2 + *(v29 + 64);
  v31 = *v30;
  v32 = *(v30 + 8);
  LODWORD(v132) = v31;
  v133 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FF0, &qword_192238870);
  sub_1922274F0();
  if (!v131 || (sub_192158138() & 1) != 0)
  {
    if (qword_1EADECED8 != -1)
    {
      swift_once();
    }

    v33 = sub_1922258B0();
    __swift_project_value_buffer(v33, qword_1EAE00758);
    sub_19204938C(v2, v16);
    sub_19204938C(v2, v13);

    v34 = sub_192225890();
    v35 = sub_192227FB0();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v132 = v37;
      *v36 = 136446722;
      v38 = &v16[v11[10]];
      v39 = *v38;
      LODWORD(v38) = v38[8];
      v121 = v11;
      v129 = a2;
      if (v38 == 1)
      {
        v40 = v39;
        if (v39)
        {
LABEL_8:
          v41 = [v39 description];

          v42 = sub_192227960();
          v44 = v43;

LABEL_16:
          sub_19204FEDC(v16);
          v50 = sub_19202B8CC(v42, v44, &v132);

          *(v36 + 4) = v50;
          *(v36 + 12) = 2080;
          v11 = v121;
          v131 = sub_192227630();
          v51 = sub_192227990();
          v53 = v52;
          sub_19204FEDC(v13);
          v54 = sub_19202B8CC(v51, v53, &v132);

          *(v36 + 14) = v54;
          *(v36 + 22) = 2082;
          *(v36 + 24) = sub_19202B8CC(v130, v129, &v132);
          _os_log_impl(&dword_192028000, v34, v35, "Widget: %{public}s - %s Stopped date publishing because view is hidden or animations are paused. Reason: %{public}s", v36, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x193B0C7F0](v37, -1, -1);
          v55 = v36;
LABEL_17:
          MEMORY[0x193B0C7F0](v55, -1, -1);

          goto LABEL_18;
        }
      }

      else
      {

        sub_192227FA0();
        v47 = sub_192226D00();
        sub_1922257A0();

        v48 = v126;
        _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
        swift_getAtKeyPath();
        v49 = sub_19209561C(v39, 0);
        (*(v127 + 8))(v48, v128, v49);
        v39 = v131;
        if (v131)
        {
          goto LABEL_8;
        }
      }

      v42 = 7104878;
      v44 = 0xE300000000000000;
      goto LABEL_16;
    }

    sub_19204FEDC(v13);
    v45 = v16;
LABEL_10:
    sub_19204FEDC(v45);
LABEL_18:
    v56 = (v3 + v11[17]);
    v57 = *v56;
    v58 = v56[1];
    v132 = *v56;
    v133 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FF8, &qword_192238878);
    sub_1922274F0();
    if (v131)
    {
      v59 = sub_192227630();
      sub_19215777C(v59);
    }

    v132 = v57;
    v133 = v58;
    v131 = 0;
    return sub_192227500();
  }

  v129 = a2;
  v46 = v2 + v11[18];
  if (*(v46 + 8) == 1)
  {
    if (*v46 < 2uLL)
    {
      goto LABEL_31;
    }
  }

  else if (*v46 > 60.0)
  {
    goto LABEL_31;
  }

  v61 = sub_192157FE8();
  if (v61 && (v62 = v61, v63 = [v61 glassOptions], v62, v63) && (v64 = objc_msgSend(v63, sel_wantsSubduedGlass), v63, (v64 & 1) != 0) || (sub_192157EA0() & 1) != 0)
  {
    if (qword_1EADECED8 != -1)
    {
      swift_once();
    }

    v65 = sub_1922258B0();
    __swift_project_value_buffer(v65, qword_1EAE00758);
    sub_19204938C(v3, v28);
    sub_19204938C(v3, v25);

    v34 = sub_192225890();
    v66 = sub_192227FB0();

    if (os_log_type_enabled(v34, v66))
    {
      v67 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v132 = v125;
      *v67 = 136446722;
      v68 = &v28[v11[10]];
      v69 = *v68;
      if (v68[8] == 1)
      {
        v70 = v69;
      }

      else
      {

        sub_192227FA0();
        v104 = sub_192226D00();
        sub_1922257A0();

        v105 = v126;
        _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
        swift_getAtKeyPath();
        v106 = sub_19209561C(v69, 0);
        (*(v127 + 8))(v105, v128, v106);
        v69 = v131;
      }

      v107 = v11;
      if (v69)
      {
        v108 = [v69 description];

        v109 = sub_192227960();
        v111 = v110;
      }

      else
      {
        v109 = 7104878;
        v111 = 0xE300000000000000;
      }

      sub_19204FEDC(v28);
      v112 = sub_19202B8CC(v109, v111, &v132);

      *(v67 + 4) = v112;
      *(v67 + 12) = 2080;
      v11 = v107;
      v131 = sub_192227630();
      v113 = sub_192227990();
      v115 = v114;
      sub_19204FEDC(v25);
      v116 = sub_19202B8CC(v113, v115, &v132);

      *(v67 + 14) = v116;
      *(v67 + 22) = 2082;
      *(v67 + 24) = sub_19202B8CC(v130, v129, &v132);
      _os_log_impl(&dword_192028000, v34, v66, "Widget: %{public}s - %s Stopping date publishing ticking because we should pause second hands. Reason: %{public}s", v67, 0x20u);
      v117 = v125;
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v117, -1, -1);
      v55 = v67;
      goto LABEL_17;
    }

    sub_19204FEDC(v25);
    v45 = v28;
    goto LABEL_10;
  }

LABEL_31:
  if (qword_1EADECED8 != -1)
  {
    swift_once();
  }

  v71 = sub_1922258B0();
  __swift_project_value_buffer(v71, qword_1EAE00758);
  sub_19204938C(v3, v22);
  sub_19204938C(v3, v19);

  v72 = sub_192225890();
  v73 = sub_192227FB0();

  if (!os_log_type_enabled(v72, v73))
  {

    sub_19204FEDC(v19);
    sub_19204FEDC(v22);
    goto LABEL_41;
  }

  v74 = swift_slowAlloc();
  v119 = swift_slowAlloc();
  v132 = v119;
  *v74 = 136446722;
  v75 = &v22[v11[10]];
  v76 = *v75;
  LODWORD(v75) = v75[8];
  v120 = v73;
  if (v75 != 1)
  {

    sub_192227FA0();
    v83 = sub_192226D00();
    sub_1922257A0();

    v84 = v126;
    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v85 = sub_19209561C(v76, 0);
    (*(v127 + 8))(v84, v128, v85);
    v76 = v131;
    v78 = v11;
    if (v131)
    {
      goto LABEL_36;
    }

LABEL_39:
    v80 = 7104878;
    v82 = 0xE300000000000000;
    goto LABEL_40;
  }

  v77 = v76;
  v78 = v11;
  if (!v76)
  {
    goto LABEL_39;
  }

LABEL_36:
  v79 = [v76 description];

  v80 = sub_192227960();
  v82 = v81;

LABEL_40:
  sub_19204FEDC(v22);
  v86 = sub_19202B8CC(v80, v82, &v132);

  *(v74 + 4) = v86;
  *(v74 + 12) = 2080;
  v11 = v78;
  v131 = sub_192227630();
  v87 = sub_192227990();
  v89 = v88;
  sub_19204FEDC(v19);
  v90 = sub_19202B8CC(v87, v89, &v132);

  *(v74 + 14) = v90;
  *(v74 + 22) = 2082;
  *(v74 + 24) = sub_19202B8CC(v130, v129, &v132);
  _os_log_impl(&dword_192028000, v72, v120, "Widget: %{public}s - %s Resuming date publishing because we're visible and animations are not effectively paused. Reason: %{public}s", v74, 0x20u);
  v91 = v119;
  swift_arrayDestroy();
  MEMORY[0x193B0C7F0](v91, -1, -1);
  MEMORY[0x193B0C7F0](v74, -1, -1);

LABEL_41:
  v92 = *(v46 + 8);
  v132 = *v46;
  LOBYTE(v133) = v92;
  v93 = sub_1921587B0();
  v94 = sub_19215E284(v93 & 1);
  v95 = (v3 + v11[17]);
  v96 = *v95;
  v97 = v95[1];
  v132 = *v95;
  v133 = v97;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FF8, &qword_192238878);
  sub_1922274F0();
  v98 = v131;
  if (!v131 || (, v94 != v98))
  {
    v132 = v96;
    v133 = v97;
    sub_1922274F0();
    if (v131)
    {
      v99 = sub_192227630();
      sub_19215777C(v99);
    }

    v132 = v96;
    v133 = v97;
    v131 = v94;

    sub_192227500();
    v132 = v96;
    v133 = v97;
    sub_1922274F0();
    if (v131)
    {
      v100 = sub_192227630();
      sub_192156C00(v100);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v101 = v123;
  sub_192225950();

  v103 = v124;
  v102 = v125;
  (*(v124 + 16))(v122, v101, v125);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F88, &qword_1922385A8);
  sub_192227500();

  return (*(v103 + 8))(v101, v102);
}

uint64_t sub_19215C30C(uint64_t a1)
{
  v2 = type metadata accessor for _ClockHandRotationEffect(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v21 - v6;
  if (qword_1EADECED8 != -1)
  {
    swift_once();
  }

  v8 = sub_1922258B0();
  __swift_project_value_buffer(v8, qword_1EAE00758);
  sub_19204938C(a1, v7);
  sub_19204938C(a1, v4);
  v9 = sub_192225890();
  v10 = sub_192227FB0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315394;
    v22 = sub_192227630();
    v13 = sub_192227990();
    v15 = v14;
    sub_19204FEDC(v7);
    v16 = sub_19202B8CC(v13, v15, &v24);

    *(v11 + 4) = v16;
    *(v11 + 12) = 1024;
    v17 = &v4[*(v2 + 64)];
    v18 = *v17;
    v19 = *(v17 + 1);
    LODWORD(v22) = v18;
    v23 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FF0, &qword_192238870);
    sub_1922274F0();
    LODWORD(v16) = v21[1];
    sub_19204FEDC(v4);
    *(v11 + 14) = v16;
    _os_log_impl(&dword_192028000, v9, v10, "%s Visibility changed: %u", v11, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x193B0C7F0](v12, -1, -1);
    MEMORY[0x193B0C7F0](v11, -1, -1);
  }

  else
  {
    sub_19204FEDC(v4);

    sub_19204FEDC(v7);
  }

  return sub_19215B540(0xD000000000000012, 0x800000019224BFE0);
}

double sub_19215C598(uint64_t a1)
{
  v2 = sub_1922261D0();
  v3 = *(v2 - 8);
  *&result = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a1 + 32);
  if (*(a1 + 40) != 1)
  {

    sub_192227FA0();
    v8 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v9 = sub_192049898(v7, 0);
    (*(v3 + 8))(v6, v2, v9);
    if (v11[15])
    {
      return result;
    }

    goto LABEL_5;
  }

  if ((v7 & 1) == 0)
  {
LABEL_5:
    v10 = sub_192227620();
    MEMORY[0x1EEE9AC00](v10);
    *&v11[-16] = a1;
    sub_192225BA0();
  }

  return result;
}

uint64_t sub_19215C758()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v7 - v4;
  sub_192158468((v7 - v4));
  type metadata accessor for _ClockHandRotationEffect(0);
  sub_19202CFFC(v5, v2, &qword_1EADEECD0, &qword_1922363D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F90, &unk_1922385B0);
  sub_192227500();
  return sub_192033970(v5, &qword_1EADEECD0, &qword_1922363D0);
}

void sub_19215C870(uint64_t a1, uint64_t a2)
{
  v4 = sub_192225150();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v28 = &v26 - v12;
  v13 = sub_1922261D0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 32);
  if (*(a2 + 40) == 1)
  {
    if (v18)
    {
      return;
    }
  }

  else
  {
    v26 = v15;

    sub_192227FA0();
    v19 = sub_192226D00();
    v27 = a1;
    v20 = v19;
    sub_1922257A0();

    a1 = v27;
    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v21 = sub_192049898(v18, 0);
    (*(v14 + 8))(v17, v26, v21);
    if (v29)
    {
      return;
    }
  }

  type metadata accessor for _ClockHandRotationEffect(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F90, &unk_1922385B0);
  v22 = v28;
  sub_1922274F0();
  v23 = sub_192224EA0();
  v24 = (*(*(v23 - 8) + 48))(v22, 1, v23);
  sub_192033970(v22, &qword_1EADEECD0, &qword_1922363D0);
  if (v24 == 1)
  {
    v25 = *(v5 + 16);
    v25(v10, a1, v4);
    v25(v7, v10, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F88, &qword_1922385A8);
    sub_192227500();
    (*(v5 + 8))(v10, v4);
  }
}

uint64_t sub_19215CBFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a3;
  v56 = a2;
  v59 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1008, &qword_192238888);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v51 - v6;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0EB8, &qword_192238400);
  MEMORY[0x1EEE9AC00](v60);
  v9 = &v51 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FD0, &qword_192238820);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1000, &qword_192238880);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v51 - v15;
  sub_19202CFFC(a1, v12, &qword_1EADF0FD0, &qword_192238820);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_192033970(v12, &qword_1EADF0FD0, &qword_192238820);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FD8, &qword_192238828);
    (*(*(v17 - 8) + 16))(v7, v58, v17);
    swift_storeEnumTagMultiPayload();
    v58 = sub_192031E74(&qword_1EADF0EB0, &qword_1EADF0EB8, &qword_192238400, MEMORY[0x1E697C278]);
    v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0EC0, &unk_192238408);
    v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEECD0, &qword_1922363D0);
    v55 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0EC8, &qword_192238418);
    v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0ED0, &qword_192238420);
    v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0ED8, &qword_192238428);
    v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0EE0, &qword_192238430);
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0EE8, &qword_192238438);
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0EF0, &qword_192238440);
    v23 = sub_192159B04(&qword_1EADECDF8, &qword_1EADF0EF0, &qword_192238440, sub_192159AD4);
    v24 = MEMORY[0x1E69E6370];
    v61 = v22;
    v62 = MEMORY[0x1E69E6370];
    v25 = MEMORY[0x1E69E6388];
    v63 = v23;
    v64 = MEMORY[0x1E69E6388];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v61 = v21;
    v62 = v24;
    v63 = OpaqueTypeConformance2;
    v64 = v25;
    v27 = swift_getOpaqueTypeConformance2();
    v28 = sub_192049464();
    v61 = v19;
    v62 = v20;
    v63 = v27;
    v64 = v28;
    v29 = swift_getOpaqueTypeConformance2();
    v61 = v18;
    v62 = v24;
    v63 = v29;
    v64 = v25;
    v30 = swift_getOpaqueTypeConformance2();
    v61 = v55;
    v62 = MEMORY[0x1E69E7668];
    v63 = v30;
    v64 = MEMORY[0x1E69E7688];
    v31 = swift_getOpaqueTypeConformance2();
    v32 = sub_1920494E8();
    v61 = v57;
    v62 = v56;
    v63 = v31;
    v64 = v32;
    swift_getOpaqueTypeConformance2();
    return sub_1922266E0();
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FD8, &qword_192238828);
    (*(*(v55 - 8) + 16))(v9, v58, v55);
    v34 = v60;
    (*(v14 + 16))(&v9[*(v60 + 52)], v16, v13);
    v35 = &v9[*(v34 + 56)];
    v36 = v57;
    *v35 = v56;
    v35[1] = v36;
    v54 = v7;
    sub_19202CFFC(v9, v7, &qword_1EADF0EB8, &qword_192238400);
    swift_storeEnumTagMultiPayload();
    v58 = sub_192031E74(&qword_1EADF0EB0, &qword_1EADF0EB8, &qword_192238400, MEMORY[0x1E697C278]);

    v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0EC0, &unk_192238408);
    v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEECD0, &qword_1922363D0);
    v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0EC8, &qword_192238418);
    v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0ED0, &qword_192238420);
    v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0ED8, &qword_192238428);
    v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0EE0, &qword_192238430);
    v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0EE8, &qword_192238438);
    v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0EF0, &qword_192238440);
    v41 = sub_192159B04(&qword_1EADECDF8, &qword_1EADF0EF0, &qword_192238440, sub_192159AD4);
    v42 = MEMORY[0x1E69E6370];
    v61 = v40;
    v62 = MEMORY[0x1E69E6370];
    v43 = MEMORY[0x1E69E6388];
    v63 = v41;
    v64 = MEMORY[0x1E69E6388];
    v44 = swift_getOpaqueTypeConformance2();
    v61 = v39;
    v62 = v42;
    v63 = v44;
    v64 = v43;
    v45 = swift_getOpaqueTypeConformance2();
    v46 = sub_192049464();
    v61 = v37;
    v62 = v38;
    v63 = v45;
    v64 = v46;
    v47 = swift_getOpaqueTypeConformance2();
    v61 = v52;
    v62 = v42;
    v63 = v47;
    v64 = v43;
    v48 = swift_getOpaqueTypeConformance2();
    v61 = v53;
    v62 = MEMORY[0x1E69E7668];
    v63 = v48;
    v64 = MEMORY[0x1E69E7688];
    v49 = swift_getOpaqueTypeConformance2();
    v50 = sub_1920494E8();
    v61 = v57;
    v62 = v56;
    v63 = v49;
    v64 = v50;
    swift_getOpaqueTypeConformance2();
    sub_1922266E0();
    sub_192033970(v9, &qword_1EADF0EB8, &qword_192238400);
    return (*(v14 + 8))(v16, v13);
  }
}

uint64_t sub_19215D3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_19203FFCC(&qword_1ED748728, type metadata accessor for _ClockHandRotationEffect, &protocol conformance descriptor for _ClockHandRotationEffect);

  return MEMORY[0x1EEDDB138](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_19215D478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_19203FFCC(&qword_1ED748728, type metadata accessor for _ClockHandRotationEffect, &protocol conformance descriptor for _ClockHandRotationEffect);

  return MEMORY[0x1EEDDB140](a1, a2, a3, a4, a5, v10);
}

uint64_t View._clockHandRotationEffect(_:in:anchor:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v55 = a2;
  v59 = a4;
  v60 = a5;
  v11 = sub_192225300();
  v53 = *(v11 - 8);
  v54 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for _ClockHandRotationEffect(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_192225C70();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v47 - v21;
  v49 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v48 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v47 = &v47 - v26;
  v27 = sub_1922266F0();
  v57 = *(v27 - 8);
  v58 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v56 = &v47 - v28;
  v51 = *a1;
  v50 = *(a1 + 8);
  v29 = [objc_opt_self() mainBundle];
  v30 = [v29 bundleIdentifier];

  if (v30)
  {
    sub_192227960();
  }

  if (qword_1EADEE8D0 != -1)
  {
    swift_once();
  }

  if (dyld_program_sdk_at_least() && (sub_192227A10() & 1) == 0)
  {
    v41 = sub_192227A10();

    if ((v41 & 1) == 0)
    {
      v42 = v47;
      v32 = v59;
      sub_1921BB14C();
      v43 = v48;
      sub_1921BB14C();
      v44 = sub_19203FFCC(&qword_1ED748730, type metadata accessor for _ClockHandRotationEffect, &protocol conformance descriptor for _ClockHandRotationEffect);
      v61 = v32;
      v62 = v44;
      WitnessTable = swift_getWitnessTable();
      v36 = v56;
      sub_19202F62C(v43, a3, v16, v32, WitnessTable);
      v46 = *(v49 + 8);
      v46(v43, a3);
      v46(v42, a3);
      goto LABEL_9;
    }
  }

  else
  {
  }

  v69 = v51;
  v70 = v50;
  v31 = v52;
  (*(v53 + 16))(v52, v55, v54);
  sub_192158908(&v69, v31, v15, a6, a7);
  v32 = v59;
  MEMORY[0x193B0A190](v15, a3, v13, v59);
  sub_19204FEDC(v15);
  v33 = sub_19203FFCC(&qword_1ED748730, type metadata accessor for _ClockHandRotationEffect, &protocol conformance descriptor for _ClockHandRotationEffect);
  v67 = v32;
  v68 = v33;
  v34 = swift_getWitnessTable();
  sub_1921BB14C();
  v35 = *(v17 + 8);
  v35(v19, v16);
  sub_1921BB14C();
  v36 = v56;
  sub_1921BAB5C(v19, a3, v16, v32, v34);
  v35(v19, v16);
  v35(v22, v16);
LABEL_9:
  v37 = sub_19203FFCC(&qword_1ED748730, type metadata accessor for _ClockHandRotationEffect, &protocol conformance descriptor for _ClockHandRotationEffect);
  v65 = v32;
  v66 = v37;
  v38 = swift_getWitnessTable();
  v63 = v32;
  v64 = v38;
  v39 = v58;
  swift_getWitnessTable();
  sub_1921BB14C();
  return (*(v57 + 8))(v36, v39);
}

void sub_19215DD34(uint64_t a1)
{
  sub_19203FF6C(319, &qword_1ED748808, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for _ClockHandRotationEffect.Period(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _ClockHandRotationEffect.Period(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_19215DE88(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19215DEA4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_19215DED4()
{
  result = qword_1EADF0FB0;
  if (!qword_1EADF0FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0FB8, &qword_192238608);
    sub_192159780();
    sub_192159838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0FB0);
  }

  return result;
}

unint64_t sub_19215DF94()
{
  result = qword_1EADF0FC0;
  if (!qword_1EADF0FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0FC0);
  }

  return result;
}

unint64_t sub_19215DFEC()
{
  result = qword_1ED7485A0;
  if (!qword_1ED7485A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7485A0);
  }

  return result;
}

unint64_t sub_19215E044()
{
  result = qword_1ED7485A8;
  if (!qword_1ED7485A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7485A8);
  }

  return result;
}

double sub_19215E098(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_192225950();

  return result;
}

uint64_t sub_19215E114(uint64_t a1, uint64_t *a2)
{
  v3 = sub_192225150();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  (v11)(v6, v10, v3);

  sub_192225960();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_19215E284(char a1)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    if (v2 != 0.0)
    {
      if (*&v2 != 1)
      {
        if (a1)
        {
LABEL_5:
          if (qword_1EADEE958 != -1)
          {
            swift_once();
          }

          v3 = &qword_1EADF0E60;
          return *v3;
        }

        goto LABEL_18;
      }

LABEL_24:
      if (qword_1EADEE950 != -1)
      {
        swift_once();
      }

      v3 = &qword_1EADF0E58;
      return *v3;
    }
  }

  else
  {
    v4 = *v1;
    if (v2 < 43200.0 || v4 > 1.79769313e308)
    {
      if (v4 < 3600.0 || v4 >= 43200.0)
      {
        if (a1)
        {
          goto LABEL_5;
        }

LABEL_18:
        if (qword_1EADEE940 != -1)
        {
          swift_once();
        }

        v3 = &qword_1EADF0E48;
        return *v3;
      }

      goto LABEL_24;
    }
  }

  if (qword_1EADEE948 != -1)
  {
    swift_once();
  }

  v3 = &qword_1EADF0E50;
  return *v3;
}

uint64_t sub_19215E3F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F68636E61 && a2 == 0xE600000000000000;
  if (v4 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646F69726570 && a2 == 0xE600000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1922289A0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t objectdestroy_43Tm()
{
  v1 = type metadata accessor for _ClockHandRotationEffect(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_192049898(*v2, *(v2 + 8));
  sub_19209561C(*(v2 + 16), *(v2 + 24));
  sub_192049898(*(v2 + 32), *(v2 + 40));
  sub_192049898(*(v2 + 48), *(v2 + 56));
  v3 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FE0, &qword_192238860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_192225150();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  v6 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0FE8, &qword_192238868);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_192224EA0();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v2 + v6, 1, v7))
    {
      (*(v8 + 8))(v2 + v6, v7);
    }
  }

  else
  {
  }

  sub_19209561C(*(v2 + v1[10]), *(v2 + v1[10] + 8));
  sub_19206A098(*(v2 + v1[11]), *(v2 + v1[11] + 8));
  sub_192049898(*(v2 + v1[12]), *(v2 + v1[12] + 8));
  v9 = v2 + v1[14];
  v10 = sub_192225150();
  (*(*(v10 - 8) + 8))(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F88, &qword_1922385A8);

  v11 = v2 + v1[15];
  v12 = sub_192224EA0();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v11, 1, v12))
  {
    (*(v13 + 8))(v11, v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F90, &unk_1922385B0);

  v14 = v1[21];
  v15 = sub_192225300();
  (*(*(v15 - 8) + 8))(v2 + v14, v15);

  return swift_deallocObject();
}

uint64_t sub_19215E94C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for _ClockHandRotationEffect(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_19215EBC0(uint64_t a1)
{
  v3 = *(type metadata accessor for _ClockHandRotationEffect(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_19215C870(a1, v4);
}

uint64_t EnvironmentValues._wantsCustomFontsEmbeddedInArchive.getter()
{
  sub_192057970();
  sub_1922261E0();
  return v1;
}

uint64_t (*EnvironmentValues._wantsCustomFontsEmbeddedInArchive.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_192057970();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_19215ED2C;
}

uint64_t EnvironmentValues.inJindo.getter()
{
  sub_19215EDB0();
  sub_1922261E0();
  return v1;
}

unint64_t sub_19215EDB0()
{
  result = qword_1EADEE4C8;
  if (!qword_1EADEE4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE4C8);
  }

  return result;
}

uint64_t (*EnvironmentValues.inJindo.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_19215EDB0();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_19215EEA8;
}

uint64_t sub_19215EEF0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_19215EF38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for ActivityViewSourceContext(uint64_t a1)
{
  result = qword_1EADED6D8;
  if (!qword_1EADED6D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19215EFFC(uint64_t a1)
{
  result = sub_192225360();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_19215F080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v115 = a3;
  v123 = type metadata accessor for ActivityViewSourceContext(0);
  MEMORY[0x1EEE9AC00](v123);
  v117 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v122 = &v109 - v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v121 = sub_192228240();
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v116 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v114 = &v109 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v119 = &v109 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v124 = &v109 - v14;
  v15 = sub_192228240();
  v126 = *(v15 - 8);
  v127 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v118 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v109 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v109 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v109 - v25;
  v27 = *(a1 - 8);
  v28 = *(v27 + 56);
  v28(&v109 - v25, 1, 1, a1, v24);
  v29 = v129;
  sub_192225330();
  v129 = v29;
  v125 = v26;
  if (v29)
  {
    if (qword_1EADEDEB0 != -1)
    {
      swift_once();
    }

    v30 = sub_1922258B0();
    __swift_project_value_buffer(v30, qword_1EAE007D8);
    v31 = v122;
    sub_19215FCE4(v131, v122);
    v32 = v129;
    v33 = v129;
    v34 = sub_192225890();
    v35 = sub_192227F90();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v130[0] = v131;
      *v36 = 136446466;
      v38 = sub_192225310();
      v40 = v39;
      v41 = sub_192225040();
      v43 = v42;
      sub_192039140(v38, v40);
      sub_19215FD48(v31);
      v44 = sub_19202B8CC(v41, v43, v130);

      *(v36 + 4) = v44;
      *(v36 + 12) = 2114;
      v45 = v129;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 14) = v46;
      *v37 = v46;
      _os_log_impl(&dword_192028000, v34, v35, "Error decoding activity attributes: %{public}s: %{public}@", v36, 0x16u);
      sub_1920FB918(v37);
      MEMORY[0x193B0C7F0](v37, -1, -1);
      v47 = v131;
      __swift_destroy_boxed_opaque_existential_1(v131);
      MEMORY[0x193B0C7F0](v47, -1, -1);
      MEMORY[0x193B0C7F0](v36, -1, -1);
    }

    else
    {

      sub_19215FD48(v31);
    }

    v85 = v126;
    v84 = v127;
    v86 = v125;
    swift_willThrow();
    return (*(v85 + 8))(v86, v84);
  }

  v111 = v19;
  v110 = v27;
  v113 = a2;
  (v28)(v22, 0, 1, a1);
  v48 = v126;
  v49 = v127;
  (*(v126 + 40))(v26, v22, v127);
  v50 = v26;
  if (qword_1EADEDEB0 != -1)
  {
    swift_once();
  }

  v122 = a1;
  v51 = sub_1922258B0();
  v112 = __swift_project_value_buffer(v51, qword_1EAE007D8);
  v52 = sub_192225890();
  v53 = sub_192227F80();
  v54 = os_log_type_enabled(v52, v53);
  v55 = v124;
  v56 = v111;
  if (v54)
  {
    v57 = swift_slowAlloc();
    v58 = v55;
    v59 = swift_slowAlloc();
    v130[0] = v59;
    *v57 = 136446210;
    swift_beginAccess();
    (*(v48 + 16))(v56, v50, v49);
    v60 = sub_192227990();
    v62 = sub_19202B8CC(v60, v61, v130);

    *(v57 + 4) = v62;
    _os_log_impl(&dword_192028000, v52, v53, "Decoded activity attributes: %{public}s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v59);
    v63 = v59;
    v55 = v58;
    MEMORY[0x193B0C7F0](v63, -1, -1);
    MEMORY[0x193B0C7F0](v57, -1, -1);
  }

  v64 = v131;
  v111 = *(AssociatedTypeWitness - 8);
  v65 = *(v111 + 7);
  v65(v55, 1, 1);
  sub_192224D80();
  swift_allocObject();
  v66 = sub_192224D70();
  v67 = v55;
  swift_getAssociatedConformanceWitness();
  v68 = v119;
  v69 = v129;
  v70 = AssociatedTypeWitness;
  sub_192224D60();
  if (v69)
  {

    v71 = v117;
    sub_19215FCE4(v64, v117);
    v72 = v69;
    v73 = sub_192225890();
    v74 = sub_192227F90();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v130[0] = v77;
      *v75 = 136446466;
      v78 = sub_192225040();
      v80 = v79;
      sub_19215FD48(v71);
      v81 = sub_19202B8CC(v78, v80, v130);

      *(v75 + 4) = v81;
      *(v75 + 12) = 2114;
      v82 = v69;
      v83 = _swift_stdlib_bridgeErrorToNSError();
      *(v75 + 14) = v83;
      *v76 = v83;
      _os_log_impl(&dword_192028000, v73, v74, "Error decoding activity state: %{public}s: %{public}@", v75, 0x16u);
      sub_1920FB918(v76);
      MEMORY[0x193B0C7F0](v76, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v77);
      MEMORY[0x193B0C7F0](v77, -1, -1);
      MEMORY[0x193B0C7F0](v75, -1, -1);
    }

    else
    {

      sub_19215FD48(v71);
    }

    v85 = v126;
    v84 = v127;
    v86 = v125;
    v107 = v121;
    v108 = v120;
    swift_willThrow();
    (*(v108 + 8))(v124, v107);
    return (*(v85 + 8))(v86, v84);
  }

  v129 = v66;
  (v65)(v68, 0, 1, v70);
  v87 = v120;
  v88 = v121;
  (*(v120 + 40))(v67, v68, v121);
  v89 = sub_192225890();
  v90 = sub_192227F80();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v130[0] = v92;
    *v91 = 136446210;
    swift_beginAccess();
    (*(v87 + 16))(v114, v67, v88);
    v93 = sub_192227990();
    v95 = sub_19202B8CC(v93, v94, v130);

    *(v91 + 4) = v95;
    _os_log_impl(&dword_192028000, v89, v90, "Decoded activity state: %{public}s", v91, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v92);
    MEMORY[0x193B0C7F0](v92, -1, -1);
    MEMORY[0x193B0C7F0](v91, -1, -1);
  }

  v97 = v126;
  v96 = v127;
  v98 = v125;
  v99 = v116;
  v129 = sub_192225350();
  v101 = v100;
  swift_beginAccess();
  v102 = v118;
  (*(v97 + 16))(v118, v98, v96);
  result = (*(v110 + 48))(v102, 1, v122);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v104 = v124;
    swift_beginAccess();
    v105 = v120;
    v106 = v121;
    (*(v120 + 16))(v99, v104, v121);
    result = (*(v111 + 6))(v99, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      sub_192100360(v129, v101, v118, v99, *(v131 + *(v123 + 24)), v122, v113, v115);
      (*(v105 + 8))(v104, v106);
      return (*(v97 + 8))(v98, v96);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19215FCE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityViewSourceContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19215FD48(uint64_t a1)
{
  v2 = type metadata accessor for ActivityViewSourceContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EnvironmentValues._widgetAccessoryBackgroundAccentable.getter()
{
  sub_19206D8D8();
  sub_1922261E0();
  return v1;
}

uint64_t (*EnvironmentValues._widgetAccessoryBackgroundAccentable.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_19206D8D8();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_19215FE84;
}

uint64_t sub_19215FF14(uint64_t a1)
{
  result = type metadata accessor for BundleStub(319);
  if (v2 <= 0x3F)
  {
    result = sub_19202A7A8(319, &qword_1EADEE610, 0x1E6994260);
    if (v3 <= 0x3F)
    {
      result = sub_192225150();
      if (v4 <= 0x3F)
      {
        result = sub_1922254F0();
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

void sub_192160030(uint64_t a1)
{
  type metadata accessor for ControlArchiveStorageMetadata(319);
  if (v1 <= 0x3F)
  {
    sub_1921600D4(319);
    if (v2 <= 0x3F)
    {
      sub_19216012C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1921600D4(uint64_t a1)
{
  if (!qword_1EADEE620)
  {
    type metadata accessor for ControlTemplateType(255);
    v1 = sub_192227C40();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADEE620);
    }
  }
}

void sub_19216012C(uint64_t a1)
{
  if (!qword_1EADEE018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFAC8, &unk_192246D20);
    sub_1920ED960();
    v1 = sub_192227860();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADEE018);
    }
  }
}

uint64_t sub_1921601A4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1048, &unk_192238DC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192161F2C();
  sub_192228B90();
  LOBYTE(v14) = 0;
  type metadata accessor for BundleStub(0);
  sub_192161B68(&qword_1ED74BAF8, type metadata accessor for BundleStub, &protocol conformance descriptor for BundleStub);
  sub_1922288C0();
  if (!v2)
  {
    v9 = type metadata accessor for ControlArchiveStorageMetadata(0);
    v14 = *(v3 + v9[5]);
    HIBYTE(v13) = 1;
    sub_1920E27DC();
    sub_1922288C0();
    v14 = *(v3 + v9[6]);
    HIBYTE(v13) = 2;
    sub_19202A7A8(0, &qword_1EADEE610, 0x1E6994260);
    sub_192162048(&qword_1EADEDFD8, MEMORY[0x1E6994190]);
    sub_1922288C0();
    v14 = *(v3 + v9[7]);
    v10 = v14;
    HIBYTE(v13) = 3;
    sub_1920E2830();
    v11 = v10;
    sub_1922288C0();

    LOBYTE(v14) = 4;
    sub_192225150();
    sub_192161B68(&qword_1ED74BB00, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1922288C0();
    v14 = *(v3 + v9[9]);
    HIBYTE(v13) = 5;
    sub_1922254F0();
    sub_192161B68(&qword_1EADEE4F0, MEMORY[0x1E6994010], MEMORY[0x1E6994018]);
    sub_1922288C0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_192160534(uint64_t a1)
{
  v2 = v1;
  v3 = sub_192225020();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v12 - v8;
  sub_192051870(v2, v12 - v8);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_192228AF0();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_192228AF0();
    sub_192161B68(&qword_1EADF0A38, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_192227890();
    (*(v4 + 8))(v6, v3);
  }

  type metadata accessor for BundleStub(0);
  sub_1922281E0();
  sub_1922279B0();
  v10 = type metadata accessor for ControlArchiveStorageMetadata(0);
  sub_192228B00();
  sub_192228B00();
  sub_1922281E0();
  WidgetEnvironment.Storage.hash.getter();
  MEMORY[0x193B0BA90]();
  sub_192225150();
  sub_192161B68(&qword_1EADEEEC0, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_192227890();
  v12[1] = *(v2 + *(v10 + 36));
  sub_1922254F0();
  sub_192161B68(&qword_1EADEFC08, MEMORY[0x1E6994010], MEMORY[0x1E6994020]);
  return sub_192227890();
}

void sub_192160838(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_192225150();
  v23 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BundleStub(0);
  MEMORY[0x1EEE9AC00](v6);
  v24 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1040, &qword_192238DB8);
  v22 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v9 = &v20 - v8;
  v10 = type metadata accessor for ControlArchiveStorageMetadata(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_192161F2C();
  v25 = v9;
  v14 = v27;
  sub_192228B70();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    v27 = v5;
    v15 = v12;
    v17 = v22;
    v16 = v23;
    LOBYTE(v30) = 0;
    sub_192161B68(qword_1ED748740, type metadata accessor for BundleStub, &protocol conformance descriptor for BundleStub);
    v18 = v24;
    sub_1922287C0();
    sub_192161FE0(v18, v15, type metadata accessor for BundleStub);
    v29 = 1;
    sub_19203EE8C();
    sub_1922287C0();
    *(v15 + v10[5]) = v30;
    sub_19202A7A8(0, &qword_1EADEE610, 0x1E6994260);
    v29 = 2;
    sub_192162048(&qword_1EADED380, MEMORY[0x1E6994198]);
    sub_1922287C0();
    *(v15 + v10[6]) = v30;
    v29 = 3;
    sub_192044634();
    sub_1922287C0();
    *(v15 + v10[7]) = v30;
    LOBYTE(v30) = 4;
    sub_192161B68(qword_1ED748810, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v19 = v27;
    v24 = 0;
    sub_1922287C0();
    (*(v16 + 32))(v15 + v10[8], v19, v3);
    sub_1922254F0();
    v29 = 5;
    sub_192161B68(&qword_1EADEDED0, MEMORY[0x1E6994010], MEMORY[0x1E6994030]);
    sub_1922287C0();
    (*(v17 + 8))(v25, v26);
    *(v15 + v10[9]) = v30;
    sub_19216209C(v15, v21);
    __swift_destroy_boxed_opaque_existential_1(v28);
    sub_192161F80(v15, type metadata accessor for ControlArchiveStorageMetadata);
  }
}

unint64_t sub_192160E68()
{
  v1 = *v0;
  v2 = 0x65566D6574737973;
  v3 = 0x6D6E6F7269766E65;
  v4 = 0x6E6F697461657263;
  if (v1 != 4)
  {
    v4 = 0x6574617473;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x6C6F72746E6F63;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_192160F40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_192162330(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_192160F68(uint64_t a1)
{
  v2 = sub_192161F2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192160FA4(uint64_t a1)
{
  v2 = sub_192161F2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_192161010()
{
  sub_192228AD0();
  sub_192160534(v1);
  return sub_192228B30();
}

uint64_t sub_192161054()
{
  sub_192228AD0();
  sub_192160534(v1);
  return sub_192228B30();
}

unint64_t sub_1921610DC()
{
  v1 = 0x5665766968637261;
  v2 = 0x6574616C706D6574;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    v1 = 0x617461646174656DLL;
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

uint64_t sub_19216116C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_192162544(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1921611A0(uint64_t a1)
{
  v2 = sub_192161B14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921611DC(uint64_t a1)
{
  v2 = sub_192161B14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_192161218@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = type metadata accessor for ControlArchiveStorageMetadata(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1020, &qword_192238D98);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - v9;
  v11 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_192161B14();
  sub_192228B70();
  if (!v2)
  {
    v12 = v40;
    v13 = v8;
    LOBYTE(v43) = 0;
    v14 = sub_1922287D0();
    if (v14 >= 2)
    {
      LOBYTE(v43) = 1;
      v17 = v7;
      v18 = v10;
      sub_192161B68(qword_1EADED4B8, type metadata accessor for ControlArchiveStorageMetadata, &unk_192238D20);
      sub_1922287C0();
      v39 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1028, &qword_192238DA0);
      v42 = 2;
      sub_192161D74(&qword_1EADED398, &qword_1EADED8D8, &protocol conformance descriptor for ControlTemplateType, MEMORY[0x1E69E6330]);
      sub_1922287C0();
      v19 = v17;
      v20 = v43;
      if (v43[2])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1030, &qword_192238DA8);
        v42 = 3;
        sub_192161BB0();
        sub_192228750();
        v22 = v43;
        if (!v43)
        {
          v22 = sub_192140634(MEMORY[0x1E69E7CC0]);
        }

        if (v22[2])
        {
          v40 = v19;
          if (qword_1EADEE4E8 != -1)
          {
            swift_once();
          }

          v23 = sub_1922258B0();
          __swift_project_value_buffer(v23, qword_1EAE00810);

          v24 = sub_192225890();
          v25 = sub_192227FB0();

          v38 = v25;
          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v35 = v26;
            v36 = swift_slowAlloc();
            v43 = v36;
            *v26 = 136380675;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFAC8, &unk_192246D20);
            v37 = v18;
            v27 = v24;
            sub_1920ED960();
            v28 = sub_192227850();
            v30 = v29;

            v31 = sub_19202B8CC(v28, v30, &v43);

            v32 = v35;
            *(v35 + 1) = v31;
            _os_log_impl(&dword_192028000, v27, v38, "ControlArchiveStorage decoded with vectorGlyphAssetLibraryDatas keys: %{private}s", v32, 0xCu);
            v33 = v36;
            __swift_destroy_boxed_opaque_existential_1(v36);
            MEMORY[0x193B0C7F0](v33, -1, -1);
            MEMORY[0x193B0C7F0](v32, -1, -1);

            (*(v13 + 8))(v37, v40);
          }

          else
          {

            (*(v13 + 8))(v18, v40);
          }
        }

        else
        {
          (*(v13 + 8))(v18, v19);
        }

        sub_192161FE0(v39, v12, type metadata accessor for ControlArchiveStorageMetadata);
        v34 = type metadata accessor for ControlArchiveStorage(0);
        *(v12 + v34[5]) = v20;
        *(v12 + v34[7]) = v14;
        *(v12 + v34[6]) = v22;
      }

      else
      {

        sub_1920B303C();
        swift_allocError();
        *v21 = 0xD00000000000001ELL;
        *(v21 + 8) = 0x800000019224C0D0;
        *(v21 + 16) = 2;
        swift_willThrow();
        sub_192161F80(v39, type metadata accessor for ControlArchiveStorageMetadata);
        (*(v13 + 8))(v10, v19);
      }
    }

    else
    {
      sub_1920B303C();
      swift_allocError();
      *v15 = (v14 << 32) | 2;
      *(v15 + 8) = 0;
      *(v15 + 16) = 0;
      swift_willThrow();
      (*(v8 + 8))(v10, v7);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v41);
}

uint64_t sub_192161844(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1038, &qword_192238DB0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192161B14();
  sub_192228B90();
  LOBYTE(v12) = 0;
  sub_1922288D0();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    type metadata accessor for ControlArchiveStorageMetadata(0);
    sub_192161B68(&qword_1EADEE020, type metadata accessor for ControlArchiveStorageMetadata, &unk_192238CF8);
    sub_1922288C0();
    v9 = type metadata accessor for ControlArchiveStorage(0);
    v12 = *(v3 + *(v9 + 20));
    HIBYTE(v11) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1028, &qword_192238DA0);
    sub_192161D74(&qword_1EADEDFE8, qword_1EADEE138, &protocol conformance descriptor for ControlTemplateType, MEMORY[0x1E69E6300]);
    sub_1922288C0();
    v12 = *(v3 + *(v9 + 24));
    HIBYTE(v11) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1030, &qword_192238DA8);
    sub_192161E10();
    sub_1922288C0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_192161B14()
{
  result = qword_1EADEE688;
  if (!qword_1EADEE688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE688);
  }

  return result;
}

uint64_t sub_192161B68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_192161BB0()
{
  result = qword_1EADED3B0;
  if (!qword_1EADED3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1030, &qword_192238DA8);
    sub_192161EC0(&qword_1EADED388, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
    sub_192047340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED3B0);
  }

  return result;
}

uint64_t sub_192161C60(uint64_t a1, uint64_t a2)
{
  sub_19202A7A8(0, &qword_1ED74B690, 0x1E69E58C0);
  v4 = type metadata accessor for ControlArchiveStorageMetadata(0);
  if ((sub_1922281D0() & 1) == 0 || (static BundleStub.== infix(_:_:)(a1, a2) & 1) == 0 || (sub_192225120() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 20);
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v7 != v10 || v6 != v9)
  {
    return 0;
  }

  v12 = *(v4 + 28);
  v13 = *(a2 + v12);
  v14 = *(a1 + v12);
  v15 = v13;
  v16 = sub_1922281D0();

  if ((v16 & 1) == 0)
  {
    return 0;
  }

  sub_1922254F0();
  return sub_1922254C0() & 1;
}

uint64_t sub_192161D74(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1028, &qword_192238DA0);
    sub_192161B68(a2, type metadata accessor for ControlTemplateType, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_192161E10()
{
  result = qword_1EADED3B8;
  if (!qword_1EADED3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1030, &qword_192238DA8);
    sub_192161EC0(&qword_1EADED390, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
    sub_1920593E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED3B8);
  }

  return result;
}

uint64_t sub_192161EC0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFAC8, &unk_192246D20);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_192161F2C()
{
  result = qword_1EADEE648;
  if (!qword_1EADEE648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE648);
  }

  return result;
}

uint64_t sub_192161F80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_192161FE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_192162048(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_19202A7A8(255, &qword_1EADEE610, 0x1E6994260);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19216209C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlArchiveStorageMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_192162124()
{
  result = qword_1EADF1050;
  if (!qword_1EADF1050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1050);
  }

  return result;
}

unint64_t sub_19216217C()
{
  result = qword_1EADF1058;
  if (!qword_1EADF1058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1058);
  }

  return result;
}

unint64_t sub_1921621D4()
{
  result = qword_1EADEE638;
  if (!qword_1EADEE638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE638);
  }

  return result;
}

unint64_t sub_19216222C()
{
  result = qword_1EADEE640;
  if (!qword_1EADEE640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE640);
  }

  return result;
}

unint64_t sub_192162284()
{
  result = qword_1EADEE678;
  if (!qword_1EADEE678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE678);
  }

  return result;
}

unint64_t sub_1921622DC()
{
  result = qword_1EADEE680;
  if (!qword_1EADEE680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE680);
  }

  return result;
}

uint64_t sub_192162330(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000192248900 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65566D6574737973 && a2 == 0xED00006E6F697372 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F72746E6F63 && a2 == 0xE700000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65 || (sub_1922289A0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (sub_1922289A0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v5 = sub_1922289A0();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_192162544(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5665766968637261 && a2 == 0xEE006E6F69737265;
  if (v4 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xE900000000000073 || (sub_1922289A0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000019224C0F0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1922289A0();

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

void sub_1921626C0(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v4 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v21];
  v5 = v21;
  if (!v4)
  {
    v14 = v5;
    v15 = sub_192224F90();

    swift_willThrow();
    sub_1921628D8();
    swift_allocError();
    *v16 = v15;
    *(v16 + 8) = 0;
    swift_willThrow();
    return;
  }

  v6 = sub_192225080();
  v8 = v7;

  v21 = 0;
  v9 = [a2 seekToOffset:0 error:&v21];
  v10 = v21;
  if (!v9)
  {
    goto LABEL_8;
  }

  v21 = v6;
  v22 = v8;
  v11 = v10;
  sub_1920367C8(v6, v8);
  sub_1920B2FE8();
  sub_192227F40();
  v12 = v2;
  sub_192039140(v21, v22);
  if (v2)
  {
LABEL_9:
    sub_1921628D8();
    swift_allocError();
    *v20 = v12;
    *(v20 + 8) = 1;
    swift_willThrow();
    goto LABEL_10;
  }

  v13 = sub_192227F50();
  v21 = 0;
  v17 = [a2 truncateAtOffset:v13 error:&v21];
  v10 = v21;
  if ((v17 & 1) == 0)
  {
LABEL_8:
    v19 = v10;
    v12 = sub_192224F90();

    swift_willThrow();
    goto LABEL_9;
  }

  v18 = v21;
LABEL_10:
  sub_192039140(v6, v8);
}

unint64_t sub_1921628D8()
{
  result = qword_1EADF1060;
  if (!qword_1EADF1060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1060);
  }

  return result;
}

uint64_t sub_192162954(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v42 - v14;
  v46 = a5;
  v44 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v42 - v18;
  v19 = sub_192228240();
  v47 = *(v19 - 8);
  v48 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v49 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v55 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v31 = &v42 - v30;
  v32 = sub_192227A80();
  v63 = sub_192228560();
  v58 = sub_192228570();
  sub_192228510();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_192227A70();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_192228270();
      result = (*v34)(v23, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v23, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v23, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v23, AssociatedTypeWitness);
      sub_192228550();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_192228270();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_192228550();
      sub_192228270();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

_BYTE *WidgetRenderScheme.init(renderingMode:backgroundViewPolicy:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t static WidgetRenderScheme.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED74A550 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = qword_1ED7494B0;
  *a1 = byte_1ED7494A8;
  *(a1 + 8) = v1;
  return result;
}

uint64_t sub_192163154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E697265646E6572 && a2 == 0xED000065646F4D67;
  if (v6 || (sub_1922289A0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000019224C190 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1922289A0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_192163240(uint64_t a1)
{
  v2 = sub_1920476EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19216327C(uint64_t a1)
{
  v2 = sub_1920476EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void WidgetRenderScheme.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 renderingMode];
  if (v4 >= 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0x10200u >> (8 * v4);
  }

  v6 = [a1 backgroundViewPolicy];

  *a2 = v5;
  *(a2 + 8) = v6;
}

uint64_t WidgetRenderScheme.hash(into:)()
{
  v1 = *(v0 + 1);
  MEMORY[0x193B0BA90](*v0);
  return MEMORY[0x193B0BA90](v1);
}

uint64_t WidgetRenderScheme.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  MEMORY[0x193B0BA90](v2);
  return sub_192228B30();
}

uint64_t sub_1921634D0()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  MEMORY[0x193B0BA90](v2);
  return sub_192228B30();
}

uint64_t sub_192163530()
{
  v1 = *(v0 + 1);
  MEMORY[0x193B0BA90](*v0);
  return MEMORY[0x193B0BA90](v1);
}

id sub_1921635D4@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 renderingMode];
  if (v4 >= 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0x10200u >> (8 * v4);
  }

  result = [v3 backgroundViewPolicy];
  *a2 = v5;
  *(a2 + 8) = result;
  return result;
}

id CHSWidgetRenderScheme.init(widgetRenderScheme:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 2)
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRenderingMode:qword_1922393A0[v1] backgroundViewPolicy:*(a1 + 1)];
  }
}