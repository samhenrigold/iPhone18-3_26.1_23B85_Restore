void *sub_21895BBB4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EAC238, &protocol descriptor for NameLogoMastheadViewStylerType, 1);
  result = sub_219BE1E34();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for NameLogoMastheadViewStyler();
    v19[3] = v10;
    v19[4] = &off_282A53E68;
    v19[0] = v9;
    v11 = type metadata accessor for NameLogoMastheadViewLayoutAttributesFactory();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x28223BE20](v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[6] = v10;
    v12[7] = &off_282A53E68;
    v12[2] = 0x4052000000000000;
    v12[3] = v18;
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = v11;
    a2[4] = &off_282A63540;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21895BDE4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EE4FA0, &protocolRef_TSSharedImageCacheType);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE5170, MEMORY[0x277D6D9F8], 1);
  result = sub_219BE1E34();
  if (!v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE5010, MEMORY[0x277D6DB20], 1);
  result = sub_219BE1E34();
  if (v7)
  {
    v5 = sub_219BE58C4();
    swift_allocObject();
    result = sub_219BE58B4();
    v6 = MEMORY[0x277D6D2B0];
    a2[3] = v5;
    a2[4] = v6;
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_21895BF94@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TagImageApplier();
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280ED02C0, &protocol descriptor for SportsTagStylerType, 0);
  result = sub_219BE1E34();
  v6 = v33;
  if (!v33)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB9700, &protocol descriptor for AccessoryButtonRendererType, 1);
  result = sub_219BE1E34();
  if (!v32)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v30)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v25 = v34;
  v26 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v8 = result;
    v28 = v7;
    v29 = sub_218754C0C(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    v27[0] = v8;
    sub_219BE89E4();
    swift_allocObject();
    v9 = sub_219BE8994();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
    v11 = MEMORY[0x28223BE20](v10);
    v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v13;
    v16 = type metadata accessor for AccessoryButtonRenderer();
    v28 = v16;
    v29 = &off_282A94AE8;
    v27[0] = v15;
    v17 = type metadata accessor for SportsTagRenderer();
    v18 = swift_allocObject();
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v27, v16);
    v20 = MEMORY[0x28223BE20](v19);
    v22 = (&v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22, v20);
    v24 = *v22;
    v18[8] = v16;
    v18[9] = &off_282A94AE8;
    v18[2] = v26;
    v18[3] = v6;
    v18[4] = v25;
    v18[5] = v24;
    v18[10] = v9;
    __swift_destroy_boxed_opaque_existential_1(v27);
    result = __swift_destroy_boxed_opaque_existential_1(v31);
    a2[3] = v17;
    a2[4] = &off_282A4A4D8;
    *a2 = v18;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_21895C3D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TagImageApplier();
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280ECF1F8, &protocol descriptor for ChannelTagStylerType, 0);
  result = sub_219BE1E34();
  v6 = v33;
  if (!v33)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB9700, &protocol descriptor for AccessoryButtonRendererType, 1);
  result = sub_219BE1E34();
  if (!v32)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v30)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v25 = v34;
  v26 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v8 = result;
    v28 = v7;
    v29 = sub_218754C0C(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    v27[0] = v8;
    sub_219BE89E4();
    swift_allocObject();
    v9 = sub_219BE8994();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
    v11 = MEMORY[0x28223BE20](v10);
    v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v13;
    v16 = type metadata accessor for AccessoryButtonRenderer();
    v28 = v16;
    v29 = &off_282A94AE8;
    v27[0] = v15;
    v17 = type metadata accessor for ChannelTagRenderer();
    v18 = swift_allocObject();
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v27, v16);
    v20 = MEMORY[0x28223BE20](v19);
    v22 = (&v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22, v20);
    v24 = *v22;
    v18[8] = v16;
    v18[9] = &off_282A94AE8;
    v18[2] = v26;
    v18[3] = v6;
    v18[4] = v25;
    v18[5] = v24;
    v18[10] = v9;
    __swift_destroy_boxed_opaque_existential_1(v27);
    result = __swift_destroy_boxed_opaque_existential_1(v31);
    a2[3] = v17;
    a2[4] = &off_282A662E8;
    *a2 = v18;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_21895C7C4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TagImageApplier();
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECBB38, &protocol descriptor for ChannelCoinStylerType, 0);
  result = sub_219BE1E34();
  v6 = v33;
  if (!v33)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB9700, &protocol descriptor for AccessoryButtonRendererType, 1);
  result = sub_219BE1E34();
  if (!v32)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v30)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v25 = v34;
  v26 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v8 = result;
    v28 = v7;
    v29 = sub_218754C0C(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    v27[0] = v8;
    sub_219BE89E4();
    swift_allocObject();
    v9 = sub_219BE8994();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
    v11 = MEMORY[0x28223BE20](v10);
    v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v13;
    v16 = type metadata accessor for AccessoryButtonRenderer();
    v28 = v16;
    v29 = &off_282A94AE8;
    v27[0] = v15;
    v17 = type metadata accessor for ChannelCoinRenderer();
    v18 = swift_allocObject();
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v27, v16);
    v20 = MEMORY[0x28223BE20](v19);
    v22 = (&v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22, v20);
    v24 = *v22;
    v18[8] = v16;
    v18[9] = &off_282A94AE8;
    v18[2] = v26;
    v18[3] = v6;
    v18[4] = v25;
    v18[5] = v24;
    v18[10] = v9;
    __swift_destroy_boxed_opaque_existential_1(v27);
    result = __swift_destroy_boxed_opaque_existential_1(v31);
    a2[3] = v17;
    a2[4] = &off_282A91088;
    *a2 = v18;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_21895CBB8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TagImageApplier();
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBF430, &protocol descriptor for ChannelCategoryStylerType, 0);
  result = sub_219BE1E34();
  v6 = v12;
  if (!v12)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE5AC0, MEMORY[0x277D6D598], 1);
  result = sub_219BE1DF4();
  if (v11)
  {
    v8 = type metadata accessor for ChannelCategoryRenderer();
    v9 = swift_allocObject();
    v9[2] = v5;
    v9[3] = v6;
    v9[4] = v7;
    result = sub_2186CB1F0(&v10, (v9 + 5));
    a2[3] = v8;
    a2[4] = &off_282A600C0;
    *a2 = v9;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_21895CDA0@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, a2, a3, 0);
  result = sub_219BE1E34();
  if (v13)
  {
    v12 = a4(0);
    result = swift_allocObject();
    result[2] = v13;
    result[3] = v14;
    a6[3] = v12;
    a6[4] = a5;
    *a6 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21895CE84@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810, &protocol descriptor for BaseStylerType, 1);
  result = sub_219BE1E34();
  if (v27)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, qword_280EC8790, &protocolRef_NEFeedNavImageStylerType);
    result = sub_219BE1E24();
    if (result)
    {
      v9 = result;
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
      v11 = MEMORY[0x28223BE20](v10);
      v13 = (v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v14 + 16))(v13, v11);
      v15 = *v13;
      v16 = type metadata accessor for BaseStyler(0);
      v25[3] = v16;
      v17 = sub_218754C0C(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
      v25[4] = v17;
      v25[0] = v15;
      a2(0);
      v18 = swift_allocObject();
      v19 = __swift_mutable_project_boxed_opaque_existential_1(v25, v16);
      v20 = MEMORY[0x28223BE20](v19);
      v22 = (v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v23 + 16))(v22, v20);
      v24 = *v22;
      v18[5] = v16;
      v18[6] = v17;
      v18[2] = v24;
      v18[8] = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
      v18[9] = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
      v18[7] = v9;
      __swift_destroy_boxed_opaque_existential_1(v25);
      result = __swift_destroy_boxed_opaque_existential_1(v26);
      *a4 = v18;
      a4[1] = a3;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21895D1DC@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EB9020, &protocol descriptor for ChannelEngagementStylerType, 1);
  result = sub_219BE1E34();
  if (v29)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE6570, MEMORY[0x277D31810], 1);
    result = sub_219BE1E34();
    if (v27)
    {
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
      v10 = MEMORY[0x28223BE20](v9);
      v12 = (&v25[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v13 + 16))(v12, v10);
      v14 = *v12;
      v15 = type metadata accessor for ChannelEngagementStyler();
      v25[3] = v15;
      v25[4] = &off_282A6D590;
      v25[0] = v14;
      v16 = a2(0);
      v17 = swift_allocObject();
      v18 = __swift_mutable_project_boxed_opaque_existential_1(v25, v15);
      v19 = MEMORY[0x28223BE20](v18);
      v21 = (&v25[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v22 + 16))(v21, v19);
      v23 = *v21;
      v17[5] = v15;
      v17[6] = &off_282A6D590;
      v17[2] = v23;
      sub_2186CB1F0(&v26, (v17 + 7));
      __swift_destroy_boxed_opaque_existential_1(v25);
      result = __swift_destroy_boxed_opaque_existential_1(v28);
      a4[3] = v16;
      a4[4] = a3;
      *a4 = v17;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21895D478@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810, &protocol descriptor for BaseStylerType, 1);
  result = sub_219BE1E34();
  if (!v25)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, qword_280EC8790, &protocolRef_NEFeedNavImageStylerType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E902B0, MEMORY[0x277D33B60], 1);
  result = sub_219BE1E34();
  if (v23)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    v7 = MEMORY[0x28223BE20](v6);
    v9 = (&v21[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9, v7);
    v11 = *v9;
    v12 = type metadata accessor for BaseStyler(0);
    v21[3] = v12;
    v21[4] = sub_218754C0C(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
    v21[0] = v11;
    type metadata accessor for ChannelCategoryStyler();
    v13 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v21, v12);
    v15 = MEMORY[0x28223BE20](v14);
    v17 = (&v21[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = sub_21895F338(*v17, v5, &v22, v13);
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = __swift_destroy_boxed_opaque_existential_1(v24);
    *a2 = v19;
    a2[1] = &off_282A38E10;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_21895D7A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810, &protocol descriptor for BaseStylerType, 1);
  result = sub_219BE1E34();
  if (v22)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for BaseStyler(0);
    v20[3] = v10;
    v11 = sub_218754C0C(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
    v20[4] = v11;
    v20[0] = v9;
    v12 = type metadata accessor for ChannelEngagementStyler();
    v13 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v10);
    v15 = MEMORY[0x28223BE20](v14);
    v17 = (v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = *v17;
    v13[5] = v10;
    v13[6] = v11;
    v13[2] = v19;
    v13[7] = 0x4020000000000000;
    __swift_destroy_boxed_opaque_existential_1(v20);
    result = __swift_destroy_boxed_opaque_existential_1(v21);
    a2[3] = v12;
    a2[4] = &off_282A6D590;
    *a2 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21895DA30@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EA3CA0, &protocol descriptor for ChannelPickerHeaderViewStylerType, 1);
  result = sub_219BE1E34();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for ChannelPickerHeaderViewStyler();
    v19[3] = v10;
    v19[4] = &off_282A62700;
    v19[0] = v9;
    v11 = type metadata accessor for ChannelPickerHeaderViewLayoutAttributesFactory();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x28223BE20](v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_282A62700;
    v12[2] = v18;
    sub_21895F694(0, &qword_27CC0B258, type metadata accessor for ChannelPickerHeaderViewLayoutAttributes);
    swift_allocObject();
    v12[7] = sub_219BE2D94();
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = v11;
    a2[4] = &off_282A59FA0;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21895DC98@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBD0D8, &protocol descriptor for SeeMoreButtonRendererType, 1);
  result = sub_219BE1E34();
  if (v44)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EA3CA0, &protocol descriptor for ChannelPickerHeaderViewStylerType, 1);
    result = sub_219BE1E34();
    if (v42)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v43, v44);
      v33[1] = v33;
      v6 = MEMORY[0x28223BE20](v5);
      v8 = (v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
      v33[0] = v33;
      v11 = MEMORY[0x28223BE20](v10);
      v13 = (v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v14 + 16))(v13, v11);
      v15 = *v8;
      v16 = *v13;
      v17 = type metadata accessor for SeeMoreButtonRenderer();
      v40[3] = v17;
      v40[4] = &off_282A6C9A0;
      v40[0] = v15;
      v18 = type metadata accessor for ChannelPickerHeaderViewStyler();
      v38 = v18;
      v39 = &off_282A62700;
      v37[0] = v16;
      v19 = type metadata accessor for ChannelPickerHeaderViewRenderer();
      v20 = swift_allocObject();
      v21 = __swift_mutable_project_boxed_opaque_existential_1(v40, v17);
      v22 = MEMORY[0x28223BE20](v21);
      v24 = (v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v25 + 16))(v24, v22);
      v26 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
      v27 = MEMORY[0x28223BE20](v26);
      v29 = (v33 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v30 + 16))(v29, v27);
      v31 = *v24;
      v32 = *v29;
      v20[10] = v17;
      v20[11] = &off_282A6C9A0;
      v20[7] = v31;
      v36 = &off_282A62700;
      v35 = v18;
      *&v34 = v32;
      sub_2186CB1F0(&v34, (v20 + 2));
      __swift_destroy_boxed_opaque_existential_1(v37);
      __swift_destroy_boxed_opaque_existential_1(v40);
      __swift_destroy_boxed_opaque_existential_1(v41);
      result = __swift_destroy_boxed_opaque_existential_1(v43);
      a2[3] = v19;
      a2[4] = &off_282A99498;
      *a2 = v20;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_21895E0EC@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for ChannelPickerHeaderViewStyler();
  v3 = swift_allocObject();
  v4 = *MEMORY[0x277D76988];
  v3[2] = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v3[3] = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  result = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v3[4] = result;
  a1[3] = v2;
  a1[4] = &off_282A62700;
  *a1 = v3;
  return result;
}

void *sub_21895E1B8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EE4FA0, &protocolRef_TSSharedImageCacheType);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE5170, MEMORY[0x277D6D9F8], 1);
    result = sub_219BE1DF4();
    if (v7)
    {
      sub_219BE66F4();
      swift_allocObject();
      sub_219BE66E4();
      v5 = sub_219BE58C4();
      swift_allocObject();
      result = sub_219BE58B4();
      v6 = MEMORY[0x277D6D2B0];
      a2[3] = v5;
      a2[4] = v6;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21895E314@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_219BF30C4();
  swift_allocObject();
  v3 = sub_219BF30B4();
  a1[3] = v2;
  result = sub_218754C0C(&qword_280E901E8, MEMORY[0x277D33CA0], MEMORY[0x277D33C98]);
  a1[4] = result;
  *a1 = v3;
  return result;
}

void *sub_21895E3A0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC6100, &protocol descriptor for WebEmbedViewStylerType, 1);
  result = sub_219BE1E34();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for WebEmbedViewStyler();
    v19[3] = v10;
    v19[4] = &off_282A32A58;
    v19[0] = v9;
    v11 = type metadata accessor for WebEmbedViewRenderer();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x28223BE20](v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_282A32A58;
    v12[2] = v18;
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = v11;
    a2[4] = &off_282A334B8;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21895E5EC@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

void *sub_21895E63C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC6100, &protocol descriptor for WebEmbedViewStylerType, 1);
  result = sub_219BE1E34();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for WebEmbedViewStyler();
    v19[3] = v10;
    v19[4] = &off_282A32A58;
    v19[0] = v9;
    v11 = type metadata accessor for WebEmbedViewLayoutAttributesFactory();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x28223BE20](v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_282A32A58;
    v12[2] = v18;
    sub_21895F6F8(0, &unk_27CC0B248, &type metadata for WebEmbedViewLayoutAttributes);
    swift_allocObject();
    v12[7] = sub_219BE2D94();
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = v11;
    a2[4] = &off_282A3C440;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21895E898(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC7090, &protocol descriptor for RecentSearchStylerType, 1);
  result = sub_219BE1E34();
  if (v18)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    v3 = MEMORY[0x28223BE20](v2);
    v5 = (v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5, v3);
    v7 = *v5;
    v8 = type metadata accessor for RecentSearchStyler();
    v16[3] = v8;
    v16[4] = &off_282A64B40;
    v16[0] = v7;
    type metadata accessor for RecentSearchRenderer();
    v9 = swift_allocObject();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v16, v8);
    v11 = MEMORY[0x28223BE20](v10);
    v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v13;
    v9[5] = v8;
    v9[6] = &off_282A64B40;
    v9[2] = v15;
    __swift_destroy_boxed_opaque_existential_1(v16);
    __swift_destroy_boxed_opaque_existential_1(v17);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21895EAA8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for RecentSearchStyler();
  v3 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &off_282A64B40;
  *a1 = v3;
  return result;
}

void *sub_21895EB28@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC7090, &protocol descriptor for RecentSearchStylerType, 1);
  result = sub_219BE1E34();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for RecentSearchStyler();
    v19[3] = v10;
    v19[4] = &off_282A64B40;
    v19[0] = v9;
    v11 = type metadata accessor for RecentSearchLayoutAttributesFactory();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x28223BE20](v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_282A64B40;
    v12[2] = v18;
    sub_21895F6F8(0, &qword_280EE70F0, &type metadata for RecentSearchLayoutAttributes);
    swift_allocObject();
    v12[7] = sub_219BE2D94();
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = v11;
    a2[4] = &off_282A31FF0;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21895ED84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeeMoreButtonStyler();
  v23[3] = v4;
  v23[4] = &off_282A5FD00;
  v23[0] = a1;
  v5 = type metadata accessor for TitleViewStyler();
  v21 = v5;
  v22 = &off_282A85B98;
  v20[0] = a2;
  type metadata accessor for TitleViewLayoutAttributesFactory();
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v23, v4);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10, v8);
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v13);
  v17 = *v10;
  v18 = *v15;
  v6[5] = v4;
  v6[6] = &off_282A5FD00;
  v6[2] = v17;
  v6[10] = v5;
  v6[11] = &off_282A85B98;
  v6[7] = v18;
  sub_21895F694(0, &qword_280EE70F8, type metadata accessor for TitleViewLayoutAttributes);
  swift_allocObject();
  v6[12] = sub_219BE2D94();
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v6;
}

id sub_21895EFAC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v17[3] = type metadata accessor for NameLogoMastheadViewRenderer();
  v17[4] = &off_282A46C10;
  v17[0] = a2;
  v16[3] = type metadata accessor for NameLogoMastheadViewLayoutAttributesFactory();
  v16[4] = &off_282A63540;
  v16[0] = a3;
  v9 = OBJC_IVAR____TtC7NewsUI228NameLogoMastheadViewProvider_mastheadView;
  *&a4[v9] = [objc_allocWithZone(type metadata accessor for NameLogoMastheadView(0)) initWithFrame_];
  v10 = OBJC_IVAR____TtC7NewsUI228NameLogoMastheadViewProvider_margins;
  v11 = *MEMORY[0x277D6DDC8];
  v12 = sub_219BE7F84();
  (*(*(v12 - 8) + 104))(&a4[v10], v11, v12);
  sub_21895F498(a1, &a4[OBJC_IVAR____TtC7NewsUI228NameLogoMastheadViewProvider_model], type metadata accessor for NameLogoMastheadModel);
  sub_218718690(v17, &a4[OBJC_IVAR____TtC7NewsUI228NameLogoMastheadViewProvider_renderer]);
  sub_218718690(v16, &a4[OBJC_IVAR____TtC7NewsUI228NameLogoMastheadViewProvider_layoutAttributesFactory]);
  v15.receiver = a4;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  sub_21895F500(a1, type metadata accessor for NameLogoMastheadModel);
  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v13;
}

id sub_21895F13C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v24 = type metadata accessor for NameLogoMastheadViewRenderer();
  v25 = &off_282A46C10;
  v23[0] = a2;
  v21 = v6;
  v22 = &off_282A63540;
  v20[0] = a3;
  v7 = objc_allocWithZone(type metadata accessor for NameLogoMastheadViewProvider(0));
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11, v9);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = sub_21895EFAC(a1, *v11, *v16, v7);
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v18;
}

void *sub_21895F338(uint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  v10 = type metadata accessor for BaseStyler(0);
  v11 = sub_218754C0C(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
  *&v9 = a1;
  a4[13] = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  a4[14] = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  sub_2186CB1F0(&v9, (a4 + 2));
  a4[7] = a2;
  sub_2186CB1F0(a3, (a4 + 8));
  return a4;
}

void sub_21895F444(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21895F498(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21895F500(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21895F570()
{
  if (!qword_280ECE590)
  {
    v0 = type metadata accessor for MastheadModelContext(0);
    if (!v1)
    {
      atomic_store(v0, &qword_280ECE590);
    }
  }
}

uint64_t sub_21895F5B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MiniMastheadModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21895F61C(uint64_t a1)
{
  v3 = *(type metadata accessor for MiniMastheadModel(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 64) & ~*(v3 + 80));

  sub_21926DA24(a1, v4, v1 + 24, v5);
}

void sub_21895F694(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BE2DA4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21895F6F8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_219BE2DA4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21895F754(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  (*(a3 + 8))(&v5, 0x4024000000000000, 0, a2, a3);
  sub_219BE2F24();

  v3 = sub_219BE3044();

  return v3;
}

uint64_t sub_21895F7D4(uint64_t *a1, uint64_t a2, char a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = CACurrentMediaTime();
  sub_219BE3204();
  v6 = swift_allocObject();
  *(v6 + 2) = v3;
  *(v6 + 3) = v4;
  v6[4] = v5;
  sub_218720448(v3, v4);
  v7 = sub_219BE2E54();
  sub_219BE2F74();

  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = v4;
  sub_218720448(v3, v4);
  v9 = sub_219BE2E54();
  v10 = sub_219BE2FD4();

  return v10;
}

uint64_t sub_21895F938(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v32 = a5;
  v31 = a4;
  v8 = sub_219BED214();
  v33 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v30 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_219BE5434();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  v35 = a2;
  sub_2190C02CC(v16);
  v17 = sub_219BE5414();
  v18 = sub_219BF6214();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = v8;
    v20 = v19;
    *v19 = 0;
    _os_log_impl(&dword_2186C1000, v17, v18, "Will prime offline content by flushing cached content lookups", v19, 2u);
    v8 = v29;
    MEMORY[0x21CECF960](v20, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  v21 = a3[5];
  v22 = a3[6];
  __swift_project_boxed_opaque_existential_1(a3 + 2, v21);
  sub_2198E9038(v21, v22);
  if (v32)
  {
    sub_219BED1F4();
    v23 = v33;
  }

  else
  {
    v24 = v30;
    sub_219BED1F4();
    sub_219BED244();
    v23 = v33;
    (*(v33 + 8))(v24, v8);
  }

  v25 = sub_219BE2E54();
  v26 = sub_219BE3094();

  (*(v23 + 8))(v12, v8);
  return v26;
}

void sub_21895FC24(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_219BE5434();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = a3;
  v14[1] = a4;
  sub_2190C02CC(v9);
  v10 = sub_219BE5414();
  v11 = sub_219BF6214();
  if (!os_log_type_enabled(v10, v11))
  {
    goto LABEL_6;
  }

  v12 = swift_slowAlloc();
  *v12 = 134349056;
  sub_219BF5CD4();
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v13 < 9.22337204e18)
  {
    *(v12 + 4) = v13;
    _os_log_impl(&dword_2186C1000, v10, v11, "Did prime offline content, time=%{public}lldms", v12, 0xCu);
    MEMORY[0x21CECF960](v12, -1, -1);
LABEL_6:

    (*(v7 + 8))(v9, v6);
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_21895FDE8(void *a1, void *a2, uint64_t a3)
{
  v39 = sub_219BE5434();
  v6 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  sub_218963158(0, &qword_280EE7DC8, MEMORY[0x277D6CAF0]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v38 - v13;
  v40 = a1;
  v15 = a1;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  v16 = sub_219BE1D94();
  v17 = swift_dynamicCast();
  v18 = *(*(v16 - 8) + 56);
  if (!v17)
  {
    v18(v14, 1, 1, v16);
    sub_218962CB8(v14);
LABEL_8:
    v40 = a2;
    v41 = a3;
    sub_2190C02CC(v8);
    v31 = a1;
    v32 = sub_219BE5414();
    v33 = sub_219BF6214();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138543362;
      v36 = a1;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_2186C1000, v32, v33, "Failed to prime offline content with error=%{public}@", v34, 0xCu);
      sub_218962D30(v35);
      MEMORY[0x21CECF960](v35, -1, -1);
      MEMORY[0x21CECF960](v34, -1, -1);
    }

    return (*(v6 + 8))(v8, v39);
  }

  v19 = *(v16 - 8);
  v38 = v11;
  v18(v14, 0, 1, v16);
  v20 = (*(v19 + 88))(v14, v16);
  v21 = v6;
  v22 = a2;
  v23 = a3;
  v24 = *MEMORY[0x277D6CAD8];
  (*(v19 + 8))(v14, v16);
  v25 = v20 == v24;
  a3 = v23;
  a2 = v22;
  v6 = v21;
  if (!v25)
  {
    goto LABEL_8;
  }

  v40 = a2;
  v41 = a3;
  v26 = v38;
  sub_2190C02CC(v38);
  v27 = sub_219BE5414();
  v28 = sub_219BF6214();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2186C1000, v27, v28, "Timed out attempting to prime offline content", v29, 2u);
    MEMORY[0x21CECF960](v29, -1, -1);
  }

  return (*(v21 + 8))(v26, v39);
}

uint64_t sub_218960220(uint64_t a1, uint64_t a2, char a3)
{
  v18[1] = a2;
  v4 = sub_219BED214();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v18 - v9;
  v11 = CACurrentMediaTime();
  sub_218962E3C(0, &qword_280E8B4E0, MEMORY[0x277D83D88]);
  sub_219BE31F4();
  v12 = sub_219BE2E54();
  sub_219BE2F84();

  *(swift_allocObject() + 16) = v11;
  v13 = sub_219BE2E54();
  sub_219BE2F74();

  v14 = sub_219BE2E54();
  sub_219BE2FD4();

  sub_219BED1F4();
  if ((a3 & 1) == 0)
  {
    sub_219BED244();
    (*(v5 + 8))(v7, v4);
  }

  v15 = sub_219BE2E54();
  v16 = sub_219BE3094();

  (*(v5 + 8))(v10, v4);
  return v16;
}

uint64_t sub_218960504(uint64_t *a1)
{
  v2 = sub_219BED224();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_280EE5FF0 != -1)
  {
    swift_once();
  }

  v6 = sub_219BE5434();
  __swift_project_value_buffer(v6, qword_280F626B8);
  v7 = sub_219BE5414();
  v8 = sub_219BF6214();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2186C1000, v7, v8, "Will prime offline content by checking newsd for Top Stories", v9, 2u);
    MEMORY[0x21CECF960](v9, -1, -1);
  }

  v10 = a1[19];
  *v5 = v10;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v11 = v10;
  v12 = sub_219BED254();
  result = (*(v3 + 8))(v5, v2);
  if (v12)
  {
    sub_2186C6148(0, &unk_27CC0B2E0, 0x277D31420);
    sub_219BE3204();
    sub_219BE2F84();

    v14 = sub_219BE2E54();
    sub_219BE2FD4();

    v15 = sub_219BE2F24();

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2189607D4(uint64_t a1, void *a2)
{
  if (qword_280EE5FF0 != -1)
  {
    swift_once();
  }

  v3 = sub_219BE5434();
  __swift_project_value_buffer(v3, qword_280F626B8);
  v4 = sub_219BE5414();
  v5 = sub_219BF6214();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2186C1000, v4, v5, "Will prime offline content by flushing cached content lookups", v6, 2u);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  v7 = a2[5];
  v8 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v7);
  return sub_2198E9038(v7, v8);
}

void sub_2189608E4(double a1)
{
  if (qword_280EE5FF0 != -1)
  {
    swift_once();
  }

  v1 = sub_219BE5434();
  __swift_project_value_buffer(v1, qword_280F626B8);
  v2 = sub_219BE5414();
  v3 = sub_219BF6214();
  if (!os_log_type_enabled(v2, v3))
  {
    goto LABEL_8;
  }

  v4 = swift_slowAlloc();
  *v4 = 134349056;
  sub_219BF5CD4();
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v5 < 9.22337204e18)
  {
    *(v4 + 4) = v5;
    _os_log_impl(&dword_2186C1000, v2, v3, "Did prime offline content, time=%{public}lldms", v4, 0xCu);
    MEMORY[0x21CECF960](v4, -1, -1);
LABEL_8:

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_218960A2C(void *a1)
{
  sub_218963158(0, &qword_280EE7DC8, MEMORY[0x277D6CAF0]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v22 - v3;
  v22[1] = a1;
  v5 = a1;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  v6 = sub_219BE1D94();
  v7 = swift_dynamicCast();
  v8 = *(*(v6 - 8) + 56);
  if (v7)
  {
    v9 = *(v6 - 8);
    v8(v4, 0, 1, v6);
    v10 = (*(v9 + 88))(v4, v6);
    v11 = *MEMORY[0x277D6CAD8];
    (*(v9 + 8))(v4, v6);
    if (v10 == v11)
    {
      if (qword_280EE5FF0 != -1)
      {
        swift_once();
      }

      v12 = sub_219BE5434();
      __swift_project_value_buffer(v12, qword_280F626B8);
      v13 = sub_219BE5414();
      v14 = sub_219BF6214();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_2186C1000, v13, v14, "Timed out attempting to prime offline content", v15, 2u);
LABEL_12:
        MEMORY[0x21CECF960](v15, -1, -1);
        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v8(v4, 1, 1, v6);
    sub_218962CB8(v4);
  }

  if (qword_280EE5FF0 != -1)
  {
    swift_once();
  }

  v16 = sub_219BE5434();
  __swift_project_value_buffer(v16, qword_280F626B8);
  v17 = a1;
  v13 = sub_219BE5414();
  v18 = sub_219BF6214();

  if (os_log_type_enabled(v13, v18))
  {
    v15 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v15 = 138543362;
    v20 = a1;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v21;
    *v19 = v21;
    _os_log_impl(&dword_2186C1000, v13, v18, "Failed to prime offline content with error=%{public}@", v15, 0xCu);
    sub_218962D30(v19);
    MEMORY[0x21CECF960](v19, -1, -1);
    goto LABEL_12;
  }

LABEL_13:
}

uint64_t sub_218960D7C()
{
  sub_218962DB8(0, &unk_27CC0B300, &unk_27CC0B2E0, 0x277D31420, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

double sub_218960E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_218963158(0, &qword_280E8EAA0, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = sub_219BF5BF4();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = sub_218846958;
  v13[5] = v11;
  v13[6] = a3;
  v13[7] = a4;

  sub_218AB3D80(0, 0, v10, &unk_219C0A930, v13);

  return result;
}

uint64_t sub_218960F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  return MEMORY[0x2822009F8](sub_218960F8C, 0, 0);
}

uint64_t sub_218960F8C()
{
  sub_219BDC134();
  *(v0 + 56) = sub_219BDC124();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = sub_2186C6148(0, &unk_27CC0B2E0, 0x277D31420);
  *v1 = v0;
  v1[1] = sub_218961070;

  return MEMORY[0x28218ED80](v0 + 16, &unk_219C0A938, 0, v2);
}

uint64_t sub_218961070()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_2189611FC;
  }

  else
  {

    v3 = sub_21896118C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21896118C()
{
  v1 = *(v0 + 16);
  (*(v0 + 24))(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2189611FC()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);

  v2(v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_218961280(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x2822009F8](sub_2189612A0, 0, 0);
}

uint64_t sub_2189612A0()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2189613B0;
  v2 = swift_continuation_init();
  sub_218963280(0);
  v0[17] = v3;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21896154C;
  v0[13] = &block_descriptor;
  v0[14] = v2;
  [v1 fetchCachedTodayFeedWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2189613B0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_2189614E0;
  }

  else
  {
    v2 = sub_2189614C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2189614E0(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_21896154C(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
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

void sub_218961628(void **a1, void *a2)
{
  Result = type metadata accessor for TodayConfigFetchResult(0);
  MEMORY[0x28223BE20](Result);
  v78 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for TodayConfig(0);
  MEMORY[0x28223BE20](v79);
  v80 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDBD34();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v82 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v75 - v10;
  MEMORY[0x28223BE20](v12);
  v86 = &v75 - v13;
  v14 = *a1;
  if (qword_280EE5FF0 != -1)
  {
    swift_once();
  }

  v15 = sub_219BE5434();
  v16 = __swift_project_value_buffer(v15, qword_280F626B8);
  v17 = v14;
  v85 = v16;
  v18 = sub_219BE5414();
  v19 = sub_219BF6214();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = v6;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138543362;
    *(v21 + 4) = v17;
    *v22 = v17;
    v23 = v17;
    _os_log_impl(&dword_2186C1000, v18, v19, "Successfully retrieved prefetched Today feed from newsd: %{public}@", v21, 0xCu);
    sub_218962D30(v22);
    MEMORY[0x21CECF960](v22, -1, -1);
    v24 = v21;
    v6 = v20;
    MEMORY[0x21CECF960](v24, -1, -1);
  }

  v25 = a2[10];
  v26 = a2[11];
  __swift_project_boxed_opaque_existential_1(a2 + 7, v25);
  v87 = xmmword_219C0A870;
  v27 = v86;
  (*(v26 + 80))(&v87, v25, v26);
  v28 = [v17 publishDate];
  sub_219BDBCA4();

  LOBYTE(v28) = sub_219BDBC14();
  v83 = *(v7 + 8);
  v83(v11, v6);
  if (v28)
  {
    CACurrentMediaTime();
    v29 = [v17 contentArchive];
    v76 = a2;
    v30 = [v29 unarchiveIntoContentContext_];

    v31 = v30;
    v32 = sub_219BE5414();
    v33 = sub_219BF6214();

    v34 = os_log_type_enabled(v32, v33);
    v82 = v31;
    if (!v34)
    {

LABEL_14:
      CACurrentMediaTime();
      sub_219BEE324();
      swift_allocObject();
      sub_219BEE314();
      v60 = [v17 configData];
      v61 = sub_219BDBA04();
      v63 = v62;

      sub_218963060(&unk_280EDF358, type metadata accessor for TodayConfig, &unk_219C35A48);
      v17 = v80;
      v64 = v84;
      sub_219BE1974();
      if (v64)
      {
        v83(v86, v6);

        sub_2186C6190(v61, v63);

        return;
      }

      sub_2186C6190(v61, v63);

      v65 = sub_219BE5414();
      v66 = sub_219BF6214();
      v67 = os_log_type_enabled(v65, v66);
      v33 = v78;
      if (!v67)
      {
LABEL_23:

        sub_218962EFC(v17, v33, type metadata accessor for TodayConfig);
        if (qword_27CC08840 == -1)
        {
LABEL_24:
          v70 = qword_27CCD8EF0;
          v71 = v76;
          v72 = v76[13];

          v73 = [v72 possiblyUnfetchedAppConfiguration];
          v74 = Result;
          *(v33 + *(Result + 20)) = v70;
          *(v33 + *(v74 + 24)) = v73;
          MEMORY[0x28223BE20](v73);
          *(&v75 - 2) = v71;
          *(&v75 - 1) = v33;
          sub_218962E3C(0, &qword_280EE6900, MEMORY[0x277D6CF30]);
          swift_allocObject();
          sub_219BE30B4();

          sub_218962E9C(v17, type metadata accessor for TodayConfig);
          v83(v86, v6);
          sub_218962E9C(v33, type metadata accessor for TodayConfigFetchResult);
          return;
        }

LABEL_28:
        swift_once();
        goto LABEL_24;
      }

      v68 = swift_slowAlloc();
      *v68 = 134349056;
      sub_219BF5CD4();
      if ((*&v69 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v69 > -9.22337204e18)
      {
        if (v69 < 9.22337204e18)
        {
          *(v68 + 4) = v69;
          _os_log_impl(&dword_2186C1000, v65, v66, "Did decode prefetched Today feed config, time=%{public}lldms", v68, 0xCu);
          MEMORY[0x21CECF960](v68, -1, -1);
          goto LABEL_23;
        }

        goto LABEL_31;
      }

      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

    v81 = v7 + 8;
    v35 = v6;
    v36 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v87 = v6;
    *v36 = 136446466;
    v37 = [objc_opt_self() stringFromByteCount:objc_msgSend(v31 countStyle:{sel_storageSize), 0}];
    v38 = sub_219BF5414();
    v40 = v39;

    v41 = sub_2186D1058(v38, v40, &v87);

    *(v36 + 4) = v41;
    *(v36 + 12) = 2050;
    sub_219BF5CD4();
    if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v42 > -9.22337204e18)
    {
      if (v42 < 9.22337204e18)
      {
        *(v36 + 14) = v42;
        _os_log_impl(&dword_2186C1000, v32, v33, "Did unarchive prefetched Today feed articles, size=%{public}s, time=%{public}lldms", v36, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v6);
        MEMORY[0x21CECF960](v6, -1, -1);
        MEMORY[0x21CECF960](v36, -1, -1);

        v6 = v35;
        goto LABEL_14;
      }

LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_27;
  }

  v81 = v7 + 8;
  v43 = v82;
  (*(v7 + 16))(v82, v27, v6);
  v44 = v17;
  v45 = sub_219BE5414();
  v46 = sub_219BF6214();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    *&v87 = v85;
    *v47 = 136446466;
    v48 = [v44 publishDate];
    LODWORD(v80) = v46;
    v49 = v48;
    sub_219BDBCA4();

    sub_218963060(&qword_280EE9C60, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v50 = sub_219BF7894();
    v52 = v51;
    v53 = v83;
    v83(v11, v6);
    v54 = sub_2186D1058(v50, v52, &v87);

    *(v47 + 4) = v54;
    *(v47 + 12) = 2082;
    v55 = sub_219BF7894();
    v57 = v56;
    v53(v43, v6);
    v58 = sub_2186D1058(v55, v57, &v87);

    *(v47 + 14) = v58;
    _os_log_impl(&dword_2186C1000, v45, v80, "Today feed from newsd is not newer than our last update, publishDate=%{public}s, lastUpdate=%{public}s", v47, 0x16u);
    v59 = v85;
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v59, -1, -1);
    MEMORY[0x21CECF960](v47, -1, -1);
  }

  else
  {

    v53 = v83;
    v83(v43, v6);
  }

  sub_218962E3C(0, &qword_280EE6900, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_219BE3014();
  v53(v86, v6);
}

void sub_218962130(void *a1)
{
  if (qword_280EE5FF0 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F626B8);
  v3 = a1;
  oslog = sub_219BE5414();
  v4 = sub_219BF61F4();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_2186C1000, oslog, v4, "Failed to retrieve prefetched Today feed from newsd, error=%{public}@", v5, 0xCu);
    sub_218962D30(v6);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }
}

double sub_21896227C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for TodayConfigFetchResult(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = swift_allocObject();
  swift_weakInit();
  sub_218962EFC(a6, &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TodayConfigFetchResult);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = a3;
  v17[4] = a4;
  sub_218962F64(&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v18 = (v17 + ((v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_2187A913C;
  v18[1] = v14;

  sub_219BE3494();

  return result;
}

void sub_218962444(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Result = type metadata accessor for TodayConfigFetchResult(0);
  v12 = *(Result - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](Result - 8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v27 = a5;
    v28 = a2;
    v29 = a3;
    __swift_project_boxed_opaque_existential_1((Strong + 112), *(Strong + 136));
    type metadata accessor for TodayFeedOfflineFeedUpdater();
    sub_218962EFC(a4, &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TodayConfigFetchResult);
    v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v17 = swift_allocObject();
    sub_218962F64(&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
    v18 = sub_219BE1E04();

    if (v18)
    {
      MEMORY[0x28223BE20](v19);
      *(&v27 - 2) = v15;
      *(&v27 - 1) = v18;
      sub_219BE3204();
      v20 = swift_allocObject();
      *(v20 + 16) = v27;
      *(v20 + 24) = a6;

      v21 = sub_219BE2E54();
      sub_219BE2F74();

      v22 = swift_allocObject();
      *(v22 + 16) = v28;
      *(v22 + 24) = v29;

      v23 = sub_219BE2E54();
      sub_219BE2FD4();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v24 = sub_219BE1D94();
    sub_218963060(&qword_27CC0B2F0, MEMORY[0x277D6CAF0], MEMORY[0x277D6CAF8]);
    v25 = swift_allocError();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D6CAE0], v24);
    a2(v25);
  }
}

uint64_t sub_2189627D4(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4[3] = type metadata accessor for TodayFeedOfflineFeedUpdater.ConfigTransformer();
  v4[4] = &off_282A49950;
  v4[0] = swift_allocObject();
  sub_2186CFDE4(0, qword_280EB9BC0, &protocol descriptor for TodayConfigTransformerType);
  sub_219BE1BA4();
  __swift_destroy_boxed_opaque_existential_1(v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TodayConfigFetchResult(0);
  return sub_219BE1BA4();
}

uint64_t sub_2189628B4(void *a1, uint64_t *a2)
{
  v3 = a1[10];
  v4 = a1[11];
  v5 = *a2;
  __swift_project_boxed_opaque_existential_1(a1 + 7, v3);
  v10 = xmmword_219C0A870;
  v9[3] = v5;
  v9[4] = &off_282A49960;
  v9[0] = a2;
  v6 = *(v4 + 64);

  v7 = v6(&v10, v9, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v7;
}

uint64_t sub_21896298C(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_280EE5FF0 != -1)
  {
    swift_once();
  }

  v3 = sub_219BE5434();
  __swift_project_value_buffer(v3, qword_280F626B8);
  v4 = sub_219BE5414();
  v5 = sub_219BF6214();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2186C1000, v4, v5, "Did adopt prefetched Today feed groups", v6, 2u);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  return a2();
}

uint64_t sub_218962A88(void *a1, uint64_t (*a2)(void *))
{
  if (qword_280EE5FF0 != -1)
  {
    swift_once();
  }

  v4 = sub_219BE5434();
  __swift_project_value_buffer(v4, qword_280F626B8);
  v5 = a1;
  v6 = sub_219BE5414();
  v7 = sub_219BF61F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = a1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2186C1000, v6, v7, "Failed to adopt prefetched Today feed groups, error=%{public}@", v8, 0xCu);
    sub_218962D30(v9);
    MEMORY[0x21CECF960](v9, -1, -1);
    MEMORY[0x21CECF960](v8, -1, -1);
  }

  return a2(a1);
}

uint64_t sub_218962BE4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));

  return swift_deallocClassInstance();
}

uint64_t sub_218962CB8(uint64_t a1)
{
  sub_218963158(0, &qword_280EE7DC8, MEMORY[0x277D6CAF0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218962D30(uint64_t a1)
{
  sub_218962DB8(0, &qword_280E8D9F0, &qword_280E8DA00, 0x277D82BB8, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218962DB8(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186C6148(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_218962E3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D84F78] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_218962E9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218962EFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218962F64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayConfigFetchResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218962FC8()
{
  v1 = *(type metadata accessor for TodayConfigFetchResult(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  sub_218962444(v3, v4, v5, v0 + v2, v7, v8);
}

uint64_t sub_218963060(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2189630A8(void *a1)
{
  v3 = *(type metadata accessor for TodayConfigFetchResult(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2189627D4(a1, v4);
}

void sub_218963158(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2189631AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2187608D4;

  return sub_218960F68(a1, v4, v5, v6, v7, v9, v8);
}

void sub_218963280(uint64_t a1)
{
  if (!qword_27CC0B310)
  {
    sub_2186C6148(255, &unk_27CC0B2E0, 0x277D31420);
    sub_2186CFDE4(255, &qword_280E8B580, MEMORY[0x277D84948]);
    v1 = sub_219BF5C44();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0B310);
    }
  }
}

uint64_t sub_218963310(uint64_t a1, uint64_t a2)
{
  v15 = sub_219BDF274();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BDEEB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDFE74();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF5414();
  sub_219BDFE64();
  sub_218963C98(&qword_27CC1A3E0, MEMORY[0x277D2E1B8], MEMORY[0x277D2E1B0]);
  sub_219BDCCC4();
  (*(v10 + 8))(v12, v9);
  (*(v2 + 104))(v4, *MEMORY[0x277D2D9C8], v15);
  sub_219BDEEA4();
  sub_218963C98(&unk_27CC15AA0, MEMORY[0x277D2D740], MEMORY[0x277D2D738]);
  sub_219BDCCC4();
  (*(v6 + 8))(v8, v5);
  sub_219BDF854();
  sub_218963C98(&unk_27CC15AD0, MEMORY[0x277D2DDA8], MEMORY[0x277D2DDA0]);
  memset(v16, 0, sizeof(v16));
  sub_219BDCCE4();
  return sub_218806FD0(v16);
}

uint64_t sub_218963668(uint64_t a1)
{
  v20 = a1;
  v1 = sub_219BDF074();
  v18 = *(v1 - 8);
  v19 = v1;
  MEMORY[0x28223BE20](v1);
  v17 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BE1544();
  v3 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDBD64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE1524();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBD54();
  sub_219BDBD44();
  (*(v7 + 8))(v9, v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D2F3B0], v16);
  (*(v18 + 104))(v17, *MEMORY[0x277D2D810], v19);
  sub_219BE1514();
  sub_218963C98(&qword_280EE7FE0, MEMORY[0x277D2F398], MEMORY[0x277D2F390]);
  sub_219BDCCC4();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_2189639A4()
{
  sub_218774F78(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_218963A50(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_218963AB4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_218963B4C;
}

void sub_218963B4C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

double sub_218963BD0(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  sub_219BDD154();

  return result;
}

uint64_t sub_218963C98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218963CE0(uint64_t a1)
{
  v27 = a1;
  v26 = type metadata accessor for TagsSearchMoreFeedGroup(0);
  MEMORY[0x28223BE20](v26);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for RecipesSearchMoreFeedGroup(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF1904();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ArticlesSearchMoreFeedGroup(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SearchMoreFeedGroup(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218965054(v27, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v17 = (v7 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2189650B8(v15, v5, type metadata accessor for RecipesSearchMoreFeedGroup);
      sub_219BED874();
      v18 = sub_219BF18C4();
      (*v17)(v9, v6);
      v19 = sub_2189640AC(v18);

      v20 = v5;
      v21 = type metadata accessor for RecipesSearchMoreFeedGroup;
    }

    else
    {
      sub_2189650B8(v15, v2, type metadata accessor for TagsSearchMoreFeedGroup);
      sub_219BED874();
      v23 = sub_219BF1864();
      (*v17)(v9, v6);
      v19 = sub_2189642DC(v23, &unk_282A2DCB8, sub_21896521C);

      v20 = v2;
      v21 = type metadata accessor for TagsSearchMoreFeedGroup;
    }
  }

  else
  {
    sub_2189650B8(v15, v12, type metadata accessor for ArticlesSearchMoreFeedGroup);
    sub_219BED874();
    v22 = sub_219BF18D4();
    (*v17)(v9, v6);
    v19 = sub_2189642DC(v22, &unk_282A2DC68, sub_218965180);

    v20 = v12;
    v21 = type metadata accessor for ArticlesSearchMoreFeedGroup;
  }

  sub_218965120(v20, v21);
  return v19;
}

uint64_t sub_2189640AC(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x21CECE0F0](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = [v5 identifier];
      v9 = sub_219BF5414();
      v11 = v10;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_218840D24(0, *(v4 + 2) + 1, 1, v4);
      }

      v13 = *(v4 + 2);
      v12 = *(v4 + 3);
      if (v13 >= v12 >> 1)
      {
        v4 = sub_218840D24((v12 > 1), v13 + 1, 1, v4);
      }

      *(v4 + 2) = v13 + 1;
      v14 = &v4[16 * v13];
      *(v14 + 4) = v9;
      *(v14 + 5) = v11;
      ++v3;
      if (v7 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_19:
  v15 = sub_218845F78(v4);

  *(swift_allocObject() + 16) = v15;
  v16 = sub_219BE2E54();
  v17 = sub_219BE2F64();

  result = swift_allocObject();
  *(result + 16) = v17;
  return result;
}

uint64_t sub_2189642DC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x21CECE0F0](v5, a1);
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_15;
      }

LABEL_7:
      v9 = [v7 identifier];
      v10 = sub_219BF5414();
      v12 = v11;
      swift_unknownObjectRelease();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_218840D24(0, *(v6 + 2) + 1, 1, v6);
      }

      v14 = *(v6 + 2);
      v13 = *(v6 + 3);
      if (v14 >= v13 >> 1)
      {
        v6 = sub_218840D24((v13 > 1), v14 + 1, 1, v6);
      }

      *(v6 + 2) = v14 + 1;
      v15 = &v6[16 * v14];
      *(v15 + 4) = v10;
      *(v15 + 5) = v12;
      ++v5;
      if (v8 == i)
      {
        goto LABEL_19;
      }
    }

    if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    v7 = *(a1 + 8 * v5 + 32);
    swift_unknownObjectRetain();
    v8 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_19:
  v16 = sub_218845F78(v6);

  *(swift_allocObject() + 16) = v16;
  v17 = sub_219BE2E54();
  v18 = sub_219BE2F64();

  result = swift_allocObject();
  *(result + 16) = v18;
  return result;
}

uint64_t sub_21896450C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  if ((v6 >> 6) - 1 >= 2)
  {
    if (v6 >> 6)
    {
      goto LABEL_30;
    }

    v8 = v3 & 0xFFFFFFFFFFFFFF8;
    v25 = *a1;
    if (v3 >> 62)
    {
      goto LABEL_29;
    }

    v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
LABEL_30:
      sub_21896519C();
      swift_allocObject();
      return sub_219BE3014();
    }

LABEL_6:
    v10 = 0;
    v26 = v9;
    v11 = a2 + 56;
    while (1)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x21CECE0F0](v10, v25);
        v13 = __OFADD__(v10++, 1);
        if (v13)
        {
LABEL_25:
          __break(1u);
          goto LABEL_30;
        }
      }

      else
      {
        if (v10 >= *(v8 + 16))
        {
          __break(1u);
LABEL_29:
          v9 = sub_219BF7214();
          if (!v9)
          {
            goto LABEL_30;
          }

          goto LABEL_6;
        }

        v12 = *(v25 + 32 + 8 * v10);
        swift_unknownObjectRetain();
        v13 = __OFADD__(v10++, 1);
        if (v13)
        {
          goto LABEL_25;
        }
      }

      v14 = [v12 identifier];
      v15 = sub_219BF5414();
      v17 = v16;

      if (*(a2 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v18 = sub_219BF7AE4(), v19 = -1 << *(a2 + 32), v20 = v18 & ~v19, ((*(v11 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0))
      {
        v21 = ~v19;
        while (1)
        {
          v22 = (*(a2 + 48) + 16 * v20);
          v23 = *v22 == v15 && v22[1] == v17;
          if (v23 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v20 = (v20 + 1) & v21;
          if (((*(v11 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        swift_unknownObjectRelease();
      }

      else
      {
LABEL_7:

        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      if (v10 == v26)
      {
        goto LABEL_30;
      }
    }
  }

  sub_21896519C();
  swift_allocObject();
  sub_2189651EC(v3, v2, v5, v4, v6);
  return sub_219BE3014();
}

uint64_t sub_2189647F0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = v6 >> 6;
  if (v6 >> 6 > 1)
  {
    if (v7 != 2)
    {
LABEL_31:
      sub_21896519C();
      swift_allocObject();
      return sub_219BE3014();
    }
  }

  else if (v7)
  {
    v9 = v3 & 0xFFFFFFFFFFFFFF8;
    v27 = *a1;
    if (v3 >> 62)
    {
      goto LABEL_30;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
    {
      v11 = 0;
      v28 = i;
      v12 = a2 + 56;
      while (1)
      {
        if ((v27 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x21CECE0F0](v11, v27);
        }

        else
        {
          if (v11 >= *(v9 + 16))
          {
            goto LABEL_29;
          }

          v13 = *(v27 + 32 + 8 * v11);
        }

        v14 = v13;
        if (__OFADD__(v11++, 1))
        {
          break;
        }

        v16 = [v13 identifier];
        v17 = sub_219BF5414();
        v19 = v18;

        if (*(a2 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v20 = sub_219BF7AE4(), v21 = -1 << *(a2 + 32), v22 = v20 & ~v21, ((*(v12 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0))
        {
          v23 = ~v21;
          while (1)
          {
            v24 = (*(a2 + 48) + 16 * v22);
            v25 = *v24 == v17 && v24[1] == v19;
            if (v25 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v22 = (v22 + 1) & v23;
            if (((*(v12 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
            {
              goto LABEL_6;
            }
          }
        }

        else
        {
LABEL_6:

          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
        }

        if (v11 == v28)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      ;
    }

    goto LABEL_31;
  }

  sub_21896519C();
  swift_allocObject();
  sub_2189651EC(v3, v2, v5, v4, v6);
  return sub_219BE3014();
}

uint64_t sub_218964AD0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  if (v6 >> 6 >= 2)
  {
    if (v6 >> 6 != 2)
    {
      goto LABEL_30;
    }

    v8 = v3 & 0xFFFFFFFFFFFFFF8;
    v25 = *a1;
    if (v3 >> 62)
    {
      goto LABEL_29;
    }

    v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
LABEL_30:
      sub_21896519C();
      swift_allocObject();
      return sub_219BE3014();
    }

LABEL_6:
    v10 = 0;
    v26 = v9;
    v11 = a2 + 56;
    while (1)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x21CECE0F0](v10, v25);
        v13 = __OFADD__(v10++, 1);
        if (v13)
        {
LABEL_25:
          __break(1u);
          goto LABEL_30;
        }
      }

      else
      {
        if (v10 >= *(v8 + 16))
        {
          __break(1u);
LABEL_29:
          v9 = sub_219BF7214();
          if (!v9)
          {
            goto LABEL_30;
          }

          goto LABEL_6;
        }

        v12 = *(v25 + 32 + 8 * v10);
        swift_unknownObjectRetain();
        v13 = __OFADD__(v10++, 1);
        if (v13)
        {
          goto LABEL_25;
        }
      }

      v14 = [v12 identifier];
      v15 = sub_219BF5414();
      v17 = v16;

      if (*(a2 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v18 = sub_219BF7AE4(), v19 = -1 << *(a2 + 32), v20 = v18 & ~v19, ((*(v11 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0))
      {
        v21 = ~v19;
        while (1)
        {
          v22 = (*(a2 + 48) + 16 * v20);
          v23 = *v22 == v15 && v22[1] == v17;
          if (v23 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v20 = (v20 + 1) & v21;
          if (((*(v11 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        swift_unknownObjectRelease();
      }

      else
      {
LABEL_7:

        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      if (v10 == v26)
      {
        goto LABEL_30;
      }
    }
  }

  sub_21896519C();
  swift_allocObject();
  sub_2189651EC(v3, v2, v5, v4, v6);
  return sub_219BE3014();
}

uint64_t sub_218964DB4()
{

  return swift_deallocClassInstance();
}

unint64_t sub_218964E14()
{
  result = qword_27CC0B320;
  if (!qword_27CC0B320)
  {
    type metadata accessor for SearchMoreFeedGroup(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B320);
  }

  return result;
}

uint64_t sub_218964E74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_218963CE0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_218964EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_218964F54;

  return MEMORY[0x282191870](a1, a2, a3);
}

uint64_t sub_218964F54(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_218965054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchMoreFeedGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2189650B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218965120(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21896519C()
{
  if (!qword_27CC0B328)
  {
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0B328);
    }
  }
}

double sub_2189651EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 0xBFu)
  {
  }

  return result;
}

uint64_t ShortcutIconURL.x1URL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_219BDB954();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ShortcutIconURL.x2URL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShortcutIconURL(0) + 20);
  v4 = sub_219BDB954();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShortcutIconURL.x3URL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShortcutIconURL(0) + 24);
  v4 = sub_219BDB954();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id ShortcutIconURL.dynamicColor.getter()
{
  v1 = (v0 + *(type metadata accessor for ShortcutIconURL(0) + 28));
  if (*v1)
  {
    return [objc_opt_self() ts:*v1 dynamicColor:v1[1] withDarkStyleVariant:?];
  }

  else
  {
    return 0;
  }
}

uint64_t ShortcutIconURL.url(at:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  if (a2 < 3.0)
  {
    if (a2 >= 2.0)
    {
      v10 = 20;
      goto LABEL_11;
    }

    if (a2 >= 1.0)
    {
      goto LABEL_12;
    }

    if (qword_280EE5F18 != -1)
    {
      swift_once();
    }

    v6 = sub_219BE5434();
    __swift_project_value_buffer(v6, qword_280F62538);
    v7 = sub_219BE5414();
    v8 = sub_219BF6214();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134349056;
      *(v9 + 4) = a2;
      _os_log_impl(&dword_2186C1000, v7, v8, "Unexpected screen scale=%{public}f when determining shortcut icon url, using 3x", v9, 0xCu);
      MEMORY[0x21CECF960](v9, -1, -1);
    }
  }

  v10 = 24;
LABEL_11:
  v3 += *(type metadata accessor for ShortcutIconURL(0) + v10);
LABEL_12:
  v11 = sub_219BDB954();
  v12 = *(*(v11 - 8) + 16);

  return v12(a1, v3, v11);
}

uint64_t sub_2189655A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_218966498(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2189655D8(uint64_t a1)
{
  v2 = sub_218966138();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218965614(uint64_t a1)
{
  v2 = sub_218966138();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ShortcutIconURL.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2189661E0(0, &qword_27CC0B330, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218966138();
  sub_219BF7B44();
  LOBYTE(v14[0]) = 0;
  sub_219BDB954();
  sub_2188390BC(&unk_280EE9D40, MEMORY[0x277CC9268]);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for ShortcutIconURL(0);
    LOBYTE(v14[0]) = 1;
    sub_219BF7834();
    LOBYTE(v14[0]) = 2;
    sub_219BF7834();
    v11 = (v3 + *(v10 + 28));
    v12 = v11[1];
    v14[0] = *v11;
    v14[1] = v12;
    v14[2] = v11[2];
    v15 = 3;
    sub_21896618C();
    sub_219BF77E4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t ShortcutIconURL.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v36 = sub_219BDB954();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  MEMORY[0x28223BE20](v8);
  v35 = &v29 - v9;
  sub_2189661E0(0, &qword_27CC0B348, MEMORY[0x277D844C8]);
  v37 = v10;
  v39 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = type metadata accessor for ShortcutIconURL(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218966138();
  v38 = v12;
  v16 = v40;
  sub_219BF7B34();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v7;
  v31 = v13;
  v40 = a1;
  v32 = v15;
  LOBYTE(v41) = 0;
  sub_2188390BC(&unk_280EE9D10, MEMORY[0x277CC9280]);
  v17 = v35;
  v18 = v36;
  v19 = v37;
  sub_219BF7734();
  v35 = *(v34 + 32);
  (v35)(v32, v17, v18);
  LOBYTE(v41) = 1;
  v20 = v30;
  sub_219BF7734();
  (v35)(&v32[*(v31 + 20)], v20, v18);
  LOBYTE(v41) = 2;
  v21 = v4;
  sub_219BF7734();
  v22 = v31;
  (v35)(&v32[*(v31 + 24)], v21, v18);
  v44 = 3;
  sub_218966244();
  v23 = v38;
  sub_219BF76E4();
  (*(v39 + 8))(v23, v19);
  v25 = v32;
  v24 = v33;
  v26 = &v32[*(v22 + 28)];
  v27 = v42;
  *v26 = v41;
  *(v26 + 1) = v27;
  *(v26 + 2) = v43;
  sub_218966298(v25, v24);
  __swift_destroy_boxed_opaque_existential_1(v40);
  return sub_2189662FC(v25);
}

BOOL _s7NewsUI215ShortcutIconURLV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_219BDB8A4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ShortcutIconURL(0);
  if ((sub_219BDB8A4() & 1) == 0 || (sub_219BDB8A4() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 28);
  v6 = a1 + v5;
  v7 = *(a1 + v5);
  v8 = *(a1 + v5 + 8);
  v10 = *(a1 + v5 + 16);
  v9 = *(a1 + v5 + 24);
  v11 = *(a1 + v5 + 32);
  v12 = *(v6 + 40);
  v13 = a2 + v5;
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v13 + 24);
  v17 = *(v13 + 32);
  v35 = *(v13 + 40);
  v18 = v7;
  if (v7)
  {
    if (v14)
    {
      v33 = v11;
      v19 = *v13;
      v20 = *(v13 + 16);
      sub_2189666A0();
      sub_2189665E8(v19, v15, v20, v16, v17, v35);
      v32 = v9;
      v21 = v9;
      v22 = v12;
      v23 = v19;
      sub_2189665E8(v18, v8, v10, v21, v33, v22);
      if (sub_219BF6DD4())
      {
        if (sub_219BF6DD4() & 1) != 0 && (v10 == v20 && v32 == v16 || (sub_219BF78F4()))
        {
          if (v33 == v17 && v22 == v35)
          {

            sub_218966644(v18, v8, v10, v32, v33, v22);
            return 1;
          }

          v31 = sub_219BF78F4();

          sub_218966644(v18, v8, v10, v32, v33, v22);
          return (v31 & 1) != 0;
        }

        v25 = v18;
        v26 = v8;
        v27 = v10;
        v29 = v32;
        v28 = v33;
      }

      else
      {

        v25 = v18;
        v29 = v32;
        v26 = v8;
        v27 = v10;
        v28 = v33;
      }

      v30 = v22;
LABEL_19:
      sub_218966644(v25, v26, v27, v29, v28, v30);
      return 0;
    }

LABEL_15:
    v34 = *(v13 + 16);
    sub_2189665E8(v14, v15, v34, v16, v17, v35);
    sub_2189665E8(v18, v8, v10, v9, v11, v12);
    sub_218966644(v18, v8, v10, v9, v11, v12);
    v25 = v14;
    v26 = v15;
    v28 = v17;
    v27 = v34;
    v29 = v16;
    v30 = v35;
    goto LABEL_19;
  }

  if (v14)
  {
    goto LABEL_15;
  }

  return 1;
}

unint64_t sub_218966138()
{
  result = qword_27CC0B338;
  if (!qword_27CC0B338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B338);
  }

  return result;
}

unint64_t sub_21896618C()
{
  result = qword_27CC0B340;
  if (!qword_27CC0B340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B340);
  }

  return result;
}

void sub_2189661E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218966138();
    v7 = a3(a1, &type metadata for ShortcutIconURL.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218966244()
{
  result = qword_27CC0B350;
  if (!qword_27CC0B350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B350);
  }

  return result;
}

uint64_t sub_218966298(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutIconURL(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2189662FC(uint64_t a1)
{
  v2 = type metadata accessor for ShortcutIconURL(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_218966394()
{
  result = qword_27CC0B358;
  if (!qword_27CC0B358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B358);
  }

  return result;
}

unint64_t sub_2189663EC()
{
  result = qword_27CC0B360;
  if (!qword_27CC0B360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B360);
  }

  return result;
}

unint64_t sub_218966444()
{
  result = qword_27CC0B368;
  if (!qword_27CC0B368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B368);
  }

  return result;
}

uint64_t sub_218966498(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x4C52553178 && a2 == 0xE500000000000000;
  if (v3 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C52553278 && a2 == 0xE500000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C52553378 && a2 == 0xE500000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_219BF78F4();

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

double sub_2189665E8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v7 = a1;
    v8 = a2;
  }

  return result;
}

double sub_218966644(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
  }

  return result;
}

unint64_t sub_2189666A0()
{
  result = qword_280E8DA00;
  if (!qword_280E8DA00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8DA00);
  }

  return result;
}

void sub_2189666EC(id a1, uint64_t a2, id a3)
{
  v18 = a2;
  v5 = sub_219BE9414();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = -1;

  v10 = sub_219BF53D4();

  v11 = [a1 objectForKey_];

  if (v11)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(v19, v20);
    sub_2186CF94C(0);
    swift_dynamicCast();
    v12 = swift_allocObject();
    v13 = v18;
    v12[2] = a1;
    v12[3] = v13;
    v12[4] = a3;
    v14 = a1;

    sub_219BE6454();

    v15 = sub_219BF53D4();

    v16 = [v14 objectForKey_];

    if (v16)
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
      sub_218751558(v19, v20);
      swift_dynamicCast();
      *&v20[0] = v9 | 0x6000000000000006;
      (*(v6 + 104))(v8, *MEMORY[0x277D6E598], v5);
      sub_219BE6474();
      (*(v6 + 8))(v8, v5);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  (*(v6 + 8))(v8, v5);

  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_218966A2C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v5 = sub_219BED174();
  v32 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BED1D4();
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BED214();
  v29 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v18 = sub_219BF66A4();
  sub_219BED1F4();
  sub_219BED244();
  v28 = *(v12 + 8);
  v28(v14, v11);
  v19 = swift_allocObject();
  v20 = v26;
  v21 = v27;
  v19[2] = a2;
  v19[3] = v20;
  v19[4] = v21;
  aBlock[4] = sub_218967580;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_16;
  v22 = _Block_copy(aBlock);
  v23 = a2;

  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21874E060(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_21879DD98(0);
  sub_21874E060(&qword_280E8EFA0, sub_21879DD98, MEMORY[0x277D83970]);
  sub_219BF7164();
  MEMORY[0x21CECD420](v17, v10, v7, v22);
  _Block_release(v22);

  (*(v32 + 8))(v7, v5);
  (*(v30 + 8))(v10, v31);
  return (v28)(v17, v29);
}

void sub_218966E0C(void *a1, void (*a2)(id))
{

  v4 = sub_219BF53D4();

  v5 = [a1 objectForKey_];

  if (v5)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(&v17, &v18);
    sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);
    swift_dynamicCast();
    type metadata accessor for MagazineSectionsViewController();
    sub_219BF6584();

    v6 = v19;
    if (!v19)
    {
      v13 = objc_allocWithZone(MEMORY[0x277D6D138]);
      v14 = sub_219BF53D4();
      v11 = [v13 initWithMessage_];

      a2(v11);
LABEL_10:

      return;
    }

    v7 = sub_219BE8394();
    if (v7)
    {
      v8 = v7;
      [v7 bounds];
      v21.origin.x = 0.0;
      v21.origin.y = 0.0;
      v21.size.width = 0.0;
      v21.size.height = 0.0;
      if (!CGRectEqualToRect(v20, v21))
      {
        v11 = v8;

        v15 = sub_219BF53D4();

        [a1 setObject:v11 forKey:v15];

        v12 = 0;
        goto LABEL_9;
      }
    }

    v9 = objc_allocWithZone(MEMORY[0x277D6D138]);
    v10 = sub_219BF53D4();
    v11 = [v9 initWithMessage_];

    v12 = v11;
LABEL_9:
    a2(v12);

    goto LABEL_10;
  }

  __break(1u);
}

id _s7NewsUI215PaywallViewDataCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_218967170(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v4 = sub_219BED174();
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BED1D4();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BED214();
  v28 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v17 = sub_219BF66A4();
  sub_219BED1F4();
  sub_219BED244();
  v27 = *(v11 + 8);
  v27(v13, v10);
  v18 = swift_allocObject();
  v19 = v25;
  v20 = v26;
  v18[2] = a1;
  v18[3] = v19;
  v18[4] = v20;
  aBlock[4] = sub_218967550;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_0;
  v21 = _Block_copy(aBlock);
  v22 = a1;

  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21874E060(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_21879DD98(0);
  sub_21874E060(&qword_280E8EFA0, sub_21879DD98, MEMORY[0x277D83970]);
  sub_219BF7164();
  MEMORY[0x21CECD420](v16, v9, v6, v21);
  _Block_release(v21);

  (*(v31 + 8))(v6, v4);
  (*(v29 + 8))(v9, v30);
  return (v27)(v16, v28);
}

double sub_21896755C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_218967594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v25 = a2;
  v3 = type metadata accessor for ChannelPickerHeaderViewLayoutAttributes(0);
  MEMORY[0x28223BE20](v3 - 8);
  v27 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ChannelPickerLayoutSectionDescriptor(0) - 8;
  MEMORY[0x28223BE20](v26);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = sub_219BDC104();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE9834();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218967B40(0);
  (*(v15 + 104))(v17, *MEMORY[0x277D6E758], v14);
  sub_219BE9614();
  v18 = sub_219BF6424();
  (*(v11 + 8))(v13, v10);
  (*(v15 + 8))(v17, v14);
  __swift_project_boxed_opaque_existential_1((v24 + 16), *(v24 + 40));
  sub_218951AE4(0);
  sub_219BE8184();
  v19 = *(v9 + 3);
  v29[2] = *(v9 + 2);
  v29[3] = v19;
  v30 = *(v9 + 8);
  v20 = *(v9 + 1);
  v29[0] = *v9;
  v29[1] = v20;
  sub_218967C1C(v29, v28);
  sub_218967D30(v9, type metadata accessor for ChannelPickerLayoutSectionDescriptor);
  sub_219BE8184();
  v21 = v27;
  sub_218967C78(&v6[*(v26 + 28)], v27);
  sub_218967D30(v6, type metadata accessor for ChannelPickerLayoutSectionDescriptor);
  sub_219A4ECF4(v29, v18, v21);
  sub_218967CDC(v29);
  sub_218967D30(v21, type metadata accessor for ChannelPickerHeaderViewLayoutAttributes);
  return v18;
}

uint64_t sub_218967A00()
{
  v0 = sub_219BE9834();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218967B40(0);
  (*(v1 + 104))(v3, *MEMORY[0x277D6E758], v0);
  sub_219BF6444();
  return (*(v1 + 8))(v3, v0);
}

void sub_218967B40(uint64_t a1)
{
  if (!qword_27CC0B380)
  {
    type metadata accessor for TitleView();
    sub_218967BD4(&qword_280E92810, type metadata accessor for TitleView, &unk_219C87464);
    v1 = sub_219BE8224();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0B380);
    }
  }
}

uint64_t sub_218967BD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218967C78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelPickerHeaderViewLayoutAttributes(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218967D30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_218967DA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_218967DEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_218967E3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[0] = a4;
  sub_218968468(0, &qword_27CC0B398, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189683C0();
  sub_219BF7B44();
  v14 = 0;
  sub_219BF77F4();
  if (!v4)
  {
    v12[1] = v12[0];
    v13 = 1;
    sub_2189684CC();
    sub_219BF7834();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_218967FDC()
{
  if (*v0)
  {
    return 0x73746F6C73;
  }

  else
  {
    return 0x696669746E656469;
  }
}

void sub_218968018(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x73746F6C73 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();

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
}

uint64_t sub_2189680F8(uint64_t a1)
{
  v2 = sub_2189683C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218968134(uint64_t a1)
{
  v2 = sub_2189683C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218968170@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2189681C0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_2189681C0(void *a1)
{
  sub_218968468(0, &qword_27CC0B388, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189683C0();
  sub_219BF7B34();
  if (!v1)
  {
    v11 = 0;
    v8 = sub_219BF76F4();
    v10[15] = 1;
    sub_218968414();
    sub_219BF7734();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_2189683C0()
{
  result = qword_27CC0B390;
  if (!qword_27CC0B390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B390);
  }

  return result;
}

unint64_t sub_218968414()
{
  result = qword_280E92518;
  if (!qword_280E92518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E92518);
  }

  return result;
}

void sub_218968468(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2189683C0();
    v7 = a3(a1, &type metadata for LegacyAudioPlaylistFeedGroupConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2189684CC()
{
  result = qword_280E92520;
  if (!qword_280E92520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E92520);
  }

  return result;
}

unint64_t sub_218968534()
{
  result = qword_27CC0B3A0;
  if (!qword_27CC0B3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B3A0);
  }

  return result;
}

unint64_t sub_21896858C()
{
  result = qword_27CC0B3A8;
  if (!qword_27CC0B3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B3A8);
  }

  return result;
}

unint64_t sub_2189685E4()
{
  result = qword_27CC0B3B0;
  if (!qword_27CC0B3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B3B0);
  }

  return result;
}

void sub_218968688(uint64_t a1)
{
  if (!qword_280E8F368)
  {
    type metadata accessor for SearchModel(255);
    v1 = sub_219BF5B14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8F368);
    }
  }
}

void sub_2189686E0(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_218968688(255);
    sub_2186C6F70(255, a3, a4, a5);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v10)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_218968774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for SearchModel(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SearchResultsGroup(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189695F4(v3, v12, type metadata accessor for SearchResultsGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v22 = *v12;
        v23 = *(v12 + 24);
        v45 = *(v12 + 8);
        v46 = v23;
        v47 = *(v12 + 5);
        v24 = sub_218968C30(a1, v22);

        if (*(v24 + 16))
        {
          *a2 = v24;
          v25 = v46;
          *(a2 + 8) = v45;
          *(a2 + 24) = v25;
          *(a2 + 40) = v47;
          goto LABEL_23;
        }
      }

      else
      {
        v40 = *v12;
        v41 = *(v12 + 24);
        v45 = *(v12 + 8);
        v46 = v41;
        v47 = *(v12 + 5);
        v42 = sub_218968C30(a1, v40);

        if (*(v42 + 16))
        {
          *a2 = v42;
          v43 = v46;
          *(a2 + 8) = v45;
          *(a2 + 24) = v43;
          *(a2 + 40) = v47;
          goto LABEL_23;
        }
      }

      v37 = &qword_280EC6990;
      v38 = &qword_280EC69A0;
      v39 = &protocol descriptor for StreamingRecipeResults;
      goto LABEL_28;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v14 = *v12;
      v15 = *(v12 + 24);
      v45 = *(v12 + 8);
      v46 = v15;
      v47 = *(v12 + 5);
      v16 = sub_218968C30(a1, v14);

      if (*(v16 + 16))
      {
        *a2 = v16;
        v17 = v46;
        *(a2 + 8) = v45;
        *(a2 + 24) = v17;
        *(a2 + 40) = v47;
LABEL_23:
        swift_storeEnumTagMultiPayload();
        return (*(v10 + 56))(a2, 0, 1, v9);
      }

      v37 = &qword_280EC30F0;
      v38 = qword_280EC3100;
      v39 = &protocol descriptor for StreamingArticleResults;
      goto LABEL_28;
    }

    v33 = *v12;
    v34 = *(v12 + 24);
    v45 = *(v12 + 8);
    v46 = v34;
    v47 = *(v12 + 5);
    v35 = sub_218968C30(a1, v33);

    if (*(v35 + 16))
    {
      *a2 = v35;
      v36 = v46;
      *(a2 + 8) = v45;
      *(a2 + 24) = v36;
      *(a2 + 40) = v47;
      goto LABEL_23;
    }

LABEL_20:
    v37 = &qword_280ED01D0;
    v38 = &qword_280ED01E0;
    v39 = &protocol descriptor for StreamingTagResults;
LABEL_28:
    sub_2187B1C64(&v45, v37, v38, v39);

    return (*(v10 + 56))(a2, 1, 1, v9);
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *v12;
      v19 = *(v12 + 24);
      v45 = *(v12 + 8);
      v46 = v19;
      v47 = *(v12 + 5);
      v20 = sub_218968C30(a1, v18);

      if (*(v20 + 16))
      {
        *a2 = v20;
        v21 = v46;
        *(a2 + 8) = v45;
        *(a2 + 24) = v21;
        *(a2 + 40) = v47;
        goto LABEL_23;
      }
    }

    else
    {
      v29 = *v12;
      v30 = *(v12 + 24);
      v45 = *(v12 + 8);
      v46 = v30;
      v47 = *(v12 + 5);
      v31 = sub_218968C30(a1, v29);

      if (*(v31 + 16))
      {
        *a2 = v31;
        v32 = v46;
        *(a2 + 8) = v45;
        *(a2 + 24) = v32;
        *(a2 + 40) = v47;
        goto LABEL_23;
      }
    }

    goto LABEL_20;
  }

  sub_218969590(v12, v8);
  v26 = sub_218ABE09C();
  if (v27)
  {
    v28 = sub_2188537B8(v26, v27, a1);

    sub_21896965C(v8, type metadata accessor for SearchModel);
    if ((v28 & 1) == 0)
    {
      sub_2189695F4(v3, a2, type metadata accessor for SearchResultsGroup);
      return (*(v10 + 56))(a2, 0, 1, v9);
    }
  }

  else
  {
    sub_21896965C(v8, type metadata accessor for SearchModel);
  }

  return (*(v10 + 56))(a2, 1, 1, v9);
}

uint64_t sub_218968C30(uint64_t a1, uint64_t a2)
{
  v88 = sub_219BF0B74();
  v4 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v87 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308(0);
  v86 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v85 = v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_219BF0F34();
  v96 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v83 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88(0);
  v82 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v81 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_219BF04A4();
  v13 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018(0);
  v78 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v77 = v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SearchModel(0);
  MEMORY[0x28223BE20](v18);
  v93 = v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v67 - v21;
  MEMORY[0x28223BE20](v23);
  v26 = v67 - v25;
  v95 = *(a2 + 16);
  if (v95)
  {
    v27 = v7;
    v28 = 0;
    v90 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v94 = a2 + v90;
    v29 = v4;
    v30 = *(v24 + 72);
    v75 = (v27 + 32);
    v74 = (v29 + 8);
    v73 = (v27 + 8);
    v72 = (v11 + 32);
    v71 = (v96 + 8);
    v70 = v11 + 8;
    v69 = (v16 + 32);
    v68 = (v13 + 8);
    v67[1] = v16 + 8;
    v96 = a1 + 56;
    v31 = MEMORY[0x277D84F90];
    v89 = v18;
    v91 = v30;
    v92 = v67 - v25;
    v76 = a1;
    while (1)
    {
      sub_2189695F4(v94 + v30 * v28, v26, type metadata accessor for SearchModel);
      sub_2189695F4(v26, v22, type metadata accessor for SearchModel);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        break;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v45 = v81;
        v46 = v82;
        (*v72)(v81, v22, v82);
        v47 = v83;
        sub_219BF07D4();
        v48 = sub_219BF0F14();
        (*v71)(v47, v84);
        v49 = [v48 identifier];
        swift_unknownObjectRelease();
        v40 = sub_219BF5414();
        v42 = v50;

        v51 = &v98;
LABEL_15:
        (**(v51 - 32))(v45, v46);
        goto LABEL_16;
      }

      if (EnumCaseMultiPayload != 3)
      {
        v32 = type metadata accessor for SearchModel;
        v33 = v22;
LABEL_4:
        sub_21896965C(v33, v32);
        goto LABEL_5;
      }

      v35 = v85;
      v36 = v86;
      (*v75)(v85, v22, v86);
      v37 = v87;
      sub_219BF07D4();
      v38 = sub_219BF0B44();
      (*v74)(v37, v88);
      v39 = [v38 identifier];

      v40 = sub_219BF5414();
      v42 = v41;

      v43 = v36;
      a1 = v76;
      (*v73)(v35, v43);
LABEL_16:
      v26 = v92;
      if (!*(a1 + 16) || (sub_219BF7AA4(), sub_219BF5524(), v56 = sub_219BF7AE4(), v57 = -1 << *(a1 + 32), v58 = v56 & ~v57, ((*(v96 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0))
      {
LABEL_25:

        sub_218969590(v26, v93);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v99 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_218C34130(0, *(v31 + 16) + 1, 1);
          v31 = v99;
        }

        v64 = *(v31 + 16);
        v63 = *(v31 + 24);
        if (v64 >= v63 >> 1)
        {
          sub_218C34130((v63 > 1), v64 + 1, 1);
          v31 = v99;
        }

        *(v31 + 16) = v64 + 1;
        v65 = v31 + v90 + v64 * v91;
        v30 = v91;
        sub_218969590(v93, v65);
        goto LABEL_6;
      }

      v59 = ~v57;
      while (1)
      {
        v60 = (*(a1 + 48) + 16 * v58);
        v61 = *v60 == v40 && v60[1] == v42;
        if (v61 || (sub_219BF78F4() & 1) != 0)
        {
          break;
        }

        v58 = (v58 + 1) & v59;
        if (((*(v96 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v30 = v91;
LABEL_5:
      sub_21896965C(v26, type metadata accessor for SearchModel);
LABEL_6:
      if (++v28 == v95)
      {
        return v31;
      }
    }

    if (!EnumCaseMultiPayload)
    {

      sub_2186F8128(0);
      v32 = type metadata accessor for SearchFeedGapLocation;
      v33 = &v22[*(v44 + 48)];
      goto LABEL_4;
    }

    v45 = v77;
    v46 = v78;
    (*v69)(v77, v22, v78);
    v52 = v79;
    sub_219BF07D4();
    v53 = sub_219BF0404();
    (*v68)(v52, v80);
    v54 = [v53 identifier];
    swift_unknownObjectRelease();
    v40 = sub_219BF5414();
    v42 = v55;

    v51 = &v97;
    goto LABEL_15;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_218969590(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2189695F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21896965C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2189696BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[1] = a2;
  sub_2189698E4(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21896993C(0);
  v7 = v6;
  sub_219BF07D4();
  v14[0] = sub_219BF07B4();
  v8 = v22[2];
  v9 = *MEMORY[0x277D337A0];
  v10 = sub_219BF2204();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v5, v9, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  v12 = v8;
  swift_unknownObjectRetain();
  sub_219BF07D4();
  sub_2187B14CC(&v21, &v19, &unk_27CC20250, &qword_280E8FD20, MEMORY[0x277D34670]);
  sub_218969A64(&v20);
  sub_2187B14CC(&v23, &v18, &unk_27CC20260, &qword_280E901E0, MEMORY[0x277D33CA8]);
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  sub_219BF09F4();
  (*(*(v7 - 8) + 8))(a1, v7);
  return sub_218969A64(v22);
}

void sub_2189698E4(uint64_t a1)
{
  if (!qword_27CC0B3B8)
  {
    sub_219BF2204();
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0B3B8);
    }
  }
}

void sub_21896993C(uint64_t a1)
{
  if (!qword_280E90E40)
  {
    sub_2189699BC();
    sub_218969A10();
    v1 = sub_219BF0854();
    if (!v2)
    {
      atomic_store(v1, &qword_280E90E40);
    }
  }
}

unint64_t sub_2189699BC()
{
  result = qword_280ECB8F8;
  if (!qword_280ECB8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECB8F8);
  }

  return result;
}

unint64_t sub_218969A10()
{
  result = qword_280ECB900[0];
  if (!qword_280ECB900[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ECB900);
  }

  return result;
}

uint64_t sub_218969D60()
{

  return swift_deallocClassInstance();
}

unint64_t sub_218969EF0()
{
  result = qword_27CC0B3C0;
  if (!qword_27CC0B3C0)
  {
    type metadata accessor for StubFeatureAvailability();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B3C0);
  }

  return result;
}

double sub_218969F44(void *a1, uint64_t a2, char *a3)
{
  v399 = a1;
  v398 = a3;
  v378 = a2;
  v3 = type metadata accessor for CustomItemRouteModel(0);
  MEMORY[0x28223BE20](v3 - 8);
  v385 = &v361 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v369 = type metadata accessor for PuzzleModel(0);
  MEMORY[0x28223BE20](v369);
  v384 = &v361 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WebEmbedRouteModel(0);
  MEMORY[0x28223BE20](v6 - 8);
  v383 = &v361 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDD664();
  v387 = *(v8 - 8);
  v388 = v8;
  MEMORY[0x28223BE20](v8);
  v386 = &v361 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21896FA3C(0);
  v397 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v374 = &v361 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v382 = &v361 - v13;
  MEMORY[0x28223BE20](v14);
  v373 = &v361 - v15;
  MEMORY[0x28223BE20](v16);
  v376 = &v361 - v17;
  MEMORY[0x28223BE20](v18);
  v372 = &v361 - v19;
  MEMORY[0x28223BE20](v20);
  v380 = &v361 - v21;
  MEMORY[0x28223BE20](v22);
  v371 = &v361 - v23;
  MEMORY[0x28223BE20](v24);
  v375 = &v361 - v25;
  MEMORY[0x28223BE20](v26);
  v368 = &v361 - v27;
  MEMORY[0x28223BE20](v28);
  v381 = &v361 - v29;
  MEMORY[0x28223BE20](v30);
  v370 = &v361 - v31;
  MEMORY[0x28223BE20](v32);
  v379 = &v361 - v33;
  MEMORY[0x28223BE20](v34);
  v362 = &v361 - v35;
  MEMORY[0x28223BE20](v36);
  v364 = &v361 - v37;
  MEMORY[0x28223BE20](v38);
  v367 = &v361 - v39;
  MEMORY[0x28223BE20](v40);
  v395 = (&v361 - v41);
  MEMORY[0x28223BE20](v42);
  v366 = &v361 - v43;
  v396 = v44;
  MEMORY[0x28223BE20](v45);
  v394 = &v361 - v46;
  v393 = sub_219BE8C14();
  v377 = *(v393 - 8);
  MEMORY[0x28223BE20](v393);
  v392 = &v361 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_219BE9414();
  v49 = *(v48 - 8);
  v389 = v48;
  v390 = v49;
  MEMORY[0x28223BE20](v48);
  v363 = &v361 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v365 = &v361 - v52;
  MEMORY[0x28223BE20](v53);
  v391 = &v361 - v54;
  MEMORY[0x28223BE20](v55);
  v57 = &v361 - v56;
  v58 = sub_219BDD944();
  MEMORY[0x28223BE20](v58 - 8);
  v60 = &v361 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for MagazineFeedRouteModel(0);
  MEMORY[0x28223BE20](v61);
  v63 = &v361 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *v398;
  v64 = *(v398 + 1);
  v66 = *(v398 + 2);
  v67 = *(v398 + 3);
  v68 = v398[32];
  sub_21896FE88(v399, v63, type metadata accessor for MagazineFeedRouteModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v380 = v67;
    v382 = v66;
    v383 = v64;
    v384 = v65;
    LODWORD(v385) = v68;
    v84 = v391;
    v83 = v392;
    v86 = v393;
    v85 = v394;
    v87 = v395;
    v398 = v57;
    v399 = v60;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v119 = *(v63 + 9);
        v409 = *(v63 + 8);
        v410[0] = v119;
        *(v410 + 9) = *(v63 + 153);
        v120 = *(v63 + 5);
        v405 = *(v63 + 4);
        v406 = v120;
        v121 = *(v63 + 7);
        v407 = *(v63 + 6);
        v408 = v121;
        v122 = *(v63 + 1);
        v401 = *v63;
        v402 = v122;
        v123 = *(v63 + 3);
        v403 = *(v63 + 2);
        v404 = v123;
        v124 = v400;
        v125 = *(v400 + 112);
        v126 = swift_allocObject();
        sub_21896FC94(&v401, v126 + 16);
        v399 = v126;
        v127 = v126 | 0x6000000000000004;
        v128 = *(v124 + 64);
        v129 = sub_219BDFA44();
        v130 = v87;
        (*(*(v129 - 8) + 56))(v87, 1, 1, v129);
        sub_218718690(v124 + 72, &v418);
        v428 = 0;
        v426 = 0u;
        v427 = 0u;
        *&v412 = v125;
        sub_21896FEF0(&v426, &v414, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        if (*(&v415 + 1))
        {
          sub_21875F93C(&v414, &v423);
          v131 = v396;
          v132 = v367;
          if (qword_280ED32D0 != -1)
          {
            swift_once();
          }

          v134 = qword_280ED32D8;
          v133 = qword_280ED32E0;
          v135 = qword_280ED32E8;

          v400 = v133;
          sub_2188202A8(v133);
          __swift_destroy_boxed_opaque_existential_1(&v423);
        }

        else
        {
          sub_21896FF74(&v414, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
          v131 = v396;
          v132 = v367;
          if (qword_280ED32D0 != -1)
          {
            swift_once();
          }

          v134 = qword_280ED32D8;
          v256 = qword_280ED32E0;
          v135 = qword_280ED32E8;

          v400 = v256;
          sub_2188202A8(v256);
        }

        v417 = v127;
        *(&v415 + 1) = sub_219BDD274();
        *&v414 = v128;
        sub_21896FE88(v130, v132, sub_21896FA3C);
        sub_21896FEF0(&v418, &v423, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        v257 = (v397[80] + 24) & ~v397[80];
        v258 = (v131 + v257 + 7) & 0xFFFFFFFFFFFFFFF8;
        v259 = v128;
        v260 = (v258 + 47) & 0xFFFFFFFFFFFFFFF8;
        v261 = swift_allocObject();
        *(v261 + 16) = v259;
        sub_21896FA98(v132, v261 + v257, sub_21896FA3C);
        v262 = v261 + v258;
        v263 = v424;
        *v262 = v423;
        *(v262 + 16) = v263;
        *(v262 + 32) = v425;
        v264 = (v261 + v260);
        v265 = (v261 + ((v260 + 23) & 0xFFFFFFFFFFFFFFF8));
        *v264 = 0;
        v264[1] = 0;
        v266 = v400;
        *v265 = v134;
        v265[1] = v266;
        v265[2] = v135;
        swift_retain_n();

        sub_2188202A8(v266);
        sub_2186CF94C(0);
        sub_2186F7D20(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
        sub_219BEB464();

        sub_2187FABEC(v266, v135);
        sub_21896FF74(&v426, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        sub_21896FF74(&v418, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        sub_2189700AC(v395, sub_21896FA3C);
        sub_21896FCF0(&v401);
        v279 = &v414;
        goto LABEL_79;
      }

      (v387)[4](v386, v63, v388);
      v399 = [objc_allocWithZone(type metadata accessor for FeedViewContext(0)) init];
      v395 = *(v400 + 112);
      v198 = sub_219BDD654();
      v398 = v198;
      v199 = swift_allocObject();
      v200 = v383;
      v201 = v384;
      v202 = v382;
      v203 = v380;
      v204 = v385;
      v205 = [v198 identifier];
      v206 = sub_219BF5414();
      v208 = v207;

      v209 = v399;
      swift_unknownObjectRelease();
      *(v199 + 16) = v206;
      *(v199 + 24) = v208;
      *(v199 + 32) = v209;
      *(v199 + 40) = 0;
      *(v199 + 48) = 1;
      *(v199 + 56) = 0;
      *(v199 + 64) = v201;
      *(v199 + 72) = v200;
      *(v199 + 80) = v202;
      *(v199 + 88) = v203;
      *(v199 + 96) = v204;
      v398 = v199;
      v210 = v199 | 0x2000000000000006;
      v211 = v400;
      v212 = *(v400 + 64);
      v213 = sub_219BDFA44();
      v214 = v381;
      (*(*(v213 - 8) + 56))(v381, 1, 1, v213);
      sub_218718690(v211 + 72, &v401);
      v420 = 0;
      v418 = 0u;
      v419 = 0u;
      *&v414 = v395;
      sub_21896FEF0(&v418, &v423, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (*(&v424 + 1))
      {
        sub_21875F93C(&v423, &v426);
        v215 = qword_280ED32D0;
        v216 = v209;
        v217 = v368;
        if (v215 != -1)
        {
          swift_once();
        }

        v219 = qword_280ED32D8;
        v218 = qword_280ED32E0;
        v220 = qword_280ED32E8;

        v400 = v218;
        sub_2188202A8(v218);
        __swift_destroy_boxed_opaque_existential_1(&v426);
      }

      else
      {
        v267 = v209;
        sub_21896FF74(&v423, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        v217 = v368;
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v219 = qword_280ED32D8;
        v268 = qword_280ED32E0;
        v220 = qword_280ED32E8;

        v400 = v268;
        sub_2188202A8(v268);
      }

      *&v412 = v210;
      *(&v424 + 1) = sub_219BDD274();
      *&v423 = v212;
      sub_21896FE88(v214, v217, sub_21896FA3C);
      sub_21896FEF0(&v401, &v426, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v269 = (v397[80] + 24) & ~v397[80];
      v270 = v212;
      v271 = (v396 + v269 + 7) & 0xFFFFFFFFFFFFFFF8;
      v272 = (v271 + 47) & 0xFFFFFFFFFFFFFFF8;
      v273 = swift_allocObject();
      *(v273 + 16) = v270;
      sub_21896FA98(v217, v273 + v269, sub_21896FA3C);
      v274 = v273 + v271;
      v275 = v427;
      *v274 = v426;
      *(v274 + 16) = v275;
      *(v274 + 32) = v428;
      v276 = (v273 + v272);
      v277 = (v273 + ((v272 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v276 = 0;
      v276[1] = 0;
      v278 = v400;
      *v277 = v219;
      v277[1] = v278;
      v277[2] = v220;
      swift_retain_n();

      sub_2188202A8(v278);
      sub_2186CF94C(0);
      sub_2186F7D20(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
      sub_219BEB464();

      sub_2187FABEC(v278, v220);

      sub_21896FF74(&v418, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      sub_21896FF74(&v401, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_2189700AC(v381, sub_21896FA3C);
      (v387[1])(v386, v388);
      sub_218806FD0(&v423);
    }

    else if (EnumCaseMultiPayload)
    {
      v158 = *(v63 + 1);
      v160 = *(v63 + 2);
      v159 = *(v63 + 3);
      v161 = *(v63 + 4);
      v162 = v63[40];
      v399 = *v63;
      *&v401 = v399;
      *(&v401 + 1) = v158;
      *&v402 = v160;
      *(&v402 + 1) = v159;
      *&v403 = v161;
      BYTE8(v403) = v162;
      v163 = sub_219BD4870();
      v165 = sub_21896D844(v163, v164);

      if (v165)
      {
        v398 = v161;
        (*(v377 + 16))(v83, v378, v86);
        v166 = v365;
        sub_219BE9424();
        v168 = v389;
        v167 = v390;
        v169 = v363;
        (v390[2])(v363, v166, v389);
        v170 = (v167[11])(v169, v168);
        v171 = *MEMORY[0x277D6E598];
        v172 = (v167 + 1);
        v395 = v167 + 1;
        LODWORD(v394) = v162;
        if (v170 == v171)
        {
          v391 = *v172;
          (v391)(v169, v168);
          v393 = *(v400 + 112);
          v173 = swift_allocObject();
          v174 = v160;
          v175 = v159;
          v176 = v398;
          v177 = v399;
          v178 = v173;
          *&v401 = v399;
          *(&v401 + 1) = v158;
          v179 = v158;
          *&v402 = v174;
          *(&v402 + 1) = v175;
          *&v403 = v398;
          v180 = v162;
          BYTE8(v403) = v162;
          sub_21896FE24(v399, v179, v174, v175, v398, v162);
          v181 = sub_219BD47C0();
          v422 = v162;
          *(v178 + 16) = v177;
          *(v178 + 24) = v179;
          *(v178 + 32) = v174;
          *(v178 + 40) = v175;
          *(v178 + 48) = v176;
          *(v178 + 56) = v162 & 1 | 0x8000000000000000;
          *(v178 + 64) = v181;
          *(v178 + 72) = v182;
          *(v178 + 80) = MEMORY[0x277D84F90];
          v390 = v178;
          v385 = v178 | 0x5000000000000000;
          v183 = v176;
          v184 = v175;
          v185 = v400;
          v186 = *(v400 + 64);
          v187 = sub_219BDFA44();
          v188 = v180;
          v189 = v364;
          (*(*(v187 - 8) + 56))(v364, 1, 1, v187);
          v190 = sub_218718690(v185 + 72, &v426);
          *&v418 = v177;
          *(&v418 + 1) = v179;
          v392 = v179;
          v387 = v174;
          v388 = v184;
          *&v419 = v174;
          *(&v419 + 1) = v184;
          v420 = v183;
          v421 = v188;
          v191 = sub_219BD48CC(v190);
          v386 = v192;
          v425 = 0;
          v423 = 0u;
          v424 = 0u;
          v417 = v393;
          sub_21896FEF0(&v423, &v412, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
          if (v413)
          {
            sub_21875F93C(&v412, &v414);
            v193 = qword_280ED32D0;
            swift_unknownObjectRetain();
            v194 = v362;
            if (v193 != -1)
            {
              swift_once();
            }

            v195 = qword_280ED32E0;
            v196 = qword_280ED32E8;
            v393 = qword_280ED32D8;

            v400 = v195;
            v197 = v196;
            sub_2188202A8(v195);
            __swift_destroy_boxed_opaque_existential_1(&v414);
          }

          else
          {
            swift_unknownObjectRetain();
            sub_21896FF74(&v412, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
            v194 = v362;
            if (qword_280ED32D0 != -1)
            {
              swift_once();
            }

            v348 = qword_280ED32E0;
            v349 = qword_280ED32E8;
            v393 = qword_280ED32D8;

            v400 = v348;
            v197 = v349;
            sub_2188202A8(v348);
          }

          v411 = v385;
          v413 = sub_219BDD274();
          *&v412 = v186;
          sub_21896FE88(v189, v194, sub_21896FA3C);
          sub_21896FEF0(&v426, &v414, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
          v350 = (v397[80] + 24) & ~v397[80];
          v351 = (v396 + v350 + 7) & 0xFFFFFFFFFFFFFFF8;
          v352 = v194;
          v353 = (v351 + 47) & 0xFFFFFFFFFFFFFFF8;
          v354 = swift_allocObject();
          *(v354 + 16) = v186;
          sub_21896FA98(v352, v354 + v350, sub_21896FA3C);
          v355 = v354 + v351;
          v356 = v415;
          *v355 = v414;
          *(v355 + 16) = v356;
          *(v355 + 32) = v416;
          v357 = (v354 + v353);
          v358 = v386;
          *v357 = v191;
          v357[1] = v358;
          v359 = (v354 + ((v353 + 23) & 0xFFFFFFFFFFFFFFF8));
          v360 = v400;
          *v359 = v393;
          v359[1] = v360;
          v359[2] = v197;
          swift_retain_n();
          swift_unknownObjectRetain();

          sub_2188202A8(v360);
          sub_2186CF94C(0);
          sub_2186F7D20(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
          sub_219BEB464();

          swift_unknownObjectRelease();

          sub_2187FABEC(v360, v197);
          sub_21896FDCC(v399, v392, v387, v388, v398, v394);
          sub_21896FF74(&v423, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
          sub_21896FF74(&v426, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
          sub_2189700AC(v364, sub_21896FA3C);
          (v391)(v365, v389);
          sub_218806FD0(&v412);
        }

        else
        {
          v397 = *v172;
          (v397)(v169, v168);
          v338 = v398;
          v339 = v159;
          v340 = v160;
          v341 = v162;
          v400 = *(v400 + 112);
          v342 = swift_allocObject();
          v343 = v399;
          *&v401 = v399;
          *(&v401 + 1) = v158;
          *&v402 = v340;
          *(&v402 + 1) = v339;
          *&v403 = v338;
          BYTE8(v403) = v341;
          sub_21896FE24(v399, v158, v340, v339, v338, v341);
          v344 = sub_219BD47C0();
          LOBYTE(v426) = v341;
          *(v342 + 16) = v343;
          *(v342 + 24) = v158;
          *(v342 + 32) = v340;
          *(v342 + 40) = v339;
          *(v342 + 48) = v338;
          *(v342 + 56) = v341 & 1 | 0x8000000000000000;
          *(v342 + 64) = v344;
          *(v342 + 72) = v345;
          *(v342 + 80) = &unk_282A21B78;
          *&v418 = v342 | 0x5000000000000000;
          sub_219BE6474();
          sub_21896FDCC(v343, v158, v340, v339, v398, v394);
          v346 = sub_218932F9C(v418);
          (v397)(v166, v389, v346);
        }
      }

      else
      {
        sub_21896FDCC(v399, v158, v160, v159, v161, v162);
      }
    }

    else
    {
      v88 = v399;
      sub_21896FA98(v63, v399, MEMORY[0x277D2FB40]);
      (*(v377 + 16))(v83, v378, v86);
      sub_219BE9424();
      v89 = v389;
      v90 = v390;
      v91 = v84;
      (v390[13])(v84, *MEMORY[0x277D6E598], v389);
      sub_2186F7D20(&unk_280EE44E0, 255, MEMORY[0x277D6E5A8], MEMORY[0x277D6E5B0]);
      v92 = sub_219BF53A4();
      v95 = v90[1];
      v93 = v90 + 1;
      v94 = v95;
      (v95)(v91, v89);
      v96 = v85;
      if ((v92 & 1) == 0)
      {
        v97 = sub_219BE8BF4();
        if (v97)
        {
          v98 = v97;
          sub_218C1A2CC(&v401);
          v99 = v401;
          if ((~v401 & 0xF000000000000007) != 0)
          {
            v347 = v398;
            sub_219BE6474();

            (v94)(v347, v89);
            sub_2189700AC(v399, MEMORY[0x277D2FB40]);
            return sub_218970170(v99);
          }
        }
      }

      v395 = v94;
      v390 = v93;
      v100 = v400;
      v101 = *(v400 + 112);
      sub_2187B2C48(0);
      v103 = v102;
      v104 = swift_allocBox();
      v106 = v105;
      v107 = *(v103 + 48);
      sub_2187B2DA0(0);
      v109 = *(v108 + 48);
      sub_21896FE88(v88, v106, MEMORY[0x277D2FB40]);
      v110 = MEMORY[0x277D84F90];
      *(v106 + v109) = MEMORY[0x277D84F90];
      *(v106 + v107) = v110;
      v393 = v104;
      v111 = v104 | 2;
      v112 = *(v100 + 64);
      v113 = sub_219BDFA44();
      (*(*(v113 - 8) + 56))(v96, 1, 1, v113);
      sub_218718690(v100 + 72, &v401);
      v420 = 0;
      v418 = 0u;
      v419 = 0u;
      *&v414 = v101;
      sub_21896FEF0(&v418, &v423, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (*(&v424 + 1))
      {
        sub_21875F93C(&v423, &v426);
        *&v423 = v111;
        v114 = sub_2194DA78C(&v426);
        v400 = v115;
        v117 = v116;
        __swift_destroy_boxed_opaque_existential_1(&v426);
        v118 = v396;
      }

      else
      {
        sub_21896FF74(&v423, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        v118 = v396;
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v114 = qword_280ED32D8;
        v327 = qword_280ED32E0;
        v117 = qword_280ED32E8;

        v400 = v327;
        sub_2188202A8(v327);
      }

      v328 = v366;
      *&v412 = v111;
      *(&v424 + 1) = sub_219BDD274();
      *&v423 = v112;
      sub_21896FE88(v96, v328, sub_21896FA3C);
      sub_21896FEF0(&v401, &v426, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v329 = (v397[80] + 24) & ~v397[80];
      v330 = (v118 + v329 + 7) & 0xFFFFFFFFFFFFFFF8;
      v331 = (v330 + 47) & 0xFFFFFFFFFFFFFFF8;
      v332 = swift_allocObject();
      *(v332 + 16) = v112;
      sub_21896FA98(v328, v332 + v329, sub_21896FA3C);
      v333 = v332 + v330;
      v334 = v427;
      *v333 = v426;
      *(v333 + 16) = v334;
      *(v333 + 32) = v428;
      v335 = (v332 + v331);
      v336 = (v332 + ((v331 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v335 = 0;
      v335[1] = 0;
      v337 = v400;
      *v336 = v114;
      v336[1] = v337;
      v336[2] = v117;
      swift_retain_n();

      sub_2188202A8(v337);
      sub_2186CF94C(0);
      sub_2186F7D20(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
      sub_219BEB464();

      sub_2187FABEC(v337, v117);
      sub_21896FF74(&v418, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      sub_21896FF74(&v401, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_2189700AC(v394, sub_21896FA3C);
      (v395)(v398, v389);
      sub_2189700AC(v399, MEMORY[0x277D2FB40]);
      sub_218806FD0(&v423);
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v136 = v383;
        sub_21896FA98(v63, v383, type metadata accessor for WebEmbedRouteModel);
        v137 = *(v400 + 112);
        v138 = sub_219BDB954();
        v139 = swift_allocBox();
        (*(*(v138 - 8) + 16))(v140, v136, v138);
        v141 = v139 | 0x6000000000000000;
        v142 = sub_219BDFA44();
        v143 = v375;
        (*(*(v142 - 8) + 56))(v375, 1, 1, v142);
        *&v403 = 0;
        v401 = 0u;
        v402 = 0u;
        v420 = 0;
        v418 = 0u;
        v419 = 0u;
        *&v414 = v137;
        sub_21896FEF0(&v418, &v423, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        v399 = v139;
        if (*(&v424 + 1))
        {
          sub_21875F93C(&v423, &v426);
          if (qword_280ED32D0 != -1)
          {
            swift_once();
          }

          v145 = qword_280ED32D8;
          v144 = qword_280ED32E0;
          v146 = qword_280ED32E8;

          v400 = v144;
          sub_2188202A8(v144);
          __swift_destroy_boxed_opaque_existential_1(&v426);
        }

        else
        {
          sub_21896FF74(&v423, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
          if (qword_280ED32D0 != -1)
          {
            swift_once();
          }

          v145 = qword_280ED32D8;
          v304 = qword_280ED32E0;
          v146 = qword_280ED32E8;

          v400 = v304;
          sub_2188202A8(v304);
        }

        *&v412 = v141;
        v423 = 0u;
        v424 = 0u;
        v305 = v371;
        sub_21896FE88(v143, v371, sub_21896FA3C);
        sub_21896FEF0(&v401, &v426, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        v306 = (v397[80] + 24) & ~v397[80];
        v307 = (v396 + v306 + 7) & 0xFFFFFFFFFFFFFFF8;
        v308 = (v307 + 47) & 0xFFFFFFFFFFFFFFF8;
        v309 = swift_allocObject();
        *(v309 + 16) = 0;
        sub_21896FA98(v305, v309 + v306, sub_21896FA3C);
        v310 = v309 + v307;
        v311 = v427;
        *v310 = v426;
        *(v310 + 16) = v311;
        *(v310 + 32) = v428;
        v312 = (v309 + v308);
        v313 = (v309 + ((v308 + 23) & 0xFFFFFFFFFFFFFFF8));
        *v312 = 0;
        v312[1] = 0;
        v314 = v400;
        *v313 = v145;
        v313[1] = v314;
        v313[2] = v146;

        sub_2188202A8(v314);
        sub_2186CF94C(0);
        sub_2186F7D20(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
        sub_219BEB464();

        sub_2187FABEC(v314, v146);
        sub_21896FF74(&v418, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        sub_21896FF74(&v401, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        sub_2189700AC(v143, sub_21896FA3C);
        v254 = type metadata accessor for WebEmbedRouteModel;
        v255 = v383;
      }

      else
      {
        v229 = v384;
        sub_21896FA98(v63, v384, type metadata accessor for PuzzleModel);
        v230 = v400;
        v231 = *(v400 + 112);
        v232 = swift_allocBox();
        sub_21896FE88(v229, v233, type metadata accessor for PuzzleModel);
        v234 = v232 | 0xE000000000000006;
        v235 = *(v230 + 64);
        v236 = sub_219BDFA44();
        v237 = v380;
        (*(*(v236 - 8) + 56))(v380, 1, 1, v236);
        sub_218718690(v230 + 72, &v401);
        v420 = 0;
        v418 = 0u;
        v419 = 0u;
        *&v414 = v231;
        sub_21896FEF0(&v418, &v423, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        v399 = v232;
        if (*(&v424 + 1))
        {
          sub_21875F93C(&v423, &v426);
          v238 = v396;
          if (qword_280ED32D0 != -1)
          {
            swift_once();
          }

          v240 = qword_280ED32D8;
          v239 = qword_280ED32E0;
          v241 = qword_280ED32E8;

          v400 = v239;
          sub_2188202A8(v239);
          __swift_destroy_boxed_opaque_existential_1(&v426);
        }

        else
        {
          sub_21896FF74(&v423, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
          v238 = v396;
          if (qword_280ED32D0 != -1)
          {
            swift_once();
          }

          v240 = qword_280ED32D8;
          v315 = qword_280ED32E0;
          v241 = qword_280ED32E8;

          v400 = v315;
          sub_2188202A8(v315);
        }

        *&v412 = v234;
        *(&v424 + 1) = sub_219BDD274();
        *&v423 = v235;
        v316 = v235;
        v317 = v372;
        sub_21896FE88(v237, v372, sub_21896FA3C);
        sub_21896FEF0(&v401, &v426, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        v318 = (v397[80] + 24) & ~v397[80];
        v319 = (v238 + v318 + 7) & 0xFFFFFFFFFFFFFFF8;
        v320 = (v319 + 47) & 0xFFFFFFFFFFFFFFF8;
        v321 = swift_allocObject();
        *(v321 + 16) = v316;
        sub_21896FA98(v317, v321 + v318, sub_21896FA3C);
        v322 = v321 + v319;
        v323 = v427;
        *v322 = v426;
        *(v322 + 16) = v323;
        *(v322 + 32) = v428;
        v324 = (v321 + v320);
        v325 = (v321 + ((v320 + 23) & 0xFFFFFFFFFFFFFFF8));
        *v324 = 0;
        v324[1] = 0;
        v326 = v400;
        *v325 = v240;
        v325[1] = v326;
        v325[2] = v241;
        swift_retain_n();

        sub_2188202A8(v326);
        sub_2186CF94C(0);
        sub_2186F7D20(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
        sub_219BEB464();

        sub_2187FABEC(v326, v241);
        sub_21896FF74(&v418, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        sub_21896FF74(&v401, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        sub_2189700AC(v380, sub_21896FA3C);
        v254 = type metadata accessor for PuzzleModel;
        v255 = v384;
      }

      goto LABEL_78;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v147 = v385;
      sub_21896FA98(v63, v385, type metadata accessor for CustomItemRouteModel);
      v148 = *(v400 + 112);
      v149 = sub_219BDB954();
      v150 = swift_allocBox();
      (*(*(v149 - 8) + 16))(v151, v147, v149);
      v152 = v150 | 0x6000000000000000;
      v153 = sub_219BDFA44();
      v154 = v376;
      (*(*(v153 - 8) + 56))(v376, 1, 1, v153);
      *&v403 = 0;
      v401 = 0u;
      v402 = 0u;
      v420 = 0;
      v418 = 0u;
      v419 = 0u;
      *&v414 = v148;
      sub_21896FEF0(&v418, &v423, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      v399 = v150;
      if (*(&v424 + 1))
      {
        sub_21875F93C(&v423, &v426);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v156 = qword_280ED32D8;
        v155 = qword_280ED32E0;
        v157 = qword_280ED32E8;

        v400 = v155;
        sub_2188202A8(v155);
        __swift_destroy_boxed_opaque_existential_1(&v426);
      }

      else
      {
        sub_21896FF74(&v423, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v156 = qword_280ED32D8;
        v243 = qword_280ED32E0;
        v157 = qword_280ED32E8;

        v400 = v243;
        sub_2188202A8(v243);
      }

      *&v412 = v152;
      v423 = 0u;
      v424 = 0u;
      v244 = v373;
      sub_21896FE88(v154, v373, sub_21896FA3C);
      sub_21896FEF0(&v401, &v426, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v245 = (v397[80] + 24) & ~v397[80];
      v246 = (v396 + v245 + 7) & 0xFFFFFFFFFFFFFFF8;
      v247 = (v246 + 47) & 0xFFFFFFFFFFFFFFF8;
      v248 = swift_allocObject();
      *(v248 + 16) = 0;
      sub_21896FA98(v244, v248 + v245, sub_21896FA3C);
      v249 = v248 + v246;
      v250 = v427;
      *v249 = v426;
      *(v249 + 16) = v250;
      *(v249 + 32) = v428;
      v251 = (v248 + v247);
      v252 = (v248 + ((v247 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v251 = 0;
      v251[1] = 0;
      v253 = v400;
      *v252 = v156;
      v252[1] = v253;
      v252[2] = v157;

      sub_2188202A8(v253);
      sub_2186CF94C(0);
      sub_2186F7D20(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
      sub_219BEB464();

      sub_2187FABEC(v253, v157);
      sub_21896FF74(&v418, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      sub_21896FF74(&v401, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_2189700AC(v154, sub_21896FA3C);
      v254 = type metadata accessor for CustomItemRouteModel;
      v255 = v385;
      goto LABEL_78;
    }

    if (EnumCaseMultiPayload == 7)
    {
      v70 = *v63;
      v71 = v400;
      v72 = *(v400 + 112);
      v73 = swift_allocObject();
      *(v73 + 16) = v70;
      v74 = v73 | 0x7000000000000004;
      v75 = *(v71 + 64);
      v76 = sub_219BDFA44();
      v77 = v382;
      (*(*(v76 - 8) + 56))(v382, 1, 1, v76);
      sub_218718690(v71 + 72, &v401);
      v420 = 0;
      v418 = 0u;
      v419 = 0u;
      *&v414 = v72;
      sub_21896FEF0(&v418, &v423, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      v398 = v70;
      v399 = v73;
      if (*(&v424 + 1))
      {
        sub_21875F93C(&v423, &v426);
        v78 = qword_280ED32D0;

        v79 = v396;
        if (v78 != -1)
        {
          swift_once();
        }

        v81 = qword_280ED32D8;
        v80 = qword_280ED32E0;
        v82 = qword_280ED32E8;

        v400 = v80;
        sub_2188202A8(v80);
        __swift_destroy_boxed_opaque_existential_1(&v426);
      }

      else
      {

        sub_21896FF74(&v423, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        v79 = v396;
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v81 = qword_280ED32D8;
        v280 = qword_280ED32E0;
        v82 = qword_280ED32E8;

        v400 = v280;
        sub_2188202A8(v280);
      }

      *&v412 = v74;
      *(&v424 + 1) = sub_219BDD274();
      *&v423 = v75;
      v281 = v374;
      sub_21896FE88(v77, v374, sub_21896FA3C);
      sub_21896FEF0(&v401, &v426, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v282 = v75;
      v283 = (v397[80] + 24) & ~v397[80];
      v284 = (v79 + v283 + 7) & 0xFFFFFFFFFFFFFFF8;
      v285 = (v284 + 47) & 0xFFFFFFFFFFFFFFF8;
      v286 = swift_allocObject();
      *(v286 + 16) = v282;
      sub_21896FA98(v281, v286 + v283, sub_21896FA3C);
      v287 = v286 + v284;
      v288 = v427;
      *v287 = v426;
      *(v287 + 16) = v288;
      *(v287 + 32) = v428;
      v289 = (v286 + v285);
      v290 = (v286 + ((v285 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v289 = 0;
      v289[1] = 0;
      v291 = v400;
      *v290 = v81;
      v290[1] = v291;
      v290[2] = v82;
      swift_retain_n();

      sub_2188202A8(v291);
      sub_2186CF94C(0);
      sub_2186F7D20(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
      sub_219BEB464();

      sub_2187FABEC(v291, v82);

      sub_21896FF74(&v418, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      sub_21896FF74(&v401, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v254 = sub_21896FA3C;
      v255 = v382;
LABEL_78:
      sub_2189700AC(v255, v254);
      v279 = &v423;
LABEL_79:
      sub_218806FD0(v279);

      return result;
    }

    v221 = v400;
    v222 = *(v400 + 112);
    v223 = *(v400 + 64);
    v224 = sub_219BDFA44();
    v225 = v379;
    (*(*(v224 - 8) + 56))(v379, 1, 1, v224);
    sub_218718690(v221 + 72, &v401);
    v420 = 0;
    v418 = 0u;
    v419 = 0u;
    *&v414 = v222;
    sub_21896FEF0(&v418, &v423, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (*(&v424 + 1))
    {
      sub_21875F93C(&v423, &v426);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v227 = qword_280ED32D8;
      v226 = qword_280ED32E0;
      v228 = qword_280ED32E8;

      v400 = v226;
      sub_2188202A8(v226);
      __swift_destroy_boxed_opaque_existential_1(&v426);
    }

    else
    {
      sub_21896FF74(&v423, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v227 = qword_280ED32D8;
      v292 = qword_280ED32E0;
      v228 = qword_280ED32E8;

      v400 = v292;
      sub_2188202A8(v292);
    }

    *&v412 = 0xF000000000000030;
    *(&v424 + 1) = sub_219BDD274();
    *&v423 = v223;
    v293 = v223;
    v294 = v370;
    sub_21896FE88(v225, v370, sub_21896FA3C);
    sub_21896FEF0(&v401, &v426, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v295 = (v397[80] + 24) & ~v397[80];
    v296 = (v396 + v295 + 7) & 0xFFFFFFFFFFFFFFF8;
    v297 = (v296 + 47) & 0xFFFFFFFFFFFFFFF8;
    v298 = swift_allocObject();
    *(v298 + 16) = v293;
    sub_21896FA98(v294, v298 + v295, sub_21896FA3C);
    v299 = v298 + v296;
    v300 = v427;
    *v299 = v426;
    *(v299 + 16) = v300;
    *(v299 + 32) = v428;
    v301 = (v298 + v297);
    v302 = (v298 + ((v297 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v301 = 0;
    v301[1] = 0;
    v303 = v400;
    *v302 = v227;
    v302[1] = v303;
    v302[2] = v228;
    swift_retain_n();

    sub_2188202A8(v303);
    sub_2186CF94C(0);
    sub_2186F7D20(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
    sub_219BEB464();

    sub_2187FABEC(v303, v228);
    sub_21896FF74(&v418, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    sub_21896FF74(&v401, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_2189700AC(v379, sub_21896FA3C);
    sub_218806FD0(&v423);
  }

  return result;
}

uint64_t sub_21896D844(void *a1, uint64_t a2)
{
  if (qword_27CC07E20 != -1)
  {
    swift_once();
  }

  sub_2186F7D20(&qword_27CC0B3C8, a2, type metadata accessor for MagazineFeedRouter, &unk_219C0B1E4);
  sub_219BDC7D4();
  v11[6] = 44;
  v11[7] = 0xE100000000000000;
  sub_2187F3BD4();
  v3 = sub_219BF6FE4();

  if (*(v3 + 16))
  {
    v4 = [a1 identifier];
    v5 = sub_219BF5414();
    v7 = v6;

    v12[0] = v5;
    v12[1] = v7;
    MEMORY[0x28223BE20](v8);
    v11[2] = v12;
    LOBYTE(v4) = sub_2186D128C(sub_2186D1338, v11, v3);

    v9 = v4 ^ 1;
  }

  else
  {

    v9 = 1;
  }

  return v9 & 1;
}

uint64_t sub_21896DA1C(char *a1)
{
  v236 = a1;
  v214 = type metadata accessor for PuzzleModel(0);
  MEMORY[0x28223BE20](v214);
  v228 = &v212 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_219BDD664();
  v230 = *(v2 - 8);
  v231 = v2;
  MEMORY[0x28223BE20](v2);
  v229 = &v212 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21896F9B8(0);
  v224 = v4;
  MEMORY[0x28223BE20](v4);
  v225 = &v212 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v6 - 8);
  v220 = &v212 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v221 = &v212 - v9;
  sub_21896FA3C(0);
  v234 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v218 = &v212 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v227 = &v212 - v13;
  MEMORY[0x28223BE20](v14);
  v216 = &v212 - v15;
  MEMORY[0x28223BE20](v16);
  v226 = &v212 - v17;
  MEMORY[0x28223BE20](v18);
  v222 = &v212 - v19;
  MEMORY[0x28223BE20](v20);
  v223 = &v212 - v21;
  MEMORY[0x28223BE20](v22);
  v213 = &v212 - v23;
  MEMORY[0x28223BE20](v24);
  v219 = &v212 - v25;
  MEMORY[0x28223BE20](v26);
  v215 = &v212 - v27;
  MEMORY[0x28223BE20](v28);
  v232 = &v212 - v29;
  MEMORY[0x28223BE20](v30);
  v217 = &v212 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v212 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v212 - v36;
  v233 = v38;
  MEMORY[0x28223BE20](v39);
  v41 = &v212 - v40;
  v42 = sub_219BDD944();
  MEMORY[0x28223BE20](v42);
  v44 = &v212 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v47 = &v212 - v46;
  MEMORY[0x28223BE20](v48);
  v50 = &v212 - v49;
  v51 = type metadata accessor for MagazineFeedRouteModel(0);
  MEMORY[0x28223BE20](v51);
  v53 = &v212 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21896FE88(v236, v53, type metadata accessor for MagazineFeedRouteModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v218 = v47;
    v219 = v42;
    v226 = v44;
    v227 = v37;
    v71 = v232;
    v236 = v50;
    v228 = v41;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v103 = *(v53 + 9);
        v258 = *(v53 + 8);
        v259[0] = v103;
        *(v259 + 9) = *(v53 + 153);
        v104 = *(v53 + 5);
        v254 = *(v53 + 4);
        v255 = v104;
        v105 = *(v53 + 7);
        v256 = *(v53 + 6);
        v257 = v105;
        v106 = *(v53 + 1);
        v250 = *v53;
        v251 = v106;
        v107 = *(v53 + 3);
        v252 = *(v53 + 2);
        v253 = v107;
        v108 = v235;
        v109 = *(v235 + 112);
        v110 = swift_allocObject();
        sub_21896FC94(&v250, v110 + 16);
        v236 = v110;
        v111 = *(v108 + 64);
        v112 = sub_219BDFA44();
        v113 = v71;
        (*(*(v112 - 8) + 56))(v71, 1, 1, v112);
        sub_218718690(v108 + 72, &v241);
        v240[0] = v109;
        sub_219BDC8D4();
        sub_219BDC8B4();
        if (qword_280EE9210 != -1)
        {
          swift_once();
        }

        sub_219BDC8C4();

        v249 = v110 | 0x6000000000000004;
        *(&v238 + 1) = sub_219BDD274();
        *&v237 = v111;
        v114 = v71;
        v115 = v215;
        sub_21896FE88(v114, v215, sub_21896FA3C);
        v116 = v113;
        v117 = MEMORY[0x277D2D578];
        sub_21896FEF0(&v241, &v246, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        v118 = (*(v234 + 80) + 24) & ~*(v234 + 80);
        v119 = (v233 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
        v120 = swift_allocObject();
        *(v120 + 16) = v111;
        sub_21896FA98(v115, v120 + v118, sub_21896FA3C);
        v121 = v120 + v119;
        v122 = v247;
        *v121 = v246;
        *(v121 + 16) = v122;
        *(v121 + 32) = v248;
        v123 = (v120 + ((v119 + 47) & 0xFFFFFFFFFFFFFFF8));
        *v123 = 0;
        v123[1] = 0;
        sub_2186CF94C(0);
        sub_2186F7D20(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
        swift_retain_n();
        v70 = sub_219BEB454();

        sub_21896FF74(&v241, &qword_280EE33A0, &qword_280EE33B0, v117);
        sub_2189700AC(v116, sub_21896FA3C);
        sub_21896FCF0(&v250);
        sub_218806FD0(&v237);
      }

      else
      {
        (*(v230 + 32))(v229, v53, v231);
        v152 = [objc_allocWithZone(type metadata accessor for FeedViewContext(0)) init];
        v153 = v235;
        v154 = *(v235 + 112);
        v155 = sub_219BDD654();
        v156 = swift_allocObject();
        v157 = [v155 identifier];
        v158 = sub_219BF5414();
        v160 = v159;

        swift_unknownObjectRelease();
        *(v156 + 16) = v158;
        *(v156 + 24) = v160;
        *(v156 + 32) = v152;
        *(v156 + 40) = 0;
        *(v156 + 48) = 1;
        *(v156 + 56) = 0u;
        *(v156 + 72) = 0u;
        *(v156 + 88) = 0;
        *(v156 + 96) = -1;
        v161 = *(v153 + 64);
        v162 = sub_219BDFA44();
        v163 = v223;
        (*(*(v162 - 8) + 56))(v223, 1, 1, v162);
        sub_218718690(v153 + 72, &v250);
        *&v237 = v154;
        sub_219BDC8D4();
        v164 = v152;
        sub_219BDC8B4();
        if (qword_280EE9210 != -1)
        {
          swift_once();
        }

        sub_219BDC8C4();

        v240[0] = v156 | 0x2000000000000006;
        *(&v247 + 1) = sub_219BDD274();
        *&v246 = v161;
        v165 = v222;
        sub_21896FE88(v163, v222, sub_21896FA3C);
        sub_21896FEF0(&v250, &v241, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        v166 = (*(v234 + 80) + 24) & ~*(v234 + 80);
        v167 = (v233 + v166 + 7) & 0xFFFFFFFFFFFFFFF8;
        v168 = swift_allocObject();
        *(v168 + 16) = v161;
        sub_21896FA98(v165, v168 + v166, sub_21896FA3C);
        v169 = v168 + v167;
        v170 = v242;
        *v169 = v241;
        *(v169 + 16) = v170;
        *(v169 + 32) = v243;
        v171 = (v168 + ((v167 + 47) & 0xFFFFFFFFFFFFFFF8));
        *v171 = 0;
        v171[1] = 0;
        sub_2186CF94C(0);
        sub_2186F7D20(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
        swift_retain_n();
        v70 = sub_219BEB454();

        sub_21896FF74(&v250, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        sub_2189700AC(v163, sub_21896FA3C);
        (*(v230 + 8))(v229, v231);
        sub_218806FD0(&v246);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v124 = v34;
      v125 = *v53;
      v126 = *(v53 + 1);
      v127 = *(v53 + 2);
      v128 = *(v53 + 3);
      v129 = *(v53 + 4);
      v130 = v53[40];
      v227 = *(v235 + 112);
      v131 = swift_allocObject();
      *&v250 = v125;
      *(&v250 + 1) = v126;
      *&v251 = v127;
      *(&v251 + 1) = v128;
      *&v252 = v129;
      BYTE8(v252) = v130;
      sub_21896FE24(v125, v126, v127, v128, v129, v130);
      v132 = sub_219BD47C0();
      v245 = v130;
      *(v131 + 16) = v125;
      *(v131 + 24) = v126;
      *(v131 + 32) = v127;
      *(v131 + 40) = v128;
      *(v131 + 48) = v129;
      *(v131 + 56) = v130 & 1 | 0x8000000000000000;
      *(v131 + 64) = v132;
      *(v131 + 72) = v133;
      *(v131 + 80) = MEMORY[0x277D84F90];
      v231 = v131;
      v226 = (v131 | 0x5000000000000000);
      v134 = v235;
      v229 = *(v235 + 64);
      v135 = sub_219BDFA44();
      v136 = v124;
      (*(*(v135 - 8) + 56))(v124, 1, 1, v135);
      v137 = sub_218718690(v134 + 72, &v246);
      v235 = v126;
      v236 = v125;
      *&v241 = v125;
      *(&v241 + 1) = v126;
      v232 = v127;
      *&v242 = v127;
      *(&v242 + 1) = v128;
      v138 = v128;
      v228 = v129;
      v243 = v129;
      LODWORD(v230) = v130;
      v244 = v130;
      v139 = sub_219BD48CC(v137);
      v141 = v140;
      v249 = v227;
      sub_219BDC8D4();
      swift_unknownObjectRetain();
      sub_219BDC8B4();
      if (qword_280EE9210 != -1)
      {
        swift_once();
      }

      sub_219BDC8C4();

      v240[4] = v226;
      v240[3] = sub_219BDD274();
      v142 = v229;
      v240[0] = v229;
      v143 = v124;
      v144 = v217;
      sub_21896FE88(v143, v217, sub_21896FA3C);
      sub_21896FEF0(&v246, &v237, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v145 = (*(v234 + 80) + 24) & ~*(v234 + 80);
      v146 = (v233 + v145 + 7) & 0xFFFFFFFFFFFFFFF8;
      v147 = swift_allocObject();
      v234 = v136;
      v148 = v147;
      *(v147 + 16) = v142;
      sub_21896FA98(v144, v147 + v145, sub_21896FA3C);
      v149 = v148 + v146;
      v150 = v238;
      *v149 = v237;
      *(v149 + 16) = v150;
      *(v149 + 32) = v239;
      v151 = (v148 + ((v146 + 47) & 0xFFFFFFFFFFFFFFF8));
      *v151 = v139;
      v151[1] = v141;
      sub_2186CF94C(0);
      sub_2186F7D20(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
      swift_retain_n();
      swift_unknownObjectRetain();
      v70 = sub_219BEB454();
      swift_unknownObjectRelease();

      sub_21896FDCC(v236, v235, v232, v138, v228, v230);
      sub_21896FF74(&v246, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_2189700AC(v234, sub_21896FA3C);
      sub_218806FD0(v240);
    }

    else
    {
      v72 = v236;
      sub_21896FA98(v53, v236, MEMORY[0x277D2FB40]);
      v73 = v235;
      v74 = *(v235 + 112);
      sub_2187B2C48(0);
      v76 = v75;
      v232 = swift_allocBox();
      v78 = v77;
      v79 = *(v76 + 48);
      sub_2187B2DA0(0);
      v231 = v80;
      v81 = *(v80 + 48);
      sub_21896FE88(v72, v78, MEMORY[0x277D2FB40]);
      v82 = MEMORY[0x277D84F90];
      *(v78 + v81) = MEMORY[0x277D84F90];
      *(v78 + v79) = v82;
      v83 = *(v73 + 64);
      v84 = sub_219BDFA44();
      (*(*(v84 - 8) + 56))(v228, 1, 1, v84);
      sub_218718690(v73 + 72, &v250);
      *&v237 = v74;
      sub_219BDC8D4();
      sub_219BDC8B4();
      if (qword_280EE9210 != -1)
      {
        swift_once();
      }

      v85 = sub_219BDC8C4();

      v86 = v224;
      v87 = v225;
      v89 = v220;
      v88 = v221;
      v90 = v227;
      if (v85)
      {
        sub_21896FE88(v78, v221, type metadata accessor for NewsActivity2.Article);
        sub_21896FE88(v88, v89, type metadata accessor for NewsActivity2.Article);

        v91 = v226;
        sub_21896FA98(v89, v226, MEMORY[0x277D2FB40]);
        sub_2189700AC(v88, type metadata accessor for NewsActivity2.Article);
        v92 = swift_getEnumCaseMultiPayload();
        v93 = v236;
        if (v92 == 1)
        {
          v94 = swift_projectBox();
          sub_21896FE88(v94, v87, sub_21896F9B8);
          v95 = v218;
          sub_21896FA98(v87 + *(v86 + 48), v218, MEMORY[0x277D2FB40]);
          __swift_destroy_boxed_opaque_existential_1(v87);

          sub_2186C66AC();
          v96 = sub_219BF6F44();
          sub_2186C6FC8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
          v97 = swift_allocObject();
          *(v97 + 16) = xmmword_219C09BA0;
          v98 = sub_219BDD8C4();
          v100 = v99;
          *(v97 + 56) = MEMORY[0x277D837D0];
          *(v97 + 64) = sub_2186FC3BC();
          *(v97 + 32) = v98;
          *(v97 + 40) = v100;
          v101 = sub_219BF6214();
          sub_219BE5314("Unable to preview for blocked headline: %{public}@", 50, 2, &dword_2186C1000, v96, v101, v97);

          v102 = MEMORY[0x277D2FB40];
          sub_2189700AC(v95, MEMORY[0x277D2FB40]);
          sub_21896FF74(&v250, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
          sub_2189700AC(v228, sub_21896FA3C);
          sub_2189700AC(v93, v102);

          return 0;
        }

        sub_2189700AC(v91, MEMORY[0x277D2FB40]);
      }

      v240[0] = v232 | 2;
      *(&v247 + 1) = sub_219BDD274();
      *&v246 = v83;
      v203 = v228;
      sub_21896FE88(v228, v90, sub_21896FA3C);
      sub_21896FEF0(&v250, &v241, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v204 = (*(v234 + 80) + 24) & ~*(v234 + 80);
      v205 = v90;
      v206 = (v233 + v204 + 7) & 0xFFFFFFFFFFFFFFF8;
      v207 = swift_allocObject();
      *(v207 + 16) = v83;
      sub_21896FA98(v205, v207 + v204, sub_21896FA3C);
      v208 = v207 + v206;
      v209 = v242;
      *v208 = v241;
      *(v208 + 16) = v209;
      *(v208 + 32) = v243;
      v210 = (v207 + ((v206 + 47) & 0xFFFFFFFFFFFFFFF8));
      *v210 = 0;
      v210[1] = 0;
      sub_2186CF94C(0);
      sub_2186F7D20(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
      swift_retain_n();
      v70 = sub_219BEB454();

      sub_21896FF74(&v250, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_2189700AC(v203, sub_21896FA3C);
      sub_2189700AC(v236, MEMORY[0x277D2FB40]);
      sub_218806FD0(&v246);
    }

    return v70;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload != 7)
      {
        v172 = v235;
        v173 = *(v235 + 112);
        v174 = *(v235 + 64);
        v175 = sub_219BDFA44();
        v176 = v219;
        (*(*(v175 - 8) + 56))(v219, 1, 1, v175);
        sub_218718690(v172 + 72, &v250);
        *&v237 = v173;
        sub_219BDC8D4();
        sub_219BDC8B4();
        if (qword_280EE9210 != -1)
        {
          swift_once();
        }

        sub_219BDC8C4();

        v240[0] = 0xF000000000000030;
        *(&v247 + 1) = sub_219BDD274();
        *&v246 = v174;
        v177 = v213;
        sub_21896FE88(v176, v213, sub_21896FA3C);
        v178 = MEMORY[0x277D2D578];
        sub_21896FEF0(&v250, &v241, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        v179 = (*(v234 + 80) + 24) & ~*(v234 + 80);
        v180 = v176;
        v181 = (v233 + v179 + 7) & 0xFFFFFFFFFFFFFFF8;
        v182 = swift_allocObject();
        *(v182 + 16) = v174;
        sub_21896FA98(v177, v182 + v179, sub_21896FA3C);
        v183 = v182 + v181;
        v184 = v242;
        *v183 = v241;
        *(v183 + 16) = v184;
        *(v183 + 32) = v243;
        v185 = (v182 + ((v181 + 47) & 0xFFFFFFFFFFFFFFF8));
        *v185 = 0;
        v185[1] = 0;
        sub_2186CF94C(0);
        sub_2186F7D20(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
        swift_retain_n();
        v70 = sub_219BEB454();

        sub_21896FF74(&v250, &qword_280EE33A0, &qword_280EE33B0, v178);
        sub_2189700AC(v180, sub_21896FA3C);
        sub_218806FD0(&v246);
        return v70;
      }

      v55 = *v53;
      v56 = v235;
      v57 = *(v235 + 112);
      v58 = swift_allocObject();
      *(v58 + 16) = v55;
      v59 = v58 | 0x7000000000000004;
      v60 = *(v56 + 64);
      v61 = sub_219BDFA44();
      v62 = v227;
      (*(*(v61 - 8) + 56))(v227, 1, 1, v61);
      sub_218718690(v56 + 72, &v250);
      *&v237 = v57;
      sub_219BDC8D4();

      sub_219BDC8B4();
      if (qword_280EE9210 != -1)
      {
        swift_once();
      }

      sub_219BDC8C4();

      v240[0] = v59;
      *(&v247 + 1) = sub_219BDD274();
      *&v246 = v60;
      v63 = v218;
      sub_21896FE88(v62, v218, sub_21896FA3C);
      sub_21896FEF0(&v250, &v241, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v64 = (*(v234 + 80) + 24) & ~*(v234 + 80);
      v65 = (v233 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
      v66 = swift_allocObject();
      *(v66 + 16) = v60;
      sub_21896FA98(v63, v66 + v64, sub_21896FA3C);
      v67 = v66 + v65;
      v68 = v242;
      *v67 = v241;
      *(v67 + 16) = v68;
      *(v67 + 32) = v243;
      v69 = (v66 + ((v65 + 47) & 0xFFFFFFFFFFFFFFF8));
      *v69 = 0;
      v69[1] = 0;
      sub_2186CF94C(0);
      sub_2186F7D20(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
      swift_retain_n();
      v70 = sub_219BEB454();

      sub_218806FD0(&v246);

      sub_21896FF74(&v250, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v201 = sub_21896FA3C;
      v202 = v62;
      goto LABEL_33;
    }

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 4)
  {
LABEL_20:
    sub_2189700AC(v53, type metadata accessor for MagazineFeedRouteModel);
    return 0;
  }

  v186 = v228;
  sub_21896FA98(v53, v228, type metadata accessor for PuzzleModel);
  v187 = v235;
  v188 = *(v235 + 112);
  v189 = swift_allocBox();
  sub_21896FE88(v186, v190, type metadata accessor for PuzzleModel);
  v191 = *(v187 + 64);
  v192 = sub_219BDFA44();
  v193 = v226;
  (*(*(v192 - 8) + 56))(v226, 1, 1, v192);
  *&v252 = 0;
  v250 = 0u;
  v251 = 0u;
  *&v237 = v188;
  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_280EE9210 != -1)
  {
    swift_once();
  }

  sub_219BDC8C4();

  v240[0] = v189 | 0xE000000000000006;
  *(&v247 + 1) = sub_219BDD274();
  *&v246 = v191;
  v194 = v216;
  sub_21896FE88(v193, v216, sub_21896FA3C);
  sub_21896FEF0(&v250, &v241, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v195 = (*(v234 + 80) + 24) & ~*(v234 + 80);
  v196 = (v233 + v195 + 7) & 0xFFFFFFFFFFFFFFF8;
  v197 = swift_allocObject();
  *(v197 + 16) = v191;
  sub_21896FA98(v194, v197 + v195, sub_21896FA3C);
  v198 = v197 + v196;
  v199 = v242;
  *v198 = v241;
  *(v198 + 16) = v199;
  *(v198 + 32) = v243;
  v200 = (v197 + ((v196 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v200 = 0;
  v200[1] = 0;
  sub_2186CF94C(0);
  sub_2186F7D20(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
  swift_retain_n();
  v70 = sub_219BEB454();

  sub_218806FD0(&v246);

  sub_21896FF74(&v250, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_2189700AC(v193, sub_21896FA3C);
  v201 = type metadata accessor for PuzzleModel;
  v202 = v186;
LABEL_33:
  sub_2189700AC(v202, v201);
  return v70;
}

uint64_t sub_21896F928()
{
  MEMORY[0x21CECFA80](v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return swift_deallocClassInstance();
}

void sub_21896F9B8(uint64_t a1)
{
  if (!qword_280EE37C0)
  {
    sub_2186CFDE4(255, &qword_280EE37C8, MEMORY[0x277D6EC48]);
    sub_219BDD944();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE37C0);
    }
  }
}

void sub_21896FA3C(uint64_t a1)
{
  if (!qword_280EE8610)
  {
    sub_219BDFA44();
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE8610);
    }
  }
}

uint64_t sub_21896FA98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21896FB00(void *a1)
{
  sub_21896FA3C(0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = (v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_2194DAF24(a1, v7, v1 + v5, v1 + v6, v9, v10);
}

double sub_21896FBB0(uint64_t a1, void *a2, void *a3, void *a4, char a5)
{
  if (a5 == 2 || a5 == 1)
  {

    v7 = a3;
  }

  else
  {
    if (a5)
    {
      return result;
    }

    swift_unknownObjectRelease();
    v7 = a2;
  }

  return result;
}

double sub_21896FC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 < 2u)
  {

LABEL_4:

    return result;
  }

  if (a5 == 2)
  {

    goto LABEL_4;
  }

  return result;
}

double sub_21896FD44(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a6 >> 62;
  if ((a6 >> 62) > 1)
  {
    if (v9 != 2)
    {
      return result;
    }

    sub_21896FDCC(a1, a2, a3, a4, a5, a6 & 1);
    goto LABEL_6;
  }

  if (v9)
  {
LABEL_6:

    goto LABEL_7;
  }

  sub_21896FDCC(a1, a2, a3, a4, a5, a6 & 1);
LABEL_7:

  return result;
}

void sub_21896FDCC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

id sub_21896FE24(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {
    swift_unknownObjectRetain();

    return a3;
  }
}

uint64_t sub_21896FE88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21896FEF0(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_2186C6FC8(0, a3, a4, a5, MEMORY[0x277D83D88]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_21896FF74(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_2186C6FC8(0, a2, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_21896FFE8(void *a1)
{
  sub_21896FA3C(0);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_2189700AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_21897010C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 < 2u)
  {

LABEL_4:

    return result;
  }

  if (a5 == 2)
  {

    goto LABEL_4;
  }

  return result;
}

double sub_218970170(unint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
    return sub_218932F9C(a1);
  }

  return result;
}

uint64_t sub_21897018C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218970B3C(0, &qword_27CC0B3D0, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for LatestStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218970A84();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_218970BA0(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_218970AD8(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218970438()
{
  sub_219BF7AA4();
  MEMORY[0x21CECE850](0);
  return sub_219BF7AE4();
}

void sub_21897049C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x724774616D726F66 && a2 == 0xEB0000000070756FLL)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_219BF78F4();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_218970528(uint64_t a1)
{
  v2 = sub_218970A84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218970564(uint64_t a1)
{
  v2 = sub_218970A84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2189705F8(void *a1)
{
  sub_218970B3C(0, &qword_280E8C4A0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218970A84();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_218970BA0(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218970780(uint64_t a1)
{
  v1 = sub_219BED784();
  v3 = v2;
  if (v1 == sub_219BED784() && v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_219BF78F4();
  }

  return v5 & 1;
}

uint64_t sub_2189708E4(uint64_t a1)
{
  result = sub_218970BA0(&qword_280EB8558, type metadata accessor for LatestStoriesTodayFeedGroup, &unk_219C0B3C8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21897093C(uint64_t a1)
{
  v2 = sub_218970BA0(&qword_280EB8588, type metadata accessor for LatestStoriesTodayFeedGroup, &unk_219C0B2AC);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_2189709D8(void *a1)
{
  a1[1] = sub_218970BA0(&qword_280EB8588, type metadata accessor for LatestStoriesTodayFeedGroup, &unk_219C0B2AC);
  a1[2] = sub_218970BA0(&qword_280EB8560, type metadata accessor for LatestStoriesTodayFeedGroup, &unk_219C0B3A0);
  result = sub_218970BA0(&qword_280EB8570, type metadata accessor for LatestStoriesTodayFeedGroup, &unk_219C0B378);
  a1[3] = result;
  return result;
}

unint64_t sub_218970A84()
{
  result = qword_280EB85A0[0];
  if (!qword_280EB85A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EB85A0);
  }

  return result;
}

uint64_t sub_218970AD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LatestStoriesTodayFeedGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218970B3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218970A84();
    v7 = a3(a1, &type metadata for LatestStoriesTodayFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218970BA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_218970BFC()
{
  result = qword_27CC0B3D8;
  if (!qword_27CC0B3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B3D8);
  }

  return result;
}

unint64_t sub_218970C54()
{
  result = qword_280EB8590;
  if (!qword_280EB8590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB8590);
  }

  return result;
}

unint64_t sub_218970CAC()
{
  result = qword_280EB8598;
  if (!qword_280EB8598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB8598);
  }

  return result;
}

uint64_t type metadata accessor for AudioPlaylistFeedConfigFetchResult(uint64_t a1)
{
  result = qword_280EA1108;
  if (!qword_280EA1108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218970D74(uint64_t a1)
{
  type metadata accessor for AudioPlaylistFeedContentConfig(319);
  if (v1 <= 0x3F)
  {
    sub_2186EE86C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_218970DF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218971608(0, &qword_27CC0B410, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for SportsInjuryReportsTagFeedGroup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218971550();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_21897166C(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_2189715A4(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2189710A4(uint64_t a1)
{
  v2 = sub_218971550();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2189710E0(uint64_t a1)
{
  v2 = sub_218971550();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21897115C(void *a1)
{
  sub_218971608(0, &qword_27CC0B420, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218971550();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_21897166C(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2189713C0(uint64_t a1)
{
  result = sub_21897166C(&unk_27CC1C630, type metadata accessor for SportsInjuryReportsTagFeedGroup, &unk_219C0B674);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218971418(void *a1)
{
  a1[1] = sub_21897166C(&qword_27CC0B3F8, type metadata accessor for SportsInjuryReportsTagFeedGroup, &unk_219C0B5A0);
  a1[2] = sub_21897166C(&qword_27CC0B400, type metadata accessor for SportsInjuryReportsTagFeedGroup, &unk_219C0B64C);
  result = sub_21897166C(&qword_27CC0B408, type metadata accessor for SportsInjuryReportsTagFeedGroup, &unk_219C0B624);
  a1[3] = result;
  return result;
}

uint64_t sub_2189714C4(uint64_t a1)
{
  v2 = sub_21897166C(&qword_27CC0B3F8, type metadata accessor for SportsInjuryReportsTagFeedGroup, &unk_219C0B5A0);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_218971550()
{
  result = qword_27CC0B418;
  if (!qword_27CC0B418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B418);
  }

  return result;
}

uint64_t sub_2189715A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsInjuryReportsTagFeedGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218971608(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218971550();
    v7 = a3(a1, &type metadata for SportsInjuryReportsTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21897166C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2189716C8()
{
  result = qword_27CC0B428;
  if (!qword_27CC0B428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B428);
  }

  return result;
}

unint64_t sub_218971720()
{
  result = qword_27CC0B430;
  if (!qword_27CC0B430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B430);
  }

  return result;
}

unint64_t sub_218971778()
{
  result = qword_27CC0B438;
  if (!qword_27CC0B438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B438);
  }

  return result;
}

void *sub_2189717F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE65A0, MEMORY[0x277D317A0], 0);
  result = sub_219BE1E34();
  if (v7)
  {
    v5 = type metadata accessor for ContinueReadingModule();
    v6 = swift_allocObject();
    result = sub_2186CB1F0(v9, v6 + 32);
    *(v6 + 16) = v7;
    *(v6 + 24) = v8;
    a2[3] = v5;
    a2[4] = &protocol witness table for ContinueReadingModule;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2189718C4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ContinueReadingDialogRequestFactory();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_282A3DAA8;
  *a1 = result;
  return result;
}

void *sub_21897190C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EB1168, &protocol descriptor for ContinueReadingInteractorType, 1);
  result = sub_219BE1E34();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for ContinueReadingInteractor(0);
    v19[3] = v10;
    v19[4] = &off_282A9A378;
    v19[0] = v9;
    v11 = type metadata accessor for ContinueReadingEventHandler();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x28223BE20](v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_282A9A378;
    v12[2] = v18;
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = v11;
    a2[4] = &off_282A54498;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_218971B38@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA6BB8, &protocol descriptor for ContinueReadingPromptTrackerType, 1);
  result = sub_219BE1E34();
  if (!v28)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE91B4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218716B60(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CF94C(0);
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
    v25[1] = v25;
    v9 = MEMORY[0x28223BE20](v8);
    v11 = (v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = *v11;
    v14 = type metadata accessor for ContinueReadingPromptTracker();
    v26[3] = v14;
    v26[4] = &off_282A52718;
    v26[0] = v13;
    v15 = type metadata accessor for ContinueReadingInteractor(0);
    v16 = swift_allocObject();
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v26, v14);
    v18 = MEMORY[0x28223BE20](v17);
    v20 = (v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20, v18);
    v22 = *v20;
    *(v16 + 40) = v14;
    *(v16 + 48) = &off_282A52718;
    *(v16 + 16) = v22;
    v23 = OBJC_IVAR____TtC7NewsUI225ContinueReadingInteractor_exposureData;
    v24 = type metadata accessor for ContinueReadingPromptExposureData(0);
    (*(*(v24 - 8) + 56))(v16 + v23, 1, 1, v24);
    *(v16 + 56) = v5;
    *(v16 + 64) = v6;
    *(v16 + OBJC_IVAR____TtC7NewsUI225ContinueReadingInteractor_navigator) = v7;
    __swift_destroy_boxed_opaque_existential_1(v26);
    result = __swift_destroy_boxed_opaque_existential_1(v27);
    a2[3] = v15;
    a2[4] = &off_282A9A378;
    *a2 = v16;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_218971E7C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810, &protocol descriptor for BaseStylerType, 1);
  result = sub_219BE1E34();
  if (v22)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for BaseStyler(0);
    v20[3] = v10;
    v11 = sub_218703FE8(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
    v20[4] = v11;
    v20[0] = v9;
    v12 = type metadata accessor for ContinueReadingPromptStyler();
    v13 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v10);
    v15 = MEMORY[0x28223BE20](v14);
    v17 = (v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = *v17;
    v13[5] = v10;
    v13[6] = v11;
    v13[2] = v19;
    __swift_destroy_boxed_opaque_existential_1(v20);
    result = __swift_destroy_boxed_opaque_existential_1(v21);
    a2[3] = v12;
    a2[4] = &off_282A75658;
    *a2 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2189720DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for ContinueReadingPromptTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_282A52718;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_218972164(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E34();
  if (!v28)
  {
    __break(1u);
    goto LABEL_7;
  }

  v36[0] = v27;
  v36[1] = v28;
  v41 = v33;
  v42 = v34;
  v43 = v35;
  v37 = v29;
  v38 = v30;
  v40 = v32;
  v39 = v31;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA9A00, &protocol descriptor for ContinueReadingEventHandlerType, 1);
  result = sub_219BE1E34();
  if (!v26)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E97550, &protocol descriptor for ContinueReadingDialogRequestFactoryType, 1);
  result = sub_219BE1E34();
  if (!v24)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E2F0, 0x277D75B20);
  v3 = sub_219BE1E24();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EA99F0, &protocol descriptor for ContinueReadingPromptStylerType, 1);
  result = sub_219BE1E34();
  if (v22)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (&v21[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    v10 = MEMORY[0x28223BE20](v9);
    v12 = (&v21[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12, v10);
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    v15 = MEMORY[0x28223BE20](v14);
    v17 = (&v21[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = sub_218972824(v36, *v7, *v12, v3, *v17);

    __swift_destroy_boxed_opaque_existential_1(v21);
    __swift_destroy_boxed_opaque_existential_1(v23);
    __swift_destroy_boxed_opaque_existential_1(v25);
    return v19;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_21897256C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*__swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 136);
  sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  v7 = v6;
  v8 = sub_219BF6BC4();
  [a1 setAccessoryButtonColor_];
  [a1 setAccessoryButtonFont_];

  v9 = *(*__swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 144);
  v10 = sub_219BF6BC4();
  [a1 setMessageTextColor_];
  [a1 setMessageFont_];

  v11 = *(*__swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 152);
  v12 = sub_2194ECA5C(a2);
  [a1 setTitleTextColor_];
  [a1 setTitleFont_];
}

uint64_t sub_21897273C(uint64_t a1, void *a2)
{
  v11 = type metadata accessor for ContinueReadingPromptStyler();
  v12 = &off_282A75658;
  v10[0] = a1;
  v4 = objc_allocWithZone(MEMORY[0x277CEE920]);

  v5 = [v4 init];
  v6 = __swift_project_boxed_opaque_existential_1(v10, v11);
  v7 = v5;
  v8 = [a2 traitCollection];
  sub_21897256C(v7, v8, *v6);

  [a2 setPreferredAppearance_];
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

char *sub_218972824(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v52 = a4;
  v9 = *a5;
  v10 = type metadata accessor for ContinueReadingEventHandler();
  v67[3] = v10;
  v67[4] = &off_282A54498;
  v67[0] = a2;
  v11 = type metadata accessor for ContinueReadingDialogRequestFactory();
  v65 = v11;
  v66 = &off_282A3DAA8;
  v64[0] = a3;
  v62 = v9;
  v63 = &off_282A75658;
  v61[0] = a5;
  v51 = type metadata accessor for ContinueReadingViewController();
  v12 = objc_allocWithZone(v51);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v67, v10);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (&v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = (&v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21, v19);
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v61, v62);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = (&v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26, v24);
  v28 = *v16;
  v29 = *v21;
  v30 = *v26;
  v60[3] = v10;
  v60[4] = &off_282A54498;
  v60[0] = v28;
  v59[3] = v11;
  v59[4] = &off_282A3DAA8;
  v59[0] = v29;
  v57 = v9;
  v58 = &off_282A75658;
  v56[0] = v30;
  v31 = OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_relativeTabBarController;
  *&v12[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_relativeTabBarController] = 0;
  v32 = &v12[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_content];
  v33 = *(a1 + 80);
  *(v32 + 4) = *(a1 + 64);
  *(v32 + 5) = v33;
  *(v32 + 6) = *(a1 + 96);
  v32[112] = *(a1 + 112);
  v34 = *(a1 + 16);
  *v32 = *a1;
  *(v32 + 1) = v34;
  v35 = *(a1 + 48);
  *(v32 + 2) = *(a1 + 32);
  *(v32 + 3) = v35;
  sub_218718690(v60, &v12[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_eventHandler]);
  sub_218718690(v59, &v12[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_dialogRequestFactory]);
  v36 = v52;
  *&v12[v31] = v52;
  sub_218718690(v56, &v12[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_styler]);
  v37 = *(a1 + 80);
  v54[4] = *(a1 + 64);
  v54[5] = v37;
  v54[6] = *(a1 + 96);
  v55 = *(a1 + 112);
  v38 = *(a1 + 16);
  v54[0] = *a1;
  v54[1] = v38;
  v39 = *(a1 + 48);
  v54[2] = *(a1 + 32);
  v54[3] = v39;
  v40 = v36;
  v41 = sub_218C51900(v54);
  v53.receiver = v12;
  v53.super_class = v51;
  v42 = objc_msgSendSuper2(&v53, sel_initWithRequest_, v41);

  v43 = v42;
  [v43 setDelegate_];
  v44 = __swift_project_boxed_opaque_existential_1(v56, v57);
  sub_21897273C(*v44, v43);
  v45 = [v43 presentationController];
  v46 = v43;
  if (v45)
  {
    v47 = v45;
    objc_opt_self();
    v48 = swift_dynamicCastObjCClass();
    if (v48)
    {
      v49 = v48;
      [v48 setDismissDelayTimeInterval_];
      [v49 setRelativeTabBarController_];
    }

    v46 = v47;
  }

  __swift_destroy_boxed_opaque_existential_1(v60);
  __swift_destroy_boxed_opaque_existential_1(v56);
  __swift_destroy_boxed_opaque_existential_1(v59);
  __swift_destroy_boxed_opaque_existential_1(v61);
  __swift_destroy_boxed_opaque_existential_1(v64);
  __swift_destroy_boxed_opaque_existential_1(v67);
  return v43;
}

uint64_t type metadata accessor for SharedWithYouFeedRefreshResult(uint64_t a1)
{
  result = qword_27CC0B4A8;
  if (!qword_27CC0B4A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218972D3C(uint64_t a1)
{
  sub_2187E7248(319);
  if (v1 <= 0x3F)
  {
    sub_219BF0BD4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_218972DC0(uint64_t a1, uint64_t a2)
{
  sub_218972E2C(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

void sub_218972E2C(uint64_t a1)
{
  if (!qword_27CC0FAE0)
  {
    sub_218972EAC();
    sub_218972F00();
    v1 = sub_219BF0854();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0FAE0);
    }
  }
}

unint64_t sub_218972EAC()
{
  result = qword_27CC20240;
  if (!qword_27CC20240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20240);
  }

  return result;
}

unint64_t sub_218972F00()
{
  result = qword_27CC0FAF0;
  if (!qword_27CC0FAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0FAF0);
  }

  return result;
}

uint64_t sub_218972F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218972E2C(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t type metadata accessor for SportsFavoritesModel(uint64_t a1)
{
  result = qword_27CC0B4B8;
  if (!qword_27CC0B4B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21897301C(uint64_t a1)
{
  sub_218972E2C(319);
  if (v3 <= 0x3F)
  {
    v4 = v2;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
  }
}

uint64_t sub_2189730C0()
{
  sub_218972E2C(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218973C60(v0, v8);
  (*(v3 + 32))(v5, v8, v2);
  v9 = sub_219BF07B4();
  (*(v3 + 8))(v5, v2);
  return v9;
}

uint64_t sub_218973208(uint64_t a1, uint64_t a2)
{
  sub_219BF7AA4();
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t sub_218973260(uint64_t a1, uint64_t a2)
{
  v4 = sub_218973424(&qword_27CC0B4E0, &unk_219C0B978);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_2189732C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_219BF7AA4();
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t sub_218973424(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SportsFavoritesModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218973468@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_219BEAF84();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_2189734EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_218972E2C(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218973C60(v2, v14);
  (*(v6 + 32))(v11, v14, v5);
  (*(v6 + 16))(v8, v11, v5);
  sub_2199E1620(v8, a1);
  (*(v6 + 8))(v11, v5);
  v15 = *MEMORY[0x277D32DC0];
  v16 = sub_219BF0614();
  return (*(*(v16 - 8) + 104))(a1, v15, v16);
}

uint64_t sub_218973700@<X0>(unsigned int *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t sub_218973770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v31[0] = a2;
  v31[1] = a3;
  v31[2] = a4;
  v31[3] = a5;
  v31[4] = a6;
  v31[5] = a7;
  v31[6] = a8;
  v31[7] = a9;
  v12 = sub_219BE57D4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v31 - v14;
  sub_218972E2C(0);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = v31 - v22;
  v24 = type metadata accessor for SportsFavoritesModel(0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = v31 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218973C60(v10, v26);
  (*(v18 + 32))(v23, v26, v17);
  v27 = sub_219BE5A14();
  (*(v18 + 16))(v20, v23, v17);
  (*(v13 + 16))(v15, a1, v12);
  WitnessTable = swift_getWitnessTable();
  v29 = sub_219876240(v20, v15, v27, v12, WitnessTable);
  (*(v18 + 8))(v23, v17);
  return v29;
}

uint64_t sub_2189739EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_218973CF8(0, &qword_27CC110C0, sub_218973CC4, MEMORY[0x277D84560]);
  *(swift_allocObject() + 16) = xmmword_219C09BA0;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C0B8C0;
  v10 = sub_219BE6684();
  v11 = sub_219BE6654();
  if (v11)
  {
    v12 = MEMORY[0x277D6D630];
    v13 = v10;
  }

  else
  {
    v13 = 0;
    v12 = 0;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0;
  }

  *(v9 + 32) = v11;
  *(v9 + 56) = v13;
  *(v9 + 64) = v12;
  v14 = sub_219BE6634();
  if (v14)
  {
    v15 = MEMORY[0x277D6D630];
    v16 = v10;
  }

  else
  {
    v16 = 0;
    v15 = 0;
    *(v9 + 80) = 0;
    *(v9 + 88) = 0;
  }

  *(v9 + 72) = v14;
  *(v9 + 96) = v16;
  *(v9 + 104) = v15;
  v17 = sub_219BE6614();
  if (v17)
  {
    v18 = MEMORY[0x277D6D630];
  }

  else
  {
    v10 = 0;
    v18 = 0;
    *(v9 + 120) = 0;
    *(v9 + 128) = 0;
  }

  *(v9 + 112) = v17;
  *(v9 + 136) = v10;
  *(v9 + 144) = v18;
  sub_219BE5A14();
  sub_219BE6B74();
  sub_219BE6B44();

  return sub_219BE59D4();
}

uint64_t sub_218973C60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsFavoritesModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_218973CF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_218973D5C()
{
  result = qword_27CC110D0;
  if (!qword_27CC110D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CC110D0);
  }

  return result;
}

uint64_t sub_218973DC0(uint64_t a1, uint64_t a2)
{
  sub_218972E2C(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  sub_218973FC4(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 56);
  sub_218973C60(a1, v14);
  sub_218973C60(a2, &v14[v16]);
  v17 = *(v6 + 32);
  v17(v11, v14, v5);
  v17(v8, &v14[v16], v5);
  v18 = sub_219BF07B4();
  v20 = v19;
  if (v18 == sub_219BF07B4() && v20 == v21)
  {
    v23 = 1;
  }

  else
  {
    v23 = sub_219BF78F4();
  }

  v24 = *(v6 + 8);
  v24(v8, v5);
  v24(v11, v5);
  return v23 & 1;
}

void sub_218973FC4(uint64_t a1)
{
  if (!qword_27CC0B4F0)
  {
    type metadata accessor for SportsFavoritesModel(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0B4F0);
    }
  }
}

uint64_t type metadata accessor for SportsRecordTagFeedGroupConfigData(uint64_t a1)
{
  result = qword_280E9EAE0;
  if (!qword_280E9EAE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21897409C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189745CC(0, &qword_27CC0B4F8, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218974578();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808, MEMORY[0x277D33488]);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 10;
    v13 = type metadata accessor for SportsRecordTagFeedGroupConfigData(0);
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218974304(void *a1)
{
  v3 = v1;
  sub_2189745CC(0, &qword_27CC0B508, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218974578();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for SportsRecordTagFeedGroupConfigData(0);
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810, MEMORY[0x277D33480]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2189744D0(uint64_t a1)
{
  v2 = sub_218974578();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21897450C(uint64_t a1)
{
  v2 = sub_218974578();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218974578()
{
  result = qword_27CC0B500;
  if (!qword_27CC0B500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B500);
  }

  return result;
}

void sub_2189745CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218974578();
    v7 = a3(a1, &type metadata for SportsRecordTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218974644()
{
  result = qword_27CC0B510;
  if (!qword_27CC0B510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B510);
  }

  return result;
}

unint64_t sub_21897469C()
{
  result = qword_27CC0B518;
  if (!qword_27CC0B518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B518);
  }

  return result;
}

unint64_t sub_2189746F4()
{
  result = qword_27CC0B520;
  if (!qword_27CC0B520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B520);
  }

  return result;
}

uint64_t sub_218974748(void *a1)
{
  sub_2189751A4(0, &qword_280E8C638, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218975090();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BED8D4();
  sub_218975208(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for CuratedTagFeedGroup(0);
    v9[14] = 1;
    sub_219BF77F4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218974914@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_219BED8D4();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189751A4(0, &qword_27CC0B528, MEMORY[0x277D844C8]);
  v28 = v7;
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for CuratedTagFeedGroup(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218975090();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v12;
  v13 = v25;
  v14 = v26;
  v30 = 0;
  sub_218975208(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
  v15 = v27;
  sub_219BF7734();
  (*(v14 + 32))(v23, v6, v15);
  v29 = 1;
  v16 = sub_219BF76F4();
  v18 = v17;
  (*(v13 + 8))(v9, v28);
  v20 = v23;
  v19 = v24;
  v21 = &v23[*(v10 + 20)];
  *v21 = v16;
  v21[1] = v18;
  sub_2189750E4(v20, v19);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_218975148(v20);
}

uint64_t sub_218974C54()
{
  if (*v0)
  {
    return 0x65707974627573;
  }

  else
  {
    return 0x724774616D726F66;
  }
}

void sub_218974C98(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x724774616D726F66 && a2 == 0xEB0000000070756FLL;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65707974627573 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();

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
}

uint64_t sub_218974D78(uint64_t a1)
{
  v2 = sub_218975090();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218974DB4(uint64_t a1)
{
  v2 = sub_218975090();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218974F20(uint64_t a1)
{
  result = sub_218975208(&unk_280ED1950, type metadata accessor for CuratedTagFeedGroup, &unk_219C0BE38);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218974F78(void *a1)
{
  a1[1] = sub_218975208(&qword_280ED1988, type metadata accessor for CuratedTagFeedGroup, &unk_219C0BD64);
  a1[2] = sub_218975208(&qword_280ED1960, type metadata accessor for CuratedTagFeedGroup, &unk_219C0BE10);
  result = sub_218975208(&qword_280ED1970, type metadata accessor for CuratedTagFeedGroup, &unk_219C0BDE8);
  a1[3] = result;
  return result;
}

uint64_t sub_218975024(uint64_t a1)
{
  v2 = sub_218975208(&qword_280ED1988, type metadata accessor for CuratedTagFeedGroup, &unk_219C0BD64);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_218975090()
{
  result = qword_280ED19A0;
  if (!qword_280ED19A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED19A0);
  }

  return result;
}

uint64_t sub_2189750E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedTagFeedGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218975148(uint64_t a1)
{
  v2 = type metadata accessor for CuratedTagFeedGroup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2189751A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218975090();
    v7 = a3(a1, &type metadata for CuratedTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218975208(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_218975264()
{
  result = qword_27CC0B530;
  if (!qword_27CC0B530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B530);
  }

  return result;
}

unint64_t sub_2189752BC()
{
  result = qword_280ED1990;
  if (!qword_280ED1990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED1990);
  }

  return result;
}

unint64_t sub_218975314()
{
  result = qword_280ED1998;
  if (!qword_280ED1998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED1998);
  }

  return result;
}

unint64_t sub_218975388@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2189753BC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_2189753BC(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2189753D0()
{
  result = qword_27CC0B538;
  if (!qword_27CC0B538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B538);
  }

  return result;
}

uint64_t sub_218975434(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_218975490(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for MyMagazinesSectionHeaderSeparatorViewLayoutOptions(uint64_t a1)
{
  result = qword_27CC0B540;
  if (!qword_27CC0B540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218975564(uint64_t a1)
{
  result = sub_219BE8164();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2189755E0(uint64_t a1)
{
  sub_21879D924();
  swift_allocObject();
  sub_219BE30B4();
  sub_218975678();
  v1 = sub_219BE31C4();

  return v1;
}

uint64_t sub_218975678()
{
  if ([*(v0 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_featureAvailability) useFeedDifferentiationMode] && (v1 = objc_msgSend(*(v0 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_bundleSubscriptionManager), sel_cachedSubscription), v2 = objc_msgSend(v1, sel_isSubscribed), v1, v2))
  {
    sub_21879D924();
    swift_allocObject();
    return sub_219BE30B4();
  }

  else
  {
    sub_21879D924();
    swift_allocObject();
    return sub_219BE3014();
  }
}

void sub_21897574C()
{
  if (qword_280EE5F18 != -1)
  {
    swift_once();
  }

  v0 = sub_219BE5434();
  __swift_project_value_buffer(v0, qword_280F62538);
  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2186C1000, v1, v2, "Completed shortcut startup tasks", v3, 2u);
    MEMORY[0x21CECF960](v3, -1, -1);
  }
}

uint64_t sub_21897582C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (qword_280EE5F18 != -1)
  {
    swift_once();
  }

  v7 = sub_219BE5434();
  __swift_project_value_buffer(v7, qword_280F62538);
  v8 = sub_219BE5414();
  v9 = sub_219BF6214();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2186C1000, v8, v9, "Shortcuts(V1) ShortcutsStartupTask running...", v10, 2u);
    MEMORY[0x21CECF960](v10, -1, -1);
  }

  swift_weakInit();
  sub_2189759F0(a5, v15);
  swift_weakDestroy();
  [*(*__swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutService) *(a5 + OBJC:sel_validateShortcuts IVAR:? :? :? :? TtC7NewsUI220ShortcutsStartupTask:? shortcutService + 24)) + OBJC:? IVAR:? :? :? :? TtC7NewsUI215ShortcutService:?shortcutList)];
  v11 = sub_219BE5414();
  v12 = sub_219BF6214();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2186C1000, v11, v12, "Shortcuts(V1) ShortcutsStartupTask completed", v13, 2u);
    MEMORY[0x21CECF960](v13, -1, -1);
  }

  return a1();
}

void sub_2189759F0(void *a1, uint64_t a2)
{
  sub_218976B44();
  if (qword_280EE5F18 != -1)
  {
    swift_once();
  }

  v3 = sub_219BE5434();
  __swift_project_value_buffer(v3, qword_280F62538);
  v4 = sub_219BE5414();
  v5 = sub_219BF6214();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2186C1000, v4, v5, "Shortcuts(V1): Favorites auto onboard", v6, 2u);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  v7 = (a1 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutsOnboardingManager);
  v8 = *(a1 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutsOnboardingManager + 24);
  v9 = *(a1 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutsOnboardingManager + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutsOnboardingManager), v8);
  if ((*(v9 + 8))(v8, v9))
  {
    goto LABEL_8;
  }

  oslog = (a1 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutService);
  v10 = __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutService), *(a1 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutService + 24));
  v11 = sub_218C552B4(v10);
  if (v11 >> 62)
  {
    v25 = sub_219BF7214();

    if (!v25)
    {
      goto LABEL_14;
    }

LABEL_8:
    v13 = v7[3];
    v14 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v13);
    v15 = (*(v14 + 8))(v13, v14);
    v16 = __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutService), *(a1 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutService + 24));
    v17 = sub_218C552B4(v16);
    if (v17 >> 62)
    {
      v18 = sub_219BF7214();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    osloga = sub_219BE5414();
    v19 = sub_219BF6214();
    if (os_log_type_enabled(osloga, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v122[0] = v21;
      *v20 = 136446466;
      v125 = v15;
      type metadata accessor for FCShortcutsOnboardingState(0);
      v22 = sub_219BF5484();
      v24 = sub_2186D1058(v22, v23, v122);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2050;
      *(v20 + 14) = v18;
      _os_log_impl(&dword_2186C1000, osloga, v19, "Shortcuts(V1): Favorites auto onboarding state %{public}s and shortcuts count %{public}ld", v20, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x21CECF960](v21, -1, -1);
      MEMORY[0x21CECF960](v20, -1, -1);

      return;
    }

    goto LABEL_41;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v12)
  {
    goto LABEL_8;
  }

LABEL_14:
  v117 = *(a1 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_configurationManager);
  v26 = [v117 configuration];
  if (!v26)
  {
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
    return;
  }

  v27 = v26;
  if (([v26 respondsToSelector_] & 1) == 0)
  {
LABEL_37:
    swift_unknownObjectRelease();
    goto LABEL_38;
  }

  v28 = [v27 autoOnboardShortcuts];
  swift_unknownObjectRelease();
  if ((v28 & 1) == 0)
  {
LABEL_38:
    osloga = sub_219BE5414();
    v41 = sub_219BF6214();
    if (!os_log_type_enabled(osloga, v41))
    {
LABEL_41:

      return;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "Shortcuts(v1): ShortcutsStartupTask favorites will not auto onboard.";
LABEL_40:
    _os_log_impl(&dword_2186C1000, osloga, v41, v43, v42, 2u);
    MEMORY[0x21CECF960](v42, -1, -1);
    goto LABEL_41;
  }

  v29 = *(a1 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_subscriptionController);
  v30 = [v29 orderedCachedSubscribedTags];
  if (!v30)
  {
    osloga = sub_219BE5414();
    v41 = sub_219BF6214();
    if (!os_log_type_enabled(osloga, v41))
    {
      goto LABEL_41;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "Shortcuts(v1): ShortcutsStartupTask will not auto onboard with orderedCachedSubscribedTags";
    goto LABEL_40;
  }

  v31 = v30;
  sub_2186D8870();
  v32 = sub_219BF5924();

  v122[0] = MEMORY[0x277D84F90];
  if (v32 >> 62)
  {
    goto LABEL_117;
  }

  for (i = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {

    if (i)
    {
      v34 = 0;
      while (1)
      {
        if ((v32 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x21CECE0F0](v34, v32);
          v36 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }
        }

        else
        {
          if (v34 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_116;
          }

          v35 = *(v32 + 8 * v34 + 32);
          swift_unknownObjectRetain();
          v36 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            goto LABEL_36;
          }
        }

        v37 = [v35 identifier];
        if (!v37)
        {
          sub_219BF5414();
          v37 = sub_219BF53D4();
        }

        v38 = [v29 isChannelPermanentForTagID_];

        if (v38)
        {
          goto LABEL_22;
        }

        v39 = [v35 identifier];
        if (!v39)
        {
          sub_219BF5414();
          v39 = sub_219BF53D4();
        }

        v40 = [v29 hasAutoFavoriteSubscriptionForTagID_];

        if (v40)
        {
LABEL_22:
          swift_unknownObjectRelease();
        }

        else
        {
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
        }

        ++v34;
        if (v36 == i)
        {
          v44 = v122[0];
          goto LABEL_48;
        }
      }
    }

    v44 = MEMORY[0x277D84F90];
LABEL_48:
    swift_bridgeObjectRelease_n();

    v45 = [v117 configuration];
    if (!v45)
    {
      goto LABEL_133;
    }

    v46 = v45;
    if ([v45 respondsToSelector_])
    {
      v47 = [v46 minShortcutsOnboardCount];
    }

    else
    {
      v47 = 4;
    }

    swift_unknownObjectRelease();
    if (v44 < 0 || (v44 & 0x4000000000000000) != 0)
    {
      v32 = sub_219BF7214();
    }

    else
    {
      v32 = *(v44 + 16);
    }

    if (v32 < v47)
    {
      v48 = sub_219BE5414();
      v49 = sub_219BF6214();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 134349056;
        *(v50 + 4) = v47;
        _os_log_impl(&dword_2186C1000, v48, v49, "Shortcuts(v1): ShortcutsStartupTask will not auto onboard when subscription count less than %{public}lld tags.", v50, 0xCu);
        MEMORY[0x21CECF960](v50, -1, -1);
      }

      return;
    }

    v51 = *(a1 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_feedPersonalizing);
    v118 = v44;
    if (v32)
    {
      v122[0] = MEMORY[0x277D84F90];
      sub_21870B65C(0, v32 & ~(v32 >> 63), 0);
      if (v32 < 0)
      {
        __break(1u);
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      v52 = v122[0];
      v53 = v44 & 0xC000000000000001;
      if ((v44 & 0xC000000000000001) == 0 && v32 > *(v44 + 16))
      {
        goto LABEL_128;
      }

      v54 = 0;
      do
      {
        if (v53)
        {
          v55 = MEMORY[0x21CECE0F0](v54, v44);
        }

        else
        {
          v55 = *(v44 + 8 * v54 + 32);
          swift_unknownObjectRetain();
        }

        v56 = [v55 identifier];
        v57 = sub_219BF5414();
        v59 = v58;
        swift_unknownObjectRelease();

        v122[0] = v52;
        v61 = *(v52 + 16);
        v60 = *(v52 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_21870B65C((v60 > 1), v61 + 1, 1);
          v52 = v122[0];
        }

        ++v54;
        *(v52 + 16) = v61 + 1;
        v62 = v52 + 16 * v61;
        *(v62 + 32) = v57;
        *(v62 + 40) = v59;
        v44 = v118;
      }

      while (v32 != v54);
    }

    v63 = sub_219BF5904();

    v64 = [v51 rankTagIDsDescending_];

    if (v64)
    {
      a1 = sub_219BF5924();
    }

    else
    {
      a1 = MEMORY[0x277D84F90];
      if (v32)
      {
        v122[0] = MEMORY[0x277D84F90];
        sub_21870B65C(0, v32 & ~(v32 >> 63), 0);
        if (v32 < 0)
        {
          goto LABEL_130;
        }

        a1 = v122[0];
        v95 = v118;
        if ((v118 & 0xC000000000000001) == 0 && v32 > *(v118 + 16))
        {
          goto LABEL_131;
        }

        v96 = 0;
        do
        {
          if ((v118 & 0xC000000000000001) != 0)
          {
            v97 = MEMORY[0x21CECE0F0](v96, v95);
          }

          else
          {
            v97 = *(v95 + 8 * v96 + 32);
            swift_unknownObjectRetain();
          }

          v98 = [v97 identifier];
          v99 = sub_219BF5414();
          v101 = v100;
          swift_unknownObjectRelease();

          v122[0] = a1;
          v103 = a1[2];
          v102 = a1[3];
          if (v103 >= v102 >> 1)
          {
            sub_21870B65C((v102 > 1), v103 + 1, 1);
            a1 = v122[0];
          }

          ++v96;
          a1[2] = v103 + 1;
          v104 = &a1[2 * v103];
          v104[4] = v99;
          v104[5] = v101;
          v95 = v118;
        }

        while (v32 != v96);
      }
    }

    v65 = [v117 configuration];
    if (!v65)
    {
      goto LABEL_134;
    }

    v66 = v65;
    v67 = ([v65 respondsToSelector_] & 1) != 0 ? objc_msgSend(v66, sel_shortcutsOnboardCount) : 6;
    swift_unknownObjectRelease();
    v68 = a1[2];
    if (!v68)
    {
      break;
    }

    v69 = 0;
    v70 = v68 - 1;
    v29 = a1 + 5;
    while (v69 < a1[2])
    {
      v71 = *(v29 - 1);
      v32 = *v29;
      v72 = *__swift_project_boxed_opaque_existential_1(oslog, oslog[3].isa);

      if (!sub_218C556E8(v71, v32))
      {
        sub_218C553A4(v72, v71, v32);
      }

      v73 = __swift_project_boxed_opaque_existential_1(oslog, oslog[3].isa);
      v74 = sub_218C552B4(v73);
      if (v74 >> 62)
      {
        v32 = v74;
        v75 = sub_219BF7214();
      }

      else
      {
        v75 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v29 += 2;
      if (v75 == v67 || v70 == v69++)
      {
        goto LABEL_92;
      }
    }

LABEL_116:
    __break(1u);
LABEL_117:
    ;
  }

LABEL_92:

  v77 = __swift_project_boxed_opaque_existential_1(oslog, oslog[3].isa);
  v78 = sub_218C552B4(v77);
  if (v78 >> 62)
  {
    v105 = v78;
    v79 = sub_219BF7214();
    v78 = v105;
    if (!v79)
    {
      goto LABEL_120;
    }

LABEL_94:
    v80 = v78;
    v122[0] = MEMORY[0x277D84F90];
    sub_21870B65C(0, v79 & ~(v79 >> 63), 0);
    if ((v79 & 0x8000000000000000) == 0)
    {
      v81 = 0;
      v82 = v122[0];
      v83 = v80;
      oslogb = (v80 & 0xC000000000000001);
      v84 = v80;
      v85 = v79;
      do
      {
        if (oslogb)
        {
          v86 = MEMORY[0x21CECE0F0](v81, v83);
        }

        else
        {
          v86 = *(v83 + 8 * v81 + 32);
        }

        v87 = v86;
        v88 = [v86 identifier];
        v89 = sub_219BF5414();
        v91 = v90;

        v122[0] = v82;
        v93 = *(v82 + 16);
        v92 = *(v82 + 24);
        if (v93 >= v92 >> 1)
        {
          sub_21870B65C((v92 > 1), v93 + 1, 1);
          v82 = v122[0];
        }

        ++v81;
        *(v82 + 16) = v93 + 1;
        v94 = v82 + 16 * v93;
        *(v94 + 32) = v89;
        *(v94 + 40) = v91;
        v83 = v84;
      }

      while (v85 != v81);

      goto LABEL_121;
    }

LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v79 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v79)
  {
    goto LABEL_94;
  }

LABEL_120:

  v82 = MEMORY[0x277D84F90];
LABEL_121:

  v106 = sub_219BE5414();
  v107 = sub_219BF6214();

  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v122[0] = v109;
    *v108 = 136446210;
    v110 = MEMORY[0x21CECC6D0](v82, MEMORY[0x277D837D0]);
    v112 = v111;

    v113 = sub_2186D1058(v110, v112, v122);

    *(v108 + 4) = v113;
    _os_log_impl(&dword_2186C1000, v106, v107, "Shortcuts(v1): ShortcutsStartupTask auto onboarded with %{public}s favorites", v108, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v109);
    MEMORY[0x21CECF960](v109, -1, -1);
    MEMORY[0x21CECF960](v108, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_218718690(Strong + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutsOnboardingManager, v122);

    v115 = v123;
    v116 = v124;
    __swift_project_boxed_opaque_existential_1(v122, v123);
    (*(v116 + 16))(1, v115, v116);
    __swift_destroy_boxed_opaque_existential_1(v122);
  }
}

uint64_t sub_21897681C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (qword_280EE5F18 != -1)
  {
    swift_once();
  }

  v6 = sub_219BE5434();
  __swift_project_value_buffer(v6, qword_280F62538);
  v7 = sub_219BE5414();
  v8 = sub_219BF6214();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2186C1000, v7, v8, "Shortcuts(V2) ShortcutsStartupTask running...", v9, 2u);
    MEMORY[0x21CECF960](v9, -1, -1);
  }

  if (qword_27CC084A0 != -1)
  {
    swift_once();
  }

  sub_218977404(&qword_27CC0B610, &unk_219C0C178);
  sub_219BDC7D4();
  if (v17 == 1)
  {
    v10 = sub_219BE5414();
    v11 = sub_219BF6214();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2186C1000, v10, v11, "Shortcuts(V2) ShortcutsStartupTask resetting customize affordance display launch count", v12, 2u);
      MEMORY[0x21CECF960](v12, -1, -1);
    }

    if (qword_27CC08498 != -1)
    {
      swift_once();
    }

    sub_218977404(&qword_27CC0B618, &unk_219C0C1B8);
    sub_219BDCA54();
    sub_219BDCA54();
  }

  v13 = sub_219BE5414();
  v14 = sub_219BF6214();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2186C1000, v13, v14, "Shortcuts(V2) ShortcutsStartupTask completed", v15, 2u);
    MEMORY[0x21CECF960](v15, -1, -1);
  }

  return a1();
}

void sub_218976B44()
{
  v2 = v0;
  v3 = (v0 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutService);
  v4 = __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutService), *(v0 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutService + 24));
  v5 = sub_218C552B4(v4);
  if (v5 >> 62)
  {
    v6 = sub_219BF7214();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 != 1)
  {
    return;
  }

  v7 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v8 = sub_218C552B4(v7);
  if (v8 >> 62)
  {
    v48 = v8;
    v49 = sub_219BF7214();
    v8 = v48;
    if (v49)
    {
LABEL_6:
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x21CECE0F0](0);
      }

      else
      {
        if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_40;
        }

        v9 = *(v8 + 32);
      }

      v50 = v9;

      v1 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
      v10 = [v50 identifier];
      v11 = sub_219BF5414();
      v13 = v12;
      v14 = [*(v2 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_configurationManager) configuration];
      if (!v14)
      {
        __break(1u);
        return;
      }

      v15 = v14;

      v16 = [v15 editorialChannelID];
      swift_unknownObjectRelease();
      if (v16)
      {
        v17 = sub_219BF5414();
        v19 = v18;

        if (v11 == v17 && v13 == v19)
        {
        }

        else
        {
          v21 = sub_219BF78F4();

          if ((v21 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        v2 = (v2 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutsOnboardingManager);
        v22 = v2[3];
        v23 = v2[4];
        __swift_project_boxed_opaque_existential_1(v2, v22);
        if ((*(v23 + 8))(v22, v23) != 2)
        {
          if (qword_280EE5F18 == -1)
          {
LABEL_22:
            v24 = sub_219BE5434();
            __swift_project_value_buffer(v24, qword_280F62538);
            v50 = v50;
            v25 = sub_219BE5414();
            v26 = sub_219BF6214();

            if (os_log_type_enabled(v25, v26))
            {
              v27 = swift_slowAlloc();
              v28 = swift_slowAlloc();
              v51 = v28;
              *v27 = 136446210;
              v29 = [v50 v1[278]];
              v30 = sub_219BF5414();
              v32 = v31;

              v33 = sub_2186D1058(v30, v32, &v51);

              *(v27 + 4) = v33;
              v1 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
              _os_log_impl(&dword_2186C1000, v25, v26, "Shortcuts(V1): ShortcutsStartupTask will offboard user from shortcuts and clear shortcut list when the only shortcut is tagID=%{public}s and shortcut state is not onboarded", v27, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v28);
              MEMORY[0x21CECF960](v28, -1, -1);
              MEMORY[0x21CECF960](v27, -1, -1);
            }

            v34 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
            v35 = [v50 v1[278]];
            v36 = sub_219BF5414();
            v38 = v37;

            v39 = *v34;
            if (sub_218C556E8(v36, v38))
            {

              v40 = sub_219BE5414();
              v41 = sub_219BF6214();

              if (os_log_type_enabled(v40, v41))
              {
                v42 = swift_slowAlloc();
                v43 = swift_slowAlloc();
                v51 = v43;
                *v42 = 136315138;
                *(v42 + 4) = sub_2186D1058(v36, v38, &v51);
                _os_log_impl(&dword_2186C1000, v40, v41, "Removed favorited shortcut=%s", v42, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v43);
                MEMORY[0x21CECF960](v43, -1, -1);
                MEMORY[0x21CECF960](v42, -1, -1);
              }

              v44 = *(v39 + OBJC_IVAR____TtC7NewsUI215ShortcutService_shortcutList);
              v45 = sub_219BF53D4();
              [v44 removeShortcutWithIdentifier_];
            }

            else
            {
            }

            v46 = v2[3];
            v47 = v2[4];
            __swift_project_boxed_opaque_existential_1(v2, v46);
            (*(v47 + 24))(v46, v47);
            goto LABEL_30;
          }

LABEL_40:
          swift_once();
          goto LABEL_22;
        }
      }

      else
      {
      }

LABEL_30:

      return;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_6;
  }
}

uint64_t sub_2189770F0()
{
  v1 = OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_executionPhase;
  v2 = sub_219BE2C14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutService));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutsOnboardingManager));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_2189771C0()
{
  sub_2189770F0();

  return swift_deallocClassInstance();
}

uint64_t sub_218977220()
{
  sub_218977394();
  sub_219BE3204();
  v0 = sub_219BE2E54();
  v1 = sub_219BE2F74();

  return v1;
}

void sub_218977394()
{
  if (!qword_280E8B4D8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8B4D8);
    }
  }
}

uint64_t sub_218977404(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ShortcutsStartupTask(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218977448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_219BDFFD4();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v42 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_219BDE384();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v38 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218977BEC(0, &qword_27CC0B620, MEMORY[0x277D2FFA0]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  sub_218977BEC(0, &qword_280EE8648, MEMORY[0x277D2DDE0]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = sub_219BDF884();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v40 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BDE394();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v38 - v21;
  v23 = COERCE_DOUBLE(sub_219BDE364());
  if (v24)
  {
    v39 = 0;
  }

  else
  {
    if ((~*&v23 & 0x7FF0000000000000) == 0)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v23 <= -2147483650.0)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v23 >= 2147483650.0)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v39 = v23;
  }

  sub_219BDE344();
  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  sub_219BDE354();
  (*(v17 + 16))(v19, v22, v16);
  v26 = (*(v17 + 88))(v19, v16);
  if (v26 == *MEMORY[0x277D2FFB8])
  {
    v27 = MEMORY[0x277D2DDF0];
  }

  else if (v26 == *MEMORY[0x277D2FFC0])
  {
    v27 = MEMORY[0x277D2DDF8];
  }

  else if (v26 == *MEMORY[0x277D2FFD0])
  {
    v27 = MEMORY[0x277D2DE08];
  }

  else if (v26 == *MEMORY[0x277D2FFB0])
  {
    v27 = MEMORY[0x277D2DE20];
  }

  else if (v26 == *MEMORY[0x277D2FFA8])
  {
    v27 = MEMORY[0x277D2DE10];
  }

  else
  {
    if (v26 != *MEMORY[0x277D2FFC8])
    {
      goto LABEL_38;
    }

    v27 = MEMORY[0x277D2DE00];
  }

  (*(v17 + 8))(v22, v16);
  (*(v14 + 104))(v40, *v27, v13);
  sub_219BDE334();
  v28 = v41;
  if ((*(v5 + 48))(v9, 1, v41) != 1)
  {
    v30 = v38;
    (*(v5 + 16))(v38, v9, v28);
    v31 = (*(v5 + 88))(v30, v28);
    if (v31 == *MEMORY[0x277D2FF90])
    {
      v32 = MEMORY[0x277D2DDD0];
LABEL_30:
      v33 = *v32;
      v34 = sub_219BDF874();
      v35 = *(v34 - 8);
      (*(v35 + 104))(v12, v33, v34);
      (*(v5 + 8))(v9, v28);
      (*(v35 + 56))(v12, 0, 1, v34);
      goto LABEL_31;
    }

    if (v31 == *MEMORY[0x277D2FF98])
    {
      v32 = MEMORY[0x277D2DDD8];
      goto LABEL_30;
    }

    if (v31 == *MEMORY[0x277D2FF88])
    {
      v32 = MEMORY[0x277D2DDC8];
      goto LABEL_30;
    }

    while (1)
    {
LABEL_38:
      sub_219BF7514();
      __break(1u);
    }
  }

  sub_218977C40(v9);
  v29 = sub_219BDF874();
  (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
LABEL_31:
  (*(v43 + 104))(v42, *MEMORY[0x277D2E2B0], v44);
  sub_219BE0454();
  v36 = sub_219BDE374();
  return (*(*(v36 - 8) + 8))(a1, v36);
}

void sub_218977BEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_218977C40(uint64_t a1)
{
  sub_218977BEC(0, &qword_27CC0B620, MEMORY[0x277D2FFA0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218977CB8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_218977D00(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v3);
  return MEMORY[0x21CEC9610](a2, *MEMORY[0x277D30B50], v3, v4);
}

void sub_218977D64(unint64_t *a1@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v36 = a4;
  v4 = *a1;
  if (*a1 >> 62)
  {
LABEL_27:
    v5 = sub_219BF7214();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v40 = v4 & 0xFFFFFFFFFFFFFF8;
      v41 = v4 & 0xC000000000000001;
      v7 = MEMORY[0x277D84F98];
      v38 = v5;
      v39 = v4;
      do
      {
        if (v41)
        {
          v8 = MEMORY[0x21CECE0F0](v6, v4);
          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v6 >= *(v40 + 16))
          {
            goto LABEL_24;
          }

          v8 = *(v4 + 8 * v6 + 32);
          swift_unknownObjectRetain();
          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        v42 = v9;
        v10 = [v8 articleID];
        v11 = sub_219BF5414();
        v13 = v12;

        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43[0] = v7;
        v4 = v7;
        v16 = sub_21870F700(v11, v13);
        v17 = v7[2];
        v18 = (v15 & 1) == 0;
        v19 = v17 + v18;
        if (__OFADD__(v17, v18))
        {
          goto LABEL_25;
        }

        v20 = v15;
        if (v7[3] >= v19)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v15)
            {
              goto LABEL_4;
            }
          }

          else
          {
            v4 = v43;
            sub_2194902C8();
            if (v20)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_21947DE18(v19, isUniquelyReferenced_nonNull_native);
          v4 = v43[0];
          v21 = sub_21870F700(v11, v13);
          if ((v20 & 1) != (v22 & 1))
          {
LABEL_42:
            sub_219BF79A4();
            __break(1u);
            return;
          }

          v16 = v21;
          if (v20)
          {
LABEL_4:

            v7 = v43[0];
            *(*(v43[0] + 56) + 8 * v16) = v8;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_5;
          }
        }

        v7 = v43[0];
        *(v43[0] + 8 * (v16 >> 6) + 64) |= 1 << v16;
        v23 = (v7[6] + 16 * v16);
        *v23 = v11;
        v23[1] = v13;
        *(v7[7] + 8 * v16) = v8;
        swift_unknownObjectRelease();
        v24 = v7[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_26;
        }

        v7[2] = v26;
LABEL_5:
        ++v6;
        v4 = v39;
      }

      while (v42 != v38);
    }
  }

  sub_21872C32C(0);
  sub_219BE2D84();

  sub_2186C66AC();
  v27 = sub_219BF6F74();
  v28 = sub_219BF6214();
  v29 = MEMORY[0x277D84F90];
  sub_219BE5314("AudioHeroStore: Fetched daily briefing and hero articles", 56, 2, &dword_2186C1000, v27, v28, MEMORY[0x277D84F90]);

  v44 = v29;
  v30 = *(a3 + 16);
  if (v30)
  {
    v31 = 0;
    do
    {
      v32 = (a3 + 40 + 16 * v31);
      v33 = v31;
      while (1)
      {
        if (v33 >= v30)
        {
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        v31 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_41;
        }

        v34 = *v32;
        v43[0] = *(v32 - 1);
        v43[1] = v34;

        sub_219BE2DD4();

        if (v43[2])
        {
          break;
        }

        ++v33;
        v32 += 2;
        if (v31 == v30)
        {
          goto LABEL_39;
        }
      }

      MEMORY[0x21CECC690](v35);
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v29 = v44;
    }

    while (v31 != v30);
  }

LABEL_39:
  *v36 = v29;
}