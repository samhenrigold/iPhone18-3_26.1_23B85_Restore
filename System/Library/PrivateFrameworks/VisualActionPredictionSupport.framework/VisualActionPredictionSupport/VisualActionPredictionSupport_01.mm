uint64_t sub_1D9E4C634(uint64_t a1)
{
  v2 = sub_1D9E50D90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E4C670(uint64_t a1)
{
  v2 = sub_1D9E50D90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E4C6AC(uint64_t a1)
{
  v2 = sub_1D9E50E38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E4C6E8(uint64_t a1)
{
  v2 = sub_1D9E50E38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E4C724()
{
  v1 = 0x6D75626C61;
  if (*v0 != 1)
  {
    v1 = 0x636972656E6567;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1802465122;
  }
}

uint64_t sub_1D9E4C774@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9E51A24(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9E4C79C(uint64_t a1)
{
  v2 = sub_1D9E50C94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E4C7D8(uint64_t a1)
{
  v2 = sub_1D9E50C94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E4C814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9E4C894(uint64_t a1)
{
  v2 = sub_1D9E50CE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E4C8D0(uint64_t a1)
{
  v2 = sub_1D9E50CE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualLookupResult.Entity.encode(to:)(void *a1)
{
  v2 = v1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73038, &qword_1D9F2ECE0);
  v28 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v27 = &v24 - v4;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73040, &qword_1D9F2ECE8);
  v25 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73048, &qword_1D9F2ECF0);
  v24 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73050, &qword_1D9F2ECF8);
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = v2[1];
  v34 = *v2;
  v35 = v13;
  v14 = v2[3];
  v30 = v2[2];
  v31 = v14;
  v15 = v2[5];
  v32 = v2[4];
  v33 = v15;
  v16 = *(v2 + 104);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E50C94();
  sub_1D9F2BB8C();
  if (v16)
  {
    if (v16 == 1)
    {
      LOBYTE(v38) = 1;
      sub_1D9E50D90();
      v17 = v37;
      sub_1D9F2B8FC();
      v38 = v34;
      v39 = v35;
      v40 = v30;
      v41 = v31;
      v42 = v32;
      v43 = v33;
      sub_1D9E50DE4();
      v18 = v26;
      sub_1D9F2B9AC();
      (*(v25 + 8))(v6, v18);
    }

    else
    {
      LOBYTE(v38) = 2;
      sub_1D9E50CE8();
      v22 = v27;
      v17 = v37;
      sub_1D9F2B8FC();
      v38 = v34;
      v39 = v35;
      sub_1D9E50D3C();
      v23 = v29;
      sub_1D9F2B9AC();
      (*(v28 + 8))(v22, v23);
    }

    return (*(v36 + 8))(v12, v17);
  }

  else
  {
    LOBYTE(v38) = 0;
    sub_1D9E50E38();
    v19 = v37;
    sub_1D9F2B8FC();
    v38 = v34;
    v39 = v35;
    v40 = v30;
    v41 = v31;
    v42 = v32;
    v43 = v33;
    v20 = *(v2 + 4);
    v44 = *(v2 + 3);
    v45 = v20;
    v46 = *(v2 + 5);
    v47 = v2[12];
    sub_1D9E50E8C();
    sub_1D9F2B9AC();
    (*(v24 + 8))(v9, v7);
    return (*(v36 + 8))(v12, v19);
  }
}

uint64_t VisualLookupResult.Entity.hash(into:)(uint64_t a1)
{
  if (*(v1 + 104))
  {
    if (*(v1 + 104) == 1)
    {
      MEMORY[0x1DA7438F0](1);
      sub_1D9F2B18C();
      sub_1D9F2B18C();
    }

    else
    {
      MEMORY[0x1DA7438F0](2);
    }

    return sub_1D9F2B18C();
  }

  else
  {
    v2 = *(v1 + 96);
    MEMORY[0x1DA7438F0](0);
    sub_1D9F2B18C();
    sub_1D9F2B18C();
    sub_1D9F2B18C();
    sub_1D9F2B18C();
    sub_1D9F2B18C();
    sub_1D9F2B18C();
    v3 = 0.0;
    if (v2 != 0.0)
    {
      v3 = v2;
    }

    return MEMORY[0x1DA743920](*&v3);
  }
}

uint64_t VisualLookupResult.Entity.hashValue.getter()
{
  sub_1D9F2BAFC();
  VisualLookupResult.Entity.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t VisualLookupResult.Entity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73090, &qword_1D9F2ED00);
  v43 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v45 = &v36[-v3];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73098, &qword_1D9F2ED08);
  v41 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v5 = &v36[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB730A0, &qword_1D9F2ED10);
  v39 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB730A8, &unk_1D9F2ED18);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36[-v11];
  v13 = a1[3];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D9E50C94();
  v14 = v46;
  sub_1D9F2BB7C();
  if (!v14)
  {
    v46 = v6;
    v15 = v45;
    v16 = sub_1D9F2B8DC();
    v17 = (2 * *(v16 + 16)) | 1;
    v61 = v16;
    v62 = v16 + 32;
    v63 = 0;
    v64 = v17;
    v18 = sub_1D9E46190();
    if (v18 == 3 || v63 != v64 >> 1)
    {
      v21 = sub_1D9F2B6BC();
      swift_allocError();
      v23 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0);
      *v23 = &type metadata for VisualLookupResult.Entity;
      sub_1D9F2B7EC();
      sub_1D9F2B6AC();
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
      swift_willThrow();
      (*(v10 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v38 = v9;
      v37 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          LOBYTE(v47) = 1;
          sub_1D9E50D90();
          v19 = v5;
          sub_1D9F2B7DC();
          v20 = v44;
          sub_1D9E50F34();
          v28 = v42;
          sub_1D9F2B89C();
          (*(v41 + 8))(v19, v28);
          (*(v10 + 8))(v12, v38);
          swift_unknownObjectRelease();
          v29 = v47;
          v30 = v48;
          v31 = v49;
          v32 = v50;
          v33 = v51;
          v34 = v52;
        }

        else
        {
          LOBYTE(v47) = 2;
          sub_1D9E50CE8();
          sub_1D9F2B7DC();
          v20 = v44;
          sub_1D9E50EE0();
          v27 = v40;
          sub_1D9F2B89C();
          (*(v43 + 8))(v15, v27);
          (*(v10 + 8))(v12, v38);
          swift_unknownObjectRelease();
          v29 = v47;
          v30 = v48;
        }
      }

      else
      {
        LOBYTE(v47) = 0;
        sub_1D9E50E38();
        v25 = v38;
        sub_1D9F2B7DC();
        sub_1D9E50F88();
        v26 = v46;
        sub_1D9F2B89C();
        (*(v39 + 8))(v8, v26);
        (*(v10 + 8))(v12, v25);
        swift_unknownObjectRelease();
        v29 = v47;
        v30 = v48;
        v31 = v49;
        v32 = v50;
        v33 = v51;
        v34 = v52;
        v57 = v53;
        v58 = v54;
        v59 = v55;
        v60 = v56;
        v20 = v44;
      }

      *v20 = v29;
      *(v20 + 8) = v30;
      *(v20 + 16) = v31;
      *(v20 + 24) = v32;
      *(v20 + 32) = v33;
      *(v20 + 40) = v34;
      v35 = v58;
      *(v20 + 48) = v57;
      *(v20 + 64) = v35;
      *(v20 + 80) = v59;
      *(v20 + 96) = v60;
      *(v20 + 104) = v37;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v65);
}

uint64_t sub_1D9E4D788()
{
  sub_1D9F2BAFC();
  VisualLookupResult.Entity.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E4D7CC()
{
  sub_1D9F2BAFC();
  VisualLookupResult.Entity.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t VisualLookupResult.entities.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t VisualLookupResult.resultItems.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

VisualActionPredictionSupport::VisualLookupResult __swiftcall VisualLookupResult.init(entities:resultItems:)(Swift::OpaquePointer entities, Swift::OpaquePointer resultItems)
{
  v2->_rawValue = entities._rawValue;
  v2[1]._rawValue = resultItems._rawValue;
  result.resultItems = resultItems;
  result.entities = entities;
  return result;
}

uint64_t static VisualLookupResult.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1D9E4C020(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1D9E4C4CC(v2, v3);
}

uint64_t sub_1D9E4D918()
{
  if (*v0)
  {
    return 0x7449746C75736572;
  }

  else
  {
    return 0x7365697469746E65;
  }
}

uint64_t sub_1D9E4D95C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7365697469746E65 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7449746C75736572 && a2 == 0xEB00000000736D65)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

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

uint64_t sub_1D9E4DA3C(uint64_t a1)
{
  v2 = sub_1D9E50FDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E4DA78(uint64_t a1)
{
  v2 = sub_1D9E50FDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualLookupResult.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB730C8, &qword_1D9F2ED28);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E50FDC();

  sub_1D9F2BB8C();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB730D8, &qword_1D9F2ED30);
  sub_1D9E51150(&qword_1ECB730E0, sub_1D9E51030, MEMORY[0x1E69E6300]);
  sub_1D9F2B9AC();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB730F0, &qword_1D9F2ED38);
    sub_1D9E51084(&qword_1ECB730F8, sub_1D9E510FC, MEMORY[0x1E69E6300]);
    sub_1D9F2B9AC();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t VisualLookupResult.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1D9E5074C(a1, v3);

  return sub_1D9E50640(a1, v4);
}

uint64_t VisualLookupResult.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9F2BAFC();
  sub_1D9E5074C(v4, v1);
  sub_1D9E50640(v4, v2);
  return sub_1D9F2BB4C();
}

uint64_t VisualLookupResult.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73108, &qword_1D9F2ED40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E50FDC();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB730D8, &qword_1D9F2ED30);
  v13 = 0;
  sub_1D9E51150(&qword_1ECB73110, sub_1D9E511C8, MEMORY[0x1E69E6330]);
  sub_1D9F2B89C();
  v9 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB730F0, &qword_1D9F2ED38);
  v13 = 1;
  sub_1D9E51084(&qword_1ECB73120, sub_1D9E5121C, MEMORY[0x1E69E6330]);
  sub_1D9F2B89C();
  (*(v6 + 8))(v8, v5);
  v10 = v14;
  *a2 = v9;
  a2[1] = v10;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9E4E040()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9F2BAFC();
  sub_1D9E5074C(v4, v1);
  sub_1D9E50640(v4, v2);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E4E094(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1D9E5074C(a1, v3);

  return sub_1D9E50640(a1, v4);
}

uint64_t sub_1D9E4E0D4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9F2BAFC();
  sub_1D9E5074C(v4, v1);
  sub_1D9E50640(v4, v2);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E4E124(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1D9E4C020(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1D9E4C4CC(v2, v3);
}

void *sub_1D9E4E180()
{
  v1 = type metadata accessor for DetectedEntity(0);
  v2 = MEMORY[0x1EEE9AC00](v1);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v52 = (&v50 - v6);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v50 - v8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v50 - v10;
  v12 = *v0;
  v50 = v0[1];
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = (v12 + 80);
    v15 = MEMORY[0x1E69E7CC0];
    v53 = v1;
    v51 = v9;
    while (1)
    {
      v19 = *(v14 - 2);
      v18 = *(v14 - 1);
      v63 = *(v14 - 3);
      v64 = v19;
      v65 = v18;
      v20 = *v14;
      v21 = v14[1];
      v22 = v14[2];
      *(v68 + 9) = *(v14 + 41);
      v67 = v21;
      v68[0] = v22;
      v66 = v20;
      v23 = v64;
      v24 = v65;
      v25 = *v14;
      v26 = v14[1];
      v27 = v14[2];
      v72 = *(v14 + 6);
      v70 = v26;
      v71 = v27;
      v69 = v25;
      if (BYTE8(v68[1]))
      {
        if (BYTE8(v68[1]) != 1)
        {
          *v52 = v63;
          swift_storeEnumTagMultiPayload();
          sub_1D9E51B38(&v63, &v57);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_1D9F0C150(0, v15[2] + 1, 1, v15);
          }

          v35 = v15[2];
          v34 = v15[3];
          if (v35 >= v34 >> 1)
          {
            v15 = sub_1D9F0C150((v34 > 1), v35 + 1, 1, v15);
          }

          sub_1D9E51B70(&v63);
          *(&v58 + 1) = v53;
          *&v59 = &off_1EECD2758;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v57);
          v37 = v52;
          sub_1D9E51E08(v52, boxed_opaque_existential_1, type metadata accessor for DetectedEntity);
          v15[2] = v35 + 1;
          sub_1D9E3EE4C(&v57, &v15[5 * v35 + 4]);
          sub_1D9E51F3C(v37, type metadata accessor for DetectedEntity);
          v9 = v51;
          goto LABEL_5;
        }

        *v9 = v63;
        v9[1] = v23;
        v9[2] = v24;
        swift_storeEnumTagMultiPayload();
        sub_1D9E51B38(&v63, &v57);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1D9F0C150(0, v15[2] + 1, 1, v15);
        }

        v29 = v15[2];
        v28 = v15[3];
        if (v29 >= v28 >> 1)
        {
          v15 = sub_1D9F0C150((v28 > 1), v29 + 1, 1, v15);
        }

        sub_1D9E51B70(&v63);
        *(&v58 + 1) = v53;
        *&v59 = &off_1EECD2758;
        v16 = __swift_allocate_boxed_opaque_existential_1(&v57);
        sub_1D9E51E08(v9, v16, type metadata accessor for DetectedEntity);
        v15[2] = v29 + 1;
        sub_1D9E3EE4C(&v57, &v15[5 * v29 + 4]);
        v17 = v9;
      }

      else
      {
        *v11 = v63;
        *(v11 + 1) = v23;
        *(v11 + 2) = v24;
        v30 = v70;
        *(v11 + 3) = v69;
        *(v11 + 4) = v30;
        *(v11 + 5) = v71;
        *(v11 + 12) = v72;
        swift_storeEnumTagMultiPayload();
        v61 = v67;
        v62[0] = v68[0];
        *(v62 + 9) = *(v68 + 9);
        v57 = v63;
        v58 = v64;
        v59 = v65;
        v60 = v66;
        sub_1D9E51B38(&v63, &v54);
        sub_1D9E51C04(&v57, &v54);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1D9F0C150(0, v15[2] + 1, 1, v15);
        }

        v32 = v15[2];
        v31 = v15[3];
        if (v32 >= v31 >> 1)
        {
          v15 = sub_1D9F0C150((v31 > 1), v32 + 1, 1, v15);
        }

        sub_1D9E51B70(&v63);
        v55 = v53;
        v56 = &off_1EECD2758;
        v33 = __swift_allocate_boxed_opaque_existential_1(&v54);
        sub_1D9E51E08(v11, v33, type metadata accessor for DetectedEntity);
        v15[2] = v32 + 1;
        sub_1D9E3EE4C(&v54, &v15[5 * v32 + 4]);
        v17 = v11;
      }

      sub_1D9E51F3C(v17, type metadata accessor for DetectedEntity);
LABEL_5:
      v14 += 7;
      --v13;
      v1 = v53;
      if (!v13)
      {
        goto LABEL_23;
      }
    }
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_23:
  v38 = *(v50 + 16);
  if (v38)
  {
    v39 = (v50 + 80);
    do
    {
      v40 = *(v39 - 5);
      v41 = *(v39 - 4);
      v42 = *(v39 - 3);
      v43 = *(v39 - 4);
      v44 = *(v39 - 1);
      v45 = *v39;
      *v4 = *(v39 - 6);
      *(v4 + 1) = v40;
      *(v4 + 2) = v41;
      *(v4 + 3) = v42;
      *(v4 + 8) = v43;
      *(v4 + 5) = v44;
      *(v4 + 6) = v45;
      swift_storeEnumTagMultiPayload();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1D9F0C150(0, v15[2] + 1, 1, v15);
      }

      v47 = v15[2];
      v46 = v15[3];
      if (v47 >= v46 >> 1)
      {
        v15 = sub_1D9F0C150((v46 > 1), v47 + 1, 1, v15);
      }

      v39 += 7;
      *(&v64 + 1) = v1;
      *&v65 = &off_1EECD2758;
      v48 = __swift_allocate_boxed_opaque_existential_1(&v63);
      sub_1D9E51E08(v4, v48, type metadata accessor for DetectedEntity);
      v15[2] = v47 + 1;
      sub_1D9E3EE4C(&v63, &v15[5 * v47 + 4]);
      sub_1D9E51F3C(v4, type metadata accessor for DetectedEntity);
      --v38;
    }

    while (v38);
  }

  return v15;
}

uint64_t sub_1D9E4E78C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DetectedEntity(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1D9E4E7F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D9F2AD7C();
  v29 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v28 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v32 = v27 - v6;
  v7 = type metadata accessor for Feedback.Event(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = v27 - v12;
  v14 = *(a2 + 16);
  result = MEMORY[0x1DA7438F0](v14);
  v36 = v14;
  if (v14)
  {
    v16 = 0;
    v35 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v34 = *(v8 + 72);
    v30 = (v29 + 32);
    v31 = v13;
    v17 = (v29 + 8);
    v27[0] = v11;
    v27[1] = v7;
    do
    {
      v37 = v16;
      sub_1D9E51E08(v35 + v34 * v16, v13, type metadata accessor for Feedback.Event);
      sub_1D9E51E08(v13, v11, type metadata accessor for Feedback.Event);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v20 = *v11;
        MEMORY[0x1DA7438F0](1);
        MEMORY[0x1DA7438F0](*(v20 + 16));
        v21 = *(v20 + 16);
        if (v21)
        {
          v22 = v28;
          v23 = (*(v29 + 80) + 32) & ~*(v29 + 80);
          v33 = v20;
          v24 = v20 + v23;
          v25 = *(v29 + 72);
          v26 = *(v29 + 16);
          do
          {
            v26(v22, v24, v3);
            sub_1D9E51C60(&qword_1EE0F22A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
            sub_1D9F2B0EC();
            (*v17)(v22, v3);
            v24 += v25;
            --v21;
          }

          while (v21);

          v11 = v27[0];
        }

        else
        {
        }

        v18 = v31;
      }

      else
      {
        v18 = v13;
        v19 = v32;
        (*v30)(v32, v11, v3);
        MEMORY[0x1DA7438F0](0);
        sub_1D9E51C60(&qword_1EE0F22A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        sub_1D9F2B0EC();
        (*v17)(v19, v3);
      }

      result = sub_1D9E51F3C(v18, type metadata accessor for Feedback.Event);
      v16 = v37 + 1;
      v13 = v18;
    }

    while (v37 + 1 != v36);
  }

  return result;
}

uint64_t sub_1D9E4EBD0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731B8, &unk_1D9F2F580);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - v5;
  v7 = *(a2 + 16);
  result = MEMORY[0x1DA7438F0](v7);
  if (v7)
  {
    v9 = &v6[*(v3 + 28)];
    v10 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    do
    {
      sub_1D9E51E70(v10, v6, &qword_1ECB731B8, &unk_1D9F2F580);
      sub_1D9F2AC4C();
      sub_1D9E51C60(&qword_1ECB731C8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1D9F2B0EC();
      if (*(v9 + 1))
      {
        sub_1D9F2BB1C();
        sub_1D9F2B18C();
      }

      else
      {
        sub_1D9F2BB1C();
      }

      result = sub_1D9E51FE8(v6, &qword_1ECB731B8, &unk_1D9F2F580);
      v10 += v12;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1D9E4EDA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA7438F0](v3);
  if (v3)
  {
    v5 = (a2 + 72);
    do
    {
      v6 = *v5;

      sub_1D9F2B18C();
      sub_1D9F2B18C();
      sub_1D9F2BB1C();
      if (v6)
      {

        sub_1D9F2B18C();

        result = swift_bridgeObjectRelease_n();
      }

      else
      {
      }

      v5 += 6;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D9E4EEB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA7438F0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = v5[1];
      v14 = *v5;
      v15 = v6;
      v7 = v5[3];
      v16 = v5[2];
      v17 = v7;
      v8 = v5[5];
      v18 = v5[4];
      v19 = v8;
      v9 = *(&v15 + 1);
      v10 = *(&v16 + 1);
      v11 = *(&v17 + 1);
      v12 = *(&v18 + 1);
      if (*(&v14 + 1))
      {
        sub_1D9F2BB1C();
        sub_1D9E51E70(&v14, v13, &qword_1ECB731D0, &qword_1D9F42160);
        sub_1D9F2B18C();
        if (v9)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_1D9F2BB1C();
        sub_1D9E51E70(&v14, v13, &qword_1ECB731D0, &qword_1D9F42160);
        if (v9)
        {
LABEL_7:
          sub_1D9F2BB1C();
          sub_1D9F2B18C();
          if (v10)
          {
            goto LABEL_8;
          }

          goto LABEL_14;
        }
      }

      sub_1D9F2BB1C();
      if (v10)
      {
LABEL_8:
        sub_1D9F2BB1C();
        sub_1D9F2B18C();
        if (v11)
        {
          goto LABEL_9;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1D9F2BB1C();
      if (v11)
      {
LABEL_9:
        sub_1D9F2BB1C();
        sub_1D9F2B18C();
        if (v12)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }

LABEL_15:
      sub_1D9F2BB1C();
      if (v12)
      {
LABEL_10:
        sub_1D9F2BB1C();
        sub_1D9F2B18C();
        if (!*(&v19 + 1))
        {
          goto LABEL_17;
        }

        goto LABEL_3;
      }

LABEL_16:
      sub_1D9F2BB1C();
      if (!*(&v19 + 1))
      {
LABEL_17:
        sub_1D9F2BB1C();
        goto LABEL_4;
      }

LABEL_3:
      sub_1D9F2BB1C();

      sub_1D9F2B18C();

LABEL_4:
      result = sub_1D9E51FE8(&v14, &qword_1ECB731D0, &qword_1D9F42160);
      v5 += 6;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D9E4F0BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA7438F0](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *v5;

      sub_1D9F2B18C();
      sub_1D9F2BB1C();
      if (v6)
      {

        sub_1D9F2B18C();

        result = swift_bridgeObjectRelease_n();
      }

      else
      {
      }

      v5 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D9E4F198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectedEntity(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x1DA7438F0](v8);
  v17 = v8;
  if (v8)
  {
    v10 = 0;
    v15[5] = 0x80000001D9F47C50;
    v16 = a2 + 32;
    v15[3] = 0x80000001D9F47BF0;
    v15[4] = 0x80000001D9F47C20;
    v15[1] = 0x80000001D9F47B90;
    v15[2] = 0x80000001D9F47BC0;
    do
    {
      v11 = *(v16 + 16 * v10 + 8);

      sub_1D9F2B18C();

      MEMORY[0x1DA7438F0](*(v11 + 16));
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
        v14 = *(v5 + 72);
        do
        {
          sub_1D9E51E08(v13, v7, type metadata accessor for DetectedEntity);
          DetectedEntity.hash(into:)(a1);
          sub_1D9E51F3C(v7, type metadata accessor for DetectedEntity);
          v13 += v14;
          --v12;
        }

        while (v12);
      }

      ++v10;
    }

    while (v10 != v17);
  }

  return result;
}

uint64_t sub_1D9E4F52C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PredictedAction(0);
  v4 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  result = MEMORY[0x1DA7438F0](v7);
  if (v7)
  {
    v9 = v3[6];
    v25 = &v6[v3[5]];
    v10 = &v6[v9];
    v11 = v3[8];
    v24 = &v6[v3[7]];
    v23 = &v6[v11];
    v12 = v3[9];
    v21 = &v6[v3[10]];
    v22 = v12;
    v13 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v20 = *(v4 + 72);
    while (1)
    {
      sub_1D9E51E08(v13, v6, type metadata accessor for PredictedAction);
      sub_1D9F2AD7C();
      sub_1D9E51C60(&qword_1EE0F22A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D9F2B0EC();
      sub_1D9F2B18C();
      v14 = *v10;
      v15 = *(v10 + 2);
      if (v10[48] > 1u)
      {
        break;
      }

      if (v10[48])
      {
        MEMORY[0x1DA7438F0](1);
        if (v15)
        {
          if (v15 != 1)
          {
            switch(v14)
            {
              case 1:
                v18 = 1;
                break;
              case 2:
                v18 = 2;
                break;
              case 3:
                v18 = 3;
                break;
              case 4:
                v18 = 4;
                break;
              case 5:
                v18 = 5;
                break;
              case 6:
                v18 = 6;
                break;
              case 7:
                v18 = 7;
                break;
              case 8:
                v18 = 8;
                break;
              case 9:
                v18 = 9;
                break;
              case 10:
                v18 = 10;
                break;
              case 11:
                v18 = 11;
                break;
              case 12:
                v18 = 12;
                break;
              case 13:
                v18 = 13;
                break;
              default:
                v18 = 0;
                break;
            }

            MEMORY[0x1DA7438F0](v18);
            goto LABEL_15;
          }

          v16 = 15;
        }

        else
        {
          v16 = 14;
        }

LABEL_13:
        MEMORY[0x1DA7438F0](v16);
        goto LABEL_14;
      }

      MEMORY[0x1DA7438F0](0);
      sub_1D9F2B18C();
      sub_1D9F2BB1C();
LABEL_15:
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      MEMORY[0x1DA7438F0](v6[v22]);
      sub_1D9F2BB1C();
      sub_1D9F2BB1C();
      sub_1D9F2BB1C();
      result = sub_1D9E51F3C(v6, type metadata accessor for PredictedAction);
      v13 += v20;
      if (!--v7)
      {
        return result;
      }
    }

    if (v10[48] == 2)
    {
      v16 = 2;
      goto LABEL_13;
    }

    v17 = *(v10 + 5);
    v19[0] = *(v10 + 4);
    v19[1] = v17;
    MEMORY[0x1DA7438F0](3);
    sub_1D9F2B18C();
    sub_1D9F2B18C();
LABEL_14:
    sub_1D9F2B18C();
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1D9E4F8D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA7438F0](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      v5 += 4;
      result = sub_1D9F2BB2C();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D9E4F938(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for PredictedAction(0);
  v63 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v50 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731E8, &qword_1D9F37F70);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v61 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v60 = &v50 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v59 = &v50 - v18;
  v19 = type metadata accessor for QueryResult.DisplayItem(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a2;
  v23 = *(a2 + 2);
  result = MEMORY[0x1DA7438F0](v23);
  v64 = v23;
  if (v23)
  {
    v25 = v22;
    v26 = &v22[*(v19 + 24)];
    v27 = type metadata accessor for PredictedActionSet(0);
    v28 = v27[5];
    v56 = v27[6];
    v57 = v28;
    v29 = v27[7];
    v30 = &v65[(*(v20 + 80) + 32) & ~*(v20 + 80)];
    v54 = *(v20 + 72);
    v55 = v29;
    v31 = (v63 + 48);
    v52 = v10;
    v53 = v7;
    v51 = v12;
    v62 = (v63 + 48);
    v63 = v26;
    v58 = v25;
    while (1)
    {
      sub_1D9E51E08(v30, v25, type metadata accessor for QueryResult.DisplayItem);
      sub_1D9F2B18C();
      sub_1D9F2B57C();
      v32 = v59;
      sub_1D9E51E70(v26, v59, &qword_1ECB731E8, &qword_1D9F37F70);
      v65 = *v31;
      if ((v65)(v32, 1, v4) == 1)
      {
        sub_1D9F2BB1C();
        goto LABEL_20;
      }

      sub_1D9E51ED8(v32, v12);
      sub_1D9F2BB1C();
      sub_1D9F2AD7C();
      sub_1D9E51C60(&qword_1EE0F22A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D9F2B0EC();
      sub_1D9F2B18C();
      v33 = &v12[*(v4 + 24)];
      v34 = *v33;
      v35 = *(v33 + 2);
      if (v33[48] > 1u)
      {
        break;
      }

      if (v33[48])
      {
        MEMORY[0x1DA7438F0](1);
        if (v35)
        {
          if (v35 != 1)
          {
            switch(v34)
            {
              case 1:
                v47 = 1;
                break;
              case 2:
                v47 = 2;
                break;
              case 3:
                v47 = 3;
                break;
              case 4:
                v47 = 4;
                break;
              case 5:
                v47 = 5;
                break;
              case 6:
                v47 = 6;
                break;
              case 7:
                v47 = 7;
                break;
              case 8:
                v47 = 8;
                break;
              case 9:
                v47 = 9;
                break;
              case 10:
                v47 = 10;
                break;
              case 11:
                v47 = 11;
                break;
              case 12:
                v47 = 12;
                break;
              case 13:
                v47 = 13;
                break;
              default:
                v47 = 0;
                break;
            }

            MEMORY[0x1DA7438F0](v47);
            goto LABEL_19;
          }

          v36 = 15;
        }

        else
        {
          v36 = 14;
        }

LABEL_17:
        MEMORY[0x1DA7438F0](v36);
        goto LABEL_18;
      }

      MEMORY[0x1DA7438F0](0);
      sub_1D9F2B18C();
      sub_1D9F2BB1C();
LABEL_19:
      v26 = v63;
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      MEMORY[0x1DA7438F0](v12[*(v4 + 36)]);
      sub_1D9F2BB1C();
      sub_1D9F2BB1C();
      sub_1D9F2BB1C();
      sub_1D9E51F3C(v12, type metadata accessor for PredictedAction);
      v31 = v62;
LABEL_20:
      v37 = v60;
      sub_1D9E51E70(v26 + v57, v60, &qword_1ECB731E8, &qword_1D9F37F70);
      if ((v65)(v37, 1, v4) == 1)
      {
        sub_1D9F2BB1C();
        goto LABEL_35;
      }

      sub_1D9E51ED8(v37, v10);
      sub_1D9F2BB1C();
      sub_1D9F2AD7C();
      sub_1D9E51C60(&qword_1EE0F22A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D9F2B0EC();
      sub_1D9F2B18C();
      v38 = &v10[*(v4 + 24)];
      v39 = *v38;
      v40 = *(v38 + 2);
      if (v38[48] > 1u)
      {
        if (v38[48] == 2)
        {
          v41 = 2;
          goto LABEL_32;
        }

        MEMORY[0x1DA7438F0](3);
        sub_1D9F2B18C();
        v12 = v51;
        sub_1D9F2B18C();
        v10 = v52;
        v7 = v53;
LABEL_33:
        sub_1D9F2B18C();
        goto LABEL_34;
      }

      if (v38[48])
      {
        MEMORY[0x1DA7438F0](1);
        if (v40)
        {
          if (v40 != 1)
          {
            switch(v39)
            {
              case 1:
                v48 = 1;
                break;
              case 2:
                v48 = 2;
                break;
              case 3:
                v48 = 3;
                break;
              case 4:
                v48 = 4;
                break;
              case 5:
                v48 = 5;
                break;
              case 6:
                v48 = 6;
                break;
              case 7:
                v48 = 7;
                break;
              case 8:
                v48 = 8;
                break;
              case 9:
                v48 = 9;
                break;
              case 10:
                v48 = 10;
                break;
              case 11:
                v48 = 11;
                break;
              case 12:
                v48 = 12;
                break;
              case 13:
                v48 = 13;
                break;
              default:
                v48 = 0;
                break;
            }

            MEMORY[0x1DA7438F0](v48);
            goto LABEL_34;
          }

          v41 = 15;
        }

        else
        {
          v41 = 14;
        }

LABEL_32:
        MEMORY[0x1DA7438F0](v41);
        goto LABEL_33;
      }

      MEMORY[0x1DA7438F0](0);
      sub_1D9F2B18C();
      sub_1D9F2BB1C();
LABEL_34:
      v26 = v63;
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      MEMORY[0x1DA7438F0](v10[*(v4 + 36)]);
      sub_1D9F2BB1C();
      sub_1D9F2BB1C();
      sub_1D9F2BB1C();
      sub_1D9E51F3C(v10, type metadata accessor for PredictedAction);
      v31 = v62;
LABEL_35:
      v42 = v61;
      sub_1D9E51E70(v26 + v56, v61, &qword_1ECB731E8, &qword_1D9F37F70);
      if ((v65)(v42, 1, v4) != 1)
      {
        sub_1D9E51ED8(v42, v7);
        sub_1D9F2BB1C();
        sub_1D9F2AD7C();
        sub_1D9E51C60(&qword_1EE0F22A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        sub_1D9F2B0EC();
        sub_1D9F2B18C();
        v43 = &v7[*(v4 + 24)];
        v44 = *v43;
        v45 = *(v43 + 2);
        if (v43[48] > 1u)
        {
          if (v43[48] == 2)
          {
            v46 = 2;
            goto LABEL_46;
          }

          MEMORY[0x1DA7438F0](3);
          sub_1D9F2B18C();
          v12 = v51;
          sub_1D9F2B18C();
          v10 = v52;
          v7 = v53;
        }

        else
        {
          if (!v43[48])
          {
            MEMORY[0x1DA7438F0](0);
            sub_1D9F2B18C();
            sub_1D9F2BB1C();
            goto LABEL_48;
          }

          MEMORY[0x1DA7438F0](1);
          if (v45)
          {
            if (v45 == 1)
            {
              v46 = 15;
              goto LABEL_46;
            }

            v26 = v63;
            switch(v44)
            {
              case 1:
                v49 = 1;
                break;
              case 2:
                v49 = 2;
                break;
              case 3:
                v49 = 3;
                break;
              case 4:
                v49 = 4;
                break;
              case 5:
                v49 = 5;
                break;
              case 6:
                v49 = 6;
                break;
              case 7:
                v49 = 7;
                break;
              case 8:
                v49 = 8;
                break;
              case 9:
                v49 = 9;
                break;
              case 10:
                v49 = 10;
                break;
              case 11:
                v49 = 11;
                break;
              case 12:
                v49 = 12;
                break;
              case 13:
                v49 = 13;
                break;
              default:
                v49 = 0;
                break;
            }

            MEMORY[0x1DA7438F0](v49);
LABEL_49:
            sub_1D9F2B18C();
            sub_1D9F2B18C();
            MEMORY[0x1DA7438F0](v7[*(v4 + 36)]);
            sub_1D9F2BB1C();
            sub_1D9F2BB1C();
            sub_1D9F2BB1C();
            sub_1D9E51F3C(v7, type metadata accessor for PredictedAction);
            v31 = v62;
            goto LABEL_4;
          }

          v46 = 14;
LABEL_46:
          MEMORY[0x1DA7438F0](v46);
        }

        sub_1D9F2B18C();
LABEL_48:
        v26 = v63;
        goto LABEL_49;
      }

      sub_1D9F2BB1C();
LABEL_4:
      sub_1D9E4F52C(a1, *(v26 + v55));
      v25 = v58;
      result = sub_1D9E51F3C(v58, type metadata accessor for QueryResult.DisplayItem);
      v30 += v54;
      if (!--v64)
      {
        return result;
      }
    }

    if (v33[48] == 2)
    {
      v36 = 2;
      goto LABEL_17;
    }

    MEMORY[0x1DA7438F0](3);
    sub_1D9F2B18C();
    v10 = v52;
    sub_1D9F2B18C();
    v12 = v51;
    v7 = v53;
LABEL_18:
    sub_1D9F2B18C();
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1D9E504F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA7438F0](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 4;
      v7 = v8;

      sub_1D9F2B18C();
      if (v6 == 0.0)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = v6;
      }

      MEMORY[0x1DA743920](*&v9);
      MEMORY[0x1DA7438F0](*&v7);

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D9E50594(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA7438F0](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v8 = v5[2];
      v9 = v5[3];
      v10 = v5[4];
      MEMORY[0x1DA7438F0](*(v5 - 1));
      MEMORY[0x1DA7438F0](v6);
      MEMORY[0x1DA7438F0](v7);
      MEMORY[0x1DA7438F0](v8);
      sub_1D9E400F4(v9, v10);
      sub_1D9F2AC9C();
      result = sub_1D9E4015C(v9, v10);
      v5 += 6;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D9E50640(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA7438F0](v3);
  if (v3)
  {
    v5 = (a2 + 80);
    do
    {
      v6 = *v5;

      sub_1D9F2B18C();
      sub_1D9F2B18C();
      sub_1D9F2BB2C();
      sub_1D9F2BB1C();
      if (v6)
      {
        sub_1D9F2B18C();
      }

      v5 += 7;

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D9E5074C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA7438F0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v8 = v5[1];
      v11[0] = *v5;
      v11[1] = v8;
      *&v12[9] = *(v5 + 89);
      v9 = v5[3];
      v11[2] = v5[2];
      v11[3] = v9;
      v10 = v5[5];
      v11[4] = v5[4];
      *v12 = v10;
      if (v12[24])
      {
        if (v12[24] == 1)
        {
          MEMORY[0x1DA7438F0](1);

          sub_1D9F2B18C();
          sub_1D9F2B18C();
        }

        else
        {
          MEMORY[0x1DA7438F0](2);
        }

        sub_1D9F2B18C();
      }

      else
      {
        v6 = *&v12[16];
        MEMORY[0x1DA7438F0](0);

        sub_1D9F2B18C();
        sub_1D9F2B18C();
        sub_1D9F2B18C();
        sub_1D9F2B18C();
        sub_1D9F2B18C();
        sub_1D9F2B18C();
        if (v6 == 0.0)
        {
          v7 = 0.0;
        }

        else
        {
          v7 = v6;
        }

        MEMORY[0x1DA743920](*&v7);
      }

      result = sub_1D9E51B70(v11);
      v5 += 7;
      --v3;
    }

    while (v3);
  }

  return result;
}

BOOL _s29VisualActionPredictionSupport0A12LookupResultV6EntityO2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v33 = a1[4];
  *v34 = v3;
  *&v34[9] = *(a1 + 89);
  v4 = a1[1];
  v29 = *a1;
  v30 = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v31 = a1[2];
  v32 = v5;
  v8 = a2[1];
  v35 = *a2;
  v36 = v8;
  *&v40[9] = *(a2 + 89);
  v9 = a2[3];
  v10 = a2[5];
  v39 = a2[4];
  *v40 = v10;
  v11 = a2[3];
  v12 = *a2;
  v13 = a2[1];
  v37 = a2[2];
  v38 = v11;
  v41[0] = v7;
  v41[1] = v6;
  *(v42 + 9) = *(a1 + 89);
  v14 = a1[5];
  v41[4] = v33;
  v42[0] = v14;
  v41[2] = v31;
  v41[3] = v2;
  v42[2] = v12;
  v42[3] = v13;
  *(v43 + 9) = *(a2 + 89);
  v15 = a2[5];
  v42[6] = v39;
  v43[0] = v15;
  v42[4] = v37;
  v42[5] = v9;
  if (v34[24])
  {
    if (v34[24] == 1)
    {
      if (v40[24] == 1 && (v29 == v35 || (sub_1D9F2BA1C() & 1) != 0) && (v30 == v36 || (sub_1D9F2BA1C() & 1) != 0))
      {
        if (v31 != v37)
        {
          v16 = sub_1D9F2BA1C();
          sub_1D9E51B38(&v35, v28);
          sub_1D9E51B38(&v29, v28);
          sub_1D9E51FE8(v41, &qword_1ECB731F8, &qword_1D9F2F5A0);
          return (v16 & 1) != 0;
        }

        goto LABEL_15;
      }

LABEL_16:
      sub_1D9E51B38(&v35, v28);
      sub_1D9E51B38(&v29, v28);
      sub_1D9E51FE8(v41, &qword_1ECB731F8, &qword_1D9F2F5A0);
      return 0;
    }

    if (v40[24] != 2)
    {
      goto LABEL_16;
    }

    if (v29 == v35)
    {
LABEL_15:
      sub_1D9E51B38(&v35, v28);
      sub_1D9E51B38(&v29, v28);
      sub_1D9E51FE8(v41, &qword_1ECB731F8, &qword_1D9F2F5A0);
      return 1;
    }

    v23 = sub_1D9F2BA1C();
    sub_1D9E51B38(&v35, v28);
    sub_1D9E51B38(&v29, v28);
    sub_1D9E51FE8(v41, &qword_1ECB731F8, &qword_1D9F2F5A0);
    v21 = 0;
    if (v23)
    {
      return 1;
    }
  }

  else
  {
    if (v40[24])
    {
      goto LABEL_16;
    }

    v26[0] = v29;
    v26[1] = v30;
    v26[2] = v31;
    v17 = a1[4];
    v26[3] = a1[3];
    v26[4] = v17;
    v26[5] = a1[5];
    v27 = *(a1 + 12);
    v18 = a2[5];
    v24[4] = a2[4];
    v24[5] = v18;
    v25 = *(a2 + 12);
    v19 = a2[1];
    v24[0] = *a2;
    v24[1] = v19;
    v20 = a2[3];
    v24[2] = a2[2];
    v24[3] = v20;
    v21 = _s29VisualActionPredictionSupport4BookV2eeoiySbAC_ACtFZ_0(v26, v24);
    sub_1D9E51B38(&v35, v28);
    sub_1D9E51B38(&v29, v28);
    sub_1D9E51FE8(v41, &qword_1ECB731F8, &qword_1D9F2F5A0);
  }

  return v21;
}

unint64_t sub_1D9E50C94()
{
  result = qword_1ECB73058;
  if (!qword_1ECB73058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73058);
  }

  return result;
}

unint64_t sub_1D9E50CE8()
{
  result = qword_1ECB73060;
  if (!qword_1ECB73060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73060);
  }

  return result;
}

unint64_t sub_1D9E50D3C()
{
  result = qword_1ECB73068;
  if (!qword_1ECB73068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73068);
  }

  return result;
}

unint64_t sub_1D9E50D90()
{
  result = qword_1ECB73070;
  if (!qword_1ECB73070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73070);
  }

  return result;
}

unint64_t sub_1D9E50DE4()
{
  result = qword_1ECB73078;
  if (!qword_1ECB73078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73078);
  }

  return result;
}

unint64_t sub_1D9E50E38()
{
  result = qword_1ECB73080;
  if (!qword_1ECB73080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73080);
  }

  return result;
}

unint64_t sub_1D9E50E8C()
{
  result = qword_1ECB73088;
  if (!qword_1ECB73088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73088);
  }

  return result;
}

unint64_t sub_1D9E50EE0()
{
  result = qword_1ECB730B0;
  if (!qword_1ECB730B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB730B0);
  }

  return result;
}

unint64_t sub_1D9E50F34()
{
  result = qword_1ECB730B8;
  if (!qword_1ECB730B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB730B8);
  }

  return result;
}

unint64_t sub_1D9E50F88()
{
  result = qword_1ECB730C0;
  if (!qword_1ECB730C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB730C0);
  }

  return result;
}

unint64_t sub_1D9E50FDC()
{
  result = qword_1ECB730D0;
  if (!qword_1ECB730D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB730D0);
  }

  return result;
}

unint64_t sub_1D9E51030()
{
  result = qword_1ECB730E8;
  if (!qword_1ECB730E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB730E8);
  }

  return result;
}

uint64_t sub_1D9E51084(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB730F0, &qword_1D9F2ED38);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9E510FC()
{
  result = qword_1ECB73100;
  if (!qword_1ECB73100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73100);
  }

  return result;
}

uint64_t sub_1D9E51150(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB730D8, &qword_1D9F2ED30);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9E511C8()
{
  result = qword_1ECB73118;
  if (!qword_1ECB73118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73118);
  }

  return result;
}

unint64_t sub_1D9E5121C()
{
  result = qword_1ECB73128;
  if (!qword_1ECB73128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73128);
  }

  return result;
}

unint64_t sub_1D9E51274()
{
  result = qword_1ECB73130;
  if (!qword_1ECB73130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73130);
  }

  return result;
}

unint64_t sub_1D9E512CC()
{
  result = qword_1ECB73138;
  if (!qword_1ECB73138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73138);
  }

  return result;
}

uint64_t sub_1D9E51320(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1D9E51368(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1D9E513EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 105))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 104);
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

uint64_t sub_1D9E51434(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 104) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D9E51500()
{
  result = qword_1ECB73140;
  if (!qword_1ECB73140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73140);
  }

  return result;
}

unint64_t sub_1D9E51558()
{
  result = qword_1ECB73148;
  if (!qword_1ECB73148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73148);
  }

  return result;
}

unint64_t sub_1D9E515B0()
{
  result = qword_1ECB73150;
  if (!qword_1ECB73150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73150);
  }

  return result;
}

unint64_t sub_1D9E51608()
{
  result = qword_1ECB73158;
  if (!qword_1ECB73158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73158);
  }

  return result;
}

unint64_t sub_1D9E51660()
{
  result = qword_1ECB73160;
  if (!qword_1ECB73160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73160);
  }

  return result;
}

unint64_t sub_1D9E516B8()
{
  result = qword_1ECB73168;
  if (!qword_1ECB73168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73168);
  }

  return result;
}

unint64_t sub_1D9E51710()
{
  result = qword_1ECB73170;
  if (!qword_1ECB73170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73170);
  }

  return result;
}

unint64_t sub_1D9E51768()
{
  result = qword_1ECB73178;
  if (!qword_1ECB73178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73178);
  }

  return result;
}

unint64_t sub_1D9E517C0()
{
  result = qword_1ECB73180;
  if (!qword_1ECB73180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73180);
  }

  return result;
}

unint64_t sub_1D9E51818()
{
  result = qword_1ECB73188;
  if (!qword_1ECB73188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73188);
  }

  return result;
}

unint64_t sub_1D9E51870()
{
  result = qword_1ECB73190;
  if (!qword_1ECB73190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73190);
  }

  return result;
}

unint64_t sub_1D9E518C8()
{
  result = qword_1ECB73198;
  if (!qword_1ECB73198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73198);
  }

  return result;
}

unint64_t sub_1D9E51920()
{
  result = qword_1ECB731A0;
  if (!qword_1ECB731A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB731A0);
  }

  return result;
}

unint64_t sub_1D9E51978()
{
  result = qword_1ECB731A8;
  if (!qword_1ECB731A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB731A8);
  }

  return result;
}

unint64_t sub_1D9E519D0()
{
  result = qword_1ECB731B0;
  if (!qword_1ECB731B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB731B0);
  }

  return result;
}

uint64_t sub_1D9E51A24(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1802465122 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D75626C61 && a2 == 0xE500000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636972656E6567 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1D9E51C60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D9E51CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 > 1u)
  {
    if (a7 != 2)
    {
      if (a7 != 3)
      {
        return;
      }

      goto LABEL_11;
    }

LABEL_12:

LABEL_11:

    return;
  }

  if (!a7)
  {
    goto LABEL_12;
  }

  if (a7 == 1)
  {

    sub_1D9E51D40(a1, a2, a3);
  }
}

uint64_t sub_1D9E51D40(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

void sub_1D9E51D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 > 1u)
  {
    if (a7 != 2)
    {
      if (a7 != 3)
      {
        return;
      }

      goto LABEL_11;
    }

LABEL_12:

LABEL_11:

    return;
  }

  if (!a7)
  {
    goto LABEL_12;
  }

  if (a7 == 1)
  {

    sub_1D9E51DF0(a1, a2, a3);
  }
}

uint64_t sub_1D9E51DF0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1D9E51E08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9E51E70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D9E51ED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictedAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9E51F3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D9E51F9C()
{
  result = qword_1ECB731F0;
  if (!qword_1ECB731F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECB731F0);
  }

  return result;
}

uint64_t sub_1D9E51FE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D9E5204C()
{
  v0 = sub_1D9F2B73C();
  __swift_allocate_value_buffer(v0, qword_1ECB73200);
  __swift_project_value_buffer(v0, qword_1ECB73200);
  return sub_1D9F2B72C();
}

uint64_t withTimeProfiling<A>(_:instrument:)(uint64_t (*a1)(uint64_t), uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v17[1] = a4;
  v18 = a3;
  v5 = sub_1D9F2B71C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v17 - v10;
  if (qword_1EE0F1850 != -1)
  {
    swift_once();
  }

  v12 = sub_1D9F2B73C();
  __swift_project_value_buffer(v12, qword_1ECB73200);
  v13 = sub_1D9F2B6FC();
  a1(v13);
  sub_1D9F2B6FC();
  v14 = sub_1D9F2B70C();
  v18(v14);
  v15 = *(v6 + 8);
  v15(v9, v5);
  return (v15)(v11, v5);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t withAsyncTimeProfiling<A>(_:instrument:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1D9F2B71C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9E52358, 0, 0);
}

uint64_t sub_1D9E52358()
{
  if (qword_1EE0F1850 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_1D9F2B73C();
  v0[11] = __swift_project_value_buffer(v2, qword_1ECB73200);
  sub_1D9F2B6FC();
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1D9E524A8;
  v4 = v0[2];

  return v6(v4);
}

uint64_t sub_1D9E524A8()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1D9E5269C;
  }

  else
  {
    v2 = sub_1D9E525BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D9E525BC(uint64_t a1)
{
  v2 = v1[10];
  v4 = v1[8];
  v3 = v1[9];
  v5 = v1[7];
  v6 = v1[5];
  sub_1D9F2B6FC();
  v7 = sub_1D9F2B70C();
  v6(v7);
  v8 = *(v4 + 8);
  v8(v3, v5);
  v8(v2, v5);

  v9 = v1[1];

  return v9();
}

uint64_t sub_1D9E5269C(uint64_t a1)
{
  v2 = v1[10];
  v4 = v1[8];
  v3 = v1[9];
  v5 = v1[7];
  v6 = v1[5];
  sub_1D9F2B6FC();
  v7 = sub_1D9F2B70C();
  v6(v7);
  v8 = *(v4 + 8);
  v8(v3, v5);
  v8(v2, v5);

  v9 = v1[1];

  return v9();
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

uint64_t sub_1D9E527EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictedActionSet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9E528A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65536E6F69746361 && a2 == 0xE900000000000074)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9E52930(uint64_t a1)
{
  v2 = sub_1D9E532D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5296C(uint64_t a1)
{
  v2 = sub_1D9E532D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExecutionFollowup.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73218, &unk_1D9F2F5B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E532D4();
  sub_1D9F2BB8C();
  type metadata accessor for PredictedActionSet(0);
  sub_1D9E534F0(&qword_1ECB73228, type metadata accessor for PredictedActionSet, &protocol conformance descriptor for PredictedActionSet);
  sub_1D9F2B9AC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ExecutionFollowup.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PredictedAction(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731E8, &qword_1D9F37F70);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v20 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  sub_1D9E53328(v2, &v20 - v15);
  v17 = *(v5 + 48);
  if (v17(v16, 1, v4) == 1)
  {
    sub_1D9F2BB1C();
  }

  else
  {
    sub_1D9E53440(v16, v7, type metadata accessor for PredictedAction);
    sub_1D9F2BB1C();
    PredictedAction.hash(into:)(a1);
    sub_1D9E53398(v7);
  }

  v18 = type metadata accessor for PredictedActionSet(0);
  sub_1D9E53328(v2 + v18[5], v14);
  if (v17(v14, 1, v4) == 1)
  {
    sub_1D9F2BB1C();
  }

  else
  {
    sub_1D9E53440(v14, v7, type metadata accessor for PredictedAction);
    sub_1D9F2BB1C();
    PredictedAction.hash(into:)(a1);
    sub_1D9E53398(v7);
  }

  sub_1D9E53328(v2 + v18[6], v11);
  if (v17(v11, 1, v4) == 1)
  {
    sub_1D9F2BB1C();
  }

  else
  {
    sub_1D9E53440(v11, v7, type metadata accessor for PredictedAction);
    sub_1D9F2BB1C();
    PredictedAction.hash(into:)(a1);
    sub_1D9E53398(v7);
  }

  return sub_1D9E4F52C(a1, *(v2 + v18[7]));
}

uint64_t ExecutionFollowup.hashValue.getter()
{
  sub_1D9F2BAFC();
  ExecutionFollowup.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t ExecutionFollowup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for PredictedActionSet(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73230, &qword_1D9F2F5C0);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ExecutionFollowup(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E532D4();
  sub_1D9F2BB7C();
  if (!v2)
  {
    v12 = v15;
    sub_1D9E534F0(&qword_1ECB73238, type metadata accessor for PredictedActionSet, &protocol conformance descriptor for PredictedActionSet);
    v13 = v17;
    sub_1D9F2B89C();
    (*(v16 + 8))(v8, v6);
    sub_1D9E53440(v13, v11, type metadata accessor for PredictedActionSet);
    sub_1D9E53440(v11, v12, type metadata accessor for ExecutionFollowup);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9E530D8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73218, &unk_1D9F2F5B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E532D4();
  sub_1D9F2BB8C();
  type metadata accessor for PredictedActionSet(0);
  sub_1D9E534F0(&qword_1ECB73228, type metadata accessor for PredictedActionSet, &protocol conformance descriptor for PredictedActionSet);
  sub_1D9F2B9AC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D9E53250()
{
  sub_1D9F2BAFC();
  ExecutionFollowup.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E53294()
{
  sub_1D9F2BAFC();
  ExecutionFollowup.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

unint64_t sub_1D9E532D4()
{
  result = qword_1ECB73220;
  if (!qword_1ECB73220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73220);
  }

  return result;
}

uint64_t sub_1D9E53328(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731E8, &qword_1D9F37F70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9E53398(uint64_t a1)
{
  v2 = type metadata accessor for PredictedAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ExecutionFollowup(uint64_t a1)
{
  result = qword_1ECB73248;
  if (!qword_1ECB73248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9E53440(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9E534F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D9E53560(uint64_t a1)
{
  result = type metadata accessor for PredictedActionSet(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D9E535E0()
{
  result = qword_1ECB73258;
  if (!qword_1ECB73258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73258);
  }

  return result;
}

unint64_t sub_1D9E53638()
{
  result = qword_1ECB73260;
  if (!qword_1ECB73260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73260);
  }

  return result;
}

unint64_t sub_1D9E53690()
{
  result = qword_1ECB73268;
  if (!qword_1ECB73268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73268);
  }

  return result;
}

uint64_t sub_1D9E53700@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = v2[*(a1 + 32)];
  sub_1D9F2AD7C();
  sub_1D9F2B38C();
  sub_1D9E5501C();
  sub_1D9F2B0AC();
  v6 = sub_1D9F2B59C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = TupleTypeMetadata2;
  if (v5 == 1)
  {
    v9 = *(*(TupleTypeMetadata2 - 8) + 56);

    return v9(a2, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    v11 = *(TupleTypeMetadata2 + 48);
    *a2 = *v2;
    (*(*(v6 - 8) + 16))(&a2[v11], &v2[*(a1 + 28)], v6);
    (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
  }
}

uint64_t sub_1D9E538A4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1D9F2AD7C();
  sub_1D9F2B38C();
  sub_1D9E5501C();
  *a2 = sub_1D9F2B07C();
  v6 = type metadata accessor for AsyncMultiplexer.Context(0, a1, v4, v5);
  result = (*(*(a1 - 8) + 56))(&a2[*(v6 + 28)], 1, 1, a1);
  a2[*(v6 + 32)] = 0;
  return result;
}

void sub_1D9E53958(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[3];
  type metadata accessor for AsyncMultiplexer.Context(0, *(*v4 + 80), a3, a4);
  v7 = *(*v6 + *MEMORY[0x1E69E6B68] + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v8));
  a1(v6 + v7);
  os_unfair_lock_unlock((v6 + v8));
}

uint64_t AsyncMultiplexer.__allocating_init(configuration:)(char *a1)
{
  v2 = swift_allocObject();
  AsyncMultiplexer.init(configuration:)(a1, v3, v4, v5);
  return v2;
}

uint64_t AsyncMultiplexer.init(configuration:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*v4 + 80);
  v7 = type metadata accessor for AsyncMultiplexer.Context(0, v6, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  v11 = *a1;
  sub_1D9E538A4(v6, &v14 - v9);
  v12 = sub_1D9E54F84(v10, v7);
  (*(v8 + 8))(v10, v7);
  *(v4 + 24) = v12;
  *(v4 + 16) = v11;
  return v4;
}

uint64_t AsyncMultiplexer.deinit()
{
  AsyncMultiplexer.cancel()();

  return v0;
}

Swift::Void __swiftcall AsyncMultiplexer.cancel()()
{
  v4 = *(*v0 + 80);
  sub_1D9F2AD7C();
  sub_1D9F2B38C();
  sub_1D9E5501C();
  v1 = sub_1D9F2B0AC();
  sub_1D9E53958(sub_1D9E55000, v3, v1, v2);
  v5 = v6;
  swift_getWitnessTable();
  sub_1D9F2B1FC();
}

uint64_t AsyncMultiplexer.__deallocating_deinit()
{
  AsyncMultiplexer.cancel()();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t AsyncMultiplexer.send(_:)(uint64_t a1)
{
  v3 = *v1;
  v9 = a1;
  sub_1D9F2AD7C();
  v4 = *(v3 + 80);
  sub_1D9F2B38C();
  sub_1D9E5501C();
  v5 = sub_1D9F2B0AC();
  sub_1D9E53958(sub_1D9E550C8, v8, v5, v6);
  v10 = v11;
  swift_getWitnessTable();
  sub_1D9F2B1FC();

  return (*(*(v4 - 8) + 8))(a1, v4);
}

uint64_t sub_1D9E53E6C@<X0>(char *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (a2[16] == 1)
  {
    v8 = *(*a2 + 80);
    v9 = type metadata accessor for AsyncMultiplexer.Context(0, v8, a3, a4);
    if ((a1[*(v9 + 32)] & 1) == 0)
    {
      v10 = *(v9 + 28);
      v11 = sub_1D9F2B59C();
      (*(*(v11 - 8) + 8))(&a1[v10], v11);
      v12 = *(v8 - 8);
      (*(v12 + 16))(&a1[v10], a3, v8);
      (*(v12 + 56))(&a1[v10], 0, 1, v8);
    }
  }

  *a5 = *a1;
}

uint64_t sub_1D9E53FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9F2B34C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  (*(v6 + 16))(v8, a3, a4);
  sub_1D9F2B38C();
  sub_1D9F2B36C();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1D9E5412C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  sub_1D9F2AD7C();
  sub_1D9F2B38C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_1D9E541BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = type metadata accessor for AsyncMultiplexer.Context(0, a2, a3, a4);
  *(a1 + *(v8 + 32)) = 1;
  v9 = *(v8 + 28);
  v10 = sub_1D9F2B59C();
  (*(*(v10 - 8) + 8))(a1 + v9, v10);
  (*(*(a2 - 8) + 56))(a1 + v9, 1, 1, a2);
  *a5 = *a1;
}

uint64_t AsyncMultiplexer.makeStream(bufferingPolicy:)@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v2 = *(*v1 + 80);
  v55 = sub_1D9F2B34C();
  v54 = *(v55 - 8);
  v3 = MEMORY[0x1EEE9AC00](v55);
  v53 = &v52 - v4;
  v57 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v52 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v52 - v7;
  v64 = sub_1D9F2B59C();
  v60 = *(v64 - 8);
  v8 = MEMORY[0x1EEE9AC00](v64);
  v56 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v52 - v10;
  v63 = type metadata accessor for AsyncMultiplexer.Context.State(0, v2, v11, v12);
  v73 = *(v63 - 8);
  v13 = MEMORY[0x1EEE9AC00](v63);
  v62 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v61 = &v52 - v15;
  v16 = sub_1D9F2AD7C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v52 - v21;
  v23 = sub_1D9F2B38C();
  v68 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v52 - v24;
  v26 = sub_1D9F2B39C();
  v66 = *(v26 - 8);
  v67 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v65 = &v52 - v27;
  sub_1D9F2B33C();
  sub_1D9F2A93C();
  v28 = swift_allocObject();
  swift_weakInit();
  (*(v17 + 16))(v20, v22, v16);
  v29 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v2;
  *(v30 + 24) = v28;
  v31 = v73;
  v69 = v17;
  v32 = v17;
  v33 = v61;
  v34 = v30 + v29;
  v35 = v63;
  (*(v32 + 32))(v34, v20, v16);
  sub_1D9F2B35C();
  v75 = v2;
  v76 = v22;
  v70 = v22;
  v36 = v23;
  v37 = v62;
  v77 = v25;
  sub_1D9E53958(sub_1D9E55188, v74, v35, v38);
  v39 = v64;
  (*(v31 + 16))(v37, v33, v35);
  sub_1D9E5501C();
  sub_1D9F2B0AC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v37, 1, TupleTypeMetadata2) == 1)
  {
    sub_1D9F2B37C();
    (*(v31 + 8))(v33, v35);
  }

  else
  {

    v41 = v60;
    v42 = &v37[*(TupleTypeMetadata2 + 48)];
    v43 = v59;
    (*(v60 + 32))(v59, v42, v39);
    if (v72[16] == 1)
    {
      v72 = v25;
      v44 = v56;
      (*(v41 + 16))(v56, v43, v39);
      v45 = v57;
      if ((*(v57 + 48))(v44, 1, v2) == 1)
      {
        v46 = *(v41 + 8);
        v46(v43, v39);
        (*(v73 + 8))(v33, v35);
        v46(v44, v39);
        v25 = v72;
      }

      else
      {
        (*(v45 + 32))(v58, v44, v2);
        (*(v45 + 16))(v52, v58, v2);
        v62 = v16;
        v47 = v35;
        v48 = v53;
        v49 = v72;
        sub_1D9F2B36C();
        (*(v54 + 8))(v48, v55);
        (*(v45 + 8))(v58, v2);
        v25 = v49;
        (*(v41 + 8))(v43, v39);
        v50 = v47;
        v16 = v62;
        (*(v73 + 8))(v33, v50);
      }
    }

    else
    {
      (*(v41 + 8))(v43, v39);
      (*(v73 + 8))(v33, v35);
    }
  }

  (*(v66 + 32))(v71, v65, v67);
  (*(v69 + 8))(v70, v16);
  return (*(v68 + 8))(v25, v36);
}

uint64_t sub_1D9E54B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v8[2] = a4;
    v8[3] = a3;
    sub_1D9E53958(sub_1D9E55E2C, v8, MEMORY[0x1E69E7CA8] + 8, v7);
  }

  return result;
}

uint64_t sub_1D9E54BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1D9F2B38C();
  v5 = sub_1D9F2B59C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v12 - v6;
  v8 = sub_1D9F2AD7C();
  MEMORY[0x1EEE9AC00](v8);
  (*(v10 + 16))(v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  (*(*(v4 - 8) + 56))(v7, 1, 1, v4);
  sub_1D9E5501C();
  sub_1D9F2B0AC();
  return sub_1D9F2B0CC();
}

uint64_t sub_1D9E54D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v24 = a3;
  v9 = sub_1D9F2B38C();
  v10 = sub_1D9F2B59C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = sub_1D9F2AD7C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AsyncMultiplexer.Context(0, a4, v17, v18);
  if ((*(a1 + *(v19 + 32)) & 1) == 0)
  {
    v20 = v19;
    (*(v14 + 16))(v16, a2, v13);
    v21 = *(v9 - 8);
    (*(v21 + 16))(v12, v24, v9);
    (*(v21 + 56))(v12, 0, 1, v9);
    sub_1D9E5501C();
    sub_1D9F2B0AC();
    sub_1D9F2B0CC();
    v19 = v20;
  }

  return sub_1D9E53700(v19, a5);
}

uint64_t sub_1D9E54F84(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1D9F2B6DC();
  return sub_1D9F2B6CC();
}

unint64_t sub_1D9E5501C()
{
  result = qword_1EE0F22A8;
  if (!qword_1EE0F22A8)
  {
    sub_1D9F2AD7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F22A8);
  }

  return result;
}

uint64_t sub_1D9E55104(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(sub_1D9F2AD7C() - 8);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return sub_1D9E54B3C(a1, v5, v6, v3);
}

uint64_t sub_1D9E55240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for PredictionOverrides(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1D9E55348(uint64_t a1)
{
  sub_1D9F2AD7C();
  sub_1D9F2B38C();
  sub_1D9E5501C();
  sub_1D9F2B0AC();
  sub_1D9F2B59C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return TupleTypeMetadata2;
}

uint64_t sub_1D9E55404(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 - 1 >= a2)
  {
    goto LABEL_31;
  }

  v10 = v9 + ((v8 + 8) & ~v8);
  v11 = 8 * v10;
  if (v10 > 3)
  {
    goto LABEL_12;
  }

  v14 = (((1 << v11) + a2 - v7) >> v11) + 1;
  if (HIWORD(v14))
  {
    v12 = *(a1 + v10);
    if (v12)
    {
      goto LABEL_20;
    }

LABEL_31:
    if ((v6 & 0x80000000) != 0)
    {
      v18 = (*(v4 + 48))((a1 + v8 + 8) & ~v8);
      v17 = v18 - 1;
      if (v18 < 2)
      {
        v17 = 0;
      }
    }

    else
    {
      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      v17 = v16 + 1;
    }

    if (v17 >= 2)
    {
      return v17 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v14 > 0xFF)
  {
    v12 = *(a1 + v10);
    if (*(a1 + v10))
    {
      goto LABEL_20;
    }

    goto LABEL_31;
  }

  if (v14 < 2)
  {
    goto LABEL_31;
  }

LABEL_12:
  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_31;
  }

LABEL_20:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return (v10 | v15) + v7;
}

void sub_1D9E555C8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 - 1;
  v13 = *(v7 + 80);
  v14 = *(*(*(a4 + 16) - 8) + 64);
  if (!v9)
  {
    ++v14;
  }

  v15 = ((v13 + 8) & ~v13) + v14;
  if (v12 < a3)
  {
    v16 = (((1 << (8 * v15)) + a3 - v11) >> (8 * v15)) + 1;
    v17 = HIWORD(v16);
    if (v16 < 0x100)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    if (v16 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v17)
    {
      v19 = 4;
    }

    if (v15 <= 3)
    {
      v6 = v19;
    }

    else
    {
      v6 = 1;
    }
  }

  if (v12 < a2)
  {
    v20 = a2 - v11;
    if (v15 < 4)
    {
      v21 = (v20 >> (8 * v15)) + 1;
      if (v15)
      {
        v22 = v20 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v22;
            if (v6 > 1)
            {
LABEL_61:
              if (v6 == 2)
              {
                *&a1[v15] = v21;
              }

              else
              {
                *&a1[v15] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v6 > 1)
            {
              goto LABEL_61;
            }
          }

          goto LABEL_58;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v6 > 1)
      {
        goto LABEL_61;
      }
    }

    else
    {
      bzero(a1, ((v13 + 8) & ~v13) + v14);
      *a1 = v20;
      v21 = 1;
      if (v6 > 1)
      {
        goto LABEL_61;
      }
    }

LABEL_58:
    if (v6)
    {
      a1[v15] = v21;
    }

    return;
  }

  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *&a1[v15] = 0;
LABEL_35:
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!v6)
  {
    goto LABEL_35;
  }

  a1[v15] = 0;
  if (!a2)
  {
    return;
  }

LABEL_36:
  if ((v10 & 0x80000000) != 0)
  {
    v23 = (&a1[v13 + 8] & ~v13);
    v24 = a2 - v10;
    if (a2 >= v10)
    {
      if (v14 <= 3)
      {
        v28 = ~(-1 << (8 * v14));
      }

      else
      {
        v28 = -1;
      }

      if (v14)
      {
        v29 = v28 & v24;
        if (v14 <= 3)
        {
          v30 = v14;
        }

        else
        {
          v30 = 4;
        }

        bzero(v23, v14);
        if (v30 > 2)
        {
          if (v30 == 3)
          {
            *v23 = v29;
            v23[2] = BYTE2(v29);
          }

          else
          {
            *v23 = v29;
          }
        }

        else if (v30 == 1)
        {
          *v23 = v29;
        }

        else
        {
          *v23 = v29;
        }
      }
    }

    else
    {
      v25 = *(v8 + 56);
      v26 = a2 + 2;
      v27 = &a1[v13 + 8] & ~v13;

      v25(v27, v26);
    }
  }

  else if ((a2 + 1) < 0)
  {
    *a1 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *a1 = a2;
  }
}

uint64_t sub_1D9E558AC(uint64_t a1)
{
  sub_1D9F2AD7C();
  sub_1D9F2B38C();
  sub_1D9E5501C();
  result = sub_1D9F2B0AC();
  if (v2 <= 0x3F)
  {
    result = sub_1D9F2B59C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D9E55974(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  if (v5)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_32;
  }

  v11 = v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 8) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v15 < 2)
    {
LABEL_32:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = (*(v4 + 48))((a1 + v8 + 8) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_32;
  }

LABEL_21:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_1D9E55B34(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = v12 + ((v11 + 8) & ~v11) + 1;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v12 + ((v11 + 8) & ~v11) != -1)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_63:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v9 & 0x80000000) != 0)
  {
    v22 = (&a1[v11 + 8] & ~v11);
    if (v9 >= a2)
    {
      v26 = *(v7 + 56);
      v27 = a2 + 1;

      v26(v22, v27);
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (~v9 + a2);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v21 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v21 = a2 - 1;
    }

    *a1 = v21;
  }
}

uint64_t sub_1D9E55E48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

void _s29VisualActionPredictionSupport17SystemXPCListenerV8activate4withyAA28ServiceListenerShimCallbacksVyAA0E13XPCConnectionVAA10XPCFailureOG_tAKYKF(__int128 *a1)
{
  v2 = a1[1];
  v12 = *a1;
  v13 = v2;
  v14 = *(a1 + 4);
  v3 = v14;
  v4 = v1[1];
  v15 = *v1;
  v16 = v4;
  v17 = *(v1 + 32);
  v5 = *(v1 + 5);
  sub_1D9E56074(&v15, aBlock);
  xpc_connection_set_target_queue(v5, v3);
  v6 = swift_allocObject();
  v7 = v13;
  *(v6 + 16) = v12;
  *(v6 + 32) = v7;
  v8 = v16;
  *(v6 + 56) = v15;
  *(v6 + 48) = v14;
  *(v6 + 72) = v8;
  *(v6 + 88) = v17;
  aBlock[4] = sub_1D9E56A20;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9E56A2C;
  aBlock[3] = &block_descriptor;
  v9 = _Block_copy(aBlock);
  sub_1D9E56AA4(&v12, v10);

  xpc_connection_set_event_handler(v5, v9);
  _Block_release(v9);
  xpc_connection_activate(v5);
}

void sub_1D9E560D0(_xpc_connection_s *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D9F2B02C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v78[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a2 + 32);
  *v9 = v10;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v11 = v10;
  v12 = sub_1D9F2B04C();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v13 = sub_1D9F2AF1C();
  v14 = MEMORY[0x1DA744500](a1);
  if (v14 == v13)
  {
    v18 = *(a3 + 24);
    v19 = *(v18 + 16);
    if (!v19)
    {
LABEL_9:
      v26 = *(a3 + 8);
      v27 = *(a3 + 16);
      v28 = *(a3 + 32);
      v29 = *(a2 + 16);
      v79 = *a3;
      v80 = v26;
      v81 = v27;
      v82 = v18;
      v83 = v28 & 1;
      v84 = a1;
      sub_1D9E56074(a3, v78);
      swift_unknownObjectRetain();
      v29(&v79);
      swift_unknownObjectRelease();

      return;
    }

    v20 = (v18 + 40);
    while (1)
    {
      v22 = *(v20 - 1);
      v21 = *v20;

      v23 = sub_1D9F2AF1C();
      v24 = MEMORY[0x1DA744500](a1);
      if (v24 != v23)
      {
        v22 = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1D9F2F8F0;
        *(v30 + 32) = v23;
        v79 = v22;
        v80 = v30;
        v31 = 1;
        LOBYTE(v81) = 1;
        sub_1D9E56B78();
        swift_willThrowTypedImpl();

        goto LABEL_12;
      }

      sub_1D9F2B15C();
      v25 = xpc_connection_copy_entitlement_value();

      if (!v25)
      {
        break;
      }

      swift_unknownObjectRelease();
      v20 += 2;
      if (!--v19)
      {
        goto LABEL_9;
      }
    }

    v79 = v22;
    v80 = v21;
    v31 = 4;
    LOBYTE(v81) = 4;
    sub_1D9E56B78();
    swift_willThrowTypedImpl();
    v30 = v21;
LABEL_12:
    sub_1D9E56B78();
    v9 = swift_allocError();
    *v32 = v22;
    *(v32 + 8) = v30;
    *(v32 + 16) = v31;
    v33 = v9;
    if (qword_1ECB72A98 != -1)
    {
      swift_once();
    }

    v34 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v34, qword_1ECB73940);
    v35 = v9;
    v36 = sub_1D9F2AE6C();
    v37 = sub_1D9F2B43C();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v79 = v39;
      *v38 = 136315138;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x1EEE9AC00](ErrorValue);
      (*(v42 + 16))(&v78[-1] - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
      v43 = sub_1D9F2B13C();
      v45 = sub_1D9E71CA4(v43, v44, &v79);

      *(v38 + 4) = v45;
      _os_log_impl(&dword_1D9E39000, v36, v37, "Rejected XPC connection: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1DA744270](v39, -1, -1);
      MEMORY[0x1DA744270](v38, -1, -1);
    }

    xpc_connection_cancel(a1);
    swift_willThrow();
  }

  else
  {
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D9F2F8F0;
    *(v16 + 32) = v13;
    v79 = v15;
    v80 = v16;
    LOBYTE(v81) = 1;
    sub_1D9E56B78();
    swift_willThrowTypedImpl();
    v9 = swift_allocError();
    *v17 = v15;
    *(v17 + 8) = v16;
    *(v17 + 16) = 1;
  }

  v46 = v9;
  sub_1D9EAC23C(a1, &v79);
  LOBYTE(v6) = v81;
  if (v81 != 255)
  {
    a1 = v79;
    v12 = v80;

    if (qword_1ECB72A98 == -1)
    {
LABEL_19:
      v47 = sub_1D9F2AE8C();
      __swift_project_value_buffer(v47, qword_1ECB73940);
      sub_1D9E56E7C(a1, v12, v6);
      v48 = sub_1D9F2AE6C();
      v49 = sub_1D9F2B43C();
      sub_1D9E56EC8(a1, v12, v6);
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v77 = a2;
        v78[0] = v51;
        v52 = v51;
        *v50 = 136315138;
        v79 = a1;
        v80 = v12;
        LOBYTE(v81) = v6;
        sub_1D9E56E7C(a1, v12, v6);
        v53 = XPCFailure.description.getter();
        v55 = v54;
        sub_1D9E56E30(v79, v80, v81);
        v56 = sub_1D9E71CA4(v53, v55, v78);

        *(v50 + 4) = v56;
        _os_log_impl(&dword_1D9E39000, v48, v49, "Encountered XPC error: %s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v52);
        v57 = v52;
        a2 = v77;
        MEMORY[0x1DA744270](v57, -1, -1);
        MEMORY[0x1DA744270](v50, -1, -1);
      }

      v58 = *a2;
      v79 = a1;
      v80 = v12;
      LOBYTE(v81) = v6;
      v58(&v79);

      sub_1D9E56EC8(a1, v12, v6);
      return;
    }

LABEL_31:
    swift_once();
    goto LABEL_19;
  }

  if (qword_1ECB72A98 != -1)
  {
    swift_once();
  }

  v59 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v59, qword_1ECB73940);
  v60 = v9;
  v61 = sub_1D9F2AE6C();
  v62 = sub_1D9F2B43C();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v79 = v64;
    *v63 = 136315138;
    v65 = swift_getErrorValue();
    MEMORY[0x1EEE9AC00](v65);
    (*(v67 + 16))(&v78[-1] - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
    v68 = sub_1D9F2B13C();
    v70 = sub_1D9E71CA4(v68, v69, &v79);

    *(v63 + 4) = v70;
    _os_log_impl(&dword_1D9E39000, v61, v62, "Failed to handle XPC event: %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v64);
    MEMORY[0x1DA744270](v64, -1, -1);
    MEMORY[0x1DA744270](v63, -1, -1);
  }

  v78[0] = v9;
  v71 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73288, &qword_1D9F334E0);
  if (swift_dynamicCast())
  {
    v73 = v79;
    v72 = v80;
    v74 = v81;
  }

  else
  {
    v75 = v9;
    v72 = 0;
    v74 = 0;
    v73 = v9;
  }

  v76 = *a2;
  v79 = v73;
  v80 = v72;
  LOBYTE(v81) = v74;
  v76(&v79);

  sub_1D9E56E30(v79, v80, v81);
}

uint64_t sub_1D9E56A2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D9E56AA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB73270, &qword_1D9F2F900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D9E56B20()
{
  result = qword_1EE0F2938;
  if (!qword_1EE0F2938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2938);
  }

  return result;
}

unint64_t sub_1D9E56B78()
{
  result = qword_1EE0F3070;
  if (!qword_1EE0F3070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3070);
  }

  return result;
}

void sub_1D9E56BCC(__int128 *a1)
{
  v2 = a1[1];
  v12 = *a1;
  v13 = v2;
  v14 = *(a1 + 4);
  v3 = v14;
  v4 = v1[1];
  v15 = *v1;
  v16 = v4;
  v17 = *(v1 + 32);
  v5 = *(v1 + 5);
  sub_1D9E56074(&v15, aBlock);
  xpc_connection_set_target_queue(v5, v3);
  v6 = swift_allocObject();
  v7 = v13;
  *(v6 + 16) = v12;
  *(v6 + 32) = v7;
  v8 = v16;
  *(v6 + 56) = v15;
  *(v6 + 48) = v14;
  *(v6 + 72) = v8;
  *(v6 + 88) = v17;
  aBlock[4] = sub_1D9E56EDC;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9E56A2C;
  aBlock[3] = &block_descriptor_7;
  v9 = _Block_copy(aBlock);
  sub_1D9E56AA4(&v12, v10);

  xpc_connection_set_event_handler(v5, v9);
  _Block_release(v9);
  xpc_connection_activate(v5);
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

uint64_t sub_1D9E56D34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D9E56D7C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t objectdestroyTm()
{

  return MEMORY[0x1EEE6BDD0](v0, 89, 7);
}

void sub_1D9E56E30(void *a1, id a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {

      return;
    }

    if (a3 != 1)
    {
      return;
    }

LABEL_5:

    return;
  }

  if (a3 == 2)
  {
    goto LABEL_5;
  }

  if (a3 != 3)
  {
    if (a3 != 4)
    {
      return;
    }

    goto LABEL_5;
  }

  swift_unknownObjectRelease();
}

id sub_1D9E56E7C(id result, id a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      return result;
    }

    if (a3 != 1)
    {
      return result;
    }
  }

  if (a3 == 2)
  {
  }

  if (a3 != 3)
  {
    if (a3 != 4)
    {
      return result;
    }
  }

  return swift_unknownObjectRetain();
}

void sub_1D9E56EC8(void *a1, id a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    sub_1D9E56E30(a1, a2, a3);
  }
}

void static VisualActionPredictionServiceDefinition.descriptor.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000002CLL;
  *(a1 + 8) = 0x80000001D9F479F0;
  *(a1 + 16) = 25;
  *(a1 + 24) = &unk_1F555DDC8;
  *(a1 + 32) = 0;
}

void sub_1D9E56F1C(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000002CLL;
  *(a1 + 8) = 0x80000001D9F479F0;
  *(a1 + 16) = 25;
  *(a1 + 24) = &unk_1F555DDF8;
  *(a1 + 32) = 0;
}

uint64_t sub_1D9E56F70(uint64_t a1)
{
  v2 = sub_1D9E5702C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E56FAC(uint64_t a1)
{
  v2 = sub_1D9E5702C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D9E5702C()
{
  result = qword_1EE0F1FE8;
  if (!qword_1EE0F1FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1FE8);
  }

  return result;
}

uint64_t sub_1D9E57100(uint64_t a1)
{
  v2 = sub_1D9E571BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5713C(uint64_t a1)
{
  v2 = sub_1D9E571BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D9E571BC()
{
  result = qword_1EE0F1F30[0];
  if (!qword_1EE0F1F30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0F1F30);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.PredictionRequest.workflow.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VisualActionPredictionServiceDefinition.PredictionRequest(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

__n128 VisualActionPredictionServiceDefinition.PredictionRequest.options.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VisualActionPredictionServiceDefinition.PredictionRequest(0) + 24));
  v4 = v3->n128_u8[8];
  v5 = v3[2].n128_u8[0];
  v6 = v3[2].n128_u8[1];
  a1->n128_u64[0] = v3->n128_u64[0];
  a1->n128_u8[8] = v4;
  result = v3[1];
  a1[1] = result;
  a1[2].n128_u8[0] = v5;
  a1[2].n128_u8[1] = v6;
  return result;
}

uint64_t VisualActionPredictionServiceDefinition.PredictionRequest.init(visualContext:workflow:options:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *(a3 + 8);
  v8 = a3[2];
  v9 = a3[3];
  v10 = *(a3 + 32);
  v11 = *(a3 + 33);
  sub_1D9E57E24(a1, a4, type metadata accessor for VisualContext);
  result = type metadata accessor for VisualActionPredictionServiceDefinition.PredictionRequest(0);
  *(a4 + *(result + 20)) = v5;
  v13 = a4 + *(result + 24);
  *v13 = v6;
  *(v13 + 8) = v7;
  *(v13 + 16) = v8;
  *(v13 + 24) = v9;
  *(v13 + 32) = v10;
  *(v13 + 33) = v11;
  return result;
}

uint64_t sub_1D9E573B4()
{
  v1 = 0x776F6C666B726F77;
  if (*v0 != 1)
  {
    v1 = 0x736E6F6974706FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F436C6175736976;
  }
}

uint64_t sub_1D9E5741C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9E646D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9E57444(uint64_t a1)
{
  v2 = sub_1D9E576F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E57480(uint64_t a1)
{
  v2 = sub_1D9E576F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualActionPredictionServiceDefinition.PredictionRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB732A0, &qword_1D9F2F9C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E576F8();
  sub_1D9F2BB8C();
  LOBYTE(v16) = 0;
  type metadata accessor for VisualContext(0);
  sub_1D9E57BA0(&qword_1EE0F2190, type metadata accessor for VisualContext, &protocol conformance descriptor for VisualContext);
  sub_1D9F2B9AC();
  if (!v2)
  {
    v9 = type metadata accessor for VisualActionPredictionServiceDefinition.PredictionRequest(0);
    LOBYTE(v16) = *(v3 + *(v9 + 20));
    v21 = 1;
    sub_1D9E5774C();
    sub_1D9F2B9AC();
    v10 = (v3 + *(v9 + 24));
    v11 = *(v10 + 8);
    v12 = *(v10 + 32);
    v13 = *(v10 + 33);
    v16 = *v10;
    v17 = v11;
    v18 = *(v10 + 1);
    v19 = v12;
    v20 = v13;
    v21 = 2;
    sub_1D9E577A0();
    sub_1D9F2B9AC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1D9E576F8()
{
  result = qword_1EE0F3270;
  if (!qword_1EE0F3270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3270);
  }

  return result;
}

unint64_t sub_1D9E5774C()
{
  result = qword_1EE0F1310[0];
  if (!qword_1EE0F1310[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0F1310);
  }

  return result;
}

unint64_t sub_1D9E577A0()
{
  result = qword_1EE0F2160;
  if (!qword_1EE0F2160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2160);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.PredictionRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for VisualContext(0);
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB732A8, &qword_1D9F2F9C8);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for VisualActionPredictionServiceDefinition.PredictionRequest(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E576F8();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v22;
  v13 = v11;
  LOBYTE(v25) = 0;
  sub_1D9E57BA0(&qword_1EE0F2188, type metadata accessor for VisualContext, &protocol conformance descriptor for VisualContext);
  v14 = v23;
  sub_1D9F2B89C();
  sub_1D9E57E24(v24, v13, type metadata accessor for VisualContext);
  v30 = 1;
  sub_1D9E57BE8();
  sub_1D9F2B89C();
  *(v13 + *(v9 + 20)) = v25;
  v30 = 2;
  sub_1D9E57C3C();
  sub_1D9F2B89C();
  (*(v12 + 8))(v8, v14);
  v16 = v26;
  v17 = v28;
  v18 = v29;
  v19 = v13 + *(v9 + 24);
  *v19 = v25;
  *(v19 + 8) = v16;
  *(v19 + 16) = v27;
  *(v19 + 32) = v17;
  *(v19 + 33) = v18;
  sub_1D9E57C90(v13, v21, type metadata accessor for VisualActionPredictionServiceDefinition.PredictionRequest);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D9E57CF8(v13, type metadata accessor for VisualActionPredictionServiceDefinition.PredictionRequest);
}

uint64_t sub_1D9E57BA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D9E57BE8()
{
  result = qword_1EE0F1308;
  if (!qword_1EE0F1308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1308);
  }

  return result;
}

unint64_t sub_1D9E57C3C()
{
  result = qword_1EE0F2158;
  if (!qword_1EE0F2158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2158);
  }

  return result;
}

uint64_t sub_1D9E57C90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9E57CF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9E57E24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9E57EA0(uint64_t a1)
{
  v2 = sub_1D9E58090();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E57EDC(uint64_t a1)
{
  v2 = sub_1D9E58090();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualActionPredictionServiceDefinition.PredictionResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB732B0, &qword_1D9F2F9D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E58090();
  sub_1D9F2BB8C();
  type metadata accessor for PredictionResult(0);
  sub_1D9E57BA0(&qword_1EE0F2170, type metadata accessor for PredictionResult, &protocol conformance descriptor for PredictionResult);
  sub_1D9F2B9AC();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1D9E58090()
{
  result = qword_1EE0F31B0[0];
  if (!qword_1EE0F31B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0F31B0);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.PredictionResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for PredictionResult(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB732B8, &qword_1D9F2F9D8);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for VisualActionPredictionServiceDefinition.PredictionResponse(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E58090();
  sub_1D9F2BB7C();
  if (!v2)
  {
    v12 = v15;
    sub_1D9E57BA0(&qword_1EE0F2168, type metadata accessor for PredictionResult, &protocol conformance descriptor for PredictionResult);
    v13 = v17;
    sub_1D9F2B89C();
    (*(v16 + 8))(v8, v6);
    sub_1D9E57E24(v13, v11, type metadata accessor for PredictionResult);
    sub_1D9E57E24(v11, v12, type metadata accessor for VisualActionPredictionServiceDefinition.PredictionResponse);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9E583AC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB732B0, &qword_1D9F2F9D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E58090();
  sub_1D9F2BB8C();
  type metadata accessor for PredictionResult(0);
  sub_1D9E57BA0(&qword_1EE0F2170, type metadata accessor for PredictionResult, &protocol conformance descriptor for PredictionResult);
  sub_1D9F2B9AC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t VisualActionPredictionServiceDefinition.ExecutionRequest.workflow.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VisualActionPredictionServiceDefinition.ExecutionRequest(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t VisualActionPredictionServiceDefinition.ExecutionRequest.options.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for VisualActionPredictionServiceDefinition.ExecutionRequest(0);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = v4[2];
  LOBYTE(v4) = *(v4 + 24);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v4;
  return result;
}

__n128 VisualActionPredictionServiceDefinition.ExecutionRequest.init(selectedAction:visualContext:imageFrame:workflow:options:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a4;
  v10 = *a5;
  v11 = *(a5 + 8);
  v12 = a5[2];
  v13 = *(a5 + 24);
  sub_1D9E57E24(a1, a6, type metadata accessor for PredictedAction);
  v14 = type metadata accessor for VisualActionPredictionServiceDefinition.ExecutionRequest(0);
  sub_1D9E57E24(a2, a6 + v14[5], type metadata accessor for VisualContext);
  v15 = a6 + v14[6];
  v16 = *(a3 + 48);
  *(v15 + 32) = *(a3 + 32);
  *(v15 + 48) = v16;
  *(v15 + 64) = *(a3 + 64);
  *(v15 + 80) = *(a3 + 80);
  result = *a3;
  v18 = *(a3 + 16);
  *v15 = *a3;
  *(v15 + 16) = v18;
  *(a6 + v14[7]) = v9;
  v19 = a6 + v14[8];
  *v19 = v10;
  *(v19 + 8) = v11;
  *(v19 + 16) = v12;
  *(v19 + 24) = v13;
  return result;
}

uint64_t sub_1D9E58794()
{
  v1 = *v0;
  v2 = 0x64657463656C6573;
  v3 = 0x6172466567616D69;
  v4 = 0x776F6C666B726F77;
  if (v1 != 3)
  {
    v4 = 0x736E6F6974706FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F436C6175736976;
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

uint64_t sub_1D9E5884C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9E647F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9E58874(uint64_t a1)
{
  v2 = sub_1D9E58C80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E588B0(uint64_t a1)
{
  v2 = sub_1D9E58C80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualActionPredictionServiceDefinition.ExecutionRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB732C0, &qword_1D9F2F9E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E58C80();
  sub_1D9F2BB8C();
  LOBYTE(v32[0]) = 0;
  type metadata accessor for PredictedAction(0);
  sub_1D9E57BA0(&qword_1EE0F2268, type metadata accessor for PredictedAction, &protocol conformance descriptor for PredictedAction);
  sub_1D9F2B9AC();
  if (!v2)
  {
    v9 = type metadata accessor for VisualActionPredictionServiceDefinition.ExecutionRequest(0);
    v39 = 1;
    type metadata accessor for VisualContext(0);
    sub_1D9E57BA0(&qword_1EE0F2190, type metadata accessor for VisualContext, &protocol conformance descriptor for VisualContext);
    sub_1D9F2B9AC();
    v10 = v3 + v9[6];
    v11 = *(v10 + 48);
    v12 = *(v10 + 16);
    v33 = *(v10 + 32);
    v34 = v11;
    v13 = *(v10 + 48);
    v35 = *(v10 + 64);
    v14 = *(v10 + 16);
    v32[0] = *v10;
    v32[1] = v14;
    v28 = v33;
    v29 = v13;
    v30 = *(v10 + 64);
    v36 = *(v10 + 80);
    v31 = *(v10 + 80);
    v26 = v32[0];
    v27 = v12;
    v38 = 2;
    sub_1D9E585C4(v32, v24);
    sub_1D9E58CD4();
    sub_1D9F2B9AC();
    v24[2] = v28;
    v24[3] = v29;
    v24[4] = v30;
    v25 = v31;
    v24[0] = v26;
    v24[1] = v27;
    sub_1D9E58D28(v24);
    LOBYTE(v20) = *(v3 + v9[7]);
    v37 = 3;
    sub_1D9E5774C();
    sub_1D9F2B9AC();
    v15 = (v3 + v9[8]);
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = v15[2];
    LOBYTE(v15) = *(v15 + 24);
    v20 = v16;
    v21 = v17;
    v22 = v18;
    v23 = v15;
    v37 = 4;
    sub_1D9E58D7C();
    sub_1D9F2B9AC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1D9E58C80()
{
  result = qword_1ECB732C8;
  if (!qword_1ECB732C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB732C8);
  }

  return result;
}

unint64_t sub_1D9E58CD4()
{
  result = qword_1ECB732D0;
  if (!qword_1ECB732D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB732D0);
  }

  return result;
}

unint64_t sub_1D9E58D7C()
{
  result = qword_1ECB732D8;
  if (!qword_1ECB732D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB732D8);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.ExecutionRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = type metadata accessor for VisualContext(0);
  MEMORY[0x1EEE9AC00](v28);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PredictedAction(0);
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB732E0, &qword_1D9F2F9E8);
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = type metadata accessor for VisualActionPredictionServiceDefinition.ExecutionRequest(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D9E58C80();
  v14 = v32;
  sub_1D9F2BB7C();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  v15 = v12;
  LOBYTE(v38) = 0;
  sub_1D9E57BA0(&qword_1EE0F2260, type metadata accessor for PredictedAction, &protocol conformance descriptor for PredictedAction);
  v16 = v30;
  sub_1D9F2B89C();
  sub_1D9E57E24(v31, v15, type metadata accessor for PredictedAction);
  LOBYTE(v38) = 1;
  sub_1D9E57BA0(&qword_1EE0F2188, type metadata accessor for VisualContext, &protocol conformance descriptor for VisualContext);
  sub_1D9F2B89C();
  sub_1D9E57E24(v4, v15 + v10[5], type metadata accessor for VisualContext);
  v45 = 2;
  sub_1D9E59364();
  sub_1D9F2B89C();
  v17 = v29;
  v18 = v15 + v10[6];
  v19 = v41;
  *(v18 + 32) = v40;
  *(v18 + 48) = v19;
  *(v18 + 64) = v42;
  *(v18 + 80) = v43;
  v20 = v39;
  *v18 = v38;
  *(v18 + 16) = v20;
  v44 = 3;
  sub_1D9E57BE8();
  sub_1D9F2B89C();
  *v10[7] = v34;
  v44 = 4;
  sub_1D9E593B8();
  sub_1D9F2B89C();
  (*(v17 + 8))(v9, v16);
  v21 = v35;
  v22 = v36;
  v23 = v37;
  v24 = v10[8];
  *v24 = v34;
  *(v24 + 8) = v21;
  *(v24 + 16) = v22;
  *(v24 + 24) = v23;
  sub_1D9E57C90(0, v27, type metadata accessor for VisualActionPredictionServiceDefinition.ExecutionRequest);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return sub_1D9E57CF8(0, type metadata accessor for VisualActionPredictionServiceDefinition.ExecutionRequest);
}

unint64_t sub_1D9E59364()
{
  result = qword_1ECB732E8;
  if (!qword_1ECB732E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB732E8);
  }

  return result;
}

unint64_t sub_1D9E593B8()
{
  result = qword_1ECB732F0;
  if (!qword_1ECB732F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB732F0);
  }

  return result;
}

uint64_t sub_1D9E59458(uint64_t a1)
{
  v2 = sub_1D9E59694();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E59494(uint64_t a1)
{
  v2 = sub_1D9E59694();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E59514(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1D9F2BB8C();
  type metadata accessor for ExecutionResult(0);
  sub_1D9E57BA0(&qword_1ECB73308, type metadata accessor for ExecutionResult, &protocol conformance descriptor for ExecutionResult);
  sub_1D9F2B9AC();
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_1D9E59694()
{
  result = qword_1ECB73300;
  if (!qword_1ECB73300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73300);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.ExecutionResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for ExecutionResult(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73310, &qword_1D9F2F9F8);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for VisualActionPredictionServiceDefinition.ExecutionResponse(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E59694();
  sub_1D9F2BB7C();
  if (!v2)
  {
    v12 = v15;
    sub_1D9E57BA0(&qword_1ECB73318, type metadata accessor for ExecutionResult, &protocol conformance descriptor for ExecutionResult);
    v13 = v17;
    sub_1D9F2B89C();
    (*(v16 + 8))(v8, v6);
    sub_1D9E57E24(v13, v11, type metadata accessor for ExecutionResult);
    sub_1D9E57E24(v11, v12, type metadata accessor for VisualActionPredictionServiceDefinition.ExecutionResponse);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9E599D8(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_1D9F2BB8C();
  type metadata accessor for ExecutionResult(0);
  sub_1D9E57BA0(&qword_1ECB73308, type metadata accessor for ExecutionResult, &protocol conformance descriptor for ExecutionResult);
  sub_1D9F2B9AC();
  return (*(v10 + 8))(v12, v9);
}

uint64_t VisualActionPredictionServiceDefinition.FeedbackRequest.workflow.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VisualActionPredictionServiceDefinition.FeedbackRequest(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t sub_1D9E59C28()
{
  if (*v0)
  {
    return 0x776F6C666B726F77;
  }

  else
  {
    return 0x6B63616264656566;
  }
}

uint64_t sub_1D9E59C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6B63616264656566 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

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

uint64_t sub_1D9E59D38(uint64_t a1)
{
  v2 = sub_1D9E59F80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E59D74(uint64_t a1)
{
  v2 = sub_1D9E59F80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualActionPredictionServiceDefinition.FeedbackRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73320, &qword_1D9F2FA00);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E59F80();
  sub_1D9F2BB8C();
  v10[15] = 0;
  type metadata accessor for Feedback(0);
  sub_1D9E57BA0(&qword_1ECB73330, type metadata accessor for Feedback, &protocol conformance descriptor for Feedback);
  sub_1D9F2B9AC();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for VisualActionPredictionServiceDefinition.FeedbackRequest(0) + 20));
    v10[13] = 1;
    sub_1D9E5774C();
    sub_1D9F2B9AC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1D9E59F80()
{
  result = qword_1ECB73328;
  if (!qword_1ECB73328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73328);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.FeedbackRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for Feedback(0);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73338, &qword_1D9F2FA08);
  v17 = *(v6 - 8);
  v18 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for VisualActionPredictionServiceDefinition.FeedbackRequest(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E59F80();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v17;
  v13 = v11;
  v22 = 0;
  sub_1D9E57BA0(&qword_1ECB73340, type metadata accessor for Feedback, &protocol conformance descriptor for Feedback);
  v14 = v18;
  sub_1D9F2B89C();
  sub_1D9E57E24(v19, v13, type metadata accessor for Feedback);
  v20 = 1;
  sub_1D9E57BE8();
  sub_1D9F2B89C();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 20)) = v21;
  sub_1D9E57C90(v13, v16, type metadata accessor for VisualActionPredictionServiceDefinition.FeedbackRequest);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D9E57CF8(v13, type metadata accessor for VisualActionPredictionServiceDefinition.FeedbackRequest);
}

uint64_t sub_1D9E5A364(uint64_t a1)
{
  v2 = sub_1D9E5A420();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5A3A0(uint64_t a1)
{
  v2 = sub_1D9E5A420();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D9E5A420()
{
  result = qword_1ECB73350;
  if (!qword_1ECB73350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73350);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.CustomActionRegistrationRequest.customActionIdentity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1D9E51D40(v2, v3, v4);
}

__n128 VisualActionPredictionServiceDefinition.CustomActionRegistrationRequest.init(customActionIdentity:isUnregisteringAction:)@<Q0>(__n128 *a1@<X0>, unsigned __int8 a2@<W1>, __n128 *a3@<X8>)
{
  v3 = a1[1].n128_u8[0];
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u8[0] = v3;
  a3[1].n128_u8[1] = a2;
  return result;
}

unint64_t sub_1D9E5A524()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1D9E5A55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001D9F48990 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D9F489B0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D9F2BA1C();

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

uint64_t sub_1D9E5A640(uint64_t a1)
{
  v2 = sub_1D9E5A868();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5A67C(uint64_t a1)
{
  v2 = sub_1D9E5A868();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualActionPredictionServiceDefinition.CustomActionRegistrationRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73358, &qword_1D9F2FA18);
  v12 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v11 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v16 = *(v1 + 17);
  v8 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E51D40(v6, v7, v8);
  sub_1D9E5A868();
  sub_1D9F2BB8C();
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v17 = 0;
  sub_1D9E5A8BC();
  v9 = v11[1];
  sub_1D9F2B9AC();
  sub_1D9E51DF0(v13, v14, v15);
  if (!v9)
  {
    LOBYTE(v13) = 1;
    sub_1D9F2B96C();
  }

  return (*(v12 + 8))(v5, v3);
}

unint64_t sub_1D9E5A868()
{
  result = qword_1ECB73360;
  if (!qword_1ECB73360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73360);
  }

  return result;
}

unint64_t sub_1D9E5A8BC()
{
  result = qword_1EE0F3718;
  if (!qword_1EE0F3718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3718);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.CustomActionRegistrationRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73368, &qword_1D9F2FA20);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5A868();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  sub_1D9E5AB24();
  sub_1D9F2B89C();
  v9 = v16;
  v10 = v17;
  v19 = v18;
  LOBYTE(v16) = 1;
  v11 = sub_1D9F2B85C();
  (*(v6 + 8))(v8, v5);
  v12 = v11 & 1;
  *a2 = v9;
  *(a2 + 8) = v10;
  v13 = v19;
  *(a2 + 16) = v19;
  *(a2 + 17) = v12;
  sub_1D9E51D40(v9, v10, v13);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D9E51DF0(v9, v10, v13);
}

unint64_t sub_1D9E5AB24()
{
  result = qword_1EE0F3710;
  if (!qword_1EE0F3710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3710);
  }

  return result;
}

uint64_t sub_1D9E5ABE4(uint64_t a1)
{
  v2 = sub_1D9E5ACA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5AC20(uint64_t a1)
{
  v2 = sub_1D9E5ACA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D9E5ACA0()
{
  result = qword_1ECB73378;
  if (!qword_1ECB73378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73378);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.CustomActionExecutionRequest.customActionIdentity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1D9E51D40(v2, v3, v4);
}

uint64_t sub_1D9E5AE50@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = (v2 + *(a1(0) + 24));
  v5 = v4[2];
  v7 = v4[4];
  v16 = v4[3];
  v6 = v16;
  v17 = v7;
  v18 = *(v4 + 80);
  v8 = v18;
  v10 = *v4;
  v14 = v4[1];
  v9 = v14;
  v15 = v5;
  v13 = v10;
  *(a2 + 32) = v5;
  *(a2 + 48) = v6;
  *(a2 + 64) = v7;
  *(a2 + 80) = v8;
  *a2 = v10;
  *(a2 + 16) = v9;
  return sub_1D9E585C4(&v13, v12);
}

__n128 VisualActionPredictionServiceDefinition.CustomActionExecutionRequest.init(customActionIdentity:visualContext:imageFrame:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v7;
  v8 = type metadata accessor for VisualActionPredictionServiceDefinition.CustomActionExecutionRequest(0);
  sub_1D9E57E24(a2, a4 + *(v8 + 20), type metadata accessor for VisualContext);
  v9 = a4 + *(v8 + 24);
  v10 = *(a3 + 48);
  *(v9 + 32) = *(a3 + 32);
  *(v9 + 48) = v10;
  *(v9 + 64) = *(a3 + 64);
  *(v9 + 80) = *(a3 + 80);
  result = *a3;
  v12 = *(a3 + 16);
  *v9 = *a3;
  *(v9 + 16) = v12;
  return result;
}

uint64_t sub_1D9E5AF70()
{
  v1 = 0x6F436C6175736976;
  if (*v0 != 1)
  {
    v1 = 0x6172466567616D69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1D9E5AFE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9E649C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9E5B008(uint64_t a1)
{
  v2 = sub_1D9E5B35C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5B044(uint64_t a1)
{
  v2 = sub_1D9E5B35C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualActionPredictionServiceDefinition.CustomActionExecutionRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73380, &qword_1D9F2FA30);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5B35C();
  sub_1D9F2BB8C();
  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  *&v26 = *v3;
  *(&v26 + 1) = v9;
  LOBYTE(v27) = v10;
  LOBYTE(v20) = 0;
  sub_1D9E51D40(v26, v9, v10);
  sub_1D9E5A8BC();
  sub_1D9F2B9AC();
  sub_1D9E51DF0(v26, *(&v26 + 1), v27);
  if (!v2)
  {
    v11 = type metadata accessor for VisualActionPredictionServiceDefinition.CustomActionExecutionRequest(0);
    v33 = 1;
    type metadata accessor for VisualContext(0);
    sub_1D9E57BA0(&qword_1EE0F2190, type metadata accessor for VisualContext, &protocol conformance descriptor for VisualContext);
    sub_1D9F2B9AC();
    v13 = (v3 + *(v11 + 24));
    v14 = v13[3];
    v15 = v13[1];
    v28 = v13[2];
    v29 = v14;
    v16 = v13[3];
    v30 = v13[4];
    v17 = v13[1];
    v26 = *v13;
    v27 = v17;
    v22 = v28;
    v23 = v16;
    v24 = v13[4];
    v31 = *(v13 + 80);
    v25 = *(v13 + 80);
    v20 = v26;
    v21 = v15;
    v32 = 2;
    sub_1D9E585C4(&v26, v18);
    sub_1D9E58CD4();
    sub_1D9F2B9AC();
    v18[2] = v22;
    v18[3] = v23;
    v18[4] = v24;
    v19 = v25;
    v18[0] = v20;
    v18[1] = v21;
    sub_1D9E58D28(v18);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1D9E5B35C()
{
  result = qword_1ECB73388;
  if (!qword_1ECB73388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73388);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.CustomActionExecutionRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for VisualContext(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73390, &qword_1D9F2FA38);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for VisualActionPredictionServiceDefinition.CustomActionExecutionRequest(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D9E5B35C();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  v23 = v10;
  v34 = 0;
  sub_1D9E5AB24();
  v14 = v26;
  sub_1D9F2B89C();
  v15 = v29;
  v16 = v12;
  *v12 = v28;
  v12[16] = v15;
  LOBYTE(v28) = 1;
  sub_1D9E57BA0(&qword_1EE0F2188, type metadata accessor for VisualContext, &protocol conformance descriptor for VisualContext);
  sub_1D9F2B89C();
  v17 = v23;
  sub_1D9E57E24(v6, v16 + *(v23 + 20), type metadata accessor for VisualContext);
  v34 = 2;
  sub_1D9E59364();
  sub_1D9F2B89C();
  (*(v25 + 8))(v9, v14);
  v18 = v16 + *(v17 + 24);
  v19 = v31;
  *(v18 + 32) = v30;
  *(v18 + 48) = v19;
  *(v18 + 64) = v32;
  *(v18 + 80) = v33;
  v20 = v29;
  *v18 = v28;
  *(v18 + 16) = v20;
  sub_1D9E57C90(v16, v24, type metadata accessor for VisualActionPredictionServiceDefinition.CustomActionExecutionRequest);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_1D9E57CF8(v16, type metadata accessor for VisualActionPredictionServiceDefinition.CustomActionExecutionRequest);
}

uint64_t sub_1D9E5B87C(uint64_t a1)
{
  v2 = sub_1D9E5B938();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5B8B8(uint64_t a1)
{
  v2 = sub_1D9E5B938();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D9E5B938()
{
  result = qword_1ECB733A0;
  if (!qword_1ECB733A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB733A0);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.CustomActionExecutionResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for ExecutionResult(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB733A8, &qword_1D9F2FA48);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for VisualActionPredictionServiceDefinition.CustomActionExecutionResponse(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5B938();
  sub_1D9F2BB7C();
  if (!v2)
  {
    v12 = v15;
    sub_1D9E57BA0(&qword_1ECB73318, type metadata accessor for ExecutionResult, &protocol conformance descriptor for ExecutionResult);
    v13 = v17;
    sub_1D9F2B89C();
    (*(v16 + 8))(v8, v6);
    sub_1D9E57E24(v13, v11, type metadata accessor for ExecutionResult);
    sub_1D9E57E24(v11, v12, type metadata accessor for VisualActionPredictionServiceDefinition.CustomActionExecutionResponse);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t VisualActionPredictionServiceDefinition.AcceleratedActionEligibilityRequest.workflow.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VisualActionPredictionServiceDefinition.AcceleratedActionEligibilityRequest(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t sub_1D9E5BD3C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9E5BDA0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  sub_1D9E57E24(a1, a5, a3);
  result = a4(0);
  *(a5 + *(result + 20)) = v7;
  return result;
}

uint64_t sub_1D9E5BDEC()
{
  if (*v0)
  {
    return 0x776F6C666B726F77;
  }

  else
  {
    return 0x6F436C6175736976;
  }
}

uint64_t sub_1D9E5BE34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F436C6175736976 && a2 == 0xED0000747865746ELL;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

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

uint64_t sub_1D9E5BF18(uint64_t a1)
{
  v2 = sub_1D9E5C160();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5BF54(uint64_t a1)
{
  v2 = sub_1D9E5C160();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualActionPredictionServiceDefinition.AcceleratedActionEligibilityRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB733B0, &qword_1D9F2FA50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5C160();
  sub_1D9F2BB8C();
  v10[15] = 0;
  type metadata accessor for VisualContext(0);
  sub_1D9E57BA0(&qword_1EE0F2190, type metadata accessor for VisualContext, &protocol conformance descriptor for VisualContext);
  sub_1D9F2B9AC();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for VisualActionPredictionServiceDefinition.AcceleratedActionEligibilityRequest(0) + 20));
    v10[13] = 1;
    sub_1D9E5774C();
    sub_1D9F2B9AC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1D9E5C160()
{
  result = qword_1ECB733B8;
  if (!qword_1ECB733B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB733B8);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.AcceleratedActionEligibilityRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for VisualContext(0);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB733C0, &qword_1D9F2FA58);
  v17 = *(v6 - 8);
  v18 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for VisualActionPredictionServiceDefinition.AcceleratedActionEligibilityRequest(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5C160();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v17;
  v13 = v11;
  v22 = 0;
  sub_1D9E57BA0(&qword_1EE0F2188, type metadata accessor for VisualContext, &protocol conformance descriptor for VisualContext);
  v14 = v18;
  sub_1D9F2B89C();
  sub_1D9E57E24(v19, v13, type metadata accessor for VisualContext);
  v20 = 1;
  sub_1D9E57BE8();
  sub_1D9F2B89C();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 20)) = v21;
  sub_1D9E57C90(v13, v16, type metadata accessor for VisualActionPredictionServiceDefinition.AcceleratedActionEligibilityRequest);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D9E57CF8(v13, type metadata accessor for VisualActionPredictionServiceDefinition.AcceleratedActionEligibilityRequest);
}

uint64_t sub_1D9E5C550(uint64_t a1)
{
  v2 = sub_1D9E5C700();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5C58C(uint64_t a1)
{
  v2 = sub_1D9E5C700();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualActionPredictionServiceDefinition.AcceleratedActionEligibilityResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB733C8, &qword_1D9F2FA60);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5C700();
  sub_1D9F2BB8C();
  sub_1D9F2B96C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1D9E5C700()
{
  result = qword_1ECB733D0;
  if (!qword_1ECB733D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB733D0);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.AcceleratedActionEligibilityResponse.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB733D8, &qword_1D9F2FA68);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5C700();
  sub_1D9F2BB7C();
  if (!v2)
  {
    v9 = sub_1D9F2B85C();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9E5C8E0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB733C8, &qword_1D9F2FA60);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5C700();
  sub_1D9F2BB8C();
  sub_1D9F2B96C();
  return (*(v3 + 8))(v5, v2);
}

VisualActionPredictionSupport::VisualActionPredictionServiceDefinition::BundleRankingRequest __swiftcall VisualActionPredictionServiceDefinition.BundleRankingRequest.init(visualContexts:workflow:)(VisualActionPredictionSupport::VisualActionPredictionServiceDefinition::BundleRankingRequest visualContexts, VisualActionPredictionSupport::Workflow workflow)
{
  v3 = *workflow;
  *v2 = visualContexts.visualContexts._rawValue;
  *(v2 + 8) = v3;
  visualContexts.workflow = workflow;
  return visualContexts;
}

uint64_t sub_1D9E5CA58()
{
  if (*v0)
  {
    return 0x776F6C666B726F77;
  }

  else
  {
    return 0x6F436C6175736976;
  }
}

uint64_t sub_1D9E5CAA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F436C6175736976 && a2 == 0xEE0073747865746ELL;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

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

uint64_t sub_1D9E5CB84(uint64_t a1)
{
  v2 = sub_1D9E5CDFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5CBC0(uint64_t a1)
{
  v2 = sub_1D9E5CDFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualActionPredictionServiceDefinition.BundleRankingRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB733E0, &qword_1D9F2FA70);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5CDFC();

  sub_1D9F2BB8C();
  v15 = v8;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB733E8, &qword_1D9F2FA78);
  sub_1D9E5D08C(&qword_1EE0F1160, &qword_1EE0F2190, &protocol conformance descriptor for VisualContext, MEMORY[0x1E69E6300]);
  sub_1D9F2B9AC();

  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_1D9E5774C();
    sub_1D9F2B9AC();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D9E5CDFC()
{
  result = qword_1EE0F30C8;
  if (!qword_1EE0F30C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F30C8);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.BundleRankingRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB733F0, &qword_1D9F2FA80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5CDFC();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB733E8, &qword_1D9F2FA78);
  v12[15] = 0;
  sub_1D9E5D08C(&qword_1EE0F1158, &qword_1EE0F2188, &protocol conformance descriptor for VisualContext, MEMORY[0x1E69E6330]);
  sub_1D9F2B89C();
  v9 = v13;
  v12[13] = 1;
  sub_1D9E57BE8();
  sub_1D9F2B89C();
  (*(v6 + 8))(v8, v5);
  v10 = v12[14];
  *a2 = v9;
  *(a2 + 8) = v10;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9E5D08C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB733E8, &qword_1D9F2FA78);
    sub_1D9E57BA0(a2, type metadata accessor for VisualContext, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9E5D1A8(uint64_t a1)
{
  v2 = sub_1D9E5D380();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5D1E4(uint64_t a1)
{
  v2 = sub_1D9E5D380();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualActionPredictionServiceDefinition.BundleRankingResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB733F8, &qword_1D9F2FA88);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5D380();

  sub_1D9F2BB8C();
  v9[1] = v7;
  sub_1D9E5D3D4();
  sub_1D9F2B9AC();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D9E5D380()
{
  result = qword_1EE0F30A0;
  if (!qword_1EE0F30A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F30A0);
  }

  return result;
}

unint64_t sub_1D9E5D3D4()
{
  result = qword_1EE0F1638;
  if (!qword_1EE0F1638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1638);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.BundleRankingResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73400, &qword_1D9F2FA90);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5D380();
  sub_1D9F2BB7C();
  if (!v2)
  {
    sub_1D9E5D594();
    sub_1D9F2B89C();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D9E5D594()
{
  result = qword_1EE0F1630;
  if (!qword_1EE0F1630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1630);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.ClearDatabaseRequest.bundleId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D9E5D6A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9E5D728(uint64_t a1)
{
  v2 = sub_1D9E5D8DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5D764(uint64_t a1)
{
  v2 = sub_1D9E5D8DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualActionPredictionServiceDefinition.ClearDatabaseRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73408, &qword_1D9F2FA98);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5D8DC();
  sub_1D9F2BB8C();
  sub_1D9F2B90C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1D9E5D8DC()
{
  result = qword_1ECB73410;
  if (!qword_1ECB73410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73410);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.ClearDatabaseRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73418, &qword_1D9F2FAA0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5D8DC();
  sub_1D9F2BB7C();
  if (!v2)
  {
    v9 = sub_1D9F2B7FC();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9E5DAD8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73408, &qword_1D9F2FA98);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5D8DC();
  sub_1D9F2BB8C();
  sub_1D9F2B90C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t VisualActionPredictionServiceDefinition.ClearDatabaseResponse.result.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D9E5DC68(uint64_t a1)
{
  v2 = sub_1D9E5DE1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5DCA4(uint64_t a1)
{
  v2 = sub_1D9E5DE1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualActionPredictionServiceDefinition.ClearDatabaseResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73420, &qword_1D9F2FAA8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5DE1C();
  sub_1D9F2BB8C();
  sub_1D9F2B95C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1D9E5DE1C()
{
  result = qword_1ECB73428;
  if (!qword_1ECB73428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73428);
  }

  return result;
}

uint64_t sub_1D9E5DEE8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73420, &qword_1D9F2FAA8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5DE1C();
  sub_1D9F2BB8C();
  sub_1D9F2B95C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D9E5E044(uint64_t a1)
{
  v2 = sub_1D9E5E220();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5E080(uint64_t a1)
{
  v2 = sub_1D9E5E220();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E5E100(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1D9F2BB8C();
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_1D9E5E220()
{
  result = qword_1ECB73440;
  if (!qword_1ECB73440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73440);
  }

  return result;
}

uint64_t sub_1D9E5E2D4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_1D9F2BB8C();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1D9E5E410(uint64_t a1)
{
  v2 = sub_1D9E5E5C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5E44C(uint64_t a1)
{
  v2 = sub_1D9E5E5C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualActionPredictionServiceDefinition.ClearEngagementStreamResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73448, &qword_1D9F2FAC0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5E5C4();
  sub_1D9F2BB8C();
  sub_1D9F2B95C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1D9E5E5C4()
{
  result = qword_1ECB73450;
  if (!qword_1ECB73450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73450);
  }

  return result;
}

uint64_t sub_1D9E5E690(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73448, &qword_1D9F2FAC0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5E5C4();
  sub_1D9F2BB8C();
  sub_1D9F2B95C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t VisualActionPredictionServiceDefinition.SetDeviceStateRequest.init(appPopularityMap:timestamp:appCategoryMap:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 24) = a4;
  return result;
}

uint64_t sub_1D9E5E818()
{
  v1 = 0x6D617473656D6974;
  if (*v0 != 1)
  {
    v1 = 0x6765746143707061;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1D9E5E888@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9E64AF4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9E5E8B0(uint64_t a1)
{
  v2 = sub_1D9E5EB50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5E8EC(uint64_t a1)
{
  v2 = sub_1D9E5EB50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualActionPredictionServiceDefinition.SetDeviceStateRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73460, &qword_1D9F2FAD0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v13 = v1[1];
  v12 = *(v1 + 16);
  v11 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5EB50();

  sub_1D9F2BB8C();
  v15 = v8;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73470, &qword_1D9F2FAD8);
  sub_1D9E5EE4C(&qword_1ECB73478, MEMORY[0x1E69E6160], MEMORY[0x1E69E6538], MEMORY[0x1E69E5E38]);
  sub_1D9F2B94C();

  if (!v2)
  {
    v9 = v11;
    LOBYTE(v15) = 1;
    sub_1D9F2B92C();
    v15 = v9;
    v14 = 2;
    sub_1D9F2B94C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D9E5EB50()
{
  result = qword_1ECB73468;
  if (!qword_1ECB73468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73468);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.SetDeviceStateRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73480, &qword_1D9F2FAE0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5EB50();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73470, &qword_1D9F2FAD8);
  v17 = 0;
  sub_1D9E5EE4C(&qword_1ECB73488, MEMORY[0x1E69E6190], MEMORY[0x1E69E6560], MEMORY[0x1E69E5E58]);
  sub_1D9F2B83C();
  v16 = v18;
  LOBYTE(v18) = 1;
  v9 = sub_1D9F2B81C();
  HIDWORD(v14) = v10;
  v15 = v9;
  v17 = 2;
  sub_1D9F2B83C();
  (*(v6 + 8))(v8, v5);
  v12 = v18;
  v13 = v15;
  *a2 = v16;
  *(a2 + 8) = v13;
  *(a2 + 16) = BYTE4(v14) & 1;
  *(a2 + 24) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9E5EE4C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB73470, &qword_1D9F2FAD8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9E5EF24(uint64_t a1)
{
  v2 = sub_1D9E5F0D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5EF60(uint64_t a1)
{
  v2 = sub_1D9E5F0D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualActionPredictionServiceDefinition.SetDeviceStateResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73490, &qword_1D9F2FAE8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5F0D8();
  sub_1D9F2BB8C();
  sub_1D9F2B95C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1D9E5F0D8()
{
  result = qword_1ECB73498;
  if (!qword_1ECB73498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73498);
  }

  return result;
}

uint64_t sub_1D9E5F1A4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73490, &qword_1D9F2FAE8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5F0D8();
  sub_1D9F2BB8C();
  sub_1D9F2B95C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t VisualActionPredictionServiceDefinition.PopulateDatabaseRequest.init(vectors:bundleIds:majorLabels:minorLabels:dates:actionIds:appsInFocus:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t sub_1D9E5F348()
{
  v1 = *v0;
  v2 = 0x73726F74636576;
  v3 = 0x64496E6F69746361;
  if (v1 != 5)
  {
    v3 = 0x6F466E4973707061;
  }

  v4 = 0x62614C726F6E696DLL;
  if (v1 != 3)
  {
    v4 = 0x7365746164;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6449656C646E7562;
  if (v1 != 1)
  {
    v5 = 0x62614C726F6A616DLL;
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

uint64_t sub_1D9E5F444@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9E64C28(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9E5F478(uint64_t a1)
{
  v2 = sub_1D9E5F8A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E5F4B4(uint64_t a1)
{
  v2 = sub_1D9E5F8A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualActionPredictionServiceDefinition.PopulateDatabaseRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB734A8, &qword_1D9F2FAF8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v22 = v1[2];
  v23 = v8;
  v11 = v1[5];
  v20 = v1[4];
  v21 = v10;
  v18 = v1[6];
  v19 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5F8A4();

  v12 = v4;
  sub_1D9F2BB8C();
  v25 = v9;
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB734B8, &qword_1D9F2FB00);
  sub_1D9E5F8F8();
  sub_1D9F2B9AC();
  if (v2)
  {

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v13 = v21;
    v14 = v22;

    v25 = v23;
    v24 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75480, &qword_1D9F2D000);
    sub_1D9E5FA7C();
    sub_1D9F2B9AC();
    v25 = v14;
    v24 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB734E0, &unk_1D9F2FB20);
    sub_1D9E5FAF8();
    v23 = v12;
    sub_1D9F2B9AC();
    v25 = v13;
    v24 = 3;
    sub_1D9F2B9AC();
    v25 = v20;
    v24 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73500, &qword_1D9F2FB30);
    sub_1D9E5FBF8(&qword_1ECB73508, &qword_1ECB73510, MEMORY[0x1E6969538], MEMORY[0x1E69E6300]);
    sub_1D9F2B9AC();
    v25 = v19;
    v24 = 5;
    sub_1D9F2B9AC();
    v25 = v18;
    v24 = 6;
    v16 = v23;
    sub_1D9F2B9AC();
    return (*(v5 + 8))(v7, v16);
  }
}

unint64_t sub_1D9E5F8A4()
{
  result = qword_1ECB734B0;
  if (!qword_1ECB734B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB734B0);
  }

  return result;
}

unint64_t sub_1D9E5F8F8()
{
  result = qword_1ECB734C0;
  if (!qword_1ECB734C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB734B8, &qword_1D9F2FB00);
    sub_1D9E5F97C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB734C0);
  }

  return result;
}

unint64_t sub_1D9E5F97C()
{
  result = qword_1ECB734C8;
  if (!qword_1ECB734C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB734D0, &qword_1D9F2FB08);
    sub_1D9E5FA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB734C8);
  }

  return result;
}

unint64_t sub_1D9E5FA00()
{
  result = qword_1EE0F1110;
  if (!qword_1EE0F1110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB734D8, &unk_1D9F2FB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1110);
  }

  return result;
}

unint64_t sub_1D9E5FA7C()
{
  result = qword_1EE0F1120;
  if (!qword_1EE0F1120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB75480, &qword_1D9F2D000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1120);
  }

  return result;
}

unint64_t sub_1D9E5FAF8()
{
  result = qword_1ECB734E8;
  if (!qword_1ECB734E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB734E0, &unk_1D9F2FB20);
    sub_1D9E5FB7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB734E8);
  }

  return result;
}

unint64_t sub_1D9E5FB7C()
{
  result = qword_1ECB734F0;
  if (!qword_1ECB734F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB734F8, &qword_1D9F45A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB734F0);
  }

  return result;
}

uint64_t sub_1D9E5FBF8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB73500, &qword_1D9F2FB30);
    sub_1D9E57BA0(a2, MEMORY[0x1E6969530], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t VisualActionPredictionServiceDefinition.PopulateDatabaseRequest.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73518, &qword_1D9F2FB38);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E5F8A4();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB734B8, &qword_1D9F2FB00);
  v25 = 0;
  sub_1D9E6021C();
  sub_1D9F2B89C();
  v23 = a2;
  v24 = v26;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75480, &qword_1D9F2D000);
  v25 = 1;
  v10 = sub_1D9E603A0();
  sub_1D9F2B89C();
  v20 = v9;
  v21 = v10;
  v22 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB734E0, &unk_1D9F2FB20);
  v25 = 2;
  sub_1D9E6041C();
  sub_1D9F2B89C();
  v19 = v26;
  v25 = 3;
  sub_1D9F2B89C();
  v18 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73500, &qword_1D9F2FB30);
  v25 = 4;
  sub_1D9E5FBF8(&qword_1ECB73540, &qword_1ECB73548, MEMORY[0x1E6969558], MEMORY[0x1E69E6330]);
  v17[1] = 0;
  sub_1D9F2B89C();
  v17[0] = v26;
  v25 = 5;
  sub_1D9F2B89C();
  v12 = v26;
  v25 = 6;
  sub_1D9F2B89C();
  (*(v6 + 8))(v8, v5);
  v13 = v26;
  v14 = v23;
  v15 = v22;
  *v23 = v24;
  v14[1] = v15;
  v16 = v18;
  v14[2] = v19;
  v14[3] = v16;
  v14[4] = v17[0];
  v14[5] = v12;
  v14[6] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D9E6021C()
{
  result = qword_1ECB73520;
  if (!qword_1ECB73520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB734B8, &qword_1D9F2FB00);
    sub_1D9E602A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73520);
  }

  return result;
}

unint64_t sub_1D9E602A0()
{
  result = qword_1ECB73528;
  if (!qword_1ECB73528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB734D0, &qword_1D9F2FB08);
    sub_1D9E60324();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73528);
  }

  return result;
}

unint64_t sub_1D9E60324()
{
  result = qword_1EE0F1108;
  if (!qword_1EE0F1108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB734D8, &unk_1D9F2FB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1108);
  }

  return result;
}

unint64_t sub_1D9E603A0()
{
  result = qword_1EE0F1118;
  if (!qword_1EE0F1118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB75480, &qword_1D9F2D000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1118);
  }

  return result;
}

unint64_t sub_1D9E6041C()
{
  result = qword_1ECB73530;
  if (!qword_1ECB73530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB734E0, &unk_1D9F2FB20);
    sub_1D9E604A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73530);
  }

  return result;
}

unint64_t sub_1D9E604A0()
{
  result = qword_1ECB73538;
  if (!qword_1ECB73538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB734F8, &qword_1D9F45A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73538);
  }

  return result;
}

uint64_t sub_1D9E60584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9E60608(uint64_t a1)
{
  v2 = sub_1D9E607BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E60644(uint64_t a1)
{
  v2 = sub_1D9E607BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualActionPredictionServiceDefinition.PopulateDatabaseResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73550, &qword_1D9F2FB40);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E607BC();
  sub_1D9F2BB8C();
  sub_1D9F2B95C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1D9E607BC()
{
  result = qword_1ECB73558;
  if (!qword_1ECB73558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73558);
  }

  return result;
}

uint64_t sub_1D9E60854@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a6@<X8>)
{
  v20 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v19 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1D9F2BB7C();
  if (!v6)
  {
    v12 = v19;
    v13 = v20;
    v14 = sub_1D9F2B84C();
    v16 = v15;
    (*(v12 + 8))(v11, v9);
    *v13 = v14;
    v13[1] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D9E609D8()
{
  result = qword_1EE0F2930;
  if (!qword_1EE0F2930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2930);
  }

  return result;
}

unint64_t sub_1D9E60A30()
{
  result = qword_1EE0F30D0;
  if (!qword_1EE0F30D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F30D0);
  }

  return result;
}

unint64_t sub_1D9E60AB0()
{
  result = qword_1EE0F30E8;
  if (!qword_1EE0F30E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F30E8);
  }

  return result;
}

unint64_t sub_1D9E60B04()
{
  result = qword_1EE0F30F0[0];
  if (!qword_1EE0F30F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0F30F0);
  }

  return result;
}

unint64_t sub_1D9E60B84()
{
  result = qword_1EE0F30D8;
  if (!qword_1EE0F30D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F30D8);
  }

  return result;
}

unint64_t sub_1D9E60BD8()
{
  result = qword_1EE0F30E0;
  if (!qword_1EE0F30E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F30E0);
  }

  return result;
}

uint64_t sub_1D9E60C74(uint64_t a1)
{
  *(a1 + 8) = sub_1D9E57BA0(&qword_1EE0F3250, type metadata accessor for VisualActionPredictionServiceDefinition.PredictionRequest, &protocol conformance descriptor for VisualActionPredictionServiceDefinition.PredictionRequest);
  result = sub_1D9E57BA0(&qword_1EE0F3258, type metadata accessor for VisualActionPredictionServiceDefinition.PredictionRequest, &protocol conformance descriptor for VisualActionPredictionServiceDefinition.PredictionRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D9E60CF8(uint64_t a1)
{
  *(a1 + 8) = sub_1D9E57BA0(&qword_1EE0F3190, type metadata accessor for VisualActionPredictionServiceDefinition.PredictionResponse, &protocol conformance descriptor for VisualActionPredictionServiceDefinition.PredictionResponse);
  result = sub_1D9E57BA0(&qword_1EE0F3198, type metadata accessor for VisualActionPredictionServiceDefinition.PredictionResponse, &protocol conformance descriptor for VisualActionPredictionServiceDefinition.PredictionResponse);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D9E60DC4(uint64_t a1)
{
  *(a1 + 8) = sub_1D9E57BA0(&qword_1EE0F1F10, type metadata accessor for VisualActionPredictionServiceDefinition.ExecutionRequest, &protocol conformance descriptor for VisualActionPredictionServiceDefinition.ExecutionRequest);
  result = sub_1D9E57BA0(&qword_1EE0F1F18, type metadata accessor for VisualActionPredictionServiceDefinition.ExecutionRequest, &protocol conformance descriptor for VisualActionPredictionServiceDefinition.ExecutionRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D9E60E48(uint64_t a1)
{
  *(a1 + 8) = sub_1D9E57BA0(&qword_1ECB73570, type metadata accessor for VisualActionPredictionServiceDefinition.ExecutionResponse, &protocol conformance descriptor for VisualActionPredictionServiceDefinition.ExecutionResponse);
  result = sub_1D9E57BA0(&qword_1ECB73578, type metadata accessor for VisualActionPredictionServiceDefinition.ExecutionResponse, &protocol conformance descriptor for VisualActionPredictionServiceDefinition.ExecutionResponse);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D9E60ED0()
{
  result = qword_1ECB73580;
  if (!qword_1ECB73580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73580);
  }

  return result;
}

uint64_t sub_1D9E60F24(uint64_t a1)
{
  *(a1 + 8) = sub_1D9E57BA0(&qword_1EE0F1FC8, type metadata accessor for VisualActionPredictionServiceDefinition.FeedbackRequest, &protocol conformance descriptor for VisualActionPredictionServiceDefinition.FeedbackRequest);
  result = sub_1D9E57BA0(&qword_1EE0F1FD0, type metadata accessor for VisualActionPredictionServiceDefinition.FeedbackRequest, &protocol conformance descriptor for VisualActionPredictionServiceDefinition.FeedbackRequest);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D9E60FD4()
{
  result = qword_1ECB73588;
  if (!qword_1ECB73588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73588);
  }

  return result;
}

unint64_t sub_1D9E61028()
{
  result = qword_1ECB73590;
  if (!qword_1ECB73590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73590);
  }

  return result;
}

unint64_t sub_1D9E61080()
{
  result = qword_1ECB73598;
  if (!qword_1ECB73598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73598);
  }

  return result;
}

unint64_t sub_1D9E61100()
{
  result = qword_1EE0F1FF0;
  if (!qword_1EE0F1FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1FF0);
  }

  return result;
}

unint64_t sub_1D9E61154()
{
  result = qword_1EE0F1FF8[0];
  if (!qword_1EE0F1FF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0F1FF8);
  }

  return result;
}

unint64_t sub_1D9E611D4()
{
  result = qword_1ECB735A0;
  if (!qword_1ECB735A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB735A0);
  }

  return result;
}

unint64_t sub_1D9E61228()
{
  result = qword_1ECB735A8;
  if (!qword_1ECB735A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB735A8);
  }

  return result;
}

uint64_t sub_1D9E612C4(uint64_t a1)
{
  *(a1 + 8) = sub_1D9E57BA0(&qword_1EE0F2098, type metadata accessor for VisualActionPredictionServiceDefinition.CustomActionExecutionRequest, &protocol conformance descriptor for VisualActionPredictionServiceDefinition.CustomActionExecutionRequest);
  result = sub_1D9E57BA0(qword_1EE0F20A0, type metadata accessor for VisualActionPredictionServiceDefinition.CustomActionExecutionRequest, &protocol conformance descriptor for VisualActionPredictionServiceDefinition.CustomActionExecutionRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D9E61348(uint64_t a1)
{
  *(a1 + 8) = sub_1D9E57BA0(&qword_1ECB735B8, type metadata accessor for VisualActionPredictionServiceDefinition.CustomActionExecutionResponse, &protocol conformance descriptor for VisualActionPredictionServiceDefinition.CustomActionExecutionResponse);
  result = sub_1D9E57BA0(&qword_1ECB735C0, type metadata accessor for VisualActionPredictionServiceDefinition.CustomActionExecutionResponse, &protocol conformance descriptor for VisualActionPredictionServiceDefinition.CustomActionExecutionResponse);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D9E613D0()
{
  result = qword_1ECB735C8;
  if (!qword_1ECB735C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB735C8);
  }

  return result;
}

uint64_t sub_1D9E61424(uint64_t a1)
{
  *(a1 + 8) = sub_1D9E57BA0(&qword_1EE0F2138, type metadata accessor for VisualActionPredictionServiceDefinition.AcceleratedActionEligibilityRequest, &protocol conformance descriptor for VisualActionPredictionServiceDefinition.AcceleratedActionEligibilityRequest);
  result = sub_1D9E57BA0(&qword_1EE0F2140, type metadata accessor for VisualActionPredictionServiceDefinition.AcceleratedActionEligibilityRequest, &protocol conformance descriptor for VisualActionPredictionServiceDefinition.AcceleratedActionEligibilityRequest);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D9E614D4()
{
  result = qword_1ECB735D0;
  if (!qword_1ECB735D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB735D0);
  }

  return result;
}

unint64_t sub_1D9E61528()
{
  result = qword_1ECB735D8;
  if (!qword_1ECB735D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB735D8);
  }

  return result;
}

unint64_t sub_1D9E61580()
{
  result = qword_1EE0F3078;
  if (!qword_1EE0F3078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3078);
  }

  return result;
}

unint64_t sub_1D9E61600()
{
  result = qword_1EE0F30A8;
  if (!qword_1EE0F30A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F30A8);
  }

  return result;
}

unint64_t sub_1D9E61654()
{
  result = qword_1EE0F30B0;
  if (!qword_1EE0F30B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F30B0);
  }

  return result;
}

unint64_t sub_1D9E616D4()
{
  result = qword_1EE0F3080;
  if (!qword_1EE0F3080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3080);
  }

  return result;
}

unint64_t sub_1D9E61728()
{
  result = qword_1EE0F3088;
  if (!qword_1EE0F3088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3088);
  }

  return result;
}

unint64_t sub_1D9E61780()
{
  result = qword_1ECB735E0;
  if (!qword_1ECB735E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB735E0);
  }

  return result;
}

unint64_t sub_1D9E61800()
{
  result = qword_1EE0F1E60;
  if (!qword_1EE0F1E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1E60);
  }

  return result;
}

unint64_t sub_1D9E61854()
{
  result = qword_1EE0F1E68[0];
  if (!qword_1EE0F1E68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0F1E68);
  }

  return result;
}

unint64_t sub_1D9E618D4()
{
  result = qword_1ECB735E8;
  if (!qword_1ECB735E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB735E8);
  }

  return result;
}

unint64_t sub_1D9E61928()
{
  result = qword_1ECB735F0;
  if (!qword_1ECB735F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB735F0);
  }

  return result;
}

unint64_t sub_1D9E61980()
{
  result = qword_1ECB735F8;
  if (!qword_1ECB735F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB735F8);
  }

  return result;
}

unint64_t sub_1D9E61A00()
{
  result = qword_1EE0F1E30;
  if (!qword_1EE0F1E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1E30);
  }

  return result;
}

unint64_t sub_1D9E61A54()
{
  result = qword_1EE0F1E38;
  if (!qword_1EE0F1E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1E38);
  }

  return result;
}

unint64_t sub_1D9E61AD4()
{
  result = qword_1ECB73600;
  if (!qword_1ECB73600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73600);
  }

  return result;
}

unint64_t sub_1D9E61B28()
{
  result = qword_1ECB73608;
  if (!qword_1ECB73608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73608);
  }

  return result;
}

unint64_t sub_1D9E61B80()
{
  result = qword_1ECB73610;
  if (!qword_1ECB73610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73610);
  }

  return result;
}

unint64_t sub_1D9E61C00()
{
  result = qword_1EE0F1E50;
  if (!qword_1EE0F1E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1E50);
  }

  return result;
}

unint64_t sub_1D9E61C54()
{
  result = qword_1EE0F1E58;
  if (!qword_1EE0F1E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1E58);
  }

  return result;
}

unint64_t sub_1D9E61CD4()
{
  result = qword_1ECB73618;
  if (!qword_1ECB73618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73618);
  }

  return result;
}

unint64_t sub_1D9E61D28()
{
  result = qword_1ECB73620;
  if (!qword_1ECB73620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73620);
  }

  return result;
}

unint64_t sub_1D9E61D80()
{
  result = qword_1ECB73628;
  if (!qword_1ECB73628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73628);
  }

  return result;
}

unint64_t sub_1D9E61E00()
{
  result = qword_1EE0F1E40;
  if (!qword_1EE0F1E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1E40);
  }

  return result;
}

unint64_t sub_1D9E61E54()
{
  result = qword_1EE0F1E48;
  if (!qword_1EE0F1E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1E48);
  }

  return result;
}

uint64_t sub_1D9E61EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D9E61F2C()
{
  result = qword_1ECB73630;
  if (!qword_1ECB73630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73630);
  }

  return result;
}

unint64_t sub_1D9E61F80()
{
  result = qword_1ECB73638;
  if (!qword_1ECB73638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73638);
  }

  return result;
}

uint64_t sub_1D9E61FEC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73550, &qword_1D9F2FB40);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E607BC();
  sub_1D9F2BB8C();
  sub_1D9F2B95C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D9E62180(uint64_t a1)
{
  result = type metadata accessor for VisualContext(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D9E6226C(uint64_t a1)
{
  result = type metadata accessor for PredictedAction(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for VisualContext(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_29VisualActionPredictionSupport06CustomB8IdentityO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D9E623B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D9E62408(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1D9E62494(uint64_t a1)
{
  result = type metadata accessor for VisualContext(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_47Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_48Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_1D9E62624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_74Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 4)
    {
      return v11 - 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_75Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

uint64_t sub_1D9E6284C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D9E628D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1D9E6291C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AtomicFlag(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AtomicFlag(uint64_t result, int a2, int a3)
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

uint64_t sub_1D9E62A00(uint64_t a1, unsigned int a2)
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

uint64_t sub_1D9E62A5C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D9E62AEC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_1D9E62B48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
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

uint64_t sub_1D9E62BD8(uint64_t *a1, int a2)
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

uint64_t sub_1D9E62C20(uint64_t result, int a2, int a3)
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

uint64_t sub_1D9E62C7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1D9E62CC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VisualActionPredictionServiceDefinition.PopulateDatabaseRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VisualActionPredictionServiceDefinition.PopulateDatabaseRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D9E62FD4()
{
  result = qword_1ECB73660;
  if (!qword_1ECB73660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73660);
  }

  return result;
}

unint64_t sub_1D9E6302C()
{
  result = qword_1ECB73668;
  if (!qword_1ECB73668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73668);
  }

  return result;
}

unint64_t sub_1D9E63084()
{
  result = qword_1ECB73670;
  if (!qword_1ECB73670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73670);
  }

  return result;
}

unint64_t sub_1D9E630DC()
{
  result = qword_1ECB73678;
  if (!qword_1ECB73678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73678);
  }

  return result;
}

unint64_t sub_1D9E63134()
{
  result = qword_1ECB73680;
  if (!qword_1ECB73680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73680);
  }

  return result;
}

unint64_t sub_1D9E6318C()
{
  result = qword_1ECB73688;
  if (!qword_1ECB73688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73688);
  }

  return result;
}

unint64_t sub_1D9E631E4()
{
  result = qword_1ECB73690;
  if (!qword_1ECB73690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73690);
  }

  return result;
}

unint64_t sub_1D9E6323C()
{
  result = qword_1ECB73698;
  if (!qword_1ECB73698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73698);
  }

  return result;
}

unint64_t sub_1D9E63294()
{
  result = qword_1ECB736A0;
  if (!qword_1ECB736A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB736A0);
  }

  return result;
}

unint64_t sub_1D9E632EC()
{
  result = qword_1ECB736A8;
  if (!qword_1ECB736A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB736A8);
  }

  return result;
}

unint64_t sub_1D9E63344()
{
  result = qword_1ECB736B0;
  if (!qword_1ECB736B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB736B0);
  }

  return result;
}

unint64_t sub_1D9E6339C()
{
  result = qword_1ECB736B8;
  if (!qword_1ECB736B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB736B8);
  }

  return result;
}

unint64_t sub_1D9E633F4()
{
  result = qword_1ECB736C0;
  if (!qword_1ECB736C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB736C0);
  }

  return result;
}

unint64_t sub_1D9E6344C()
{
  result = qword_1ECB736C8;
  if (!qword_1ECB736C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB736C8);
  }

  return result;
}

unint64_t sub_1D9E634A4()
{
  result = qword_1ECB736D0;
  if (!qword_1ECB736D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB736D0);
  }

  return result;
}

unint64_t sub_1D9E634FC()
{
  result = qword_1ECB736D8;
  if (!qword_1ECB736D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB736D8);
  }

  return result;
}

unint64_t sub_1D9E63554()
{
  result = qword_1ECB736E0;
  if (!qword_1ECB736E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB736E0);
  }

  return result;
}

unint64_t sub_1D9E635AC()
{
  result = qword_1ECB736E8;
  if (!qword_1ECB736E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB736E8);
  }

  return result;
}

unint64_t sub_1D9E63604()
{
  result = qword_1ECB736F0;
  if (!qword_1ECB736F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB736F0);
  }

  return result;
}

unint64_t sub_1D9E6365C()
{
  result = qword_1ECB736F8;
  if (!qword_1ECB736F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB736F8);
  }

  return result;
}

unint64_t sub_1D9E636B4()
{
  result = qword_1ECB73700;
  if (!qword_1ECB73700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73700);
  }

  return result;
}

unint64_t sub_1D9E6370C()
{
  result = qword_1ECB73708;
  if (!qword_1ECB73708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73708);
  }

  return result;
}

unint64_t sub_1D9E63764()
{
  result = qword_1ECB73710;
  if (!qword_1ECB73710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73710);
  }

  return result;
}

unint64_t sub_1D9E637BC()
{
  result = qword_1ECB73718;
  if (!qword_1ECB73718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73718);
  }

  return result;
}

unint64_t sub_1D9E63814()
{
  result = qword_1ECB73720;
  if (!qword_1ECB73720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73720);
  }

  return result;
}

unint64_t sub_1D9E6386C()
{
  result = qword_1ECB73728;
  if (!qword_1ECB73728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73728);
  }

  return result;
}

unint64_t sub_1D9E638C4()
{
  result = qword_1ECB73730;
  if (!qword_1ECB73730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73730);
  }

  return result;
}

unint64_t sub_1D9E6391C()
{
  result = qword_1ECB73738;
  if (!qword_1ECB73738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73738);
  }

  return result;
}

unint64_t sub_1D9E63974()
{
  result = qword_1ECB73740;
  if (!qword_1ECB73740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73740);
  }

  return result;
}

unint64_t sub_1D9E639CC()
{
  result = qword_1ECB73748;
  if (!qword_1ECB73748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73748);
  }

  return result;
}

unint64_t sub_1D9E63A24()
{
  result = qword_1ECB73750;
  if (!qword_1ECB73750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73750);
  }

  return result;
}

unint64_t sub_1D9E63A7C()
{
  result = qword_1ECB73758;
  if (!qword_1ECB73758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73758);
  }

  return result;
}

unint64_t sub_1D9E63AD4()
{
  result = qword_1ECB73760;
  if (!qword_1ECB73760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73760);
  }

  return result;
}

unint64_t sub_1D9E63B2C()
{
  result = qword_1ECB73768;
  if (!qword_1ECB73768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73768);
  }

  return result;
}

unint64_t sub_1D9E63B84()
{
  result = qword_1ECB73770;
  if (!qword_1ECB73770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73770);
  }

  return result;
}

unint64_t sub_1D9E63BDC()
{
  result = qword_1EE0F3090;
  if (!qword_1EE0F3090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3090);
  }

  return result;
}

unint64_t sub_1D9E63C34()
{
  result = qword_1EE0F3098;
  if (!qword_1EE0F3098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3098);
  }

  return result;
}

unint64_t sub_1D9E63C8C()
{
  result = qword_1EE0F30B8;
  if (!qword_1EE0F30B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F30B8);
  }

  return result;
}

unint64_t sub_1D9E63CE4()
{
  result = qword_1EE0F30C0;
  if (!qword_1EE0F30C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F30C0);
  }

  return result;
}

unint64_t sub_1D9E63D3C()
{
  result = qword_1ECB73778;
  if (!qword_1ECB73778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73778);
  }

  return result;
}

unint64_t sub_1D9E63D94()
{
  result = qword_1ECB73780;
  if (!qword_1ECB73780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73780);
  }

  return result;
}

unint64_t sub_1D9E63DEC()
{
  result = qword_1ECB73788;
  if (!qword_1ECB73788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73788);
  }

  return result;
}

unint64_t sub_1D9E63E44()
{
  result = qword_1ECB73790;
  if (!qword_1ECB73790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73790);
  }

  return result;
}

unint64_t sub_1D9E63E9C()
{
  result = qword_1ECB73798;
  if (!qword_1ECB73798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73798);
  }

  return result;
}

unint64_t sub_1D9E63EF4()
{
  result = qword_1ECB737A0;
  if (!qword_1ECB737A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB737A0);
  }

  return result;
}

unint64_t sub_1D9E63F4C()
{
  result = qword_1ECB737A8;
  if (!qword_1ECB737A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB737A8);
  }

  return result;
}