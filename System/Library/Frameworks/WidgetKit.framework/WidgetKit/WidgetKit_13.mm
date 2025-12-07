unint64_t sub_1921636B8()
{
  result = qword_1EADF1078;
  if (!qword_1EADF1078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1078);
  }

  return result;
}

id sub_19216370C(uint64_t a1)
{
  v3 = sub_192224CC0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WidgetRelevanceEntry.Attribute(0, *(a1 + 16), v7, v8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (&v22 - v11);
  (*(v13 + 16))(&v22 - v11, v1 + *(a1 + 28), v9, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = v12[1];
    if (v14)
    {
      if (v14 == 1)
      {
        return 0;
      }

      else
      {
        v18 = *v12;
        v19 = objc_allocWithZone(MEMORY[0x1E6994400]);
        v20 = sub_192227930();
        sub_192163968(v18, v14);
        v21 = [v19 initWithNamedGroupIdentifier_];

        return v21;
      }
    }

    else
    {
      return [objc_opt_self() ungrouped];
    }
  }

  else
  {
    (*(v4 + 32))(v6, v12, v3);
    v16 = sub_192224CB0();
    v17 = [objc_allocWithZone(MEMORY[0x1E6994418]) initWithRelevantContext_];

    (*(v4 + 8))(v6, v3);
    return v17;
  }
}

uint64_t sub_192163968(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

__n128 sub_19216397C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a9@<X8>, uint64_t a10)
{
  v17 = sub_192224FB0();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v29 = *a6;
  v18 = a1;
  v19 = sub_192224BA0();
  *a9 = 2;
  *(a9 + 8) = v19;
  *(a9 + 16) = v18;
  *(a9 + 24) = a2;
  *(a9 + 32) = 0;
  *(a9 + 40) = 0;
  *(a9 + 48) = a3;
  v20 = v19;

  if (a5)
  {
    v21 = a4;
  }

  else
  {
    sub_192224BC0();
    v21 = sub_192227980();
    a5 = v22;
  }

  *(a9 + 152) = v21;
  *(a9 + 160) = a5;
  *(a9 + 168) = v29;
  *(a9 + 128) = &type metadata for ControlButtonTemplateProvider;
  *(a9 + 136) = &off_1F06B1108;
  v23 = swift_allocObject();
  *(a9 + 104) = v23;
  v24 = *(a7 + 80);
  *(v23 + 80) = *(a7 + 64);
  *(v23 + 96) = v24;
  *(v23 + 112) = *(a7 + 96);
  *(v23 + 128) = *(a7 + 112);
  v25 = *(a7 + 16);
  *(v23 + 16) = *a7;
  *(v23 + 32) = v25;
  result = *(a7 + 32);
  v27 = *(a7 + 48);
  *(v23 + 48) = result;
  *(v23 + 64) = v27;
  *(a9 + 144) = 0;
  *(a9 + 56) = v18;
  *(a9 + 64) = a2;
  *(a9 + 72) = 0;
  *(a9 + 80) = 0;
  *(a9 + 88) = 2;
  *(a9 + 96) = v19;
  return result;
}

double ControlButton.init<A, B>(kind:intent:displayName:preferredSize:title:subtitle:affordances:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v30 = *a6;
  v19 = sub_192224BB0();
  v28 = v20;
  v29 = v19;
  v21 = swift_allocObject();
  v21[2] = a14;
  v21[3] = a15;
  v21[4] = a16;
  v21[5] = a17;
  v21[6] = a18;
  v21[7] = a19;
  v22 = swift_allocObject();
  v22[2] = a14;
  v22[3] = a15;
  v22[4] = a16;
  v22[5] = a17;
  v22[6] = a18;
  v22[7] = a19;
  v23 = swift_allocObject();
  v23[2] = a14;
  v23[3] = a15;
  v23[4] = a16;
  v23[5] = a17;
  v23[6] = a18;
  v23[7] = a19;
  v23[8] = a7;
  v23[9] = a8;
  v24 = swift_allocObject();
  v24[2] = a14;
  v24[3] = a15;
  v24[4] = a16;
  v24[5] = a17;
  v24[6] = a18;
  v24[7] = a19;
  v24[8] = a10;
  v24[9] = a11;

  sub_19202D088(a12, a13);

  sub_192163ED8(a1, a2, v29, v28, sub_19216673C, v21, sub_192166738, v22, v38, sub_192163E18, v23, sub_192163EC0, v24, a12, a13, a14, a17);
  v37 = v30;
  sub_19216397C(a1, a2, a3, a4, a5, &v37, v38, a9, a17);
  sub_19203831C(a12, a13);

  return result;
}

{
  v30 = *a6;
  v19 = sub_192224BB0();
  v28 = v20;
  v29 = v19;
  v21 = swift_allocObject();
  v21[2] = a14;
  v21[3] = a15;
  v21[4] = a16;
  v21[5] = a17;
  v21[6] = a18;
  v21[7] = a19;
  v22 = swift_allocObject();
  v22[2] = a14;
  v22[3] = a15;
  v22[4] = a16;
  v22[5] = a17;
  v22[6] = a18;
  v22[7] = a19;
  v23 = swift_allocObject();
  v23[2] = a14;
  v23[3] = a15;
  v23[4] = a16;
  v23[5] = a17;
  v23[6] = a18;
  v23[7] = a19;
  v23[8] = a7;
  v23[9] = a8;
  v24 = swift_allocObject();
  v24[2] = a14;
  v24[3] = a15;
  v24[4] = a16;
  v24[5] = a17;
  v24[6] = a18;
  v24[7] = a19;
  v24[8] = a10;
  v24[9] = a11;

  sub_19202D088(a12, a13);

  sub_192163ED8(a1, a2, v29, v28, sub_192164380, v21, sub_1921644A0, v22, v38, sub_192164564, v23, sub_192164618, v24, a12, a13, a14, a17);
  v37 = v30;
  sub_19216397C(a1, a2, a3, a4, a5, &v37, v38, a9, a17);
  sub_19203831C(a12, a13);

  return result;
}

uint64_t sub_192163D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v10(v9);
  return sub_192227570();
}

uint64_t sub_192163E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = MEMORY[0x1EEE9AC00](a1);
  v11(v10);
  return sub_192227570();
}

double sub_192163ED8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(&v33 + 1) = a7;
  *&v33 = a6;
  v21 = a12;
  v22 = swift_allocObject();
  v22[2] = a16;
  v22[3] = a17;
  v22[4] = a10;
  v22[5] = a11;
  if (a12)
  {
    v23 = swift_allocObject();
    v23[2] = a16;
    v23[3] = a17;
    v23[4] = a12;
    v23[5] = a13;
    v21 = &unk_1922395D8;
  }

  else
  {
    v23 = 0;
  }

  v24 = swift_allocObject();
  v24[2] = a16;
  v24[3] = a17;
  v24[4] = a14;
  v24[5] = a15;
  *&v36 = a1;
  *(&v36 + 1) = a2;
  *&v37 = a3;
  *(&v37 + 1) = a4;
  LOBYTE(v38) = 0;
  *(&v38 + 1) = a5;
  v39 = v33;
  *&v40 = a8;
  *(&v40 + 1) = &unk_1922395B8;
  *&v41 = v22;
  *(&v41 + 1) = v21;
  *&v42 = v23;
  *(&v42 + 1) = &unk_1922395C8;
  v43 = v24;
  v44[0] = a1;
  v44[1] = a2;
  v44[2] = a3;
  v44[3] = a4;
  v45 = 0;
  v46 = a5;
  v47 = v33;
  v48 = a8;
  v49 = &unk_1922395B8;
  v50 = v22;
  v51 = v21;
  v52 = v23;
  v53 = &unk_1922395C8;
  v54 = v24;
  sub_192165138(&v36, v35);
  sub_192165170(v44);
  v25 = v41;
  v26 = v42;
  v27 = v39;
  *(a9 + 64) = v40;
  *(a9 + 80) = v25;
  *(a9 + 96) = v26;
  result = *&v36;
  v29 = v37;
  v30 = v38;
  *a9 = v36;
  *(a9 + 16) = v29;
  *(a9 + 112) = v43;
  *(a9 + 32) = v30;
  *(a9 + 48) = v27;
  return result;
}

uint64_t sub_1921642EC@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192224C80();
  return ControlAction.init<A>(_:)(v9, a1, a4, x8_0);
}

id sub_1921643A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19214C644();
  sub_192224C80();
  v9 = sub_1921D85E8(v8, a1, a4);
  (*(v6 + 8))(v8, a1);
  return v9;
}

uint64_t sub_1921644C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11(v10, v12, v9);
  return sub_192227570();
}

uint64_t sub_19216457C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12(v11, v13, v10);
  return sub_192227570();
}

double ControlButton.init<A>(kind:intent:displayName:preferredSize:title:affordances:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v27 = *a6;
  v16 = sub_192224BB0();
  v24 = v17;
  v25 = v16;
  v18 = swift_allocObject();
  v18[2] = a12;
  v18[3] = a13;
  v18[4] = a14;
  v18[5] = a15;
  v19 = swift_allocObject();
  v19[2] = a12;
  v19[3] = a13;
  v19[4] = a14;
  v19[5] = a15;
  v20 = swift_allocObject();
  v20[2] = a12;
  v20[3] = a13;
  v20[4] = a14;
  v20[5] = a15;
  v20[6] = a7;
  v20[7] = a8;

  sub_19202D088(a10, a11);

  sub_192163ED8(a1, a2, v25, v24, sub_192166734, v18, sub_192166740, v19, v33, sub_1921648B4, v20, 0, 0, a10, a11, a12, a14);
  v32 = v27;
  sub_19216397C(a1, a2, a3, a4, a5, &v32, v33, a9, a14);
  sub_19203831C(a10, a11);

  return result;
}

{
  v27 = *a6;
  v16 = sub_192224BB0();
  v24 = v17;
  v25 = v16;
  v18 = swift_allocObject();
  v18[2] = a12;
  v18[3] = a13;
  v18[4] = a14;
  v18[5] = a15;
  v19 = swift_allocObject();
  v19[2] = a12;
  v19[3] = a13;
  v19[4] = a14;
  v19[5] = a15;
  v20 = swift_allocObject();
  v20[2] = a12;
  v20[3] = a13;
  v20[4] = a14;
  v20[5] = a15;
  v20[6] = a7;
  v20[7] = a8;

  sub_19202D088(a10, a11);

  sub_192163ED8(a1, a2, v25, v24, sub_192164B18, v18, sub_192164C30, v19, v33, sub_192164CEC, v20, 0, 0, a10, a11, a12, a14);
  v32 = v27;
  sub_19216397C(a1, a2, a3, a4, a5, &v32, v33, a9, a14);
  sub_19203831C(a10, a11);

  return result;
}

uint64_t sub_192164824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x1EEE9AC00](a1);
  v9(v8);
  return sub_192227570();
}

uint64_t sub_192164A84@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t *x8_0@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192224C80();
  return ControlAction.init<A>(_:)(v8, a1, a3, x8_0);
}

id sub_192164B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19214C644();
  sub_192224C80();
  v8 = sub_1921D85E8(v7, a1, a3);
  (*(v5 + 8))(v7, a1);
  return v8;
}

uint64_t sub_192164C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10(v9, v11, v8);
  return sub_192227570();
}

uint64_t _s9WidgetKit13ControlButtonV4bodyQrvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 152);
  v6 = *(v1 + 160);
  v8 = *(v1 + 168);
  sub_192081C60(v1 + 56, v5);
  swift_storeEnumTagMultiPayload();
  sub_19207ED1C(v5, a1);
  v9 = type metadata accessor for WidgetDescriptor(0);
  v10 = v9[7];

  *(a1 + v10) = &unk_1F06A8270;
  *(a1 + v9[39]) = v8;
  v11 = (a1 + v9[5]);

  *v11 = v7;
  v11[1] = v6;
  v12 = (a1 + v9[6]);

  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + v9[40]);

  *v13 = 0;
  v13[1] = 0;
  *(a1 + v9[36]) = 0;
  *(a1 + v9[29]) = 0;
  return result;
}

double ControlButton.init<A>(kind:intent:content:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v19 = swift_allocObject();
  v19[2] = a6;
  v19[3] = a7;
  v19[4] = a8;
  v19[5] = a10;
  v21 = 0;
  return ControlButton.init<A, B>(kind:intent:displayName:preferredSize:title:subtitle:affordances:)(a1, a2, a3, 0, 0, &v21, a4, a5, a9, nullsub_1, v19, 0, 0, a6, a7, MEMORY[0x1E6981E70], a8, a10, MEMORY[0x1E6981E60]);
}

uint64_t ControlButton.disabled(_:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  (*(*(a2 - 8) + 16))(a3, v4, a2);
  sub_1920B2B7C(v4 + 104, &v26);
  if (BYTE7(v28) == 1)
  {
    return sub_1920B2BD8(&v26);
  }

  sub_19209CBAC(&v26, v34);
  sub_192033A64(v34, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADF0C38, &qword_1922371C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  v19[0] = v26;
  v19[1] = v27;
  v8 = a1 & 1;
  v16 = v26;
  v17 = v27;
  v18[0] = v8;
  *&v18[33] = v30;
  *&v18[49] = v31;
  *&v18[65] = *v32;
  *&v18[80] = *&v32[15];
  *&v18[1] = v28;
  *&v18[17] = v29;
  v14[3] = &type metadata for ControlButtonTemplateProvider;
  v14[4] = &off_1F06B1108;
  v9 = swift_allocObject();
  v14[0] = v9;
  v10 = *&v18[48];
  *(v9 + 80) = *&v18[32];
  *(v9 + 96) = v10;
  *(v9 + 112) = *&v18[64];
  *(v9 + 128) = *&v18[80];
  v11 = v17;
  *(v9 + 16) = v16;
  *(v9 + 32) = v11;
  v12 = *&v18[16];
  *(v9 + 48) = *v18;
  *(v9 + 64) = v12;
  v20 = v8;
  v23 = v30;
  v24 = v31;
  *v25 = *v32;
  *&v25[15] = *&v32[15];
  v21 = v28;
  v22 = v29;
  sub_192165138(&v16, v13);
  sub_192165170(v19);
  __swift_destroy_boxed_opaque_existential_1(v34);
  v15 = 0;
  return sub_192147370(v14, a3 + 104);
}

uint64_t sub_1921651E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy169_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_19216525C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 169))
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

uint64_t sub_1921652A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 169) = 1;
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

    *(result + 169) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So8INIntentCSb7SwiftUI7AnyViewVs5Error_pIegHgyozo_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_19216536C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1921653B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_192165420(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  *(v6 + 16) = a3;
  *(v6 + 88) = a2;
  *(v6 + 40) = *(a5 - 8);
  v10 = swift_task_alloc();
  *(v6 + 48) = v10;
  *(v6 + 56) = sub_192227CC0();
  *(v6 + 64) = sub_192227CB0();
  v11 = swift_task_alloc();
  *(v6 + 72) = v11;
  *v11 = v6;
  v11[1] = sub_19216555C;

  return sub_19213431C(v10, a1, a5, a6);
}

uint64_t sub_19216555C()
{
  *(*v1 + 80) = v0;

  v3 = sub_192227C70();
  if (v0)
  {
    v4 = sub_19214C82C;
  }

  else
  {
    v4 = sub_192166744;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1921656B8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  *(v6 + 16) = a3;
  *(v6 + 88) = a2;
  *(v6 + 40) = *(a5 - 8);
  v10 = swift_task_alloc();
  *(v6 + 48) = v10;
  *(v6 + 56) = sub_192227CC0();
  *(v6 + 64) = sub_192227CB0();
  v11 = swift_task_alloc();
  *(v6 + 72) = v11;
  *v11 = v6;
  v11[1] = sub_1921657F4;

  return sub_19213431C(v10, a1, a5, a6);
}

uint64_t sub_1921657F4()
{
  *(*v1 + 80) = v0;

  v3 = sub_192227C70();
  if (v0)
  {
    v4 = sub_192149CCC;
  }

  else
  {
    v4 = sub_192165950;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_192165950()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *(v0 + 88);

  v6 = v4(v1, v5);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_192165A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a4;
  v6[5] = a5;
  v6[2] = a1;
  v6[3] = a3;
  v6[6] = *(a5 - 8);
  v10 = swift_task_alloc();
  v6[7] = v10;
  v6[8] = sub_192227CC0();
  v6[9] = sub_192227CB0();
  v11 = swift_task_alloc();
  v6[10] = v11;
  *v11 = v6;
  v11[1] = sub_192165B44;

  return sub_19213431C(v10, a2, a5, a6);
}

uint64_t sub_192165B44()
{
  *(*v1 + 88) = v0;

  v3 = sub_192227C70();
  if (v0)
  {
    v4 = sub_192165DB0;
  }

  else
  {
    v4 = sub_192165CA0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_192165CA0()
{
  v13 = v0;
  v1 = v0[3];

  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  if (v1)
  {
    v5 = v0[2];
    (v0[3])(v11, v0[7]);
    (*(v3 + 8))(v2, v4);
    v6 = v11[3];
    *(v5 + 32) = v11[2];
    *(v5 + 48) = v6;
    *(v5 + 64) = v12;
    v7 = v11[1];
    *v5 = v11[0];
    *(v5 + 16) = v7;
  }

  else
  {
    v8 = v0[2];
    (*(v3 + 8))(v0[7], v0[5]);
    *v8 = 1;
    *(v8 + 8) = 0u;
    *(v8 + 24) = 0u;
    *(v8 + 40) = 0u;
    *(v8 + 56) = 0u;
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_192165DB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_192165E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[35] = a3;
  v4[36] = v3;
  v4[33] = a1;
  v4[34] = a2;
  sub_192227CC0();
  v4[37] = sub_192227CB0();
  v6 = sub_192227C70();
  v4[38] = v6;
  v4[39] = v5;

  return MEMORY[0x1EEE6DFA0](sub_192165EBC, v6, v5);
}

uint64_t sub_192165EBC()
{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 264);
  v4 = *v1;
  v5 = *(v1 + 16);
  v6 = *(v1 + 48);
  *(v0 + 48) = *(v1 + 32);
  *(v0 + 64) = v6;
  *(v0 + 16) = v4;
  *(v0 + 32) = v5;
  v7 = *(v1 + 64);
  v8 = *(v1 + 96);
  v9 = *(v1 + 112);
  *(v0 + 96) = *(v1 + 80);
  *(v0 + 112) = v8;
  *(v0 + 80) = v7;
  *(v0 + 128) = v9;
  *(v0 + 136) = v2;
  v3[3] = type metadata accessor for ControlTemplateButton(0);
  v3[4] = sub_192166448(&qword_1EADEE598, type metadata accessor for ControlTemplateButton, &protocol conformance descriptor for ControlTemplateButton);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3);
  sub_192165138(v1, v0 + 144);
  v11 = v2;
  v12 = swift_task_alloc();
  *(v0 + 320) = v12;
  *v12 = v0;
  v12[1] = sub_192165FF4;
  v13 = *(v0 + 272);

  return sub_19218CB5C(boxed_opaque_existential_1, v13);
}

uint64_t sub_192165FF4()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 312);
  v4 = *(v2 + 304);
  if (v0)
  {
    v5 = sub_1921661A0;
  }

  else
  {
    v5 = sub_192166130;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_192166130()
{
  sub_192166490(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1921661A0()
{
  v1 = *(v0 + 264);
  sub_192166490(v0 + 16);

  __swift_deallocate_boxed_opaque_existential_1(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_192166244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 80);
  *(v4 + 80) = *(v3 + 64);
  *(v4 + 96) = v8;
  *(v4 + 112) = *(v3 + 96);
  *(v4 + 128) = *(v3 + 112);
  v9 = *(v3 + 16);
  *(v4 + 16) = *v3;
  *(v4 + 32) = v9;
  v10 = *(v3 + 48);
  *(v4 + 48) = *(v3 + 32);
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 136) = v11;
  *v11 = v4;
  v11[1] = sub_192166320;

  return sub_192165E20(a1, a2, a3);
}

uint64_t sub_192166320()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_192166448(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1921664E4(uint64_t a1, char a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1920EF9CC;

  return sub_192165420(a1, a2, v9, v8, v6, v7);
}

uint64_t sub_1921665A8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1920A59A8;

  return sub_192165A0C(a1, a2, v9, v8, v6, v7);
}

uint64_t sub_192166670(uint64_t a1, char a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1920EF2F4;

  return sub_1921656B8(a1, a2, v9, v8, v6, v7);
}

uint64_t WidgetPersonality.extensionBundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___CHKWidgetPersonality_extensionBundleIdentifier);

  return v1;
}

uint64_t WidgetPersonality.kind.getter()
{
  v1 = *(v0 + OBJC_IVAR___CHKWidgetPersonality_kind);

  return v1;
}

id WidgetPersonality.__allocating_init(extensionBundleIdentifier:kind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___CHKWidgetPersonality_extensionBundleIdentifier];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR___CHKWidgetPersonality_kind];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id WidgetPersonality.init(extensionBundleIdentifier:kind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR___CHKWidgetPersonality_extensionBundleIdentifier];
  *v5 = a1;
  *(v5 + 1) = a2;
  v6 = &v4[OBJC_IVAR___CHKWidgetPersonality_kind];
  *v6 = a3;
  *(v6 + 1) = a4;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for WidgetPersonality();
  return objc_msgSendSuper2(&v8, sel_init);
}

id WidgetPersonality.__allocating_init<A>(_:)(void *a1, uint64_t a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_1921678BC(a1);
  swift_unknownObjectRelease();
  return v5;
}

id WidgetPersonality.init<A>(_:)(void *a1, uint64_t a2)
{
  v2 = sub_1921678BC(a1);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_192166958(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___CHKWidgetPersonality_extensionBundleIdentifier);
  v4 = *(v1 + OBJC_IVAR___CHKWidgetPersonality_extensionBundleIdentifier + 8);
  v5 = [a1 extensionBundleIdentifier];
  v6 = sub_192227960();
  v8 = v7;

  if (v3 == v6 && v4 == v8)
  {
  }

  else
  {
    v10 = sub_1922289A0();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      return v11 & 1;
    }
  }

  v12 = v1 + OBJC_IVAR___CHKWidgetPersonality_kind;
  v13 = *(v1 + OBJC_IVAR___CHKWidgetPersonality_kind);
  v14 = *(v12 + 8);
  v15 = [a1 kind];
  v16 = sub_192227960();
  v18 = v17;

  if (v13 == v16 && v14 == v18)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1922289A0();
  }

  return v11 & 1;
}

uint64_t sub_192166B28()
{
  sub_192228B40(v1);
  sub_1922279B0();
  sub_1922279B0();
  return sub_192228B20();
}

id sub_192166B8C(uint64_t a1)
{
  sub_192117C0C(a1, v5);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF1098, &qword_1922395F0);
    if (swift_dynamicCast())
    {
      v2 = [v4 matchesPersonality_];
      swift_unknownObjectRelease();
      return v2;
    }
  }

  else
  {
    sub_192030F04(v5);
  }

  return 0;
}

id WidgetPersonality.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  sub_19202A7A8(0, &qword_1ED74BC20, 0x1E696AEC0);
  v5 = sub_192228140();
  if (v5)
  {
    v6 = v5;
    v7 = sub_192228140();
    if (v7)
    {
      v8 = v7;
      v9 = sub_192227960();
      v10 = &v4[OBJC_IVAR___CHKWidgetPersonality_extensionBundleIdentifier];
      *v10 = v9;
      v10[1] = v11;
      v12 = sub_192227960();
      v14 = v13;

      v15 = &v4[OBJC_IVAR___CHKWidgetPersonality_kind];
      *v15 = v12;
      v15[1] = v14;
      v18.receiver = v4;
      v18.super_class = v2;
      v16 = objc_msgSendSuper2(&v18, sel_init);

      return v16;
    }
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id WidgetPersonality.init(coder:)(void *a1)
{
  v2 = v1;
  sub_19202A7A8(0, &qword_1ED74BC20, 0x1E696AEC0);
  v4 = sub_192228140();
  if (v4)
  {
    v5 = v4;
    v6 = sub_192228140();
    if (v6)
    {
      v7 = v6;
      v8 = sub_192227960();
      v9 = &v2[OBJC_IVAR___CHKWidgetPersonality_extensionBundleIdentifier];
      *v9 = v8;
      v9[1] = v10;
      v11 = sub_192227960();
      v13 = v12;

      v14 = &v2[OBJC_IVAR___CHKWidgetPersonality_kind];
      *v14 = v11;
      v14[1] = v13;
      v17.receiver = v2;
      v17.super_class = type metadata accessor for WidgetPersonality();
      v15 = objc_msgSendSuper2(&v17, sel_init);

      return v15;
    }
  }

  type metadata accessor for WidgetPersonality();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_192166F4C(void *a1)
{
  v2 = sub_192227930();
  v3 = sub_192227930();
  [a1 encodeObject:v2 forKey:v3];

  v4 = sub_192227930();
  v5 = sub_192227930();
  [a1 encodeObject:v4 forKey:v5];
}

uint64_t sub_19216716C()
{
  MEMORY[0x193B0A990](*(v0 + OBJC_IVAR___CHKWidgetPersonality_extensionBundleIdentifier), *(v0 + OBJC_IVAR___CHKWidgetPersonality_extensionBundleIdentifier + 8));
  MEMORY[0x193B0A990](58, 0xE100000000000000);
  MEMORY[0x193B0A990](*(v0 + OBJC_IVAR___CHKWidgetPersonality_kind), *(v0 + OBJC_IVAR___CHKWidgetPersonality_kind + 8));
  MEMORY[0x193B0A990](93, 0xE100000000000000);
  return 91;
}

id WidgetPersonality.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_192167320(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_192227930();

  return v3;
}

uint64_t WidgetIdentifiable.kind.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9WidgetKit18WidgetIdentifiable_kind);

  return v1;
}

id WidgetIdentifiable.__allocating_init(extensionIdentity:kind:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC9WidgetKit18WidgetIdentifiable_extensionIdentity] = a1;
  v8 = &v7[OBJC_IVAR____TtC9WidgetKit18WidgetIdentifiable_kind];
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id WidgetIdentifiable.init(extensionIdentity:kind:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC9WidgetKit18WidgetIdentifiable_extensionIdentity] = a1;
  v4 = &v3[OBJC_IVAR____TtC9WidgetKit18WidgetIdentifiable_kind];
  *v4 = a2;
  *(v4 + 1) = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for WidgetIdentifiable();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_192167570()
{
  v1 = v0;
  v2 = [*(v0 + OBJC_IVAR____TtC9WidgetKit18WidgetIdentifiable_extensionIdentity) description];
  v3 = sub_192227960();
  v5 = v4;

  MEMORY[0x193B0A990](v3, v5);

  MEMORY[0x193B0A990](58, 0xE100000000000000);
  MEMORY[0x193B0A990](*(v1 + OBJC_IVAR____TtC9WidgetKit18WidgetIdentifiable_kind), *(v1 + OBJC_IVAR____TtC9WidgetKit18WidgetIdentifiable_kind + 8));
  MEMORY[0x193B0A990](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_192167634(void *a1)
{
  v2 = v1;
  sub_19202A7A8(0, &qword_1ED74B690, 0x1E69E58C0);
  v4 = [a1 extensionIdentity];
  v5 = sub_1922281D0();

  if (v5)
  {
    v6 = *(v2 + OBJC_IVAR____TtC9WidgetKit18WidgetIdentifiable_kind);
    v7 = *(v2 + OBJC_IVAR____TtC9WidgetKit18WidgetIdentifiable_kind + 8);
    v8 = [a1 kind];
    v9 = sub_192227960();
    v11 = v10;

    if (v6 == v9 && v7 == v11)
    {
      v13 = 1;
    }

    else
    {
      v13 = sub_1922289A0();
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_19216775C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  LOBYTE(a4) = a4(a3);
  swift_unknownObjectRelease();

  return a4 & 1;
}

id sub_192167834(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1921678BC(void *a1)
{
  v3 = [a1 extensionBundleIdentifier];
  v4 = sub_192227960();
  v6 = v5;

  v7 = &v1[OBJC_IVAR___CHKWidgetPersonality_extensionBundleIdentifier];
  *v7 = v4;
  v7[1] = v6;
  v8 = [a1 kind];
  v9 = sub_192227960();
  v11 = v10;

  v12 = &v1[OBJC_IVAR___CHKWidgetPersonality_kind];
  *v12 = v9;
  v12[1] = v11;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for WidgetPersonality();
  return objc_msgSendSuper2(&v14, sel_init);
}

char *sub_192167B04(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_1920C33EC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v7 + 32], v6 + 32, v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_192167BF0(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_1920C3388(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v7 + 32], v6 + 32, v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_192167CDC(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1920C3400(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD0, &qword_1922349A0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t Preview.init<A>(_:as:widget:timeline:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = swift_allocObject();
  v12[2] = a8;
  v12[3] = a9;
  v12[4] = a4;
  v12[5] = a5;
  sub_192121388();
  return sub_192225740();
}

uint64_t sub_192167EC4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *(a1 + 24) = *(v1 + 16);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return v2();
}

uint64_t Preview.init<A, B>(_:as:widget:timelineProvider:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = swift_allocObject();
  v16[2] = a8;
  v16[3] = a9;
  v16[4] = a10;
  v16[5] = a11;
  v16[6] = a4;
  v16[7] = a5;
  v17 = swift_allocObject();
  v17[2] = a8;
  v17[3] = a9;
  v17[4] = a10;
  v17[5] = a11;
  v17[6] = a6;
  v17[7] = a7;
  sub_192121404();
  return sub_192225740();
}

uint64_t sub_19216801C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[6];
  a1[3] = v1[2];
  a1[4] = v2;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return v3();
}

uint64_t sub_19216805C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  a1[3] = *(v1 + 24);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return v2();
}

uint64_t Preview.init<A, B>(_:as:using:widget:timelineProvider:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = swift_allocObject();
  v16[2] = a9;
  v16[3] = a10;
  v16[4] = a11;
  v16[5] = a12;
  v16[6] = a5;
  v16[7] = a6;
  v17 = swift_allocObject();
  v17[2] = a9;
  v17[3] = a10;
  v17[4] = a11;
  v17[5] = a12;
  v17[6] = a7;
  v17[7] = a8;
  sub_192121404();
  return sub_192225740();
}

{
  v15 = swift_allocObject();
  v15[2] = a9;
  v15[3] = a10;
  v15[4] = a11;
  v15[5] = a12;
  v15[6] = a5;
  v15[7] = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23[3] = AssociatedTypeWitness;
  v23[4] = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  v18 = *(AssociatedTypeWitness - 8);
  (*(v18 + 16))(boxed_opaque_existential_1, a4, AssociatedTypeWitness);
  v19 = swift_allocObject();
  v19[2] = a9;
  v19[3] = a10;
  v19[4] = a11;
  v19[5] = a12;
  v19[6] = a7;
  v19[7] = a8;
  v23[5] = sub_1921697D4;
  v23[6] = v19;
  sub_192121404();
  sub_192225740();
  return (*(v18 + 8))(a4, AssociatedTypeWitness);
}

uint64_t sub_192168360@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  a1[3] = *(v1 + 16);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return v2();
}

uint64_t static PreviewTimelineBuilder.buildExpression<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF4B0, &unk_19222AFB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_19222B480;
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v6 + 32));
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  return v6;
}

void static PreviewTimelineBuilder.buildPartialBlock(accumulated:next:)(uint64_t a1, uint64_t a2)
{

  sub_192167CDC(v2);
}

void *static PreviewTimelineBuilder.buildArray(_:)(void *result)
{
  v1 = result[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = MEMORY[0x1E69E7CC0];
  for (i = result + 4; ; ++i)
  {
    v4 = *i;
    v5 = *(*i + 16);
    v6 = v2[2];
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= v2[3] >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v8 = v6 + v5;
      }

      else
      {
        v8 = v6;
      }

      result = sub_1920C3400(result, v8, 1, v2);
      v2 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((v2[3] >> 1) - v2[2] < v5)
        {
          goto LABEL_22;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD0, &qword_1922349A0);
        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = v2[2];
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_23;
          }

          v2[2] = v11;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    if (!--v1)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t Preview.init<A, B>(_:widget:relevanceEntries:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = swift_allocObject();
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a9;
  v16[5] = a10;
  v16[6] = a3;
  v16[7] = a4;
  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = a9;
  v17[5] = a10;
  v17[6] = a5;
  v17[7] = a6;
  sub_19212181C();
  return sub_192225740();
}

uint64_t sub_1921686D8(int *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v6 = (a1 + *a1);
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1921687C4;

  return v6();
}

uint64_t sub_1921687C4(uint64_t a1)
{
  v5 = *v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF04D0, &qword_192234938);
  v2 = sub_192228590();

  v3 = *(v5 + 8);

  return v3(v2);
}

uint64_t Preview.init<A, B>(_:widget:relevanceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = swift_allocObject();
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a9;
  v16[5] = a10;
  v16[6] = a3;
  v16[7] = a4;
  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = a9;
  v17[5] = a10;
  v17[6] = a5;
  v17[7] = a6;
  v18 = swift_allocObject();
  v18[2] = a7;
  v18[3] = a8;
  v18[4] = a9;
  v18[5] = a10;
  v18[6] = a5;
  v18[7] = a6;
  sub_192121914();

  return sub_192225740();
}

uint64_t sub_192168A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a4;
  v6[7] = a6;
  v6[4] = a2;
  v6[5] = a3;
  v6[3] = a1;
  v6[8] = *(a4 - 8);
  v6[9] = swift_task_alloc();
  sub_192227CC0();
  v6[10] = sub_192227CB0();
  v8 = sub_192227C70();
  v6[11] = v8;
  v6[12] = v7;

  return MEMORY[0x1EEE6DFA0](sub_192168B38, v8, v7);
}

uint64_t sub_192168B38()
{
  v6 = *(v0 + 56);
  (*(v0 + 32))();
  v5 = (*(v6 + 40) + **(v6 + 40));
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_192168C60;
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  return v5(v0 + 16, v2, v3);
}

uint64_t sub_192168C60()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 48);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 96);
  v6 = *(v1 + 88);

  return MEMORY[0x1EEE6DFA0](sub_192168DE4, v6, v5);
}

uint64_t sub_192168DE4()
{
  v1 = *(v0 + 24);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for WidgetRelevance(0, AssociatedTypeWitness, v3, v4);
  sub_192219C94(v5, v1);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t Preview.init<A, B>(_:widget:relevanceProvider:relevance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = swift_allocObject();
  v17[2] = a9;
  v17[3] = a10;
  v17[4] = a11;
  v17[5] = a12;
  v17[6] = a3;
  v17[7] = a4;
  v18 = swift_allocObject();
  v18[2] = a9;
  v18[3] = a10;
  v18[4] = a11;
  v18[5] = a12;
  v18[6] = a5;
  v18[7] = a6;
  v19 = swift_allocObject();
  v19[2] = a9;
  v19[3] = a10;
  v19[4] = a11;
  v19[5] = a12;
  v19[6] = a7;
  v19[7] = a8;
  sub_192121914();
  return sub_192225740();
}

uint64_t sub_192168FE8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a4;
  v6[5] = a6;
  v6[3] = a1;
  v6[6] = sub_192227CC0();
  v6[7] = sub_192227CB0();
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  v6[8] = v8;
  *v8 = v6;
  v8[1] = sub_192169108;

  return v10(v6 + 2);
}

uint64_t sub_192169108()
{

  v1 = sub_192227C70();

  return MEMORY[0x1EEE6DFA0](sub_192169244, v1, v0);
}

uint64_t sub_192169244()
{
  v1 = *(v0 + 24);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for WidgetRelevance(0, AssociatedTypeWitness, v3, v4);
  sub_192219C94(v5, v1);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t static PreviewRelevanceEntryBuilder.buildExpression(_:)(uint64_t a1, uint64_t a2)
{
  sub_192169490(a2, a2);
  v4 = *(a2 - 8);
  swift_allocObject();
  v5 = sub_192227B90();
  (*(v4 + 16))(v6, a1, a2);
  sub_192227C40();
  return v5;
}

uint64_t static PreviewRelevanceEntryBuilder.buildArray(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_192227C40();
  sub_192227C40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_192227AE0();
}

uint64_t sub_192169490(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD8, &qword_19222CAF0);
  }

  else
  {

    return MEMORY[0x1EEE6AEE8](0, a2);
  }
}

uint64_t sub_192169508()
{
  v2 = v0[2];
  v4 = v0[6];
  v3 = v0[7];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1920D7114;

  return sub_1921686D8(v4, v3, v2);
}

uint64_t sub_1921695DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v8 = v1[6];
  v7 = v1[7];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1920B3B44;

  return sub_192168A48(a1, v8, v7, v4, v5, v6);
}

uint64_t sub_1921696B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v8 = v1[6];
  v7 = v1[7];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1920A59A8;

  return sub_192168FE8(a1, v8, v7, v4, v5, v6);
}

double sub_192169784@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

uint64_t static WidgetLocalizations.< infix(_:_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  v0 = sub_192225510();
  v2 = v1;
  if (v0 == sub_192225510() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1922289A0();
  }

  return v5 & 1;
}

uint64_t WidgetLocalizations.__allocating_init(identifier:availableLocalizations:supportsMixedLocalizations:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = swift_allocObject();
  sub_192225500();
  *(v6 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_availableLocalizations) = a3;
  *(v6 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_supportsMixedLocalizations) = a4;
  return v6;
}

uint64_t WidgetLocalizations.init(identifier:availableLocalizations:supportsMixedLocalizations:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  sub_192225500();
  (*(v8 + 32))(v4 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_identifier, v10, v7);
  *(v4 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_availableLocalizations) = a3;
  *(v4 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_supportsMixedLocalizations) = a4;
  return v4;
}

uint64_t sub_192169A50(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000016;
  v3 = *a1;
  v4 = 0x8000000192248590;
  if (v3 == 1)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0xD00000000000001ALL;
  }

  if (v3 == 1)
  {
    v6 = 0x8000000192248590;
  }

  else
  {
    v6 = 0x80000001922485B0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696669746E656469;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEA00000000007265;
  }

  if (*a2 != 1)
  {
    v2 = 0xD00000000000001ALL;
    v4 = 0x80000001922485B0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x696669746E656469;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA00000000007265;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1922289A0();
  }

  return v11 & 1;
}

uint64_t sub_192169B30()
{
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_192169BDC(uint64_t a1)
{
  sub_1922279B0();
}

uint64_t sub_192169C74()
{
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

unint64_t sub_192169D1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_19216AD20(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_192169D4C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0xD000000000000016;
  v5 = 0x8000000192248590;
  if (v2 != 1)
  {
    v4 = 0xD00000000000001ALL;
    v5 = 0x80000001922485B0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x696669746E656469;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_192169DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19216AD20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_192169DDC(uint64_t a1)
{
  v2 = sub_192046078();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192169E18(uint64_t a1)
{
  v2 = sub_192046078();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_192169E54(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 16))(&v13 - v6, v1 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_identifier, v3, v4);
  v7 = sub_192228A20();
  v8 = sub_192227930();
  [a1 encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();

  v9 = sub_192227B60();
  v10 = sub_192227930();
  [a1 encodeObject:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_supportsMixedLocalizations);
  v12 = sub_192227930();
  [a1 encodeBool:v11 forKey:v12];
}

uint64_t WidgetLocalizations.__allocating_init(coder:)(void *a1)
{
  swift_allocObject();
  WidgetLocalizations.init(coder:)(a1);
  return 0;
}

uint64_t WidgetLocalizations.init(coder:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF1208, &qword_192239708);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  v9 = sub_192227930();
  v10 = [a1 decodeObjectForKey_];

  if (v10)
  {
    sub_1922282B0();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25 = v23;
  v26 = v24;
  if (!*(&v24 + 1))
  {

    sub_192033970(&v25, &unk_1EADEF330, &unk_19222CD40);
    (*(v6 + 56))(v4, 1, 1, v5);
    goto LABEL_8;
  }

  v11 = swift_dynamicCast();
  (*(v6 + 56))(v4, v11 ^ 1u, 1, v5);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

LABEL_8:
    v12 = &unk_1EADF1208;
    v13 = &qword_192239708;
    v14 = v4;
LABEL_9:
    sub_192033970(v14, v12, v13);
    goto LABEL_10;
  }

  (*(v6 + 32))(v8, v4, v5);
  v16 = sub_192227930();
  v17 = [a1 decodeObjectForKey_];

  if (v17)
  {
    sub_1922282B0();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25 = v23;
  v26 = v24;
  if (!*(&v24 + 1))
  {
    (*(v6 + 8))(v8, v5);

LABEL_25:
    v12 = &unk_1EADEF330;
    v13 = &unk_19222CD40;
    v14 = &v25;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v6 + 8))(v8, v5);

    goto LABEL_10;
  }

  v18 = sub_192227930();
  v19 = [a1 decodeObjectForKey_];

  if (v19)
  {
    sub_1922282B0();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25 = v23;
  v26 = v24;
  if (!*(&v24 + 1))
  {
    (*(v6 + 8))(v8, v5);

    goto LABEL_25;
  }

  if (swift_dynamicCast())
  {
    sub_192225510();
    type metadata accessor for WidgetLocalizations(0);
    v20 = swift_allocObject();
    sub_192225500();

    v21 = *(v6 + 8);
    v21(v8, v5);
    swift_setDeallocating();
    v21((v20 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_identifier), v5);

    swift_deallocClassInstance();
  }

  else
  {
    (*(v6 + 8))(v8, v5);
  }

LABEL_10:
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_19216A63C()
{
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000018, 0x800000019224C2C0);
  v1 = MEMORY[0x193B0AB30](*(v0 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_availableLocalizations), MEMORY[0x1E69E6158]);
  MEMORY[0x193B0A990](v1);

  MEMORY[0x193B0A990](0x69746E656469202CLL, 0xEE00203A72656966);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  sub_1920460CC(&unk_1EADED340, MEMORY[0x1E69940E0]);
  v2 = sub_192228910();
  MEMORY[0x193B0A990](v2);

  MEMORY[0x193B0A990](0xD00000000000001ELL, 0x800000019224C2E0);
  if (*(v0 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_supportsMixedLocalizations))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_supportsMixedLocalizations))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x193B0A990](v3, v4);

  return 0;
}

uint64_t WidgetLocalizations.deinit()
{
  v1 = OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_identifier;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t WidgetLocalizations.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_identifier;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t WidgetLocalizations.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  WidgetLocalizations.init(from:)(a1);
  return v2;
}

uint64_t sub_19216A97C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  v0 = sub_192225510();
  v2 = v1;
  if (v0 == sub_192225510() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1922289A0();
  }

  return v5 & 1;
}

uint64_t _s9WidgetKit0A13LocalizationsC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  sub_1920460CC(&qword_1EADED350, MEMORY[0x1E69940D0]);
  sub_192227B00();
  sub_192227B00();
  if (v8 == v7)
  {
  }

  else
  {
    v4 = sub_1922289A0();

    if ((v4 & 1) == 0)
    {
LABEL_6:
      v5 = 0;
      return v5 & 1;
    }
  }

  if ((sub_1920E0BF0(*(a1 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_availableLocalizations), *(a2 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_availableLocalizations)) & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = *(a1 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_supportsMixedLocalizations) ^ *(a2 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_supportsMixedLocalizations) ^ 1;
  return v5 & 1;
}

unint64_t sub_19216AB80()
{
  result = qword_1EADF1230;
  if (!qword_1EADF1230)
  {
    type metadata accessor for WidgetLocalizations(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1230);
  }

  return result;
}

unint64_t sub_19216ACCC()
{
  result = qword_1EADF1238;
  if (!qword_1EADF1238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1238);
  }

  return result;
}

unint64_t sub_19216AD20(uint64_t a1, uint64_t a2)
{
  v2 = sub_192228700();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t static WidgetIsSnapshottingKey.defaultValue.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EADF1240 = a1;
  return result;
}

uint64_t (*EnvironmentValues.widgetIsSnapshotting.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_19203F2E0();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_19216AEF8;
}

uint64_t sub_19216AF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19216B574();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void *EnvironmentValues.widgetReferenceDate.getter()
{
  sub_1920416B0();

  return sub_1922261E0();
}

uint64_t EnvironmentValues.widgetReferenceDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_192041788(a1, &v5 - v3);
  sub_1920416B0();
  sub_1922261F0();
  return sub_1920418D4(a1);
}

void (*EnvironmentValues.widgetReferenceDate.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[3] = v7;
  v5[4] = sub_1920416B0();
  sub_1922261E0();
  return sub_19216B1B0;
}

void sub_19216B1B0(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_192041788((*a1)[3], (*a1)[2]);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_192041788(v3[2], v3[1]);
    sub_1922261F0();
    sub_1920418D4(v6);
  }

  else
  {
    sub_1922261F0();
  }

  sub_1920418D4(v4);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

uint64_t static WidgetAnimationsPausedKey.defaultValue.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EADF1248 = a1;
  return result;
}

uint64_t sub_19216B384(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_1922261E0();
  return v3;
}

void *sub_19216B3CC@<X0>(_BYTE *a1@<X8>)
{
  sub_19203F23C();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t (*EnvironmentValues.widgetAnimationsPaused.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_19203F23C();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_19216B538;
}

unint64_t sub_19216B574()
{
  result = qword_1EADF1250;
  if (!qword_1EADF1250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEED10, &unk_19222B0F0);
    sub_19216B5F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1250);
  }

  return result;
}

unint64_t sub_19216B5F8()
{
  result = qword_1EADEDEE8;
  if (!qword_1EADEDEE8)
  {
    sub_192225150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDEE8);
  }

  return result;
}

uint64_t sub_19216B650(unsigned __int8 a1)
{
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_19216B76C(uint64_t a1, unsigned __int8 a2)
{
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t JindoMetricsDefinition.init(obstructionSize:compactLeadingMetrics:compactTrailingMetrics:compactMinimalMetrics:expandedMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  *a5 = a6;
  a5[1] = a7;
  v12 = type metadata accessor for JindoMetricsDefinition(0);
  sub_1920F8D30(a1, a5 + v12[5]);
  sub_1920F8D30(a2, a5 + v12[6]);
  sub_1920F8D30(a3, a5 + v12[7]);
  v13 = a5 + v12[8];

  return sub_1920F8D30(a4, v13);
}

uint64_t type metadata accessor for JindoMetricsDefinition(uint64_t a1)
{
  result = qword_1ED74B988;
  if (!qword_1ED74B988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t JindoMetricsDefinition.description.getter()
{
  sub_192228400();
  MEMORY[0x193B0A990](0xD00000000000002ALL, 0x800000019224C340);
  type metadata accessor for CGSize(0);
  sub_1922285A0();
  MEMORY[0x193B0A990](0xD000000000000011, 0x800000019224C370);
  type metadata accessor for JindoMetricsDefinition(0);
  v0 = MetricsRequest.description.getter();
  MEMORY[0x193B0A990](v0);

  MEMORY[0x193B0A990](0xD000000000000012, 0x800000019224C390);
  v1 = MetricsRequest.description.getter();
  MEMORY[0x193B0A990](v1);

  MEMORY[0x193B0A990](0xD000000000000012, 0x800000019224C3B0);
  v2 = MetricsRequest.description.getter();
  MEMORY[0x193B0A990](v2);

  MEMORY[0x193B0A990](0x646E61707865202CLL, 0xEC000000203A6465);
  v3 = MetricsRequest.description.getter();
  MEMORY[0x193B0A990](v3);

  MEMORY[0x193B0A990](62, 0xE100000000000000);
  return 0;
}

uint64_t JindoMetricsDefinition.hashValue.getter()
{
  sub_192228AD0();
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x193B0BAC0](*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x193B0BAC0](*&v2);
  type metadata accessor for JindoMetricsDefinition(0);
  MetricsRequest.hash(into:)(v4);
  MetricsRequest.hash(into:)(v4);
  MetricsRequest.hash(into:)(v4);
  MetricsRequest.hash(into:)(v4);
  return sub_192228B30();
}

uint64_t JindoMetricsDefinition.compactLeadingMetrics.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for JindoMetricsDefinition(0) + 20);

  return sub_1920E51FC(a1, v3);
}

uint64_t JindoMetricsDefinition.compactTrailingMetrics.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for JindoMetricsDefinition(0) + 24);

  return sub_1920E51FC(a1, v3);
}

uint64_t JindoMetricsDefinition.compactMinimalMetrics.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for JindoMetricsDefinition(0) + 28);

  return sub_1920E51FC(a1, v3);
}

uint64_t JindoMetricsDefinition.expandedMetrics.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for JindoMetricsDefinition(0) + 32);

  return sub_1920E51FC(a1, v3);
}

uint64_t JindoMetricsDefinition.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*v1 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x193B0BAC0](*&v3);
  v4 = v1[1];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x193B0BAC0](*&v4);
  type metadata accessor for JindoMetricsDefinition(0);
  MetricsRequest.hash(into:)(a1);
  MetricsRequest.hash(into:)(a1);
  MetricsRequest.hash(into:)(a1);
  return MetricsRequest.hash(into:)(a1);
}

uint64_t sub_19216C0B4(uint64_t a1)
{
  sub_1922279B0();
}

unint64_t sub_19216C1C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_19216D17C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_19216C1F0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF7363697274654DLL;
  v4 = 0x6465646E61707865;
  if (v2 == 4)
  {
    v4 = 0xD000000000000015;
    v3 = 0x8000000192248650;
  }

  if (v2 == 3)
  {
    v4 = 0xD000000000000016;
    v3 = 0x8000000192248630;
  }

  v5 = 0x80000001922485D0;
  v6 = 0xD000000000000014;
  v7 = 0x80000001922485F0;
  if (v2 != 1)
  {
    v7 = 0x8000000192248610;
  }

  if (*v1)
  {
    v6 = 0xD000000000000015;
    v5 = v7;
  }

  if (*v1 <= 2u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (*v1 <= 2u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t sub_19216C2C4()
{
  v1 = *v0;
  v2 = 0x6465646E61707865;
  if (v1 == 4)
  {
    v2 = 0xD000000000000015;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000016;
  }

  v3 = 0xD000000000000014;
  if (*v0)
  {
    v3 = 0xD000000000000015;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_19216C394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19216D17C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19216C3BC(uint64_t a1)
{
  v2 = sub_19216CD48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19216C3F8(uint64_t a1)
{
  v2 = sub_19216CD48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JindoMetricsDefinition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v37 = type metadata accessor for MetricsRequest(0);
  MEMORY[0x1EEE9AC00](v37);
  v35 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1258, &qword_192239AD0);
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v14 = &v32 - v13;
  v15 = type metadata accessor for JindoMetricsDefinition(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_19216CD48();
  v39 = v14;
  v19 = v40;
  sub_192228B70();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v20 = v12;
  v40 = v9;
  v33 = v6;
  v21 = v36;
  v22 = v17;
  v47 = 0;
  v23 = v38;
  sub_192228780();
  v25 = v24;
  v46 = 1;
  sub_192228780();
  v27 = v26;
  v45 = 2;
  sub_19216CF6C(&qword_1EADEDF50, type metadata accessor for MetricsRequest, &protocol conformance descriptor for MetricsRequest);
  sub_1922287C0();
  sub_1920F8D30(v20, &v17[v15[5]]);
  v44 = 3;
  v28 = v40;
  sub_1922287C0();
  sub_1920F8D30(v28, v22 + v15[6]);
  v43 = 4;
  v29 = v33;
  sub_1922287C0();
  sub_1920F8D30(v29, v22 + v15[7]);
  v42 = 5;
  v30 = v35;
  sub_1922287C0();
  (*(v21 + 8))(v39, v23);
  sub_1920F8D30(v30, v22 + v15[8]);
  *v22 = v25;
  v22[1] = v27;
  sub_19216CD9C(v22, v34, type metadata accessor for JindoMetricsDefinition);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return sub_19216CE04(v22, type metadata accessor for JindoMetricsDefinition);
}

uint64_t JindoMetricsDefinition.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1260, &qword_192239AD8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19216CD48();
  sub_192228B90();
  v12 = *v3;
  v11 = 0;
  sub_192059A84();
  sub_1922288C0();
  if (!v2)
  {
    v12 = v3[1];
    v11 = 1;
    sub_1922288C0();
    type metadata accessor for JindoMetricsDefinition(0);
    LOBYTE(v12) = 2;
    type metadata accessor for MetricsRequest(0);
    sub_19216CF6C(&qword_1EADED168, type metadata accessor for MetricsRequest, &protocol conformance descriptor for MetricsRequest);
    sub_1922288C0();
    LOBYTE(v12) = 3;
    sub_1922288C0();
    LOBYTE(v12) = 4;
    sub_1922288C0();
    LOBYTE(v12) = 5;
    sub_1922288C0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_19216CC88()
{
  sub_192228AD0();
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x193B0BAC0](*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x193B0BAC0](*&v2);
  MetricsRequest.hash(into:)(v4);
  MetricsRequest.hash(into:)(v4);
  MetricsRequest.hash(into:)(v4);
  MetricsRequest.hash(into:)(v4);
  return sub_192228B30();
}

unint64_t sub_19216CD48()
{
  result = qword_1EADEE128;
  if (!qword_1EADEE128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE128);
  }

  return result;
}

uint64_t sub_19216CD9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19216CE04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s9WidgetKit22JindoMetricsDefinitionV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v5 = type metadata accessor for JindoMetricsDefinition(0);
  if ((static MetricsRequest.== infix(_:_:)(a1 + v5[5], a2 + v5[5]) & 1) == 0 || (static MetricsRequest.== infix(_:_:)(a1 + v5[6], a2 + v5[6]) & 1) == 0 || (static MetricsRequest.== infix(_:_:)(a1 + v5[7], a2 + v5[7]) & 1) == 0)
  {
    return 0;
  }

  v6 = v5[8];

  return static MetricsRequest.== infix(_:_:)(a1 + v6, a2 + v6);
}

uint64_t sub_19216CF6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_19216CFDC(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MetricsRequest(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_19216D078()
{
  result = qword_1EADF1270;
  if (!qword_1EADF1270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1270);
  }

  return result;
}

unint64_t sub_19216D0D0()
{
  result = qword_1EADEE118;
  if (!qword_1EADEE118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE118);
  }

  return result;
}

unint64_t sub_19216D128()
{
  result = qword_1EADEE120;
  if (!qword_1EADEE120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE120);
  }

  return result;
}

unint64_t sub_19216D17C(uint64_t a1, uint64_t a2)
{
  v2 = sub_192228700();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

__n128 sub_19216D1F4@<Q0>(uint64_t a1@<X8>)
{
  v21 = sub_1922265B0();
  v32 = 1;
  sub_19216D540(&v23);
  v39 = v27;
  v40 = v28;
  v41 = v29;
  v42 = v30;
  v35 = v23;
  v36 = v24;
  v37 = v25;
  v38 = v26;
  v43[0] = v23;
  v43[1] = v24;
  v43[2] = v25;
  v43[3] = v26;
  v43[4] = v27;
  v43[5] = v28;
  v43[6] = v29;
  v44 = v30;
  sub_19202CFFC(&v35, v22, &qword_1EADF1278, &qword_192239E08);
  sub_192033970(v43, &qword_1EADF1278, &qword_192239E08);
  *(&v31[4] + 7) = v39;
  *(&v31[5] + 7) = v40;
  *(&v31[6] + 7) = v41;
  *(&v31[7] + 7) = v42;
  *(v31 + 7) = v35;
  *(&v31[1] + 7) = v36;
  *(&v31[2] + 7) = v37;
  *(&v31[3] + 7) = v38;
  v2 = v32;
  v3 = sub_192226D10();
  v33 = 1;
  v19 = sub_1922275F0();
  v20 = v4;
  LOBYTE(v18) = 0;
  LOBYTE(v17) = 1;
  sub_192225DA0();
  *&v34[55] = v26;
  *&v34[71] = v27;
  *&v34[87] = v28;
  *&v34[103] = v29;
  *&v34[7] = v23;
  *&v34[23] = v24;
  *&v34[39] = v25;
  v5 = [objc_opt_self() systemBackgroundColor];
  v6 = sub_192227330();
  v7 = sub_192226D10();
  sub_192227960();
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1280, &qword_192239E10) + 36);
  sub_192225010();

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1288, &unk_192239E18);
  sub_19202CFFC(a1 + v8, a1 + *(v9 + 36), &qword_1EADEEE10, &unk_19222B630);
  v10 = v31[5];
  *(a1 + 81) = v31[4];
  *(a1 + 97) = v10;
  *(a1 + 113) = v31[6];
  *(a1 + 128) = *(&v31[6] + 15);
  v11 = v31[1];
  *(a1 + 17) = v31[0];
  *(a1 + 33) = v11;
  v12 = v31[3];
  *(a1 + 49) = v31[2];
  *(a1 + 65) = v12;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  v13 = *&v34[16];
  *(a1 + 185) = *v34;
  *(a1 + 201) = v13;
  v14 = *&v34[48];
  *(a1 + 217) = *&v34[32];
  *(a1 + 296) = *&v34[111];
  result = *&v34[96];
  v16 = *&v34[64];
  *(a1 + 265) = *&v34[80];
  *(a1 + 281) = result;
  *(a1 + 249) = v16;
  *a1 = v21;
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
  *(a1 + 144) = v3;
  *(a1 + 148) = *(v22 + 3);
  *(a1 + 145) = v22[0];
  *(a1 + 184) = 1;
  *(a1 + 233) = v14;
  *(a1 + 304) = v6;
  *(a1 + 312) = v7;
  return result;
}

uint64_t sub_19216D540@<X0>(uint64_t a1@<X8>)
{
  v27 = sub_192227390();
  v26 = sub_192226E60();
  KeyPath = swift_getKeyPath();
  v24 = sub_1922272D0();
  v29 = swift_getKeyPath();
  v28 = sub_192226D30();
  sub_192226540();
  v2 = sub_192226FC0();
  v4 = v3;
  v6 = v5;
  sub_192226D80();
  v7 = sub_192226F90();
  v9 = v8;
  v11 = v10;

  sub_19207A338(v2, v4, v6 & 1);

  sub_1922272D0();
  v12 = sub_192226F70();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_19207A338(v7, v9, v11 & 1);

  *&v31 = v27;
  *(&v31 + 1) = KeyPath;
  *&v32 = v26;
  *(&v32 + 1) = v29;
  *&v33 = v24;
  BYTE8(v33) = v28;
  v34 = 0u;
  v35 = 0u;
  v36 = 1;
  LOBYTE(v42) = 1;
  v39 = v33;
  v40 = 0u;
  v41 = 0u;
  v37 = v31;
  v38 = v32;
  v19 = v32;
  *a1 = v31;
  *(a1 + 16) = v19;
  v20 = v39;
  v21 = v41;
  v22 = v42;
  *(a1 + 48) = v40;
  *(a1 + 64) = v21;
  *(a1 + 32) = v20;
  *(a1 + 80) = v22;
  *(a1 + 88) = v12;
  *(a1 + 96) = v14;
  *(a1 + 104) = v16 & 1;
  *(a1 + 112) = v18;
  sub_19202CFFC(&v31, v43, &qword_1EADF1290, &qword_192239E88);
  sub_1921114E4(v12, v14, v16 & 1);

  sub_19207A338(v12, v14, v16 & 1);

  v43[0] = v27;
  v43[1] = KeyPath;
  v43[2] = v26;
  v43[3] = v29;
  v43[4] = v24;
  v44 = v28;
  *v45 = *v30;
  *&v45[3] = *&v30[3];
  v46 = 0u;
  v47 = 0u;
  v48 = 1;
  return sub_192033970(v43, &qword_1EADF1290, &qword_192239E88);
}

unint64_t sub_19216D80C()
{
  result = qword_1EADF1298;
  if (!qword_1EADF1298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1280, &qword_192239E10);
    sub_19216D8C8();
    sub_19216DB80(&unk_1ED749C30, type metadata accessor for WidgetURLMetadataModifier, &unk_1922356A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1298);
  }

  return result;
}

unint64_t sub_19216D8C8()
{
  result = qword_1EADF12A0;
  if (!qword_1EADF12A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1288, &unk_192239E18);
    sub_19216D984();
    sub_19216DB80(&qword_1ED74AE00, type metadata accessor for WidgetURLModifier, &protocol conformance descriptor for WidgetURLModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF12A0);
  }

  return result;
}

unint64_t sub_19216D984()
{
  result = qword_1EADF12A8;
  if (!qword_1EADF12A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF12B0, &qword_192239E90);
    sub_19216DA3C();
    sub_192031E74(&qword_1EADED2C0, &qword_1EADF12E8, &unk_192239EB0, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF12A8);
  }

  return result;
}

unint64_t sub_19216DA3C()
{
  result = qword_1EADF12B8;
  if (!qword_1EADF12B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF12C0, &qword_192239E98);
    sub_19216DAC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF12B8);
  }

  return result;
}

unint64_t sub_19216DAC8()
{
  result = qword_1EADF12C8;
  if (!qword_1EADF12C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF12D0, &qword_192239EA0);
    sub_192031E74(&qword_1EADF12D8, &qword_1EADF12E0, &qword_192239EA8, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF12C8);
  }

  return result;
}

uint64_t sub_19216DB80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19216DBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19216E53C();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues._widgetAccentedDesaturatedMode.getter()
{
  sub_19206DB90();
  sub_1922261E0();
  return v1;
}

uint64_t (*EnvironmentValues._widgetAccentedDesaturatedMode.modify(void *a1))()
{
  a1[2] = v1;
  a1[3] = sub_19206DB90();
  sub_1922261E0();
  return sub_19216DD04;
}

uint64_t sub_19216DD3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465746E65636361 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1922289A0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_19216DDC4(uint64_t a1)
{
  v2 = sub_19206F028();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19216DE00(uint64_t a1)
{
  v2 = sub_19206F028();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WidgetAccentedDesaturatedViewModifier.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF12F8, &qword_192239F38);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19206F028();
  sub_192228B90();
  sub_192228870();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_19216DF74()
{
  v1 = sub_1922261D0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 25);
  if ((*(v0 + 8) & 1) == 0)
  {

    sub_192227FA0();
    v7 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v8 = sub_192049898(v5, 0);
    (*(v2 + 8))(v4, v1, v8);
    v5 = v12[1];
  }

  v9 = v6 ^ 1;
  if (v5 == 1)
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  if (v5 != 2)
  {
    v9 = v10;
  }

  if (v5 == 3)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_19216E0E0(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

double static _ColorMatrix.invertedLuminanceToAlphaColorMatrix.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 44) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  result = -0.000352859437;
  *(a1 + 60) = xmmword_192239EC0;
  *(a1 + 76) = 0;
  return result;
}

double static _ColorMatrix.luminanceToAlphaColorMatrix.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 44) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  result = 0.000352859321;
  *(a1 + 60) = xmmword_192239ED0;
  *(a1 + 76) = 0;
  return result;
}

uint64_t sub_19216E134(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF12F8, &qword_192239F38);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19206F028();
  sub_192228B90();
  sub_192228870();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_19216E26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_19206F194();

  return MEMORY[0x1EEDDB140](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_19216E344(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1308, &qword_192239F48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19216E3B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1308, &qword_192239F48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19216E424(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1308, &qword_192239F48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19216E48C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_19216E4E8()
{
  result = qword_1EADF1320;
  if (!qword_1EADF1320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1320);
  }

  return result;
}

unint64_t sub_19216E53C()
{
  result = qword_1EADF1328;
  if (!qword_1EADF1328)
  {
    type metadata accessor for CHSTintAccentedDesaturatedMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1328);
  }

  return result;
}

uint64_t sub_19216E598(uint64_t a1)
{
  v2 = sub_192042C00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19216E5D4(uint64_t a1)
{
  v2 = sub_192042C00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19216E610()
{
  if (*v0)
  {
    return 1702195828;
  }

  else
  {
    return 0x65736C6166;
  }
}

uint64_t sub_19216E644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1922289A0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_19216E6CC(uint64_t a1)
{
  v2 = sub_192046DCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19216E708(uint64_t a1)
{
  v2 = sub_192046DCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19216E7D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_192224E30();
    if (v10)
    {
      v11 = sub_192224E50();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_192224E40();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_192224E30();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_192224E50();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_192224E40();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_19216EA08(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_19216EB98(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_192039140(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_19216E7D8(v13, a3, a4, &v12);
  v10 = v4;
  sub_192039140(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_19216EB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_192224E30();
  v11 = result;
  if (result)
  {
    result = sub_192224E50();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_192224E40();
  sub_19216E7D8(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_19216EC50(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1920367C8(a3, a4);
          return sub_19216EA08(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_19216EDB8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1330, &qword_19223A368);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1920367C8(a1, a2);
  sub_1920367C8(a3, a4);
  sub_1920367C8(a1, a2);
  sub_1920367C8(a3, a4);
  sub_1922250A0();
  sub_1922250A0();
  v14 = *(v8 + 56);
  v10[v14] = 0;
  sub_192225090();
  sub_19216EFCC();
  while (1)
  {
    sub_192228270();
    if (v18)
    {
      break;
    }

    v11 = v17;
    sub_192228270();
    if (v16)
    {
      break;
    }

    if (v11 < v15)
    {
      sub_192039140(a1, a2);
      sub_192039140(a3, a4);
      v12 = 1;
      goto LABEL_7;
    }
  }

  sub_192039140(a1, a2);
  sub_192039140(a3, a4);
  v12 = 0;
  v10[v14] = 1;
LABEL_7:
  sub_19216F024(v10);
  return v12;
}

unint64_t sub_19216EFCC()
{
  result = qword_1EADF1338;
  if (!qword_1EADF1338)
  {
    sub_192225090();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1338);
  }

  return result;
}

uint64_t sub_19216F024(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1330, &qword_19223A368);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19216F08C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

unint64_t sub_19216F0E4()
{
  result = qword_1EADF1350;
  if (!qword_1EADF1350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1350);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CodableBool(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_19216F1DC()
{
  result = qword_1EADF1368;
  if (!qword_1EADF1368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1368);
  }

  return result;
}

uint64_t sub_19216F278()
{
  sub_192228400();
  MEMORY[0x193B0A990](0xD00000000000001DLL, 0x800000019224C460);
  MEMORY[0x193B0A990](*v0, *(v0 + 8));
  MEMORY[0x193B0A990](0xD000000000000011, 0x800000019224A6E0);
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);
  }

  else
  {
    v2 = 0xE100000000000000;
    v1 = 45;
  }

  MEMORY[0x193B0A990](v1, v2);

  MEMORY[0x193B0A990](0xD000000000000012, 0x800000019224C480);
  v3 = sub_192227FC0();
  MEMORY[0x193B0A990](v3);

  MEMORY[0x193B0A990](0xD000000000000015, 0x800000019224C4A0);
  v4 = [*(v0 + 40) description];
  v5 = sub_192227960();
  v7 = v6;

  MEMORY[0x193B0A990](v5, v7);

  MEMORY[0x193B0A990](0xD000000000000017, 0x800000019224C4C0);
  v8 = sub_19216F428();
  MEMORY[0x193B0A990](v8);

  return 0;
}

uint64_t sub_19216F428()
{
  sub_1920B2B7C(v0, v5);
  if (v6)
  {
    sub_1920B2BD8(v5);
    return 4804673;
  }

  else
  {
    sub_19209CBAC(v5, v4);
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    swift_getDynamicType();
    v2 = sub_192228BD0();
    MEMORY[0x193B0A990](v2);

    v1 = 675893331;
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  return v1;
}

unint64_t sub_19216F4E8(uint64_t a1)
{
  result = sub_19216F510();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19216F510()
{
  result = qword_1EADEE5F8;
  if (!qword_1EADEE5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE5F8);
  }

  return result;
}

uint64_t sub_19216F568(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1922289A0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_1922289A0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (a1[4] == a2[4])
  {
    sub_1920EDA18();
    return sub_1922281D0() & 1;
  }

  return 0;
}

uint64_t EnvironmentValues._developmentMode.getter()
{
  sub_192056F6C();
  sub_1922261E0();
  return v1;
}

uint64_t (*EnvironmentValues._developmentMode.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_192056F6C();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_19216F700;
}

void *EnvironmentValues.activityFamily.getter()
{
  sub_19216F7A4();

  return sub_1922261E0();
}

unint64_t sub_19216F7A4()
{
  result = qword_1EADEE510[0];
  if (!qword_1EADEE510[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EADEE510);
  }

  return result;
}

void *sub_19216F7F8@<X0>(_BYTE *a1@<X8>)
{
  sub_19216F7A4();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

WidgetKit::ActivityFamily_optional __swiftcall ActivityFamily.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ActivityFamily.description.getter()
{
  if (*v0)
  {
    return 0x6D756964656DLL;
  }

  else
  {
    return 0x6C6C616D73;
  }
}

uint64_t sub_19216F9E8()
{
  if (*v0)
  {
    return 0x6D756964656DLL;
  }

  else
  {
    return 0x6C6C616D73;
  }
}

uint64_t ActivityFamily.filePath.getter()
{
  if (*v0)
  {
    v1 = 0x6D756964656DLL;
  }

  else
  {
    v1 = 0x6C6C616D73;
  }

  if (*v0)
  {
    v2 = 0xE600000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x193B0A990](v1, v2);

  return 980246886;
}

uint64_t *sub_19216FA98@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result != 1)
  {
    LOBYTE(v2) = v2 != 0;
  }

  *a2 = v2;
  return result;
}

double WidgetConfiguration.supplementalActivityFamilies(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;

  sub_1920797E8(sub_19216FB98, v6, a2, a3);

  return result;
}

char *sub_19216FB50(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WidgetDescriptor(0);

  return sub_192167BF0(v2);
}

uint64_t (*EnvironmentValues.activityFamily.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_19216F7A4();
  sub_1922261E0();
  return sub_19216FC00;
}

uint64_t sub_19216FC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1921704FC();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_19216FCA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_192170368(&unk_1F06A83D8);
  *a1 = result;
  return result;
}

uint64_t sub_19216FCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1921705B4();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.supportedActivityFamilies.getter()
{
  sub_1921704A4();
  sub_1922261E0();
  return v1;
}

uint64_t sub_19216FD78(uint64_t *a1)
{
  sub_1921704A4();

  return sub_1922261F0();
}

uint64_t (*EnvironmentValues.supportedActivityFamilies.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  a1[3] = sub_1921704A4();
  sub_1922261E0();
  return sub_19216FE74;
}

uint64_t sub_19216FE74(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_1922261F0();
  }

  sub_1922261F0();
}

uint64_t sub_19216FF08(uint64_t a1)
{
  v2 = sub_192225790();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF13B0, &qword_19223AE28);
    v9 = sub_1922283E0();
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
      sub_192170570(&qword_1ED74B278, MEMORY[0x1E69E8460]);
      v16 = sub_192227880();
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
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_192170570(&qword_1ED74B0C0, MEMORY[0x1E69E8468]);
          v23 = sub_192227910();
          v24 = *v15;
          (*v15)(v5, v2);
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

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_192170200(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF13D0, &qword_19223AE68);
    v3 = sub_1922283E0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_192228AD0();

      sub_1922279B0();
      result = sub_192228B30();
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
          result = sub_1922289A0();
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
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_192170368(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF13D8, &qword_19223AE70);
    v3 = sub_1922283E0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_192228AD0();
      MEMORY[0x193B0BA90](v10);
      result = sub_192228B30();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (v10 != *(v17 + v13))
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1921704A4()
{
  result = qword_1EADF13A8;
  if (!qword_1EADF13A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF13A8);
  }

  return result;
}

unint64_t sub_1921704FC()
{
  result = qword_1EADED178;
  if (!qword_1EADED178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED178);
  }

  return result;
}

uint64_t sub_192170570(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_192225790();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1921705B4()
{
  result = qword_1EADF13B8;
  if (!qword_1EADF13B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF13C0, &qword_19223AE30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF13B8);
  }

  return result;
}

unint64_t sub_192170618()
{
  result = qword_1EADEE3C8[0];
  if (!qword_1EADEE3C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EADEE3C8);
  }

  return result;
}

double static WidgetArchiver.archive(_:to:delegate:)(void *a1, void *a2, void *a3)
{
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v7 = a1[3];
    v8 = a1[4];
    v9 = __swift_project_boxed_opaque_existential_1(a1, v7);
    v6 = sub_19217869C(v9, v7, v8);
  }

  v10 = a2;

  sub_192170900(a1, v6, v3, v10);

  return result;
}

id sub_19217070C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1920EDA18();
    v4 = sub_192227830();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_192170798()
{
  result = [v0 infoDictionary];
  if (result)
  {
    v2 = result;
    v3 = sub_192227840();

    if (*(v3 + 16) && (v4 = sub_1920440AC(0x656C646E75424643, 0xEF6E6F6973726556), (v5 & 1) != 0))
    {
      sub_19202A98C(*(v3 + 56) + 32 * v4, v7);

      if (swift_dynamicCast())
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_192170894@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WidgetDescriptor(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_192170900(void *a1, void *a2, void *a3, char *a4)
{
  v116 = a4;
  v111 = a3;
  v114 = a2;
  v107 = sub_192226690();
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  i = (&v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v99 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v99 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v99 - v14);
  v110 = sub_192225800();
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v115 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF13E8, &qword_19223AEB0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v99 - v18;
  v21 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  (*(*(v20 + 8) + 32))(&aBlock, v21);
  v22 = aBlock;
  KeyPath = swift_getKeyPath();
  v24 = sub_192066C3C(KeyPath);

  if (!v24)
  {
    goto LABEL_59;
  }

  if (!(v24 >> 62))
  {
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_58;
  }

  if (!sub_192228340())
  {
LABEL_58:

LABEL_59:
    sub_192179630();
    swift_allocError();
    *v98 = 0u;
    *(v98 + 16) = 0u;
    *(v98 + 32) = 3;
    swift_willThrow();
    goto LABEL_60;
  }

LABEL_4:
  if ((v24 & 0xC000000000000001) != 0)
  {
    goto LABEL_62;
  }

  if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_64;
  }

  v25 = *(v24 + 32);
  while (2)
  {
    v26 = v25;

    [v26 size];

    type metadata accessor for WGAutoreleasePool();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    v28 = _widgetkit_objc_autoreleasePoolPush();
    v108 = inited;
    v103 = v28;
    *(inited + 16) = v28;
    v29 = a1[3];
    v30 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v29);
    (*(v30 + 16))(&aBlock, v29, v30);
    v105 = aBlock;
    v104 = v118;
    aBlock = sub_192227570();
    v126[1] = v114;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF13F8, &qword_19223B370);
    swift_allocObject();

    v113 = sub_1922264B0();
    sub_192226490();
    v32 = a1[3];
    v31 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v32);
    (*(*(v31 + 8) + 32))(&aBlock, v32);
    v33 = aBlock;
    v34 = swift_getKeyPath();
    v24 = sub_192099DDC(v34);

    if (v24)
    {
      if (*(v24 + 16))
      {
        LODWORD(v24) = *(v24 + 32);

        if (v24 != 3)
        {
          if (qword_1ED74C6B0 != -1)
          {
            goto LABEL_65;
          }

          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    while (1)
    {
      v45 = a1[3];
      v46 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v45);
      (*(*(v46 + 8) + 32))(&aBlock, v45);
      v47 = aBlock;
      v48 = swift_getKeyPath();
      v49 = sub_1920668D0(v48);

      i = v114;
      v50 = v108;
      if (v49)
      {
      }

      sub_192226450();
      v51 = a1[3];
      v52 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v51);
      (*(*(v52 + 8) + 32))(&aBlock, v51);
      v53 = aBlock;
      v54 = swift_getKeyPath();
      v55 = sub_1920668D0(v54);

      if (v55)
      {
        if (*(v55 + 2))
        {

          sub_192226470();
        }

        else
        {
        }
      }

      sub_192226410();
      sub_19202CFFC(i + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_defaultImageType, v19, &qword_1EADF13E8, &qword_19223AEB0);
      sub_192226400();
      v120 = &type metadata for FeatureFlags.Widgets;
      v121 = sub_19202DBA4();
      LOBYTE(aBlock) = 19;
      v56 = sub_192225420();
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      if (v56)
      {
        sub_192226480();
      }

      v57 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_includeSelectableRegions;
      swift_beginAccess();
      if (*(i + v57) == 1)
      {
        v58 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_computedSelectableRegions;
        swift_beginAccess();
        *(i + v58) = MEMORY[0x1E69E7CC8];
      }

      _widgetkit_objc_autoreleasePoolPop(v103);
      v50[2] = _widgetkit_objc_autoreleasePoolPush();
      v125 = 0;
      v126[0] = MEMORY[0x1E69E7CC0];
      v123 = 0;
      v124 = 0;
      if (qword_1ED74B868[0] != -1)
      {
        swift_once();
      }

      v59 = qword_1ED74CBE0;
      v60 = a1[3];
      v61 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v60);
      v62 = *(v61 + 8);
      v12 = (v62 + 16);
      v63 = *(v62 + 16);
      v19 = v59;
      v63(v60, v62);
      v9 = v115;
      sub_1922257D0();
      sub_1922280E0();
      v64 = sub_1922257C0();
      v15 = v105;
      v24 = v104;
      if ((v105[2] * *(v104 + 16)) >> 64 == (v105[2] * *(v104 + 16)) >> 63)
      {
        break;
      }

      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      swift_once();
LABEL_11:
      v35 = sub_1922258B0();
      __swift_project_value_buffer(v35, qword_1ED74CCC8);
      v36 = sub_192225890();
      v37 = sub_192227FB0();
      if (os_log_type_enabled(v36, v37))
      {
        v100 = v36;
        v38 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        aBlock = v99;
        v101 = v38;
        *v38 = 136446210;
        v102 = v37;
        if (v24)
        {
          sub_192226680();
        }

        else
        {
          sub_192226670();
        }

        (*(v106 + 4))(v15, v12, v107);
        v39 = sub_192227990();
        v41 = sub_19202B8CC(v39, v40, &aBlock);

        v42 = v101;
        *(v101 + 1) = v41;
        v43 = v100;
        _os_log_impl(&dword_192028000, v100, v102, "Archive deployment version: %{public}s", v42, 0xCu);
        v44 = v99;
        __swift_destroy_boxed_opaque_existential_1(v99);
        MEMORY[0x193B0C7F0](v44, -1, -1);
        MEMORY[0x193B0C7F0](v42, -1, -1);

        if (v24)
        {
LABEL_16:
          sub_192226680();
          goto LABEL_20;
        }
      }

      else
      {

        if (v24)
        {
          goto LABEL_16;
        }
      }

      sub_192226670();
LABEL_20:
      (*(v106 + 4))(v9, i, v107);
      sub_192226430();
    }

    MEMORY[0x1EEE9AC00](v64);
    v12 = v108;
    *(&v99 - 12) = v108;
    *(&v99 - 11) = v15;
    v65 = v111;
    *(&v99 - 10) = v24;
    *(&v99 - 9) = v65;
    *(&v99 - 8) = v113;
    *(&v99 - 7) = i;
    *(&v99 - 6) = a1;
    *(&v99 - 5) = &v125;
    *(&v99 - 4) = v126;
    *(&v99 - 3) = &v124;
    *(&v99 - 2) = &v123;
    v9 = v116;
    v66 = v112;
    sub_192226390();
    v112 = v66;
    if (v66)
    {
      (*(v109 + 8))(v115, v110);

      _widgetkit_objc_autoreleasePoolPop(v12[2]);
      sub_192175598();

      return;
    }

    v67 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_failIfBackgroundIsMissing;
    swift_beginAccess();
    if (*(i + v67))
    {
      v68 = v125;
      if (v125)
      {
        swift_willThrow();
        v69 = v68;
        (*(v109 + 8))(v115, v110);
        _widgetkit_objc_autoreleasePoolPop(v12[2]);
        sub_192175598();

        v70 = v68;
        goto LABEL_45;
      }
    }

    v71 = v124;
    v72 = v115;
    if (v124)
    {
      swift_willThrow();
      v73 = v71;
      (*(v109 + 8))(v72, v110);
      _widgetkit_objc_autoreleasePoolPop(v12[2]);
      sub_192175598();

      goto LABEL_43;
    }

    v71 = v123;
    if (!v123)
    {
      sub_1922280D0();
      sub_1922257C0();
      v76 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_largestImageSizeByFamily;
      swift_beginAccess();
      v77 = *(i + v76);
      v78 = *(v77 + 64);
      v104 = v77 + 64;
      v79 = 1 << *(v77 + 32);
      v80 = -1;
      if (v79 < 64)
      {
        v80 = ~(-1 << v79);
      }

      v19 = v80 & v78;
      v103 = ((v79 + 63) >> 6);
      v106 = "defaultImageType";
      v105 = &v119;
      v107 = v77;

      for (i = 0; v19; v12 = v108)
      {
        v81 = i;
LABEL_54:
        v82 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        v83 = (v81 << 10) | (16 * v82);
        v84 = *(v107 + 48) + v83;
        v85 = *v84;
        v86 = *(v84 + 8);
        v87 = (*(v107 + 56) + v83);
        v88 = *v87;
        v89 = v87[1];
        v90 = a1[3];
        v91 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v90);
        v24 = *(v91 + 8);
        v111 = *(v24 + 16);
        v92 = v86;
        v93 = (v111)(v90, v24);
        v94 = swift_allocObject();
        *(v94 + 16) = v93;
        *(v94 + 24) = v85;
        *(v94 + 32) = v89;
        *(v94 + 40) = v92;
        *(v94 + 48) = v88;
        v15 = v92;
        v9 = v93;
        v95 = sub_192227930();
        v96 = swift_allocObject();
        *(v96 + 16) = sub_19217A848;
        *(v96 + 24) = v94;
        v121 = sub_19217A84C;
        v122 = v96;
        aBlock = MEMORY[0x1E69E9820];
        v118 = 1107296256;
        v119 = sub_19217070C;
        v120 = &block_descriptor_90;
        v97 = _Block_copy(&aBlock);

        AnalyticsSendEventLazy();
        _Block_release(v97);

        v72 = v115;
      }

      while (1)
      {
        v81 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v81 >= v103)
        {

          sub_192175074();
          (*(v109 + 8))(v72, v110);
          _widgetkit_objc_autoreleasePoolPop(v12[2]);
          sub_192175598();

          v75 = 0;
          goto LABEL_44;
        }

        v19 = *(v104 + 8 * v81);
        i = (i + 1);
        if (v19)
        {
          i = v81;
          goto LABEL_54;
        }
      }

      __break(1u);
LABEL_62:
      v25 = MEMORY[0x193B0B410](0, v24);
      continue;
    }

    break;
  }

  swift_willThrow();
  v74 = v71;
  (*(v109 + 8))(v72, v110);
  _widgetkit_objc_autoreleasePoolPop(v12[2]);
  sub_192175598();

LABEL_43:
  v75 = v71;
LABEL_44:

  v70 = v125;
LABEL_45:

LABEL_60:
}

uint64_t sub_1921718D8(void *a1, char *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  v114 = a4;
  v115 = a3;
  v119 = a2;
  v109 = sub_192226690();
  v108 = *(v109 - 1);
  MEMORY[0x1EEE9AC00](v109);
  v6 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v100 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v100 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v100 - v14;
  v112 = sub_192225800();
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v118 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF13E8, &qword_19223AEB0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v100 - v18;
  v21 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  (*(*(v20 + 8) + 32))(&aBlock, v21);
  v22 = aBlock;
  KeyPath = swift_getKeyPath();
  j = sub_192066C3C(KeyPath);

  if (!j)
  {
    goto LABEL_60;
  }

  if (j >> 62)
  {
    if (sub_192228340())
    {
      goto LABEL_4;
    }

    goto LABEL_59;
  }

  if (!*((j & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_59:

LABEL_60:
    sub_192179630();
    swift_allocError();
    *v99 = 0u;
    *(v99 + 16) = 0u;
    *(v99 + 32) = 3;
    return swift_willThrow();
  }

LABEL_4:
  if ((j & 0xC000000000000001) != 0)
  {
    goto LABEL_62;
  }

  if (!*((j & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_64;
  }

  for (i = *(j + 32); ; i = MEMORY[0x193B0B410](0, j))
  {
    v26 = i;

    [v26 size];

    type metadata accessor for WGAutoreleasePool();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    v28 = _widgetkit_objc_autoreleasePoolPush();
    v110 = inited;
    v105 = v28;
    *(inited + 16) = v28;
    v29 = a1[3];
    v30 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v29);
    (*(v30 + 16))(&aBlock, v29, v30);
    v107 = aBlock;
    v106 = v121;
    aBlock = sub_192227570();
    v129[1] = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF13F8, &qword_19223B370);
    swift_allocObject();

    v117 = sub_1922264B0();
    sub_192226490();
    v32 = a1[3];
    v31 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v32);
    (*(*(v31 + 8) + 32))(&aBlock, v32);
    v33 = aBlock;
    v34 = swift_getKeyPath();
    j = sub_192099DDC(v34);

    if (j)
    {
      if (*(j + 16))
      {
        LODWORD(j) = *(j + 32);

        if (j != 3)
        {
          if (qword_1ED74C6B0 != -1)
          {
            goto LABEL_65;
          }

          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    while (1)
    {
      v46 = a1[3];
      v45 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v46);
      (*(*(v45 + 8) + 32))(&aBlock, v46);
      v47 = aBlock;
      v48 = swift_getKeyPath();
      v49 = sub_1920668D0(v48);

      v6 = v119;
      v50 = v110;
      if (v49)
      {
      }

      sub_192226450();
      v52 = a1[3];
      v51 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v52);
      (*(*(v51 + 8) + 32))(&aBlock, v52);
      v53 = aBlock;
      v54 = swift_getKeyPath();
      v55 = sub_1920668D0(v54);

      if (v55)
      {
        if (*(v55 + 2))
        {

          sub_192226470();
        }

        else
        {
        }
      }

      sub_192226410();
      sub_19202CFFC(&v6[OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_defaultImageType], v19, &qword_1EADF13E8, &qword_19223AEB0);
      sub_192226400();
      v123 = &type metadata for FeatureFlags.Widgets;
      v124 = sub_19202DBA4();
      LOBYTE(aBlock) = 19;
      v56 = sub_192225420();
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      if (v56)
      {
        sub_192226480();
      }

      v57 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_includeSelectableRegions;
      swift_beginAccess();
      if (v6[v57] == 1)
      {
        v58 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_computedSelectableRegions;
        swift_beginAccess();
        *&v6[v58] = MEMORY[0x1E69E7CC8];
      }

      _widgetkit_objc_autoreleasePoolPop(v105);
      *(v50 + 16) = _widgetkit_objc_autoreleasePoolPush();
      v128 = 0;
      v129[0] = MEMORY[0x1E69E7CC0];
      v126 = 0;
      v127 = 0;
      if (qword_1ED74B868[0] != -1)
      {
        swift_once();
      }

      v59 = qword_1ED74CBE0;
      v19 = a1[3];
      v60 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v19);
      v61 = *(v60 + 8);
      v15 = *(v61 + 16);
      v12 = v59;
      (v15)(v19, v61);
      sub_1922257D0();
      sub_1922280E0();
      v62 = sub_1922257C0();
      v9 = v107;
      j = v106;
      if ((*(v107 + 16) * *(v106 + 16)) >> 64 == (*(v107 + 16) * *(v106 + 16)) >> 63)
      {
        break;
      }

      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      swift_once();
LABEL_11:
      v35 = sub_1922258B0();
      __swift_project_value_buffer(v35, qword_1ED74CCC8);
      v36 = sub_192225890();
      v37 = sub_192227FB0();
      if (os_log_type_enabled(v36, v37))
      {
        v102 = v36;
        v38 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        aBlock = v101;
        v103 = v38;
        *v38 = 136446210;
        v104 = v37;
        if (j)
        {
          sub_192226680();
        }

        else
        {
          sub_192226670();
        }

        (*(v108 + 4))(v15, v12, v109);
        v39 = sub_192227990();
        v41 = sub_19202B8CC(v39, v40, &aBlock);

        v42 = v103;
        *(v103 + 1) = v41;
        v43 = v102;
        _os_log_impl(&dword_192028000, v102, v104, "Archive deployment version: %{public}s", v42, 0xCu);
        v44 = v101;
        __swift_destroy_boxed_opaque_existential_1(v101);
        MEMORY[0x193B0C7F0](v44, -1, -1);
        MEMORY[0x193B0C7F0](v42, -1, -1);
      }

      else
      {
      }

      if (j)
      {
        sub_192226680();
      }

      else
      {
        sub_192226670();
      }

      (*(v108 + 4))(v9, v6, v109);
      sub_192226430();
    }

    v63 = MEMORY[0x1EEE9AC00](v62);
    v64 = v110;
    *(&v100 - 12) = v110;
    *(&v100 - 11) = v9;
    v65 = v113;
    *(&v100 - 10) = j;
    *(&v100 - 9) = v65;
    v66 = v117;
    *(&v100 - 8) = v117;
    *(&v100 - 7) = v6;
    *(&v100 - 6) = a1;
    *(&v100 - 5) = &v128;
    *(&v100 - 4) = v129;
    *(&v100 - 3) = &v127;
    *(&v100 - 2) = &v126;
    v67 = v116;
    (v115)(v66, v63);
    if (v67)
    {
      (*(v111 + 8))(v118, v112);

      _widgetkit_objc_autoreleasePoolPop(*(v64 + 16));
      sub_192175598();

      v68 = v127;
      goto LABEL_45;
    }

    v116 = 0;

    v69 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_failIfBackgroundIsMissing;
    swift_beginAccess();
    if (v6[v69])
    {
      v70 = v128;
      if (v128)
      {
        swift_willThrow();
        v71 = v70;
        (*(v111 + 8))(v118, v112);
        _widgetkit_objc_autoreleasePoolPop(*(v110 + 16));
        sub_192175598();

        v72 = v70;
        goto LABEL_46;
      }
    }

    v73 = v127;
    v15 = v118;
    if (v127)
    {
      swift_willThrow();
      v74 = v73;
      (*(v111 + 8))(v15, v112);
      _widgetkit_objc_autoreleasePoolPop(*(v110 + 16));
      sub_192175598();

      goto LABEL_44;
    }

    v73 = v126;
    if (v126)
    {
      break;
    }

    sub_1922280D0();
    sub_1922257C0();
    v77 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_largestImageSizeByFamily;
    swift_beginAccess();
    v19 = *&v6[v77];
    v78 = *(v19 + 8);
    v108 = v19 + 64;
    v79 = 1 << v19[32];
    v80 = -1;
    if (v79 < 64)
    {
      v80 = ~(-1 << v79);
    }

    v12 = v80 & v78;
    v107 = (v79 + 63) >> 6;
    v113 = "defaultImageType";
    v109 = &v122;

    v9 = 0;
    for (j = v110; v12; j = v110)
    {
      v81 = v9;
LABEL_55:
      v82 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v83 = (v81 << 10) | (16 * v82);
      v84 = *(v19 + 7);
      v85 = (*(v19 + 6) + v83);
      LODWORD(v115) = *v85;
      v86 = *(v85 + 1);
      v87 = (v84 + v83);
      v88 = *v87;
      v89 = v87[1];
      v90 = a1[3];
      v91 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v90);
      v92 = *(v91 + 8);
      v114 = *(v92 + 16);
      v93 = v86;
      v94 = v114(v90, v92);
      v95 = swift_allocObject();
      *(v95 + 16) = v94;
      *(v95 + 24) = v115;
      *(v95 + 32) = v89;
      *(v95 + 40) = v93;
      *(v95 + 48) = v88;
      v6 = v93;
      v15 = v94;
      v96 = sub_192227930();
      v97 = swift_allocObject();
      *(v97 + 16) = sub_19217A848;
      *(v97 + 24) = v95;
      v124 = sub_19217A84C;
      v125 = v97;
      aBlock = MEMORY[0x1E69E9820];
      v121 = 1107296256;
      v122 = sub_19217070C;
      v123 = &block_descriptor_78;
      v98 = _Block_copy(&aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v98);
    }

    while (1)
    {
      v81 = (v9 + 1);
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v81 >= v107)
      {

        sub_192175074();
        (*(v111 + 8))(v118, v112);
        _widgetkit_objc_autoreleasePoolPop(*(j + 16));
        sub_192175598();

        v68 = 0;
        goto LABEL_45;
      }

      v12 = *&v108[8 * v81];
      ++v9;
      if (v12)
      {
        v9 = v81;
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_62:
    ;
  }

  swift_willThrow();
  v75 = v73;
  (*(v111 + 8))(v15, v112);
  _widgetkit_objc_autoreleasePoolPop(*(v110 + 16));
  sub_192175598();

LABEL_44:
  v68 = v73;
LABEL_45:

  v72 = v128;
LABEL_46:
}

uint64_t sub_1921728C8@<X0>(void *a1@<X0>, char *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v122 = a3;
  v126 = a2;
  v116 = a4;
  v118 = sub_192226690();
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v6 = (&v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v109 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v109 - v14;
  v121 = sub_192225800();
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v125 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF13E8, &qword_19223AEB0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v109 - v18;
  v21 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  (*(*(v20 + 8) + 32))(&aBlock, v21);
  v22 = aBlock;
  KeyPath = swift_getKeyPath();
  j = sub_192066C3C(KeyPath);

  if (!j)
  {
    goto LABEL_61;
  }

  if (j >> 62)
  {
    if (sub_192228340())
    {
      goto LABEL_4;
    }

    goto LABEL_60;
  }

  if (!*((j & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_60:

LABEL_61:
    sub_192179630();
    swift_allocError();
    *v108 = 0u;
    *(v108 + 16) = 0u;
    *(v108 + 32) = 3;
    return swift_willThrow();
  }

LABEL_4:
  if ((j & 0xC000000000000001) != 0)
  {
    goto LABEL_63;
  }

  if (!*((j & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_65;
  }

  for (i = *(j + 32); ; i = MEMORY[0x193B0B410](0, j))
  {
    v26 = i;

    [v26 size];

    type metadata accessor for WGAutoreleasePool();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    v28 = _widgetkit_objc_autoreleasePoolPush();
    v119 = inited;
    v113 = v28;
    *(inited + 16) = v28;
    v29 = a1[3];
    v30 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v29);
    (*(v30 + 16))(&aBlock, v29, v30);
    v115 = aBlock;
    v114 = v128;
    aBlock = sub_192227570();
    v136[1] = v126;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF13F8, &qword_19223B370);
    swift_allocObject();

    v124 = sub_1922264B0();
    sub_192226490();
    v32 = a1[3];
    v31 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v32);
    (*(*(v31 + 8) + 32))(&aBlock, v32);
    v33 = aBlock;
    v34 = swift_getKeyPath();
    j = sub_192099DDC(v34);

    if (j)
    {
      if (*(j + 16))
      {
        LODWORD(j) = *(j + 32);

        if (j != 3)
        {
          if (qword_1ED74C6B0 != -1)
          {
            goto LABEL_66;
          }

          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    while (1)
    {
      v46 = a1[3];
      v45 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v46);
      (*(*(v45 + 8) + 32))(&aBlock, v46);
      v47 = aBlock;
      v48 = swift_getKeyPath();
      v49 = sub_1920668D0(v48);

      v50 = v119;
      if (v49)
      {
      }

      sub_192226450();
      v52 = a1[3];
      v51 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v52);
      (*(*(v51 + 8) + 32))(&aBlock, v52);
      v53 = aBlock;
      v54 = swift_getKeyPath();
      v55 = sub_1920668D0(v54);

      if (v55)
      {
        v56 = v126;
        if (*(v55 + 2))
        {

          sub_192226470();
        }

        else
        {
        }
      }

      else
      {
        v56 = v126;
      }

      sub_192226410();
      sub_19202CFFC(&v56[OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_defaultImageType], v19, &qword_1EADF13E8, &qword_19223AEB0);
      sub_192226400();
      v130 = &type metadata for FeatureFlags.Widgets;
      v131 = sub_19202DBA4();
      LOBYTE(aBlock) = 19;
      v57 = sub_192225420();
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      if (v57)
      {
        sub_192226480();
      }

      v58 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_includeSelectableRegions;
      swift_beginAccess();
      if (v56[v58] == 1)
      {
        v59 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_computedSelectableRegions;
        swift_beginAccess();
        *&v56[v59] = MEMORY[0x1E69E7CC8];
      }

      _widgetkit_objc_autoreleasePoolPop(v113);
      *(v50 + 16) = _widgetkit_objc_autoreleasePoolPush();
      v135 = 0;
      v136[0] = MEMORY[0x1E69E7CC0];
      v133 = 0;
      v134 = 0;
      if (qword_1ED74B868[0] != -1)
      {
        swift_once();
      }

      v9 = qword_1ED74CBE0;
      v19 = a1[3];
      v60 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v19);
      v12 = *(v60 + 8);
      v15 = *(v12 + 16);
      v61 = v9;
      LODWORD(j) = v61;
      (v15)(v19, v12);
      sub_1922257D0();
      sub_1922280E0();
      sub_1922257C0();
      v6 = v115;
      v62 = v115[2];
      v63 = v114;
      v64 = *(v114 + 2);
      if ((v62 * v64) >> 64 == (v62 * v64) >> 63)
      {
        break;
      }

      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      swift_once();
LABEL_11:
      v35 = sub_1922258B0();
      __swift_project_value_buffer(v35, qword_1ED74CCC8);
      v36 = sub_192225890();
      v37 = sub_192227FB0();
      if (os_log_type_enabled(v36, v37))
      {
        v110 = v36;
        v38 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        aBlock = v109;
        v111 = v38;
        *v38 = 136446210;
        LODWORD(v112) = v37;
        if (j)
        {
          sub_192226680();
        }

        else
        {
          sub_192226670();
        }

        (*(v117 + 32))(v15, v12, v118);
        v39 = sub_192227990();
        v41 = sub_19202B8CC(v39, v40, &aBlock);

        v42 = v111;
        *(v111 + 4) = v41;
        v43 = v110;
        _os_log_impl(&dword_192028000, v110, v112, "Archive deployment version: %{public}s", v42, 0xCu);
        v44 = v109;
        __swift_destroy_boxed_opaque_existential_1(v109);
        MEMORY[0x193B0C7F0](v44, -1, -1);
        MEMORY[0x193B0C7F0](v42, -1, -1);
      }

      else
      {
      }

      if (j)
      {
        sub_192226680();
      }

      else
      {
        sub_192226670();
      }

      (*(v117 + 32))(v9, v6, v118);
      sub_192226430();
    }

    MEMORY[0x1EEE9AC00](v62 * v64);
    v65 = v119;
    *(&v109 - 12) = v119;
    *(&v109 - 11) = v6;
    v66 = v122;
    *(&v109 - 10) = v63;
    *(&v109 - 9) = v66;
    v9 = v126;
    *(&v109 - 8) = v124;
    *(&v109 - 7) = v9;
    *(&v109 - 6) = a1;
    *(&v109 - 5) = &v135;
    *(&v109 - 4) = v136;
    *(&v109 - 3) = &v134;
    *(&v109 - 2) = &v133;
    v67 = v123;
    v68 = sub_1922263A0();
    v19 = v67;
    if (v67)
    {
      (*(v120 + 8))(v125, v121);

      _widgetkit_objc_autoreleasePoolPop(*(v65 + 16));
      sub_192175598();

      v70 = v134;
LABEL_38:
    }

    v122 = v68;
    v123 = v69;

    v72 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_failIfBackgroundIsMissing;
    swift_beginAccess();
    if (v9[v72])
    {
      v73 = v135;
      if (v135)
      {
        swift_willThrow();
        v74 = v73;
        v75 = sub_192039140(v122, v123);
        (*(v120 + 8))(v125, v121, v75);
        _widgetkit_objc_autoreleasePoolPop(*(v119 + 16));
        sub_192175598();

        v76 = v73;
        goto LABEL_47;
      }
    }

    v77 = v134;
    v15 = v125;
    if (v134)
    {
      break;
    }

    v77 = v133;
    if (v133)
    {
      swift_willThrow();
      v80 = v77;
      v81 = sub_192039140(v122, v123);
      (*(v120 + 8))(v15, v121, v81);
      _widgetkit_objc_autoreleasePoolPop(*(v119 + 16));
      sub_192175598();

      goto LABEL_46;
    }

    sub_1922280D0();
    sub_1922257C0();
    v82 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_largestImageSizeByFamily;
    swift_beginAccess();
    v83 = *&v9[v82];
    v84 = *(v83 + 64);
    v112 = v83 + 64;
    v85 = 1 << *(v83 + 32);
    v86 = -1;
    if (v85 < 64)
    {
      v86 = ~(-1 << v85);
    }

    v12 = v86 & v84;
    v111 = (v85 + 63) >> 6;
    v114 = "defaultImageType";
    v113 = &v129;
    v115 = v83;

    v6 = 0;
    for (j = v119; v12; j = v119)
    {
      v87 = v6;
LABEL_56:
      v88 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v89 = (v87 << 10) | (16 * v88);
      v90 = v115[7];
      v91 = (v115[6] + v89);
      LODWORD(v118) = *v91;
      v92 = *(v91 + 1);
      v93 = (v90 + v89);
      v94 = *v93;
      v95 = v93[1];
      v96 = a1[3];
      v97 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v96);
      v98 = *(v97 + 8);
      v117 = *(v98 + 16);
      v99 = v92;
      v100 = (v117)(v96, v98);
      v101 = swift_allocObject();
      *(v101 + 16) = v100;
      *(v101 + 24) = v118;
      *(v101 + 32) = v95;
      *(v101 + 40) = v99;
      *(v101 + 48) = v94;
      v15 = v99;
      v102 = v100;
      v103 = sub_192227930();
      v104 = swift_allocObject();
      *(v104 + 16) = sub_192179EE4;
      *(v104 + 24) = v101;
      v131 = sub_192179EE8;
      v132 = v104;
      aBlock = MEMORY[0x1E69E9820];
      v128 = 1107296256;
      v129 = sub_19217070C;
      v130 = &block_descriptor_2;
      v105 = _Block_copy(&aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v105);

      v9 = v126;
    }

    while (1)
    {
      v87 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v87 >= v111)
      {

        sub_192175074();
        (*(v120 + 8))(v125, v121);
        v106 = v116;
        v107 = v123;
        *v116 = v122;
        v106[1] = v107;
        _widgetkit_objc_autoreleasePoolPop(*(j + 16));
        sub_192175598();

        v70 = 0;
        goto LABEL_38;
      }

      v12 = *(v112 + 8 * v87);
      v6 = (v6 + 1);
      if (v12)
      {
        v6 = v87;
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_63:
    ;
  }

  swift_willThrow();
  v78 = v77;
  v79 = sub_192039140(v122, v123);
  (*(v120 + 8))(v15, v121, v79);
  _widgetkit_objc_autoreleasePoolPop(*(v119 + 16));
  sub_192175598();

LABEL_46:
  v76 = v135;
LABEL_47:
}

double static WidgetArchiver.archive(_:to:delegate:)(void *a1, uint64_t a2, char *a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v6 = a1[3];
    v7 = a1[4];
    v8 = __swift_project_boxed_opaque_existential_1(a1, v6);
    a1 = sub_19217869C(v8, v6, v7);
    v5 = a1;
  }

  MEMORY[0x1EEE9AC00](a1);
  v10[2] = a2;

  sub_1921718D8(v4, v5, sub_192178C14, v10);

  return result;
}

void static WidgetArchiver.archive(_:delegate:)(void *a1, char *a2)
{
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v5 = a1[3];
    v6 = a1[4];
    v7 = __swift_project_boxed_opaque_existential_1(a1, v5);
    v4 = sub_19217869C(v7, v5, v6);
  }

  sub_1921728C8(a1, v4, v2, &v8);
}

uint64_t WidgetArchiver.ArchivingDelegate.__allocating_init(with:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = sub_192178254(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

unint64_t WidgetArchiver.ArchivingError.errorDescription.getter()
{
  v1 = *v0;
  if (*(v0 + 32) <= 1u)
  {
    if (!*(v0 + 32))
    {
      v2 = *(v1 + 16);
      if (v2)
      {
        v16 = MEMORY[0x1E69E7CC0];
        sub_192071C64(0, v2, 0);
        v3 = v16;
        v4 = v1 + 32;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF6D0, &qword_19222DD58);
          v5 = sub_192227990();
          v17 = v3;
          v8 = *(v3 + 16);
          v7 = *(v3 + 24);
          if (v8 >= v7 >> 1)
          {
            v10 = v5;
            v11 = v6;
            sub_192071C64((v7 > 1), v8 + 1, 1);
            v6 = v11;
            v5 = v10;
            v3 = v17;
          }

          *(v3 + 16) = v8 + 1;
          v9 = v3 + 16 * v8;
          *(v9 + 32) = v5;
          *(v9 + 40) = v6;
          v4 += 8;
          --v2;
        }

        while (v2);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
      sub_1920CF680();
      v12 = sub_1922278A0();
      v14 = v13;

      sub_192228400();
      MEMORY[0x193B0A990](0xD00000000000004FLL, 0x800000019224C7E0);
      MEMORY[0x193B0A990](v12, v14);

      return 0;
    }

    sub_192228400();
    MEMORY[0x193B0A990](0xD000000000000026, 0x800000019224C7B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF420, &unk_19222D820);
LABEL_12:
    sub_1922285A0();
    return 0;
  }

  if (*(v0 + 32) == 2)
  {
    sub_192228400();
    MEMORY[0x193B0A990](0xD00000000000003FLL, 0x800000019224C710);
    type metadata accessor for CGSize(0);
    sub_1922285A0();
    MEMORY[0x193B0A990](0xD000000000000020, 0x800000019224C750);
    goto LABEL_12;
  }

  return 0xD000000000000024;
}

uint64_t sub_192173F0C()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  sub_1922281E0();
  return sub_192228B30();
}

uint64_t sub_192173FB0()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  sub_1922281E0();
  return sub_192228B30();
}

uint64_t sub_19217400C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1920EDA18();
  return sub_1922281D0() & 1;
}

uint64_t WidgetArchiver.ArchivingDelegate.SelectableRegionKey.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_192225150();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id WidgetArchiver.ArchivingDelegate.SelectableRegionKey.environment.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey(0) + 20));
  *a1 = v3;

  return v3;
}

uint64_t WidgetArchiver.ArchivingDelegate.SelectableRegionKey.init(date:environment:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_192225150();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t static WidgetArchiver.ArchivingDelegate.SelectableRegionKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_192225120() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  sub_1920EDA18();
  v7 = v5;
  v8 = v6;
  v9 = sub_1922281D0();

  return v9 & 1;
}

uint64_t WidgetArchiver.ArchivingDelegate.SelectableRegionKey.hash(into:)(uint64_t a1)
{
  sub_192225150();
  sub_1921796CC(&qword_1EADEEEC0, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_192227890();
  type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey(0);
  WidgetEnvironment.Storage.hash.getter();
  return MEMORY[0x193B0BA90]();
}

uint64_t WidgetArchiver.ArchivingDelegate.SelectableRegionKey.hashValue.getter()
{
  sub_192228AD0();
  sub_192225150();
  sub_1921796CC(&qword_1EADEEEC0, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_192227890();
  type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey(0);
  WidgetEnvironment.Storage.hash.getter();
  MEMORY[0x193B0BA90]();
  return sub_192228B30();
}

uint64_t sub_192174350()
{
  sub_192228AD0();
  sub_192225150();
  sub_1921796CC(&qword_1EADEEEC0, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_192227890();
  WidgetEnvironment.Storage.hash.getter();
  MEMORY[0x193B0BA90]();
  return sub_192228B30();
}

uint64_t sub_1921743F8(uint64_t a1)
{
  sub_192225150();
  sub_1921796CC(&qword_1EADEEEC0, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_192227890();
  WidgetEnvironment.Storage.hash.getter();
  return MEMORY[0x193B0BA90]();
}

uint64_t sub_192174488()
{
  sub_192228AD0();
  sub_192225150();
  sub_1921796CC(&qword_1EADEEEC0, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_192227890();
  WidgetEnvironment.Storage.hash.getter();
  MEMORY[0x193B0BA90]();
  return sub_192228B30();
}

uint64_t sub_19217452C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_192225120() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  sub_1920EDA18();
  v9 = v7;
  v10 = v8;
  v11 = sub_1922281D0();

  return v11 & 1;
}

uint64_t WidgetArchiver.ArchivingDelegate.SelectableRegion.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WidgetArchiver.ArchivingDelegate.SelectableRegion.accessibilityNode.getter()
{
  v1 = *(v0 + 48);
  sub_19206A874(v1, *(v0 + 56));
  return v1;
}

double WidgetArchiver.ArchivingDelegate.systemVersion.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_systemVersion);
  *a1 = result;
  return result;
}

uint64_t sub_192174670()
{
  v1 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_includeSelectableRegions;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1921746B4(char a1)
{
  v3 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_includeSelectableRegions;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_192174764(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_computedSelectableRegions;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

double sub_1921747CC()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_192174814(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_computedSelectableRegions;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1921748CC()
{
  v1 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_failIfBackgroundIsMissing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_192174910(char a1)
{
  v3 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_failIfBackgroundIsMissing;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1921749C0()
{
  v1 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_failIfAnyTypeFailedToEncode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_192174A04(char a1)
{
  v3 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_failIfAnyTypeFailedToEncode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_192174AB4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF250, &qword_19222C6C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v44 - v3;
  v5 = sub_1922261D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_viewCollection;
  sub_19202CFFC(v0 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_viewCollection, v47, &qword_1EADF13E0, &unk_19223AEA0);
  v10 = v48;
  if (v48)
  {
    v11 = v49;
    __swift_project_boxed_opaque_existential_1(v47, v48);
    v12 = (*(v11 + 16))(v10, v11);
    v13 = [v12 extensionIdentity];

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
    v14 = sub_192225510();
    v16 = v15;
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_1(v47);
    if (v14 == 0xD000000000000026 && 0x80000001922481D0 == v16)
    {

      return 0;
    }

    v17 = sub_1922289A0();

    if (v17)
    {
      return 0;
    }
  }

  else
  {
    sub_192033970(v47, &qword_1EADF13E0, &unk_19223AEA0);
  }

  v18 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_currentEnvironment;
  swift_beginAccess();
  sub_19202CFFC(v1 + v18, v4, &qword_1EADEF250, &qword_19222C6C0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v19 = &qword_1EADEF250;
    v20 = &qword_19222C6C0;
    v21 = v4;
LABEL_16:
    sub_192033970(v21, v19, v20);
    return 0;
  }

  (*(v6 + 32))(v8, v4, v5);
  sub_19202CFFC(v1 + v9, &v45, &qword_1EADF13E0, &unk_19223AEA0);
  if (!v46)
  {
    (*(v6 + 8))(v8, v5);
    v19 = &qword_1EADF13E0;
    v20 = &unk_19223AEA0;
    v21 = &v45;
    goto LABEL_16;
  }

  sub_19203832C(&v45, v47);
  v22 = sub_1920C8ADC();
  v24 = v23;
  v26 = v25;
  v27 = v48;
  v28 = v49;
  __swift_project_boxed_opaque_existential_1(v47, v48);
  v29 = (*(v28 + 16))(v27, v28);
  v30 = [v29 family];

  v31 = v48;
  v32 = v49;
  __swift_project_boxed_opaque_existential_1(v47, v48);
  v33 = (*(v32 + 24))(v31, v32);
  sub_192040FB0();
  sub_1922261E0();
  v34 = v45;
  if (*(v26 + 16) && (v35 = sub_1920B733C(v30), (v36 & 1) != 0))
  {
    v37 = *(v26 + 56) + 24 * v35;
    v38 = *(v37 + 8);
    v39 = *v37;
    v40 = v33;
    v41 = v34;
  }

  else
  {
    v40 = v33;
    v41 = v34;
    v39 = v22;
    v38 = v24;
  }

  v42 = sub_1920C8850(v40, v41, v39, v38);

  (*(v6 + 8))(v8, v5);
  __swift_destroy_boxed_opaque_existential_1(v47);
  return v42;
}

uint64_t sub_192174F68(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_unencodeableTypes;
  swift_beginAccess();
  v4 = *(v1 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v3) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1920C3548(0, *(v4 + 2) + 1, 1, v4);
    *(v1 + v3) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1920C3548((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  *&v4[8 * v7 + 32] = a1;
  *(v1 + v3) = v4;
  return swift_endAccess();
}

void *sub_19217503C(void *a1)
{
  result = sub_192178C60(a1);
  if (!v1)
  {
    v3 = result;
    v4 = result;
    return v3;
  }

  return result;
}

uint64_t sub_192175074()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_unencodeableTypes;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  if (*(v4 + 16))
  {
    v9[2] = *(v1 + v2);
    memset(&v9[3], 0, 24);
    v10 = 0;

    v5 = WidgetArchiver.ArchivingError.errorDescription.getter();
    if (v6)
    {
      v9[0] = v5;
      v9[1] = v6;
      sub_192175178(v9);
    }

    v7 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_failIfAnyTypeFailedToEncode;
    swift_beginAccess();
    if (*(v1 + v7))
    {
      sub_192179630();
      swift_allocError();
      *v8 = v4;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      return swift_willThrow();
    }

    else
    {
    }
  }

  return result;
}

void sub_192175178(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (qword_1ED749B40 != -1)
  {
    swift_once();
  }

  v3 = sub_1922258B0();
  __swift_project_value_buffer(v3, qword_1ED74C788);

  v4 = sub_192225890();
  v5 = sub_192227F90();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_19202B8CC(v2, v1, &v8);
    _os_log_impl(&dword_192028000, v4, v5, "%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x193B0C7F0](v7, -1, -1);
    MEMORY[0x193B0C7F0](v6, -1, -1);
  }
}

uint64_t WidgetArchiver.ArchivingDelegate.deinit()
{
  sub_192179F60(v0 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_bundleStub, type metadata accessor for BundleStub);

  sub_192033970(v0 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_currentEnvironment, &qword_1EADEF250, &qword_19222C6C0);

  sub_192033970(v0 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_viewCollection, &qword_1EADF13E0, &unk_19223AEA0);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_descriptorQuerying));

  sub_192033970(v0 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_defaultImageType, &qword_1EADF13E8, &qword_19223AEB0);
  return v0;
}

uint64_t WidgetArchiver.ArchivingDelegate.__deallocating_deinit()
{
  WidgetArchiver.ArchivingDelegate.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_192175408(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_unencodeableTypes;
  swift_beginAccess();
  v5 = *(v3 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v4) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1920C3548(0, *(v5 + 2) + 1, 1, v5);
    *(v3 + v4) = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1920C3548((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  *&v5[8 * v8 + 32] = a1;
  *(v3 + v4) = v5;
  return swift_endAccess();
}

void *sub_1921754E0(void *a1)
{
  result = sub_192178C60(a1);
  if (!v1)
  {
    v3 = result;
    v4 = result;
    return v3;
  }

  return result;
}

uint64_t sub_192175520(uint64_t a1)
{
  v3 = (*v1 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_descriptorQuerying);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  return (*(v5 + 8))(a1, v4, v5);
}

id sub_192175598()
{
  v0 = objc_opt_self();
  result = [v0 currentState];
  if (result)
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v2 = sub_1922258B0();
    __swift_project_value_buffer(v2, qword_1ED74CCC8);
    v3 = sub_192225890();
    v4 = sub_192227F80();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_192028000, v3, v4, "Flushing CATransaction because one was opened during archiving.", v5, 2u);
      MEMORY[0x193B0C7F0](v5, -1, -1);
    }

    return [v0 flush];
  }

  return result;
}

uint64_t sub_1921756BC(int64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, void *a8, void **a9, void *a10)
{
  v191 = a8;
  v195 = a7;
  v197 = a6;
  v194 = a4;
  v193 = a3;
  v188 = sub_192226BA0();
  v196 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v166 = &v165 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey(0);
  MEMORY[0x1EEE9AC00](v176);
  v177 = &v165 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF218, &qword_19223B3F0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v167 = &v165 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v185 = &v165 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v172 = &v165 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v173 = &v165 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v192 = &v165 - v23;
  v181 = type metadata accessor for WidgetViewMetadata(0);
  v183 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v182 = &v165 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v189 = &v165 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v201 = &v165 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF250, &qword_19222C6C0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v165 - v30;
  v32 = sub_1922265A0();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v165 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_192225E00();
  MEMORY[0x1EEE9AC00](v36 - 8);
  v37 = sub_1922261D0();
  v199 = *(v37 - 8);
  v200 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v187 = &v165 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v165 - v40;
  v42 = type metadata accessor for ViewableTimelineEntry(0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v165 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  _widgetkit_objc_autoreleasePoolPop(*(a2 + 16));
  *(a2 + 16) = _widgetkit_objc_autoreleasePoolPush();
  sub_192175598();
  v198 = v44;
  v45 = v44;
  v46 = v41;
  v184 = a1;
  sub_1921F9F9C(v45, v41, a1, v193, v194);
  v206 = &type metadata for FeatureFlags.Widgets;
  v47 = sub_19202DBA4();
  v207 = v47;
  LOBYTE(v205) = 1;
  LOBYTE(a2) = sub_192225420();
  __swift_destroy_boxed_opaque_existential_1(&v205);
  if ((a2 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (qword_1ED74BAE8 != -1)
  {
    goto LABEL_64;
  }

  while (1)
  {
    if (dyld_program_sdk_at_least())
    {
      sub_192225DF0();
      sub_192225FF0();
    }

LABEL_5:
    v186 = sub_19203B3CC();
    sub_1922261E0();
    v48 = v205;
    v49 = [v205 dynamicTextSupport];

    if (v49 == 2)
    {
      (*(v33 + 104))(v35, *MEMORY[0x1E697F680], v32);
      sub_192225ED0();
    }

    v190 = a10;
    *&v205 = *&v198[*(v42 + 20)];

    *&v205 = sub_192227570();
    sub_1922264D0();
    v51 = v199;
    v50 = v200;
    v52 = v199 + 16;
    v53 = *(v199 + 16);
    v53(v187, v46, v200);
    sub_192226360();
    v175 = v52;
    v174 = v53;
    v53(v31, v46, v50);
    (*(v51 + 56))(v31, 0, 1, v50);
    v54 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_currentEnvironment;
    v55 = v195;
    swift_beginAccess();
    sub_192179EF0(v31, v55 + v54);
    swift_endAccess();
    v56 = v191;
    v57 = v191[3];
    v58 = v191[4];
    __swift_project_boxed_opaque_existential_1(v191, v57);
    v59 = (*(*(v58 + 8) + 16))(v57);
    v60 = (v55 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_descriptorQuerying);
    v61 = *(v55 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_descriptorQuerying + 24);
    v62 = v60[4];
    __swift_project_boxed_opaque_existential_1(v60, v61);
    (*(v62 + 8))(v59, v61, v62);

    v206 = &type metadata for FeatureFlags.Widgets;
    v207 = v47;
    LOBYTE(v205) = 0;
    LOBYTE(v59) = sub_192225420();
    __swift_destroy_boxed_opaque_existential_1(&v205);
    if (v59)
    {
      if (qword_1ED74BAE8 != -1)
      {
        swift_once();
      }

      v63 = dyld_program_sdk_at_least();
      v64 = [objc_opt_self() mainBundle];
      v65 = [v64 bundleIdentifier];

      if (v65 && (sub_192227960(), v65, v66 = sub_192227A10(), , (v66 & 1) != 0))
      {
        v68 = v56[3];
        v67 = v56[4];
        __swift_project_boxed_opaque_existential_1(v56, v68);
        v69 = (*(*(v67 + 8) + 16))(v68);
        [v69 family];

        IsAccessory = CHSWidgetFamilyIsAccessory();
      }

      else
      {
        IsAccessory = 0;
      }

      v72 = v56[3];
      v71 = v56[4];
      __swift_project_boxed_opaque_existential_1(v56, v72);
      v73 = (*(*(v71 + 8) + 16))(v72);
      LOBYTE(v72) = sub_192192560(v73, v201);

      v74 = 1;
      if ((v72 & 1) == 0 && (IsAccessory & 1) == 0)
      {
        v76 = v56[3];
        v75 = v56[4];
        __swift_project_boxed_opaque_existential_1(v56, v76);
        v77 = (*(*(v75 + 8) + 16))(v76);
        v78 = [v77 family];

        v74 = v78 == 12;
      }

      sub_19217A6EC();
      sub_1922263F0();
      v79 = v205;
      sub_192056F6C();
      sub_1922261E0();
      if (v63 && (v79 & 1) == 0 && !v74 && v205)
      {
        sub_19217A740();
        *&v205 = sub_192227570();
        sub_1922264D0();
        if (qword_1ED749B40 != -1)
        {
          swift_once();
        }

        v80 = sub_1922258B0();
        __swift_project_value_buffer(v80, qword_1ED74C788);
        v81 = sub_192225890();
        v82 = sub_192227F90();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          *v83 = 0;
          MEMORY[0x193B0C7F0](v83, -1, -1);
        }

        v84 = *MEMORY[0x1E69941E8];
        v85 = sub_19214036C(MEMORY[0x1E69E7CC0]);
        v86 = sub_192227960();
        v88 = v87;
        v206 = MEMORY[0x1E69E6158];
        *&v205 = 0xD000000000000021;
        *(&v205 + 1) = 0x800000019224B7E0;
        sub_19203BEDC(&v205, &v202);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v204 = v85;
        sub_19213DB28(&v202, v86, v88, isUniquelyReferenced_nonNull_native);

        v90 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v91 = sub_192227830();

        v92 = [v90 initWithDomain:v84 code:1302 userInfo:v91];

        v93 = *a9;
        *a9 = v92;

        v56 = v191;
      }
    }

    sub_1922261E0();
    v94 = v205;
    sub_192225EA0();
    [v94 _effectiveSizePixelAlignedForDisplayScale_];

    sub_1922264A0();
    v96 = v56[3];
    v95 = v56[4];
    __swift_project_boxed_opaque_existential_1(v56, v96);

    v186 = v46;
    sub_1922261E0();
    v97 = v205;
    [v205 safeAreaInsets];

    sub_1922263E0();
    v98 = v181;
    v99 = *(v181 + 28);
    v100 = sub_192225020();
    v171 = *(v100 - 8);
    v102 = v171 + 56;
    v101 = *(v171 + 56);
    v42 = v189;
    v101(&v189[v99], 1, 1, v100);
    v103 = v98[8];
    v104 = *(v196 + 56);
    v105 = v188;
    v104(v42 + v103, 1, 1, v188);
    v179 = v98[9];
    v104(&v179[v42], 1, 1, v105);
    v180 = v98[10];
    *v42 = 0;
    *(v42 + 2) = 0;
    sub_192033970(v42 + v99, &qword_1EADEEE10, &unk_19222B630);
    v181 = v99;
    v170 = v100;
    v169 = v102;
    v168 = v101;
    v101((v42 + v99), 1, 1, v100);
    sub_192033970(v42 + v103, &qword_1EADEF218, &qword_19223B3F0);
    v178 = v103;
    v104(v42 + v103, 1, 1, v105);
    v106 = v179;
    sub_192033970(&v179[v42], &qword_1EADEF218, &qword_19223B3F0);
    v107 = v105;
    v104(&v106[v42], 1, 1, v105);
    v46 = v197;
    *(v42 + v180) = 2;
    sub_19206EC6C();
    v32 = v192;
    sub_1922263F0();
    sub_192226A60();
    sub_1921796CC(&qword_1ED749F50, MEMORY[0x1E697CAA0], MEMORY[0x1E697CA98]);
    v108 = v185;
    sub_1922263F0();
    v109 = *(v196 + 48);
    v180 = v196 + 48;
    v179 = v109;
    v110 = (v109)(v108, 1, v107);
    v111 = v182;
    if (v110 != 1)
    {
      sub_19217A684(v108, v42 + v178, &qword_1EADEF218, &qword_19223B3F0);
      v112 = v172;
      sub_19202CFFC(v32, v172, &qword_1EADEEE10, &unk_19222B630);
      v113 = v171;
      v114 = *(v171 + 48);
      v115 = v170;
      if (v114(v112, 1, v170) == 1)
      {
        v116 = v115;
        v117 = v167;
        sub_19202CFFC(v108, v167, &qword_1EADEF218, &qword_19223B3F0);
        v118 = v188;
        v119 = (v179)(v117, 1, v188);
        v120 = v173;
        if (v119 == 1)
        {
          sub_192033970(v32, &qword_1EADEEE10, &unk_19222B630);
          sub_192033970(v117, &qword_1EADEF218, &qword_19223B3F0);
          v168(v120, 1, 1, v116);
        }

        else
        {
          sub_192226A70();
          sub_192033970(v32, &qword_1EADEEE10, &unk_19222B630);
          (*(v196 + 8))(v117, v118);
        }

        v121 = v114(v112, 1, v116);
        v46 = v197;
        if (v121 != 1)
        {
          sub_192033970(v112, &qword_1EADEEE10, &unk_19222B630);
        }
      }

      else
      {
        sub_192033970(v32, &qword_1EADEEE10, &unk_19222B630);
        v120 = v173;
        (*(v113 + 32))(v173, v112, v115);
        v168(v120, 0, 1, v115);
      }

      sub_19205EC64(v120, v32);
      v42 = v189;
    }

    sub_19217A684(v32, v42 + v181, &qword_1EADEEE10, &unk_19222B630);
    sub_19204E754(v42, v111, type metadata accessor for WidgetViewMetadata);
    v122 = v190;
    v123 = *v190;
    v124 = swift_isUniquelyReferenced_nonNull_native();
    *v122 = v123;
    v33 = v195;
    if ((v124 & 1) == 0)
    {
      v123 = sub_1920C355C(0, v123[2] + 1, 1, v123);
      *v190 = v123;
    }

    v47 = v184;
    v126 = v123[2];
    v125 = v123[3];
    if (v126 >= v125 >> 1)
    {
      v123 = sub_1920C355C((v125 > 1), v126 + 1, 1, v123);
      *v190 = v123;
    }

    v123[2] = v126 + 1;
    sub_19203D160(v111, v123 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v126, type metadata accessor for WidgetViewMetadata);
    if (qword_1ED74AF20 != -1)
    {
      swift_once();
    }

    v127 = sub_1922258B0();
    v31 = __swift_project_value_buffer(v127, qword_1ED74CBA8);
    v128 = sub_192225890();
    v129 = sub_192227F80();
    v35 = &property descriptor for TimelineEntryRelevance.hashValue;
    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      *v130 = 134349056;
      *(v130 + 4) = v47;
      _os_log_impl(&dword_192028000, v128, v129, "Archiving entry %{public}ld", v130, 0xCu);
      v131 = v130;
      v32 = v192;
      MEMORY[0x193B0C7F0](v131, -1, -1);
    }

    v132 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_includeSelectableRegions;
    swift_beginAccess();
    if (*(v33 + v132) == 1)
    {
      v133 = sub_192225890();
      v134 = sub_192227F80();
      if (os_log_type_enabled(v133, v134))
      {
        v135 = swift_slowAlloc();
        *v135 = 0;
        _os_log_impl(&dword_192028000, v133, v134, "Asked to include selectable regions.", v135, 2u);
        v136 = v135;
        v32 = v192;
        MEMORY[0x193B0C7F0](v136, -1, -1);
      }

      v204 = MEMORY[0x1E69E7CC0];
      v137 = sub_192225890();
      v138 = sub_192227F80();
      if (os_log_type_enabled(v137, v138))
      {
        v139 = swift_slowAlloc();
        *v139 = 134349056;
        *(v139 + 4) = v47;
        _os_log_impl(&dword_192028000, v137, v138, "%{public}ld BEGIN", v139, 0xCu);
        v140 = v139;
        v32 = v192;
        MEMORY[0x193B0C7F0](v140, -1, -1);
      }

      MEMORY[0x1EEE9AC00](v141);
      *(&v165 - 2) = v47;
      *(&v165 - 1) = &v204;
      sub_192226350();
      v142 = sub_192225890();
      v143 = sub_192227F80();
      if (os_log_type_enabled(v142, v143))
      {
        v144 = swift_slowAlloc();
        *v144 = 134349056;
        *(v144 + 4) = v47;
        _os_log_impl(&dword_192028000, v142, v143, "%{public}ld END", v144, 0xCu);
        MEMORY[0x193B0C7F0](v144, -1, -1);
      }

      v145 = sub_192225150();
      v35 = v177;
      (*(*(v145 - 8) + 16))(v177, v198, v145);
      v146 = v187;
      v147 = v200;
      v174(v187, v186, v200);
      *&v202 = [objc_allocWithZone(type metadata accessor for WidgetEnvironment.Storage()) init];
      WidgetEnvironment.apply(environmentValues:)();
      (*(v199 + 8))(v146, v147);
      *&v35[*(v176 + 20)] = v202;
      v31 = v204;
      v148 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_computedSelectableRegions;
      swift_beginAccess();

      v149 = swift_isUniquelyReferenced_nonNull_native();
      v203 = *(v33 + v148);
      *(v33 + v148) = 0x8000000000000000;
      sub_19213E3A0(v31, v35, v149);
      *(v33 + v148) = v203;
      swift_endAccess();
      sub_192179F60(v35, type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey);
    }

    v150 = COERCE_DOUBLE(sub_192174AB4());
    if ((v152 & 1) == 0)
    {
      v153 = v150;
      v154 = v151;
      if (v150 != 0.0 || v151 != 0.0)
      {
        v155 = v178;
        v31 = v188;
        if (!(v179)(v42 + v178, 1, v188))
        {
          v161 = v196;
          v162 = v42 + v155;
          v163 = v166;
          (*(v196 + 16))(v166, v162, v31);
          sub_192177864(v153, v154);
          v164 = *(v161 + 8);
          v35 = (v161 + 8);
          v164(v163, v31);
        }
      }
    }

    v156 = *(v193 + 16);
    v157 = *(v194 + 16);
    v158 = v156 * v157;
    if ((v156 * v157) >> 64 == (v156 * v157) >> 63)
    {
      break;
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    swift_once();
  }

  if (v47 < 0 || v158 <= v47)
  {
    goto LABEL_63;
  }

  if (v47 + 1 == v158)
  {
    v159 = *v190;

    sub_192179FC0(v191, v33, v159);

    sub_1922263D0();
  }

  sub_192033970(v32, &qword_1EADEEE10, &unk_19222B630);
  sub_192033970(v201, &qword_1EADEEE20, &qword_19222B670);
  (*(v199 + 8))(v186, v200);
  sub_192179F60(v198, type metadata accessor for ViewableTimelineEntry);
  sub_192033970(v108, &qword_1EADEF218, &qword_19223B3F0);
  return sub_192179F60(v42, type metadata accessor for WidgetViewMetadata);
}

void sub_1921770EC(uint64_t a1, uint64_t a2, char **a3)
{
  v74 = a3;
  v72 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1408, &qword_19223B3F8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v73 = &v70 - v5;
  v6 = sub_1922267A0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v70 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v70 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1410, &qword_19223B400);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v70 - v17;
  sub_192226770();
  sub_192228380();
  sub_19217A794(v75);
  v19 = sub_192226C80();
  v20 = swift_dynamicCast();
  v21 = *(*(v19 - 8) + 56);
  if (v20)
  {
    v22 = *(v19 - 8);
    v21(v18, 0, 1, v19);
    v23 = sub_192226C70();
    v25 = v24;
    (*(v22 + 8))(v18, v19);
    if (qword_1ED74AF20 != -1)
    {
      swift_once();
    }

    v26 = sub_1922258B0();
    __swift_project_value_buffer(v26, qword_1ED74CBA8);
    (*(v7 + 16))(v15, a1, v6);

    v27 = sub_192225890();
    v28 = sub_192227F80();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v71 = v23;
      v30 = v29;
      v70 = swift_slowAlloc();
      v75[0] = v70;
      *v30 = 134218498;
      v31 = v71;
      *(v30 + 4) = v72;
      *(v30 + 12) = 2082;
      *(v30 + 14) = sub_19202B8CC(v31, v25, v75);
      *(v30 + 22) = 2082;
      sub_192226780();
      v32 = sub_192228120();
      v33 = v25;
      v35 = v34;
      (*(v7 + 8))(v15, v6);
      v36 = sub_19202B8CC(v32, v35, v75);
      v25 = v33;

      *(v30 + 24) = v36;
      _os_log_impl(&dword_192028000, v27, v28, "%ld Found region: %{public}s with rect: %{public}s", v30, 0x20u);
      v37 = v70;
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v37, -1, -1);
      v38 = v30;
      v23 = v71;
      MEMORY[0x193B0C7F0](v38, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v15, v6);
    }

    v50 = v74;
    sub_192226780();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v59 = v73;
    sub_192226790();
    v60 = sub_192226860();
    v61 = *(v60 - 8);
    if ((*(v61 + 48))(v59, 1, v60) == 1)
    {
      sub_192033970(v59, &qword_1EADF1408, &qword_19223B3F8);
      v62 = 0;
      v63 = 0xF000000000000000;
    }

    else
    {
      v62 = sub_192226850();
      v63 = v64;
      (*(v61 + 8))(v59, v60);
    }

    v65 = *v50;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v50 = v65;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v65 = sub_1920C3584(0, *(v65 + 2) + 1, 1, v65);
      *v50 = v65;
    }

    v68 = *(v65 + 2);
    v67 = *(v65 + 3);
    if (v68 >= v67 >> 1)
    {
      v65 = sub_1920C3584((v67 > 1), v68 + 1, 1, v65);
      *v50 = v65;
    }

    *(v65 + 2) = v68 + 1;
    v69 = &v65[64 * v68];
    *(v69 + 4) = v23;
    *(v69 + 5) = v25;
    *(v69 + 6) = v52;
    *(v69 + 7) = v54;
    *(v69 + 8) = v56;
    *(v69 + 9) = v58;
    *(v69 + 10) = v62;
    *(v69 + 11) = v63;
  }

  else
  {
    v21(v18, 1, 1, v19);
    sub_192033970(v18, &qword_1EADF1410, &qword_19223B400);
    if (qword_1ED74AF20 != -1)
    {
      swift_once();
    }

    v39 = sub_1922258B0();
    __swift_project_value_buffer(v39, qword_1ED74CBA8);
    v40 = *(v7 + 16);
    v41 = v6;
    v40(v12, a1, v6);
    v42 = sub_192225890();
    v43 = sub_192227F80();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v75[0] = v45;
      *v44 = 134349314;
      *(v44 + 4) = v72;
      *(v44 + 12) = 2082;
      v40(v9, v12, v41);
      v46 = sub_192227990();
      v48 = v47;
      (*(v7 + 8))(v12, v41);
      v49 = sub_19202B8CC(v46, v48, v75);

      *(v44 + 14) = v49;
      _os_log_impl(&dword_192028000, v42, v43, "%{public}ld View proxy does not have a selection identifier: %{public}s", v44, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x193B0C7F0](v45, -1, -1);
      MEMORY[0x193B0C7F0](v44, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v12, v6);
    }
  }
}

uint64_t sub_192177864(double a1, double a2)
{
  v20 = sub_192226BA0();
  v5 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  sub_192226B80();
  v11 = sub_192226B70();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_192033970(v10, &qword_1EADEF720, &unk_19222E2F0);
  }

  else
  {
    sub_192177B44(a1, a2);
    if (v2)
    {
      return (*(v12 + 8))(v10, v11);
    }

    (*(v12 + 8))(v10, v11);
  }

  result = sub_192226B90();
  if (result)
  {
    v14 = result;
    v15 = *(result + 16);
    if (v15)
    {
      v16 = 0;
      v21 = v5 + 16;
      v17 = (v5 + 8);
      v18 = v20;
      while (v16 < *(v14 + 16))
      {
        (*(v5 + 16))(v7, v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, v18);
        sub_192177864(a1, a2);
        if (v2)
        {
          (*v17)(v7, v18);
        }

        ++v16;
        result = (*v17)(v7, v18);
        if (v15 == v16)
        {
        }
      }

      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

void sub_192177B44(double a1, double a2)
{
  v3 = v2;
  v6 = sub_192226B50();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_192226B70();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v14, v3, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == *MEMORY[0x1E697CB08])
  {
    (*(v11 + 96))(v14, v10);
    (*(v7 + 32))(v9, v14, v6);
    sub_192177E5C(a1, a2);
    (*(v7 + 8))(v9, v6);
  }

  else if (v15 == *MEMORY[0x1E697CB00])
  {
    (*(v11 + 96))(v14, v10);
    v16 = *v14;
    [*v14 size];
    v18 = v17;
    [v16 scale];
    v20 = v18 * v19;
    [v16 size];
    v22 = v21;
    [v16 scale];
    v24 = v22 * v23;
    if (v20 > a1 || v24 > a2)
    {
      sub_192179630();
      swift_allocError();
      *v26 = v20;
      *(v26 + 8) = v24;
      *(v26 + 16) = a1;
      *(v26 + 24) = a2;
      *(v26 + 32) = 2;
      swift_willThrow();
    }
  }

  else
  {
    sub_192228620();
    __break(1u);
  }
}

void sub_192177E5C(double a1, double a2)
{
  v5 = sub_192225020();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_192226B30();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192226B40();
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == *MEMORY[0x1E697CAF0])
  {
    (*(v10 + 96))(v12, v9);
    (*(v6 + 32))(v8, v12, v5);
    v14 = objc_opt_self();
    v15 = sub_192224FE0();
    v16 = [v14 wk:v15 uniqueWithURL:?];

    sub_192226AF0();
    v2 = v16;
    v17 = sub_192227930();

    v18 = [objc_opt_self() imageNamed:v17 inBundle:v2 withConfiguration:0];

    if (v18)
    {
      [v18 size];
      v20 = v19;
      [v18 scale];
      v22 = v20 * v21;
      [v18 size];
      v24 = v23;
      [v18 scale];
      v26 = v24 * v25;
      if (v22 > a1 || v26 > a2)
      {
        sub_192179630();
        swift_allocError();
        *v28 = v22;
        *(v28 + 8) = v26;
        *(v28 + 16) = a1;
        *(v28 + 24) = a2;
        *(v28 + 32) = 2;
        swift_willThrow();

        (*(v6 + 8))(v8, v5);
        return;
      }

      (*(v6 + 8))(v8, v5);

      goto LABEL_12;
    }
  }

  else
  {
    if (v13 == *MEMORY[0x1E697CAF8])
    {
      return;
    }

    sub_192228620();
    __break(1u);
  }

  (*(v6 + 8))(v8, v5);
  v18 = v2;
LABEL_12:
}

uint64_t sub_192178224@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_192178254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for BundleStub(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[3] = a3;
  v28[4] = a4;
  __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a3 - 8) + 32))();
  if (qword_1ED74BA98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = qword_1ED74BAA0;
  (*(a4 + 8))(a3, a4);
  result = sub_192033A64(v28, v26);
  if (xmmword_1ED74CC80)
  {
    v24 = *xmmword_1ED74CC80;
    v25 = *(qword_1ED74CC90 + 8);
    *&v23 = xmmword_1ED74CC80;
    type metadata accessor for WidgetArchiver.ArchivingDelegate(0);
    v11 = swift_allocObject();
    *(v11 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_includeSelectableRegions) = 0;
    v12 = MEMORY[0x1E69E7CC8];
    *(v11 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_computedSelectableRegions) = MEMORY[0x1E69E7CC8];
    *(v11 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_failIfBackgroundIsMissing) = 0;
    *(v11 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_unencodeableTypes) = MEMORY[0x1E69E7CC0];
    v13 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_currentEnvironment;
    v14 = sub_1922261D0();
    (*(*(v14 - 8) + 56))(v11 + v13, 1, 1, v14);
    *(v11 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_largestImageSizeByFamily) = v12;
    v15 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_allowedImageTypes;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE68, &qword_19223B340);
    v16 = sub_192225790();
    v17 = *(v16 - 8);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_19222B4A0;

    sub_192225780();
    sub_192225750();
    sub_192225770();
    sub_192225760();
    v19 = sub_19216FF08(v18);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v11 + v15) = v19;
    v20 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_defaultImageType;
    sub_192225750();
    (*(v17 + 56))(v11 + v20, 0, 1, v16);
    sub_19203D160(v8, v11 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_bundleStub, type metadata accessor for BundleStub);
    *(v11 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_systemVersion) = v9;
    *(v11 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_failIfAnyTypeFailedToEncode) = 0;
    v21 = v11 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_viewCollection;
    *(v21 + 32) = v27;
    v22 = v26[1];
    *v21 = v26[0];
    *(v21 + 16) = v22;
    sub_19203832C(&v23, v11 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_descriptorQuerying);
    __swift_destroy_boxed_opaque_existential_1(v28);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_19217865C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_19217869C(v3, v1, v2);
}

id sub_19217869C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BundleStub(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a2;
  v44 = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v11 = result;
    v12 = [result isInternalInstall];

    if (v12)
    {
      v13 = [objc_opt_self() processInfo];
      v14 = [v13 environment];

      v15 = sub_192227840();
      if (*(v15 + 16))
      {
        sub_1920440AC(0xD000000000000011, 0x8000000192249120);
        v17 = v16;

        if (v17)
        {
          if (qword_1ED74BA98 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v18 = qword_1ED74BAA0;
          (*(*(a3 + 8) + 8))(a2);
          v19 = type metadata accessor for TestingNilDescriptorQuerying();
          v20 = swift_allocObject();
          v40 = v19;
          v41 = &off_1F06B1F68;
          *&v39 = v20;
          type metadata accessor for WidgetArchiver.ArchivingDelegate(0);
          v21 = swift_allocObject();
          *(v21 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_includeSelectableRegions) = 0;
          v22 = MEMORY[0x1E69E7CC8];
          *(v21 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_computedSelectableRegions) = MEMORY[0x1E69E7CC8];
          *(v21 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_failIfBackgroundIsMissing) = 0;
          *(v21 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_unencodeableTypes) = MEMORY[0x1E69E7CC0];
          v23 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_currentEnvironment;
          v24 = sub_1922261D0();
          (*(*(v24 - 8) + 56))(v21 + v23, 1, 1, v24);
          *(v21 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_largestImageSizeByFamily) = v22;
          v25 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_allowedImageTypes;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE68, &qword_19223B340);
          v26 = sub_192225790();
          v27 = *(v26 - 8);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_19222B4A0;
          sub_192225780();
          sub_192225750();
          sub_192225770();
          sub_192225760();
          v29 = sub_19216FF08(v28);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          *(v21 + v25) = v29;
          v30 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_defaultImageType;
          sub_192225750();
          (*(v27 + 56))(v21 + v30, 0, 1, v26);
          sub_19203D160(v8, v21 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_bundleStub, type metadata accessor for BundleStub);
          *(v21 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_systemVersion) = v18;
          *(v21 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_failIfAnyTypeFailedToEncode) = 0;
          v31 = v21 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_viewCollection;
          *(v31 + 32) = 0;
          *v31 = 0u;
          *(v31 + 16) = 0u;
          sub_19203832C(&v39, v21 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_descriptorQuerying);
          goto LABEL_10;
        }
      }

      else
      {
      }
    }

    v32 = type metadata accessor for WidgetArchiver.ArchivingDelegate(0);
    v33 = __swift_project_boxed_opaque_existential_1(v42, v43);
    v34 = MEMORY[0x1EEE9AC00](v33);
    v36 = &v38 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v37 + 16))(v36, v34);
    v21 = sub_192178254(v36, v32, a2, *(a3 + 8));
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v42);
    return v21;
  }

  __break(1u);
  return result;
}

size_t sub_192178C60(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF250, &qword_19222C6C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v84[-v5];
  v7 = sub_1922261D0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v84[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1ED749B40 != -1)
  {
    swift_once();
  }

  v11 = sub_1922258B0();
  v12 = __swift_project_value_buffer(v11, qword_1ED74C788);
  v13 = a1;
  v88 = v12;
  v14 = sub_192225890();
  v15 = sub_192227F80();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v87 = v8;
    v17 = v7;
    v18 = v16;
    *v16 = 67240704;
    v16[1] = CGImageGetIdentifier();
    *(v18 + 4) = 2050;
    *(v18 + 10) = CGImageGetWidth(v13);
    *(v18 + 9) = 2050;
    *(v18 + 5) = CGImageGetHeight(v13);

    _os_log_impl(&dword_192028000, v14, v15, "Filtered image [%{public}u: %{public}ld-%{public}ld]: enter", v18, 0x1Cu);
    v19 = v18;
    v7 = v17;
    v8 = v87;
    MEMORY[0x193B0C7F0](v19, -1, -1);
  }

  else
  {

    v14 = v13;
  }

  v20 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_currentEnvironment;
  swift_beginAccess();
  sub_19202CFFC(v2 + v20, v6, &qword_1EADEF250, &qword_19222C6C0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_192033970(v6, &qword_1EADEF250, &qword_19222C6C0);
    goto LABEL_19;
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_19203B36C();
  sub_1922261E0();
  v21 = v89;
  sub_19203B3CC();
  sub_1922261E0();
  v22 = v90;
  v23 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_largestImageSizeByFamily;
  swift_beginAccess();
  v24 = *(v2 + v23);
  if (!*(v24 + 16))
  {
    goto LABEL_14;
  }

  v25 = sub_1920B73A8(v21, v22);
  if ((v26 & 1) == 0)
  {

LABEL_14:
    v86 = v22;
    v87 = v7;
    Width = CGImageGetWidth(v13);
    sub_192225EA0();
    v44 = Width / v43;
    Height = CGImageGetHeight(v13);
    sub_192225EA0();
    v47 = Height / v46;
    v48 = v13;
    v49 = sub_192225890();
    v50 = sub_192227F80();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v85 = v21;
      v52 = v51;
      *v51 = 67240704;
      v51[1] = CGImageGetIdentifier();

      *(v52 + 4) = 2050;
      *(v52 + 10) = v44;
      *(v52 + 9) = 2050;
      *(v52 + 5) = v47;
      _os_log_impl(&dword_192028000, v49, v50, "Filtered image [%{public}u]: new largest image: (%{public}f, %{public}f", v52, 0x1Cu);
      v53 = v52;
      v21 = v85;
      MEMORY[0x193B0C7F0](v53, -1, -1);
    }

    else
    {

      v49 = v48;
    }

    swift_beginAccess();
    v54 = v86;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = *(v2 + v23);
    *(v2 + v23) = 0x8000000000000000;
    v56 = v44;
    v57 = v47;
    v58 = v21;
    goto LABEL_18;
  }

  v27 = (*(v24 + 56) + 16 * v25);
  v28 = *v27;
  v29 = v27[1];

  v30 = CGImageGetWidth(v13);
  sub_192225EA0();
  v32 = v30 / v31;
  v33 = CGImageGetHeight(v13);
  sub_192225EA0();
  v35 = v33 / v34;
  if (v28 * v29 < v32 * v35)
  {
    v85 = v21;
    v87 = v7;
    v36 = v13;
    v37 = sub_192225890();
    v38 = sub_192227F80();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v86 = v22;
      v40 = v39;
      *v39 = 67240704;
      v39[1] = CGImageGetIdentifier();

      *(v40 + 4) = 2050;
      *(v40 + 10) = v32;
      *(v40 + 9) = 2050;
      *(v40 + 5) = v35;
      _os_log_impl(&dword_192028000, v37, v38, "Filtered image [%{public}u]: new largest image: (%{public}f, %{public}f", v40, 0x1Cu);
      v41 = v40;
      v22 = v86;
      MEMORY[0x193B0C7F0](v41, -1, -1);
    }

    else
    {

      v37 = v36;
    }

    swift_beginAccess();
    v54 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = *(v2 + v23);
    *(v2 + v23) = 0x8000000000000000;
    v56 = v32;
    v57 = v35;
    v58 = v85;
LABEL_18:
    sub_19213E224(v58, v54, isUniquelyReferenced_nonNull_native, v56, v57);

    *(v2 + v23) = v91;
    swift_endAccess();

    (*(v8 + 8))(v10, v87);
    goto LABEL_19;
  }

  (*(v8 + 8))(v10, v7, v32 * v35, v28 * v29);

LABEL_19:
  *&v59 = COERCE_DOUBLE(sub_192174AB4());
  if (v61)
  {
    v62 = v13;
    v63 = sub_192225890();
    v64 = sub_192227FB0();
    if (!os_log_type_enabled(v63, v64))
    {

      v63 = v62;
LABEL_34:

      return v13;
    }

    v65 = swift_slowAlloc();
    *v65 = 67240704;
    *(v65 + 4) = CGImageGetIdentifier();
    *(v65 + 8) = 2050;
    *(v65 + 10) = CGImageGetWidth(v62);
    *(v65 + 18) = 2050;
    *(v65 + 20) = CGImageGetHeight(v62);

    v66 = "Filtered image [%{public}u: %{public}ld-%{public}ld]: exit (no size constraints configured)";
    v67 = v64;
LABEL_29:
    _os_log_impl(&dword_192028000, v63, v67, v66, v65, 0x1Cu);
    MEMORY[0x193B0C7F0](v65, -1, -1);
    goto LABEL_34;
  }

  v68 = *&v59;
  v69 = v60;
  v70 = CGImageGetWidth(v13);
  result = CGImageGetHeight(v13);
  v72 = v70 * result;
  if ((v70 * result) >> 64 == (v70 * result) >> 63)
  {
    v73 = v13;
    v63 = sub_192225890();
    v74 = sub_192227F80();
    v75 = os_log_type_enabled(v63, v74);
    if (v68 * v69 < v72)
    {
      if (v75)
      {
        v76 = swift_slowAlloc();
        *v76 = 67240704;
        *(v76 + 4) = CGImageGetIdentifier();
        *(v76 + 8) = 2050;
        *(v76 + 10) = CGImageGetWidth(v73);
        *(v76 + 18) = 2050;
        *(v76 + 20) = CGImageGetHeight(v73);

        _os_log_impl(&dword_192028000, v63, v74, "Filtered image [%{public}u: %{public}ld-%{public}ld]: exit (too large)", v76, 0x1Cu);
        MEMORY[0x193B0C7F0](v76, -1, -1);
      }

      else
      {

        v63 = v73;
      }

      v77 = v73;
      v78 = sub_192225890();
      v79 = sub_192227FA0();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 67241216;
        *(v80 + 4) = CGImageGetIdentifier();
        *(v80 + 8) = 2050;
        *(v80 + 10) = CGImageGetWidth(v77);
        *(v80 + 18) = 2050;
        *(v80 + 20) = CGImageGetHeight(v77);

        *(v80 + 28) = 2050;
        *(v80 + 30) = v72;
        *(v80 + 38) = 2050;
        *(v80 + 40) = v68 * v69;
        _os_log_impl(&dword_192028000, v78, v79, "Widget archival failed due to image being too large [%{public}u] - (%{public}ld, %{public}ld), totalArea: %{public}ld > max[%{public}f].", v80, 0x30u);
        MEMORY[0x193B0C7F0](v80, -1, -1);
      }

      else
      {

        v78 = v77;
      }

      v81 = CGImageGetWidth(v77);
      v82 = CGImageGetHeight(v77);
      sub_192179630();
      swift_allocError();
      *v83 = v81;
      *(v83 + 8) = v82;
      *(v83 + 16) = v68;
      *(v83 + 24) = v69;
      *(v83 + 32) = 2;
      swift_willThrow();
      return v13;
    }

    if (!v75)
    {

      v63 = v73;
      goto LABEL_34;
    }

    v65 = swift_slowAlloc();
    *v65 = 67240704;
    *(v65 + 4) = CGImageGetIdentifier();
    *(v65 + 8) = 2050;
    *(v65 + 10) = CGImageGetWidth(v73);
    *(v65 + 18) = 2050;
    *(v65 + 20) = CGImageGetHeight(v73);

    v66 = "Filtered image [%{public}u: %{public}ld-%{public}ld]: exit (allowed)";
    v67 = v74;
    goto LABEL_29;
  }

  __break(1u);
  return result;
}

unint64_t sub_192179630()
{
  result = qword_1EADEDB88;
  if (!qword_1EADEDB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDB88);
  }

  return result;
}

uint64_t sub_1921796CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_setTm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9WidgetKit0A8ArchiverC14ArchivingErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_192179824(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_19217986C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1921798B4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

void sub_192179908(uint64_t a1)
{
  type metadata accessor for BundleStub(319);
  if (v1 <= 0x3F)
  {
    sub_192179D48(319, &qword_1ED74B560, MEMORY[0x1E697F228]);
    if (v2 <= 0x3F)
    {
      sub_192179D48(319, &qword_1ED74B270, MEMORY[0x1E69E8450]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_192179D48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_192228240();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_192179DC4(uint64_t a1)
{
  result = sub_192225150();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_192179E84()
{
  result = qword_1ED749518;
  if (!qword_1ED749518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749518);
  }

  return result;
}

uint64_t sub_192179EF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF250, &qword_19222C6C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_192179F60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_192179FC0(void *a1, uint64_t a2, uint64_t a3)
{
  v59 = a3;
  v5 = type metadata accessor for WidgetArchivableMetadata.EntryMetadata(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_192225150();
  v57 = *(v9 - 8);
  v58 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TimelineReloadPolicy(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v61 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BundleStub(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (&v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for WidgetArchivableMetadata(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v55 = &v52 - v20;
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v56 = (*(*(v22 + 8) + 16))(v21);
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  (*(*(v24 + 8) + 32))(v63, v23);
  v53 = type metadata accessor for BundleStub;
  sub_19204E754(a2 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_bundleStub, v15, type metadata accessor for BundleStub);
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v60 = (*(*(v26 + 8) + 56))(v25);
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  (*(*(v28 + 8) + 64))(v27);
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  (*(*(v30 + 8) + 40))(v29);
  v31 = *(a2 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_systemVersion);
  *&v18[v16[8]] = v56;
  WidgetEnvironment.filterForArchiving()();
  *&v18[v16[7]] = v63[0];
  v56 = v16;
  v32 = v16[6];
  v54 = v18;
  v33 = &v18[v32];
  v34 = v60;
  sub_19204E754(v15, v33, v53);
  v35 = *(v34 + 16);
  if (v35)
  {
    v53 = v15;
    v66 = MEMORY[0x1E69E7CC0];
    sub_19209AD2C(0, v35, 0);
    v36 = v66;
    v37 = v34 + 32;
    do
    {
      sub_192033A64(v37, v63);
      v38 = v64;
      v39 = v65;
      v40 = __swift_project_boxed_opaque_existential_1(v63, v64);
      v41 = MEMORY[0x1EEE9AC00](v40);
      v43 = &v52 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v44 + 16))(v43, v41);
      sub_1920E1CC4(v43, v38, v39, v8);
      __swift_destroy_boxed_opaque_existential_1(v63);
      v66 = v36;
      v46 = *(v36 + 16);
      v45 = *(v36 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_19209AD2C((v45 > 1), v46 + 1, 1);
        v36 = v66;
      }

      *(v36 + 16) = v46 + 1;
      sub_19203D160(v8, v36 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v46, type metadata accessor for WidgetArchivableMetadata.EntryMetadata);
      v37 += 40;
      --v35;
    }

    while (v35);
    sub_192179F60(v53, type metadata accessor for BundleStub);
  }

  else
  {

    sub_192179F60(v15, type metadata accessor for BundleStub);
    v36 = MEMORY[0x1E69E7CC0];
  }

  v47 = v56;
  v48 = v54;
  *&v54[*(v56 + 36)] = v36;
  sub_19203D160(v61, &v48[v47[11]], type metadata accessor for TimelineReloadPolicy);
  (*(v57 + 32))(&v48[v47[5]], v62, v58);
  *v48 = v31;
  *&v48[v47[10]] = v59;
  v49 = v55;
  sub_19203D160(v48, v55, type metadata accessor for WidgetArchivableMetadata);
  sub_192224F70();
  swift_allocObject();

  sub_192224F60();
  sub_1921796CC(&qword_1ED74AE10, type metadata accessor for WidgetArchivableMetadata, &unk_19222F538);
  v50 = sub_192224F50();
  sub_192179F60(v49, type metadata accessor for WidgetArchivableMetadata);

  return v50;
}

uint64_t sub_19217A684(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

unint64_t sub_19217A6EC()
{
  result = qword_1ED74A0C8;
  if (!qword_1ED74A0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A0C8);
  }

  return result;
}

unint64_t sub_19217A740()
{
  result = qword_1EADF1400;
  if (!qword_1EADF1400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1400);
  }

  return result;
}

WidgetKit::WidgetContentLayer_optional __swiftcall WidgetContentLayer.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_19217A8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19217B520();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.showsWidgetContentLayers.getter()
{
  sub_19206DA7C();
  sub_1922261E0();
  return v1;
}

void *sub_19217A970@<X0>(void *a1@<X8>)
{
  sub_19206DA7C();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t (*EnvironmentValues.showsWidgetContentLayers.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  a1[3] = sub_19206DA7C();
  sub_1922261E0();
  return sub_19217AA5C;
}

uint64_t sub_19217AA5C(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_1922261F0();
  }

  sub_1922261F0();
}

double View.showsContentLayer(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_192227040();

  return result;
}

uint64_t sub_19217AB64()
{
  v1 = sub_1922261D0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
  }

  else
  {

    sub_192227FA0();
    v6 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v7 = sub_19206A098(v5, 0);
    (*(v2 + 8))(v4, v1, v7);
    return v9[1];
  }

  return v5;
}

uint64_t WidgetContentLayerTag.init(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 9) = v3;
  return result;
}

uint64_t WidgetContentLayerTag.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1428, &qword_19223B440);
  MEMORY[0x1EEE9AC00](v24);
  v5 = &v22 - v4;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1430, &qword_19223B448);
  MEMORY[0x1EEE9AC00](v26);
  v7 = &v22 - v6;
  v8 = sub_1922261D0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(v2 + 9);
  if (*(v2 + 8) == 1)
  {
  }

  else
  {

    sub_192227FA0();
    v14 = sub_192226D00();
    v23 = v5;
    v15 = a1;
    v16 = v14;
    sub_1922257A0();

    a1 = v15;
    v5 = v23;
    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v17 = sub_19206A098(v12, 0);
    (*(v9 + 8))(v11, v8, v17);
    v12 = v27;
  }

  v18 = sub_19206CB1C(v13, v12);

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1438, &qword_19223B450);
  v20 = *(*(v19 - 8) + 16);
  if (v18)
  {
    v20(v5, a1, v19);
    swift_storeEnumTagMultiPayload();
    sub_19206E9F0();
    sub_192031E74(&qword_1EADECD28, &qword_1EADF1438, &qword_19223B450, MEMORY[0x1E697FDF8]);
    return sub_1922266E0();
  }

  else
  {
    v20(v7, a1, v19);
    sub_19202CFFC(v7, v5, &qword_1EADF1430, &qword_19223B448);
    swift_storeEnumTagMultiPayload();
    sub_19206E9F0();
    sub_192031E74(&qword_1EADECD28, &qword_1EADF1438, &qword_19223B450, MEMORY[0x1E697FDF8]);
    sub_1922266E0();
    return sub_192033970(v7, &qword_1EADF1430, &qword_19223B448);
  }
}

uint64_t sub_19217B088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4C746E65746E6F63 && a2 == 0xEC00000072657961)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1922289A0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_19217B114(uint64_t a1)
{
  v2 = sub_19205EBC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19217B150(uint64_t a1)
{
  v2 = sub_19205EBC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WidgetContentLayerTag.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1448, &qword_19223B460);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *(v1 + 9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19205EBC4();
  sub_192228B90();
  v10 = v7;
  sub_19217B2D8();
  sub_1922288C0();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_19217B2D8()
{
  result = qword_1ED749F38;
  if (!qword_1ED749F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749F38);
  }

  return result;
}

unint64_t sub_19217B330()
{
  result = qword_1EADF1450;
  if (!qword_1EADF1450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1450);
  }

  return result;
}

uint64_t sub_19217B384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_19206E8C4();

  return MEMORY[0x1EEDDB140](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_19217B474(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_19217B4CC()
{
  result = qword_1EADF1470;
  if (!qword_1EADF1470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1470);
  }

  return result;
}

unint64_t sub_19217B520()
{
  result = qword_1EADF1478;
  if (!qword_1EADF1478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0F98, &qword_1922385E0);
    sub_19217B330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1478);
  }

  return result;
}

uint64_t sub_19217B5C0()
{
  v1 = sub_1922261D0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  if (v8 != 1)
  {
    sub_19216E0E0(*(v0 + 16), 0);
    sub_192227FA0();
    v11 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v12 = sub_192049898(v7, 0);
    (*(v2 + 8))(v4, v1, v12);
    v9 = LOBYTE(v28[0]);
    if (LOBYTE(v28[0]) != 3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v10 = 1;
    return v10 & 1;
  }

  v9 = *(v0 + 16);
  if (v9 == 3)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v9 >= 2)
  {
    v28[3] = &type metadata for FeatureFlags.Widgets;
    v28[4] = sub_19202DBA4();
    LOBYTE(v28[0]) = 16;
    v10 = sub_192225420();
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    v10 = 0;
  }

  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v13 = sub_1922258B0();
  __swift_project_value_buffer(v13, qword_1ED74CCC8);
  sub_19206A08C(v5, v6);
  sub_19216E0E0(v7, v8);
  v14 = sub_192225890();
  v15 = sub_192227FB0();
  if (os_log_type_enabled(v14, v15))
  {
    v27 = v2;
    v16 = swift_slowAlloc();
    *v16 = 67109376;
    *(v16 + 4) = v10 & 1;
    *(v16 + 8) = 2048;
    if (v8)
    {
      v17 = v7;
    }

    else
    {
      sub_19216E0E0(v7, 0);
      sub_192227FA0();
      v26 = v6;
      v18 = sub_192226D00();
      v25 = v5;
      v19 = v18;
      LOBYTE(v6) = v26;
      sub_1922257A0();

      v5 = v25;
      _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
      swift_getAtKeyPath();
      v20 = sub_192049898(v7, 0);
      (*(v27 + 8))(v4, v1, v20);
      v17 = LOBYTE(v28[0]);
    }

    v21 = v17;
    v22 = v17 == 3;
    v23 = -1;
    if (!v22)
    {
      v23 = v21 + 1;
    }

    *(v16 + 10) = v23;
    sub_19206A098(v5, v6);
    sub_192049898(v7, v8);
    _os_log_impl(&dword_192028000, v14, v15, "Supports content layers? %{BOOL}d, archiveVersion=%ld", v16, 0x12u);
    MEMORY[0x193B0C7F0](v16, -1, -1);
  }

  else
  {
    sub_19206A098(v5, v6);
    sub_192049898(v7, v8);
  }

  return v10 & 1;
}

uint64_t sub_19217B960(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1480, &qword_19223B9B8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1488, &qword_19223B9C0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = *(v1 + 8);
  v10 = v1[2];
  v11 = *(v1 + 24);
  v12 = *(v1 + 25);
  v18 = *v1;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  if (sub_19217B5C0())
  {
    KeyPath = swift_getKeyPath();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1490, &qword_19223B9C8);
    (*(*(v14 - 8) + 16))(v8, a1, v14);
    v15 = &v8[*(v6 + 36)];
    *v15 = KeyPath;
    v15[8] = 0;
    v15[9] = v12;
    sub_19202CFFC(v8, v5, &qword_1EADF1488, &qword_19223B9C0);
    swift_storeEnumTagMultiPayload();
    sub_19217BC48();
    sub_192031E74(&qword_1ED749F58, &qword_1EADF1490, &qword_19223B9C8, MEMORY[0x1E697FDF8]);
    sub_1922266E0();
    return sub_192033970(v8, &qword_1EADF1488, &qword_19223B9C0);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1490, &qword_19223B9C8);
    (*(*(v17 - 8) + 16))(v5, a1, v17);
    swift_storeEnumTagMultiPayload();
    sub_19217BC48();
    sub_192031E74(&qword_1ED749F58, &qword_1EADF1490, &qword_19223B9C8, MEMORY[0x1E697FDF8]);
    return sub_1922266E0();
  }
}

unint64_t sub_19217BC48()
{
  result = qword_1ED749FF8;
  if (!qword_1ED749FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1488, &qword_19223B9C0);
    sub_192031E74(&qword_1ED749F58, &qword_1EADF1490, &qword_19223B9C8, MEMORY[0x1E697FDF8]);
    sub_19203FB24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749FF8);
  }

  return result;
}

unint64_t sub_19217BD00()
{
  result = qword_1ED749F68;
  if (!qword_1ED749F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1498, &qword_19223B9D0);
    sub_19217BC48();
    sub_192031E74(&qword_1ED749F58, &qword_1EADF1490, &qword_19223B9C8, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749F68);
  }

  return result;
}

WidgetKit::WidgetProximity::Proximity_optional __swiftcall WidgetProximity.Proximity.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *EnvironmentValues.widgetProximity.getter@<X0>(_BYTE *a1@<X8>)
{
  sub_19205337C();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t (*EnvironmentValues.widgetProximity.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_19205337C();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_19217BFDC;
}

uint64_t CHSWidgetProximity._chsProximities.getter(uint64_t a1)
{
  if (a1 == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t CHSWidgetProximities.init(_:)(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  if (a1 == 1)
  {
    return 2;
  }

  type metadata accessor for CHSWidgetProximity(0);
  result = sub_192228A10();
  __break(1u);
  return result;
}

unint64_t sub_19217C080()
{
  result = qword_1EADF14A0;
  if (!qword_1EADF14A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF14A0);
  }

  return result;
}

unint64_t sub_19217C0D4()
{
  result = qword_1EADF14A8;
  if (!qword_1EADF14A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF14A8);
  }

  return result;
}

uint64_t sub_19217C144@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v35 = a1;
  v38 = a4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF14B0, &qword_19223BC90);
  MEMORY[0x1EEE9AC00](v36);
  v7 = &v35 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF14B8, &qword_19223BC98);
  MEMORY[0x1EEE9AC00](v37);
  v9 = &v35 - v8;
  v10 = sub_1922261D0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v14 = a2;
  }

  else
  {

    sub_192227FA0();
    v15 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v16 = sub_19209561C(a2, 0);
    (*(v11 + 8))(v13, v10, v16);
    v14 = v39;
  }

  [v14 layoutInsets];
  v18 = v17;
  v20 = v19;
  v22 = v21;

  if (a3)
  {
    v23 = a2;
  }

  else
  {

    sub_192227FA0();
    v24 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v25 = sub_19209561C(a2, 0);
    (*(v11 + 8))(v13, v10, v25);
    v23 = v39;
  }

  [v23 size];

  if (a3)
  {
    v26 = a2;
  }

  else
  {

    sub_192227FA0();
    v27 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v28 = sub_19209561C(a2, 0);
    (*(v11 + 8))(v13, v10, v28);
    v26 = v39;
  }

  [v26 size];

  sub_1922275F0();
  sub_192225AA0();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF14C0, &qword_19223BCA0);
  (*(*(v29 - 8) + 16))(v9, v35, v29);
  v30 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF14C8, &qword_19223BCA8) + 36)];
  v31 = v40;
  *v30 = v39;
  *(v30 + 1) = v31;
  *(v30 + 2) = v41;
  v32 = sub_192226D10();
  v33 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF14D0, &qword_19223BCB0) + 36)];
  *v33 = v32;
  *(v33 + 1) = v18;
  *(v33 + 2) = v20;
  *(v33 + 3) = v20;
  *(v33 + 4) = v22;
  v33[40] = 0;
  *&v9[*(v37 + 36)] = 0;
  sub_19217C680(v9, v7);
  swift_storeEnumTagMultiPayload();
  sub_19217C6F0();
  sub_192031E74(&qword_1ED74A0E0, &qword_1EADF14C0, &qword_19223BCA0, MEMORY[0x1E697FDF8]);
  sub_1922266E0();
  return sub_19217C8EC(v9);
}

uint64_t sub_19217C680(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF14B8, &qword_19223BC98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_19217C6F0()
{
  result = qword_1ED74A110;
  if (!qword_1ED74A110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF14B8, &qword_19223BC98);
    sub_19217C7A8();
    sub_192031E74(&qword_1ED74A158, &qword_1EADF14D8, &qword_19223BCB8, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A110);
  }

  return result;
}

unint64_t sub_19217C7A8()
{
  result = qword_1ED74A120;
  if (!qword_1ED74A120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF14D0, &qword_19223BCB0);
    sub_19217C834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A120);
  }

  return result;
}

unint64_t sub_19217C834()
{
  result = qword_1ED74A138;
  if (!qword_1ED74A138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF14C8, &qword_19223BCA8);
    sub_192031E74(&qword_1ED74A0E0, &qword_1EADF14C0, &qword_19223BCA0, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A138);
  }

  return result;
}

uint64_t sub_19217C8EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF14B8, &qword_19223BC98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_19217C954()
{
  result = qword_1ED74A0F0;
  if (!qword_1ED74A0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF14E0, &unk_19223BCC0);
    sub_19217C6F0();
    sub_192031E74(&qword_1ED74A0E0, &qword_1EADF14C0, &qword_19223BCA0, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A0F0);
  }

  return result;
}

uint64_t sub_19217CA0C@<X0>(uint64_t a1@<X8>)
{
  sub_192226570();
  sub_19217E160(&qword_1EADEFF38, MEMORY[0x1E697F4E0], MEMORY[0x1E697F508]);
  sub_192227E00();
  sub_192227E60();
  if (v9[4] == v9[0])
  {
    v2 = sub_1922275A0();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = sub_192227ED0();
    v6 = v5;
    v7 = sub_1922275A0();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t sub_19217CBA4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = sub_192226570();
    sub_19217E160(&qword_1EADEFF38, MEMORY[0x1E697F4E0], MEMORY[0x1E697F508]);
    sub_192227E00();
    sub_192227E60();
    sub_192227E30();
    if (v4)
    {
      sub_192227E60();
    }

    else
    {
      v6 = v3;
    }

    result = sub_192227E60();
    if (v5 >= v6)
    {
      sub_192227EC0();
      return (*(*(v2 - 8) + 8))(v1, v2);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19217CCF8@<X0>(char *a1@<X8>)
{
  v43 = a1;
  v45 = sub_192226900();
  v35 = *(v45 - 8);
  v1 = v35;
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v35 - v4;
  v6 = sub_1922268E0();
  v41 = *(v6 - 8);
  v7 = v41;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v40 = &v35 - v11;
  sub_1922268F0();
  sub_192226540();
  v36 = sub_192226FC0();
  v37 = v13;
  v15 = v14;
  v17 = v16;
  v38 = v5;
  sub_192226910();
  v18 = *(v7 + 16);
  v42 = v9;
  v39 = v6;
  v18(v9, v12, v6);
  v46 = v17 & 1;
  v19 = *(v1 + 16);
  v20 = v44;
  v21 = v5;
  v22 = v45;
  v19(v44, v21, v45);
  v23 = v43;
  v18(v43, v9, v6);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1518, &qword_19223BDB0);
  v25 = v23;
  v26 = &v23[*(v24 + 48)];
  v27 = v46;
  v29 = v36;
  v28 = v37;
  *v26 = v36;
  *(v26 + 1) = v15;
  v26[16] = v27;
  *(v26 + 3) = v28;
  v30 = v22;
  v19(&v25[*(v24 + 64)], v20, v22);
  sub_1921114E4(v29, v15, v27);
  v31 = *(v35 + 8);

  v31(v38, v22);
  v32 = *(v41 + 8);
  v33 = v39;
  v32(v40, v39);
  v31(v20, v30);
  sub_19207A338(v29, v15, v46);

  return (v32)(v42, v33);
}