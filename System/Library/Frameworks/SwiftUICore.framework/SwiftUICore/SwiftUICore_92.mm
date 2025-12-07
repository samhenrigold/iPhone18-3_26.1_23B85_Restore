uint64_t closure #1 in Sequence.sorted<A>(by:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  v13 = dispatch thunk of static Comparable.< infix(_:_:)();
  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
  return v13 & 1;
}

uint64_t closure #1 in Array.sort<A>(by:reversed:)(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  v6 = *(*a4 + *MEMORY[0x1E69E77B0] + 8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v17 - v11;
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  if (a3)
  {
    v13 = dispatch thunk of static Comparable.> infix(_:_:)();
  }

  else
  {
    v13 = dispatch thunk of static Comparable.< infix(_:_:)();
  }

  v14 = v13;
  v15 = *(v7 + 8);
  v15(v9, v6);
  v15(v12, v6);
  return v14 & 1;
}

uint64_t Array<A>.removingDuplicates()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Dictionary.init()();
  v3 = type metadata accessor for Array();

  swift_getWitnessTable(MEMORY[0x1E69E6350], v3);
  v4 = _ArrayProtocol.filter(_:)();

  return v4;
}

void Array<A>.removeDuplicates()(uint64_t a1, uint64_t a2)
{
  v3 = Array<A>.removingDuplicates()(*v2, *(a1 + 16), a2);

  *v2 = v3;
}

uint64_t EquatableOptionalObject.wrappedValue.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

uint64_t ConformingTuple.wrappedValue.getter@<X0>(uint64_t TupleTypeMetadata@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v4 = TupleTypeMetadata;
  v6 = *(TupleTypeMetadata + 16);
  if (v6 == 1)
  {
    v7 = *(*(TupleTypeMetadata + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v6)
    {
      v10 = 0;
      v11 = *(v4 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v6 < 4)
      {
        goto LABEL_9;
      }

      if (&v9[-v11] < 0x20)
      {
        goto LABEL_9;
      }

      v10 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      v12 = (v11 + 16);
      v13 = v9 + 16;
      v14 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15 = *v12;
        *(v13 - 1) = *(v12 - 1);
        *v13 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      if (v6 != v10)
      {
LABEL_9:
        v16 = v6 - v10;
        v17 = 8 * v10;
        v18 = &v9[8 * v10];
        v19 = (v11 + v17);
        do
        {
          v20 = *v19++;
          *v18 = v20;
          v18 += 8;
          --v16;
        }

        while (v16);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v7 = TupleTypeMetadata;
  }

  v21 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v24 + 16))(v23, v3, v7, v21);
  if (v6)
  {
    v26 = (*(v4 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v27 = (v7 + 32);
    v28 = v6;
    do
    {
      if (v6 == 1)
      {
        v29 = 0;
      }

      else
      {
        v29 = *v27;
      }

      v31 = *v26++;
      v30 = v31;
      v32 = *a2++;
      result = (*(*(v30 - 8) + 32))(v32, &v23[v29]);
      v27 += 4;
      --v28;
    }

    while (v28);
  }

  return result;
}

uint64_t ConformingTuple.wrappedValue.setter(uint64_t *TupleTypeMetadata, uint64_t a2)
{
  v4 = TupleTypeMetadata;
  v5 = *(a2 + 16);
  if (v5 == 1)
  {
    v6 = *(*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v5)
    {
      v9 = 0;
      v10 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v5 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v5 != v9)
      {
LABEL_9:
        v15 = v5 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(v6 - 8);
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5)
  {
    v24 = (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v25 = (v6 + 32);
    v26 = v5;
    do
    {
      if (v5 == 1)
      {
        v27 = 0;
      }

      else
      {
        v27 = *v25;
      }

      v29 = *v24++;
      v28 = v29;
      v30 = *v4++;
      (*(*(v28 - 8) + 32))(&v23[v27], v30);
      v25 += 4;
      --v26;
    }

    while (v26);
  }

  return (*(v20 + 40))(v2, v23, v6, v21);
}

uint64_t ConformingTuple.init(wrappedValue:)@<X0>(uint64_t *TupleTypeMetadata@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = TupleTypeMetadata;
  v40 = a4;
  if (a2 == 1)
  {
    v7 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v10 = 0;
      v11 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v9[-v11] < 0x20)
      {
        goto LABEL_9;
      }

      v10 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v12 = (v11 + 16);
      v13 = v9 + 16;
      v14 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15 = *v12;
        *(v13 - 1) = *(v12 - 1);
        *v13 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      if (v10 != a2)
      {
LABEL_9:
        v16 = a2 - v10;
        v17 = 8 * v10;
        v18 = &v9[8 * v10];
        v19 = (v11 + v17);
        do
        {
          v20 = *v19++;
          *v18 = v20;
          v18 += 8;
          --v16;
        }

        while (v16);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v7 = TupleTypeMetadata;
  }

  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for ConformingTuple(0, a2, a3, v24);
  v39 = &v37;
  v25 = *(v38 - 8);
  v26.n128_f64[0] = MEMORY[0x1EEE9AC00](v38);
  v28 = &v37 - v27;
  if (a2)
  {
    v29 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v30 = (v7 + 32);
    v31 = a2;
    do
    {
      if (a2 == 1)
      {
        v32 = 0;
      }

      else
      {
        v32 = *v30;
      }

      v34 = *v29++;
      v33 = v34;
      v35 = *v6++;
      (*(*(v33 - 8) + 32))(&v23[v32], v35);
      v30 += 4;
      --v31;
    }

    while (v31);
  }

  (*(v21 + 16))(v28, v23, v7, v26);
  (*(v25 + 32))(v40, v28, v38);
  return (*(v21 + 8))(v23, v7);
}

uint64_t ConformingTuple<each A>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v49 = a4;
  v7 = *(a2 + 16);
  if (v7 == 1)
  {
    TupleTypeMetadata = *(*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v9 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v12 = 0;
      v13 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v11[-v13] < 0x20)
      {
        goto LABEL_9;
      }

      v12 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v14 = (v13 + 16);
      v15 = v11 + 16;
      v16 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v17 = *v14;
        *(v15 - 1) = *(v14 - 1);
        *v15 = v17;
        v14 += 2;
        v15 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v7 != v12)
      {
LABEL_9:
        v18 = v7 - v12;
        v19 = 8 * v12;
        v20 = &v11[8 * v12];
        v21 = (v13 + v19);
        do
        {
          v22 = *v21++;
          *v20 = v22;
          v20 += 8;
          --v18;
        }

        while (v18);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    a1 = v9;
  }

  v44[1] = v44;
  v23 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](a1);
  v25 = v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v44[0] = v23;
  v27 = *(v23 + 16);
  v47 = v25;
  v45 = TupleTypeMetadata;
  v28 = v27(v25, v5, TupleTypeMetadata);
  if (v7)
  {
    v29 = v7;
    v30 = (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v31 = v49 & 0xFFFFFFFFFFFFFFFELL;
    v32 = 32;
    v33 = v29;
    v46 = v29;
    while (1)
    {
      v48 = v44;
      v49 = v33;
      v34 = *v30;
      v35 = *(*v30 - 8);
      v36.n128_f64[0] = MEMORY[0x1EEE9AC00](v28);
      v38 = v44 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
      v40 = v39 == 1 ? 0 : *(v45 + v32);
      (*(v35 + 16))(v38, &v47[v40], v34, v36);
      __swift_mutable_project_boxed_opaque_existential_1(v50, v50[3]);
      v41 = v51;
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      v51 = v41;
      v42 = v49;
      if (v41)
      {
        break;
      }

      v28 = (*(v35 + 8))(v38, v34);
      v32 += 16;
      v31 += 8;
      ++v30;
      v33 = v42 - 1;
      if (!v33)
      {
        goto LABEL_19;
      }
    }

    (*(v35 + 8))(v38, v34);
    (*(v44[0] + 8))(v47, v45);
    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  else
  {
LABEL_19:
    (*(v44[0] + 8))(v47, v45);
    return __swift_destroy_boxed_opaque_existential_1(v50);
  }
}

uint64_t ConformingTuple<each A>.init(from:)@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a5;
  v40 = a4;
  if (a2 == 1)
  {
    TupleTypeMetadata = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v11 = 0;
      v12 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v11 != a2)
      {
LABEL_9:
        v17 = a2 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v38 = TupleTypeMetadata;
  v39 = &v36;
  v48 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ConformingTuple(0, a2, a3, v24);
  v46 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v36 - v26;
  v41 = a3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v28 = v45;
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v42 = v27;
  v43 = v25;
  v44 = &v36;
  v45 = v23;
  v36 = a1;
  if (a2)
  {
    v30 = 0;
    v40 &= ~1uLL;
    v41 &= ~1uLL;
    v31 = v38 + 16;
    do
    {
      __swift_mutable_project_boxed_opaque_existential_1(v47, v47[3]);
      dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
      ++v30;
      v31 += 16;
      v32 = v43;
      v33 = v48;
      v34 = v46;
      v35 = v42;
    }

    while (a2 != v30);
  }

  else
  {
    v32 = v43;
    v33 = v48;
    v34 = v46;
    v35 = v42;
  }

  (*(v33 + 32))(v35, v45, v38);
  __swift_destroy_boxed_opaque_existential_1(v47);
  (*(v34 + 32))(v37, v35, v32);
  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t static ConformingTuple<each A>.== infix(_:_:)(uint64_t TupleTypeMetadata, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v58 = a5;
  v6 = a3;
  if (a3 == 1)
  {
    v8 = *(a4 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v6)
    {
      v11 = 0;
      v12 = a4 & 0xFFFFFFFFFFFFFFFELL;
      if (v6 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v11 != v6)
      {
LABEL_9:
        v17 = v6 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v8 = TupleTypeMetadata;
  }

  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v24 = v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = *(v22 + 16);
  v53 = v50 - v28;
  v27(v26);
  v54 = v24;
  v29 = (v27)(v24, a2, v8);
  if (v6)
  {
    v50[1] = v50;
    v51 = v22;
    v30 = (a4 & 0xFFFFFFFFFFFFFFFELL);
    v31 = (v58 & 0xFFFFFFFFFFFFFFFELL);
    v52 = v8;
    v32 = (v8 + 32);
    v33 = v6;
    v58 = v6;
    while (1)
    {
      v56 = v50;
      v34 = *v30;
      v57 = *v31;
      v35 = *(v34 - 8);
      MEMORY[0x1EEE9AC00](v29);
      v37 = v50 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
      v55 = v50;
      v39.n128_f64[0] = MEMORY[0x1EEE9AC00](v38);
      v41 = v50 - v40;
      v42 = v6 == 1 ? 0 : *v32;
      v43 = *(v35 + 16);
      v43(v37, &v53[v42], v34, v39);
      v44 = v58 == 1 ? 0 : *v32;
      (v43)(v41, &v54[v44], v34);
      v45 = dispatch thunk of static Equatable.== infix(_:_:)();
      v46 = *(v35 + 8);
      v46(v41, v34);
      v29 = (v46)(v37, v34);
      if ((v45 & 1) == 0)
      {
        break;
      }

      v32 += 4;
      ++v31;
      ++v30;
      --v33;
      v6 = v58;
      if (!v33)
      {
        v47 = 1;
        goto LABEL_25;
      }
    }

    v47 = 0;
LABEL_25:
    v22 = v51;
    v8 = v52;
  }

  else
  {
    v47 = 1;
  }

  v48 = *(v22 + 8);
  v48(v54, v8);
  v48(v53, v8);
  return v47;
}

uint64_t ConformingTuple<each A>.hash(into:)(uint64_t TupleTypeMetadata, uint64_t a2, uint64_t a3)
{
  v38 = TupleTypeMetadata;
  v5 = *(a2 + 16);
  if (v5 != 1)
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v5)
    {
      v8 = 0;
      v9 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v5 < 4)
      {
        goto LABEL_8;
      }

      if (&v7[-v9] < 0x20)
      {
        goto LABEL_8;
      }

      v8 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      v10 = (v9 + 16);
      v11 = v7 + 16;
      v12 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v13 = *v10;
        *(v11 - 1) = *(v10 - 1);
        *v11 = v13;
        v10 += 2;
        v11 += 2;
        v12 -= 4;
      }

      while (v12);
      if (v5 != v8)
      {
LABEL_8:
        v14 = v5 - v8;
        v15 = 8 * v8;
        v16 = &v7[8 * v8];
        v17 = (v9 + v15);
        do
        {
          v18 = *v17++;
          *v16 = v18;
          v16 += 8;
          --v14;
        }

        while (v14);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v19 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v36 = v22;
  v37 = v21;
  v23 = *(v22 + 16);
  v39 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v23(v19);
  if (v5)
  {
    v25 = (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v26 = a3 & 0xFFFFFFFFFFFFFFFELL;
    v27 = (v37 + 32);
    v28 = v5;
    do
    {
      v30 = *v25;
      v31 = *(*v25 - 8);
      MEMORY[0x1EEE9AC00](v24);
      v33 = &v36 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v34 == 1)
      {
        v29 = 0;
      }

      else
      {
        v29 = *v27;
      }

      (*(v31 + 16))(v33, &v39[v29], v30);
      dispatch thunk of Hashable.hash(into:)();
      v24 = (*(v31 + 8))(v33, v30);
      v27 += 4;
      v26 += 8;
      ++v25;
      --v28;
    }

    while (v28);
  }

  return (*(v36 + 8))(v39, v37);
}

Swift::Int ConformingTuple<each A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  ConformingTuple<each A>.hash(into:)(v5, a1, a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConformingTuple<Pack{repeat A}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  Hasher.init(_seed:)();
  ConformingTuple<each A>.hash(into:)(v6, a2, v4);
  return Hasher._finalize()();
}

uint64_t areEqual<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18[-v8];
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of Any(a2, v18);
  v14 = swift_dynamicCast();
  v15 = *(v10 + 56);
  if (v14)
  {
    v15(v9, 0, 1, a3);
    (*(v10 + 32))(v13, v9, a3);
    v16 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v10 + 8))(v13, a3);
  }

  else
  {
    v15(v9, 1, 1, a3);
    (*(v7 + 8))(v9, v6);
    v16 = 0;
  }

  return v16 & 1;
}

unint64_t *specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v24 = result;
  v25 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(a3 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    outlined init with copy of AnyTrackedValue(*(a3 + 56) + 40 * v14, v29);
    v27[0] = v16;
    v27[1] = v17;
    outlined init with copy of AnyTrackedValue(v29, v28);
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    DynamicType = swift_getDynamicType();
    outlined init with copy of AnyTrackedValue(v30, v26);
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    v19 = swift_getDynamicType();
    v20 = v26[4];
    __swift_destroy_boxed_opaque_existential_1(v26);
    v21 = (*(v20 + 8))(v19, v20);
    outlined destroy of (key: EventID, value: EventType)(v27, type metadata accessor for (key: EventID, value: EventType));
    result = __swift_destroy_boxed_opaque_existential_1(v29);
    if (DynamicType == v21)
    {
      *(v24 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v24, a2, v25, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v24, a2, v25, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

{
  v26 = result;
  v33 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_13:
    v16 = v13 | (v6 << 6);
    v17 = (*(a3 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    outlined init with copy of AnyTrackedValue(*(a3 + 56) + 40 * v16, v32);
    v30[0] = v18;
    v30[1] = v19;
    outlined init with copy of AnyTrackedValue(v32, v31);
    __swift_project_boxed_opaque_existential_1(v31, v31[3]);
    DynamicType = swift_getDynamicType();
    swift_beginAccess();
    v21 = *(a4 + 48);
    if (*(v21 + 16) && (v22 = specialized __RawDictionaryStorage.find<A>(_:)(DynamicType), (v23 & 1) != 0))
    {
      outlined init with copy of AnyTrackedValue(*(v21 + 56) + 40 * v22, &v27);
    }

    else
    {
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
    }

    swift_endAccess();
    outlined destroy of (key: EventID, value: EventType)(v30, type metadata accessor for (key: EventID, value: EventType));
    v12 = *(&v28 + 1);
    outlined destroy of (key: EventID, value: EventType)(&v27, type metadata accessor for ForwardedEventDispatcher?);
    result = __swift_destroy_boxed_opaque_existential_1(v32);
    if (!v12)
    {
      *(v26 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v33++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v26, a2, v33, a3);
      }
    }
  }

  v14 = v6;
  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v26, a2, v33, a3);
    }

    v15 = *(v7 + 8 * v6);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

{
  v19 = result;
  v24 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    outlined init with copy of AnyHashable(*(a3 + 48) + 40 * v15, v23);
    v16 = *(*(a3 + 56) + 8 * v15);
    outlined init with copy of AnyHashable(v23, v21);
    *(&v22 + 1) = v16;
    v20[1] = v21[1];
    v20[2] = v22;
    v20[0] = v21[0];
    swift_retain_n();

    outlined destroy of AnyHashable(v20);

    result = outlined destroy of AnyHashable(v23);
    if (v16 != a4)
    {
      *(v19 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v19, a2, v24, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v19, a2, v24, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI7EventIDVAH0K4Type_pG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i3UI7k9IDV_AI0J4M5_pTG5ALxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjhK_pIsgnndzo_Tf1nc_n03_s7i4UI19k103BindingManagerCAAE24dispatchNonGestureEvents33_D63F4C292364B83D9F441CFC1A31B3F3LLyShyAA0C2IDVGSDyAgA0C4M32_pGFSbAG3key_AaI_p5valuet_tXEfU_AH09ForwardedK10Dispatcher_pTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI7EventIDVAH0K4Type_pG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i3UI7k9IDV_AI0J4M5_pTG5ALxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjhK_pIsgnndzo_Tf1nc_n03_s7i4UI19k90BindingManagerC14sendDownstream33_D63F4C292364B83D9F441CFC1A31B3F3LLyShyAA0C2IDVGSDyAgA0C4M32_pGFSbAG3key_AaI_p5valuet_tXEfU_AH0K14BindingManagerCTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = specialized closure #1 in _NativeDictionary.filter(_:)(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI7EventIDVAH0K4Type_pG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i3UI7k9IDV_AI0J4M5_pTG5ALxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjhK_pIsgnndzo_Tf1nc_n03_s7i4UI17k97FilterEvents33_DE98B8F5384114B687077BAB0EFA27D9LLV5valueAA08FilteredE0ACLLVvgSbAA0C2IDV3key_AA0C4m28_pAEt_tXEfU_AA08TappableC0V_Y0AH0K12FilterEvents33_DE98B8F5384114B687077BAB0EFA27D9LLVyAH08TappableK0VGTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a4;
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3, v4);

    return v8;
  }

  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI7EventIDVAH0K4Type_pG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i3UI7k9IDV_AI0J4M5_pTG5ALxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjhK_pIsgnndzo_Tf1nc_n03_s7i94UI13LayoutGesturePAAE11childEvents33_05F3243F43C616B77CCF383885E80E96LL6events5index3boxSDyAA7k8IDVAA0Q4M52_pGAL_SiAA0cD3BoxAELLCtFSbAJ3key_AaK_p5valuet_tXEfU_AH16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC5ChildVTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    outlined init with copy of LayoutGestureBox.Child(a4, &v9);
    v8 = specialized closure #1 in _NativeDictionary.filter(_:)(v7, a2, a3, a4);

    outlined destroy of LayoutGestureBox.Child(a4);
    outlined destroy of LayoutGestureBox.Child(a4);
    return v8;
  }

  return result;
}

void lazy protocol witness table accessor for type Date and conformance Date()
{
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    v2 = type metadata accessor for Date();
    swift_getWitnessTable(MEMORY[0x1E6969548], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type Date and conformance Date);
  }
}

BOOL partial apply for closure #1 in Array<A>.removingDuplicates()(uint64_t a1)
{
  type metadata accessor for Dictionary();
  Dictionary.updateValue(_:forKey:)();
  return v2 == 2;
}

void lazy protocol witness table accessor for type ArrayID and conformance ArrayID()
{
  if (!lazy protocol witness table cache variable for type ArrayID and conformance ArrayID)
  {
    swift_getWitnessTable(protocol conformance descriptor for ArrayID, &type metadata for ArrayID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ArrayID and conformance ArrayID);
  }
}

double associated type witness table accessor for Collection.SubSequence : RandomAccessCollection in UnsafeMutableBufferProjectionPointer<A, B>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableBufferProjectionPointer<A, B>);
  v5 = v3;
  return swift_getWitnessTable(MEMORY[0x1E69E74F0], a1, &v5, WitnessTable);
}

double associated type witness table accessor for Collection.SubSequence : MutableCollection in UnsafeMutableBufferProjectionPointer<A, B>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableBufferProjectionPointer<A, B>);
  v5 = v3;
  return swift_getWitnessTable(MEMORY[0x1E69E74E0], a1, &v5, WitnessTable);
}

double associated type witness table accessor for Collection.SubSequence : BidirectionalCollection in UnsafeMutableBufferProjectionPointer<A, B>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableBufferProjectionPointer<A, B>);
  v5 = v3;
  return swift_getWitnessTable(MEMORY[0x1E69E74D8], a1, &v5, WitnessTable);
}

double associated type witness table accessor for Collection.Indices : BidirectionalCollection in CountingIndexCollection<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CountingIndexCollection<A>);
  v5 = v3;
  return swift_getWitnessTable(MEMORY[0x1E69E5EB0], a1, &v5, WitnessTable);
}

double associated type witness table accessor for Collection.SubSequence : BidirectionalCollection in CountingIndexCollection<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CountingIndexCollection<A>);
  v5 = v3;
  return swift_getWitnessTable(MEMORY[0x1E69E74D8], a1, &v5, WitnessTable);
}

double associated type witness table accessor for Collection.SubSequence : RandomAccessCollection in CollectionOfTwo<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfTwo<A>);
  v5 = v3;
  return swift_getWitnessTable(MEMORY[0x1E69E74F0], a1, &v5, WitnessTable);
}

double associated type witness table accessor for Collection.SubSequence : MutableCollection in CollectionOfTwo<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfTwo<A>);
  v5 = v3;
  return swift_getWitnessTable(MEMORY[0x1E69E74E0], a1, &v5, WitnessTable);
}

double associated type witness table accessor for Collection.SubSequence : BidirectionalCollection in CollectionOfTwo<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfTwo<A>);
  v5 = v3;
  return swift_getWitnessTable(MEMORY[0x1E69E74D8], a1, &v5, WitnessTable);
}

double base witness table accessor for Equatable in <each A> ConformingTuple<Pack{repeat A}>(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2)
  {
    v6 = (*(v1 - 8) & 0xFFFFFFFFFFFFFFFELL);
    v7 = v5;
    do
    {
      v8 = *v6++;
      *v7++ = *(v8 + 8);
      --v2;
    }

    while (v2);
  }

  v10[1] = v5;
  return swift_getWitnessTable(protocol conformance descriptor for <each A> ConformingTuple<Pack{repeat A}>, v3);
}

uint64_t *initializeBufferWithCopyOfBuffer for CountingIndex(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 9 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = *(v10 + 8);
    v12 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v12 = *v10;
    *(v12 + 8) = v11;
  }

  return v3;
}

uint64_t initializeWithCopy for CountingIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  *(v7 + 8) = v9;
  return a1;
}

uint64_t assignWithCopy for CountingIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  *(v7 + 8) = v9;
  return a1;
}

uint64_t initializeWithTake for CountingIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  *(v7 + 8) = v9;
  return a1;
}

uint64_t assignWithTake for CountingIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  *(v7 + 8) = v9;
  return a1;
}

uint64_t *assignWithTake for IndirectOptional(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for IndirectOptional(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IndirectOptional(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for Cache3(uint64_t a1)
{
  swift_getTupleTypeMetadata2();
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout3();
    v4 = &v3;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for Cache3(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v39 = *(a3 + 16);
  v40 = *(a3 + 24);
  v5 = *(v39 - 8);
  v6 = *(v5 + 84);
  v7 = *(v40 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v38 = *(v5 + 64) + v9;
  v10 = v38 & ~v9;
  v11 = *(v7 + 64);
  v12 = v10 + v11;
  if (v8 | v6)
  {
    v13 = v10 + v11;
  }

  else
  {
    v13 = v12 + 1;
  }

  v14 = (*(v5 + 80) | v9);
  v15 = ~v14;
  v16 = v13 + v14;
  if (v14 <= 7 && ((*(v5 + 80) | v9) & 0x100000) == 0 && ((v13 + v14 + ((v13 + v14) & ~v14)) & ~v14) + v13 <= 0x18)
  {
    v36 = ~v9;
    v37 = v8 | v6;
    if (v8 | v6)
    {
      if (v6 >= v8)
      {
        if (!(*(v5 + 48))(a2, v6, v39))
        {
LABEL_38:
          (*(v5 + 16))(a1, a2, v39);
          (*(v7 + 16))((a1 + v38) & v36, (a2 + v38) & v36, v40);
          if (v37)
          {
            v24 = ((a1 + v16) & v15);
            v25 = ((a2 + v16) & v15);
            if (v6 >= v8)
            {
LABEL_40:
              if (!(*(v5 + 48))(v25, v6, v39))
              {
                goto LABEL_63;
              }

              goto LABEL_59;
            }

LABEL_30:
            if (!(*(v7 + 48))(&v25[v38] & v36, v8, v40))
            {
LABEL_63:
              (*(v5 + 16))(v24, v25, v39);
              (*(v7 + 16))(&v24[v38] & v36, &v25[v38] & v36, v40);
              if (v37)
              {
                v29 = (&v24[v16] & v15);
                v30 = (&v25[v16] & v15);
                if (v6 >= v8)
                {
LABEL_65:
                  if (!(*(v5 + 48))(v30, v6, v39))
                  {
LABEL_85:
                    (*(v5 + 16))(v29, v30, v39);
                    (*(v7 + 16))(&v29[v38] & v36, &v30[v38] & v36, v40);
                    if (!v37)
                    {
                      v29[v12] = 0;
                    }

                    return a1;
                  }

LABEL_84:
                  memcpy(v29, v30, v13);
                  return a1;
                }

LABEL_61:
                if (!(*(v7 + 48))(&v30[v38] & v36, v8, v40))
                {
                  goto LABEL_85;
                }

                goto LABEL_84;
              }

              v24[v12] = 0;
              v29 = (&v24[v16] & v15);
              v30 = (&v25[v16] & v15);
              goto LABEL_68;
            }

LABEL_59:
            memcpy(v24, v25, v13);
            v29 = (&v24[v16] & v15);
            v30 = (&v25[v16] & v15);
            if (v37)
            {
              if (v6 >= v8)
              {
                goto LABEL_65;
              }

              goto LABEL_61;
            }

LABEL_68:
            if (!v30[v12])
            {
              goto LABEL_85;
            }

            v31 = (v30[v12] - 1) << (8 * v12);
            if (v12 > 3)
            {
              v31 = 0;
            }

            if (v12)
            {
              v32 = v12 <= 3 ? v12 : 4;
              if (v32 > 2)
              {
                v33 = v32 == 3 ? *v30 | (v30[2] << 16) : *v30;
              }

              else
              {
                v33 = v32 == 1 ? *v30 : *v30;
              }
            }

            else
            {
              v33 = 0;
            }

            if ((v33 | v31) == 0xFFFFFFFF)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          }

          *(a1 + v12) = 0;
          v24 = ((a1 + v16) & v15);
          v25 = ((a2 + v16) & v15);
          goto LABEL_43;
        }
      }

      else if (!(*(v7 + 48))((a2 + v38) & v36, v8, v40))
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (!*(a2 + v12))
      {
        goto LABEL_38;
      }

      v21 = (*(a2 + v12) - 1) << (8 * v12);
      if (v12 > 3)
      {
        v21 = 0;
      }

      if (v12)
      {
        v22 = v12 <= 3 ? v12 : 4;
        if (v22 > 2)
        {
          v23 = v22 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
        }

        else
        {
          v23 = v22 == 1 ? *a2 : *a2;
        }
      }

      else
      {
        v23 = 0;
      }

      if ((v23 | v21) == 0xFFFFFFFF)
      {
        goto LABEL_38;
      }
    }

    memcpy(a1, a2, v13);
    v24 = ((a1 + v16) & v15);
    v25 = ((a2 + v16) & v15);
    if (v37)
    {
      if (v6 >= v8)
      {
        goto LABEL_40;
      }

      goto LABEL_30;
    }

LABEL_43:
    if (!v25[v12])
    {
      goto LABEL_63;
    }

    v26 = (v25[v12] - 1) << (8 * v12);
    if (v12 > 3)
    {
      v26 = 0;
    }

    if (v12)
    {
      v27 = v12 <= 3 ? v12 : 4;
      if (v27 > 2)
      {
        v28 = v27 == 3 ? *v25 | (v25[2] << 16) : *v25;
      }

      else
      {
        v28 = v27 == 1 ? *v25 : *v25;
      }
    }

    else
    {
      v28 = 0;
    }

    if ((v28 | v26) == 0xFFFFFFFF)
    {
      goto LABEL_63;
    }

    goto LABEL_59;
  }

  v19 = *a2;
  *a1 = *a2;
  v20 = v19 + ((v14 + 16) & v15);

  return v20;
}

uint64_t destroy for Cache3(unsigned __int16 *a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v32 = *(a2 + 16);
  v4 = *(v32 - 8);
  v5 = *(v4 + 84);
  v6 = *(v3 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v30 = ~v8;
  v31 = v6;
  v9 = *(v4 + 64) + v8;
  v10 = (v9 & v30) + *(v6 + 64);
  v11 = v7 | v5;
  if (v7 | v5)
  {
    if (v5 >= v7)
    {
      if ((*(v4 + 48))(a1, v5, v32))
      {
        goto LABEL_17;
      }
    }

    else if ((*(v6 + 48))((a1 + v9) & v30, v7, v3))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (!*(a1 + v10))
  {
    goto LABEL_16;
  }

  v12 = (*(a1 + v10) - 1) << (8 * v10);
  if (v10 > 3)
  {
    v12 = 0;
  }

  if (v10)
  {
    v13 = v10 <= 3 ? (v9 & v30) + *(v6 + 64) : 4;
    if (v13 > 2)
    {
      v14 = v13 == 3 ? *a1 | (*(a1 + 2) << 16) : *a1;
    }

    else
    {
      v14 = v13 == 1 ? *a1 : *a1;
    }
  }

  else
  {
    v14 = 0;
  }

  if ((v14 | v12) == 0xFFFFFFFF)
  {
LABEL_16:
    (*(v4 + 8))(a1, v32);
    (*(v31 + 8))((a1 + v9) & v30, v3);
  }

LABEL_17:
  if (v11)
  {
    v15 = v10;
  }

  else
  {
    v15 = v10 + 1;
  }

  v16 = *(v4 + 80) | v8;
  v17 = v15 + v16;
  v18 = ~v16;
  v19 = ((a1 + v15 + v16) & ~v16);
  if (v11)
  {
    if (v5 >= v7)
    {
      if ((*(v4 + 48))(v19, v5, v32))
      {
        goto LABEL_36;
      }
    }

    else if ((*(v31 + 48))((v19 + v9) & v30, v7, v3))
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (!*(v19 + v10))
  {
    goto LABEL_35;
  }

  v20 = (*(v19 + v10) - 1) << (8 * v10);
  if (v10 > 3)
  {
    v20 = 0;
  }

  if (v10)
  {
    v21 = v10 <= 3 ? v10 : 4;
    if (v21 > 2)
    {
      v22 = v21 == 3 ? *v19 | (*(v19 + 2) << 16) : *v19;
    }

    else
    {
      v22 = v21 == 1 ? *v19 : *v19;
    }
  }

  else
  {
    v22 = 0;
  }

  if ((v22 | v20) == 0xFFFFFFFF)
  {
LABEL_35:
    (*(v4 + 8))(v19, v32);
    (*(v31 + 8))((v19 + v9) & v30, v3);
  }

LABEL_36:
  v23 = ((v19 + v17) & v18);
  if (v11)
  {
    if (v5 >= v7)
    {
      result = (*(v4 + 48))(v23, v5, v32);
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = (*(v31 + 48))((v23 + v9) & v30, v7, v3);
      if (result)
      {
        return result;
      }
    }

    goto LABEL_72;
  }

  if (!*(v23 + v10))
  {
    goto LABEL_72;
  }

  v25 = (*(v23 + v10) - 1) << (8 * v10);
  if (v10 > 3)
  {
    v25 = 0;
  }

  if (v10)
  {
    v26 = v10 <= 3 ? v10 : 4;
    if (v26 > 2)
    {
      v27 = v26 == 3 ? *v23 | (*(v23 + 2) << 16) : *v23;
    }

    else
    {
      v27 = v26 == 1 ? *v23 : *v23;
    }
  }

  else
  {
    v27 = 0;
  }

  v28 = v27 | v25;
  result = (v28 + 1);
  if (v28 == -1)
  {
LABEL_72:
    (*(v4 + 8))(v23, v32);
    v29 = *(v31 + 8);

    return v29((v23 + v9) & v30, v3);
  }

  return result;
}

char *initializeWithCopy for Cache3(char *a1, unsigned __int16 *a2, uint64_t a3)
{
  v39 = *(a3 + 24);
  v40 = *(a3 + 16);
  v5 = *(v40 - 8);
  v6 = *(v5 + 84);
  v7 = *(v39 - 8);
  v8 = *(v7 + 84);
  v38 = v7;
  v9 = *(v7 + 80);
  v36 = *(v5 + 64) + v9;
  v37 = ~v9;
  v10 = (v36 & v37) + *(v7 + 64);
  v11 = v8 | v6;
  if (!(v8 | v6))
  {
    if (!*(a2 + v10))
    {
      goto LABEL_26;
    }

    v12 = (*(a2 + v10) - 1) << (8 * v10);
    if (v10 > 3)
    {
      v12 = 0;
    }

    if (v10)
    {
      v13 = v10 <= 3 ? v10 : 4;
      if (v13 > 2)
      {
        v14 = v13 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
      }

      else
      {
        v14 = v13 == 1 ? *a2 : *a2;
      }
    }

    else
    {
      v14 = 0;
    }

    if ((v14 | v12) == 0xFFFFFFFF)
    {
      goto LABEL_26;
    }

    goto LABEL_16;
  }

  if (v6 >= v8)
  {
    if (!(*(v5 + 48))(a2, v6, v40))
    {
      goto LABEL_26;
    }

LABEL_16:
    if (v11)
    {
      v15 = v10;
    }

    else
    {
      v15 = v10 + 1;
    }

    memcpy(a1, a2, v15);
    goto LABEL_28;
  }

  if ((*(v38 + 48))((a2 + v36) & v37, v8, v39))
  {
    goto LABEL_16;
  }

LABEL_26:
  (*(v5 + 16))(a1, a2, v40);
  (*(v38 + 16))(&a1[v36] & v37, (a2 + v36) & v37, v39);
  if (!v11)
  {
    a1[v10] = 0;
  }

LABEL_28:
  if (v11)
  {
    v16 = v10;
  }

  else
  {
    v16 = v10 + 1;
  }

  v17 = v5;
  v18 = *(v5 + 80) | v9;
  v34 = a1;
  __n = v16;
  v19 = v16 + v18;
  v20 = &a1[v16 + v18];
  v21 = ~v18;
  v22 = (v20 & ~v18);
  v23 = ((a2 + v16 + v18) & ~v18);
  if (v11)
  {
    if (v6 >= v8)
    {
      if (!(*(v17 + 48))(v23, v6, v40))
      {
        goto LABEL_54;
      }
    }

    else if (!(*(v38 + 48))(&v23[v36] & v37, v8, v39))
    {
      goto LABEL_54;
    }

LABEL_46:
    memcpy(v22, v23, __n);
    v27 = ((v22 + v19) & v21);
    v28 = (&v23[v19] & v21);
    if (v11)
    {
      goto LABEL_56;
    }

LABEL_62:
    v29 = v34;
    if (!*(v28 + v10))
    {
      goto LABEL_79;
    }

    v30 = (*(v28 + v10) - 1) << (8 * v10);
    if (v10 > 3)
    {
      v30 = 0;
    }

    if (v10)
    {
      v31 = v10 <= 3 ? v10 : 4;
      if (v31 > 2)
      {
        v32 = v31 == 3 ? *v28 | (*(v28 + 2) << 16) : *v28;
      }

      else
      {
        v32 = v31 == 1 ? *v28 : *v28;
      }
    }

    else
    {
      v32 = 0;
    }

    if ((v32 | v30) == 0xFFFFFFFF)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  if (v23[v10])
  {
    v24 = (v23[v10] - 1) << (8 * v10);
    if (v10 > 3)
    {
      v24 = 0;
    }

    if (v10)
    {
      v25 = v10 <= 3 ? v10 : 4;
      if (v25 > 2)
      {
        v26 = v25 == 3 ? *v23 | (v23[2] << 16) : *v23;
      }

      else
      {
        v26 = v25 == 1 ? *v23 : *v23;
      }
    }

    else
    {
      v26 = 0;
    }

    if ((v26 | v24) != 0xFFFFFFFF)
    {
      goto LABEL_46;
    }
  }

LABEL_54:
  (*(v17 + 16))(v22, v23, v40);
  (*(v38 + 16))((v22 + v36) & v37, &v23[v36] & v37, v39);
  if (!v11)
  {
    *(v22 + v10) = 0;
    v27 = ((v22 + v19) & v21);
    v28 = (&v23[v19] & v21);
    goto LABEL_62;
  }

  v27 = ((v22 + v19) & v21);
  v28 = (&v23[v19] & v21);
LABEL_56:
  v29 = v34;
  if (v6 < v8)
  {
    if (!(*(v38 + 48))((v28 + v36) & v37, v8, v39))
    {
      goto LABEL_79;
    }

LABEL_78:
    memcpy(v27, v28, __n);
    return v29;
  }

  if ((*(v17 + 48))(v28, v6, v40))
  {
    goto LABEL_78;
  }

LABEL_79:
  (*(v17 + 16))(v27, v28, v40);
  (*(v38 + 16))((v27 + v36) & v37, (v28 + v36) & v37, v39);
  if (!v11)
  {
    *(v27 + v10) = 0;
  }

  return v29;
}

unsigned __int8 *assignWithCopy for Cache3(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a2;
  v81 = *(a3 + 16);
  v4 = *(v81 - 8);
  v76 = *(a3 + 24);
  v78 = *(v76 - 8);
  v5 = *(v78 + 80);
  v79 = *(v4 + 64) + v5;
  v80 = ~v5;
  v6 = (v79 & v80) + *(v78 + 64);
  v77 = *(v4 + 84);
  v7 = *(v78 + 84) | v77;
  v72 = v6;
  v73 = v4;
  v74 = v7;
  v75 = *(v78 + 84);
  if (v7)
  {
    if (v77 >= v75)
    {
      v9 = *(v4 + 48);
      v10 = v9(a1, v77, v81);
      v11 = a2;
      v12 = v77;
      v13 = v81;
    }

    else
    {
      v9 = *(v78 + 48);
      v10 = v9((&a1[v79] & v80), v75, v76);
      v11 = ((a2 + v79) & v80);
      v12 = v75;
      v13 = v76;
    }

    v17 = v9(v11, v12, v13);
    v3 = a2;
    if (v10)
    {
      v4 = v73;
      if (v17)
      {
LABEL_17:
        if (v7)
        {
          v18 = v6;
        }

        else
        {
          v18 = v6 + 1;
        }

        memcpy(a1, v3, v18);
        v19 = v76;
        goto LABEL_67;
      }

      goto LABEL_65;
    }

    goto LABEL_56;
  }

  if (!a1[v6])
  {
    goto LABEL_37;
  }

  v14 = (a1[v6] - 1) << (8 * v6);
  if (v6 > 3)
  {
    v14 = 0;
  }

  if (v6)
  {
    v15 = v6 <= 3 ? v6 : 4;
    if (v15 > 2)
    {
      v16 = v15 == 3 ? *a1 | (a1[2] << 16) : *a1;
    }

    else
    {
      v16 = v15 == 1 ? *a1 : *a1;
    }
  }

  else
  {
    v16 = 0;
  }

  if ((v16 | v14) == 0xFFFFFFFF)
  {
LABEL_37:
    if (!*(a2 + v6))
    {
      goto LABEL_61;
    }

    v23 = (*(a2 + v6) - 1) << (8 * v6);
    if (v6 > 3)
    {
      v23 = 0;
    }

    if (v6)
    {
      if (v6 <= 3)
      {
        v24 = v6;
      }

      else
      {
        v24 = 4;
      }

      if (v24 > 2)
      {
        if (v24 == 3)
        {
          v25 = *a2 | (*(a2 + 2) << 16);
        }

        else
        {
          v25 = *a2;
        }
      }

      else if (v24 == 1)
      {
        v25 = *a2;
      }

      else
      {
        v25 = *a2;
      }
    }

    else
    {
      v25 = 0;
    }

    v17 = (v25 | v23) + 1;
LABEL_56:
    v4 = v73;
    if (v17)
    {
      (*(v73 + 8))(a1, v81);
      v19 = v76;
      (*(v78 + 8))(&a1[v79] & v80, v76);
      if (v7)
      {
        v26 = v6;
      }

      else
      {
        v26 = v6 + 1;
      }

      memcpy(a1, v3, v26);
      goto LABEL_67;
    }

LABEL_61:
    (*(v4 + 24))(a1, v3, v81);
    v19 = v76;
    (*(v78 + 24))(&a1[v79] & v80, (v3 + v79) & v80, v76);
    goto LABEL_67;
  }

  if (*(a2 + v6))
  {
    v20 = (*(a2 + v6) - 1) << (8 * v6);
    if (v6 > 3)
    {
      v20 = 0;
    }

    if (v6)
    {
      v21 = v6 <= 3 ? v6 : 4;
      if (v21 > 2)
      {
        v22 = v21 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
      }

      else
      {
        v22 = v21 == 1 ? *a2 : *a2;
      }
    }

    else
    {
      v22 = 0;
    }

    v4 = *(v81 - 8);
    if ((v22 | v20) != 0xFFFFFFFF)
    {
      goto LABEL_17;
    }
  }

LABEL_65:
  (*(v4 + 16))(a1, v3, v81);
  v19 = v76;
  (*(v78 + 16))(&a1[v79] & v80, (v3 + v79) & v80, v76);
  if (!v7)
  {
    a1[v6] = 0;
  }

LABEL_67:
  if (v7)
  {
    v27 = v6;
  }

  else
  {
    v27 = v6 + 1;
  }

  v28 = *(v4 + 80) | v5;
  v29 = ~v28;
  v30 = (&a1[v27 + v28] & ~v28);
  v70 = v27 + v28;
  __n = v27;
  v31 = ((v3 + v27 + v28) & ~v28);
  if (v7)
  {
    v32 = ~v28;
    if (v77 >= v75)
    {
      v37 = v4;
      v41 = *(v4 + 48);
      v33 = &a1[v27 + v28] & ~v28;
      v35 = v41(v30, v77, v81);
      v36 = v41(v31, v77, v81);
      v19 = v76;
    }

    else
    {
      v33 = &a1[v27 + v28] & ~v28;
      v34 = *(v78 + 48);
      v35 = v34((v30 + v79) & v80, v75, v76);
      v36 = v34((v31 + v79) & v80, v75, v76);
      v19 = v76;
      v37 = v73;
    }

    v6 = v72;
    v29 = v32;
    if (v35)
    {
      goto LABEL_85;
    }

    goto LABEL_125;
  }

  if (!*(v30 + v6))
  {
    goto LABEL_105;
  }

  v38 = (*(v30 + v6) - 1) << (8 * v6);
  if (v6 > 3)
  {
    v38 = 0;
  }

  if (v6)
  {
    v39 = v6 <= 3 ? v6 : 4;
    if (v39 > 2)
    {
      v40 = v39 == 3 ? *v30 | (*(v30 + 2) << 16) : *v30;
    }

    else
    {
      v40 = v39 == 1 ? *v30 : *v30;
    }
  }

  else
  {
    v40 = 0;
  }

  if ((v40 | v38) == 0xFFFFFFFF)
  {
LABEL_105:
    if (!*(v31 + v6))
    {
      goto LABEL_128;
    }

    v48 = (*(v31 + v6) - 1) << (8 * v6);
    if (v6 > 3)
    {
      v48 = 0;
    }

    v37 = v4;
    if (v6)
    {
      if (v6 <= 3)
      {
        v49 = v6;
      }

      else
      {
        v49 = 4;
      }

      v33 = v30;
      if (v49 > 2)
      {
        if (v49 == 3)
        {
          v50 = *v31 | (*(v31 + 2) << 16);
        }

        else
        {
          v50 = *v31;
        }
      }

      else if (v49 == 1)
      {
        v50 = *v31;
      }

      else
      {
        v50 = *v31;
      }
    }

    else
    {
      v33 = v30;
      v50 = 0;
    }

    v36 = (v50 | v48) + 1;
LABEL_125:
    v30 = v33;
    v4 = v37;
    if (v36)
    {
      (*(v37 + 8))(v30, v81);
      v42 = v19;
      (*(v78 + 8))((v30 + v79) & v80, v19);
      goto LABEL_127;
    }

LABEL_128:
    (*(v4 + 24))(v30, v31, v81);
    v42 = v19;
    (*(v78 + 24))((v30 + v79) & v80, (v31 + v79) & v80, v19);
LABEL_129:
    v46 = ((v30 + v70) & v29);
    v47 = ((v31 + v70) & v29);
    v51 = v74;
    if (v74)
    {
LABEL_130:
      if (v77 >= v75)
      {
        v61 = *(v4 + 48);
        v62 = v61(v46, v77, v81);
        v52 = v81;
        v55 = v61(v47, v77, v81);
        v56 = a1;
        if (v62)
        {
LABEL_132:
          if (!v55)
          {
LABEL_133:
            v42 = v76;
            v6 = v72;
            v51 = v74;
            goto LABEL_164;
          }

LABEL_147:
          memcpy(v46, v47, __n);
          return v56;
        }
      }

      else
      {
        v52 = v81;
        v53 = *(v78 + 48);
        v54 = v53(&v46[v79] & v80, v75, v76);
        v4 = v73;
        v55 = v53(&v47[v79] & v80, v75, v76);
        v56 = a1;
        if (v54)
        {
          goto LABEL_132;
        }
      }

      if (v55)
      {
LABEL_146:
        (*(v4 + 8))(v46, v52);
        (*(v78 + 8))(&v46[v79] & v80, v76);
        goto LABEL_147;
      }

      goto LABEL_185;
    }

    goto LABEL_134;
  }

  if (!*(v31 + v6))
  {
    goto LABEL_103;
  }

  v43 = (*(v31 + v6) - 1) << (8 * v6);
  if (v6 > 3)
  {
    v43 = 0;
  }

  v37 = v4;
  if (v6)
  {
    if (v6 <= 3)
    {
      v44 = v6;
    }

    else
    {
      v44 = 4;
    }

    v33 = v30;
    if (v44 > 2)
    {
      if (v44 == 3)
      {
        v45 = *v31 | (*(v31 + 2) << 16);
      }

      else
      {
        v45 = *v31;
      }
    }

    else if (v44 == 1)
    {
      v45 = *v31;
    }

    else
    {
      v45 = *v31;
    }
  }

  else
  {
    v33 = v30;
    v45 = 0;
  }

  v36 = (v45 | v43) + 1;
LABEL_85:
  v30 = v33;
  v4 = v37;
  if (v36)
  {
    v42 = v19;
LABEL_127:
    memcpy(v30, v31, __n);
    goto LABEL_129;
  }

LABEL_103:
  (*(v4 + 16))(v30, v31, v81);
  (*(v78 + 16))((v30 + v79) & v80, (v31 + v79) & v80, v19);
  if (v74)
  {
    v46 = ((v30 + v70) & v29);
    v47 = ((v31 + v70) & v29);
    goto LABEL_130;
  }

  v42 = v19;
  *(v30 + v6) = 0;
  v46 = ((v30 + v70) & v29);
  v47 = ((v31 + v70) & v29);
  v51 = 0;
LABEL_134:
  v57 = 8 * v6;
  v56 = a1;
  if (!v46[v6])
  {
    goto LABEL_166;
  }

  v58 = (v46[v6] - 1) << v57;
  if (v6 > 3)
  {
    v58 = 0;
  }

  if (v6)
  {
    v59 = v6 <= 3 ? v6 : 4;
    if (v59 > 2)
    {
      v60 = v59 == 3 ? *v46 | (v46[2] << 16) : *v46;
    }

    else
    {
      v60 = v59 == 1 ? *v46 : *v46;
    }
  }

  else
  {
    v60 = 0;
  }

  if ((v60 | v58) == 0xFFFFFFFF)
  {
LABEL_166:
    if (!v47[v6])
    {
LABEL_186:
      (*(v4 + 24))(v46, v47, v81);
      (*(v78 + 24))(&v46[v79] & v80, &v47[v79] & v80, v42);
      return v56;
    }

    v66 = (v47[v6] - 1) << v57;
    if (v6 > 3)
    {
      v66 = 0;
    }

    if (v6)
    {
      if (v6 <= 3)
      {
        v67 = v6;
      }

      else
      {
        v67 = 4;
      }

      if (v67 > 2)
      {
        v52 = v81;
        if (v67 == 3)
        {
          v68 = *v47 | (v47[2] << 16);
        }

        else
        {
          v68 = *v47;
        }
      }

      else
      {
        v52 = v81;
        if (v67 == 1)
        {
          v68 = *v47;
        }

        else
        {
          v68 = *v47;
        }
      }
    }

    else
    {
      v52 = v81;
      v68 = 0;
    }

    if ((v68 | v66) != 0xFFFFFFFF)
    {
      goto LABEL_146;
    }

LABEL_185:
    v42 = v76;
    goto LABEL_186;
  }

  if (v47[v6])
  {
    v63 = (v47[v6] - 1) << v57;
    if (v6 > 3)
    {
      v63 = 0;
    }

    if (v6)
    {
      if (v6 <= 3)
      {
        v64 = v6;
      }

      else
      {
        v64 = 4;
      }

      if (v64 > 2)
      {
        if (v64 == 3)
        {
          v65 = *v47 | (v47[2] << 16);
        }

        else
        {
          v65 = *v47;
        }
      }

      else if (v64 == 1)
      {
        v65 = *v47;
      }

      else
      {
        v65 = *v47;
      }
    }

    else
    {
      v65 = 0;
    }

    if ((v65 | v63) == 0xFFFFFFFF)
    {
      goto LABEL_133;
    }

    goto LABEL_147;
  }

LABEL_164:
  (*(v4 + 16))(v46, v47, v81);
  (*(v78 + 16))(&v46[v79] & v80, &v47[v79] & v80, v42);
  if (!v51)
  {
    v46[v6] = 0;
  }

  return v56;
}

char *initializeWithTake for Cache3(char *a1, unsigned __int16 *a2, uint64_t a3)
{
  v39 = *(a3 + 24);
  v40 = *(a3 + 16);
  v5 = *(v40 - 8);
  v6 = *(v5 + 84);
  v7 = *(v39 - 8);
  v8 = *(v7 + 84);
  v38 = v7;
  v9 = *(v7 + 80);
  v36 = *(v5 + 64) + v9;
  v37 = ~v9;
  v10 = (v36 & v37) + *(v7 + 64);
  v11 = v8 | v6;
  if (!(v8 | v6))
  {
    if (!*(a2 + v10))
    {
      goto LABEL_26;
    }

    v12 = (*(a2 + v10) - 1) << (8 * v10);
    if (v10 > 3)
    {
      v12 = 0;
    }

    if (v10)
    {
      v13 = v10 <= 3 ? v10 : 4;
      if (v13 > 2)
      {
        v14 = v13 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
      }

      else
      {
        v14 = v13 == 1 ? *a2 : *a2;
      }
    }

    else
    {
      v14 = 0;
    }

    if ((v14 | v12) == 0xFFFFFFFF)
    {
      goto LABEL_26;
    }

    goto LABEL_16;
  }

  if (v6 >= v8)
  {
    if (!(*(v5 + 48))(a2, v6, v40))
    {
      goto LABEL_26;
    }

LABEL_16:
    if (v11)
    {
      v15 = v10;
    }

    else
    {
      v15 = v10 + 1;
    }

    memcpy(a1, a2, v15);
    goto LABEL_28;
  }

  if ((*(v38 + 48))((a2 + v36) & v37, v8, v39))
  {
    goto LABEL_16;
  }

LABEL_26:
  (*(v5 + 32))(a1, a2, v40);
  (*(v38 + 32))(&a1[v36] & v37, (a2 + v36) & v37, v39);
  if (!v11)
  {
    a1[v10] = 0;
  }

LABEL_28:
  if (v11)
  {
    v16 = v10;
  }

  else
  {
    v16 = v10 + 1;
  }

  v17 = v5;
  v18 = *(v5 + 80) | v9;
  v34 = a1;
  __n = v16;
  v19 = v16 + v18;
  v20 = &a1[v16 + v18];
  v21 = ~v18;
  v22 = (v20 & ~v18);
  v23 = ((a2 + v16 + v18) & ~v18);
  if (v11)
  {
    if (v6 >= v8)
    {
      if (!(*(v17 + 48))(v23, v6, v40))
      {
        goto LABEL_54;
      }
    }

    else if (!(*(v38 + 48))(&v23[v36] & v37, v8, v39))
    {
      goto LABEL_54;
    }

LABEL_46:
    memcpy(v22, v23, __n);
    v27 = ((v22 + v19) & v21);
    v28 = (&v23[v19] & v21);
    if (v11)
    {
      goto LABEL_56;
    }

LABEL_62:
    v29 = v34;
    if (!*(v28 + v10))
    {
      goto LABEL_79;
    }

    v30 = (*(v28 + v10) - 1) << (8 * v10);
    if (v10 > 3)
    {
      v30 = 0;
    }

    if (v10)
    {
      v31 = v10 <= 3 ? v10 : 4;
      if (v31 > 2)
      {
        v32 = v31 == 3 ? *v28 | (*(v28 + 2) << 16) : *v28;
      }

      else
      {
        v32 = v31 == 1 ? *v28 : *v28;
      }
    }

    else
    {
      v32 = 0;
    }

    if ((v32 | v30) == 0xFFFFFFFF)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  if (v23[v10])
  {
    v24 = (v23[v10] - 1) << (8 * v10);
    if (v10 > 3)
    {
      v24 = 0;
    }

    if (v10)
    {
      v25 = v10 <= 3 ? v10 : 4;
      if (v25 > 2)
      {
        v26 = v25 == 3 ? *v23 | (v23[2] << 16) : *v23;
      }

      else
      {
        v26 = v25 == 1 ? *v23 : *v23;
      }
    }

    else
    {
      v26 = 0;
    }

    if ((v26 | v24) != 0xFFFFFFFF)
    {
      goto LABEL_46;
    }
  }

LABEL_54:
  (*(v17 + 32))(v22, v23, v40);
  (*(v38 + 32))((v22 + v36) & v37, &v23[v36] & v37, v39);
  if (!v11)
  {
    *(v22 + v10) = 0;
    v27 = ((v22 + v19) & v21);
    v28 = (&v23[v19] & v21);
    goto LABEL_62;
  }

  v27 = ((v22 + v19) & v21);
  v28 = (&v23[v19] & v21);
LABEL_56:
  v29 = v34;
  if (v6 < v8)
  {
    if (!(*(v38 + 48))((v28 + v36) & v37, v8, v39))
    {
      goto LABEL_79;
    }

LABEL_78:
    memcpy(v27, v28, __n);
    return v29;
  }

  if ((*(v17 + 48))(v28, v6, v40))
  {
    goto LABEL_78;
  }

LABEL_79:
  (*(v17 + 32))(v27, v28, v40);
  (*(v38 + 32))((v27 + v36) & v37, (v28 + v36) & v37, v39);
  if (!v11)
  {
    *(v27 + v10) = 0;
  }

  return v29;
}

unsigned __int8 *assignWithTake for Cache3(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a2;
  v81 = *(a3 + 16);
  v4 = *(v81 - 8);
  v76 = *(a3 + 24);
  v78 = *(v76 - 8);
  v5 = *(v78 + 80);
  v79 = *(v4 + 64) + v5;
  v80 = ~v5;
  v6 = (v79 & v80) + *(v78 + 64);
  v77 = *(v4 + 84);
  v7 = *(v78 + 84) | v77;
  v72 = v6;
  v73 = v4;
  v74 = v7;
  v75 = *(v78 + 84);
  if (v7)
  {
    if (v77 >= v75)
    {
      v9 = *(v4 + 48);
      v10 = v9(a1, v77, v81);
      v11 = a2;
      v12 = v77;
      v13 = v81;
    }

    else
    {
      v9 = *(v78 + 48);
      v10 = v9((&a1[v79] & v80), v75, v76);
      v11 = ((a2 + v79) & v80);
      v12 = v75;
      v13 = v76;
    }

    v17 = v9(v11, v12, v13);
    v3 = a2;
    if (v10)
    {
      v4 = v73;
      if (v17)
      {
LABEL_17:
        if (v7)
        {
          v18 = v6;
        }

        else
        {
          v18 = v6 + 1;
        }

        memcpy(a1, v3, v18);
        v19 = v76;
        goto LABEL_67;
      }

      goto LABEL_65;
    }

    goto LABEL_56;
  }

  if (!a1[v6])
  {
    goto LABEL_37;
  }

  v14 = (a1[v6] - 1) << (8 * v6);
  if (v6 > 3)
  {
    v14 = 0;
  }

  if (v6)
  {
    v15 = v6 <= 3 ? v6 : 4;
    if (v15 > 2)
    {
      v16 = v15 == 3 ? *a1 | (a1[2] << 16) : *a1;
    }

    else
    {
      v16 = v15 == 1 ? *a1 : *a1;
    }
  }

  else
  {
    v16 = 0;
  }

  if ((v16 | v14) == 0xFFFFFFFF)
  {
LABEL_37:
    if (!*(a2 + v6))
    {
      goto LABEL_61;
    }

    v23 = (*(a2 + v6) - 1) << (8 * v6);
    if (v6 > 3)
    {
      v23 = 0;
    }

    if (v6)
    {
      if (v6 <= 3)
      {
        v24 = v6;
      }

      else
      {
        v24 = 4;
      }

      if (v24 > 2)
      {
        if (v24 == 3)
        {
          v25 = *a2 | (*(a2 + 2) << 16);
        }

        else
        {
          v25 = *a2;
        }
      }

      else if (v24 == 1)
      {
        v25 = *a2;
      }

      else
      {
        v25 = *a2;
      }
    }

    else
    {
      v25 = 0;
    }

    v17 = (v25 | v23) + 1;
LABEL_56:
    v4 = v73;
    if (v17)
    {
      (*(v73 + 8))(a1, v81);
      v19 = v76;
      (*(v78 + 8))(&a1[v79] & v80, v76);
      if (v7)
      {
        v26 = v6;
      }

      else
      {
        v26 = v6 + 1;
      }

      memcpy(a1, v3, v26);
      goto LABEL_67;
    }

LABEL_61:
    (*(v4 + 40))(a1, v3, v81);
    v19 = v76;
    (*(v78 + 40))(&a1[v79] & v80, (v3 + v79) & v80, v76);
    goto LABEL_67;
  }

  if (*(a2 + v6))
  {
    v20 = (*(a2 + v6) - 1) << (8 * v6);
    if (v6 > 3)
    {
      v20 = 0;
    }

    if (v6)
    {
      v21 = v6 <= 3 ? v6 : 4;
      if (v21 > 2)
      {
        v22 = v21 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
      }

      else
      {
        v22 = v21 == 1 ? *a2 : *a2;
      }
    }

    else
    {
      v22 = 0;
    }

    v4 = *(v81 - 8);
    if ((v22 | v20) != 0xFFFFFFFF)
    {
      goto LABEL_17;
    }
  }

LABEL_65:
  (*(v4 + 32))(a1, v3, v81);
  v19 = v76;
  (*(v78 + 32))(&a1[v79] & v80, (v3 + v79) & v80, v76);
  if (!v7)
  {
    a1[v6] = 0;
  }

LABEL_67:
  if (v7)
  {
    v27 = v6;
  }

  else
  {
    v27 = v6 + 1;
  }

  v28 = *(v4 + 80) | v5;
  v29 = ~v28;
  v30 = (&a1[v27 + v28] & ~v28);
  v70 = v27 + v28;
  __n = v27;
  v31 = ((v3 + v27 + v28) & ~v28);
  if (v7)
  {
    v32 = ~v28;
    if (v77 >= v75)
    {
      v37 = v4;
      v41 = *(v4 + 48);
      v33 = &a1[v27 + v28] & ~v28;
      v35 = v41(v30, v77, v81);
      v36 = v41(v31, v77, v81);
      v19 = v76;
    }

    else
    {
      v33 = &a1[v27 + v28] & ~v28;
      v34 = *(v78 + 48);
      v35 = v34((v30 + v79) & v80, v75, v76);
      v36 = v34((v31 + v79) & v80, v75, v76);
      v19 = v76;
      v37 = v73;
    }

    v6 = v72;
    v29 = v32;
    if (v35)
    {
      goto LABEL_85;
    }

    goto LABEL_125;
  }

  if (!*(v30 + v6))
  {
    goto LABEL_105;
  }

  v38 = (*(v30 + v6) - 1) << (8 * v6);
  if (v6 > 3)
  {
    v38 = 0;
  }

  if (v6)
  {
    v39 = v6 <= 3 ? v6 : 4;
    if (v39 > 2)
    {
      v40 = v39 == 3 ? *v30 | (*(v30 + 2) << 16) : *v30;
    }

    else
    {
      v40 = v39 == 1 ? *v30 : *v30;
    }
  }

  else
  {
    v40 = 0;
  }

  if ((v40 | v38) == 0xFFFFFFFF)
  {
LABEL_105:
    if (!*(v31 + v6))
    {
      goto LABEL_128;
    }

    v48 = (*(v31 + v6) - 1) << (8 * v6);
    if (v6 > 3)
    {
      v48 = 0;
    }

    v37 = v4;
    if (v6)
    {
      if (v6 <= 3)
      {
        v49 = v6;
      }

      else
      {
        v49 = 4;
      }

      v33 = v30;
      if (v49 > 2)
      {
        if (v49 == 3)
        {
          v50 = *v31 | (*(v31 + 2) << 16);
        }

        else
        {
          v50 = *v31;
        }
      }

      else if (v49 == 1)
      {
        v50 = *v31;
      }

      else
      {
        v50 = *v31;
      }
    }

    else
    {
      v33 = v30;
      v50 = 0;
    }

    v36 = (v50 | v48) + 1;
LABEL_125:
    v30 = v33;
    v4 = v37;
    if (v36)
    {
      (*(v37 + 8))(v30, v81);
      v42 = v19;
      (*(v78 + 8))((v30 + v79) & v80, v19);
      goto LABEL_127;
    }

LABEL_128:
    (*(v4 + 40))(v30, v31, v81);
    v42 = v19;
    (*(v78 + 40))((v30 + v79) & v80, (v31 + v79) & v80, v19);
LABEL_129:
    v46 = ((v30 + v70) & v29);
    v47 = ((v31 + v70) & v29);
    v51 = v74;
    if (v74)
    {
LABEL_130:
      if (v77 >= v75)
      {
        v61 = *(v4 + 48);
        v62 = v61(v46, v77, v81);
        v52 = v81;
        v55 = v61(v47, v77, v81);
        v56 = a1;
        if (v62)
        {
LABEL_132:
          if (!v55)
          {
LABEL_133:
            v42 = v76;
            v6 = v72;
            v51 = v74;
            goto LABEL_164;
          }

LABEL_147:
          memcpy(v46, v47, __n);
          return v56;
        }
      }

      else
      {
        v52 = v81;
        v53 = *(v78 + 48);
        v54 = v53(&v46[v79] & v80, v75, v76);
        v4 = v73;
        v55 = v53(&v47[v79] & v80, v75, v76);
        v56 = a1;
        if (v54)
        {
          goto LABEL_132;
        }
      }

      if (v55)
      {
LABEL_146:
        (*(v4 + 8))(v46, v52);
        (*(v78 + 8))(&v46[v79] & v80, v76);
        goto LABEL_147;
      }

      goto LABEL_185;
    }

    goto LABEL_134;
  }

  if (!*(v31 + v6))
  {
    goto LABEL_103;
  }

  v43 = (*(v31 + v6) - 1) << (8 * v6);
  if (v6 > 3)
  {
    v43 = 0;
  }

  v37 = v4;
  if (v6)
  {
    if (v6 <= 3)
    {
      v44 = v6;
    }

    else
    {
      v44 = 4;
    }

    v33 = v30;
    if (v44 > 2)
    {
      if (v44 == 3)
      {
        v45 = *v31 | (*(v31 + 2) << 16);
      }

      else
      {
        v45 = *v31;
      }
    }

    else if (v44 == 1)
    {
      v45 = *v31;
    }

    else
    {
      v45 = *v31;
    }
  }

  else
  {
    v33 = v30;
    v45 = 0;
  }

  v36 = (v45 | v43) + 1;
LABEL_85:
  v30 = v33;
  v4 = v37;
  if (v36)
  {
    v42 = v19;
LABEL_127:
    memcpy(v30, v31, __n);
    goto LABEL_129;
  }

LABEL_103:
  (*(v4 + 32))(v30, v31, v81);
  (*(v78 + 32))((v30 + v79) & v80, (v31 + v79) & v80, v19);
  if (v74)
  {
    v46 = ((v30 + v70) & v29);
    v47 = ((v31 + v70) & v29);
    goto LABEL_130;
  }

  v42 = v19;
  *(v30 + v6) = 0;
  v46 = ((v30 + v70) & v29);
  v47 = ((v31 + v70) & v29);
  v51 = 0;
LABEL_134:
  v57 = 8 * v6;
  v56 = a1;
  if (!v46[v6])
  {
    goto LABEL_166;
  }

  v58 = (v46[v6] - 1) << v57;
  if (v6 > 3)
  {
    v58 = 0;
  }

  if (v6)
  {
    v59 = v6 <= 3 ? v6 : 4;
    if (v59 > 2)
    {
      v60 = v59 == 3 ? *v46 | (v46[2] << 16) : *v46;
    }

    else
    {
      v60 = v59 == 1 ? *v46 : *v46;
    }
  }

  else
  {
    v60 = 0;
  }

  if ((v60 | v58) == 0xFFFFFFFF)
  {
LABEL_166:
    if (!v47[v6])
    {
LABEL_186:
      (*(v4 + 40))(v46, v47, v81);
      (*(v78 + 40))(&v46[v79] & v80, &v47[v79] & v80, v42);
      return v56;
    }

    v66 = (v47[v6] - 1) << v57;
    if (v6 > 3)
    {
      v66 = 0;
    }

    if (v6)
    {
      if (v6 <= 3)
      {
        v67 = v6;
      }

      else
      {
        v67 = 4;
      }

      if (v67 > 2)
      {
        v52 = v81;
        if (v67 == 3)
        {
          v68 = *v47 | (v47[2] << 16);
        }

        else
        {
          v68 = *v47;
        }
      }

      else
      {
        v52 = v81;
        if (v67 == 1)
        {
          v68 = *v47;
        }

        else
        {
          v68 = *v47;
        }
      }
    }

    else
    {
      v52 = v81;
      v68 = 0;
    }

    if ((v68 | v66) != 0xFFFFFFFF)
    {
      goto LABEL_146;
    }

LABEL_185:
    v42 = v76;
    goto LABEL_186;
  }

  if (v47[v6])
  {
    v63 = (v47[v6] - 1) << v57;
    if (v6 > 3)
    {
      v63 = 0;
    }

    if (v6)
    {
      if (v6 <= 3)
      {
        v64 = v6;
      }

      else
      {
        v64 = 4;
      }

      if (v64 > 2)
      {
        if (v64 == 3)
        {
          v65 = *v47 | (v47[2] << 16);
        }

        else
        {
          v65 = *v47;
        }
      }

      else if (v64 == 1)
      {
        v65 = *v47;
      }

      else
      {
        v65 = *v47;
      }
    }

    else
    {
      v65 = 0;
    }

    if ((v65 | v63) == 0xFFFFFFFF)
    {
      goto LABEL_133;
    }

    goto LABEL_147;
  }

LABEL_164:
  (*(v4 + 32))(v46, v47, v81);
  (*(v78 + 32))(&v46[v79] & v80, &v47[v79] & v80, v42);
  if (!v51)
  {
    v46[v6] = 0;
  }

  return v56;
}

uint64_t getEnumTagSinglePayload for Cache3(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  if (v9 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  v12 = *(v7 + 80);
  if (v10)
  {
    v13 = *(v7 + 64);
  }

  else
  {
    v13 = *(v7 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v7 + 80);
  v15 = *(*(*(a3 + 16) - 8) + 64) + v14;
  v16 = a2 - v11;
  if (a2 > v11)
  {
    v17 = *(v4 + 80) | v12;
    v18 = ((v13 + (v15 & ~v14) + v17 + ((v13 + (v15 & ~v14) + v17) & ~v17)) & ~v17) + v13 + (v15 & ~v14);
    v19 = 8 * v18;
    if (v18 > 3)
    {
      goto LABEL_12;
    }

    v21 = ((v16 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (v20)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v21 <= 0xFF)
      {
        if (v21 < 2)
        {
          goto LABEL_32;
        }

LABEL_12:
        v20 = *(a1 + v18);
        if (!*(a1 + v18))
        {
          goto LABEL_32;
        }

LABEL_19:
        v22 = (v20 - 1) << v19;
        if (v18 > 3)
        {
          v22 = 0;
        }

        if (v18)
        {
          if (v18 <= 3)
          {
            v23 = v18;
          }

          else
          {
            v23 = 4;
          }

          if (v23 > 2)
          {
            if (v23 == 3)
            {
              v24 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v24 = *a1;
            }
          }

          else if (v23 == 1)
          {
            v24 = *a1;
          }

          else
          {
            v24 = *a1;
          }
        }

        else
        {
          v24 = 0;
        }

        return v11 + (v24 | v22) + 1;
      }

      v20 = *(a1 + v18);
      if (*(a1 + v18))
      {
        goto LABEL_19;
      }
    }
  }

LABEL_32:
  if (v10 < 2)
  {
    return 0;
  }

  if (v5 >= v9)
  {
    v26 = (*(v4 + 48))(a1, v5);
  }

  else
  {
    v26 = (*(v8 + 48))((a1 + v15) & ~v14, v9, v6);
  }

  if (v26 >= 2)
  {
    return v26 - 1;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for Cache3(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(a4 + 24);
  v9 = *(v7 + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 64);
  if (v11 <= v9)
  {
    v13 = *(v7 + 84);
  }

  else
  {
    v13 = *(v10 + 84);
  }

  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v10 + 80);
  v16 = *(*(*(a4 + 16) - 8) + 64) + v15;
  v17 = (v16 & ~v15) + v12;
  if (v13)
  {
    v18 = (v16 & ~v15) + v12;
  }

  else
  {
    v18 = v17 + 1;
  }

  v19 = *(v7 + 80) | *(v10 + 80);
  v20 = ((v18 + v19 + ((v18 + v19) & ~v19)) & ~v19) + v18;
  v21 = a3 >= v14;
  v22 = a3 - v14;
  if (v22 == 0 || !v21)
  {
    goto LABEL_22;
  }

  if (v20 > 3)
  {
    v6 = 1;
    if (v14 < a2)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  v23 = ((v22 + ~(-1 << (8 * v20))) >> (8 * v20)) + 1;
  if (!HIWORD(v23))
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
      v6 = v24;
    }

    else
    {
      v6 = 0;
    }

LABEL_22:
    if (v14 < a2)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  v6 = 4;
  if (v14 < a2)
  {
LABEL_23:
    v25 = ~v14 + a2;
    if (v20 < 4)
    {
      v26 = (v25 >> (8 * v20)) + 1;
      if (v20)
      {
        v27 = v25 & ~(-1 << (8 * v20));
        bzero(a1, v20);
        if (v20 != 3)
        {
          if (v20 == 2)
          {
            *a1 = v27;
            if (v6 > 1)
            {
LABEL_65:
              if (v6 == 2)
              {
                *&a1[v20] = v26;
              }

              else
              {
                *&a1[v20] = v26;
              }

              return;
            }
          }

          else
          {
            *a1 = v25;
            if (v6 > 1)
            {
              goto LABEL_65;
            }
          }

          goto LABEL_62;
        }

        *a1 = v27;
        a1[2] = BYTE2(v27);
      }

      if (v6 > 1)
      {
        goto LABEL_65;
      }
    }

    else
    {
      bzero(a1, v20);
      *a1 = v25;
      v26 = 1;
      if (v6 > 1)
      {
        goto LABEL_65;
      }
    }

LABEL_62:
    if (v6)
    {
      a1[v20] = v26;
    }

    return;
  }

LABEL_32:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v20] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *&a1[v20] = 0;
LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!v6)
  {
    goto LABEL_38;
  }

  a1[v20] = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v13 >= 2)
  {
    if (a2 >= v13)
    {
      if (v17 <= 3)
      {
        v30 = ~(-1 << (8 * v17));
      }

      else
      {
        v30 = -1;
      }

      if (v17)
      {
        v31 = v30 & (a2 - v13);
        if (v17 <= 3)
        {
          v32 = (v16 & ~v15) + v12;
        }

        else
        {
          v32 = 4;
        }

        bzero(a1, v17);
        if (v32 > 2)
        {
          if (v32 == 3)
          {
            *a1 = v31;
            a1[2] = BYTE2(v31);
          }

          else
          {
            *a1 = v31;
          }
        }

        else if (v32 == 1)
        {
          *a1 = v31;
        }

        else
        {
          *a1 = v31;
        }
      }
    }

    else if (v9 >= v11)
    {
      v33 = *(v7 + 56);
      v34 = a2 + 1;

      v33(a1, v34);
    }

    else
    {
      v28 = *(v10 + 56);
      v29 = a2 + 1;

      v28(&a1[v16] & ~v15, v29, v11, v8);
    }
  }
}

uint64_t type metadata completion function for CollectionOfTwo(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v4 = &v3;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *assignWithCopy for EquatableOptionalObject(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

uint64_t *assignWithTake for EquatableOptionalObject(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  return a1;
}

uint64_t type metadata completion function for ConformingTuple(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    result = swift_checkMetadataState();
    if (v3 > 0x3F)
    {
      return result;
    }

LABEL_13:
    v19[1] = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  MEMORY[0x1EEE9AC00](a1);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4)
  {
    v7 = 0;
    v8 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (v4 < 4)
    {
      goto LABEL_10;
    }

    if (&v6[-v8] < 0x20)
    {
      goto LABEL_10;
    }

    v7 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = (v8 + 16);
    v10 = v6 + 16;
    v11 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v12 = *v9;
      *(v10 - 1) = *(v9 - 1);
      *v10 = v12;
      v9 += 2;
      v10 += 2;
      v11 -= 4;
    }

    while (v11);
    if (v4 != v7)
    {
LABEL_10:
      v13 = v4 - v7;
      v14 = 8 * v7;
      v15 = &v6[8 * v7];
      v16 = (v8 + v14);
      do
      {
        v17 = *v16++;
        *v15 = v17;
        v15 += 8;
        --v13;
      }

      while (v13);
    }
  }

  result = swift_getTupleTypeMetadata();
  if (v18 <= 0x3F)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ConformingTuple(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v5 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
    a1 = v5;
  }

  return (**(TupleTypeMetadata - 8))(a1, v3);
}

uint64_t destroy for ConformingTuple(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v3 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v4)
    {
      v8 = 0;
      v9 = *(v5 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v4 < 4)
      {
        goto LABEL_9;
      }

      if (&v7[-v9] < 0x20)
      {
        goto LABEL_9;
      }

      v8 = v4 & 0xFFFFFFFFFFFFFFFCLL;
      v10 = (v9 + 16);
      v11 = v7 + 16;
      v12 = v4 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v13 = *v10;
        *(v11 - 1) = *(v10 - 1);
        *v11 = v13;
        v10 += 2;
        v11 += 2;
        v12 -= 4;
      }

      while (v12);
      if (v4 != v8)
      {
LABEL_9:
        v14 = v4 - v8;
        v15 = 8 * v8;
        v16 = &v7[8 * v8];
        v17 = (v9 + v15);
        do
        {
          v18 = *v17++;
          *v16 = v18;
          v16 += 8;
          --v14;
        }

        while (v14);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    a1 = v3;
  }

  return (*(*(TupleTypeMetadata - 8) + 8))(a1);
}

uint64_t initializeWithCopy for ConformingTuple(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
  }

  (*(*(TupleTypeMetadata - 8) + 16))(a1, v3);
  return a1;
}

uint64_t assignWithCopy for ConformingTuple(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
  }

  (*(*(TupleTypeMetadata - 8) + 24))(a1, v3);
  return a1;
}

uint64_t initializeWithTake for ConformingTuple(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
  }

  (*(*(TupleTypeMetadata - 8) + 32))(a1, v3);
  return a1;
}

uint64_t assignWithTake for ConformingTuple(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
  }

  (*(*(TupleTypeMetadata - 8) + 40))(a1, v3);
  return a1;
}

uint64_t specialized MutableCollection<>.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for Slice();
  swift_getWitnessTable(MEMORY[0x1E69E74F8], v4);

  return _writeBackMutableSlice<A, B>(_:bounds:slice:)();
}

unint64_t *specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v29 = a4;
  v24 = result;
  v25 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(a3 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    outlined init with copy of AnyTrackedValue(*(a3 + 56) + 40 * v14, v28);
    v26[0] = v16;
    v26[1] = v17;
    outlined init with copy of AnyTrackedValue(v28, v27);
    type metadata accessor for EventFilter<TappableEvent>(0, v18, v19, v20);
    v21 = *AGGraphGetValue();

    LOBYTE(v17) = v21(v27);

    outlined destroy of (key: EventID, value: EventType)(v26, type metadata accessor for (key: EventID, value: EventType));
    result = __swift_destroy_boxed_opaque_existential_1(v28);
    if (v17)
    {
      *(v24 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v24, a2, v25, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v24, a2, v25, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v25 = 0;
  v24 = result;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v14 = v11 | (v5 << 6);
    v15 = (*(a3 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    outlined init with copy of AnyTrackedValue(*(a3 + 56) + 40 * v14, v31);
    v27[0] = v16;
    v27[1] = v17;
    outlined init with copy of AnyTrackedValue(v31, v28);
    v18 = v29;
    v19 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    (*(v19 + 24))(&v32, v18, v19);
    if (v32)
    {
      v20 = *a4;
      v21 = *(*v32 + 128);

      LOBYTE(v21) = v21(v20);

      outlined destroy of (key: EventID, value: EventType)(v27, type metadata accessor for (key: EventID, value: EventType));
      result = __swift_destroy_boxed_opaque_existential_1(v31);
      if (v21)
      {
        *(v24 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        if (__OFADD__(v25++, 1))
        {
          __break(1u);
          return specialized _NativeDictionary.extractDictionary(using:count:)(v24, a2, v25, a3);
        }
      }
    }

    else
    {
      outlined destroy of (key: EventID, value: EventType)(v27, type metadata accessor for (key: EventID, value: EventType));
      result = __swift_destroy_boxed_opaque_existential_1(v31);
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v24, a2, v25, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t *specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  v7 = 8 * v6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    outlined init with copy of LayoutGestureBox.Child(a2, v13);
    outlined init with copy of LayoutGestureBox.Child(a2, v13);

    if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
    {
      v10 = swift_slowAlloc();
      outlined init with copy of LayoutGestureBox.Child(a2, v13);
      v9 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI7EventIDVAH0K4Type_pG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i3UI7k9IDV_AI0J4M5_pTG5ALxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjhK_pIsgnndzo_Tf1nc_n03_s7i94UI13LayoutGesturePAAE11childEvents33_05F3243F43C616B77CCF383885E80E966events5index3boxSDyAA7k8IDVAA0Q4M52_pGAL_SiAA0cD3BoxAELLCtFSbAJ3key_AaK_p5valuet_tXEfU_AH16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC5ChildVTf1nnc_n(v10, v6, a1, a2);
      MEMORY[0x193AC4820](v10, -1, -1);
      goto LABEL_8;
    }
  }

  else
  {
    outlined init with copy of LayoutGestureBox.Child(a2, v13);
    v8 = outlined init with copy of LayoutGestureBox.Child(a2, v13);
  }

  MEMORY[0x1EEE9AC00](v8);
  bzero(&v13[-((v7 + 15) & 0x3FFFFFFFFFFFFFF0) - 8], v7);
  outlined init with copy of LayoutGestureBox.Child(a2, v13);
  v9 = specialized closure #1 in _NativeDictionary.filter(_:)(&v13[-((v7 + 15) & 0x3FFFFFFFFFFFFFF0) - 8], v6, a1, a2);
  outlined destroy of LayoutGestureBox.Child(a2);
  if (v2)
  {
    swift_willThrow();
  }

LABEL_8:
  outlined destroy of LayoutGestureBox.Child(a2);
  outlined destroy of LayoutGestureBox.Child(a2);
  return v9;
}

unint64_t *specialized Dictionary.optimisticFilter(_:)(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 16) >= 0x41uLL)
  {
    return specialized _NativeDictionary.filter(_:)(a1, a2);
  }

  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  outlined init with copy of LayoutGestureBox.Child(a2, &v69);
  v9 = (v5 + 63) >> 6;
  v57 = a1;

  v10 = 0;
  v11 = 0;
  v56 = 0;
  v54 = 1;
  LODWORD(v55) = 1;
  while (v7)
  {
LABEL_13:
    v13 = __clz(__rbit64(v7)) | (v11 << 6);
    v14 = (*(v57 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    outlined init with copy of AnyTrackedValue(*(v57 + 56) + 40 * v13, v70);
    *&v69 = v15;
    *(&v69 + 1) = v16;
    *&v65 = v15;
    *(&v65 + 1) = v16;
    outlined init with take of _ViewList_Elements(v70, &v66);
    outlined init with copy of (key: EventID, value: EventType)(&v65, &v63);
    v59 = v63;
    outlined init with copy of AnyTrackedValue(v64, v60);
    v17 = v61;
    v18 = v62;
    __swift_project_boxed_opaque_existential_1(v60, v61);
    (*(v18 + 24))(&v58, v17, v18);
    if (v58)
    {
      v19 = *a2;
      v20 = *(*v58 + 128);

      LOBYTE(v19) = v20(v19);

      outlined destroy of (key: EventID, value: EventType)(&v59, type metadata accessor for (key: EventID, value: EventType));
      outlined destroy of (key: EventID, value: EventType)(&v65, type metadata accessor for (key: EventID, value: EventType));
      __swift_destroy_boxed_opaque_existential_1(v64);
      if (v19)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_62;
        }

        v54 = 0;
        v21 = 1 << v10;
        if (v10 >= 0x40)
        {
          v21 = 0;
        }

        v56 |= v21;
      }

      else
      {
        LODWORD(v55) = 0;
      }
    }

    else
    {
      outlined destroy of (key: EventID, value: EventType)(&v59, type metadata accessor for (key: EventID, value: EventType));
      outlined destroy of (key: EventID, value: EventType)(&v65, type metadata accessor for (key: EventID, value: EventType));
      __swift_destroy_boxed_opaque_existential_1(v64);
      LODWORD(v55) = 0;
    }

    v7 &= v7 - 1;
    ++v10;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_58;
    }

    if (v12 >= v9)
    {
      break;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
      goto LABEL_13;
    }
  }

  v3 = v57;

  if (v54)
  {
    v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
LABEL_24:
    outlined destroy of LayoutGestureBox.Child(a2);
    return v3;
  }

  if (v55)
  {

    goto LABEL_24;
  }

  v55 = a2;
  v22 = 1 << *(v57 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v57 + 64);
  v25 = (v22 + 63) >> 6;

  v26 = 0;
  v27 = 0;
  v28 = MEMORY[0x1E69E7CC8];
  while (v24)
  {
    v29 = v27;
LABEL_39:
    v32 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v33 = v32 | (v29 << 6);
    v34 = (*(v3 + 48) + 16 * v33);
    v35 = *v34;
    v36 = v34[1];
    outlined init with copy of AnyTrackedValue(*(v3 + 56) + 40 * v33, &v63);
    *&v65 = v35;
    *(&v65 + 1) = v36;
    outlined init with take of _ViewList_Elements(&v63, &v66);
LABEL_40:
    v69 = v65;
    v70[0] = v66;
    v70[1] = v67;
    v71 = v68;
    v37 = v65;
    if (!v65)
    {

      outlined destroy of LayoutGestureBox.Child(v55);
      return v28;
    }

    v38 = *(&v69 + 1);
    outlined init with take of _ViewList_Elements(v70, &v65);
    if (v26 == 0x8000000000000000)
    {
      goto LABEL_59;
    }

    if (v26 < 0x40 && ((v56 >> v26) & 1) != 0)
    {
      outlined init with copy of AnyTrackedValue(&v65, &v63);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v59 = v28;
      v40 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
      v42 = v28[2];
      v43 = (v41 & 1) == 0;
      v44 = __OFADD__(v42, v43);
      v45 = v42 + v43;
      if (v44)
      {
        goto LABEL_60;
      }

      v46 = v41;
      if (v28[3] >= v45)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v52 = v40;
          specialized _NativeDictionary.copy()();
          v40 = v52;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, isUniquelyReferenced_nonNull_native);
        v40 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
        if ((v46 & 1) != (v47 & 1))
        {
          goto LABEL_63;
        }
      }

      v3 = v57;
      v28 = v59;
      if (v46)
      {
        v48 = (*(v59 + 56) + 40 * v40);
        __swift_destroy_boxed_opaque_existential_1(v48);
        outlined init with take of _ViewList_Elements(&v63, v48);
        __swift_destroy_boxed_opaque_existential_1(&v65);
        ++v26;
      }

      else
      {
        *(v59 + 8 * (v40 >> 6) + 64) |= 1 << v40;
        v49 = (v28[6] + 16 * v40);
        *v49 = v37;
        v49[1] = v38;
        outlined init with take of _ViewList_Elements(&v63, v28[7] + 40 * v40);
        __swift_destroy_boxed_opaque_existential_1(&v65);
        v50 = v28[2];
        v44 = __OFADD__(v50, 1);
        v51 = v50 + 1;
        if (v44)
        {
          goto LABEL_61;
        }

        v28[2] = v51;
        ++v26;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v65);
      ++v26;
    }
  }

  if (v25 <= v27 + 1)
  {
    v30 = v27 + 1;
  }

  else
  {
    v30 = v25;
  }

  v31 = v30 - 1;
  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v25)
    {
      v24 = 0;
      v68 = 0;
      v66 = 0u;
      v67 = 0u;
      v27 = v31;
      v65 = 0u;
      goto LABEL_40;
    }

    v24 = *(v4 + 8 * v29);
    ++v27;
    if (v24)
    {
      v27 = v29;
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  outlined destroy of LayoutGestureBox.Child(v55);
  outlined destroy of LayoutGestureBox.Child(v55);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t outlined init with copy of (key: EventID, value: EventType)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (key: EventID, value: EventType)(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (key: EventID, value: EventType)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (key: EventID, value: EventType))
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: EventID, value: EventType));
    }
  }
}

void type metadata accessor for EventFilter<TappableEvent>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for EventFilter<TappableEvent>)
  {
    v4 = type metadata accessor for EventFilter(0, &type metadata for TappableEvent, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for EventFilter<TappableEvent>);
    }
  }
}

uint64_t outlined destroy of (key: EventID, value: EventType)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for ForwardedEventDispatcher?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ForwardedEventDispatcher?)
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for ForwardedEventDispatcher, &protocol descriptor for ForwardedEventDispatcher);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ForwardedEventDispatcher?);
    }
  }
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_UnaryC7AdaptorVyAA05EmptyC0VG_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = AGCreateWeakAttribute();
  v6 = v5;
  v7 = HIDWORD(v5);
  type metadata accessor for _UnaryViewAdaptor<EmptyView>(0, &lazy cache variable for type metadata for _UnaryViewAdaptor<EmptyView>, &type metadata for EmptyView, &protocol witness table for EmptyView, type metadata accessor for _UnaryViewAdaptor);
  v9 = v8;
  v10 = *(a2 + 32);
  v44[1] = *(a2 + 16);
  v44[2] = v10;
  v44[0] = *a2;
  v11 = WORD2(v10);
  type metadata accessor for _UnaryViewAdaptor<EmptyView>(0, &lazy cache variable for type metadata for UnaryElements<TypedUnaryViewGenerator>, &type metadata for TypedUnaryViewGenerator, &protocol witness table for TypedUnaryViewGenerator, type metadata accessor for UnaryElements);
  v43[3] = v12;
  v43[4] = &protocol witness table for UnaryElements<A>;
  v13 = swift_allocObject();
  v43[0] = v13;
  *(v13 + 16) = v6;
  *(v13 + 20) = v7;
  *(v13 + 24) = v9;
  *(v13 + 32) = &protocol witness table for _UnaryViewAdaptor<A>;
  v14 = *(a2 + 16);
  *(v13 + 40) = *a2;
  *(v13 + 56) = v14;
  *(v13 + 72) = *(a2 + 32);
  if ((v11 & 0x100) != 0)
  {
    v18 = *&v44[0];
    outlined init with copy of _GraphInputs(v44, v33);
    v19 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(v18);
    Attribute = AGWeakAttributeGetAttribute();
    v16 = *MEMORY[0x1E698D3F8];
    v17 = Attribute == *MEMORY[0x1E698D3F8];
    if (Attribute == *MEMORY[0x1E698D3F8])
    {
      v15 = 0;
    }

    else
    {
      v15 = v19;
    }
  }

  else
  {
    outlined init with copy of _GraphInputs(v44, v33);
    v15 = 0;
    v16 = *MEMORY[0x1E698D3F8];
    v17 = 1;
  }

  v21 = *(a2 + 64);
  if (v21 != v16)
  {
    goto LABEL_13;
  }

  v22 = !v17;
  if ((*(a2 + 56) & 3) == 1)
  {
    v22 = 1;
  }

  if (v22 & 1) != 0 || (v23 = *(a2 + 128), v23 != 255) && ((v23 & 1) != 0 || (*(a2 + 120)))
  {
LABEL_13:
    outlined init with copy of AnyTrackedValue(v43, v32);
    v24 = *(a2 + 48);
    v25 = (*(a2 + 56) & 1) != 0 && (*(a2 + 56) & 2) == 0;
    v31 = *(a2 + 112);
    v26 = *(a2 + 128);
    v27 = *(a2 + 72);
    v28 = *(a2 + 80);
    if (v21 == v16)
    {
      v21 = v16;
    }

    outlined init with take of _ViewList_Elements(v32, v33);
    v34 = v24;
    v35 = v25;
    v36 = v15;
    v37 = v17;
    v38 = v31;
    v39 = v26;
    v40 = v27;
    v41 = v28;
    v42 = v21;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ViewList();
    lazy protocol witness table accessor for type BaseViewList.Init and conformance BaseViewList.Init();

    v29 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of BaseViewList.Init(v33);
    *a3 = v29;
    *(a3 + 8) = 0;
    *(a3 + 40) = 1;
  }

  else
  {
    outlined init with copy of AnyTrackedValue(v43, a3);
    *(a3 + 40) = 0;
    v24 = *(a2 + 48);
  }

  *(a3 + 48) = v24 + 1;
  *(a3 + 56) = 1;
  *(a3 + 64) = 0;
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a2, &type metadata for DynamicTextView, &protocol witness table for DynamicTextView, x8_0);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06MappedC7ElementV11Placeholder33_0869CE5E72C6BD6754FF980DEA862555LLV_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a2, &type metadata for MappedViewElement.Placeholder, &protocol witness table for MappedViewElement.Placeholder, x8_0);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  v9 = AGCreateWeakAttribute();
  v10 = v9;
  v11 = HIDWORD(v9);
  v12 = *(a2 + 32);
  v46[1] = *(a2 + 16);
  v46[2] = v12;
  v46[0] = *a2;
  v13 = WORD2(v12);
  type metadata accessor for _UnaryViewAdaptor<EmptyView>(0, &lazy cache variable for type metadata for UnaryElements<TypedUnaryViewGenerator>, &type metadata for TypedUnaryViewGenerator, &protocol witness table for TypedUnaryViewGenerator, type metadata accessor for UnaryElements);
  v45[3] = v14;
  v45[4] = &protocol witness table for UnaryElements<A>;
  v15 = swift_allocObject();
  v45[0] = v15;
  *(v15 + 16) = v10;
  *(v15 + 20) = v11;
  *(v15 + 24) = a3;
  *(v15 + 32) = a4;
  v16 = *(a2 + 16);
  *(v15 + 40) = *a2;
  *(v15 + 56) = v16;
  *(v15 + 72) = *(a2 + 32);
  if ((v13 & 0x100) != 0)
  {
    v20 = *&v46[0];
    outlined init with copy of _GraphInputs(v46, v35);
    v21 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(v20);
    Attribute = AGWeakAttributeGetAttribute();
    v18 = *MEMORY[0x1E698D3F8];
    v19 = Attribute == *MEMORY[0x1E698D3F8];
    if (Attribute == *MEMORY[0x1E698D3F8])
    {
      v17 = 0;
    }

    else
    {
      v17 = v21;
    }
  }

  else
  {
    outlined init with copy of _GraphInputs(v46, v35);
    v17 = 0;
    v18 = *MEMORY[0x1E698D3F8];
    v19 = 1;
  }

  v23 = *(a2 + 64);
  if (v23 != v18)
  {
    goto LABEL_13;
  }

  v24 = !v19;
  if ((*(a2 + 56) & 3) == 1)
  {
    v24 = 1;
  }

  if (v24 & 1) != 0 || (v25 = *(a2 + 128), v25 != 255) && ((v25 & 1) != 0 || (*(a2 + 120)))
  {
LABEL_13:
    outlined init with copy of AnyTrackedValue(v45, v34);
    v26 = *(a2 + 48);
    v27 = (*(a2 + 56) & 1) != 0 && (*(a2 + 56) & 2) == 0;
    v33 = *(a2 + 112);
    v28 = *(a2 + 128);
    v29 = *(a2 + 72);
    v30 = *(a2 + 80);
    if (v23 == v18)
    {
      v23 = v18;
    }

    outlined init with take of _ViewList_Elements(v34, v35);
    v36 = v26;
    v37 = v27;
    v38 = v17;
    v39 = v19;
    v40 = v33;
    v41 = v28;
    v42 = v29;
    v43 = v30;
    v44 = v23;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ViewList();
    lazy protocol witness table accessor for type BaseViewList.Init and conformance BaseViewList.Init();

    v31 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of BaseViewList.Init(v35);
    *a5 = v31;
    *(a5 + 8) = 0;
    *(a5 + 40) = 1;
  }

  else
  {
    outlined init with copy of AnyTrackedValue(v45, a5);
    *(a5 + 40) = 0;
    v26 = *(a2 + 48);
  }

  *(a5 + 48) = v26 + 1;
  *(a5 + 56) = 1;
  *(a5 + 64) = 0;
  return __swift_destroy_boxed_opaque_existential_1(v45);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA016ContainerStorageC033_0D94FA50AC33D329AB9E24A7FB1C1182LLV_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a2, &type metadata for ContainerStorageView, &protocol witness table for ContainerStorageView, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA018PrimitiveGlassItemC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a2, &type metadata for PrimitiveGlassItemView, &protocol witness table for PrimitiveGlassItemView, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA4TextV_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a2, &type metadata for Text, &protocol witness table for Text, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA5ImageV_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a2, &type metadata for Image, &protocol witness table for Image, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA7SubviewV_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a2, &type metadata for Subview, &protocol witness table for Subview, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAAE17AsymmetricalInsetVAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a2, type metadata accessor for _ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>, x8_0);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm@<X0>(uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = AGCreateWeakAttribute();
  v8 = v7;
  v9 = HIDWORD(v7);
  v10 = a3(0);
  v11 = *(a2 + 32);
  v45[1] = *(a2 + 16);
  v45[2] = v11;
  v45[0] = *a2;
  v12 = WORD2(v11);
  type metadata accessor for _UnaryViewAdaptor<EmptyView>(0, &lazy cache variable for type metadata for UnaryElements<TypedUnaryViewGenerator>, &type metadata for TypedUnaryViewGenerator, &protocol witness table for TypedUnaryViewGenerator, type metadata accessor for UnaryElements);
  v44[3] = v13;
  v44[4] = &protocol witness table for UnaryElements<A>;
  v14 = swift_allocObject();
  v44[0] = v14;
  *(v14 + 16) = v8;
  *(v14 + 20) = v9;
  *(v14 + 24) = v10;
  *(v14 + 32) = &protocol witness table for _ShapeView<A, B>;
  v15 = *(a2 + 16);
  *(v14 + 40) = *a2;
  *(v14 + 56) = v15;
  *(v14 + 72) = *(a2 + 32);
  if ((v12 & 0x100) != 0)
  {
    v19 = *&v45[0];
    outlined init with copy of _GraphInputs(v45, v34);
    v20 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(v19);
    Attribute = AGWeakAttributeGetAttribute();
    v17 = *MEMORY[0x1E698D3F8];
    v18 = Attribute == *MEMORY[0x1E698D3F8];
    if (Attribute == *MEMORY[0x1E698D3F8])
    {
      v16 = 0;
    }

    else
    {
      v16 = v20;
    }
  }

  else
  {
    outlined init with copy of _GraphInputs(v45, v34);
    v16 = 0;
    v17 = *MEMORY[0x1E698D3F8];
    v18 = 1;
  }

  v22 = *(a2 + 64);
  if (v22 != v17)
  {
    goto LABEL_13;
  }

  v23 = !v18;
  if ((*(a2 + 56) & 3) == 1)
  {
    v23 = 1;
  }

  if (v23 & 1) != 0 || (v24 = *(a2 + 128), v24 != 255) && ((v24 & 1) != 0 || (*(a2 + 120)))
  {
LABEL_13:
    outlined init with copy of AnyTrackedValue(v44, v33);
    v25 = *(a2 + 48);
    v26 = (*(a2 + 56) & 1) != 0 && (*(a2 + 56) & 2) == 0;
    v32 = *(a2 + 112);
    v27 = *(a2 + 128);
    v28 = *(a2 + 72);
    v29 = *(a2 + 80);
    if (v22 == v17)
    {
      v22 = v17;
    }

    outlined init with take of _ViewList_Elements(v33, v34);
    v35 = v25;
    v36 = v26;
    v37 = v16;
    v38 = v18;
    v39 = v32;
    v40 = v27;
    v41 = v28;
    v42 = v29;
    v43 = v22;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ViewList();
    lazy protocol witness table accessor for type BaseViewList.Init and conformance BaseViewList.Init();

    v30 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of BaseViewList.Init(v34);
    *a4 = v30;
    *(a4 + 8) = 0;
    *(a4 + 40) = 1;
  }

  else
  {
    outlined init with copy of AnyTrackedValue(v44, a4);
    *(a4 + 40) = 0;
    v25 = *(a2 + 48);
  }

  *(a4 + 48) = v25 + 1;
  *(a4 + 56) = 1;
  *(a4 + 64) = 0;
  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA14GeometryReaderVyAA15ModifiedContentVyAA22GlassContainerResolverVyAPyAA6ZStackVyAA7ForEachVySayAA0pQ0O6EffectVGAX15DisplayMaterialV2IDVAPyAA0pvC033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGGGAA0pQ18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGG_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = AGCreateWeakAttribute();
  v6 = v5;
  v7 = HIDWORD(v5);
  type metadata accessor for GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>(0, &lazy cache variable for type metadata for GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, type metadata accessor for ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>, lazy protocol witness table accessor for type ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2> and conformance <> ModifiedContent<A, B>, type metadata accessor for GeometryReader);
  v9 = v8;
  v10 = *(a2 + 32);
  v44[1] = *(a2 + 16);
  v44[2] = v10;
  v44[0] = *a2;
  v11 = WORD2(v10);
  type metadata accessor for _UnaryViewAdaptor<EmptyView>(0, &lazy cache variable for type metadata for UnaryElements<TypedUnaryViewGenerator>, &type metadata for TypedUnaryViewGenerator, &protocol witness table for TypedUnaryViewGenerator, type metadata accessor for UnaryElements);
  v43[3] = v12;
  v43[4] = &protocol witness table for UnaryElements<A>;
  v13 = swift_allocObject();
  v43[0] = v13;
  *(v13 + 16) = v6;
  *(v13 + 20) = v7;
  *(v13 + 24) = v9;
  *(v13 + 32) = &protocol witness table for GeometryReader<A>;
  v14 = *(a2 + 16);
  *(v13 + 40) = *a2;
  *(v13 + 56) = v14;
  *(v13 + 72) = *(a2 + 32);
  if ((v11 & 0x100) != 0)
  {
    v18 = *&v44[0];
    outlined init with copy of _GraphInputs(v44, v33);
    v19 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(v18);
    Attribute = AGWeakAttributeGetAttribute();
    v16 = *MEMORY[0x1E698D3F8];
    v17 = Attribute == *MEMORY[0x1E698D3F8];
    if (Attribute == *MEMORY[0x1E698D3F8])
    {
      v15 = 0;
    }

    else
    {
      v15 = v19;
    }
  }

  else
  {
    outlined init with copy of _GraphInputs(v44, v33);
    v15 = 0;
    v16 = *MEMORY[0x1E698D3F8];
    v17 = 1;
  }

  v21 = *(a2 + 64);
  if (v21 != v16)
  {
    goto LABEL_13;
  }

  v22 = !v17;
  if ((*(a2 + 56) & 3) == 1)
  {
    v22 = 1;
  }

  if (v22 & 1) != 0 || (v23 = *(a2 + 128), v23 != 255) && ((v23 & 1) != 0 || (*(a2 + 120)))
  {
LABEL_13:
    outlined init with copy of AnyTrackedValue(v43, v32);
    v24 = *(a2 + 48);
    v25 = (*(a2 + 56) & 1) != 0 && (*(a2 + 56) & 2) == 0;
    v31 = *(a2 + 112);
    v26 = *(a2 + 128);
    v27 = *(a2 + 72);
    v28 = *(a2 + 80);
    if (v21 == v16)
    {
      v21 = v16;
    }

    outlined init with take of _ViewList_Elements(v32, v33);
    v34 = v24;
    v35 = v25;
    v36 = v15;
    v37 = v17;
    v38 = v31;
    v39 = v26;
    v40 = v27;
    v41 = v28;
    v42 = v21;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ViewList();
    lazy protocol witness table accessor for type BaseViewList.Init and conformance BaseViewList.Init();

    v29 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of BaseViewList.Init(v33);
    *a3 = v29;
    *(a3 + 8) = 0;
    *(a3 + 40) = 1;
  }

  else
  {
    outlined init with copy of AnyTrackedValue(v43, a3);
    *(a3 + 40) = 0;
    v24 = *(a2 + 48);
  }

  *(a3 + 48) = v24 + 1;
  *(a3 + 56) = 1;
  *(a3 + 64) = 0;
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA14GeometryReaderVyAA010GlassEntryC033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = AGCreateWeakAttribute();
  v6 = v5;
  v7 = HIDWORD(v5);
  type metadata accessor for IndexingIterator<SubviewsCollectionSlice>(0, &lazy cache variable for type metadata for GeometryReader<GlassEntryView>, lazy protocol witness table accessor for type GlassEntryView and conformance GlassEntryView, &type metadata for GlassEntryView, type metadata accessor for GeometryReader);
  v9 = v8;
  v10 = *(a2 + 32);
  v44[1] = *(a2 + 16);
  v44[2] = v10;
  v44[0] = *a2;
  v11 = WORD2(v10);
  type metadata accessor for _UnaryViewAdaptor<EmptyView>(0, &lazy cache variable for type metadata for UnaryElements<TypedUnaryViewGenerator>, &type metadata for TypedUnaryViewGenerator, &protocol witness table for TypedUnaryViewGenerator, type metadata accessor for UnaryElements);
  v43[3] = v12;
  v43[4] = &protocol witness table for UnaryElements<A>;
  v13 = swift_allocObject();
  v43[0] = v13;
  *(v13 + 16) = v6;
  *(v13 + 20) = v7;
  *(v13 + 24) = v9;
  *(v13 + 32) = &protocol witness table for GeometryReader<A>;
  v14 = *(a2 + 16);
  *(v13 + 40) = *a2;
  *(v13 + 56) = v14;
  *(v13 + 72) = *(a2 + 32);
  if ((v11 & 0x100) != 0)
  {
    v18 = *&v44[0];
    outlined init with copy of _GraphInputs(v44, v33);
    v19 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(v18);
    Attribute = AGWeakAttributeGetAttribute();
    v16 = *MEMORY[0x1E698D3F8];
    v17 = Attribute == *MEMORY[0x1E698D3F8];
    if (Attribute == *MEMORY[0x1E698D3F8])
    {
      v15 = 0;
    }

    else
    {
      v15 = v19;
    }
  }

  else
  {
    outlined init with copy of _GraphInputs(v44, v33);
    v15 = 0;
    v16 = *MEMORY[0x1E698D3F8];
    v17 = 1;
  }

  v21 = *(a2 + 64);
  if (v21 != v16)
  {
    goto LABEL_13;
  }

  v22 = !v17;
  if ((*(a2 + 56) & 3) == 1)
  {
    v22 = 1;
  }

  if (v22 & 1) != 0 || (v23 = *(a2 + 128), v23 != 255) && ((v23 & 1) != 0 || (*(a2 + 120)))
  {
LABEL_13:
    outlined init with copy of AnyTrackedValue(v43, v32);
    v24 = *(a2 + 48);
    v25 = (*(a2 + 56) & 1) != 0 && (*(a2 + 56) & 2) == 0;
    v31 = *(a2 + 112);
    v26 = *(a2 + 128);
    v27 = *(a2 + 72);
    v28 = *(a2 + 80);
    if (v21 == v16)
    {
      v21 = v16;
    }

    outlined init with take of _ViewList_Elements(v32, v33);
    v34 = v24;
    v35 = v25;
    v36 = v15;
    v37 = v17;
    v38 = v31;
    v39 = v26;
    v40 = v27;
    v41 = v28;
    v42 = v21;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ViewList();
    lazy protocol witness table accessor for type BaseViewList.Init and conformance BaseViewList.Init();

    v29 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of BaseViewList.Init(v33);
    *a3 = v29;
    *(a3 + 8) = 0;
    *(a3 + 40) = 1;
  }

  else
  {
    outlined init with copy of AnyTrackedValue(v43, a3);
    *(a3 + 40) = 0;
    v24 = *(a2 + 48);
  }

  *(a3 + 48) = v24 + 1;
  *(a3 + 56) = 1;
  *(a3 + 64) = 0;
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA015CombinedContentL033_6E67AD6866B38627EB183D41FF0BA80ALLVAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a2, type metadata accessor for _ShapeView<CombinedContentShape, ForegroundStyle>, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA22GlassContainerResolverVyAA15ModifiedContentVyAA6ZStackVyAA7ForEachVySayAA0lM0O6EffectVGAV15DisplayMaterialV2IDVAPyAA0ltC033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGGGAA0lM18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGG_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = AGCreateWeakAttribute();
  v6 = v5;
  v7 = HIDWORD(v5);
  type metadata accessor for GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>(0, &lazy cache variable for type metadata for GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, type metadata accessor for ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>, lazy protocol witness table accessor for type ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for GlassContainerResolver);
  v9 = v8;
  v10 = *(a2 + 32);
  v44[1] = *(a2 + 16);
  v44[2] = v10;
  v44[0] = *a2;
  v11 = WORD2(v10);
  type metadata accessor for _UnaryViewAdaptor<EmptyView>(0, &lazy cache variable for type metadata for UnaryElements<TypedUnaryViewGenerator>, &type metadata for TypedUnaryViewGenerator, &protocol witness table for TypedUnaryViewGenerator, type metadata accessor for UnaryElements);
  v43[3] = v12;
  v43[4] = &protocol witness table for UnaryElements<A>;
  v13 = swift_allocObject();
  v43[0] = v13;
  *(v13 + 16) = v6;
  *(v13 + 20) = v7;
  *(v13 + 24) = v9;
  *(v13 + 32) = &protocol witness table for GlassContainerResolver<A>;
  v14 = *(a2 + 16);
  *(v13 + 40) = *a2;
  *(v13 + 56) = v14;
  *(v13 + 72) = *(a2 + 32);
  if ((v11 & 0x100) != 0)
  {
    v18 = *&v44[0];
    outlined init with copy of _GraphInputs(v44, v33);
    v19 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(v18);
    Attribute = AGWeakAttributeGetAttribute();
    v16 = *MEMORY[0x1E698D3F8];
    v17 = Attribute == *MEMORY[0x1E698D3F8];
    if (Attribute == *MEMORY[0x1E698D3F8])
    {
      v15 = 0;
    }

    else
    {
      v15 = v19;
    }
  }

  else
  {
    outlined init with copy of _GraphInputs(v44, v33);
    v15 = 0;
    v16 = *MEMORY[0x1E698D3F8];
    v17 = 1;
  }

  v21 = *(a2 + 64);
  if (v21 != v16)
  {
    goto LABEL_13;
  }

  v22 = !v17;
  if ((*(a2 + 56) & 3) == 1)
  {
    v22 = 1;
  }

  if (v22 & 1) != 0 || (v23 = *(a2 + 128), v23 != 255) && ((v23 & 1) != 0 || (*(a2 + 120)))
  {
LABEL_13:
    outlined init with copy of AnyTrackedValue(v43, v32);
    v24 = *(a2 + 48);
    v25 = (*(a2 + 56) & 1) != 0 && (*(a2 + 56) & 2) == 0;
    v31 = *(a2 + 112);
    v26 = *(a2 + 128);
    v27 = *(a2 + 72);
    v28 = *(a2 + 80);
    if (v21 == v16)
    {
      v21 = v16;
    }

    outlined init with take of _ViewList_Elements(v32, v33);
    v34 = v24;
    v35 = v25;
    v36 = v15;
    v37 = v17;
    v38 = v31;
    v39 = v26;
    v40 = v27;
    v41 = v28;
    v42 = v21;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ViewList();
    lazy protocol witness table accessor for type BaseViewList.Init and conformance BaseViewList.Init();

    v29 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of BaseViewList.Init(v33);
    *a3 = v29;
    *(a3 + 8) = 0;
    *(a3 + 40) = 1;
  }

  else
  {
    outlined init with copy of AnyTrackedValue(v43, a3);
    *(a3 + 40) = 0;
    v24 = *(a2 + 48);
  }

  *(a3 + 48) = v24 + 1;
  *(a3 + 56) = 1;
  *(a3 + 64) = 0;
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA01_cd1_C0V_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a2, &type metadata for _ViewList_View, &protocol witness table for _ViewList_View, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA08BackdropC0V_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a2, &type metadata for BackdropView, &protocol witness table for BackdropView, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA12MeshGradientV_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a2, &type metadata for MeshGradient, &protocol witness table for MeshGradient, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA17ConditionalSpacerV_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a2, &type metadata for ConditionalSpacer, &protocol witness table for ConditionalSpacer, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA09MountablecE0V07Displayd5ProxyC0V_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a2, &type metadata for MountableViewOutputs.DisplayListProxyView, &protocol witness table for MountableViewOutputs.DisplayListProxyView, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA017StyledTextContentC0V_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a2, &type metadata for StyledTextContentView, &protocol witness table for StyledTextContentView, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA09_VariadicC9_ChildrenV7ElementV_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a2, &type metadata for _VariadicView_Children.Element, &protocol witness table for _VariadicView_Children.Element, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA26_BackdropEffectPlaceholderV_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a2, &type metadata for _BackdropEffectPlaceholder, &protocol witness table for _BackdropEffectPlaceholder, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA27_TextBaselineRelativeSpacerV_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a2, &type metadata for _TextBaselineRelativeSpacer, &protocol witness table for _TextBaselineRelativeSpacer, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA5ColorV_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a2, &type metadata for Color, &protocol witness table for Color, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA5ImageVAAE8ResolvedV_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a2, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA6SpacerV_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a2, &type metadata for Spacer, &protocol witness table for Spacer, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA8_HSpacerV_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a2, &type metadata for _HSpacer, &protocol witness table for _HSpacer, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA8_VSpacerV_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a2, &type metadata for _VSpacer, &protocol witness table for _VSpacer, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA05ColorC0V_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a2, &type metadata for ColorView, &protocol witness table for ColorView, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a2, type metadata accessor for _ShapeView<Rectangle, ForegroundStyle>, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleV6_InsetVAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a2, type metadata accessor for _ShapeView<Rectangle._Inset, ForegroundStyle>, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA03AnyL0VAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a2, type metadata accessor for _ShapeView<AnyShape, ForegroundStyle>, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA7EllipseVAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a2, type metadata accessor for _ShapeView<Ellipse, ForegroundStyle>, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA7EllipseV6_InsetVAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a2, type metadata accessor for _ShapeView<Ellipse._Inset, ForegroundStyle>, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA7CapsuleVAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a2, type metadata accessor for _ShapeView<Capsule, ForegroundStyle>, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA7CapsuleV6_InsetVAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a2, type metadata accessor for _ShapeView<Capsule._Inset, ForegroundStyle>, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA6CircleVAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a2, type metadata accessor for _ShapeView<Circle, ForegroundStyle>, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA6CircleV6_InsetVAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a2, type metadata accessor for _ShapeView<Circle._Inset, ForegroundStyle>, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA4PathVAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a2, type metadata accessor for _ShapeView<Path, ForegroundStyle>, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA024PartialContainerRelativeL0VAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a2, type metadata accessor for _ShapeView<PartialContainerRelativeShape, ForegroundStyle>, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA018DefaultGlassEffectL0VAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a2, type metadata accessor for _ShapeView<DefaultGlassEffectShape, ForegroundStyle>, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA22UnevenRoundedRectangleVAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a2, type metadata accessor for _ShapeView<UnevenRoundedRectangle, ForegroundStyle>, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA22UnevenRoundedRectangleV6_InsetVAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a2, type metadata accessor for _ShapeView<UnevenRoundedRectangle._Inset, ForegroundStyle>, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA017ImplicitContainerL0VAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a2, type metadata accessor for _ShapeView<ImplicitContainerShape, ForegroundStyle>, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA017ContainerRelativeL0VAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a2, type metadata accessor for _ShapeView<ContainerRelativeShape, ForegroundStyle>, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA017ContainerRelativeL0V6_InsetVAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a2, type metadata accessor for _ShapeView<ContainerRelativeShape._Inset, ForegroundStyle>, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA19ConcentricRectangleVAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a2, type metadata accessor for _ShapeView<ConcentricRectangle, ForegroundStyle>, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA18EllipticalGradientVG_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a2, type metadata accessor for _ShapeView<Rectangle, EllipticalGradient>, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA16RoundedRectangleVAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a2, type metadata accessor for _ShapeView<RoundedRectangle, ForegroundStyle>, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA16RoundedRectangleV6_InsetVAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a2, type metadata accessor for _ShapeView<RoundedRectangle._Inset, ForegroundStyle>, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA15AngularGradientVG_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a2, type metadata accessor for _ShapeView<Rectangle, AngularGradient>, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14RadialGradientVG_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a2, type metadata accessor for _ShapeView<Rectangle, RadialGradient>, a3);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a2, type metadata accessor for _ShapeView<Rectangle, LinearGradient>, a3);
}

uint64_t static _ViewListOutputs.nonEmptyParentViewList(inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  outlined init with copy of _ViewListInputs(a1, v11);
  LODWORD(v9) = *(a1 + 64);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type EmptyViewTrait and conformance EmptyViewTrait();
  v12 = Attribute.init<A>(body:value:flags:update:)();
  if (v13)
  {
    v9 = v13;
    v10 = v14 & 1;
    v13 = 0;
    v14 = 0;
    specialized Set._Variant.insert(_:)(&v8, &type metadata for IsEmptyViewTraitKey);
    v4 = v9;
    v5 = v10;

    v13 = v4;
    v14 = v5;
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for _UnaryViewAdaptor<EmptyView>(0, &lazy cache variable for type metadata for _UnaryViewAdaptor<EmptyView>, &type metadata for EmptyView, &protocol witness table for EmptyView, type metadata accessor for _UnaryViewAdaptor);
  specialized GraphHost.intern<A>(_:for:id:)(v6, 0);

  _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_UnaryC7AdaptorVyAA05EmptyC0VG_Tt2B5(v11, a2);
  return outlined destroy of _ViewListInputs(v11);
}

uint64_t DepthTrait.value.getter@<X0>(uint64_t *a1@<X8>)
{
  if (*v1 == *MEMORY[0x1E698D3F8])
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v3 = *AGGraphGetValue();
  }

  v4 = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA05DepthdJ0V_Tt0B5(0, v3);
  v5 = __OFADD__(v4, 1);
  result = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    result = _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA05DepthdG0V_Tt0g5(result);
    *a1 = v3;
  }

  return result;
}

uint64_t SectionHeaderTrait.value.getter@<X0>(uint64_t *a1@<X8>)
{
  if (*v1 == *MEMORY[0x1E698D3F8])
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    AGGraphGetValue();
  }

  v5 = v3;
  result = _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA015IsSectionHeaderdG0V_Tt0g5(1);
  *a1 = v5;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance SectionedTrait@<X0>(uint64_t (*a1)(uint64_t)@<X2>, uint64_t *a2@<X8>)
{
  if (*v2 == *MEMORY[0x1E698D3F8])
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    AGGraphGetValue();
  }

  v7 = v5;
  result = a1(1);
  *a2 = v7;
  return result;
}

uint64_t (*ViewTraitCollection.groupDepth.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA05DepthdJ0V_Tt0B5(0, *v1);
  return ViewTraitCollection.groupDepth.modify;
}

uint64_t (*ViewTraitCollection.isSectioned.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA011IsSectioneddJ0V_Tt0B5(0, *v1) & 1;
  return ViewTraitCollection.isSectioned.modify;
}

uint64_t (*ViewTraitCollection.isEmptyView.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA07IsEmptycdJ0V_Tt0B5(0, *v1) & 1;
  return ViewTraitCollection.isEmptyView.modify;
}

uint64_t (*ViewTraitCollection.isSectionHeader.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA015IsSectionHeaderdJ0V_Tt0B5(0, *v1) & 1;
  return ViewTraitCollection.isSectionHeader.modify;
}

uint64_t (*ViewTraitCollection.isSectionFooter.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA015IsSectionFooterdJ0V_Tt0B5(0, *v1) & 1;
  return ViewTraitCollection.isSectionFooter.modify;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      type metadata accessor for _ContiguousArrayStorage<NSCalendarUnit>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NSCalendarUnit>, type metadata accessor for NSCalendarUnit, MEMORY[0x1E69E6F90]);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 4 * a3), 4 * v5);
        return;
      }
    }

    else
    {
      type metadata accessor for _ContiguousArrayStorage<NSCalendarUnit>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Attribute<ViewList>>, type metadata accessor for Attribute<ViewList>, MEMORY[0x1E69E6F90]);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 29;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 2);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

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
      type metadata accessor for _ContiguousArrayStorage<_ViewListOutputs>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_LazyLayout_PlacedSubview>, &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 80);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(void *result)
{
  v1 = result[3];
  if ((v1 & 0x8000000000000000) == 0)
  {
    if (v1)
    {
      v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSb_Tt1gq5(result[3], 0);

      v3 = specialized Sequence._copySequenceContents(initializing:)(v4, (v2 + 4), v1);

      if (v3 == v1)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
  return result;
}

{
  v1 = result[6];
  v2 = result[7];
  v3 = v2 - v1;
  if (v2 < v1)
  {
    __break(1u);
  }

  else if (!__OFSUB__(v2, v1))
  {
    if (v3)
    {
      v4 = result;
      v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV6LayoutV8RunSliceV_Tt1gq5(v2 - v1, 0);
      v6 = v4[1];
      v9[0] = *v4;
      v9[1] = v6;
      v7 = v4[3];
      v9[2] = v4[2];
      v9[3] = v7;
      outlined init with copy of Text.Layout.RunSlice(v9, v10);
      v8 = specialized Sequence._copySequenceContents(initializing:)(v10, (v5 + 4), v3);
      outlined destroy of IndexingIterator<SubviewsCollectionSlice>(v10, &lazy cache variable for type metadata for IndexingIterator<Text.Layout.RunSlice>, lazy protocol witness table accessor for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice, &type metadata for Text.Layout.RunSlice);
      if (v8 == v3)
      {
        return v5;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
  return result;
}

{
  v1 = result[1];
  v2 = v1 - *result;
  if (v1 < *result)
  {
    __break(1u);
  }

  else if (!__OFSUB__(v1, *result))
  {
    if (v2)
    {
      v3 = result;
      v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI7SubviewV_Tt1gq5(v1 - *result, 0);
      outlined init with copy of SubviewsCollectionSlice(v3, v6);
      v5 = specialized Sequence._copySequenceContents(initializing:)(v7, (v4 + 4), v2);
      outlined destroy of IndexingIterator<SubviewsCollectionSlice>(v7, &lazy cache variable for type metadata for IndexingIterator<SubviewsCollectionSlice>, lazy protocol witness table accessor for type SubviewsCollectionSlice and conformance SubviewsCollectionSlice, &type metadata for SubviewsCollectionSlice);
      if (v5 == v2)
      {
        return v4;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
  return result;
}

{
  v1 = result[5];
  if ((v1 & 0x8000000000000000) == 0)
  {
    if (v1)
    {
      v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4DataV_Tt1gq5(result[5], 0);

      v3 = specialized Sequence._copySequenceContents(initializing:)(&v4, (v2 + 4), v1);

      if (v3 == v1)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
  return result;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t *a1)
{
  v1 = *(*a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV6LayoutV4LineV_Tt1gq5(*(*a1 + 16), 0);
  v3 = specialized Sequence._copySequenceContents(initializing:)(v5, (v2 + 4), v1);

  if (v3 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV6LayoutV8RunSliceV_Tt1gq5(*(v1 + 16), 0);

  v4 = specialized Sequence._copySequenceContents(initializing:)(v6, v3 + 2, v2);

  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV6LayoutVAFE11DecorationsV8FragmentV_Tt1gq5(*(v1 + 16), 0);
  v5 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v5;
  v8[2] = *(a1 + 32);
  v9 = *(a1 + 48);
  outlined init with copy of Text.Layout.Decorations.Segment(v8, v10);
  v6 = specialized Sequence._copySequenceContents(initializing:)(v10, v4 + 2, v2);
  outlined destroy of IndexingIterator<SubviewsCollectionSlice>(v10, &lazy cache variable for type metadata for IndexingIterator<Text.Layout.Decorations.Segment>, lazy protocol witness table accessor for type Text.Layout.Decorations.Segment and conformance Text.Layout.Decorations.Segment, &type metadata for Text.Layout.Decorations.Segment);
  if (v6 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

{
  v1 = *(a1 + 12);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI020_UnsafeHeterogeneousC8_ElementV_Tt1gq5(v1, 0);
  if (specialized Sequence._copySequenceContents(initializing:)(v4, v2 + 4, v1) != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

{
  v1 = *(a1 + 8);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI11LayoutProxyV_Tt1gq5(*(v1 + 16), 0);

  v4 = specialized Sequence._copySequenceContents(initializing:)(v6, (v3 + 4), v2);

  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

{
  v1 = *(a1 + 8);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI13LayoutSubviewV_Tt1gq5(*(v1 + 16), 0);

  v4 = specialized Sequence._copySequenceContents(initializing:)(v6, (v3 + 4), v2);

  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

{
  v1 = *(a1 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI12PlatformItemV_Tt1gq5(*(v1 + 16), 0);

  v4 = specialized Sequence._copySequenceContents(initializing:)(v6, (v3 + 4), v2);

  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t *a1)
{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV6LayoutVAFE11DecorationsV7SegmentV_Tt1gq5, specialized Sequence._copySequenceContents(initializing:));
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI20SectionConfigurationV_Tt1gq5, specialized Sequence._copySequenceContents(initializing:));
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI13PreferenceKey_pXp_Tt1gq5, specialized Sequence._copySequenceContents(initializing:));
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = v4;
  if (v3 == 1)
  {
    v6 = _NSTextLineFragmentGetCTLine(v4);

    if (v6)
    {
      RunCount = CTLineGetRunCount();
    }

    else
    {
      RunCount = 0;
    }

    v9 = v5;
    v8 = _NSTextLineFragmentGetCTLine(v9);

    if (!v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    RunCount = CTLineGetRunCount();

    v8 = v5;
  }

  v10 = CTLineGetRunCount();

  if (v10 < 0)
  {
LABEL_20:
    __break(1u);
    return;
  }

  if ((v3 & 1) == 0)
  {
    v12 = v5;
    goto LABEL_12;
  }

LABEL_9:
  v11 = v5;
  v12 = _NSTextLineFragmentGetCTLine(v11);

  if (v12)
  {
LABEL_12:
    v13 = CTLineGetRunCount();

    goto LABEL_13;
  }

  v13 = 0;
LABEL_13:
  if (RunCount < 0 || v13 < RunCount)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (RunCount)
  {
    v14 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV6LayoutV3RunV_Tt1gq5(RunCount, 0);
    outlined copy of Text.Layout.Line.Line(v1, v2);
    specialized Sequence._copySequenceContents(initializing:)(v17, (v14 + 4), RunCount);
    v16 = v15;
    outlined consume of Text.Layout.Line.Line(v17[0], v17[1]);
    if (v16 != RunCount)
    {
      __break(1u);
    }
  }
}

void specialized _copyCollectionToContiguousArray<A>(_:)(void **a1)
{
  v1 = *a1;
  v2 = CTLineGetRunAtIndex();
  GlyphCount = CTRunGetGlyphCount(v2);

  v4 = CTLineGetRunAtIndex();
  v5 = CTRunGetGlyphCount(v4);

  if (v5 < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v6 = CTLineGetRunAtIndex();
  v7 = CTRunGetGlyphCount(v6);

  if (GlyphCount < 0 || v7 < GlyphCount)
  {
    goto LABEL_9;
  }

  if (GlyphCount)
  {
    v8 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV6LayoutV8RunSliceV_Tt1gq5(GlyphCount, 0);

    v9 = v1;
    specialized Sequence._copySequenceContents(initializing:)(v12, (v8 + 4), GlyphCount);
    v11 = v10;

    if (v11 != GlyphCount)
    {
      __break(1u);
    }
  }
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI035CoreInteractionRepresentableFeatureC0V7ElementV_Tt1gq5, specialized Sequence._copySequenceContents(initializing:));
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI028CoreViewRepresentableFeatureC0V7ElementV_Tt1gq5, specialized Sequence._copySequenceContents(initializing:));
}

{
  v1 = *(*a1 + 88);
  v2 = v1();
  result = v1();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = v1();
    if ((v2 & 0x8000000000000000) == 0 && result >= v2)
    {
      if (v2)
      {
        v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI12_ViewList_IDV_Tt1gq5(v2, 0);

        v5 = specialized Sequence._copySequenceContents(initializing:)(&v6, (v4 + 32), v2);

        if (v5 == v2)
        {
          return v4;
        }

        __break(1u);
      }

      return MEMORY[0x1E69E7CC0];
    }
  }

  __break(1u);
  return result;
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI12_ViewList_IDV_Tt1gq5(*(a1 + 16), 0);

  specialized Sequence._copySequenceContents(initializing:)(v6, v2 + 32, v1);
  v4 = v3;

  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t result, uint64_t (*a2)(void, void), uint64_t (*a3)(_BYTE *, uint64_t, uint64_t))
{
  v3 = *(result + 12);
  if ((v3 & 0x80000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  if (v3)
  {
    v5 = *(result + 12);
    while (*result)
    {
      if (!--v5)
      {
        v6 = a2(*(result + 12), 0);
        if (a3(v7, v6 + 32, v3) == v3)
        {
          return v6;
        }

        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    goto LABEL_11;
  }

  return MEMORY[0x1E69E7CC0];
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t *a1, __n128 a2)
{
  v2 = *a1;
  v3 = _HashTable.startBucket.getter();
  v4 = specialized Collection.distance(from:to:)(v3, *(v2 + 36), 0, 1 << *(v2 + 32), *(v2 + 36), 0);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = v4;
  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS3key_7SwiftUI29AccessibilityCustomAttributesV5ValueO5valuet_Tt1gq5(v4, 0);
  type metadata accessor for (key: String, value: AccessibilityCustomAttributes.Value)(0);
  v8 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);

  specialized Sequence._copySequenceContents(initializing:)(v15, v6 + v8, v5);
  v10 = v9;
  v11 = v15[1];
  v12 = v15[2];
  v13 = v16;

  outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v11, v12, v13);
  if (v10 != v5)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v6;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(void *a1)
{
  v1 = *(*a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI32AnyAttributedTextValueConstraintV_Tt1gq5(*(*a1 + 16), 0);

  v3 = specialized Sequence._copySequenceContents(initializing:)(&v5, (v2 + 4), v1);

  if (v3 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v2 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = ViewList.count.getter(v3, v4);
  static Update.end()();
  _MovableLockUnlock(v2);
  _MovableLockLock(v2);
  specialized static Update.begin()();
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = ViewList.count.getter(v6, v7);
  static Update.end()();
  result = _MovableLockUnlock(v2);
  if (v8 < 0)
  {
    __break(1u);
  }

  else
  {
    _MovableLockLock(v2);
    specialized static Update.begin()();
    v10 = a1[3];
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v10);
    v12 = ViewList.count.getter(v10, v11);
    static Update.end()();
    result = _MovableLockUnlock(v2);
    if ((v5 & 0x8000000000000000) == 0 && v12 >= v5)
    {
      if (v5)
      {
        v13 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI22_VariadicView_ChildrenV7ElementV_Tt1gq5(v5, 0);
        outlined init with copy of _VariadicView_Children(a1, v15);
        v14 = specialized Sequence._copySequenceContents(initializing:)(v16, (v13 + 4), v5);
        outlined destroy of IndexingIterator<SubviewsCollectionSlice>(v16, &lazy cache variable for type metadata for IndexingIterator<_VariadicView_Children>, lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children, &type metadata for _VariadicView_Children);
        if (v14 == v5)
        {
          return v13;
        }

        __break(1u);
      }

      return MEMORY[0x1E69E7CC0];
    }
  }

  __break(1u);
  return result;
}

{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v2 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = ViewList.count.getter(v3, v4);
  static Update.end()();
  _MovableLockUnlock(v2);
  _MovableLockLock(v2);
  specialized static Update.begin()();
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = ViewList.count.getter(v6, v7);
  static Update.end()();
  result = _MovableLockUnlock(v2);
  if (v8 < 0)
  {
    __break(1u);
  }

  else
  {
    _MovableLockLock(v2);
    specialized static Update.begin()();
    v10 = a1[3];
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v10);
    v12 = ViewList.count.getter(v10, v11);
    static Update.end()();
    result = _MovableLockUnlock(v2);
    if ((v5 & 0x8000000000000000) == 0 && v12 >= v5)
    {
      if (v5)
      {
        v13 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI7SubviewV_Tt1gq5(v5, 0);
        outlined init with copy of SubviewsCollection(a1, v15);
        v14 = specialized Sequence._copySequenceContents(initializing:)(v16, (v13 + 4), v5);
        outlined destroy of IndexingIterator<SubviewsCollectionSlice>(v16, &lazy cache variable for type metadata for IndexingIterator<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection);
        if (v14 == v5)
        {
          return v13;
        }

        __break(1u);
      }

      return MEMORY[0x1E69E7CC0];
    }
  }

  __break(1u);
  return result;
}

{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (v2)
  {
    v3 = *(v1 + 80);
    v4 = SectionAccumulator.RowIDs.endIndex.getter();
    v5 = *(v1 + 80);
  }

  else
  {
    v4 = SectionAccumulator.RowIDs.endIndex.getter();
    v3 = 0;
    v5 = 0;
  }

  result = SectionAccumulator.RowIDs.endIndex.getter();
  if (v3 < v5 || result < v3)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v2)
  {
    v8 = *(v1 + 80);
  }

  else
  {
    v8 = 0;
  }

  result = SectionAccumulator.RowIDs.endIndex.getter();
  if (v4 < v8 || result < v4)
  {
    goto LABEL_20;
  }

  v9 = __OFSUB__(v4, v3);
  v10 = v4 - v3;
  if (!v9)
  {
    if (v10)
    {
      v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI12_ViewList_IDV9CanonicalV_Tt1gq5(v10, 0);

      specialized Sequence._copySequenceContents(initializing:)(&v14, v11 + 4, v10);
      v13 = v12;

      if (v13 == v10)
      {
        return v11;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

LABEL_21:
  __break(1u);
  return result;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 160);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI23LayoutGestureChildProxyV0L0V_Tt1gq5(*(v2 + 16), 0);
    v5 = swift_beginAccess();
    v7 = *(v1 + 160);
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = v3 - 1;
      v11 = 32;
      while (v9 < v8)
      {
        v22[0] = *(v7 + v11);
        v12 = *(v7 + v11 + 16);
        v13 = *(v7 + v11 + 32);
        v14 = *(v7 + v11 + 64);
        v22[3] = *(v7 + v11 + 48);
        v22[4] = v14;
        v22[1] = v12;
        v22[2] = v13;
        v15 = *(v7 + v11 + 80);
        v16 = *(v7 + v11 + 96);
        v17 = *(v7 + v11 + 128);
        v22[7] = *(v7 + v11 + 112);
        v22[8] = v17;
        v22[5] = v15;
        v22[6] = v16;
        v18 = *(v7 + v11 + 144);
        v19 = *(v7 + v11 + 160);
        v20 = *(v7 + v11 + 176);
        *(v23 + 12) = *(v7 + v11 + 188);
        v22[10] = v19;
        v23[0] = v20;
        v22[9] = v18;
        memmove(&v4[v11 / 8], (v7 + v11), 0xCCuLL);
        v5 = v22;
        v6 = v21;
        if (v10 == v9)
        {
          goto LABEL_8;
        }

        v5 = outlined init with copy of LayoutGestureBox.Child(v22, v21);
        v8 = *(v7 + 16);
        ++v9;
        v11 += 208;
        if (v9 == v8)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:
      __break(1u);
LABEL_8:
      outlined init with copy of LayoutGestureBox.Child(v5, v6);
    }
  }
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(char *result)
{
  v1 = *(result + 2);
  v2 = *(result + 3);
  v3 = (v2 >> 1) - v1;
  if (__OFSUB__(v2 >> 1, v1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = result[32];
  v5 = __OFADD__(v4, v3);
  v6 = v4 + v3;
  if (v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = v6 - v4;
  if (v6 < v4)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  if (v6 == v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI16_ShapeStyle_PackV0K0V_Tt1gq5(v6 - v4, 0);
  swift_unknownObjectRetain();
  v9 = specialized Sequence._copySequenceContents(initializing:)(v10, v8 + 32, v7);
  result = swift_unknownObjectRelease();
  if (v9 != v7)
  {
    goto LABEL_13;
  }

  return v8;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t *a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t))
{
  v3 = *(*a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = a2(*(*a1 + 16), 0);

  v6 = a3(&v8, v5 + 32, v3);

  if (v6 != v3)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(unint64_t a1, __n128 a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs10AnyKeyPathC_Tt1g5(v3, 0, a2);

    MEMORY[0x193AC0390](v4 + 32, v3, v2);
    v2 = v5;

    if (v2 == v3)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v3 = __CocoaSet.count.getter();
    if (!v3)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v4;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSb_Tt1gq5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<_ViewListOutputs>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void lazy protocol witness table accessor for type SectionFooterTrait and conformance SectionFooterTrait()
{
  if (!lazy protocol witness table cache variable for type SectionFooterTrait and conformance SectionFooterTrait)
  {
    swift_getWitnessTable(protocol conformance descriptor for SectionFooterTrait, &unk_1F005B560, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SectionFooterTrait and conformance SectionFooterTrait);
  }
}

void lazy protocol witness table accessor for type SectionHeaderTrait and conformance SectionHeaderTrait()
{
  if (!lazy protocol witness table cache variable for type SectionHeaderTrait and conformance SectionHeaderTrait)
  {
    swift_getWitnessTable(protocol conformance descriptor for SectionHeaderTrait, &type metadata for SectionHeaderTrait, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SectionHeaderTrait and conformance SectionHeaderTrait);
  }
}

void lazy protocol witness table accessor for type EmptyViewTrait and conformance EmptyViewTrait()
{
  if (!lazy protocol witness table cache variable for type EmptyViewTrait and conformance EmptyViewTrait)
  {
    swift_getWitnessTable(protocol conformance descriptor for EmptyViewTrait, &unk_1F005B510, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type EmptyViewTrait and conformance EmptyViewTrait);
  }
}

uint64_t *assignWithCopy for MakeSection(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 3) = *(a2 + 3);
  return a1;
}

uint64_t *assignWithTake for MakeSection(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 3) = *(a2 + 3);
  return a1;
}

void type metadata accessor for ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>)
  {
    type metadata accessor for GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>(255, &lazy cache variable for type metadata for ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, type metadata accessor for ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>, lazy protocol witness table accessor for type ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> ForEach<A, B, C>, type metadata accessor for ZStack);
    v4 = type metadata accessor for ModifiedContent(a1, v2, &type metadata for GlassContainerTintConfigModifier, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>);
    }
  }
}

void type metadata accessor for _UnaryViewAdaptor<EmptyView>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void lazy protocol witness table accessor for type _ViewList_Section and conformance _ViewList_Section()
{
  if (!lazy protocol witness table cache variable for type _ViewList_Section and conformance _ViewList_Section)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ViewList_Section, &type metadata for _ViewList_Section, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ViewList_Section and conformance _ViewList_Section);
  }
}

{
  if (!lazy protocol witness table cache variable for type _ViewList_Section and conformance _ViewList_Section)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ViewList_Section, &type metadata for _ViewList_Section, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ViewList_Section and conformance _ViewList_Section);
  }
}

void lazy protocol witness table accessor for type SubviewsCollectionSlice and conformance SubviewsCollectionSlice()
{
  if (!lazy protocol witness table cache variable for type SubviewsCollectionSlice and conformance SubviewsCollectionSlice)
  {
    swift_getWitnessTable(protocol conformance descriptor for SubviewsCollectionSlice, &type metadata for SubviewsCollectionSlice, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SubviewsCollectionSlice and conformance SubviewsCollectionSlice);
  }
}

{
  if (!lazy protocol witness table cache variable for type SubviewsCollectionSlice and conformance SubviewsCollectionSlice)
  {
    swift_getWitnessTable(protocol conformance descriptor for SubviewsCollectionSlice, &type metadata for SubviewsCollectionSlice, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SubviewsCollectionSlice and conformance SubviewsCollectionSlice);
  }
}

{
  if (!lazy protocol witness table cache variable for type SubviewsCollectionSlice and conformance SubviewsCollectionSlice)
  {
    swift_getWitnessTable(protocol conformance descriptor for SubviewsCollectionSlice, &type metadata for SubviewsCollectionSlice, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SubviewsCollectionSlice and conformance SubviewsCollectionSlice);
  }
}

{
  if (!lazy protocol witness table cache variable for type SubviewsCollectionSlice and conformance SubviewsCollectionSlice)
  {
    swift_getWitnessTable(protocol conformance descriptor for SubviewsCollectionSlice, &type metadata for SubviewsCollectionSlice, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SubviewsCollectionSlice and conformance SubviewsCollectionSlice);
  }
}

uint64_t outlined destroy of IndexingIterator<SubviewsCollectionSlice>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  type metadata accessor for IndexingIterator<SubviewsCollectionSlice>(0, a2, a3, a4, MEMORY[0x1E69E6CF0]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void lazy protocol witness table accessor for type Text.Layout.Decorations.Segment and conformance Text.Layout.Decorations.Segment()
{
  if (!lazy protocol witness table cache variable for type Text.Layout.Decorations.Segment and conformance Text.Layout.Decorations.Segment)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Layout.Decorations.Segment, &type metadata for Text.Layout.Decorations.Segment, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Layout.Decorations.Segment and conformance Text.Layout.Decorations.Segment);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Layout.Decorations.Segment and conformance Text.Layout.Decorations.Segment)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Layout.Decorations.Segment, &type metadata for Text.Layout.Decorations.Segment, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Layout.Decorations.Segment and conformance Text.Layout.Decorations.Segment);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Layout.Decorations.Segment and conformance Text.Layout.Decorations.Segment)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Layout.Decorations.Segment, &type metadata for Text.Layout.Decorations.Segment, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Layout.Decorations.Segment and conformance Text.Layout.Decorations.Segment);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Layout.Decorations.Segment and conformance Text.Layout.Decorations.Segment)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Layout.Decorations.Segment, &type metadata for Text.Layout.Decorations.Segment, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Layout.Decorations.Segment and conformance Text.Layout.Decorations.Segment);
  }
}

void lazy protocol witness table accessor for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice()
{
  if (!lazy protocol witness table cache variable for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Layout.RunSlice, &type metadata for Text.Layout.RunSlice, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Layout.RunSlice, &type metadata for Text.Layout.RunSlice, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Layout.RunSlice, &type metadata for Text.Layout.RunSlice, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Layout.RunSlice, &type metadata for Text.Layout.RunSlice, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice);
  }
}

void type metadata accessor for _ContiguousArrayStorage<_ViewListOutputs>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void type metadata accessor for IndexingIterator<SubviewsCollectionSlice>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

double protocol witness for static Rule.initialValue.getter in conformance PrivacyRedactionViewModifier.Child<A>@<D0>(_OWORD *a1@<X8>)
{
  *&result = 2;
  *a1 = xmmword_18DDBA140;
  return result;
}

uint64_t PrivacyRedactionViewModifier.Transform.PrivacyEffect.scrapeableContent.getter@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v2 = 0x9000000000000000;
  if ((result & 0x10100) == 0)
  {
    v2 = 0xF000000000000007;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for _RendererEffect.scrapeableContent.getter in conformance PrivacyRedactionViewModifier.Transform<A>.PrivacyEffect@<X0>(unint64_t *a1@<X8>)
{
  if (v1[2])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (v1[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return PrivacyRedactionViewModifier.Transform.PrivacyEffect.scrapeableContent.getter(v3 | *v1 | v2, a1);
}

void *EnvironmentValues.sensitiveContent.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016SensitiveContentI033_7799685610985DBA9248562F2E4D5E6ELLVG_Tt1g5(v1);

    return (v2 & 1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016SensitiveContentS0024_7799685610985DBA9248562L7E4D5E6ELLVG_Tt0g5(v1);
    if (result)
    {
      return *(result + 72);
    }
  }

  return result;
}

void key path getter for EnvironmentValues.sensitiveContent : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016SensitiveContentI033_7799685610985DBA9248562F2E4D5E6ELLVG_Tt1g5(v3);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016SensitiveContentS0024_7799685610985DBA9248562L7E4D5E6ELLVG_Tt0g5(*a1);
    if (v5)
    {
      v4 = *(v5 + 72);
    }

    else
    {
      v4 = 0;
    }
  }

  *a2 = v4 & 1;
}

double key path setter for EnvironmentValues.sensitiveContent : EnvironmentValues(char *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016SensitiveContentF033_7799685610985DBA9248562F2E4D5E6ELLVG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA016SensitiveContentK033_7799685610985DBA9248562F2E4D5E6ELLVG_Ttg5(v4, *a2);
  }

  return result;
}

double EnvironmentValues.sensitiveContent.setter(char a1)
{
  v2 = v1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016SensitiveContentF033_7799685610985DBA9248562F2E4D5E6ELLVG_Tt2g5(v2, a1);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA016SensitiveContentK033_7799685610985DBA9248562F2E4D5E6ELLVG_Ttg5(v4, *v2);
  }

  return result;
}

char *PrivacyRedactionViewModifier.WidgetAuxiliaryChild.value.getter@<X0>(uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  if ((*AGGraphGetValue() & 2) != 0 && *AGGraphGetValue() == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  v6 = swift_getKeyPath();
  result = AGGraphGetValue();
  v8 = *result;
  *a3 = KeyPath;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v8;
  return result;
}

void protocol witness for static Rule.initialValue.getter in conformance PrivacyRedactionViewModifier.WidgetAuxiliaryChild(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

double key path setter for _GraphInputs.privacyReductionAccessibilityProvider : _GraphInputs(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE037PrivacyReductionAccessibilityProviderF033_7799685610985DBA9248562F2E4D5E6ELLV_Tt2g5(a2, v3, v4);

  return result;
}

double _GraphInputs.privacyReductionAccessibilityProvider.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE037PrivacyReductionAccessibilityProviderF033_7799685610985DBA9248562F2E4D5E6ELLV_Tt2g5(v2, a1, a2);

  return result;
}

uint64_t (*_GraphInputs.privacyReductionAccessibilityProvider.modify(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE037PrivacyReductionAccessibilityProviderF033_7799685610985DBA9248562F2E4D5E6ELLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _GraphInputs.privacyReductionAccessibilityProvider.modify;
}

double protocol witness for static PropertyKey.defaultValue.getter in conformance _GraphInputs.PrivacyReductionAccessibilityProviderKey@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static _GraphInputs.PrivacyReductionAccessibilityProviderKey.defaultValue;
  *a1 = static _GraphInputs.PrivacyReductionAccessibilityProviderKey.defaultValue;
  return result;
}

uint64_t (*_ViewInputs.privacyReductionAccessibilityProvider.modify(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE037PrivacyReductionAccessibilityProviderF033_7799685610985DBA9248562F2E4D5E6ELLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _ViewInputs.privacyReductionAccessibilityProvider.modify;
}

void _GraphInputs.privacyReductionAccessibilityProvider.modify(uint64_t ***a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE037PrivacyReductionAccessibilityProviderF033_7799685610985DBA9248562F2E4D5E6ELLV_Tt2g5(v1[4], v3, v2);

  free(v1);
}

void (*EnvironmentValues.sensitiveContent.modify(void *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016SensitiveContentI033_7799685610985DBA9248562F2E4D5E6ELLVG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016SensitiveContentS0024_7799685610985DBA9248562L7E4D5E6ELLVG_Tt0g5(v5);
    if (v8)
    {
      v7 = *(v8 + 72);
    }

    else
    {
      v7 = 0;
    }
  }

  *(v4 + 40) = v7 & 1;
  return EnvironmentValues.sensitiveContent.modify;
}

void EnvironmentValues.sensitiveContent.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016SensitiveContentF033_7799685610985DBA9248562F2E4D5E6ELLVG_Tt2g5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA016SensitiveContentK033_7799685610985DBA9248562F2E4D5E6ELLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

void *_s7SwiftUI15ModifiedContentVA2A12ViewModifierRzAaDR_rlE05_makeE08modifier6inputs4bodyAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVAjA01_L0V_APtctFZAA022_EnvironmentKeyWritingF0VyAA16RedactionReasonsVG_ATySbGTt3B5@<X0>(__int128 *a2@<X1>, void (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a5@<X8>)
{
  v58 = *MEMORY[0x1E69E9840];
  AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<RedactionReasons>(0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], type metadata accessor for _EnvironmentKeyWritingModifier);
    AGSubgraphBeginTreeElement();
  }

  v7 = a2[3];
  v50 = a2[2];
  v51 = v7;
  v52 = a2[4];
  v53 = *(a2 + 20);
  v8 = a2[1];
  v48 = *a2;
  v49 = v8;
  v19 = v50;
  LODWORD(v50) = 0;
  v54[0] = v48;
  v54[1] = v8;
  v55 = v53;
  v54[3] = v7;
  v54[4] = v52;
  v54[2] = v50;
  v9 = *(&v8 + 1);
  v10 = *(a2 + 52);
  v44 = *(a2 + 36);
  v45 = v10;
  v46 = *(a2 + 68);
  v47 = v48;
  swift_beginAccess();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  outlined init with copy of _ViewInputs(v54, v56);
  outlined init with copy of _ViewInputs(v54, v56);
  outlined init with copy of _ViewInputs(a2, v56);
  type metadata accessor for _EnvironmentKeyWritingModifier<RedactionReasons>(0, &lazy cache variable for type metadata for ChildEnvironment<Bool>, MEMORY[0x1E69E6370], type metadata accessor for ChildEnvironment);
  lazy protocol witness table accessor for type ChildEnvironment<Bool> and conformance ChildEnvironment<A>();
  v11 = Attribute.init<A>(body:value:flags:update:)();
  v12 = MEMORY[0x1E69E7CC0];
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for _EnvironmentKeyWritingModifier<RedactionReasons>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  v15 = v9;
  *(v14 + 24) = v12;
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0u;
  *(v14 + 64) = 0u;
  *(v14 + 80) = 256;
  *(v14 + 82) = v22;
  *(v14 + 86) = v23;
  *(v14 + 88) = v13;

  v41 = v47;
  *&v42 = v14;
  *(&v42 + 1) = v9;
  *v43 = 32;
  *&v43[4] = v44;
  *&v43[20] = v45;
  *&v43[36] = v46;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (ShouldRecordTree)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<RedactionReasons>(0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<RedactionReasons>, &type metadata for RedactionReasons, type metadata accessor for _EnvironmentKeyWritingModifier);
    AGSubgraphBeginTreeElement();
  }

  v37 = *v43;
  v38 = *&v43[16];
  v39 = *&v43[32];
  v40 = *&v43[48];
  v35 = v41;
  v36 = v42;
  v17 = *v43;
  LODWORD(v37) = 0;
  v57 = *&v43[48];
  v56[3] = *&v43[16];
  v56[4] = *&v43[32];
  v56[0] = v41;
  v56[1] = v42;
  v56[2] = v37;
  outlined init with copy of _ViewInputs(&v41, &v28);
  outlined init with copy of _ViewInputs(v56, &v28);
  _s7SwiftUI12ViewModifierPA2A012_GraphInputsD0Rzs5NeverO4BodyACRtzrlE05_makeC08modifier6inputs4bodyAA01_C7OutputsVAA01_E5ValueVyxG_AA01_cF0VAnA01_E0V_AStctFZAA022_EnvironmentKeyWritingD0VyAA16RedactionReasonsVG_Tt3B5(OffsetAttribute2, v56, a3);
  outlined destroy of _ViewInputs(v56);
  LODWORD(v37) = v17;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a5, &v35);
    AGSubgraphEndTreeElement();
  }

  outlined destroy of _ViewInputs(v54);
  v26[2] = v37;
  v26[3] = v38;
  v26[4] = v39;
  v27 = v40;
  v26[0] = v35;
  v26[1] = v36;
  outlined destroy of _ViewInputs(v26);
  v28 = v47;
  v29 = v14;
  v30 = v15;
  v31 = 32;
  v32 = v44;
  v33 = v45;
  v34 = v46;
  outlined destroy of _ViewInputs(&v28);
  LODWORD(v50) = v19;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a5, &v48);
    AGSubgraphEndTreeElement();
  }

  v24[2] = v50;
  v24[3] = v51;
  v24[4] = v52;
  v25 = v53;
  v24[0] = v48;
  v24[1] = v49;
  return outlined destroy of _ViewInputs(v24);
}

void type metadata accessor for ModifiedContent<_EnvironmentKeyWritingModifier<RedactionReasons>, _EnvironmentKeyWritingModifier<Bool>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_EnvironmentKeyWritingModifier<RedactionReasons>, _EnvironmentKeyWritingModifier<Bool>>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<RedactionReasons>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<RedactionReasons>, &type metadata for RedactionReasons, type metadata accessor for _EnvironmentKeyWritingModifier);
    v3 = v2;
    type metadata accessor for _EnvironmentKeyWritingModifier<RedactionReasons>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], type metadata accessor for _EnvironmentKeyWritingModifier);
    v6 = type metadata accessor for ModifiedContent(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ModifiedContent<_EnvironmentKeyWritingModifier<RedactionReasons>, _EnvironmentKeyWritingModifier<Bool>>);
    }
  }
}

void lazy protocol witness table accessor for type PrivacyRedactionViewModifier.WidgetAuxiliaryChild and conformance PrivacyRedactionViewModifier.WidgetAuxiliaryChild()
{
  if (!lazy protocol witness table cache variable for type PrivacyRedactionViewModifier.WidgetAuxiliaryChild and conformance PrivacyRedactionViewModifier.WidgetAuxiliaryChild)
  {
    swift_getWitnessTable(protocol conformance descriptor for PrivacyRedactionViewModifier.WidgetAuxiliaryChild, &unk_1F005B8A8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PrivacyRedactionViewModifier.WidgetAuxiliaryChild and conformance PrivacyRedactionViewModifier.WidgetAuxiliaryChild);
  }
}

uint64_t getEnumTagSinglePayload for PrivacyRedactionViewModifier.Transform(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PrivacyRedactionViewModifier.Transform(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrivacyRedactionViewModifier.Transform.PrivacyEffect(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for PrivacyRedactionViewModifier.Transform.PrivacyEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

double (*_ContrastEffect.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return ViewSize.width.modify;
}

double _ContrastEffect.effectValue(size:)@<D0>(uint64_t a1@<X8>, double a2@<D2>)
{
  v4 = swift_allocObject();
  *v9 = a2;
  _s7SwiftUI14GraphicsFilterOWOi11_(v9);
  v5 = v13;
  v4[5] = v12;
  v4[6] = v5;
  v4[7] = v14[0];
  *(v4 + 124) = *(v14 + 12);
  v6 = v9[1];
  v4[1] = v9[0];
  v4[2] = v6;
  result = *&v10;
  v8 = v11;
  v4[3] = v10;
  v4[4] = v8;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

double protocol witness for _RendererEffect.effectValue(size:) in conformance _ContrastEffect@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *&v9[0] = v3;
  _s7SwiftUI14GraphicsFilterOWOi11_(v9);
  v5 = v13;
  v4[5] = v12;
  v4[6] = v5;
  v4[7] = v14[0];
  *(v4 + 124) = *(v14 + 12);
  v6 = v9[1];
  v4[1] = v9[0];
  v4[2] = v6;
  result = *&v10;
  v8 = v11;
  v4[3] = v10;
  v4[4] = v8;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

double (*protocol witness for Animatable.animatableData.modify in conformance _ContrastEffect(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return protocol witness for Animatable.animatableData.modify in conformance _ContrastEffect;
}

void type metadata accessor for RendererVisualEffect<_ContrastEffect>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for RendererVisualEffect<_ContrastEffect>)
  {
    v4 = type metadata accessor for RendererVisualEffect(0, &type metadata for _ContrastEffect, &protocol witness table for _ContrastEffect, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for RendererVisualEffect<_ContrastEffect>);
    }
  }
}

void lazy protocol witness table accessor for type RendererVisualEffect<_ContrastEffect> and conformance RendererVisualEffect<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy protocol witness table cache variable for type RendererVisualEffect<_ContrastEffect> and conformance RendererVisualEffect<A>)
  {
    type metadata accessor for RendererVisualEffect<_ContrastEffect>(255, a2, a3, a4);
    swift_getWitnessTable(protocol conformance descriptor for RendererVisualEffect<A>, v6, v4, v5);
    atomic_store(v7, &lazy protocol witness table cache variable for type RendererVisualEffect<_ContrastEffect> and conformance RendererVisualEffect<A>);
  }
}

double static GlassEffectTransition.matchedGeometry.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 3;
  *a1 = xmmword_18DDB6AD0;
  *(a1 + 16) = 0x3FE0000000000000;
  *(a1 + 24) = 0;
  return result;
}

void static GlassEffectTransition.materialize.getter(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 1;
  *(a1 + 24) = 1;
}

uint64_t static GlassEffectTransition.matchedGeometry(properties:anchor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = 0;
  return result;
}

void static GlassEffectTransition.identity.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

uint64_t getEnumTagSinglePayload for GlassEffectTransition(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GlassEffectTransition(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

uint64_t URL.encode(to:)(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for URL?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v28 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v26 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!URL.relativeString.getter() && v10 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v11 = v27;
  }

  else
  {
    ProtobufEncoder.encodeVarint(_:)(0xAuLL);
    static String.Encoding.utf8.getter();
    v20 = String.data(using:allowLossyConversion:)();
    v22 = v21;

    (*(v25 + 8))(v4, v2);
    if (v22 >> 60 == 15)
    {
      lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
      swift_allocError();
      return swift_willThrow();
    }

    v23 = v27;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v20, v22, a1);
    v11 = v23;
    outlined consume of Data?(v20, v22);
  }

  URL.baseURL.getter();
  v12 = v28;
  if ((*(v28 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of URL?(v7);
  }

  v14 = v26;
  (*(v12 + 32))(v26, v7, v8);
  ProtobufEncoder.encodeVarint(_:)(0x12uLL);
  v15 = *(a1 + 8);
  v16 = *(a1 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
    v16 = result;
  }

  v18 = *(v16 + 16);
  v17 = *(v16 + 24);
  if (v18 >= v17 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v16);
    v16 = result;
  }

  *(v16 + 16) = v18 + 1;
  *(v16 + 8 * v18 + 32) = v15;
  *(a1 + 24) = v16;
  if (__OFADD__(v15, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v15 + 1;
    URL.encode(to:)(a1);
    v19 = (v28 + 8);
    if (!v11)
    {
      ProtobufEncoder.endLengthDelimited()();
    }

    return (*v19)(v14, v8);
  }

  return result;
}

void URL.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v4 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v54 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for URL?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v56 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v48 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  v13 = type metadata accessor for URL();
  v51 = *(v13 - 8);
  v14 = *(v51 + 56);
  v55 = v13;
  v53 = v14;
  v15 = (v14)(v12, 1, 1);
  v16 = *(a1 + 8);
  v17 = *(a1 + 16);
  if (v16 < v17)
  {
    v50 = v12;
    do
    {
      v18 = *(a1 + 24);
      if (v18)
      {
        v19 = *(a1 + 32);
        if (v16 < v19)
        {
          goto LABEL_11;
        }

        if (v19 < v16)
        {
          goto LABEL_56;
        }

        *(a1 + 24) = 0;
      }

      v15 = ProtobufDecoder.decodeVarint()(v15);
      if (v2)
      {
        goto LABEL_59;
      }

      v18 = v15;
      if (v15 < 8)
      {
        goto LABEL_56;
      }

LABEL_11:
      if (v18 >> 3 == 2)
      {
        if ((v18 & 7) != 2)
        {
          goto LABEL_56;
        }

        v18 = *(a1 + 40);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1, v18);
          v18 = isUniquelyReferenced_nonNull_native;
        }

        v12 = *(v18 + 16);
        v32 = *(v18 + 24);
        if (v12 >= v32 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v12 + 1, 1, v18);
          v18 = isUniquelyReferenced_nonNull_native;
        }

        *(v18 + 16) = v12 + 1;
        *(v18 + 8 * v12 + 32) = v17;
        *(a1 + 40) = v18;
        v33 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
        if (v2)
        {

          v12 = v50;
          goto LABEL_58;
        }

        if (v33 < 0)
        {
          goto LABEL_64;
        }

        v34 = *(a1 + 8) + v33;
        v12 = v50;
        if (v17 < v34)
        {
          goto LABEL_56;
        }

        *(a1 + 16) = v34;
        URL.init(from:)(a1, v56);
        v18 = *(a1 + 40);
        if (!*(v18 + 16))
        {
          goto LABEL_65;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v35 = *(v18 + 16);
          if (!v35)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
          v35 = *(v18 + 16);
          if (!v35)
          {
LABEL_52:
            __break(1u);
            break;
          }
        }

        v36 = v35 - 1;
        v17 = *(v18 + 8 * v36 + 32);
        *(v18 + 16) = v36;
        *(a1 + 40) = v18;
        outlined destroy of URL?(v12);
        *(a1 + 16) = v17;
        v37 = v56;
        v53(v56, 0, 1, v55);
        v15 = outlined init with take of URL?(v37, v12);
      }

      else if (v18 >> 3 == 1)
      {

        if ((v18 & 7) != 2)
        {
          goto LABEL_57;
        }

        v21 = ProtobufDecoder.decodeVarint()(v20);
        if (v2)
        {
          goto LABEL_58;
        }

        v18 = v21;
        if (v21 < 0)
        {
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
          __break(1u);
          v46 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
          v47 = *(v46 + 2);
          if (v47)
          {
            v44 = v47 - 1;
            v45 = *&v46[8 * v44 + 32];
            *(v46 + 2) = v44;
            *(a1 + 40) = v46;
            outlined destroy of URL?(v12);
            *(a1 + 16) = v45;
          }

          else
          {
            __break(1u);
          }

          return;
        }

        v22 = *(a1 + 8);
        if (v17 < v22 + v21)
        {
          goto LABEL_57;
        }

        *(a1 + 8) = v22 + v21;
        if (v21)
        {
          v23 = v22 - [*a1 bytes];
          v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v25;
          if (__OFADD__(v23, v18))
          {
            goto LABEL_66;
          }

          if ((v23 + v18) < v23)
          {
            goto LABEL_67;
          }

          v27 = v24;
          v28 = Data._Representation.subscript.getter();
          v30 = v29;
          outlined consume of Data._Representation(v27, v26);
        }

        else
        {
          v28 = 0;
          v30 = 0xC000000000000000;
        }

        static String.Encoding.utf8.getter();
        String.init(data:encoding:)();
        if (!v40)
        {
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
          outlined consume of Data._Representation(v28, v30);
          goto LABEL_58;
        }

        outlined consume of Data._Representation(v28, v30);
      }

      else
      {
        v38 = v18 & 7;
        if (v38 > 1)
        {
          if (v38 == 2)
          {
            v15 = ProtobufDecoder.decodeVarint()(v15);
            if (v2)
            {
LABEL_59:
              outlined destroy of URL?(v12);

              return;
            }

            if ((v15 & 0x8000000000000000) != 0)
            {
              goto LABEL_68;
            }

            v39 = *(a1 + 8) + v15;
            if (v17 < v39)
            {
LABEL_56:

              goto LABEL_57;
            }
          }

          else
          {
            if (v38 != 5)
            {
              goto LABEL_56;
            }

            v39 = *(a1 + 8) + 4;
            if (v17 < v39)
            {
              goto LABEL_56;
            }
          }

          goto LABEL_3;
        }

        if ((v18 & 7) != 0)
        {
          if (v38 != 1)
          {
            goto LABEL_56;
          }

          v39 = *(a1 + 8) + 8;
          if (v17 < v39)
          {
            goto LABEL_56;
          }

LABEL_3:
          *(a1 + 8) = v39;
          goto LABEL_4;
        }

        v15 = ProtobufDecoder.decodeVarint()(v15);
        if (v2)
        {
          goto LABEL_59;
        }
      }

LABEL_4:
      v16 = *(a1 + 8);
    }

    while (v16 < v17);
  }

  *(a1 + 24) = 0;
  v41 = v52;
  URL.init(string:relativeTo:)();

  v42 = v51;
  v43 = v55;
  if ((*(v51 + 48))(v41, 1, v55) == 1)
  {
    outlined destroy of URL?(v41);
LABEL_57:
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
LABEL_58:
    outlined destroy of URL?(v12);
  }

  else
  {
    outlined destroy of URL?(v12);
    (*(v42 + 32))(v49, v41, v43);
  }
}

void UUID.encode(to:)()
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = UUID.uuid.getter();
  v9 = v0;
  v10 = v1;
  v11 = v2;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  ProtobufEncoder.encodeData(_:)(&v8, &v17);
}

unint64_t UUID.init(from:)(void *a1)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
LABEL_34:
    a1[3] = 0;
    return UUID.init(uuid:)();
  }

  while (1)
  {
    result = a1[3];
    if (result)
    {
      v6 = a1[4];
      if (v3 < v6)
      {
        goto LABEL_11;
      }

      if (v6 < v3)
      {
        break;
      }

      a1[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v1)
    {
      return result;
    }

    if (result <= 7)
    {
      break;
    }

LABEL_11:
    v7 = result & 7;
    if ((result & 0xFFFFFFFFFFFFFFF8) != 8)
    {
      if ((result & 7) > 1)
      {
        if (v7 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v1)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v3 = a1[1] + result;
          if (v4 < v3)
          {
            break;
          }
        }

        else
        {
          if (v7 != 5)
          {
            break;
          }

          v3 = a1[1] + 4;
          if (v4 < v3)
          {
            break;
          }
        }
      }

      else
      {
        if ((result & 7) == 0)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v1)
          {
            return result;
          }

          v3 = a1[1];
          goto LABEL_4;
        }

        if (v7 != 1)
        {
          break;
        }

        v3 = a1[1] + 8;
        if (v4 < v3)
        {
          break;
        }
      }

      a1[1] = v3;
      goto LABEL_4;
    }

    if (v7 != 2)
    {
      break;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v1)
    {
      return result;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_36:
      __break(1u);
    }

    v3 = a1[1] + result;
    if (v4 < v3)
    {
      break;
    }

    a1[1] = v3;
    if (result != 16)
    {
      break;
    }

LABEL_4:
    if (v3 >= v4)
    {
      goto LABEL_34;
    }
  }

  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  return swift_willThrow();
}

void Data.encode(to:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = *(a1 + 32);
  if (one-time initialization token for writerKey != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = __swift_project_value_buffer(v8, static ArchiveWriter.writerKey);
  if (!*(v7 + 16) || (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v9), (v11 & 1) == 0) || (outlined init with copy of Any(*(v7 + 56) + 32 * v10, &v22), type metadata accessor for ArchiveWriter(), (swift_dynamicCast() & 1) == 0))
  {
    v18 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v18 != 2)
      {
        return;
      }

      v19 = *(a2 + 16);
      v20 = *(a2 + 24);
    }

    else
    {
      if (!v18)
      {
        if ((a3 & 0xFF000000000000) == 0)
        {
          return;
        }

LABEL_19:
        ProtobufEncoder.encodeVarint(_:)(0x12uLL);
        specialized Data._Representation.withUnsafeBytes<A>(_:)(a2, a3, a1);
        return;
      }

      v19 = a2;
      v20 = a2 >> 32;
    }

    if (v19 == v20)
    {
      return;
    }

    goto LABEL_19;
  }

  outlined copy of Data._Representation(a2, a3);
  _s7SwiftUI10StrongHashV2ofACx_tcAA16StronglyHashableRzlufC10Foundation4DataV_Tt1g5(a2, a3, &v22);
  v12 = v24;
  v13 = v22;
  v14 = v23;
  v15 = specialized Collection<>.firstIndex(of:)(v22, v23, v24, v21[4]);
  if (v16)
  {
    v22 = v13;
    v23 = v14;
    v24 = v12;
    v25 = 0;
    outlined copy of Data._Representation(a2, a3);
    specialized ArchiveWriter.addAttachment(hash:from:)(&v22, v21, a2, a3);
    if (v3)
    {
      goto LABEL_10;
    }
  }

  if ((v15 & 0x8000000000000000) == 0)
  {
    v17 = v15;
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(v17);
LABEL_10:

    return;
  }

  __break(1u);
}

void protocol witness for ProtobufDecodableMessage.init(from:) in conformance Data(uint64_t a1@<X0>, void *a2@<X8>)
{
  Data.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    a2[1] = v5;
  }
}

void Locale.encode(to:)(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!Locale.identifier.getter() && v6 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {
    ProtobufEncoder.encodeVarint(_:)(0xAuLL);
    static String.Encoding.utf8.getter();
    v7 = String.data(using:allowLossyConversion:)();
    v9 = v8;

    (*(v3 + 8))(v5, v2);
    if (v9 >> 60 == 15)
    {
      lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
      swift_allocError();
      swift_willThrow();
    }

    else
    {
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v7, v9, a1);
      outlined consume of Data?(v7, v9);
    }
  }
}

void Locale.init(from:)(uint64_t a1)
{
  v4 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 < v7)
  {
    v8 = 0;
    while (1)
    {
      v9 = *(a1 + 24);
      if (v9)
      {
        v10 = *(a1 + 32);
        if (v6 < v10)
        {
          goto LABEL_11;
        }

        if (v10 < v6)
        {
          goto LABEL_37;
        }

        *(a1 + 24) = 0;
      }

      v5 = ProtobufDecoder.decodeVarint()(v5);
      if (v2)
      {
        goto LABEL_42;
      }

      v9 = v5;
      if (v5 < 8)
      {
        goto LABEL_37;
      }

LABEL_11:
      if ((v9 & 0xFFFFFFFFFFFFFFF8) == 8)
      {

        if ((v9 & 7) != 2)
        {
          goto LABEL_38;
        }

        v12 = ProtobufDecoder.decodeVarint()(v11);
        if (v2)
        {
          return;
        }

        v13 = v12;
        if (v12 < 0)
        {
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          return;
        }

        v14 = *(a1 + 8);
        if (v7 < v14 + v12)
        {
          goto LABEL_38;
        }

        *(a1 + 8) = v14 + v12;
        if (v12)
        {
          v15 = v14 - [*a1 bytes];
          v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = v17;
          if (__OFADD__(v15, v13))
          {
            goto LABEL_48;
          }

          if (v15 + v13 < v15)
          {
            goto LABEL_49;
          }

          v19 = v16;
          v20 = Data._Representation.subscript.getter();
          v22 = v21;
          outlined consume of Data._Representation(v19, v18);
        }

        else
        {
          v20 = 0;
          v22 = 0xC000000000000000;
        }

        static String.Encoding.utf8.getter();
        String.init(data:encoding:)();
        if (!v25)
        {
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
          outlined consume of Data._Representation(v20, v22);
          return;
        }

        v8 = v25;
        outlined consume of Data._Representation(v20, v22);
        goto LABEL_4;
      }

      v23 = v9 & 7;
      if (v23 > 1)
      {
        if (v23 == 2)
        {
          v5 = ProtobufDecoder.decodeVarint()(v5);
          if (v2)
          {
LABEL_42:

            return;
          }

          if ((v5 & 0x8000000000000000) != 0)
          {
            goto LABEL_50;
          }

          v24 = *(a1 + 8) + v5;
          if (v7 < v24)
          {
LABEL_37:

LABEL_38:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();
            return;
          }
        }

        else
        {
          if (v23 != 5)
          {
            goto LABEL_37;
          }

          v24 = *(a1 + 8) + 4;
          if (v7 < v24)
          {
            goto LABEL_37;
          }
        }
      }

      else
      {
        if ((v9 & 7) == 0)
        {
          v5 = ProtobufDecoder.decodeVarint()(v5);
          if (v2)
          {
            goto LABEL_42;
          }

          goto LABEL_4;
        }

        if (v23 != 1)
        {
          goto LABEL_37;
        }

        v24 = *(a1 + 8) + 8;
        if (v7 < v24)
        {
          goto LABEL_37;
        }
      }

      *(a1 + 8) = v24;
LABEL_4:
      v6 = *(a1 + 8);
      if (v6 >= v7)
      {
        *(a1 + 24) = 0;
        if (!v8)
        {
          goto LABEL_40;
        }

        Locale.init(identifier:)();
        return;
      }
    }
  }

  *(a1 + 24) = 0;
LABEL_40:
  static Locale.current.getter();
}

unint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (String.subscript.getter() != a1 || v9 != a2)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return v8;
    }

    v8 = String.index(after:)();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (!v4)
  {
    return 0;
  }

  result = 0;
  for (i = (a4 + 48); ; i += 5)
  {
    v8 = *(i - 4) == a1 && *(i - 3) == HIDWORD(a1);
    v9 = v8 && *(i - 2) == a2;
    v10 = v9 && *(i - 1) == HIDWORD(a2);
    if (v10 && *i == a3)
    {
      break;
    }

    if (v4 == ++result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  if (!v5)
  {
    return 0;
  }

  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = a5 + 32;
  v54 = a5 + 32;
  v53 = (a4 + 40);
  v50 = *(a5 + 16);
  while (1)
  {
    v11 = v10 + 32 * v9;
    v13 = *v11;
    v12 = *(v11 + 8);
    v14 = *(v11 + 24);
    if ((*(v11 + 16) & 1) == 0)
    {
      break;
    }

    if (v6)
    {
      v59 = v9;
      v61 = *(v11 + 16);
      v15 = v7;
      v16 = *(*v13 + 96);

      v60 = v12;
      outlined copy of Text.Storage(v13, v12, 1);
      v17 = v8;
      v18 = v13;
      v19 = v16(v17);
      v7 = v15;
      if (v19)
      {
        goto LABEL_19;
      }

      goto LABEL_3;
    }

LABEL_6:
    if (++v9 == v5)
    {
      return 0;
    }
  }

  if (v6)
  {
    goto LABEL_6;
  }

  v59 = v9;
  v61 = *(v11 + 16);
  v20 = v13 == v8 && v12 == v7;
  v60 = *(v11 + 8);
  if (v20)
  {
    v25 = v8;
    v18 = *v11;

    outlined copy of Text.Storage(v25, v7, 0);
    goto LABEL_19;
  }

  v21 = v7;
  v22 = *(v11 + 8);
  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v18 = v13;
  v24 = v22;
  v7 = v21;
  outlined copy of Text.Storage(v13, v24, 0);
  if ((v23 & 1) == 0)
  {
LABEL_3:
    outlined consume of Text.Storage(v18, v60, v61);

    goto LABEL_4;
  }

LABEL_19:
  v26 = *(v14 + 16);
  v27 = v14;
  if (v26 != *(a4 + 16))
  {
    outlined consume of Text.Storage(v18, v60, v61);

    v10 = v54;
LABEL_4:
    v8 = a1;
LABEL_5:
    v9 = v59;
    goto LABEL_6;
  }

  if (v26)
  {
    v28 = v14 == a4;
  }

  else
  {
    v28 = 1;
  }

  result = v18;
  if (v28)
  {
LABEL_74:
    outlined consume of Text.Storage(result, v60, v61);

    return v59;
  }

  v30 = *(v14 + 16);
  v31 = 0;
  v32 = (v14 + 40);
  v33 = v53;
  v58 = v14;
  v56 = result;
  while (2)
  {
    if (v31 < *(v27 + 16))
    {
      if (v30 == v31)
      {
        goto LABEL_76;
      }

      v34 = *(v32 - 1);
      v35 = *v32;
      v36 = *(v33 - 1);
      v37 = *v33;
      v38 = v35 >> 5;
      if (v35 >> 5 > 3)
      {
        if (v35 >> 5 > 5)
        {
          if (v38 != 6)
          {
            if (v34 | v35 ^ 0xE0)
            {
              if (v37 < 0xE0 || v36 != 1)
              {
LABEL_72:
                outlined consume of Text.Storage(result, v60, v61);

                v6 = a3;
                v5 = v50;
                v7 = a2;
                v8 = a1;
                v10 = v54;
                goto LABEL_5;
              }
            }

            else if (v37 < 0xE0 || *&v36 != 0.0)
            {
              goto LABEL_72;
            }

            if (v37 != 224)
            {
              goto LABEL_72;
            }

            goto LABEL_27;
          }

          if ((v37 & 0xE0) != 0xC0)
          {
            goto LABEL_72;
          }

          v42 = *(*v34 + 96);
          outlined copy of Text.Modifier(*(v33 - 1), *v33);
          v43 = outlined copy of Text.Modifier(v34, v35);
          v44 = v42(v36, v43);
          outlined consume of Text.Modifier(v36, v37);
          v45 = v34;
          v46 = v35;
          goto LABEL_55;
        }

        if (v38 == 4)
        {
          if ((v37 & 0xE0) != 0x80)
          {
            goto LABEL_72;
          }
        }

        else if ((v37 & 0xE0) != 0xA0)
        {
          goto LABEL_72;
        }
      }

      else
      {
        if (v35 >> 5 <= 1)
        {
          if (!v38)
          {
            if (v37 >= 0x20)
            {
              goto LABEL_72;
            }

            if (*&v34 != 0.0)
            {
              if (*&v36 == 0.0)
              {
                goto LABEL_72;
              }

              v27 = v58;
              if (v34 != v36)
              {
                v39 = *(*v34 + 88);
                outlined copy of Text.Modifier(*(v33 - 1), *v33);
                v40 = outlined copy of Text.Modifier(v34, v35);
                v41 = v39(v36, v40);
                goto LABEL_54;
              }

LABEL_27:
              ++v31;
              v32 += 2;
              v33 += 16;
              if (v30 == v31)
              {
                goto LABEL_74;
              }

              continue;
            }

LABEL_63:
            if (*&v36 != 0.0)
            {
              goto LABEL_72;
            }

            v49 = result;
            outlined consume of Text.Modifier(0, *v33);
            result = v49;
            v27 = v58;
            goto LABEL_27;
          }

          if ((v37 & 0xE0) != 0x20)
          {
            goto LABEL_72;
          }

          if (*&v34 == 0.0)
          {
            goto LABEL_63;
          }

          if (*&v36 == 0.0)
          {
            goto LABEL_72;
          }

          v47 = *(*v34 + 112);
          outlined copy of Text.Modifier(*(v33 - 1), *v33);
          v48 = outlined copy of Text.Modifier(v34, v35);
          v41 = v47(v36, v48);
LABEL_54:
          v44 = v41;
          outlined consume of Text.Modifier(v34, v35);
          v45 = v36;
          v46 = v37;
LABEL_55:
          outlined consume of Text.Modifier(v45, v46);
          result = v56;
          v27 = v58;
          if ((v44 & 1) == 0)
          {
            goto LABEL_72;
          }

          goto LABEL_27;
        }

        if (v38 == 2)
        {
          if ((v37 & 0xE0) != 0x40)
          {
            goto LABEL_72;
          }

          if (v35)
          {
            if ((v37 & 1) == 0)
            {
              goto LABEL_72;
            }

            goto LABEL_27;
          }

          if (v37)
          {
            goto LABEL_72;
          }
        }

        else if ((v37 & 0xE0) != 0x60)
        {
          goto LABEL_72;
        }
      }

      if (*&v34 != *&v36)
      {
        goto LABEL_72;
      }

      goto LABEL_27;
    }

    break;
  }

  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}