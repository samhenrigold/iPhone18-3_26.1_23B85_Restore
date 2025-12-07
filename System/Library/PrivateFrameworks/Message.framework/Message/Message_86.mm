uint64_t CircularBuffer.capacity.getter(uint64_t a1)
{
  sub_1B0E45D88();

  return sub_1B0E46448();
}

Swift::Bool __swiftcall CircularBuffer.verifyInvariants()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = sub_1B0E45D88();
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  if (v5 == v4)
  {
    return 1;
  }

  v11 = (v7 + 8);
  do
  {
    sub_1B0E464A8();
    v12 = (*(*(v3 - 8) + 48))(v9, 1, v3);
    (*v11)(v9, v6);
    v13 = v12 == 1;
    v10 = v12 != 1;
    if (v13)
    {
      break;
    }

    v5 = (sub_1B0E46448() - 1) & (v5 + 1);
  }

  while (v5 != v4);
  return v10;
}

Swift::Void __swiftcall CircularBuffer._resizeAndFlatten(newCapacity:)(Swift::Int newCapacity)
{
  v3 = v2;
  v5 = *(v1 + 16);
  v6 = sub_1B0E45D88();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - v8;
  v10 = sub_1B0E46F18();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v21 - v11;
  v13 = sub_1B0E45258();
  v30 = MEMORY[0x1B27284F0](v13, v6);
  if (newCapacity < 1)
  {
    __break(1u);
  }

  else
  {
    v25 = v12;
    sub_1B0E46498();
    v24 = newCapacity;
    sub_1B0E463E8();
    v14 = v3[1];
    v15 = v3[2];
    if (v15 >= v14)
    {
      *&v28 = sub_1B0D65A88(v14, v3[2], *v3, v6);
      *(&v28 + 1) = v16;
      *&v29 = v17;
      *(&v29 + 1) = v18;
      sub_1B0E45FF8();
      swift_unknownObjectRetain();
      swift_getWitnessTable();
    }

    else
    {
      *&v26 = v3[1];
      v23 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7198, &qword_1B0EF0CF0);
      v22 = v7;
      v21[1] = swift_getWitnessTable();
      sub_1B039E3F8(&qword_1EB6E71A0, &qword_1EB6E7198, &qword_1B0EF0CF0, MEMORY[0x1E69E6D18]);
      sub_1B0E44998();
      v26 = v28;
      v27 = v29;
      sub_1B0E45FF8();
      swift_getWitnessTable();
      sub_1B0E46458();
      *&v26 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E71A8, &qword_1B0EF0CF8);
      sub_1B039E3F8(qword_1EB6E71B0, &qword_1EB6E71A8, &qword_1B0EF0CF8, MEMORY[0x1E69E6D28]);
      sub_1B0E44998();
      v26 = v28;
      v27 = v29;
      v7 = v22;
    }

    sub_1B0E46458();
    v19 = sub_1B0E46448();
    (*(*(v5 - 8) + 56))(v9, 1, 1, v5);
    sub_1B0E46388();
    (*(v7 + 8))(v9, v6);
    swift_getWitnessTable();
    sub_1B0E46458();
    v3[1] = 0;
    v3[2] = v19;
    v20 = v30;

    *v3 = v20;
  }
}

uint64_t CircularBuffer.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = CircularBuffer.startIndex.getter(a2, a3, a4);
  CircularBuffer.index(_:offsetBy:)(v12, a1, a2, a3, a4);

  return CircularBuffer.subscript.getter(a5, a6);
}

void sub_1B0D63B20(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);
    sub_1B0D65FA0(v3, v8, v7);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_1B0D65FA0((*a1)[6], v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Void __swiftcall CircularBuffer.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  v4 = *(v1 + 16);
  v5 = sub_1B0E45D88();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  if (keepingCapacity)
  {
    v8 = CircularBuffer.count.getter(*v2, v2[1], v2[2]);
    CircularBuffer.removeFirst(_:)(v8);
  }

  else
  {
    sub_1B0E46498();
    sub_1B0E46478();
    (*(*(v4 - 8) + 56))(v7, 1, 1, v4);
    sub_1B0E46468();
  }

  v2[1] = 0;
  v2[2] = 0;
}

Swift::Void __swiftcall CircularBuffer.removeFirst(_:)(Swift::Int a1)
{
  v4 = *(v1 + 16);
  v5 = sub_1B0E45D88();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  v9 = *v2;
  v10 = v2[1];
  v11 = v2[2];
  v14 = v4;
  if (CircularBuffer.count.getter(v9, v10, v11) < a1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    if (!a1)
    {
LABEL_8:
      v2[1] = v10;
      return;
    }

    sub_1B0E46498();
    sub_1B0E463F8();
    sub_1B0E463F8();
    v12 = *(*(v14 - 8) + 56);
    while (1)
    {
      v12(v8, 1, 1, v14);
      sub_1B0E463F8();
      if ((v10 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (*(*v2 + 16) <= v10)
      {
        goto LABEL_10;
      }

      (*(v6 + 40))(*v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10, v8, v5);
      v10 = (sub_1B0E46448() + 0x7FFFFFFFFFFFFFFFLL) & (v10 + 1);
      if (!--a1)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  __break(1u);
}

uint64_t CircularBuffer.modify<A>(_:_:)(unsigned int a1, uint64_t (*a2)(unint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = a1;
  v8 = sub_1B0E45D88();
  sub_1B0E46498();
  result = sub_1B0E463F8();
  if (*(*v4 + 16) <= v7)
  {
    __break(1u);
  }

  else
  {
    v10 = *v4 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)) + *(*(v8 - 8) + 72) * v7;
    result = (*(*(v6 - 8) + 48))(v10, 1, v6);
    if (result != 1)
    {
      return a2(v10);
    }
  }

  __break(1u);
  return result;
}

uint64_t CircularBuffer.popFirst()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  if (CircularBuffer.count.getter(*v2, v2[1], v2[2]) < 1)
  {
    v6 = 1;
  }

  else
  {
    CircularBuffer.removeFirst()(a1, a2);
    v6 = 0;
  }

  v7 = *(*(v5 - 8) + 56);

  return v7(a2, v6, 1, v5);
}

void CircularBuffer.removeFirst()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1B0E45D88();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  CircularBuffer.first.getter(*v2, *(v2 + 8), *(v2 + 16), v4, &v11 - v6);
  v8 = *(v4 - 8);
  if ((*(v8 + 48))(v7, 1, v4) == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 32))(a2, v7, v4);
    type metadata accessor for CircularBuffer(0, v4, v9, v10);
    CircularBuffer.removeFirst(_:)(1);
  }
}

uint64_t CircularBuffer.popLast()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  if (CircularBuffer.count.getter(*v2, v2[1], v2[2]) < 1)
  {
    v6 = 1;
  }

  else
  {
    CircularBuffer.removeLast()(a1, a2);
    v6 = 0;
  }

  v7 = *(*(v5 - 8) + 56);

  return v7(a2, v6, 1, v5);
}

void CircularBuffer.removeLast()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1B0E45D88();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v11[1] = *v2;
  v12 = *(v2 + 8);
  swift_getWitnessTable();
  sub_1B0E44888();
  v8 = *(v4 - 8);
  if ((*(v8 + 48))(v7, 1, v4) == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 32))(a2, v7, v4);
    type metadata accessor for CircularBuffer(0, v4, v9, v10);
    CircularBuffer.removeLast(_:)(1);
  }
}

Swift::Void __swiftcall CircularBuffer.removeLast(_:)(Swift::Int a1)
{
  v4 = *(v1 + 16);
  v5 = sub_1B0E45D88();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  v9 = v2[2];
  if (CircularBuffer.count.getter(*v2, v2[1], v9) < a1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    if (!a1)
    {
LABEL_8:
      v2[2] = v9;
      return;
    }

    v10 = sub_1B0E46498();
    sub_1B0E463F8();
    v13[1] = v10;
    sub_1B0E463F8();
    while (1)
    {
      v11 = sub_1B0E46448() - 1;
      (*(*(v4 - 8) + 56))(v8, 1, 1, v4);
      sub_1B0E463F8();
      v9 = v11 & (v9 - 1);
      if (v9 < 0 != v12)
      {
        break;
      }

      if (*(*v2 + 16) <= v9)
      {
        goto LABEL_10;
      }

      (*(v6 + 40))(*v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v9, v8, v5);
      if (!--a1)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  __break(1u);
}

uint64_t CircularBuffer.first.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a2 == a3)
  {
    v7 = 1;
  }

  else
  {
    CircularBuffer.startIndex.getter(a1, a2, a3);
    CircularBuffer.subscript.getter(a4, a5);
    v7 = 0;
  }

  v8 = *(*(a4 - 8) + 56);

  return v8(a5, v7, 1, a4);
}

uint64_t CircularBuffer.removeSubrange(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v33 = a1;
  v5 = HIDWORD(a2);
  v6 = *(a3 + 16);
  v30 = *(v6 - 8);
  v31 = a3;
  v7 = HIWORD(a2);
  MEMORY[0x1EEE9AC00](a1);
  v29 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CircularBuffer.Index(0, v6, v9, v10);
  LODWORD(v39) = a2;
  v34 = v5;
  WORD2(v39) = v5;
  BYTE6(v39) = v7;
  HIBYTE(v39) = HIBYTE(a2) & 1;
  v11 = *v3;
  v12 = v3[1];
  v28 = v3 + 1;
  v32 = v3;
  v13 = v3[2];
  v14 = CircularBuffer.startIndex.getter(v11, v12, v13);
  v35 = v14;
  v36 = WORD2(v14);
  v37 = BYTE6(v14);
  v38 = HIBYTE(v14) != 0;
  swift_getWitnessTable();
  result = sub_1B0E44948();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  LODWORD(v39) = a2;
  WORD2(v39) = v34;
  BYTE6(v39) = v7;
  HIBYTE(v39) = HIBYTE(a2) & 1;
  v16 = CircularBuffer.endIndex.getter(v11, v12, v13);
  v35 = v16;
  v36 = WORD2(v16);
  v37 = BYTE6(v16);
  v38 = HIBYTE(v16) != 0;
  result = sub_1B0E44958();
  if ((result & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v17 = v33;
  v18 = CircularBuffer.distance(from:to:)(v33 & 0x1FFFFFFFFFFFFFFLL, a2 & 0x1FFFFFFFFFFFFFFLL, v11);
  if (v18 == 1)
  {
    v19 = v17 & 0x1FFFFFFFFFFFFFFLL;
    v20 = v29;
    CircularBuffer.remove(at:)(v19, v31, v29);
    return (*(v30 + 8))(v20, v6);
  }

  else if (CircularBuffer.count.getter(v11, v12, v13) == v18)
  {
    sub_1B0E45D88();
    v21 = sub_1B0E46448();
    CircularBuffer.init(initialCapacity:)(v21, v6);
    v23 = v22;

    *v32 = v23;
    v24 = v28;
    *v28 = 0;
    v24[1] = 0;
  }

  else
  {
    v39 = sub_1B0E45258();
    v25 = sub_1B0E45358();
    WitnessTable = swift_getWitnessTable();
    CircularBuffer.replaceSubrange<A>(_:with:)(v17 & 0x1FFFFFFFFFFFFFFLL, a2 & 0x1FFFFFFFFFFFFFFLL, &v39, v31, v25, WitnessTable);
  }

  return result;
}

uint64_t CircularBuffer.remove(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  LODWORD(v5) = a1;
  v36 = a3;
  v40 = a1;
  v6 = *(a2 + 16);
  v7 = sub_1B0E45D88();
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v39 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v3[1];
  v16 = v3[2];
  v47 = *v3;
  v48 = v15;
  v38 = v15;
  v33 = v16;
  v49 = v16;
  swift_getWitnessTable();
  sub_1B0E45788();
  v41 = v44;
  v42 = v45;
  v43 = v46;
  v17 = sub_1B0E447E8();
  swift_getWitnessTable();
  type metadata accessor for CircularBuffer.Index(255, v6, v18, v19);
  swift_getWitnessTable();
  v20 = sub_1B0E450A8();
  v50[0] = v41;
  v50[1] = v42;
  v51 = v43;
  result = (*(*(v17 - 8) + 8))(v50, v17);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = v5;
  sub_1B0E464A8();
  result = (*(v12 + 48))(v11, 1, v6);
  if (result != 1)
  {
    v22 = *(v12 + 32);
    v22(v39, v11, v6);
    v34 = v22;
    if (v38 != v5)
    {
      v26 = v33 - 1;
      if (((sub_1B0E46448() - 1) & v26) != v5)
      {
        v29 = v37;
        v25 = v6;
        (*(v12 + 56))(v37, 1, 1, v6);
        sub_1B0E46498();
        result = sub_1B0E463F8();
        if (*(*v4 + 16) > v5)
        {
          (*(v35 + 40))(*v4 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v5, v29, v7);
          v30 = v4[2];
          for (i = (sub_1B0E46448() - 1) & (v5 + 1); i != v30; i = (sub_1B0E46448() - 1) & (i + 1))
          {
            *&v44 = v5;
            *&v41 = i;
            swift_getWitnessTable();
            sub_1B0E44988();
            v5 = i;
          }

          v32 = v4[2] - 1;
          v4[2] = (sub_1B0E46448() - 1) & v32;
          return v34(v36, v39, v25);
        }

        goto LABEL_17;
      }

      v27 = v4[2] - 1;
      v4[2] = (sub_1B0E46448() - 1) & v27;
      v28 = v37;
      v25 = v6;
      (*(v12 + 56))(v37, 1, 1, v6);
      sub_1B0E46498();
      result = sub_1B0E463F8();
      if (*(*v4 + 16) > v5)
      {
        (*(v35 + 40))(*v4 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v5, v28, v7);
        return v34(v36, v39, v25);
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v23 = v4[1] + 1;
    v4[1] = (sub_1B0E46448() - 1) & v23;
    v24 = v37;
    v25 = v6;
    (*(v12 + 56))(v37, 1, 1, v6);
    sub_1B0E46498();
    result = sub_1B0E463F8();
    if (*(*v4 + 16) > v38)
    {
      (*(v35 + 40))(*v4 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v38, v24, v7);
      return v34(v36, v39, v25);
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
  return result;
}

Swift::Void __swiftcall CircularBuffer.reserveCapacity(_:)(Swift::Int a1)
{
  sub_1B0E45D88();
  if (sub_1B0E46448() < a1)
  {
    v2 = __clz(a1 - 1);
    if (v2)
    {
      v3 = 1 << -v2;
    }

    else
    {
      v3 = 0;
    }

    if (a1)
    {
      v4 = v3;
    }

    else
    {
      v4 = 1;
    }

    CircularBuffer._resizeAndFlatten(newCapacity:)(v4);
  }
}

void sub_1B0D64FD8(uint64_t a1@<X0>, void *a2@<X8>)
{
  CircularBuffer.init()(*(a1 + 16));
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v3;
}

uint64_t sub_1B0D65008(unsigned int *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = 0x100000000000000;
  if (*(a1 + 7))
  {
    v8 = 0x100000000000000;
  }

  else
  {
    v8 = 0;
  }

  if ((*(a1 + 15) & 1) == 0)
  {
    v7 = 0;
  }

  CircularBuffer.replaceSubrange<A>(_:with:)(*a1 | (*(a1 + 2) << 32) | (*(a1 + 6) << 48) | v8, a1[2] | (*(a1 + 6) << 32) | (*(a1 + 14) << 48) | v7, a2, a5, a3, a4);
  v9 = *(*(a3 - 1) + 8);

  return v9(a2, a3);
}

uint64_t sub_1B0D650D8(uint64_t a1, uint64_t a2)
{
  CircularBuffer.append(_:)(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

uint64_t sub_1B0D65160@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0x100000000000000;
  if (!*(a1 + 7))
  {
    v3 = 0;
  }

  return CircularBuffer.remove(at:)(v3 | (*(a1 + 6) << 48) | (*(a1 + 2) << 32) | *a1, a2, a3);
}

uint64_t sub_1B0D6518C(unsigned int *a1, uint64_t a2)
{
  v2 = 0x100000000000000;
  if (*(a1 + 7))
  {
    v3 = 0x100000000000000;
  }

  else
  {
    v3 = 0;
  }

  if ((*(a1 + 15) & 1) == 0)
  {
    v2 = 0;
  }

  return CircularBuffer.removeSubrange(_:)(*a1 | (*(a1 + 2) << 32) | (*(a1 + 6) << 48) | v3, a1[2] | (*(a1 + 6) << 32) | (*(a1 + 14) << 48) | v2, a2);
}

uint64_t sub_1B0D651E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69AE8](a1, WitnessTable, a2);
}

uint64_t sub_1B0D6524C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69AF0](a1, a2, WitnessTable, a3);
}

uint64_t static CircularBuffer<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = CircularBuffer.count.getter(a1, a2, a3);
  if (v13 == CircularBuffer.count.getter(a4, a5, a6))
  {
    type metadata accessor for CircularBuffer(0, a7, v14, v15);
    swift_getWitnessTable();
    sub_1B0E46B88();
    v16 = swift_allocObject();
    v16[2] = a7;
    v16[3] = a8;
    v16[4] = a7;
    MEMORY[0x1EEE9AC00](v16);
    sub_1B0E462D8();
    swift_getWitnessTable();
    v17 = sub_1B0E44F48();
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t CircularBuffer<A>.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17[1] = a6;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  v13 = CircularBuffer.startIndex.getter(a2, a3, a4);
  v14 = CircularBuffer.endIndex.getter(a2, a3, a4);
  if ((v13 & 0xFFFFFFFFFFFFFFLL) != (v14 & 0xFFFFFFFFFFFFFFLL) || (HIBYTE(v13) != 0) != (HIBYTE(v14) != 0))
  {
    do
    {
      do
      {
        CircularBuffer.subscript.getter(a5, v12);
        v13 = CircularBuffer.index(_:offsetBy:)(v13, 1, a2, a3, a4);
        sub_1B0E447C8();
        (*(v10 + 8))(v12, a5);
        v15 = CircularBuffer.endIndex.getter(a2, a3, a4);
      }

      while ((v13 & 0xFFFFFFFFFFFFFFLL) != (v15 & 0xFFFFFFFFFFFFFFLL));
    }

    while ((HIBYTE(v13) != 0) != (HIBYTE(v15) != 0));
  }
}

uint64_t CircularBuffer<A>.hashValue.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B0E46C28();
  CircularBuffer<A>.hash(into:)(v11, a1, a2, a3, a4, a5);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D657E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  sub_1B0E46C28();
  CircularBuffer<A>.hash(into:)(v7, *v3, *(v3 + 8), *(v3 + 16), *(a2 + 16), v5);
  return sub_1B0E46CB8();
}

uint64_t CircularBuffer.init(arrayLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CircularBuffer(0, a2, a3, a4);
  sub_1B0E45358();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B0E45848();
  return v5;
}

uint64_t sub_1B0D658F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = CircularBuffer.init(arrayLiteral:)(a1, *(a2 + 16), a4, a5);
  *a3 = result;
  a3[1] = v7;
  a3[2] = v8;
  return result;
}

uint64_t sub_1B0D65928(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(result))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v2 = 0x1FFFFFF00000000;
  if (result < a2)
  {
    v2 = 0xFFFFFF00000000;
  }

  return v2 | result;
}

uint64_t sub_1B0D65954@<X0>(void *a2@<X8>)
{
  sub_1B0E469E8();
  result = MEMORY[0x1B2726E80](32, 0xE100000000000000);
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_1B0D659B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = CircularBuffer.startIndex.getter(a3, a4, a5);
  result = CircularBuffer.distance(from:to:)(v10 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v10) != 0) << 56), a1 & 0x1FFFFFFFFFFFFFFLL, a3);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v12 = CircularBuffer.endIndex.getter(a3, a4, a5);
    result = CircularBuffer.distance(from:to:)(a2 & 0x1FFFFFFFFFFFFFFLL, v12 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v12) != 0) << 56), a3);
    if ((result & 0x8000000000000000) == 0)
    {
      return a3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D65A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B0E463B8();
  result = sub_1B0E463B8();
  if ((a2 & 0x8000000000000000) == 0)
  {
    return a3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D65B24(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = sub_1B0E45D88();
  v8 = *(v7 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = *(v6 - 8);
  (*(v12 + 16))(&v14 - v10, a1, v6, v9);
  (*(v12 + 56))(v11, 0, 1, v6);
  sub_1B0E46498();
  result = sub_1B0E463F8();
  if (*(*v3 + 16) > a2)
  {
    return (*(v8 + 40))(*v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * a2, v11, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D65CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0E46408();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    sub_1B0E46498();
    return v8;
  }

  return result;
}

unint64_t sub_1B0D65DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = *v6;
  v13 = v6[1];
  v14 = v6[2];
  v15 = CircularBuffer.startIndex.getter(*v6, v13, v14);
  result = CircularBuffer.distance(from:to:)(v15 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v15) != 0) << 56), a4 & 0x1FFFFFFFFFFFFFFLL, v12);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v17 = CircularBuffer.endIndex.getter(v12, v13, v14);
    result = CircularBuffer.distance(from:to:)(a5 & 0x1FFFFFFFFFFFFFFLL, v17 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v17) != 0) << 56), v12);
    if ((result & 0x8000000000000000) == 0)
    {
      v20[0] = a1;
      v20[1] = a2;
      v20[2] = a3;
      WitnessTable = swift_getWitnessTable();
      return CircularBuffer.replaceSubrange<A>(_:with:)(a4 & 0x1FFFFFFFFFFFFFFLL, a5 & 0x1FFFFFFFFFFFFFFLL, v20, a6, a6, WitnessTable);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D65F24@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  (*(v1 + 40))();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1B0D65FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = CircularBuffer.startIndex.getter(*v3, v8, v9);
  v11 = CircularBuffer.index(_:offsetBy:)(v10, a2, v7, v8, v9);

  return sub_1B0D65B24(a1, v11, a3);
}

uint64_t sub_1B0D6609C(uint64_t a1)
{
  v3 = *(v1 + 32);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, a1 + *(TupleTypeMetadata2 + 48)) & 1;
}

uint64_t sub_1B0D662D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B0D66310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B0D6634C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 8))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 7);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B0D663A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *(result + 7) = a2 + 1;
    }
  }

  return result;
}

uint64_t Command.hash(into:)(uint64_t a1)
{
  v208 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v205 = *(v1 - 8);
  v206 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v202 = &v191 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB0, &unk_1B0EC2010);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v194 = &v191 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v198 = &v191 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v195 = &v191 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v199 = &v191 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v193 = &v191 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v200 = &v191 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v192 = &v191 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v197 = &v191 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v191 = &v191 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v196 = &v191 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
  v203 = *(v23 - 8);
  v204 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v201 = &v191 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v191 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v191 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v191 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v191 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v191 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v191 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v191 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v191 - v47;
  v49 = type metadata accessor for Command(0);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v191 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0D73230(v207, v51, type metadata accessor for Command);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v86 = *(v51 + 2);
      v87 = 4;
      goto LABEL_83;
    case 2u:
      v99 = *(v51 + 2);
      v100 = *(v51 + 2);
      v101 = 5;
      goto LABEL_50;
    case 3u:
      v106 = *(v51 + 3);
      *&v210[16] = *(v51 + 2);
      v211 = v106;
      v212 = *(v51 + 8);
      v107 = *(v51 + 1);
      v209 = *v51;
      *v210 = v107;
      v108 = *(v51 + 20);
      v110 = *(v51 + 11);
      v109 = *(v51 + 12);
      v111 = *(v51 + 26) | ((*(v51 + 54) | (v51[110] << 16)) << 32);
      v112 = v51[111];
      v206 = *(v51 + 14);
      v207 = v109;
      v113 = v208;
      MEMORY[0x1B2728D70](6);
      v114 = v212;
      if (v212)
      {
        v201 = *&v210[8];
        v202 = *v210;
        v115 = v210[16];
        v204 = v211;
        v205 = *&v210[24];
        v203 = *(&v211 + 1);
        sub_1B0E46C68();
        if (v115 == 255)
        {
          MEMORY[0x1B2728D70](0);
        }

        else
        {
          MEMORY[0x1B2728D70](1);
          if (v115)
          {
            MEMORY[0x1B2728D70](1);
            _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          }

          else
          {
            MEMORY[0x1B2728D70](0);
          }

          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          sub_1B0D498DC(v113, v205, v204, v203);
        }

        sub_1B0D4704C(v113, v114);
      }

      else
      {
        sub_1B0E46C68();
      }

      MEMORY[0x1B2728D70](v108 | (v108 << 32));

      if (v112)
      {
        MEMORY[0x1B2728D70](1);
        MEMORY[0x1B2728D70](*(v110 + 16));
        v189 = *(v110 + 16);
        if (v189)
        {
          v190 = v110 + 54;
          do
          {
            v190 += 24;
            swift_beginAccess();
            v113 = v208;
            sub_1B0E46C38();
            --v189;
          }

          while (v189);
        }
      }

      else
      {
        MEMORY[0x1B2728D70](0);
        swift_beginAccess();
        sub_1B0E46C38();
      }

      sub_1B0D46C34(v113, v206);
      sub_1B0D3C8FC(v110, v207, v111, v112);
      sub_1B0398EFC(&v209, &qword_1EB6E7268, &qword_1B0EF1248);
      goto LABEL_84;
    case 4u:
      v76 = *v51;
      v77 = *(v51 + 4);
      v78 = *(v51 + 3);
      v79 = *(v51 + 4);
      v80 = *(v51 + 10) | ((*(v51 + 22) | (v51[46] << 16)) << 32);
      v81 = v51[47];
      v207 = *(v51 + 6);
      v82 = v208;
      MEMORY[0x1B2728D70](7);
      sub_1B0D46950(v82, v76);

      MEMORY[0x1B2728D70](v77 | (v77 << 32));

      v206 = v80;
      if (v81)
      {
        v83 = v79;
        MEMORY[0x1B2728D70](1);
        MEMORY[0x1B2728D70](*(v78 + 16));
        v84 = *(v78 + 16);
        if (v84)
        {
          v85 = v78 + 54;
          do
          {
            v85 += 24;
            swift_beginAccess();
            v82 = v208;
            sub_1B0E46C38();
            --v84;
          }

          while (v84);
        }
      }

      else
      {
        MEMORY[0x1B2728D70](0);
        swift_beginAccess();
        v83 = v79;
        sub_1B0E46C38();
      }

      sub_1B0D46C34(v82, v207);
      sub_1B0D3C8FC(v78, v83, v206, v81);
      goto LABEL_84;
    case 5u:
      v127 = *(v51 + 2);
      MEMORY[0x1B2728D70](8);
      MEMORY[0x1B2728D70](v127 | (v127 << 32));

      swift_beginAccess();
      sub_1B0E46C38();

    case 6u:
      v132 = *(v51 + 2);
      v133 = *(v51 + 6);
      v134 = *(v51 + 5);
      v135 = *(v51 + 6);
      v136 = v208;
      MEMORY[0x1B2728D70](9);
      MEMORY[0x1B2728D70](v132 | (v132 << 32));

      MEMORY[0x1B2728D70](v133 | (v133 << 32));

      sub_1B0D3B080(v136, v134, v135);

    case 7u:
      v99 = *(v51 + 2);
      v100 = *(v51 + 2);
      v101 = 10;
LABEL_50:
      v116 = v208;
      MEMORY[0x1B2728D70](v101);
      MEMORY[0x1B2728D70](v99 | (v99 << 32));

      sub_1B0D47258(v116, v100);
      goto LABEL_84;
    case 8u:
      v138 = *(v51 + 2);
      v139 = *(v51 + 2);
      v140 = v208;
      MEMORY[0x1B2728D70](11);
      MEMORY[0x1B2728D70](v138 | (v138 << 32));

      sub_1B0CEFC84(v140, v139);
      goto LABEL_84;
    case 9u:
      v86 = *(v51 + 2);
      v87 = 12;
      goto LABEL_83;
    case 0xAu:
      v86 = *(v51 + 2);
      v87 = 13;
      goto LABEL_83;
    case 0xBu:
      v75 = *(v51 + 2);
      MEMORY[0x1B2728D70](14);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      if (!v75)
      {
        return sub_1B0E46C68();
      }

      sub_1B0E46C68();
      swift_beginAccess();
      goto LABEL_30;
    case 0xCu:
      MEMORY[0x1B2728D70](15);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      goto LABEL_84;
    case 0xDu:
      v130 = *v51;
      v131 = v208;
      MEMORY[0x1B2728D70](20);
      sub_1B0CEFE18(v131, v130);
      goto LABEL_84;
    case 0xEu:
      v71 = *&v51[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7250, &qword_1B0EF1230) + 48) + 8];
      sub_1B03C60A4(v51, v48, &qword_1EB6E4050, &unk_1B0EC2B20);
      MEMORY[0x1B2728D70](23);
      sub_1B03B5C80(v48, v45, &qword_1EB6E4050, &unk_1B0EC2B20);
      if ((*(v203 + 48))(v45, 1, v204) == 1)
      {
        MEMORY[0x1B2728D70](1);
      }

      else
      {
        v170 = v45;
        v171 = v201;
        sub_1B03C60A4(v170, v201, &qword_1EB6E4040, &qword_1B0EC2B10);
        MEMORY[0x1B2728D70](0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        sub_1B0B0D328();
        sub_1B0E447C8();
        sub_1B0398EFC(v171, &qword_1EB6E4040, &qword_1B0EC2B10);
      }

      MEMORY[0x1B2728D70](v71 | (v71 << 32));

      v167 = &qword_1EB6E4050;
      v168 = &unk_1B0EC2B20;
      v169 = v48;
      return sub_1B0398EFC(v169, v167, v168);
    case 0xFu:
      v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7260, &qword_1B0EF1240);
      v103 = *&v51[*(v102 + 48)];
      v104 = *&v51[*(v102 + 64)];
      sub_1B03C60A4(v51, v42, &qword_1EB6E4050, &unk_1B0EC2B20);
      v105 = v208;
      MEMORY[0x1B2728D70](24);
      sub_1B03B5C80(v42, v39, &qword_1EB6E4050, &unk_1B0EC2B20);
      if ((*(v203 + 48))(v39, 1, v204) == 1)
      {
        MEMORY[0x1B2728D70](1);
      }

      else
      {
        v173 = v201;
        sub_1B03C60A4(v39, v201, &qword_1EB6E4040, &qword_1B0EC2B10);
        MEMORY[0x1B2728D70](0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        sub_1B0B0D328();
        sub_1B0E447C8();
        sub_1B0398EFC(v173, &qword_1EB6E4040, &qword_1B0EC2B10);
      }

      MEMORY[0x1B2728D70](*(v103 + 16));
      v174 = *(v103 + 16);
      if (v174)
      {
        v175 = (v103 + 32);
        do
        {
          v176 = *v175;
          v177 = v175[1];
          *&v210[13] = *(v175 + 29);
          v209 = v176;
          *v210 = v177;
          sub_1B0CF21A0(&v209, v213);
          FetchAttribute.hash(into:)(v105);
          sub_1B0CF21FC(&v209);
          v175 = (v175 + 40);
          --v174;
        }

        while (v174);
      }

      sub_1B0D46218(v105, v104);

      v167 = &qword_1EB6E4050;
      v168 = &unk_1B0EC2B20;
      goto LABEL_123;
    case 0x10u:
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7258, &qword_1B0EF1238);
      v66 = *&v51[*(v65 + 48)];
      v67 = &v51[*(v65 + 64)];
      v68 = *v67;
      v69 = v67[1];
      sub_1B03C60A4(v51, v36, &qword_1EB6E4050, &unk_1B0EC2B20);
      v70 = v208;
      MEMORY[0x1B2728D70](25);
      sub_1B03B5C80(v36, v33, &qword_1EB6E4050, &unk_1B0EC2B20);
      if ((*(v203 + 48))(v33, 1, v204) == 1)
      {
        MEMORY[0x1B2728D70](1);
      }

      else
      {
        v166 = v201;
        sub_1B03C60A4(v33, v201, &qword_1EB6E4040, &qword_1B0EC2B10);
        MEMORY[0x1B2728D70](0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        sub_1B0B0D328();
        sub_1B0E447C8();
        sub_1B0398EFC(v166, &qword_1EB6E4040, &qword_1B0EC2B10);
      }

      sub_1B0D45B34(v70, v66);

      StoreData.hash(into:)(v70, v68, v69);
      sub_1B0D72504();
      v167 = &qword_1EB6E4050;
      v168 = &unk_1B0EC2B20;
      v169 = v36;
      return sub_1B0398EFC(v169, v167, v168);
    case 0x11u:
      v95 = *v51;
      v97 = *(v51 + 2);
      v96 = *(v51 + 3);
      v98 = 26;
      goto LABEL_54;
    case 0x12u:
      v137 = *&v51[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7250, &qword_1B0EF1230) + 48) + 8];
      sub_1B03C60A4(v51, v30, &qword_1EB6E4050, &unk_1B0EC2B20);
      MEMORY[0x1B2728D70](27);
      sub_1B03B5C80(v30, v27, &qword_1EB6E4050, &unk_1B0EC2B20);
      if ((*(v203 + 48))(v27, 1, v204) == 1)
      {
        MEMORY[0x1B2728D70](1);
      }

      else
      {
        v179 = v201;
        sub_1B03C60A4(v27, v201, &qword_1EB6E4040, &qword_1B0EC2B10);
        MEMORY[0x1B2728D70](0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        sub_1B0B0D328();
        sub_1B0E447C8();
        sub_1B0398EFC(v179, &qword_1EB6E4040, &qword_1B0EC2B10);
      }

      MEMORY[0x1B2728D70](v137 | (v137 << 32));

      v167 = &qword_1EB6E4050;
      v168 = &unk_1B0EC2B20;
      goto LABEL_114;
    case 0x13u:
      v152 = *(v51 + 1);
      v153 = *(v51 + 2);
      v154 = v208;
      MEMORY[0x1B2728D70](28);
      sub_1B0CF00E0(v154, v152, v153);

    case 0x14u:
      v123 = *v51;
      v122 = *(v51 + 1);
      v124 = *(v51 + 2);
      v125 = v51[24];
      MEMORY[0x1B2728D70](30);
      MEMORY[0x1B2728D70](v123);
      if (v125 == 1)
      {
        return sub_1B0E46C68();
      }

      sub_1B0E46C68();
      MEMORY[0x1B2728D70](v122);
      return MEMORY[0x1B2728D70](v124);
    case 0x15u:
      v128 = *&v51[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7248, &qword_1B0EF1228) + 48) + 8];
      v30 = v196;
      sub_1B03C60A4(v51, v196, &qword_1EB6E3EB0, &unk_1B0EC2010);
      MEMORY[0x1B2728D70](31);
      v129 = v191;
      sub_1B03B5C80(v30, v191, &qword_1EB6E3EB0, &unk_1B0EC2010);
      if ((*(v205 + 48))(v129, 1, v206) == 1)
      {
        MEMORY[0x1B2728D70](1);
      }

      else
      {
        v178 = v202;
        sub_1B03C60A4(v129, v202, &unk_1EB6E26C0, &unk_1B0E9DE10);
        MEMORY[0x1B2728D70](0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        sub_1B0B0D328();
        sub_1B0E447C8();
        sub_1B0398EFC(v178, &unk_1EB6E26C0, &unk_1B0E9DE10);
      }

      MEMORY[0x1B2728D70](v128 | (v128 << 32));

      goto LABEL_111;
    case 0x16u:
      v150 = *&v51[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7248, &qword_1B0EF1228) + 48) + 8];
      v42 = v197;
      sub_1B03C60A4(v51, v197, &qword_1EB6E3EB0, &unk_1B0EC2010);
      MEMORY[0x1B2728D70](32);
      v151 = v192;
      sub_1B03B5C80(v42, v192, &qword_1EB6E3EB0, &unk_1B0EC2010);
      if ((*(v205 + 48))(v151, 1, v206) == 1)
      {
        MEMORY[0x1B2728D70](1);
      }

      else
      {
        v180 = v202;
        sub_1B03C60A4(v151, v202, &unk_1EB6E26C0, &unk_1B0E9DE10);
        MEMORY[0x1B2728D70](0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        sub_1B0B0D328();
        sub_1B0E447C8();
        sub_1B0398EFC(v180, &unk_1EB6E26C0, &unk_1B0E9DE10);
      }

      MEMORY[0x1B2728D70](v150 | (v150 << 32));
      goto LABEL_122;
    case 0x17u:
      v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7240, &qword_1B0EF1220);
      v156 = *&v51[*(v155 + 48)];
      v157 = *&v51[*(v155 + 64)];
      v42 = v200;
      sub_1B03C60A4(v51, v200, &qword_1EB6E3EB0, &unk_1B0EC2010);
      v158 = v208;
      MEMORY[0x1B2728D70](33);
      v159 = v193;
      sub_1B03B5C80(v42, v193, &qword_1EB6E3EB0, &unk_1B0EC2010);
      if ((*(v205 + 48))(v159, 1, v206) == 1)
      {
        MEMORY[0x1B2728D70](1);
      }

      else
      {
        v181 = v202;
        sub_1B03C60A4(v159, v202, &unk_1EB6E26C0, &unk_1B0E9DE10);
        MEMORY[0x1B2728D70](0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        sub_1B0B0D328();
        sub_1B0E447C8();
        sub_1B0398EFC(v181, &unk_1EB6E26C0, &unk_1B0E9DE10);
      }

      MEMORY[0x1B2728D70](*(v156 + 16));
      v182 = *(v156 + 16);
      if (v182)
      {
        v183 = (v156 + 32);
        do
        {
          v184 = *v183;
          v185 = v183[1];
          *&v210[13] = *(v183 + 29);
          v209 = v184;
          *v210 = v185;
          sub_1B0CF21A0(&v209, v213);
          FetchAttribute.hash(into:)(v158);
          sub_1B0CF21FC(&v209);
          v183 = (v183 + 40);
          --v182;
        }

        while (v182);
      }

      sub_1B0D46218(v158, v157);
LABEL_122:

      v167 = &qword_1EB6E3EB0;
      v168 = &unk_1B0EC2010;
LABEL_123:
      v169 = v42;
      return sub_1B0398EFC(v169, v167, v168);
    case 0x18u:
      v95 = *v51;
      v97 = *(v51 + 2);
      v96 = *(v51 + 3);
      v98 = 34;
LABEL_54:
      v121 = v208;
      MEMORY[0x1B2728D70](v98);
      SearchKey.hash(into:)(v121, v95);
      sub_1B0E46C68();
      if (v97)
      {
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

      sub_1B0D453B4(v121, v96);
      sub_1B0B239C8(v95);
      goto LABEL_84;
    case 0x19u:
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7238, &qword_1B0EF1218);
      v89 = *&v51[*(v88 + 48)];
      v90 = &v51[*(v88 + 64)];
      v91 = *v90;
      v92 = v90[1];
      v30 = v199;
      sub_1B03C60A4(v51, v199, &qword_1EB6E3EB0, &unk_1B0EC2010);
      v93 = v208;
      MEMORY[0x1B2728D70](35);
      v94 = v195;
      sub_1B03B5C80(v30, v195, &qword_1EB6E3EB0, &unk_1B0EC2010);
      if ((*(v205 + 48))(v94, 1, v206) == 1)
      {
        MEMORY[0x1B2728D70](1);
      }

      else
      {
        v172 = v202;
        sub_1B03C60A4(v94, v202, &unk_1EB6E26C0, &unk_1B0E9DE10);
        MEMORY[0x1B2728D70](0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        sub_1B0B0D328();
        sub_1B0E447C8();
        sub_1B0398EFC(v172, &unk_1EB6E26C0, &unk_1B0E9DE10);
      }

      sub_1B0D45B34(v93, v89);

      StoreData.hash(into:)(v93, v91, v92);
      sub_1B0D72504();
LABEL_111:
      v167 = &qword_1EB6E3EB0;
      v168 = &unk_1B0EC2010;
LABEL_114:
      v169 = v30;
      return sub_1B0398EFC(v169, v167, v168);
    case 0x1Au:
      v164 = v198;
      sub_1B03C60A4(v51, v198, &qword_1EB6E3EB0, &unk_1B0EC2010);
      MEMORY[0x1B2728D70](36);
      v165 = v194;
      sub_1B03B5C80(v164, v194, &qword_1EB6E3EB0, &unk_1B0EC2010);
      if ((*(v205 + 48))(v165, 1, v206) == 1)
      {
        MEMORY[0x1B2728D70](1);
      }

      else
      {
        v186 = v202;
        sub_1B03C60A4(v165, v202, &unk_1EB6E26C0, &unk_1B0E9DE10);
        MEMORY[0x1B2728D70](0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        sub_1B0B0D328();
        sub_1B0E447C8();
        sub_1B0398EFC(v186, &unk_1EB6E26C0, &unk_1B0E9DE10);
      }

      v167 = &qword_1EB6E3EB0;
      v168 = &unk_1B0EC2010;
      v169 = v164;
      return sub_1B0398EFC(v169, v167, v168);
    case 0x1Bu:
      MEMORY[0x1B2728D70](37);
      swift_beginAccess();
LABEL_30:
      sub_1B0E46C38();

    case 0x1Cu:
      v86 = *(v51 + 2);
      v87 = 38;
LABEL_83:
      MEMORY[0x1B2728D70](v87);
      MEMORY[0x1B2728D70](v86 | (v86 << 32));
      goto LABEL_84;
    case 0x1Du:
      v160 = *(v51 + 3);
      MEMORY[0x1B2728D70](39);
      swift_beginAccess();
      sub_1B0E46C38();
      MEMORY[0x1B2728D70](*(v160 + 16));
      v161 = *(v160 + 16);
      if (v161)
      {
        v162 = (v160 + 48);
        do
        {
          v163 = *v162;
          v162 += 3;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          MEMORY[0x1B2728D70](v163);

          --v161;
        }

        while (v161);
      }

      goto LABEL_84;
    case 0x1Eu:
      v141 = *v51;
      v142 = *(v51 + 4);
      v143 = *(v51 + 3);
      v144 = v208;
      MEMORY[0x1B2728D70](40);
      sub_1B0D44C38(v144, v141);

      MEMORY[0x1B2728D70](v142 | (v142 << 32));

      MEMORY[0x1B2728D70](*(v143 + 16));
      v145 = *(v143 + 16);
      if (v145)
      {
        v146 = v143 + 54;
        do
        {
          v146 += 24;
          swift_beginAccess();
          sub_1B0E46C38();
          --v145;
        }

        while (v145);
      }

      goto LABEL_84;
    case 0x1Fu:
      v117 = *(v51 + 2);
      v118 = *(v51 + 3);
      v119 = *(v51 + 4);
      v120 = v208;
      MEMORY[0x1B2728D70](41);
      MEMORY[0x1B2728D70](v117 | (v117 << 32));

      sub_1B0D3AC68(v120, v118, v119);

    case 0x20u:
      v147 = *(v51 + 1);
      v209 = *v51;
      *v210 = v147;
      v148 = *(v51 + 3);
      *&v210[16] = *(v51 + 2);
      v211 = v148;
      v149 = v208;
      MEMORY[0x1B2728D70](42);
      ExtendedSearchOptions.hash(into:)(v149);
      return sub_1B0D724B0(&v209);
    case 0x21u:
      v72 = *v51;
      v73 = *(v51 + 2);
      v74 = *(v51 + 2);
      MEMORY[0x1B2728D70](43);
      sub_1B0E46C68();
      if (v72)
      {
        MEMORY[0x1B2728D70](v73 | (v73 << 32));
      }

      MEMORY[0x1B2728D70](*(v74 + 16));
      v187 = *(v74 + 16);
      if (v187)
      {
        v188 = v74 + 40;
        do
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

          v188 += 16;
          --v187;
        }

        while (v187);
      }

      goto LABEL_84;
    case 0x22u:
      v62 = *v51;
      MEMORY[0x1B2728D70](44);
      MEMORY[0x1B2728D70](*(v62 + 16));
      v63 = *(v62 + 16);
      if (v63)
      {
        v64 = 0;
        do
        {
          swift_beginAccess();
          sub_1B0E46C38();

          swift_bridgeObjectRetain_n();
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

          swift_bridgeObjectRelease_n();
          v64 += 40;
          --v63;
        }

        while (v63);
      }

      goto LABEL_84;
    case 0x23u:
      v59 = *v51;
      MEMORY[0x1B2728D70](45);
      MEMORY[0x1B2728D70](*(v59 + 16));
      v60 = *(v59 + 16);
      if (v60)
      {
        v61 = v59 + 54;
        do
        {
          v61 += 24;
          swift_beginAccess();
          sub_1B0E46C38();
          --v60;
        }

        while (v60);
      }

      goto LABEL_84;
    case 0x24u:
      MEMORY[0x1B2728D70](46);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      goto LABEL_84;
    case 0x25u:
      v56 = *(v51 + 2);
      MEMORY[0x1B2728D70](47);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      MEMORY[0x1B2728D70](*(v56 + 16));
      v57 = *(v56 + 16);
      if (v57)
      {
        v58 = v56 + 48;
        do
        {
          if ((*(v58 - 16) & 0x8000000000000000) != 0)
          {
            MEMORY[0x1B2728D70](1);
          }

          else
          {
            MEMORY[0x1B2728D70](0);
          }

          swift_beginAccess();
          sub_1B0E46C38();
          v58 += 24;
          --v57;
        }

        while (v57);
      }

      goto LABEL_84;
    case 0x26u:
      v55 = 0;
      goto LABEL_93;
    case 0x27u:
      v55 = 1;
      goto LABEL_93;
    case 0x28u:
      v55 = 2;
      goto LABEL_93;
    case 0x29u:
      v55 = 16;
      goto LABEL_93;
    case 0x2Au:
      v55 = 17;
      goto LABEL_93;
    case 0x2Bu:
      v55 = 18;
      goto LABEL_93;
    case 0x2Cu:
      v55 = 19;
      goto LABEL_93;
    case 0x2Du:
      v55 = 21;
      goto LABEL_93;
    case 0x2Eu:
      v55 = 22;
      goto LABEL_93;
    case 0x2Fu:
      v55 = 29;
LABEL_93:
      result = MEMORY[0x1B2728D70](v55);
      break;
    default:
      v52 = *(v51 + 2);
      v53 = *(v51 + 2);
      v54 = v208;
      MEMORY[0x1B2728D70](3);
      MEMORY[0x1B2728D70](v52 | (v52 << 32));

      sub_1B0D48094(v54, v53);
LABEL_84:

      break;
  }

  return result;
}

uint64_t Command.hashValue.getter()
{
  sub_1B0E46C28();
  Command.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D681B4()
{
  sub_1B0E46C28();
  Command.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D681F8(uint64_t a1)
{
  sub_1B0E46C28();
  Command.hash(into:)(v2);
  return sub_1B0E46CB8();
}

void sub_1B0D68278(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v224[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB0, &unk_1B0EC2010);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v224[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v224[-v10];
  v12 = type metadata accessor for Command(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v224[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B0D73230(a1, v14, type metadata accessor for Command);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      goto LABEL_72;
    case 2u:
      goto LABEL_56;
    case 3u:
      v117 = *(v14 + 48);
      v228 = *(v14 + 32);
      v229 = v117;
      v118 = *(v14 + 72);
      v230 = *(v14 + 64);
      v119 = *(v14 + 16);
      v226 = *v14;
      v227 = v119;
      v120 = *(v14 + 80);
      v121 = *(v14 + 88);
      v122 = *(v14 + 96);
      v123 = *(v14 + 104) | ((*(v14 + 108) | (*(v14 + 110) << 16)) << 32);
      v225 = *(v14 + 111);
      v124 = v225;
      sub_1B0D69A40(&v226, v118, v120, v121, v122, v123 | (v225 << 56), *(v14 + 112));

      sub_1B0D3C8FC(v121, v122, v123, v124);

      sub_1B0398EFC(&v226, &qword_1EB6E7268, &qword_1B0EF1248);
      return;
    case 4u:
      v65 = *v14;
      v66 = *(v14 + 8);
      v67 = *(v14 + 16);
      v68 = *(v14 + 24);
      v69 = *(v14 + 32);
      v70 = *(v14 + 40) | ((*(v14 + 44) | (*(v14 + 46) << 16)) << 32);
      v71 = *(v14 + 47);
      v72 = *(v14 + 48);
      LOBYTE(v226) = v71;
      sub_1B0D6A01C(v65, v66, v67, v68, v69, v70 | (v71 << 56), v72);

      sub_1B0D3C8FC(v68, v69, v70, v71);

      goto LABEL_102;
    case 5u:
      sub_1B0D6A3F8(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32) | (*(v14 + 36) << 32) | (*(v14 + 38) << 48));
      goto LABEL_87;
    case 6u:
      sub_1B0D6A530(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32), *(v14 + 40), *(v14 + 48));

      return;
    case 7u:
      v125 = *v14;
      v14 = *(v14 + 16);
      v126 = *(v1 + 20);
      v127 = sub_1B0CFC1B0(0x205443454C4553uLL, 0xE700000000000000, v1 + 8, v126);
      if (v128)
      {
        v129._countAndFlagsBits = 0x205443454C4553;
        v129._object = 0xE700000000000000;
        v127 = ByteBuffer._setStringSlowpath(_:at:)(v129, v126);
      }

      v130 = v127;
      v131 = *(v1 + 20);
      v19 = __CFADD__(v131, v127);
      v132 = v131 + v127;
      if (v19)
      {
        goto LABEL_165;
      }

      *(v1 + 20) = v132;
      sub_1B0DD59A4(v125);
      v112 = __OFADD__(v130, v133);
      v134 = v130 + v133;
      if (v112)
      {
        goto LABEL_174;
      }

      v1 = sub_1B0E26690(v14);

      if (!__OFADD__(v134, v1))
      {
        return;
      }

      __break(1u);
LABEL_72:
      v14 = *v14;
      v135 = *(v1 + 20);
      v136 = sub_1B0CFC1B0(0x204554454C4544uLL, 0xE700000000000000, v1 + 8, v135);
      if (v137)
      {
        v138._countAndFlagsBits = 0x204554454C4544;
        v138._object = 0xE700000000000000;
        v136 = ByteBuffer._setStringSlowpath(_:at:)(v138, v135);
      }

      v139 = v136;
      v140 = *(v1 + 20);
      v19 = __CFADD__(v140, v136);
      v141 = v140 + v136;
      if (v19)
      {
        goto LABEL_166;
      }

      *(v1 + 20) = v141;
      sub_1B0DD59A4(v14);
      v143 = v142;

      if (__OFADD__(v139, v143))
      {
        __break(1u);
LABEL_78:
        sub_1B0D6C9F8(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32));
      }

      return;
    case 8u:
      goto LABEL_100;
    case 9u:
      v14 = *v14;
      v8 = *(v1 + 20);
      v77 = sub_1B0CFC1B0(0x4249524353425553uLL, 0xEA00000000002045, v1 + 8, v8);
      if (v78)
      {
        v79._countAndFlagsBits = 0x4249524353425553;
        v79._object = 0xEA00000000002045;
        v77 = ByteBuffer._setStringSlowpath(_:at:)(v79, v8);
      }

      v80 = v77;
      v81 = *(v1 + 20);
      v19 = __CFADD__(v81, v77);
      v82 = v81 + v77;
      if (v19)
      {
        goto LABEL_162;
      }

      *(v1 + 20) = v82;
      sub_1B0DD59A4(v14);
      v84 = v83;

      if (!__OFADD__(v80, v84))
      {
        return;
      }

      __break(1u);
LABEL_48:
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7238, &qword_1B0EF1218);
      v86 = *(v14 + *(v85 + 48));
      v87 = (v14 + *(v85 + 64));
      v88 = *v87;
      v89 = v87[1];
      v52 = &qword_1EB6E3EB0;
      v53 = &unk_1B0EC2010;
      sub_1B03C60A4(v14, v8, &qword_1EB6E3EB0, &unk_1B0EC2010);
      sub_1B0D6BD3C(v8, v86, v88, v89);

      sub_1B0D72504();
      v54 = v8;
LABEL_49:
      v90 = v52;
      v91 = v53;
      goto LABEL_137;
    case 0xAu:
      v14 = *v14;
      v154 = *(v1 + 20);
      v155 = sub_1B0CFC1B0(0x5243534255534E55uLL, 0xEC00000020454249, v1 + 8, v154);
      if (v156)
      {
        v157._countAndFlagsBits = 0x5243534255534E55;
        v157._object = 0xEC00000020454249;
        v155 = ByteBuffer._setStringSlowpath(_:at:)(v157, v154);
      }

      v158 = v155;
      v159 = *(v1 + 20);
      v19 = __CFADD__(v159, v155);
      v160 = v159 + v155;
      if (v19)
      {
        goto LABEL_167;
      }

      *(v1 + 20) = v160;
      sub_1B0DD59A4(v14);
      v162 = v161;

      if (!__OFADD__(v158, v162))
      {
        return;
      }

      __break(1u);
LABEL_100:
      sub_1B0D6B0A8(*v14, *(v14 + 8), *(v14 + 16));
      goto LABEL_101;
    case 0xBu:
      sub_1B0D6B21C(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32) | ((*(v14 + 36) | (*(v14 + 38) << 16)) << 32));
LABEL_87:

      return;
    case 0xCu:
      goto LABEL_41;
    case 0xDu:
      sub_1B0D6B6BC(*v14);
      goto LABEL_102;
    case 0xEu:
      goto LABEL_32;
    case 0xFu:
      goto LABEL_63;
    case 0x10u:
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7258, &qword_1B0EF1238);
      v48 = *(v14 + *(v47 + 48));
      v49 = (v14 + *(v47 + 64));
      v50 = *v49;
      v51 = v49[1];
      v52 = &qword_1EB6E4050;
      v53 = &unk_1B0EC2B20;
      sub_1B03C60A4(v14, v5, &qword_1EB6E4050, &unk_1B0EC2B20);
      sub_1B0D6B9E4(v5, v48, v50, v51);

      sub_1B0D72504();
      v54 = v5;
      goto LABEL_49;
    case 0x11u:
      v144 = *v14;
      sub_1B0D6C050(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24));

      sub_1B0B239C8(v144);
      return;
    case 0x12u:
      v153 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7250, &qword_1B0EF1230) + 48);
      v60 = *v153;
      v61 = *(v153 + 8);
      v62 = &qword_1EB6E4050;
      v63 = &unk_1B0EC2B20;
      sub_1B03C60A4(v14, v5, &qword_1EB6E4050, &unk_1B0EC2B20);
      v64 = 1163284301;
      goto LABEL_92;
    case 0x13u:
      goto LABEL_123;
    case 0x14u:
      goto LABEL_85;
    case 0x15u:
      v149 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7248, &qword_1B0EF1228) + 48);
      v150 = *v149;
      v151 = *(v149 + 8);
      v62 = &qword_1EB6E3EB0;
      v63 = &unk_1B0EC2010;
      sub_1B03C60A4(v14, v8, &qword_1EB6E3EB0, &unk_1B0EC2010);
      v152 = 0x59504F4320444955;
      goto LABEL_117;
    case 0x16u:
      goto LABEL_116;
    case 0x17u:
      goto LABEL_134;
    case 0x18u:
      v92 = *v14;
      v93 = *(v14 + 8);
      v94 = *(v14 + 16);
      v14 = *(v14 + 24);
      v95 = *(v1 + 20);
      v96 = sub_1B0CFC1B0(0x20444955uLL, 0xE400000000000000, v1 + 8, v95);
      if (v97)
      {
        v98._countAndFlagsBits = 541346133;
        v98._object = 0xE400000000000000;
        v96 = ByteBuffer._setStringSlowpath(_:at:)(v98, v95);
      }

      v99 = v96;
      v100 = *(v1 + 20);
      v19 = __CFADD__(v100, v96);
      v101 = v100 + v96;
      if (v19)
      {
        goto LABEL_163;
      }

      *(v1 + 20) = v101;
      sub_1B0D6C050(v92, v93, v94, v14);
      v1 = v102;

      sub_1B0B239C8(v92);
      if (!__OFADD__(v99, v1))
      {
        return;
      }

      __break(1u);
LABEL_56:
      v103 = *v14;
      v14 = *(v14 + 16);
      v104 = *(v1 + 20);
      v105 = sub_1B0CFC1B0(0x20454E494D415845uLL, 0xE800000000000000, v1 + 8, v104);
      if (v106)
      {
        v107._countAndFlagsBits = 0x20454E494D415845;
        v107._object = 0xE800000000000000;
        v105 = ByteBuffer._setStringSlowpath(_:at:)(v107, v104);
      }

      v108 = v105;
      v109 = *(v1 + 20);
      v19 = __CFADD__(v109, v105);
      v110 = v109 + v105;
      if (v19)
      {
        goto LABEL_164;
      }

      *(v1 + 20) = v110;
      sub_1B0DD59A4(v103);
      v112 = __OFADD__(v108, v111);
      v5 = (v108 + v111);
      if (v112)
      {
        goto LABEL_173;
      }

      v113 = sub_1B0E26690(v14);

      if (!__OFADD__(v5, v113))
      {
        return;
      }

      __break(1u);
LABEL_63:
      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7260, &qword_1B0EF1240);
      v115 = *(v14 + *(v114 + 48));
      v116 = *(v14 + *(v114 + 64));
      v62 = &qword_1EB6E4050;
      v63 = &unk_1B0EC2B20;
      sub_1B03C60A4(v14, v5, &qword_1EB6E4050, &unk_1B0EC2B20);
      sub_1B0D6B89C(v5, v115, v116, 0x204843544546uLL, 0xE600000000000000, sub_1B0E1F248);

LABEL_93:

      v54 = v5;
      goto LABEL_136;
    case 0x19u:
      goto LABEL_48;
    case 0x1Au:
      goto LABEL_150;
    case 0x1Bu:
      v35 = *v14;
      v36 = *(v14 + 8);
      v37 = *(v14 + 16);
      v38 = *(v14 + 20);
      v39 = *(v14 + 22);
      v40 = *(v1 + 20);
      v41 = sub_1B0CFC1B0(0x41544F5551544547uLL, 0xE900000000000020, v1 + 8, v40);
      if (v42)
      {
        v43._countAndFlagsBits = 0x41544F5551544547;
        v43._object = 0xE900000000000020;
        v41 = ByteBuffer._setStringSlowpath(_:at:)(v43, v40);
      }

      v14 = v41;
      v44 = *(v1 + 20);
      v19 = __CFADD__(v44, v41);
      v45 = v44 + v41;
      if (v19)
      {
        goto LABEL_161;
      }

      *(v1 + 20) = v45;
      v46 = sub_1B0D4B6B8(v35, v36, v37 | (v38 << 32) | (v39 << 48));

      if (!__OFADD__(v14, v46))
      {
        return;
      }

      __break(1u);
LABEL_25:
      sub_1B0D6CD9C(*v14);
      goto LABEL_102;
    case 0x1Cu:
      v14 = *v14;
      v199 = *(v1 + 20);
      v200 = sub_1B0CFC1B0(0x41544F5551544547uLL, 0xED000020544F4F52, v1 + 8, v199);
      if (v201)
      {
        v202._countAndFlagsBits = 0x41544F5551544547;
        v202._object = 0xED000020544F4F52;
        v200 = ByteBuffer._setStringSlowpath(_:at:)(v202, v199);
      }

      v203 = v200;
      v204 = *(v1 + 20);
      v19 = __CFADD__(v204, v200);
      v205 = v204 + v200;
      if (v19)
      {
        goto LABEL_170;
      }

      *(v1 + 20) = v205;
      sub_1B0DD59A4(v14);
      v207 = v206;

      if (!__OFADD__(v203, v207))
      {
        return;
      }

      __break(1u);
LABEL_144:
      sub_1B0D6C354(*v14, *(v14 + 8), *(v14 + 16) | (*(v14 + 20) << 32) | (*(v14 + 22) << 48), *(v14 + 24));

      goto LABEL_102;
    case 0x1Du:
      goto LABEL_144;
    case 0x1Eu:
      sub_1B0D6C65C(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24));

      goto LABEL_101;
    case 0x1Fu:
      goto LABEL_78;
    case 0x20u:
      v163 = *(v14 + 16);
      v226 = *v14;
      v227 = v163;
      v164 = *(v14 + 48);
      v228 = *(v14 + 32);
      v229 = v164;
      v165 = *(v1 + 20);
      v166 = sub_1B0CFC1B0(0x48435241455345uLL, 0xE700000000000000, v1 + 8, v165);
      if (v167)
      {
        v168._countAndFlagsBits = 0x48435241455345;
        v168._object = 0xE700000000000000;
        v166 = ByteBuffer._setStringSlowpath(_:at:)(v168, v165);
      }

      v169 = v166;
      v170 = *(v1 + 20);
      v19 = __CFADD__(v170, v166);
      v171 = v170 + v166;
      if (v19)
      {
        goto LABEL_168;
      }

      *(v1 + 20) = v171;
      v1 = sub_1B0D82230(&v226);
      sub_1B0D724B0(&v226);
      if (!__OFADD__(v169, v1))
      {
        return;
      }

      __break(1u);
LABEL_111:
      v8 = 0x5443454C45534E55;
      v14 = *(v1 + 20);
      v172 = sub_1B0CFC1B0(0x5443454C45534E55uLL, 0xE800000000000000, v1 + 8, v14);
      if (v173)
      {
        v174._countAndFlagsBits = 0x5443454C45534E55;
        v174._object = 0xE800000000000000;
        v172 = ByteBuffer._setStringSlowpath(_:at:)(v174, v14);
      }

      v175 = *(v1 + 20);
      v19 = __CFADD__(v175, v172);
      v20 = v175 + v172;
      if (!v19)
      {
        goto LABEL_159;
      }

      __break(1u);
LABEL_116:
      v176 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7248, &qword_1B0EF1228) + 48);
      v150 = *v176;
      v151 = *(v176 + 8);
      v62 = &qword_1EB6E3EB0;
      v63 = &unk_1B0EC2010;
      sub_1B03C60A4(v14, v8, &qword_1EB6E3EB0, &unk_1B0EC2010);
      v152 = 0x45564F4D20444955;
LABEL_117:
      sub_1B0D6C228(v8, v150, v151, v152, 0xE900000000000020, sub_1B0E1F458);
      goto LABEL_135;
    case 0x21u:
      sub_1B0D6CB40(*v14, *(v14 + 8), *(v14 + 16));

      goto LABEL_102;
    case 0x22u:
      goto LABEL_25;
    case 0x23u:
      goto LABEL_14;
    case 0x24u:
      v25 = *v14;
      v26 = *(v14 + 8);
      *&v226 = 0x53534552504D4F43;
      *(&v226 + 1) = 0xE900000000000020;
      MEMORY[0x1B2726E80](v25, v26);
      v27 = v1;
      v28 = v226;
      v29 = *(v1 + 20);
      v30 = sub_1B0CFC1B0(v226, *(&v226 + 1), v27 + 8, *(v27 + 20));
      if (v31)
      {
        v30 = ByteBuffer._setStringSlowpath(_:at:)(v28, v29);
        v27 = v1;
      }

      v32 = v30;

      v33 = *(v27 + 20);
      v19 = __CFADD__(v33, v32);
      v34 = v33 + v32;
      if (v19)
      {
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
      }

      else
      {
        *(v27 + 20) = v34;
      }

      return;
    case 0x25u:
      goto LABEL_8;
    case 0x26u:
      v14 = *(v1 + 20);
      v208 = sub_1B0CFC1B0(0x494C494241504143uLL, 0xEA00000000005954, v1 + 8, v14);
      if (v209)
      {
        v210._countAndFlagsBits = 0x494C494241504143;
        v210._object = 0xEA00000000005954;
        v208 = ByteBuffer._setStringSlowpath(_:at:)(v210, v14);
      }

      v211 = *(v1 + 20);
      v19 = __CFADD__(v211, v208);
      v20 = v211 + v208;
      if (!v19)
      {
        goto LABEL_159;
      }

      __break(1u);
LABEL_150:
      sub_1B03C60A4(v14, v11, &qword_1EB6E3EB0, &unk_1B0EC2010);
      v212 = *(v1 + 20);
      v213 = sub_1B0CFC1B0(0x5550584520444955uLL, 0xEC0000002045474ELL, v1 + 8, v212);
      if (v214)
      {
        v215._object = 0xEC0000002045474ELL;
        v215._countAndFlagsBits = 0x5550584520444955;
        v213 = ByteBuffer._setStringSlowpath(_:at:)(v215, v212);
      }

      v216 = v213;
      v217 = *(v1 + 20);
      v19 = __CFADD__(v217, v213);
      v218 = v217 + v213;
      if (v19)
      {
        goto LABEL_171;
      }

      *(v1 + 20) = v218;
      v1 = sub_1B0E1F458(v11);
      sub_1B0398EFC(v11, &qword_1EB6E3EB0, &unk_1B0EC2010);
      if (!__OFADD__(v216, v1))
      {
        return;
      }

      __break(1u);
LABEL_156:
      v219 = *(v1 + 20);
      v220 = sub_1B0CFC1B0(0x454C4449uLL, 0xE400000000000000, v1 + 8, v219);
      if (v221)
      {
        v222._countAndFlagsBits = 1162626121;
        v222._object = 0xE400000000000000;
        v220 = ByteBuffer._setStringSlowpath(_:at:)(v222, v219);
      }

      v223 = *(v1 + 20);
      v19 = __CFADD__(v223, v220);
      v20 = v223 + v220;
      if (!v19)
      {
        goto LABEL_159;
      }

      goto LABEL_172;
    case 0x27u:
      v14 = *(v1 + 20);
      v177 = sub_1B0CFC1B0(0x54554F474F4CuLL, 0xE600000000000000, v1 + 8, v14);
      if (v178)
      {
        v179._countAndFlagsBits = 0x54554F474F4CLL;
        v179._object = 0xE600000000000000;
        v177 = ByteBuffer._setStringSlowpath(_:at:)(v179, v14);
      }

      v180 = *(v1 + 20);
      v19 = __CFADD__(v180, v177);
      v20 = v180 + v177;
      if (!v19)
      {
        goto LABEL_159;
      }

      __break(1u);
LABEL_123:
      v181 = *v14;
      v182 = *(v14 + 8);
      v183 = *(v14 + 16);
      v184 = *(v1 + 20);
      v185 = sub_1B0CFC1B0(0x204449uLL, 0xE300000000000000, v1 + 8, v184);
      if (v186)
      {
        v187._countAndFlagsBits = 2114633;
        v187._object = 0xE300000000000000;
        v185 = ByteBuffer._setStringSlowpath(_:at:)(v187, v184);
      }

      v188 = v185;
      v189 = *(v1 + 20);
      v19 = __CFADD__(v189, v185);
      v190 = v189 + v185;
      if (v19)
      {
        goto LABEL_169;
      }

      *(v1 + 20) = v190;
      sub_1B0DC4120(v181, v182, v183);
      v1 = v191;

      if (!__OFADD__(v188, v1))
      {
        return;
      }

      __break(1u);
LABEL_129:
      v8 = 0x4B43454843;
      v14 = *(v1 + 20);
      v192 = sub_1B0CFC1B0(0x4B43454843uLL, 0xE500000000000000, v1 + 8, v14);
      if (v193)
      {
        v194._countAndFlagsBits = 0x4B43454843;
        v194._object = 0xE500000000000000;
        v192 = ByteBuffer._setStringSlowpath(_:at:)(v194, v14);
      }

      v195 = *(v1 + 20);
      v19 = __CFADD__(v195, v192);
      v20 = v195 + v192;
      if (v19)
      {
        __break(1u);
LABEL_134:
        v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7240, &qword_1B0EF1220);
        v197 = *(v14 + *(v196 + 48));
        v198 = *(v14 + *(v196 + 64));
        v62 = &qword_1EB6E3EB0;
        v63 = &unk_1B0EC2010;
        sub_1B03C60A4(v14, v8, &qword_1EB6E3EB0, &unk_1B0EC2010);
        sub_1B0D6B89C(v8, v197, v198, 0x4354454620444955uLL, 0xEA00000000002048, sub_1B0E1F458);

LABEL_135:

        v54 = v8;
LABEL_136:
        v90 = v62;
        v91 = v63;
LABEL_137:
        sub_1B0398EFC(v54, v90, v91);
      }

      else
      {
LABEL_159:
        *(v1 + 20) = v20;
      }

      return;
    case 0x28u:
      v14 = *(v1 + 20);
      v73 = sub_1B0CFC1B0(0x504F4F4EuLL, 0xE400000000000000, v1 + 8, v14);
      if (v74)
      {
        v75._countAndFlagsBits = 1347374926;
        v75._object = 0xE400000000000000;
        v73 = ByteBuffer._setStringSlowpath(_:at:)(v75, v14);
      }

      v76 = *(v1 + 20);
      v19 = __CFADD__(v76, v73);
      v20 = v76 + v73;
      if (!v19)
      {
        goto LABEL_159;
      }

      __break(1u);
LABEL_41:
      sub_1B0D6B584(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24));
      goto LABEL_101;
    case 0x29u:
      v14 = *(v1 + 20);
      v145 = sub_1B0CFC1B0(0x534C545452415453uLL, 0xE800000000000000, v1 + 8, v14);
      if (v146)
      {
        v147._countAndFlagsBits = 0x534C545452415453;
        v147._object = 0xE800000000000000;
        v145 = ByteBuffer._setStringSlowpath(_:at:)(v147, v14);
      }

      v148 = *(v1 + 20);
      v19 = __CFADD__(v148, v145);
      v20 = v148 + v145;
      if (!v19)
      {
        goto LABEL_159;
      }

      __break(1u);
LABEL_85:
      sub_1B0D6D164(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24));
      return;
    case 0x2Au:
      goto LABEL_129;
    case 0x2Bu:
      v14 = *(v1 + 20);
      v15 = sub_1B0CFC1B0(0x45534F4C43uLL, 0xE500000000000000, v1 + 8, v14);
      if (v16)
      {
        v17._countAndFlagsBits = 0x45534F4C43;
        v17._object = 0xE500000000000000;
        v15 = ByteBuffer._setStringSlowpath(_:at:)(v17, v14);
      }

      v18 = *(v1 + 20);
      v19 = __CFADD__(v18, v15);
      v20 = v18 + v15;
      if (!v19)
      {
        goto LABEL_159;
      }

      __break(1u);
LABEL_8:
      sub_1B0D6D288(*v14, *(v14 + 8), *(v14 + 16));
LABEL_101:

      goto LABEL_102;
    case 0x2Cu:
      v14 = *(v1 + 20);
      v5 = 0;
      v55 = sub_1B0CFC1B0(0x45474E55505845uLL, 0xE700000000000000, v1 + 8, v14);
      if (v56)
      {
        v5 = v1;
        v57._countAndFlagsBits = 0x45474E55505845;
        v57._object = 0xE700000000000000;
        v55 = ByteBuffer._setStringSlowpath(_:at:)(v57, v14);
      }

      v58 = *(v1 + 20);
      v19 = __CFADD__(v58, v55);
      v20 = v58 + v55;
      if (!v19)
      {
        goto LABEL_159;
      }

      __break(1u);
LABEL_32:
      v59 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7250, &qword_1B0EF1230) + 48);
      v60 = *v59;
      v61 = *(v59 + 8);
      v62 = &qword_1EB6E4050;
      v63 = &unk_1B0EC2B20;
      sub_1B03C60A4(v14, v5, &qword_1EB6E4050, &unk_1B0EC2B20);
      v64 = 1498435395;
LABEL_92:
      sub_1B0D6C228(v5, v60, v61, v64 & 0xFFFF0000FFFFFFFFLL | 0x2000000000, 0xE500000000000000, sub_1B0E1F248);
      goto LABEL_93;
    case 0x2Du:
      goto LABEL_111;
    case 0x2Eu:
      goto LABEL_156;
    case 0x2Fu:
      v14 = *(v1 + 20);
      v21 = sub_1B0CFC1B0(0x43415053454D414EuLL, 0xE900000000000045, v1 + 8, v14);
      if (v22)
      {
        v23._object = 0xE900000000000045;
        v23._countAndFlagsBits = 0x43415053454D414ELL;
        v21 = ByteBuffer._setStringSlowpath(_:at:)(v23, v14);
      }

      v24 = *(v1 + 20);
      v19 = __CFADD__(v24, v21);
      v20 = v24 + v21;
      if (!v19)
      {
        goto LABEL_159;
      }

      __break(1u);
LABEL_14:
      sub_1B0D6CF84(*v14);
LABEL_102:

      return;
    default:
      sub_1B0D69774(*v14, *(v14 + 8), *(v14 + 16));
      goto LABEL_101;
  }
}

void sub_1B0D69774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(v3 + 20);
  v8 = sub_1B0CFC1B0(0x20455441455243uLL, 0xE700000000000000, v3 + 8, v7);
  if (v9)
  {
    v10._countAndFlagsBits = 0x20455441455243;
    v10._object = 0xE700000000000000;
    v8 = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
  }

  v11 = v8;
  v12 = *(v3 + 20);
  v13 = __CFADD__(v12, v8);
  v14 = v12 + v8;
  if (v13)
  {
    __break(1u);
    goto LABEL_29;
  }

  *(v3 + 20) = v14;
  sub_1B0DD59A4(a1);
  v16 = v11 + v15;
  if (__OFADD__(v11, v15))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v17 = *(a3 + 16);
  if (v17)
  {
    v18 = *(v3 + 20);
    v19 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v3 + 8, v18);
    if (v20)
    {
      v21._countAndFlagsBits = 32;
      v21._object = 0xE100000000000000;
      v19 = ByteBuffer._setStringSlowpath(_:at:)(v21, v18);
    }

    v22 = v19;
    v23 = *(v3 + 20);
    v24 = (v23 + v19);
    if (__CFADD__(v23, v19))
    {
      goto LABEL_31;
    }

    *(v3 + 20) = v24;
    v54 = a3;
    v25 = sub_1B0CFC1B0(0, 0xE000000000000000, v3 + 8, v24);
    if (v26)
    {
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      v25 = ByteBuffer._setStringSlowpath(_:at:)(v27, v24);
    }

    v28 = v25;
    v29 = *(v3 + 20);
    v30 = (v29 + v25);
    if (__CFADD__(v29, v25))
    {
      goto LABEL_32;
    }

    *(v3 + 20) = v30;
    v31 = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v3 + 8, v30);
    if (v32)
    {
      v33._countAndFlagsBits = 40;
      v33._object = 0xE100000000000000;
      v31 = ByteBuffer._setStringSlowpath(_:at:)(v33, v30);
    }

    v34 = *(v3 + 20);
    v13 = __CFADD__(v34, v31);
    v35 = v34 + v31;
    if (v13)
    {
      goto LABEL_33;
    }

    *(v3 + 20) = v35;
    v36 = v28 + v31;
    if (__OFADD__(v28, v31))
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    MEMORY[0x1EEE9AC00](v31);
    v53[2] = sub_1B0D6D53C;
    v53[3] = 0;
    v53[4] = v4;
    v53[5] = &v54;
    v53[6] = 0;
    v53[7] = 0xE000000000000000;
    v37 = sub_1B0DE5E90(0, sub_1B0D730F0, v53, a3);
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v39 = *(v4 + 20);
    v40 = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v4 + 8, v39);
    if (v41)
    {
      v42._countAndFlagsBits = 41;
      v42._object = 0xE100000000000000;
      v40 = ByteBuffer._setStringSlowpath(_:at:)(v42, v39);
    }

    v43 = *(v4 + 20);
    v44 = (v43 + v40);
    if (__CFADD__(v43, v40))
    {
      goto LABEL_36;
    }

    *(v4 + 20) = v44;
    v45 = __OFADD__(v38, v40);
    v46 = v38 + v40;
    if (v45)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v47 = sub_1B0CFC1B0(0, 0xE000000000000000, v4 + 8, v44);
    if (v48)
    {
      v49._countAndFlagsBits = 0;
      v49._object = 0xE000000000000000;
      v47 = ByteBuffer._setStringSlowpath(_:at:)(v49, v44);
    }

    v50 = *(v4 + 20);
    v13 = __CFADD__(v50, v47);
    v51 = v50 + v47;
    if (v13)
    {
      goto LABEL_38;
    }

    *(v4 + 20) = v51;
    v52 = v46 + v47;
    if (__OFADD__(v46, v47))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v45 = __OFADD__(v22, v52);
    v17 = v22 + v52;
    if (v45)
    {
LABEL_40:
      __break(1u);
      return;
    }
  }

  if (__OFADD__(v16, v17))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }
}

void sub_1B0D69A40(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v98 = a7;
  v96 = a6;
  v95 = a5;
  v97 = a4;
  v99 = a2;
  v10 = a1[1];
  v110 = *a1;
  v111 = v10;
  v11 = *(a1 + 4);
  v108 = *(a1 + 40);
  v12 = *(a1 + 8);
  v109 = *(a1 + 7);
  v13 = *(v7 + 20);
  v14 = sub_1B0CFC1B0(0x5453494CuLL, 0xE400000000000000, v7 + 8, v13);
  if (v15)
  {
    v16._countAndFlagsBits = 1414744396;
    v16._object = 0xE400000000000000;
    v14 = ByteBuffer._setStringSlowpath(_:at:)(v16, v13);
  }

  v17 = v14;
  v18 = *(v7 + 20);
  v19 = (v18 + v14);
  if (__CFADD__(v18, v14))
  {
    goto LABEL_59;
  }

  *(v7 + 20) = v19;
  v20 = *(a1 + 8);
  if (!v20)
  {
    goto LABEL_36;
  }

  v21 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v7 + 8, v19);
  if (v22)
  {
    v23._countAndFlagsBits = 32;
    v23._object = 0xE100000000000000;
    v21 = ByteBuffer._setStringSlowpath(_:at:)(v23, v19);
  }

  v24 = *(v7 + 20);
  v25 = (v24 + v21);
  if (__CFADD__(v24, v21))
  {
    goto LABEL_68;
  }

  v93 = v21;
  *(v7 + 20) = v25;
  v26 = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v7 + 8, v25);
  if (v27)
  {
    v28._countAndFlagsBits = 40;
    v28._object = 0xE100000000000000;
    v26 = ByteBuffer._setStringSlowpath(_:at:)(v28, v25);
  }

  v29 = *(v7 + 20);
  v30 = (v29 + v26);
  if (__CFADD__(v29, v26))
  {
    goto LABEL_69;
  }

  v94 = v26;
  *(v7 + 20) = v30;
  v107 = v12;
  v31 = *(v12 + 16);
  if (v31)
  {
    v101 = v110;
    v102 = v111;
    v103 = v11;
    v104 = v108;
    v105 = v109;
    v106 = v12;
    sub_1B0D7311C(&v101, v100);
    v32 = sub_1B0CFC1B0(0, 0xE000000000000000, v7 + 8, v30);
    if (v33)
    {
      v34._countAndFlagsBits = 0;
      v34._object = 0xE000000000000000;
      v32 = ByteBuffer._setStringSlowpath(_:at:)(v34, v30);
    }

    v35 = v32;
    v36 = *(v8 + 20);
    v37 = __CFADD__(v36, v32);
    v38 = v36 + v32;
    if (v37)
    {
      goto LABEL_78;
    }

    *(v8 + 20) = v38;
  }

  else
  {
    v101 = v110;
    v102 = v111;
    v103 = v11;
    v104 = v108;
    v105 = v109;
    v106 = v12;
    v32 = sub_1B0D7311C(&v101, v100);
    v35 = 0;
  }

  MEMORY[0x1EEE9AC00](v32);
  v92[2] = sub_1B0DCC160;
  v92[3] = 0;
  v92[4] = v8;
  v92[5] = &v107;
  v92[6] = 0;
  v92[7] = 0xE000000000000000;
  v39 = sub_1B0DE6204(0, sub_1B0D73178, v92, v12);
  v40 = v35 + v39;
  if (__OFADD__(v35, v39))
  {
    goto LABEL_70;
  }

  if (v31)
  {
    v41 = *(v8 + 20);
    v42 = sub_1B0CFC1B0(0, 0xE000000000000000, v8 + 8, v41);
    if (v43)
    {
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      v42 = ByteBuffer._setStringSlowpath(_:at:)(v44, v41);
    }

    v45 = *(v8 + 20);
    v37 = __CFADD__(v45, v42);
    v46 = v45 + v42;
    if (v37)
    {
      goto LABEL_79;
    }

    *(v8 + 20) = v46;
    v47 = v40 + v42;
    if (!__OFADD__(v40, v42))
    {
      goto LABEL_23;
    }

    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v47 = v35 + v39;
LABEL_23:
  if (v11 == 0xFF)
  {
    v48 = *(v8 + 20);
    v49 = sub_1B0CFC1B0(0x4249524353425553uLL, 0xEA00000000004445, v8 + 8, v48);
    if (v50)
    {
      v51._countAndFlagsBits = 0x4249524353425553;
      v51._object = 0xEA00000000004445;
      v49 = ByteBuffer._setStringSlowpath(_:at:)(v51, v48);
    }

    v52 = v49;
    sub_1B0398EFC(a1, &qword_1EB6E7268, &qword_1B0EF1248);
    v53 = *(v8 + 20);
    v37 = __CFADD__(v53, v52);
    v54 = v53 + v52;
    if (v37)
    {
      goto LABEL_80;
    }

    *(v8 + 20) = v54;
  }

  else
  {
    v101 = v110;
    v102 = v111;
    v103 = v11;
    v104 = v108;
    v105 = v109;
    v52 = sub_1B0DF6A94(&v101);
    sub_1B0398EFC(a1, &qword_1EB6E7268, &qword_1B0EF1248);
  }

  v55 = v47 + v52;
  if (__OFADD__(v47, v52))
  {
    goto LABEL_71;
  }

  v56 = v94 + v55;
  if (__OFADD__(v94, v55))
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v57 = *(v8 + 20);
  v58 = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v8 + 8, v57);
  if (v59)
  {
    v60._countAndFlagsBits = 41;
    v60._object = 0xE100000000000000;
    v58 = ByteBuffer._setStringSlowpath(_:at:)(v60, v57);
  }

  v61 = *(v8 + 20);
  LODWORD(v19) = v61 + v58;
  if (__CFADD__(v61, v58))
  {
    goto LABEL_73;
  }

  *(v8 + 20) = v19;
  v62 = v56 + v58;
  if (__OFADD__(v56, v58))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v63 = __OFADD__(v93, v62);
  v20 = v93 + v62;
  if (v63)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_36:
  v64 = v17 + v20;
  if (__OFADD__(v17, v20))
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v65 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v8 + 8, v19);
  if (v66)
  {
    v67._countAndFlagsBits = 32;
    v67._object = 0xE100000000000000;
    v65 = ByteBuffer._setStringSlowpath(_:at:)(v67, v19);
  }

  v68 = *(v8 + 20);
  v37 = __CFADD__(v68, v65);
  v69 = v68 + v65;
  if (v37)
  {
    goto LABEL_61;
  }

  *(v8 + 20) = v69;
  v70 = v64 + v65;
  if (__OFADD__(v64, v65))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  sub_1B0DD59A4(v99);
  v72 = v70 + v71;
  if (__OFADD__(v70, v71))
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v73 = *(v8 + 20);
  v74 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v8 + 8, v73);
  if (v75)
  {
    v76._countAndFlagsBits = 32;
    v76._object = 0xE100000000000000;
    v74 = ByteBuffer._setStringSlowpath(_:at:)(v76, v73);
  }

  v77 = v98;
  v78 = *(v8 + 20);
  v37 = __CFADD__(v78, v74);
  v79 = v78 + v74;
  if (v37)
  {
    goto LABEL_64;
  }

  *(v8 + 20) = v79;
  v80 = v72 + v74;
  if (__OFADD__(v72, v74))
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if ((v96 & 0x100000000000000) != 0)
  {
    v81 = sub_1B0E08B68(v97);
  }

  else
  {
    v81 = sub_1B0D4B6B8(v97, v95, v96 & 0xFFFFFFFFFFFFFFLL);
  }

  v82 = v80 + v81;
  if (__OFADD__(v80, v81))
  {
    goto LABEL_66;
  }

  v83 = *(v77 + 16);
  if (v83)
  {
    v84 = *(v8 + 20);
    v85 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v8 + 8, v84);
    if (v86)
    {
      v87._countAndFlagsBits = 32;
      v87._object = 0xE100000000000000;
      v85 = ByteBuffer._setStringSlowpath(_:at:)(v87, v84);
    }

    v88 = v85;
    v89 = *(v8 + 20);
    v37 = __CFADD__(v89, v85);
    v90 = v89 + v85;
    if (v37)
    {
      goto LABEL_76;
    }

    *(v8 + 20) = v90;
    v91 = sub_1B0DC9E80(v77);
    v83 = v88 + v91;
    if (__OFADD__(v88, v91))
    {
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return;
    }
  }

  if (__OFADD__(v82, v83))
  {
    goto LABEL_67;
  }
}

void sub_1B0D6A01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v79 = a7;
  v14 = *(v7 + 20);
  v15 = sub_1B0CFC1B0(0x5453494CuLL, 0xE400000000000000, v7 + 8, v14);
  if (v16)
  {
    v17._countAndFlagsBits = 1414744396;
    v17._object = 0xE400000000000000;
    v15 = ByteBuffer._setStringSlowpath(_:at:)(v17, v14);
  }

  v18 = v15;
  v19 = *(v7 + 20);
  v20 = (v19 + v15);
  if (__CFADD__(v19, v15))
  {
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  *(v7 + 20) = v20;
  v21 = *(a1 + 16);
  v78 = a5;
  if (v21)
  {
    v80 = a1;
    v22 = sub_1B0CFC1B0(0, 0xE000000000000000, v7 + 8, v20);
    if (v23)
    {
      v24._countAndFlagsBits = 0;
      v24._object = 0xE000000000000000;
      v22 = ByteBuffer._setStringSlowpath(_:at:)(v24, v20);
    }

    v25 = v22;
    v26 = *(v7 + 20);
    v27 = (v26 + v22);
    if (__CFADD__(v26, v22))
    {
      goto LABEL_51;
    }

    *(v7 + 20) = v27;
    v28 = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v7 + 8, v27);
    if (v29)
    {
      v30._countAndFlagsBits = 40;
      v30._object = 0xE100000000000000;
      v28 = ByteBuffer._setStringSlowpath(_:at:)(v30, v27);
    }

    v31 = *(v7 + 20);
    v32 = __CFADD__(v31, v28);
    v33 = v31 + v28;
    if (v32)
    {
      goto LABEL_52;
    }

    *(v7 + 20) = v33;
    v34 = v25 + v28;
    if (__OFADD__(v25, v28))
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    MEMORY[0x1EEE9AC00](v28);
    v77[2] = sub_1B0D6D560;
    v77[3] = 0;
    v77[4] = v8;
    v77[5] = &v80;
    v77[6] = 32;
    v77[7] = 0xE100000000000000;
    v35 = sub_1B0DE6240(0, sub_1B0D731A4, v77, a1);
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v37 = *(v8 + 20);
    v38 = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v8 + 8, v37);
    if (v39)
    {
      v40._countAndFlagsBits = 41;
      v40._object = 0xE100000000000000;
      v38 = ByteBuffer._setStringSlowpath(_:at:)(v40, v37);
    }

    v41 = *(v8 + 20);
    v42 = (v41 + v38);
    if (__CFADD__(v41, v38))
    {
      goto LABEL_55;
    }

    *(v8 + 20) = v42;
    v43 = __OFADD__(v36, v38);
    v44 = v36 + v38;
    if (v43)
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v45 = sub_1B0CFC1B0(0, 0xE000000000000000, v8 + 8, v42);
    if (v46)
    {
      v47._countAndFlagsBits = 0;
      v47._object = 0xE000000000000000;
      v45 = ByteBuffer._setStringSlowpath(_:at:)(v47, v42);
    }

    v48 = *(v8 + 20);
    LODWORD(v20) = v48 + v45;
    if (__CFADD__(v48, v45))
    {
      goto LABEL_57;
    }

    *(v8 + 20) = v20;
    v21 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }
  }

  v49 = v18 + v21;
  if (__OFADD__(v18, v21))
  {
    goto LABEL_43;
  }

  v50 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v8 + 8, v20);
  if (v51)
  {
    v52._countAndFlagsBits = 32;
    v52._object = 0xE100000000000000;
    v50 = ByteBuffer._setStringSlowpath(_:at:)(v52, v20);
  }

  v53 = *(v8 + 20);
  v32 = __CFADD__(v53, v50);
  v54 = v53 + v50;
  if (v32)
  {
    goto LABEL_44;
  }

  *(v8 + 20) = v54;
  v55 = v49 + v50;
  if (__OFADD__(v49, v50))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  sub_1B0DD59A4(a2);
  v57 = v55 + v56;
  if (__OFADD__(v55, v56))
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v58 = *(v8 + 20);
  v59 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v8 + 8, v58);
  if (v60)
  {
    v61._countAndFlagsBits = 32;
    v61._object = 0xE100000000000000;
    v59 = ByteBuffer._setStringSlowpath(_:at:)(v61, v58);
  }

  v62 = *(v8 + 20);
  v32 = __CFADD__(v62, v59);
  v63 = v62 + v59;
  if (v32)
  {
    goto LABEL_47;
  }

  *(v8 + 20) = v63;
  v64 = v57 + v59;
  if (__OFADD__(v57, v59))
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if ((a6 & 0x100000000000000) != 0)
  {
    v65 = sub_1B0E08B68(a4);
  }

  else
  {
    v65 = sub_1B0D4B6B8(a4, v78, a6 & 0xFFFFFFFFFFFFFFLL);
  }

  v66 = v79;
  v67 = v64 + v65;
  if (__OFADD__(v64, v65))
  {
    goto LABEL_49;
  }

  v68 = *(v79 + 16);
  if (v68)
  {
    v69 = *(v8 + 20);
    v70 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v8 + 8, v69);
    if (v71)
    {
      v72._countAndFlagsBits = 32;
      v72._object = 0xE100000000000000;
      v70 = ByteBuffer._setStringSlowpath(_:at:)(v72, v69);
    }

    v73 = v70;
    v74 = *(v8 + 20);
    v32 = __CFADD__(v74, v70);
    v75 = v74 + v70;
    if (v32)
    {
      goto LABEL_59;
    }

    *(v8 + 20) = v75;
    v76 = sub_1B0DC9E80(v66);
    v68 = v73 + v76;
    if (__OFADD__(v73, v76))
    {
LABEL_60:
      __break(1u);
      return;
    }
  }

  if (__OFADD__(v67, v68))
  {
    goto LABEL_50;
  }
}

void sub_1B0D6A3F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = *(v5 + 20);
  v11 = sub_1B0CFC1B0(0x204255534CuLL, 0xE500000000000000, v5 + 8, v10);
  if (v12)
  {
    v13._countAndFlagsBits = 0x204255534CLL;
    v13._object = 0xE500000000000000;
    v11 = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
  }

  v14 = v11;
  v15 = *(v5 + 20);
  v16 = __CFADD__(v15, v11);
  v17 = v15 + v11;
  if (v16)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v5 + 20) = v17;
  sub_1B0DD59A4(a1);
  v19 = v14 + v18;
  if (__OFADD__(v14, v18))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v20 = *(v5 + 20);
  v21 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v5 + 8, v20);
  if (v22)
  {
    v23._countAndFlagsBits = 32;
    v23._object = 0xE100000000000000;
    v21 = ByteBuffer._setStringSlowpath(_:at:)(v23, v20);
  }

  v24 = *(v5 + 20);
  v16 = __CFADD__(v24, v21);
  v25 = v24 + v21;
  if (v16)
  {
    goto LABEL_13;
  }

  *(v5 + 20) = v25;
  if (__OFADD__(v19, v21))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v19 + v21, sub_1B0D4B6B8(a3, a4, a5 & 0xFFFFFFFFFFFFFFLL)))
  {
LABEL_15:
    __break(1u);
  }
}

void sub_1B0D6A530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v177 = a6;
  v178 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  v175 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v163 = &v154 - v12;
  v162 = type metadata accessor for ParameterValue(0);
  v13 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v158 = &v154 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  MEMORY[0x1EEE9AC00](v174);
  v187 = (&v154 - v15);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6570, &unk_1B0EF3540);
  MEMORY[0x1EEE9AC00](v173);
  v172 = (&v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v171 = (&v154 - v18);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F50, &qword_1B0EEEB00);
  MEMORY[0x1EEE9AC00](v170);
  v169 = &v154 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v168 = (&v154 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v186 = (&v154 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v167 = (&v154 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v166 = &v154 - v27;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E72E8, &qword_1B0EF3550);
  MEMORY[0x1EEE9AC00](v165);
  v164 = (&v154 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v29);
  v185 = (&v154 - v30);
  v31 = *(v7 + 20);
  v32 = 0;
  v33 = sub_1B0CFC1B0(0x20454D414E4552uLL, 0xE700000000000000, v7 + 8, v31);
  if (v34)
  {
    v35._countAndFlagsBits = 0x20454D414E4552;
    v35._object = 0xE700000000000000;
    v33 = ByteBuffer._setStringSlowpath(_:at:)(v35, v31);
  }

  v36 = v33;
  v37 = *(v7 + 20);
  v38 = __CFADD__(v37, v33);
  v39 = v37 + v33;
  if (v38)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v40 = v7;
  *(v7 + 20) = v39;
  sub_1B0DD59A4(a1);
  v42 = v36 + v41;
  if (__OFADD__(v36, v41))
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v43 = *(v7 + 20);
  v44 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v7 + 8, v43);
  if (v45)
  {
    v46._countAndFlagsBits = 32;
    v46._object = 0xE100000000000000;
    v44 = ByteBuffer._setStringSlowpath(_:at:)(v46, v43);
  }

  v47 = *(v7 + 20);
  v38 = __CFADD__(v47, v44);
  v48 = v47 + v44;
  if (v38)
  {
    goto LABEL_65;
  }

  *(v7 + 20) = v48;
  v49 = __OFADD__(v42, v44);
  v50 = v42 + v44;
  if (v49)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  sub_1B0DD59A4(a3);
  v49 = __OFADD__(v50, v51);
  v52 = v50 + v51;
  if (v49)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v53 = *(v178 + 16);
  v176 = v53;
  if (v53)
  {
    v54 = *(v7 + 20);
    v55 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v7 + 8, v54);
    if (v56)
    {
      v57._countAndFlagsBits = 32;
      v57._object = 0xE100000000000000;
      v55 = ByteBuffer._setStringSlowpath(_:at:)(v57, v54);
    }

    v58 = *(v7 + 20);
    v59 = (v58 + v55);
    if (!__CFADD__(v58, v55))
    {
      v155 = v55;
      *(v7 + 20) = v59;
      v60 = sub_1B0CFC1B0(0, 0xE000000000000000, v7 + 8, v59);
      if (v61)
      {
        v62._countAndFlagsBits = 0;
        v62._object = 0xE000000000000000;
        v60 = ByteBuffer._setStringSlowpath(_:at:)(v62, v59);
      }

      v63 = v60;
      v64 = *(v7 + 20);
      v65 = (v64 + v60);
      if (!__CFADD__(v64, v60))
      {
        *(v7 + 20) = v65;
        v66 = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v7 + 8, v65);
        if (v67)
        {
          v68._countAndFlagsBits = 40;
          v68._object = 0xE100000000000000;
          v66 = ByteBuffer._setStringSlowpath(_:at:)(v68, v65);
        }

        v69 = *(v7 + 20);
        v38 = __CFADD__(v69, v66);
        v70 = v69 + v66;
        if (!v38)
        {
          *(v7 + 20) = v70;
          if (!__OFADD__(v63, v66))
          {
            v156 = v63 + v66;
            v154 = v52;
            v160 = (v13 + 48);
            v159 = v176 - 1;
            v157 = a5;
            swift_retain_n();
            v71 = v177;
            swift_retain_n();
            swift_retain_n();
            v72 = 0;
            v73 = 0;
            v74 = (v71 + 40);
            v75 = &unk_1B0EF3530;
            v161 = v40;
            do
            {
              if (v73 >= *(v177 + 16))
              {
                __break(1u);
LABEL_56:
                __break(1u);
LABEL_57:
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
                goto LABEL_63;
              }

              v76 = v173;
              v77 = *(v173 + 48);
              v184 = v32;
              v180 = v74;
              v78 = *(v74 - 1);
              v79 = *v74;
              v182 = v72;
              v183 = v79;
              v80 = v171;
              *v171 = v78;
              v80[1] = v79;
              sub_1B03B5C80(v178 + ((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v73, v80 + v77, &qword_1EB6E6440, v75);
              v81 = v80;
              v82 = v172;
              sub_1B03C60A4(v81, v172, &qword_1EB6E6570, &unk_1B0EF3540);
              v83 = *(v76 + 48);
              v84 = v170;
              v85 = *(v170 + 48);
              v86 = v82[1];
              v87 = v167;
              *v167 = *v82;
              v87[1] = v86;
              sub_1B03C60A4(v82 + v83, v87 + v85, &qword_1EB6E6440, v75);
              v88 = v87;
              v89 = v166;
              sub_1B03C60A4(v88, v166, &qword_1EB6E6F50, &qword_1B0EEEB00);
              v90 = v165;
              v91 = *(v165 + 48);
              v92 = v185;
              v179 = v73;
              *v185 = v73;
              sub_1B03C60A4(v89, v92 + v91, &qword_1EB6E6F50, &qword_1B0EEEB00);
              v93 = v164;
              sub_1B03B5C80(v92, v164, &qword_1EB6E72E8, &qword_1B0EF3550);
              v181 = *v93;
              v94 = (v93 + *(v90 + 48));
              v95 = *(v84 + 48);
              v96 = *v94;
              v97 = v94[1];
              v98 = v168;
              sub_1B03C60A4(v94 + v95, v168 + v95, &qword_1EB6E6440, v75);
              v99 = *(v84 + 48);
              v100 = v186;
              *v186 = v96;
              v100[1] = v97;
              sub_1B03C60A4(v98 + v95, v100 + v99, &qword_1EB6E6440, v75);
              sub_1B03B5C80(v100, v98, &qword_1EB6E6F50, &qword_1B0EEEB00);
              v101 = v161;
              v102 = *(v84 + 48);
              v103 = v169;
              sub_1B03B5C80(v100, v169, &qword_1EB6E6F50, &qword_1B0EEEB00);
              v104 = *(v84 + 48);
              v105 = *v98;
              v106 = v98[1];
              v107 = v187;
              *v187 = *v98;
              v107[1] = v106;
              v108 = *(v174 + 52);
              sub_1B03C60A4(v103 + v104, v107 + v108, &qword_1EB6E6440, v75);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

              v109 = v98 + v102;
              v110 = v75;
              sub_1B0398EFC(v109, &qword_1EB6E6440, v75);
              v111 = *(v101 + 20);
              v32 = v184;
              v112 = sub_1B0CFC1B0(v105, v106, v101 + 8, v111);
              if (v113)
              {
                v114._countAndFlagsBits = v105;
                v114._object = v106;
                v112 = ByteBuffer._setStringSlowpath(_:at:)(v114, v111);
              }

              v115 = v112;
              v116 = *(v101 + 20);
              v117 = (v116 + v112);
              if (__CFADD__(v116, v112))
              {
                goto LABEL_56;
              }

              v75 = v110;
              *(v101 + 20) = v117;
              v118 = v187 + v108;
              v119 = v163;
              sub_1B03B5C80(v118, v163, &qword_1EB6E6440, v110);
              if ((*v160)(v119, 1, v162) == 1)
              {
                sub_1B0398EFC(v119, &qword_1EB6E6440, v110);
                v120 = 0;
                v121 = v182;
              }

              else
              {
                v122 = v119;
                v123 = v158;
                sub_1B0D06280(v122, v158);
                v124 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v101 + 8, v117);
                v121 = v182;
                if (v125)
                {
                  v126._countAndFlagsBits = 32;
                  v126._object = 0xE100000000000000;
                  v124 = ByteBuffer._setStringSlowpath(_:at:)(v126, v117);
                }

                v127 = v124;
                v128 = *(v101 + 20);
                v38 = __CFADD__(v128, v124);
                v129 = v128 + v124;
                if (v38)
                {
                  goto LABEL_60;
                }

                *(v101 + 20) = v129;
                v130 = sub_1B0DF818C(v123);
                sub_1B0D733FC(v123, type metadata accessor for ParameterValue);
                v120 = v127 + v130;
                if (__OFADD__(v127, v130))
                {
                  goto LABEL_61;
                }
              }

              v131 = v115 + v120;
              if (__OFADD__(v115, v120))
              {
                goto LABEL_57;
              }

              sub_1B0398EFC(v187, &qword_1EB6E6F58, &unk_1B0EF5150);
              v132 = v121 + v131;
              if (__OFADD__(v121, v131))
              {
                goto LABEL_58;
              }

              if (v181 >= v159)
              {
                sub_1B0398EFC(v186, &qword_1EB6E6F50, &qword_1B0EEEB00);
                v137 = 0;
              }

              else
              {
                v133 = *(v101 + 20);
                v134 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v101 + 8, v133);
                if (v135)
                {
                  v136._countAndFlagsBits = 32;
                  v136._object = 0xE100000000000000;
                  v134 = ByteBuffer._setStringSlowpath(_:at:)(v136, v133);
                }

                v137 = v134;
                sub_1B0398EFC(v186, &qword_1EB6E6F50, &qword_1B0EEEB00);
                v138 = *(v101 + 20);
                v38 = __CFADD__(v138, v137);
                v139 = v138 + v137;
                if (v38)
                {
                  goto LABEL_62;
                }

                *(v101 + 20) = v139;
              }

              v49 = __OFADD__(v132, v137);
              v72 = v132 + v137;
              if (v49)
              {
                goto LABEL_59;
              }

              v73 = v179 + 1;
              sub_1B0398EFC(v185, &qword_1EB6E72E8, &qword_1B0EF3550);
              v74 = v180 + 2;
            }

            while (v176 != v73);

            v140 = v156 + v72;
            if (__OFADD__(v156, v72))
            {
              goto LABEL_73;
            }

            v141 = *(v101 + 20);
            v142 = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v101 + 8, v141);
            if (v143)
            {
              v144._countAndFlagsBits = 41;
              v144._object = 0xE100000000000000;
              v142 = ByteBuffer._setStringSlowpath(_:at:)(v144, v141);
            }

            v145 = *(v101 + 20);
            v146 = (v145 + v142);
            if (!__CFADD__(v145, v142))
            {
              *(v101 + 20) = v146;
              v49 = __OFADD__(v140, v142);
              v147 = v140 + v142;
              if (v49)
              {
                goto LABEL_75;
              }

              v148 = sub_1B0CFC1B0(0, 0xE000000000000000, v101 + 8, v146);
              if (v149)
              {
                v150._countAndFlagsBits = 0;
                v150._object = 0xE000000000000000;
                v148 = ByteBuffer._setStringSlowpath(_:at:)(v150, v146);
              }

              v151 = *(v101 + 20);
              v38 = __CFADD__(v151, v148);
              v152 = v151 + v148;
              if (!v38)
              {
                *(v101 + 20) = v152;
                v153 = v147 + v148;
                if (__OFADD__(v147, v148))
                {
                  goto LABEL_77;
                }

                v49 = __OFADD__(v155, v153);
                v53 = v155 + v153;
                if (!v49)
                {
                  v52 = v154;
                  goto LABEL_53;
                }

                goto LABEL_78;
              }

LABEL_76:
              __break(1u);
LABEL_77:
              __break(1u);
LABEL_78:
              __break(1u);
              return;
            }

LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

LABEL_53:
  if (__OFADD__(v52, v53))
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }
}

void sub_1B0D6B0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 20);
  v7 = sub_1B0CFC1B0(0x20535554415453uLL, 0xE700000000000000, v3 + 8, v6);
  if (v8)
  {
    v9._countAndFlagsBits = 0x20535554415453;
    v9._object = 0xE700000000000000;
    v7 = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
  }

  v10 = v7;
  v11 = *(v3 + 20);
  v12 = __CFADD__(v11, v7);
  v13 = v11 + v7;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  *(v3 + 20) = v13;
  sub_1B0DD59A4(a1);
  v15 = v10 + v14;
  if (__OFADD__(v10, v14))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v16 = *(v3 + 20);
  v17 = sub_1B0CFC1B0(0x2820uLL, 0xE200000000000000, v3 + 8, v16);
  if (v18)
  {
    v19._countAndFlagsBits = 10272;
    v19._object = 0xE200000000000000;
    v17 = ByteBuffer._setStringSlowpath(_:at:)(v19, v16);
  }

  v20 = *(v3 + 20);
  v12 = __CFADD__(v20, v17);
  v21 = v20 + v17;
  if (v12)
  {
    goto LABEL_17;
  }

  *(v3 + 20) = v21;
  v22 = v15 + v17;
  if (__OFADD__(v15, v17))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v23 = sub_1B0DCF8B0(a3);
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v26 = *(v3 + 20);
  v27 = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v3 + 8, v26);
  if (v28)
  {
    v29._countAndFlagsBits = 41;
    v29._object = 0xE100000000000000;
    v27 = ByteBuffer._setStringSlowpath(_:at:)(v29, v26);
  }

  v30 = *(v3 + 20);
  v12 = __CFADD__(v30, v27);
  v31 = v30 + v27;
  if (v12)
  {
    goto LABEL_20;
  }

  *(v3 + 20) = v31;
  if (__OFADD__(v25, v27))
  {
LABEL_21:
    __break(1u);
  }
}

void sub_1B0D6B21C(unint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *(v6 + 20);
  v12 = sub_1B0CFC1B0(0x49544E4548545541uLL, 0xED00002045544143, v6 + 8, v11);
  v50 = a5;
  if (v13)
  {
    v14._countAndFlagsBits = 0x49544E4548545541;
    v14._object = 0xED00002045544143;
    v12 = ByteBuffer._setStringSlowpath(_:at:)(v14, v11);
  }

  v15 = v12;
  v16 = *(v6 + 20);
  v17 = (v16 + v12);
  if (__CFADD__(v16, v12))
  {
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  *(v6 + 20) = v17;
  v18 = sub_1B0CFC1B0(a1, a2, v6 + 8, v17);
  if (v19)
  {
    v20._countAndFlagsBits = a1;
    v20._object = a2;
    v18 = ByteBuffer._setStringSlowpath(_:at:)(v20, v17);
  }

  v21 = *(v6 + 20);
  v22 = (v21 + v18);
  if (__CFADD__(v21, v18))
  {
    goto LABEL_37;
  }

  *(v6 + 20) = v22;
  v23 = v15 + v18;
  if (__OFADD__(v15, v18))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (!a3)
  {
LABEL_19:
    v36 = 0;
    goto LABEL_34;
  }

  v24 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v6 + 8, v22);
  if (v25)
  {
    v26._countAndFlagsBits = 32;
    v26._object = 0xE100000000000000;
    v24 = ByteBuffer._setStringSlowpath(_:at:)(v26, v22);
  }

  v27 = v24;
  v28 = *(v6 + 20);
  v29 = (v28 + v24);
  if (__CFADD__(v28, v24))
  {
    goto LABEL_40;
  }

  *(v6 + 20) = v29;
  if (*v6 != 1)
  {
    v37 = HIDWORD(a4);
    if (HIDWORD(a4) == a4)
    {
      v43 = sub_1B0CFC1B0(0x3DuLL, 0xE100000000000000, v6 + 8, v29);
      if (v44)
      {
        v45._countAndFlagsBits = 61;
        v45._object = 0xE100000000000000;
        v43 = ByteBuffer._setStringSlowpath(_:at:)(v45, v29);
      }

      v46 = v43;
      v47 = *(v6 + 20);
      v34 = __CFADD__(v47, v43);
      v48 = v47 + v43;
      if (v34)
      {
        goto LABEL_47;
      }

      *(v6 + 20) = v48;
    }

    else
    {
      v38 = v37 - a4;
      if (v37 < a4)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v39 = (WORD2(v50) << 8) | BYTE6(v50);
      if ((v50 - v39) < v37)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v53[0] = a3;
      v53[1] = a4;
      v54 = v50;
      v55 = WORD2(v50);
      v56 = BYTE6(v50);
      v57 = a4;
      v58 = HIDWORD(a4);
      swift_beginAccess();
      if (v38 < -4)
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return;
      }

      v40 = 4 * ((v38 + 2) / 3);
      v41 = *(a3 + 24);

      if (v38 < 1)
      {
        v42 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v42 = sub_1B0E45278();
        *(v42 + 16) = v40;
      }

      v52 = 0;
      sub_1B0D5D95C(&unk_1F272F790, 256, &unk_1F272F8B0, 256, v41 + v39 + a4, v38, v42 + 32, v40, 0, &v52);
      if (v40 < v52)
      {
        goto LABEL_46;
      }

      *(v42 + 16) = v52;
      sub_1B04394F4(v53);
      sub_1B0D791F8(v42);
      v46 = v49;
    }

    v36 = v27 + v46;
    if (__OFADD__(v27, v46))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    goto LABEL_34;
  }

  v30 = sub_1B0CFC1B0(0x8588E2uLL, 0xA300000000000000, v6 + 8, v29);
  if (v31)
  {
    v32._countAndFlagsBits = 8751330;
    v32._object = 0xA300000000000000;
    v30 = ByteBuffer._setStringSlowpath(_:at:)(v32, v29);
  }

  v33 = *(v6 + 20);
  v34 = __CFADD__(v33, v30);
  v35 = v33 + v30;
  if (v34)
  {
    goto LABEL_41;
  }

  *(v6 + 20) = v35;
  v36 = v27 + v30;
  if (__OFADD__(v27, v30))
  {
    __break(1u);
    goto LABEL_19;
  }

LABEL_34:
  if (__OFADD__(v23, v36))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }
}

void sub_1B0D6B584(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v9 = *(v4 + 20);
  v10 = sub_1B0CFC1B0(0x204E49474F4CuLL, 0xE600000000000000, v4 + 8, v9);
  if (v11)
  {
    v12._countAndFlagsBits = 0x204E49474F4CLL;
    v12._object = 0xE600000000000000;
    v10 = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
  }

  v13 = v10;
  v14 = *(v4 + 20);
  v15 = __CFADD__(v14, v10);
  v16 = v14 + v10;
  if (v15)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v4 + 20) = v16;
  sub_1B0DD55E0(a1, a2);
  v18 = v13 + v17;
  if (__OFADD__(v13, v17))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = *(v4 + 20);
  v20 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v4 + 8, v19);
  if (v21)
  {
    v22._countAndFlagsBits = 32;
    v22._object = 0xE100000000000000;
    v20 = ByteBuffer._setStringSlowpath(_:at:)(v22, v19);
  }

  v23 = *(v4 + 20);
  v15 = __CFADD__(v23, v20);
  v24 = v23 + v20;
  if (v15)
  {
    goto LABEL_13;
  }

  *(v4 + 20) = v24;
  v25 = v18 + v20;
  if (__OFADD__(v18, v20))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1B0DD55E0(a3, a4);
  if (__OFADD__(v25, v26))
  {
LABEL_15:
    __break(1u);
  }
}

uint64_t sub_1B0D6B6BC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x20454C42414E45uLL, 0xE700000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 0x20454C42414E45;
    v7._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    goto LABEL_20;
  }

  *(v1 + 20) = v10;
  v26 = a1;
  v11 = *(a1 + 16);
  if (v11)
  {
    result = sub_1B0CFC1B0(0, 0xE000000000000000, v1 + 8, v10);
    if (v12)
    {
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
    }

    v14 = result;
    v15 = *(v2 + 20);
    v16 = __CFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      goto LABEL_23;
    }

    *(v2 + 20) = v17;
  }

  else
  {
    v14 = 0;
  }

  MEMORY[0x1EEE9AC00](result);
  v25[2] = sub_1B0D5C820;
  v25[3] = 0;
  v25[4] = v2;
  v25[5] = &v26;
  v25[6] = 32;
  v25[7] = 0xE100000000000000;
  result = sub_1B0DE5DBC(0, sub_1B0D5CCB4, v25, a1);
  v18 = v14 + result;
  if (__OFADD__(v14, result))
  {
    goto LABEL_21;
  }

  if (!v11)
  {
    v24 = v14 + result;
    goto LABEL_16;
  }

  v19 = *(v2 + 20);
  result = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v19);
  if (v20)
  {
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
  }

  v22 = *(v2 + 20);
  v16 = __CFADD__(v22, result);
  v23 = v22 + result;
  if (v16)
  {
    goto LABEL_24;
  }

  *(v2 + 20) = v23;
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_16:
  result = v8 + v24;
  if (__OFADD__(v8, v24))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0D6B89C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t (*a6)(uint64_t))
{
  v12 = *(v6 + 20);
  result = sub_1B0CFC1B0(a4, a5, v6 + 8, v12);
  if (v14)
  {
    v15._countAndFlagsBits = a4;
    v15._object = a5;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v12);
  }

  v16 = result;
  v17 = *(v6 + 20);
  v18 = __CFADD__(v17, result);
  v19 = v17 + result;
  if (v18)
  {
    __break(1u);
    goto LABEL_13;
  }

  *(v6 + 20) = v19;
  result = a6(a1);
  v20 = v16 + result;
  if (__OFADD__(v16, result))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v21 = *(v6 + 20);
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v6 + 8, v21);
  if (v22)
  {
    v23._countAndFlagsBits = 32;
    v23._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v23, v21);
  }

  v24 = *(v6 + 20);
  v18 = __CFADD__(v24, result);
  v25 = v24 + result;
  if (v18)
  {
    goto LABEL_14;
  }

  *(v6 + 20) = v25;
  v26 = v20 + result;
  if (__OFADD__(v20, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = sub_1B0D86D60(a2);
  v27 = __OFADD__(v26, result);
  v28 = v26 + result;
  if (v27)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v29 = sub_1B0D89328(a3);
  v27 = __OFADD__(v28, v29);
  result = v28 + v29;
  if (v27)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0D6B9E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = *(v4 + 20);
  result = sub_1B0CFC1B0(0x2045524F5453uLL, 0xE600000000000000, v4 + 8, v10);
  if (v12)
  {
    v13._countAndFlagsBits = 0x2045524F5453;
    v13._object = 0xE600000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
  }

  v14 = result;
  v15 = *(v4 + 20);
  v16 = __CFADD__(v15, result);
  v17 = v15 + result;
  if (v16)
  {
    goto LABEL_37;
  }

  *(v4 + 20) = v17;
  result = sub_1B0E1F248(a1);
  v18 = v14 + result;
  if (__OFADD__(v14, result))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v19 = *(a2 + 16);
  if (v19)
  {
    v20 = *(v4 + 20);
    result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v4 + 8, v20);
    if (v21)
    {
      v22._countAndFlagsBits = 32;
      v22._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v22, v20);
    }

    v23 = result;
    v24 = *(v4 + 20);
    v25 = (v24 + result);
    if (__CFADD__(v24, result))
    {
      goto LABEL_42;
    }

    *(v4 + 20) = v25;
    v60 = a2;
    result = sub_1B0CFC1B0(0, 0xE000000000000000, v4 + 8, v25);
    if (v26)
    {
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v27, v25);
    }

    v28 = result;
    v29 = *(v4 + 20);
    v30 = (v29 + result);
    if (__CFADD__(v29, result))
    {
      goto LABEL_43;
    }

    *(v4 + 20) = v30;
    result = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v4 + 8, v30);
    if (v31)
    {
      v32._countAndFlagsBits = 40;
      v32._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v32, v30);
    }

    v33 = *(v4 + 20);
    v16 = __CFADD__(v33, result);
    v34 = v33 + result;
    if (v16)
    {
      goto LABEL_44;
    }

    *(v4 + 20) = v34;
    v35 = v28 + result;
    if (__OFADD__(v28, result))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    MEMORY[0x1EEE9AC00](result);
    v59[2] = sub_1B0D6D9B8;
    v59[3] = 0;
    v59[4] = v5;
    v59[5] = &v60;
    v59[6] = 32;
    v59[7] = 0xE100000000000000;
    result = sub_1B0DE6600(0, sub_1B0D73204, v59, a2);
    v36 = v35 + result;
    if (__OFADD__(v35, result))
    {
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v37 = *(v5 + 20);
    result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v5 + 8, v37);
    if (v38)
    {
      v39._countAndFlagsBits = 41;
      v39._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v39, v37);
    }

    v40 = *(v5 + 20);
    v41 = (v40 + result);
    if (__CFADD__(v40, result))
    {
      goto LABEL_47;
    }

    *(v5 + 20) = v41;
    v42 = __OFADD__(v36, result);
    v43 = v36 + result;
    if (v42)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    result = sub_1B0CFC1B0(0, 0xE000000000000000, v5 + 8, v41);
    if (v44)
    {
      v45._countAndFlagsBits = 0;
      v45._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v45, v41);
    }

    v46 = *(v5 + 20);
    v16 = __CFADD__(v46, result);
    v47 = v46 + result;
    if (v16)
    {
      goto LABEL_49;
    }

    *(v5 + 20) = v47;
    v48 = v43 + result;
    if (__OFADD__(v43, result))
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v42 = __OFADD__(v23, v48);
    v19 = v23 + v48;
    if (v42)
    {
LABEL_51:
      __break(1u);
      return result;
    }
  }

  v49 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    goto LABEL_39;
  }

  v50 = *(v5 + 20);
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v5 + 8, v50);
  if (v51)
  {
    v52._countAndFlagsBits = 32;
    v52._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v52, v50);
  }

  v53 = *(v5 + 20);
  v16 = __CFADD__(v53, result);
  v54 = v53 + result;
  if (v16)
  {
    goto LABEL_40;
  }

  *(v5 + 20) = v54;
  v55 = v49 + result;
  if (__OFADD__(v49, result))
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v56 = a3 & 0x1FF;
  if ((a3 & 0x8000000000000000) == 0)
  {
    v57 = sub_1B0E2E5A4(v56, a4);
    v42 = __OFADD__(v55, v57);
    result = v55 + v57;
    if (!v42)
    {
      return result;
    }

    goto LABEL_36;
  }

  v58 = sub_1B0E2E6FC(v56, a4);
  v42 = __OFADD__(v55, v58);
  result = v55 + v58;
  if (v42)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  return result;
}

uint64_t sub_1B0D6BD3C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = *(v4 + 20);
  result = sub_1B0CFC1B0(0x524F545320444955uLL, 0xEA00000000002045, v4 + 8, v10);
  if (v12)
  {
    v13._countAndFlagsBits = 0x524F545320444955;
    v13._object = 0xEA00000000002045;
    result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
  }

  v14 = result;
  v15 = *(v4 + 20);
  v16 = __CFADD__(v15, result);
  v17 = v15 + result;
  if (v16)
  {
    goto LABEL_33;
  }

  *(v4 + 20) = v17;
  result = sub_1B0E1F458(a1);
  v18 = __OFADD__(v14, result);
  v19 = v14 + result;
  if (v18)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v20 = *(a2 + 16);
  if (v20)
  {
    v54 = a2;
    v21 = *(v4 + 20);
    result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v4 + 8, v21);
    if (v22)
    {
      v23._countAndFlagsBits = 32;
      v23._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v23, v21);
    }

    v24 = result;
    v25 = *(v4 + 20);
    v26 = (v25 + result);
    if (__CFADD__(v25, result))
    {
      goto LABEL_38;
    }

    *(v4 + 20) = v26;
    result = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v4 + 8, v26);
    if (v27)
    {
      v28._countAndFlagsBits = 40;
      v28._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v28, v26);
    }

    v29 = *(v4 + 20);
    v16 = __CFADD__(v29, result);
    v30 = v29 + result;
    if (v16)
    {
      goto LABEL_39;
    }

    *(v4 + 20) = v30;
    v31 = v24 + result;
    if (__OFADD__(v24, result))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    MEMORY[0x1EEE9AC00](result);
    v53[2] = sub_1B0E2F15C;
    v53[3] = 0;
    v53[4] = v5;
    v53[5] = &v54;
    v53[6] = 32;
    v53[7] = 0xE100000000000000;
    result = sub_1B0DE6600(0, sub_1B0D7345C, v53, a2);
    v32 = v31 + result;
    if (__OFADD__(v31, result))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v33 = *(v5 + 20);
    result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v5 + 8, v33);
    if (v34)
    {
      v35._countAndFlagsBits = 41;
      v35._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v35, v33);
    }

    v36 = *(v5 + 20);
    v37 = (v36 + result);
    if (__CFADD__(v36, result))
    {
      goto LABEL_42;
    }

    *(v5 + 20) = v37;
    v18 = __OFADD__(v32, result);
    v38 = v32 + result;
    if (v18)
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    result = sub_1B0CFC1B0(0, 0xE000000000000000, v5 + 8, v37);
    if (v39)
    {
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v40, v37);
    }

    v41 = *(v5 + 20);
    v16 = __CFADD__(v41, result);
    v42 = v41 + result;
    if (v16)
    {
      goto LABEL_44;
    }

    *(v5 + 20) = v42;
    v20 = v38 + result;
    if (__OFADD__(v38, result))
    {
LABEL_45:
      __break(1u);
      return result;
    }
  }

  v43 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    goto LABEL_35;
  }

  v44 = *(v5 + 20);
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v5 + 8, v44);
  if (v45)
  {
    v46._countAndFlagsBits = 32;
    v46._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v46, v44);
  }

  v47 = *(v5 + 20);
  v16 = __CFADD__(v47, result);
  v48 = v47 + result;
  if (v16)
  {
    goto LABEL_36;
  }

  *(v5 + 20) = v48;
  v49 = v43 + result;
  if (__OFADD__(v43, result))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v50 = a3 & 0x1FF;
  if ((a3 & 0x8000000000000000) == 0)
  {
    v51 = sub_1B0E2E5A4(v50, a4);
    v18 = __OFADD__(v49, v51);
    result = v49 + v51;
    if (!v18)
    {
      return result;
    }

    goto LABEL_32;
  }

  v52 = sub_1B0E2E6FC(v50, a4);
  v18 = __OFADD__(v49, v52);
  result = v49 + v52;
  if (v18)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  return result;
}

void sub_1B0D6C050(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v4 + 20);
  v11 = sub_1B0CFC1B0(0x484352414553uLL, 0xE600000000000000, v4 + 8, v10);
  if (v12)
  {
    v13._countAndFlagsBits = 0x484352414553;
    v13._object = 0xE600000000000000;
    v11 = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
  }

  v14 = v11;
  v15 = *(v4 + 20);
  v16 = __CFADD__(v15, v11);
  v17 = v15 + v11;
  if (v16)
  {
    __break(1u);
    goto LABEL_19;
  }

  *(v4 + 20) = v17;
  v18 = sub_1B0E21624(a4);
  v19 = v14 + v18;
  if (__OFADD__(v14, v18))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v20 = *(v4 + 20);
  v21 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v4 + 8, v20);
  if (v22)
  {
    v23._countAndFlagsBits = 32;
    v23._object = 0xE100000000000000;
    v21 = ByteBuffer._setStringSlowpath(_:at:)(v23, v20);
  }

  v24 = *(v4 + 20);
  v25 = (v24 + v21);
  if (__CFADD__(v24, v21))
  {
    goto LABEL_20;
  }

  *(v4 + 20) = v25;
  v26 = __OFADD__(v19, v21);
  v27 = v19 + v21;
  if (v26)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_1B0E1BA54(a1);
  v28 = 0;
  if ((v29 & 1) != 0 && a3)
  {
    MEMORY[0x1B2726E80](a2, a3);
    MEMORY[0x1B2726E80](32, 0xE100000000000000);
    v30 = sub_1B0CFC1B0(0x2054455352414843uLL, 0xE800000000000000, v5 + 8, v25);
    if (v31)
    {
      v32._countAndFlagsBits = 0x2054455352414843;
      v32._object = 0xE800000000000000;
      v30 = ByteBuffer._setStringSlowpath(_:at:)(v32, v25);
    }

    v28 = v30;

    v33 = *(v5 + 20);
    v16 = __CFADD__(v33, v28);
    v34 = v33 + v28;
    if (v16)
    {
      goto LABEL_24;
    }

    *(v5 + 20) = v34;
  }

  if (__OFADD__(v27, v28))
  {
    goto LABEL_22;
  }

  sub_1B0E1C84C(a1);
  if (__OFADD__(v27 + v28, v35))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_1B0D6C228(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t (*a6)(uint64_t))
{
  v12 = *(v6 + 20);
  result = sub_1B0CFC1B0(a4, a5, v6 + 8, v12);
  if (v14)
  {
    v15._countAndFlagsBits = a4;
    v15._object = a5;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v12);
  }

  v16 = result;
  v17 = *(v6 + 20);
  v18 = __CFADD__(v17, result);
  v19 = v17 + result;
  if (v18)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v6 + 20) = v19;
  result = a6(a1);
  v20 = v16 + result;
  if (__OFADD__(v16, result))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v21 = *(v6 + 20);
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v6 + 8, v21);
  if (v22)
  {
    v23._countAndFlagsBits = 32;
    v23._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v23, v21);
  }

  v24 = *(v6 + 20);
  v18 = __CFADD__(v24, result);
  v25 = v24 + result;
  if (v18)
  {
    goto LABEL_13;
  }

  *(v6 + 20) = v25;
  v26 = v20 + result;
  if (__OFADD__(v20, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1B0DD59A4(a2);
  v28 = __OFADD__(v26, v27);
  result = v26 + v27;
  if (v28)
  {
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0D6C354(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v4 + 20);
  result = sub_1B0CFC1B0(0x41544F5551544553uLL, 0xE900000000000020, v4 + 8, v10);
  if (v12)
  {
    v13._countAndFlagsBits = 0x41544F5551544553;
    v13._object = 0xE900000000000020;
    result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
  }

  v14 = result;
  v15 = *(v4 + 20);
  v16 = __CFADD__(v15, result);
  v17 = v15 + result;
  if (v16)
  {
    goto LABEL_33;
  }

  *(v4 + 20) = v17;
  result = sub_1B0D4B6B8(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL);
  v18 = v14 + result;
  if (__OFADD__(v14, result))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v19 = *(v4 + 20);
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v4 + 8, v19);
  if (v20)
  {
    v21._countAndFlagsBits = 32;
    v21._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
  }

  v22 = *(v4 + 20);
  v23 = (v22 + result);
  if (__CFADD__(v22, result))
  {
    goto LABEL_35;
  }

  *(v4 + 20) = v23;
  v24 = __OFADD__(v18, result);
  v25 = v18 + result;
  if (v24)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v49 = a4;
  v26 = *(a4 + 16);
  if (v26)
  {
    result = sub_1B0CFC1B0(0, 0xE000000000000000, v4 + 8, v23);
    if (v27)
    {
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v28, v23);
    }

    v29 = result;
    v30 = *(v4 + 20);
    LODWORD(v23) = v30 + result;
    if (__CFADD__(v30, result))
    {
      goto LABEL_43;
    }

    *(v4 + 20) = v23;
  }

  else
  {
    v29 = 0;
  }

  result = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v4 + 8, v23);
  if (v31)
  {
    v32._countAndFlagsBits = 40;
    v32._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v32, v23);
  }

  v33 = *(v4 + 20);
  v16 = __CFADD__(v33, result);
  v34 = v33 + result;
  if (v16)
  {
    goto LABEL_37;
  }

  *(v4 + 20) = v34;
  v35 = v29 + result;
  if (__OFADD__(v29, result))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  MEMORY[0x1EEE9AC00](result);
  v48[2] = sub_1B0D6DBF8;
  v48[3] = 0;
  v48[4] = v5;
  v48[5] = &v49;
  v48[6] = 32;
  v48[7] = 0xE100000000000000;
  result = sub_1B0DE6650(0, sub_1B0D73298, v48, a4);
  v36 = v35 + result;
  if (__OFADD__(v35, result))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v37 = *(v5 + 20);
  result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v5 + 8, v37);
  if (v38)
  {
    v39._countAndFlagsBits = 41;
    v39._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v39, v37);
  }

  v40 = *(v5 + 20);
  v41 = (v40 + result);
  if (__CFADD__(v40, result))
  {
    goto LABEL_40;
  }

  *(v5 + 20) = v41;
  v24 = __OFADD__(v36, result);
  v42 = v36 + result;
  if (v24)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (!v26)
  {
    v47 = v42;
    goto LABEL_29;
  }

  result = sub_1B0CFC1B0(0, 0xE000000000000000, v5 + 8, v41);
  if (v43)
  {
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v44, v41);
  }

  v45 = *(v5 + 20);
  v16 = __CFADD__(v45, result);
  v46 = v45 + result;
  if (v16)
  {
    goto LABEL_44;
  }

  *(v5 + 20) = v46;
  v47 = v42 + result;
  if (__OFADD__(v42, result))
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_29:
  result = v25 + v47;
  if (__OFADD__(v25, v47))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  return result;
}

void sub_1B0D6C65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(v4 + 20);
  v10 = sub_1B0CFC1B0(0x444154454D544547uLL, 0xEB00000000415441, v4 + 8, v9);
  if (v11)
  {
    v12._countAndFlagsBits = 0x444154454D544547;
    v12._object = 0xEB00000000415441;
    v10 = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
  }

  v13 = v10;
  v14 = *(v4 + 20);
  v15 = (v14 + v10);
  if (__CFADD__(v14, v10))
  {
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *(v4 + 20) = v15;
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v4 + 8, v15);
    if (v18)
    {
      v19._countAndFlagsBits = 32;
      v19._object = 0xE100000000000000;
      v17 = ByteBuffer._setStringSlowpath(_:at:)(v19, v15);
    }

    v20 = v17;
    v21 = *(v4 + 20);
    v22 = (v21 + v17);
    if (__CFADD__(v21, v17))
    {
      goto LABEL_45;
    }

    *(v4 + 20) = v22;
    v67 = a1;
    v23 = sub_1B0CFC1B0(0, 0xE000000000000000, v4 + 8, v22);
    if (v24)
    {
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      v23 = ByteBuffer._setStringSlowpath(_:at:)(v25, v22);
    }

    v26 = v23;
    v27 = *(v4 + 20);
    v28 = (v27 + v23);
    if (__CFADD__(v27, v23))
    {
      goto LABEL_46;
    }

    *(v4 + 20) = v28;
    v29 = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v4 + 8, v28);
    if (v30)
    {
      v31._countAndFlagsBits = 40;
      v31._object = 0xE100000000000000;
      v29 = ByteBuffer._setStringSlowpath(_:at:)(v31, v28);
    }

    v32 = *(v4 + 20);
    v33 = __CFADD__(v32, v29);
    v34 = v32 + v29;
    if (v33)
    {
      goto LABEL_47;
    }

    *(v4 + 20) = v34;
    v35 = v26 + v29;
    if (__OFADD__(v26, v29))
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    MEMORY[0x1EEE9AC00](v29);
    v66[2] = sub_1B0DEEDF0;
    v66[3] = 0;
    v66[4] = v5;
    v66[5] = &v67;
    v66[6] = 32;
    v66[7] = 0xE100000000000000;
    v36 = sub_1B0DE671C(0, sub_1B0D732BC, v66, a1);
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v38 = *(v5 + 20);
    v39 = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v5 + 8, v38);
    if (v40)
    {
      v41._countAndFlagsBits = 41;
      v41._object = 0xE100000000000000;
      v39 = ByteBuffer._setStringSlowpath(_:at:)(v41, v38);
    }

    v42 = *(v5 + 20);
    v43 = (v42 + v39);
    if (__CFADD__(v42, v39))
    {
      goto LABEL_50;
    }

    *(v5 + 20) = v43;
    v44 = v37 + v39;
    if (__OFADD__(v37, v39))
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v45 = sub_1B0CFC1B0(0, 0xE000000000000000, v5 + 8, v43);
    if (v46)
    {
      v47._countAndFlagsBits = 0;
      v47._object = 0xE000000000000000;
      v45 = ByteBuffer._setStringSlowpath(_:at:)(v47, v43);
    }

    v48 = *(v5 + 20);
    LODWORD(v15) = v48 + v45;
    if (__CFADD__(v48, v45))
    {
      goto LABEL_52;
    }

    *(v5 + 20) = v15;
    v49 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v50 = __OFADD__(v20, v49);
    v16 = v20 + v49;
    if (v50)
    {
LABEL_54:
      __break(1u);
      return;
    }
  }

  v51 = v13 + v16;
  if (__OFADD__(v13, v16))
  {
    goto LABEL_38;
  }

  v52 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v5 + 8, v15);
  if (v53)
  {
    v54._countAndFlagsBits = 32;
    v54._object = 0xE100000000000000;
    v52 = ByteBuffer._setStringSlowpath(_:at:)(v54, v15);
  }

  v55 = *(v5 + 20);
  v33 = __CFADD__(v55, v52);
  v56 = v55 + v52;
  if (v33)
  {
    goto LABEL_39;
  }

  *(v5 + 20) = v56;
  v57 = v51 + v52;
  if (__OFADD__(v51, v52))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  sub_1B0DD59A4(a2);
  v50 = __OFADD__(v57, v58);
  v59 = v57 + v58;
  if (v50)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v60 = *(v5 + 20);
  v61 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v5 + 8, v60);
  if (v62)
  {
    v63._countAndFlagsBits = 32;
    v63._object = 0xE100000000000000;
    v61 = ByteBuffer._setStringSlowpath(_:at:)(v63, v60);
  }

  v64 = *(v5 + 20);
  v33 = __CFADD__(v64, v61);
  v65 = v64 + v61;
  if (v33)
  {
    goto LABEL_42;
  }

  *(v5 + 20) = v65;
  if (__OFADD__(v59, v61))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (__OFADD__(v59 + v61, sub_1B0D7FBE0(a4)))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }
}

void sub_1B0D6C9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + 20);
  v10 = sub_1B0CFC1B0(0x444154454D544553uLL, 0xEC00000020415441, v5 + 8, v9);
  if (v11)
  {
    v12._countAndFlagsBits = 0x444154454D544553;
    v12._object = 0xEC00000020415441;
    v10 = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
  }

  v13 = v10;
  v14 = *(v5 + 20);
  v15 = __CFADD__(v14, v10);
  v16 = v14 + v10;
  if (v15)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v5 + 20) = v16;
  sub_1B0DD59A4(a1);
  v18 = __OFADD__(v13, v17);
  v19 = v13 + v17;
  if (v18)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v20 = *(v5 + 20);
  v21 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v5 + 8, v20);
  if (v22)
  {
    v23._countAndFlagsBits = 32;
    v23._object = 0xE100000000000000;
    v21 = ByteBuffer._setStringSlowpath(_:at:)(v23, v20);
  }

  v24 = *(v5 + 20);
  v15 = __CFADD__(v24, v21);
  v25 = v24 + v21;
  if (v15)
  {
    goto LABEL_13;
  }

  *(v5 + 20) = v25;
  v26 = v19 + v21;
  if (__OFADD__(v19, v21))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1B0D7FE00(a3, a4, a5);
  if (__OFADD__(v26, v27))
  {
LABEL_15:
    __break(1u);
  }
}

void sub_1B0D6CB40(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = *(v3 + 20);
  v8 = sub_1B0CFC1B0(0x59454B5445534552uLL, 0xE800000000000000, v3 + 8, v7);
  if (v9)
  {
    v10._countAndFlagsBits = 0x59454B5445534552;
    v10._object = 0xE800000000000000;
    v8 = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
  }

  v11 = v8;
  v12 = *(v3 + 20);
  v13 = (v12 + v8);
  if (__CFADD__(v12, v8))
  {
    goto LABEL_27;
  }

  *(v3 + 20) = v13;
  if (!a1)
  {
    v30 = 0;
    goto LABEL_23;
  }

  v14 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v3 + 8, v13);
  if (v15)
  {
    v16._countAndFlagsBits = 32;
    v16._object = 0xE100000000000000;
    v14 = ByteBuffer._setStringSlowpath(_:at:)(v16, v13);
  }

  v17 = v14;
  v18 = *(v3 + 20);
  v19 = __CFADD__(v18, v14);
  v20 = v18 + v14;
  if (v19)
  {
    goto LABEL_29;
  }

  *(v3 + 20) = v20;
  sub_1B0DD59A4(a1);
  v22 = v17 + v21;
  if (__OFADD__(v17, v21))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v42 = a3;
  v23 = a3[2];
  if (v23)
  {
    v24 = *(v3 + 20);
    v21 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v3 + 8, v24);
    if (v25)
    {
      v26._countAndFlagsBits = 32;
      v26._object = 0xE100000000000000;
      v21 = ByteBuffer._setStringSlowpath(_:at:)(v26, v24);
    }

    v27 = v21;
    v28 = *(v4 + 20);
    v19 = __CFADD__(v28, v21);
    v29 = v28 + v21;
    if (v19)
    {
      goto LABEL_33;
    }

    *(v4 + 20) = v29;
  }

  else
  {
    v27 = 0;
  }

  MEMORY[0x1EEE9AC00](v21);
  v41[2] = sub_1B0D5C820;
  v41[3] = 0;
  v41[4] = v4;
  v41[5] = &v42;
  v41[6] = 32;
  v41[7] = 0xE100000000000000;
  v31 = sub_1B0DED0F8(0, sub_1B0D73330, v41, a3);
  v32 = v27 + v31;
  if (__OFADD__(v27, v31))
  {
    goto LABEL_31;
  }

  if (!v23)
  {
    v39 = v27 + v31;
    goto LABEL_22;
  }

  v33 = *(v4 + 20);
  v34 = sub_1B0CFC1B0(0, 0xE000000000000000, v4 + 8, v33);
  if (v35)
  {
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    v34 = ByteBuffer._setStringSlowpath(_:at:)(v36, v33);
  }

  v37 = *(v4 + 20);
  v19 = __CFADD__(v37, v34);
  v38 = v37 + v34;
  if (v19)
  {
    goto LABEL_34;
  }

  *(v4 + 20) = v38;
  v39 = v32 + v34;
  if (__OFADD__(v32, v34))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_22:
  v40 = __OFADD__(v22, v39);
  v30 = v22 + v39;
  if (v40)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return;
  }

LABEL_23:
  if (__OFADD__(v11, v30))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }
}

uint64_t sub_1B0D6CD9C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x55414C52554E4547uLL, 0xEA00000000004854, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 0x55414C52554E4547;
    v7._object = 0xEA00000000004854;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    goto LABEL_20;
  }

  *(v1 + 20) = v10;
  v26 = a1;
  v11 = *(a1 + 16);
  if (v11)
  {
    result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v10);
    if (v12)
    {
      v13._countAndFlagsBits = 32;
      v13._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
    }

    v14 = result;
    v15 = *(v2 + 20);
    v16 = __CFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      goto LABEL_23;
    }

    *(v2 + 20) = v17;
  }

  else
  {
    v14 = 0;
  }

  MEMORY[0x1EEE9AC00](result);
  v25[2] = sub_1B0D6D4FC;
  v25[3] = 0;
  v25[4] = v2;
  v25[5] = &v26;
  v25[6] = 32;
  v25[7] = 0xE100000000000000;
  result = sub_1B0DE676C(0, sub_1B0D73354, v25, a1);
  v18 = v14 + result;
  if (__OFADD__(v14, result))
  {
    goto LABEL_21;
  }

  if (!v11)
  {
    v24 = v14 + result;
    goto LABEL_16;
  }

  v19 = *(v2 + 20);
  result = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v19);
  if (v20)
  {
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
  }

  v22 = *(v2 + 20);
  v16 = __CFADD__(v22, result);
  v23 = v22 + result;
  if (v16)
  {
    goto LABEL_24;
  }

  *(v2 + 20) = v23;
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_16:
  result = v8 + v24;
  if (__OFADD__(v8, v24))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0D6CF84(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x48435445464C5255uLL, 0xE800000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 0x48435445464C5255;
    v7._object = 0xE800000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    goto LABEL_20;
  }

  *(v1 + 20) = v10;
  v26 = a1;
  v11 = *(a1 + 16);
  if (v11)
  {
    result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v10);
    if (v12)
    {
      v13._countAndFlagsBits = 32;
      v13._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
    }

    v14 = result;
    v15 = *(v2 + 20);
    v16 = __CFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      goto LABEL_23;
    }

    *(v2 + 20) = v17;
  }

  else
  {
    v14 = 0;
  }

  MEMORY[0x1EEE9AC00](result);
  v25[2] = sub_1B0D6D46C;
  v25[3] = 0;
  v25[4] = v2;
  v25[5] = &v26;
  v25[6] = 32;
  v25[7] = 0xE100000000000000;
  result = sub_1B0DE6128(0, sub_1B0D73378, v25, a1);
  v18 = v14 + result;
  if (__OFADD__(v14, result))
  {
    goto LABEL_21;
  }

  if (!v11)
  {
    v24 = v14 + result;
    goto LABEL_16;
  }

  v19 = *(v2 + 20);
  result = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v19);
  if (v20)
  {
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
  }

  v22 = *(v2 + 20);
  v16 = __CFADD__(v22, result);
  v23 = v22 + result;
  if (v16)
  {
    goto LABEL_24;
  }

  *(v2 + 20) = v23;
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_16:
  result = v8 + v24;
  if (__OFADD__(v8, v24))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

char *sub_1B0D6D164(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v21 = 0x4843544142444955;
  v22 = 0xEB00000000205345;
  v9 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v9);

  v10 = *(v4 + 20);
  v11 = sub_1B0CFC1B0(0x4843544142444955uLL, 0xEB00000000205345, v5 + 8, *(v5 + 20));
  if (v12)
  {
    v13._countAndFlagsBits = 0x4843544142444955;
    v13._object = 0xEB00000000205345;
    v11 = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
  }

  v14 = v11;

  v16 = *(v5 + 20);
  v17 = __CFADD__(v16, v14);
  v18 = v16 + v14;
  if (v17)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  *(v5 + 20) = v18;
  if (a4)
  {
    v19 = 0;
  }

  else
  {
    v21 = a2;
    v22 = a3;
    v19 = sub_1B0D6D794(&v21, v5);
  }

  v20 = __OFADD__(v14, v19);
  result = &v19[v14];
  if (v20)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1B0D6D288(unint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 20);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = sub_1B0CFC1B0(a1, a2, v3 + 8, v8);
  if (v10)
  {
    v11._countAndFlagsBits = a1;
    v11._object = a2;
    v9 = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
  }

  v12 = v9;

  v14 = *(v3 + 20);
  v15 = (v14 + v12);
  if (__CFADD__(v14, v12))
  {
    goto LABEL_20;
  }

  *(v3 + 20) = v15;
  v31 = a3;
  v16 = *(a3 + 16);
  if (v16)
  {
    result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v3 + 8, (v14 + v12));
    if (v17)
    {
      v18._countAndFlagsBits = 32;
      v18._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
    }

    v19 = result;
    v20 = *(v4 + 20);
    v21 = __CFADD__(v20, result);
    v22 = v20 + result;
    if (v21)
    {
      goto LABEL_23;
    }

    *(v4 + 20) = v22;
  }

  else
  {
    v19 = 0;
  }

  MEMORY[0x1EEE9AC00](result);
  v30[2] = sub_1B0D6D8F0;
  v30[3] = 0;
  v30[4] = v4;
  v30[5] = &v31;
  v30[6] = 0;
  v30[7] = 0xE000000000000000;
  result = sub_1B0DE68A8(0, sub_1B0D733A4, v30, a3);
  v23 = v19 + result;
  if (__OFADD__(v19, result))
  {
    goto LABEL_21;
  }

  if (!v16)
  {
    v29 = v19 + result;
    goto LABEL_16;
  }

  v24 = *(v4 + 20);
  result = sub_1B0CFC1B0(0, 0xE000000000000000, v4 + 8, v24);
  if (v25)
  {
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v24);
  }

  v27 = *(v4 + 20);
  v21 = __CFADD__(v27, result);
  v28 = v27 + result;
  if (v21)
  {
    goto LABEL_24;
  }

  *(v4 + 20) = v28;
  v29 = v23 + result;
  if (__OFADD__(v23, result))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_16:
  result = v12 + v29;
  if (__OFADD__(v12, v29))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0D6D46C(uint64_t result)
{
  v3 = *(result + 8);
  v4 = *(result + 12);
  if (v4 < v3)
  {
    __break(1u);
  }

  else
  {
    v5 = *(result + 16);
    v6 = *(result + 20);
    v7 = *(result + 22);
    if (v5 - (v7 | (v6 << 8)) >= v4)
    {
      v18 = v1;
      v19 = v2;
      v10 = *result;
      v11 = v3;
      v12 = v4;
      v13 = v5;
      v14 = v6;
      v15 = v7;
      v16 = v3;
      v17 = v4;

      sub_1B0D79300(&v10);
      v9 = v8;
      sub_1B04394F4(&v10);
      return v9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D6D4FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_1B0E190D0(v3);
}

uint64_t sub_1B0D6D560(unint64_t *a1, _DWORD *a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (v3 == 254)
  {
LABEL_8:
    v10 = v2[5];
    v2 += 5;
    v9 = v10;
    result = sub_1B0CFC1B0(0x2D4C414943455053uLL, 0xEB00000000455355, (v2 - 3), v10);
    if (v11)
    {
      v12._countAndFlagsBits = 0x2D4C414943455053;
      v12._object = 0xEB00000000455355;
      result = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
    }

    v8 = *v2 + result;
    if (!__CFADD__(*v2, result))
    {
LABEL_11:
      *v2 = v8;
      return result;
    }

    __break(1u);
    goto LABEL_26;
  }

  if (v3 == 255)
  {
    v2 = a2 + 5;
    v4 = a2[5];
    result = sub_1B0CFC1B0(0x45544F4D4552uLL, 0xE600000000000000, (a2 + 2), v4);
    if (v6)
    {
      v7._countAndFlagsBits = 0x45544F4D4552;
      v7._object = 0xE600000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
    }

    v8 = *v2 + result;
    if (!__CFADD__(*v2, result))
    {
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_8;
  }

  v13 = a1[5];
  v14 = a1[6];
  v15 = a1[7];
  v17 = *a1;
  v16 = a1[1];
  if (v3)
  {
    result = sub_1B0DF6F58(*a1, v16, a1[2], a1[3]);
  }

  else
  {
    v18 = a2[5];
    result = sub_1B0CFC1B0(*a1, v16, (a2 + 2), v18);
    if (v19)
    {
      v20._countAndFlagsBits = v17;
      v20._object = v16;
      result = ByteBuffer._setStringSlowpath(_:at:)(v20, v18);
    }

    v21 = v2[5];
    v22 = __CFADD__(v21, result);
    v23 = v21 + result;
    if (v22)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v2[5] = v23;
  }

  if (HIBYTE(v15) != 255)
  {
    v24 = result;
    v25 = v2[5];
    sub_1B0D3C8F0(v13, v14, v15, HIBYTE(v15) & 1);
    result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, (v2 + 2), v25);
    if (v26)
    {
      v27._countAndFlagsBits = 32;
      v27._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v27, v25);
    }

    v28 = v2[5];
    v22 = __CFADD__(v28, result);
    v29 = v28 + result;
    if (v22)
    {
      goto LABEL_27;
    }

    v2[5] = v29;
    v30 = v24 + result;
    if (__OFADD__(v24, result))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v31 = sub_1B0DF7268(v13, v14, v15 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v15) & 1) << 56));
    sub_1B0D3CB98(v13, v14, v15);
    result = v30 + v31;
    if (__OFADD__(v30, v31))
    {
LABEL_29:
      __break(1u);
    }
  }

  return result;
}

char *sub_1B0D6D794(char *result, uint64_t a2)
{
  v2 = *result;
  if ((*result - 0x100000000) < 0xFFFFFFFF00000001)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = *(result + 1);
  if (v3 - 0x100000000 < 0xFFFFFFFF00000001)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v3 < v2)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v5 = *(a2 + 20);
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, a2 + 8, v5);
  if (v6)
  {
    v7._countAndFlagsBits = 32;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v5);
  }

  v8 = result;
  v9 = *(a2 + 20);
  v10 = __CFADD__(v9, result);
  v11 = v9 + result;
  if (v10)
  {
    goto LABEL_21;
  }

  *(a2 + 20) = v11;
  result = sub_1B050721C();
  v12 = result;
  if (v2 >= v3)
  {
LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

  v13 = *(a2 + 20);
  result = sub_1B0CFC1B0(0x3AuLL, 0xE100000000000000, a2 + 8, v13);
  if (v14)
  {
    v15._countAndFlagsBits = 58;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = result;
  v17 = *(a2 + 20);
  v10 = __CFADD__(v17, result);
  v18 = v17 + result;
  if (v10)
  {
    goto LABEL_24;
  }

  *(a2 + 20) = v18;
  result = sub_1B050721C();
  v19 = &result[v16];
  if (__OFADD__(v16, result))
  {
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  v20 = __OFADD__(v12, v19);
  v21 = &v19[v12];
  if (v20)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = &v21[v8];
  if (__OFADD__(v8, v21))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0D6D8F0(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16) | ((*(a1 + 20) | (*(a1 + 22) << 16)) << 32);
  if ((result & 0x8000000000000000) == 0)
  {
    return sub_1B0D4B6B8(result, v3, v4 & 0xFFFFFFFFFFFFFFLL);
  }

  if (HIDWORD(v3) < v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (HIDWORD(v3) > v4 - (BYTE6(v4) | (WORD2(v4) << 8)))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v7[0] = result & 0x7FFFFFFFFFFFFFFFLL;
  v7[1] = v3;
  v8 = v4;
  v9 = WORD2(v4);
  v10 = BYTE6(v4);
  v11 = v3;
  v12 = HIDWORD(v3);

  sub_1B0D79300(v7);
  v6 = v5;
  sub_1B04394F4(v7);
  return v6;
}

unint64_t sub_1B0D6D9B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (v29 - v5);
  v7 = type metadata accessor for StoreModifier(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0D73230(a1, v9, type metadata accessor for StoreModifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B03C60A4(v9, v6, &qword_1EB6E6F58, &unk_1B0EF5150);
    v10 = sub_1B0E3001C(v6);
    sub_1B0398EFC(v6, &qword_1EB6E6F58, &unk_1B0EF5150);
    return v10;
  }

  v12 = *v9;
  v13 = *(a2 + 20);
  result = sub_1B0CFC1B0(0x45474E4148434E55uLL, 0xEF2045434E495344, a2 + 8, v13);
  if (v14)
  {
    v15._countAndFlagsBits = 0x45474E4148434E55;
    v15._object = 0xEF2045434E495344;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = result;
  v17 = *(a2 + 20);
  v18 = (v17 + result);
  if (__CFADD__(v17, result))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(a2 + 20) = v18;
  v29[0] = v12;
  v19 = sub_1B0E469C8();
  v21 = v20;
  v22 = sub_1B0CFC1B0(v19, v20, a2 + 8, v18);
  if (v23)
  {
    v24._countAndFlagsBits = v19;
    v24._object = v21;
    v22 = ByteBuffer._setStringSlowpath(_:at:)(v24, v18);
  }

  v25 = v22;

  v26 = *(a2 + 20);
  v27 = __CFADD__(v26, v25);
  v28 = v26 + v25;
  if (v27)
  {
    goto LABEL_12;
  }

  *(a2 + 20) = v28;
  result = v16 + v25;
  if (__OFADD__(v16, v25))
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t static Command.uidBatches(batchSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = a1;
  *(a2 + 24) = 1;
  type metadata accessor for Command(0);

  return swift_storeEnumTagMultiPayload();
}

double sub_1B0D6DC8C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, char *a5@<X8>)
{
  v26[0] = a3;
  v26[1] = a4;
  v27 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v26 - v18;
  sub_1B03B5C80(a1, v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (sub_1B0D6EA90() < 1)
  {
    sub_1B0398EFC(v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v20 = 1;
  }

  else
  {
    sub_1B03C60A4(v9, v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03C60A4(v16, v12, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v20 = 0;
  }

  v21 = *(v14 + 56);
  v21(v12, v20, 1, v13);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1B0398EFC(v12, &unk_1EB6E3670, &unk_1B0E9B260);
    v22 = type metadata accessor for Command(0);
    (*(*(v22 - 8) + 56))(a5, 1, 1, v22);
  }

  else
  {
    sub_1B03C60A4(v12, v19, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v24 = &a5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7248, &qword_1B0EF1228) + 48)];
    sub_1B03C60A4(v19, a5, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v21(a5, 0, 1, v13);
    *v24 = v27;
    *(v24 + 2) = v26[0];
    v25 = type metadata accessor for Command(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v25 - 8) + 56))(a5, 0, 1, v25);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

double static Command.uidFetch(messages:attributes:modifiers:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v28 = a2;
  v29 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - v17;
  sub_1B03B5C80(a1, v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (sub_1B0D6EA90() < 1)
  {
    sub_1B0398EFC(v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v19 = 1;
  }

  else
  {
    sub_1B03C60A4(v8, v15, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03C60A4(v15, v11, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v19 = 0;
  }

  v20 = *(v13 + 56);
  v20(v11, v19, 1, v12);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1B0398EFC(v11, &unk_1EB6E3670, &unk_1B0E9B260);
    v21 = type metadata accessor for Command(0);
    (*(*(v21 - 8) + 56))(a4, 1, 1, v21);
  }

  else
  {
    sub_1B03C60A4(v11, v18, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7240, &qword_1B0EF1220);
    v24 = *(v23 + 48);
    v25 = *(v23 + 64);
    sub_1B03C60A4(v18, a4, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v20(a4, 0, 1, v12);
    v26 = v29;
    *&a4[v24] = v28;
    *&a4[v25] = v26;
    v27 = type metadata accessor for Command(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v27 - 8) + 56))(a4, 0, 1, v27);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

double static Command.uidStore(messages:modifiers:data:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v32 = a3;
  v33 = a4;
  v31 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - v18;
  sub_1B03B5C80(a1, v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (sub_1B0D6EA90() < 1)
  {
    sub_1B0398EFC(v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v20 = 1;
  }

  else
  {
    sub_1B03C60A4(v9, v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03C60A4(v16, v12, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v20 = 0;
  }

  v21 = *(v14 + 56);
  v21(v12, v20, 1, v13);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1B0398EFC(v12, &unk_1EB6E3670, &unk_1B0E9B260);
    v22 = type metadata accessor for Command(0);
    (*(*(v22 - 8) + 56))(a5, 1, 1, v22);
  }

  else
  {
    sub_1B03C60A4(v12, v19, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7238, &qword_1B0EF1218);
    v25 = *(v24 + 48);
    v26 = &a5[*(v24 + 64)];
    sub_1B03C60A4(v19, a5, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v21(a5, 0, 1, v13);
    v27 = v32;
    *&a5[v25] = v31;
    v28 = v33;
    *v26 = v27;
    v26[1] = v28;
    v29 = type metadata accessor for Command(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v29 - 8) + 56))(a5, 0, 1, v29);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return sub_1B0D72538();
  }

  return result;
}

uint64_t static Command.uidExpunge(messages:mailbox:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  sub_1B03B5C80(a1, v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (sub_1B0D6EA90() < 1)
  {
    sub_1B0398EFC(v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v17 = 1;
  }

  else
  {
    sub_1B03C60A4(v6, v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03C60A4(v13, v9, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v17 = 0;
  }

  v18 = *(v11 + 56);
  v18(v9, v17, 1, v10);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1B0398EFC(v9, &unk_1EB6E3670, &unk_1B0E9B260);
    v19 = type metadata accessor for Command(0);
    return (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
  }

  else
  {
    sub_1B03C60A4(v9, v16, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B03C60A4(v16, a2, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v18(a2, 0, 1, v10);
    v21 = type metadata accessor for Command(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
  }
}

uint64_t sub_1B0D6EA90()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E72E0, &qword_1B0EF1360);
  v1 = v0 - 8;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  sub_1B0E46E68();
  v20 = v5;
  (*(v5 + 16))(v7, v10, v4);
  sub_1B0D730A0(&qword_1EB6DA2F0, MEMORY[0x1E69E7BB8]);
  sub_1B0E44F08();
  v11 = *(v1 + 44);
  sub_1B0D730A0(&qword_1EB6DA2E8, MEMORY[0x1E69E7BC8]);
  v12 = 0;
  while (1)
  {
    sub_1B0E456C8();
    if (*&v3[v11] == v21[0])
    {
      break;
    }

    v13 = sub_1B0E457B8();
    v16 = *v14;
    v15 = v14[1];
    v13(v21, 0);
    sub_1B0E456D8();
    v17 = __OFADD__(v12, v15 - v16);
    v12 += v15 - v16;
    if (v17)
    {
      __break(1u);
      break;
    }
  }

  sub_1B0398EFC(v3, &qword_1EB6E72E0, &qword_1B0EF1360);
  (*(v20 + 8))(v10, v4);
  return v12;
}

uint64_t sub_1B0D6ED1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X8>, uint64_t (*a8)(uint64_t, _OWORD *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  v11 = *(a2 + 64);
  v12 = *a6;
  v13 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v13;
  v14 = *(a2 + 48);
  v16[2] = *(a2 + 32);
  v16[3] = v14;
  v17 = v11;
  result = a8(v10, v16, a3, a4, a5, v12);
  if (!v8)
  {
    *a7 = result;
  }

  return result;
}

uint64_t sub_1B0D6ED7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void *, uint64_t, __n128)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_1B0E23640(*a1, *a2, a2[1], a2[2], a2[3], a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t sub_1B0D6EDE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void *, uint64_t, __n128)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_1B0E2665C(*a1, *a2, a2[1], a2[2], a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t sub_1B0D6EE48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(__int128 *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X8>, unint64_t a8@<X6>, void *a9@<X7>)
{
  v11 = *a1;
  v12 = *(a2 + 8);
  v13 = *(a2 + 24);
  v14 = *(a2 + 28);
  v15 = *(a2 + 30);
  v16 = *(a2 + 32);
  v17 = *(a2 + 40);
  v18 = *a6;
  v20[0] = *a2;
  v20[1] = v12;
  v20[2] = *(a2 + 16);
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  result = sub_1B0E237B0(v11, v20, a3, a4, a5, v18, a8, a9);
  if (!v9)
  {
    *a7 = result;
  }

  return result;
}

uint64_t sub_1B0D6EEB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_1B0E23934(*a1, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24) | ((*(a2 + 28) | (*(a2 + 30) << 16)) << 32), a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t _s12NIOIMAPCore27CommandO21__derived_enum_equalsySbAC_ACtFZ_0(unint64_t a1, uint64_t a2)
{
  v517 = a1;
  v518 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB0, &unk_1B0EC2010);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v476 = &v475 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v483 = &v475 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v481 = &v475 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v480 = &v475 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v479 = &v475 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v478 = &v475 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v482 = &v475 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v477 = &v475 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v475 = &v475 - v19;
  v516 = type metadata accessor for Command(0);
  MEMORY[0x1EEE9AC00](v516);
  v514 = &v475 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v513 = &v475 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v512 = &v475 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v511 = (&v475 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v510 = &v475 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v507 = (&v475 - v30);
  MEMORY[0x1EEE9AC00](v31);
  v509 = &v475 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v504 = &v475 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v506 = &v475 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v502 = &v475 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v501 = &v475 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v505 = &v475 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v508 = &v475 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v498 = (&v475 - v46);
  MEMORY[0x1EEE9AC00](v47);
  v503 = &v475 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v500 = &v475 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v499 = &v475 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v494 = &v475 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v492 = &v475 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v497 = &v475 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v491 = (&v475 - v60);
  MEMORY[0x1EEE9AC00](v61);
  v496 = &v475 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v495 = &v475 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v493 = &v475 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v490 = (&v475 - v68);
  MEMORY[0x1EEE9AC00](v69);
  v489 = (&v475 - v70);
  MEMORY[0x1EEE9AC00](v71);
  v488 = &v475 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v487 = &v475 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v486 = &v475 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v485 = &v475 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v484 = &v475 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v475 - v82;
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v475 - v85;
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v475 - v88;
  MEMORY[0x1EEE9AC00](v90);
  v515 = &v475 - v91;
  MEMORY[0x1EEE9AC00](v92);
  v94 = &v475 - v93;
  MEMORY[0x1EEE9AC00](v95);
  v97 = &v475 - v96;
  MEMORY[0x1EEE9AC00](v98);
  v100 = &v475 - v99;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E72F0, &qword_1B0EF1368);
  MEMORY[0x1EEE9AC00](v101 - 8);
  v103 = &v475 - v102;
  v105 = &v475 + *(v104 + 56) - v102;
  sub_1B0D73230(v517, &v475 - v102, type metadata accessor for Command);
  v106 = v518;
  v518 = v105;
  sub_1B0D73230(v106, v105, type metadata accessor for Command);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1B0D73230(v103, v97, type metadata accessor for Command);
      v222 = *v97;
      v223 = v518;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_86;
      }

      v298 = *(v97 + 2);
      goto LABEL_170;
    case 2u:
      sub_1B0D73230(v103, v94, type metadata accessor for Command);
      v248 = *v94;
      v249 = *(v94 + 2);
      v250 = v518;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_71;
      }

      goto LABEL_85;
    case 3u:
      v517 = v103;
      v270 = v515;
      sub_1B0D73230(v103, v515, type metadata accessor for Command);
      v271 = *(v270 + 48);
      v548 = *(v270 + 32);
      v549 = v271;
      v272 = *(v270 + 72);
      v550 = *(v270 + 64);
      v273 = *(v270 + 16);
      v546 = *v270;
      v547 = v273;
      v274 = *(v270 + 80);
      v276 = *(v270 + 88);
      v275 = *(v270 + 96);
      v277 = *(v270 + 104) | ((*(v270 + 108) | (*(v270 + 110) << 16)) << 32);
      v278 = *(v270 + 111);
      v279 = *(v270 + 112);
      v280 = v518;
      if (swift_getEnumCaseMultiPayload() != 3)
      {

        sub_1B0D3C8FC(v276, v275, v277, v278);

        sub_1B0398EFC(&v546, &qword_1EB6E7268, &qword_1B0EF1248);
        v103 = v517;
        goto LABEL_210;
      }

      v516 = v279;
      v281 = *(v280 + 16);
      v282 = *(v280 + 48);
      v543 = *(v280 + 32);
      v544 = v282;
      v283 = *(v280 + 16);
      v542[0] = *v280;
      v542[1] = v283;
      v284 = *(v270 + 16);
      v540 = *v270;
      v541 = v284;
      v538 = *(v270 + 40);
      v285 = *(v280 + 64);
      v514 = *(v280 + 72);
      v545 = v285;
      v286 = *(v280 + 80);
      v287 = *(v280 + 88);
      v288 = *(v280 + 96);
      v289 = *(v280 + 104) | ((*(v280 + 108) | (*(v280 + 110) << 16)) << 32);
      v290 = *(v280 + 111);
      v291 = *(v280 + 112);
      v539 = *(v270 + 56);
      v292 = v548;
      v293 = v550;
      v534 = v542[0];
      v535 = v281;
      v294 = *(v280 + 48);
      v536 = v543;
      v537 = v294;
      v295 = v285;
      if (!v550)
      {
        if (!v285)
        {
          v508 = v286;
          LODWORD(v509) = v290;
          v511 = v287;
          v512 = v288;
          v513 = v289;
          v510 = v291;
          v463 = *(v515 + 16);
          v525 = *v515;
          v526 = v463;
          *&v527[0] = v548;
          *(v527 + 8) = *(v515 + 40);
          *(&v527[1] + 1) = *(v515 + 56);
          v528 = 0;
          sub_1B03B5C80(&v546, &v519, &qword_1EB6E7268, &qword_1B0EF1248);
          sub_1B03B5C80(v542, &v519, &qword_1EB6E7268, &qword_1B0EF1248);
          sub_1B0398EFC(&v525, &qword_1EB6E7268, &qword_1B0EF1248);
          goto LABEL_302;
        }

LABEL_255:
        sub_1B0D3C8FC(v287, v288, v289, v290);
        sub_1B0D3C8FC(v276, v275, v277, v278);

        v525 = v540;
        v526 = v541;
        *(v527 + 8) = v538;
        v529 = v534;
        v530 = v535;
        v531 = v536;
        *&v527[0] = v292;
        *(&v527[1] + 1) = v539;
        v528 = v293;
        v532 = v537;
        v533 = v295;
        v455 = &unk_1EB6E72F8;
        v456 = &unk_1B0EF1370;
        v457 = &v525;
LABEL_256:
        sub_1B0398EFC(v457, v455, v456);
        goto LABEL_311;
      }

      if (!v285)
      {
        goto LABEL_255;
      }

      v296 = *(v518 + 16);
      v525 = *v518;
      v526 = v296;
      v297 = *(v518 + 48);
      v527[0] = *(v518 + 32);
      v527[1] = v297;
      v528 = v285;
      v510 = v291;
      v511 = v287;
      v512 = v288;
      v513 = v289;
      LODWORD(v509) = v290;
      if (v548 == 0xFF)
      {
        if (LOBYTE(v527[0]) == 0xFF)
        {
          v508 = v286;
          sub_1B03B5C80(&v546, &v519, &qword_1EB6E7268, &qword_1B0EF1248);
          sub_1B03B5C80(v542, &v519, &qword_1EB6E7268, &qword_1B0EF1248);
          goto LABEL_301;
        }

        goto LABEL_287;
      }

      v461 = *(v515 + 16);
      v551[0] = *v515;
      v551[1] = v461;
      v553 = *(v515 + 40);
      v462 = *(v515 + 56);
      v552 = v548;
      v554 = v462;
      if (LOBYTE(v527[0]) == 0xFF)
      {
LABEL_287:
        sub_1B03B5C80(&v546, &v519, &qword_1EB6E7268, &qword_1B0EF1248);
        sub_1B03B5C80(v542, &v519, &qword_1EB6E7268, &qword_1B0EF1248);
LABEL_288:
        sub_1B0398EFC(&v525, &qword_1EB6E7268, &qword_1B0EF1248);
        v519 = v540;
        v520 = v541;
        v521 = v292;
        v522 = v538;
        v523 = v539;
        v524 = v293;
        sub_1B0398EFC(&v519, &qword_1EB6E7268, &qword_1B0EF1248);
LABEL_308:
        sub_1B0398EFC(&v546, &qword_1EB6E7268, &qword_1B0EF1248);
        sub_1B0398EFC(v542, &qword_1EB6E7268, &qword_1B0EF1248);
        sub_1B0D3C8FC(v511, v512, v513, v509);
        sub_1B0D3C8FC(v276, v275, v277, v278);

        goto LABEL_309;
      }

      v508 = v286;
      v465 = *(v518 + 16);
      v555[0] = *v518;
      v555[1] = v465;
      v557 = *(v518 + 40);
      v466 = *(v518 + 56);
      v556 = *&v527[0];
      v558 = v466;
      sub_1B03B5C80(&v546, &v519, &qword_1EB6E7268, &qword_1B0EF1248);
      sub_1B03B5C80(v542, &v519, &qword_1EB6E7268, &qword_1B0EF1248);
      if (!sub_1B0DCA1A0(v551, v555))
      {
        goto LABEL_288;
      }

LABEL_301:
      v467 = sub_1B0D320D8(v293, v295);
      sub_1B0398EFC(&v525, &qword_1EB6E7268, &qword_1B0EF1248);
      v519 = v540;
      v520 = v541;
      v521 = v292;
      v522 = v538;
      v523 = v539;
      v524 = v293;
      sub_1B0398EFC(&v519, &qword_1EB6E7268, &qword_1B0EF1248);
      if ((v467 & 1) == 0)
      {
        goto LABEL_308;
      }

LABEL_302:
      if ((v274 | (v274 << 32)) != (v508 | (v508 << 32)))
      {
        goto LABEL_308;
      }

      v468 = _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v272, v514);

      if ((v468 & 1) == 0)
      {
        sub_1B0398EFC(&v546, &qword_1EB6E7268, &qword_1B0EF1248);
        sub_1B0398EFC(v542, &qword_1EB6E7268, &qword_1B0EF1248);
        sub_1B0D3C8FC(v511, v512, v513, v509);
        sub_1B0D3C8FC(v276, v275, v277, v278);
LABEL_309:

LABEL_310:

        goto LABEL_311;
      }

      if (v278)
      {
        v469 = v516;
        v470 = v509;
        if (v509)
        {
          v471 = v511;
          if (sub_1B0D3CF14())
          {
            goto LABEL_337;
          }

          goto LABEL_332;
        }

        goto LABEL_338;
      }

      v469 = v516;
      v470 = v509;
      if (v509)
      {
LABEL_332:
        v474 = 1;
LABEL_339:

        sub_1B0D3C8FC(v511, v512, v513, v474);

        sub_1B0D3C8FC(v276, v275, v277, v278);
        sub_1B0398EFC(v542, &qword_1EB6E7268, &qword_1B0EF1248);
        v457 = &v546;
        v455 = &qword_1EB6E7268;
        v456 = &qword_1B0EF1248;
        goto LABEL_256;
      }

      v471 = v511;
      if (!sub_1B0C2DB54(v276, v275, v277 & 0xFFFFFFFFFFFFFFLL, v511, v512, v513 & 0xFFFFFFFFFFFFFFLL))
      {
LABEL_338:
        v474 = 0;
        goto LABEL_339;
      }

LABEL_337:
      v132 = sub_1B0CFDC08(v469, v510);
      sub_1B0D3C8FC(v471, v512, v513, v470);
      sub_1B0D3C8FC(v276, v275, v277, v278);
      sub_1B0398EFC(v542, &qword_1EB6E7268, &qword_1B0EF1248);
      sub_1B0398EFC(&v546, &qword_1EB6E7268, &qword_1B0EF1248);

LABEL_318:

      v237 = v517;
LABEL_283:
      sub_1B0D733FC(v237, type metadata accessor for Command);
      return v132 & 1;
    case 4u:
      v517 = v103;
      sub_1B0D73230(v103, v89, type metadata accessor for Command);
      v184 = *v89;
      v183 = *(v89 + 1);
      v515 = *(v89 + 4);
      v185 = *(v89 + 3);
      v186 = *(v89 + 4);
      v187 = *(v89 + 10) | ((*(v89 + 22) | (v89[46] << 16)) << 32);
      v188 = v89[47];
      v189 = *(v89 + 6);
      v190 = v518;
      if (swift_getEnumCaseMultiPayload() != 4)
      {

        sub_1B0D3C8FC(v185, v186, v187, v188);

        goto LABEL_203;
      }

      v510 = v183;
      v511 = v185;
      LODWORD(v512) = v188;
      v513 = v186;
      v514 = v187;
      v516 = v189;
      v192 = *v190;
      v191 = *(v190 + 8);
      v509 = *(v190 + 16);
      v193 = *(v190 + 24);
      v194 = *(v190 + 32);
      v195 = *(v190 + 40) | ((*(v190 + 44) | (*(v190 + 46) << 16)) << 32);
      v196 = *(v190 + 47);
      v197 = *(v190 + 48);
      v198 = sub_1B0D34654(v184, v192);

      if ((v198 & 1) == 0)
      {

        sub_1B0D3C8FC(v193, v194, v195, v196);

        sub_1B0D3C8FC(v511, v513, v514, v512);
        goto LABEL_310;
      }

      v518 = v197;
      v199 = v196;
      v200 = v195;
      if ((v515 | (v515 << 32)) != (v509 | (v509 << 32)))
      {
        sub_1B0D3C8FC(v193, v194, v195, v196);
        sub_1B0D3C8FC(v511, v513, v514, v512);

        goto LABEL_309;
      }

      v201 = _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v510, v191);

      v202 = v194;
      if ((v201 & 1) == 0)
      {
        sub_1B0D3C8FC(v193, v194, v195, v196);
        sub_1B0D3C8FC(v511, v513, v514, v512);
        goto LABEL_309;
      }

      v203 = v193;
      v204 = v513;
      v205 = v514;
      v206 = v512;
      v207 = v511;
      if (v512)
      {
        v208 = v516;
        if (v199)
        {
          v209 = v203;
          if ((sub_1B0D3CF14() & 1) == 0)
          {
            v210 = 1;
LABEL_334:
            v205 = v514;
            goto LABEL_335;
          }

          goto LABEL_328;
        }

        v210 = 0;
      }

      else
      {
        v208 = v516;
        if ((v199 & 1) == 0)
        {
          v209 = v203;
          if (!sub_1B0C2DB54(v511, v513, v514 & 0xFFFFFFFFFFFFFFLL, v203, v202, v200 & 0xFFFFFFFFFFFFFFLL))
          {
            v210 = 0;
            goto LABEL_334;
          }

LABEL_328:
          v516 = v202;
          v132 = sub_1B0CFDC08(v208, v518);
          sub_1B0D3C8FC(v209, v516, v200, v199);
          sub_1B0D3C8FC(v207, v204, v514, v206);
          goto LABEL_317;
        }

        v210 = 1;
      }

LABEL_335:

      sub_1B0D3C8FC(v203, v202, v200, v210);

      sub_1B0D3C8FC(v207, v204, v205, v206);
LABEL_311:
      v454 = v517;
LABEL_312:
      sub_1B0D733FC(v454, type metadata accessor for Command);
LABEL_313:
      v132 = 0;
      return v132 & 1;
    case 5u:
      v328 = v103;
      sub_1B0D73230(v103, v86, type metadata accessor for Command);
      v329 = *v86;
      v330 = *(v86 + 2);
      v517 = *(v86 + 3);
      v331 = *(v86 + 8);
      v332 = *(v86 + 18);
      v333 = v86[38];
      v334 = v518;
      if (swift_getEnumCaseMultiPayload() != 5)
      {

        v103 = v328;
        goto LABEL_210;
      }

      v335 = *(v86 + 2);
      v336 = *v334;
      v337 = *(v334 + 16);
      if ((v335 | (v335 << 32)) == (*(v334 + 8) | (*(v334 + 8) << 32)))
      {
        v338 = *(v334 + 24);
        v515 = *(v334 + 32);
        v516 = v338;
        v514 = *(v334 + 36);
        v518 = *(v334 + 38);
        v339 = _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v329, v336);

        if (v339)
        {
          v132 = sub_1B0C2DB54(v330, v517, v331 | (v332 << 32) | (v333 << 48), v337, v516, v515 | (v514 << 32) | (v518 << 48));

          v237 = v328;
          goto LABEL_283;
        }
      }

      else
      {
      }

      v454 = v328;
      goto LABEL_312;
    case 6u:
      sub_1B0D73230(v103, v83, type metadata accessor for Command);
      v349 = *v83;
      v350 = *(v83 + 2);
      v351 = *(v83 + 6);
      v352 = *(v83 + 4);
      v353 = *(v83 + 5);
      v354 = *(v83 + 6);
      v355 = v518;
      if (swift_getEnumCaseMultiPayload() != 6)
      {

        goto LABEL_210;
      }

      v515 = v352;
      v517 = v103;
      v356 = *(v83 + 2);
      v357 = *v355;
      v358 = *(v355 + 8);
      v359 = *(v355 + 16);
      v360 = *(v355 + 32);
      v516 = *(v355 + 40);
      v513 = *(v355 + 48);
      v514 = v360;
      if ((v356 | (v356 << 32)) == (v358 | (v358 << 32)))
      {
        v361 = *(v355 + 24);
        v362 = _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v349, v357);

        if ((v362 & 1) != 0 && (v351 | (v351 << 32)) == (v361 | (v361 << 32)))
        {
          v363 = _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v350, v359);

          if (v363)
          {
            v364 = sub_1B045202C(v353, v516);
            v365 = v517;
            if (v364)
            {
              sub_1B0D393EC(v354, v513);
              v367 = v366;

              if (v367)
              {
                v312 = v365;
                goto LABEL_270;
              }
            }

            else
            {
            }

            v454 = v365;
            goto LABEL_312;
          }

LABEL_241:

          goto LABEL_311;
        }
      }

      else
      {
      }

      goto LABEL_241;
    case 7u:
      v94 = v484;
      sub_1B0D73230(v103, v484, type metadata accessor for Command);
      v248 = *v94;
      v249 = *(v94 + 2);
      v250 = v518;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_85;
      }

LABEL_71:
      v251 = *(v94 + 2);
      v252 = *v250;
      v253 = *(v250 + 8);
      v254 = *(v250 + 16);
      if ((v251 | (v251 << 32)) != (v253 | (v253 << 32)))
      {
        goto LABEL_181;
      }

      v255 = _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v248, v252);

      if ((v255 & 1) == 0)
      {
        goto LABEL_276;
      }

      v114 = sub_1B0D336F0(v249, v254);
      goto LABEL_280;
    case 8u:
      v376 = v485;
      sub_1B0D73230(v103, v485, type metadata accessor for Command);
      v377 = *v376;
      v378 = *(v376 + 16);
      v379 = v518;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_185;
      }

      v380 = *(v376 + 8);
      v381 = *v379;
      v382 = *(v379 + 8);
      v383 = *(v379 + 16);
      if ((v380 | (v380 << 32)) != (v382 | (v382 << 32)))
      {

        goto LABEL_276;
      }

      v384 = _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v377, v381);

      if ((v384 & 1) == 0)
      {
        goto LABEL_276;
      }

      v132 = sub_1B0CFDCE8(v378, v383);

      goto LABEL_281;
    case 9u:
      v221 = v486;
      sub_1B0D73230(v103, v486, type metadata accessor for Command);
      v222 = *v221;
      v223 = v518;
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_169;
      }

      goto LABEL_86;
    case 0xAu:
      v221 = v487;
      sub_1B0D73230(v103, v487, type metadata accessor for Command);
      v222 = *v221;
      v223 = v518;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        goto LABEL_169;
      }

      goto LABEL_86;
    case 0xBu:
      v517 = v103;
      v171 = v488;
      sub_1B0D73230(v103, v488, type metadata accessor for Command);
      v173 = *v171;
      v172 = *(v171 + 8);
      v174 = *(v171 + 16);
      v515 = *(v171 + 24);
      v175 = *(v171 + 38);
      v176 = *(v171 + 36);
      v177 = *(v171 + 32);
      v178 = v518;
      if (swift_getEnumCaseMultiPayload() != 11)
      {

        v103 = v517;
        goto LABEL_210;
      }

      v179 = *v178;
      v180 = *(v178 + 8);
      v181 = *(v178 + 16);
      v516 = *(v178 + 24);
      LODWORD(v514) = *(v178 + 38);
      LODWORD(v513) = *(v178 + 36);
      v182 = *(v178 + 32);
      if (v173 == v179 && v172 == v180)
      {
      }

      else
      {
        v445 = sub_1B0E46A78();

        if ((v445 & 1) == 0)
        {
          goto LABEL_258;
        }
      }

      if (v174)
      {
        if (v181)
        {
          v446 = v182 | ((v513 | (v514 << 16)) << 32);

          v448 = sub_1B0C2DB54(v447, v515, (v177 | ((v176 | (v175 << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL, v181, v516, v446 & 0xFFFFFFFFFFFFFFLL);

          if (!v448)
          {
            goto LABEL_311;
          }

LABEL_259:
          v312 = v517;
LABEL_270:
          sub_1B0D733FC(v312, type metadata accessor for Command);
          v132 = 1;
          return v132 & 1;
        }
      }

      else if (!v181)
      {
        goto LABEL_259;
      }

LABEL_258:

      goto LABEL_311;
    case 0xCu:
      v211 = v489;
      sub_1B0D73230(v103, v489, type metadata accessor for Command);
      v213 = *v211;
      v212 = v211[1];
      v215 = v211[2];
      v214 = v211[3];
      v216 = v518;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_85;
      }

      v217 = *v216;
      v218 = v216[1];
      v220 = v216[2];
      v219 = v216[3];
      if (v213 == v217 && v212 == v218)
      {
      }

      else
      {
        v449 = sub_1B0E46A78();

        if ((v449 & 1) == 0)
        {
          goto LABEL_276;
        }
      }

      if (v215 == v220 && v214 == v219)
      {
LABEL_19:

        goto LABEL_269;
      }

      v442 = sub_1B0E46A78();

LABEL_216:

      if ((v442 & 1) == 0)
      {
        goto LABEL_278;
      }

      goto LABEL_269;
    case 0xDu:
      v346 = v490;
      sub_1B0D73230(v103, v490, type metadata accessor for Command);
      v347 = *v346;
      v348 = v518;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_86;
      }

      v114 = sub_1B044DA4C(v347, *v348);
      goto LABEL_280;
    case 0xEu:
      v155 = v493;
      sub_1B0D73230(v103, v493, type metadata accessor for Command);
      v156 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7250, &qword_1B0EF1230) + 48);
      v157 = *(v155 + v156);
      v158 = *(v155 + v156 + 8);
      v159 = v518;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_130;
      }

      v160 = *(v159 + v156);
      v517 = *(v159 + v156 + 8);
      v161 = v159;
      v162 = v475;
      goto LABEL_127;
    case 0xFu:
      v256 = v495;
      sub_1B0D73230(v103, v495, type metadata accessor for Command);
      v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7260, &qword_1B0EF1240);
      v258 = *(v257 + 48);
      v259 = *(v256 + v258);
      v260 = *(v257 + 64);
      v261 = *(v256 + v260);
      v262 = v518;
      if (swift_getEnumCaseMultiPayload() != 15)
      {

        v374 = &qword_1EB6E4050;
        v375 = &unk_1B0EC2B20;
        goto LABEL_208;
      }

      v517 = v261;
      v263 = *(v262 + v258);
      v264 = *(v262 + v260);
      v162 = v477;
      sub_1B03C60A4(v262, v477, &qword_1EB6E4050, &unk_1B0EC2B20);
      v265 = sub_1B0E1A984(v256, v162);
      sub_1B0398EFC(v256, &qword_1EB6E4050, &unk_1B0EC2B20);
      if ((v265 & 1) == 0)
      {
        v452 = &qword_1EB6E4050;
        v453 = &unk_1B0EC2B20;
        goto LABEL_249;
      }

      v266 = sub_1B0CFD500(v259, v263);

      if (v266)
      {
        v267 = v162;
        v132 = sub_1B0D349B0(v517, v264);

        v268 = &qword_1EB6E4050;
        v269 = &unk_1B0EC2B20;
        goto LABEL_167;
      }

      v439 = &qword_1EB6E4050;
      v440 = &unk_1B0EC2B20;
      goto LABEL_275;
    case 0x10u:
      v136 = v496;
      sub_1B0D73230(v103, v496, type metadata accessor for Command);
      v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7258, &qword_1B0EF1238);
      v138 = *(v137 + 48);
      v139 = *(v136 + v138);
      v140 = *(v137 + 64);
      v142 = *(v136 + v140);
      v141 = *(v136 + v140 + 8);
      v143 = v518;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        sub_1B0D72504();

        v374 = &qword_1EB6E4050;
        v375 = &unk_1B0EC2B20;
        goto LABEL_191;
      }

      v144 = *(v143 + v138);
      v145 = *(v143 + v140 + 8);
      v516 = *(v143 + v140);
      v517 = v103;
      v515 = v145;
      v146 = v482;
      sub_1B03C60A4(v143, v482, &qword_1EB6E4050, &unk_1B0EC2B20);
      v147 = sub_1B0E1A984(v136, v146);
      sub_1B0398EFC(v136, &qword_1EB6E4050, &unk_1B0EC2B20);
      if ((v147 & 1) == 0)
      {
        v443 = &qword_1EB6E4050;
        v444 = &unk_1B0EC2B20;
        goto LABEL_231;
      }

      v148 = v515;
      v149 = v516;
      v150 = sub_1B0D34A04(v139, v144);

      v151 = v517;
      if (v150)
      {
        v132 = _s12NIOIMAPCore29StoreDataO21__derived_enum_equalsySbAC_ACtFZ_0(v142, v141, v149, v148);
        sub_1B0D72504();
        sub_1B0D72504();
        v152 = &qword_1EB6E4050;
        v153 = &unk_1B0EC2B20;
        v154 = v482;
        goto LABEL_62;
      }

      v458 = &qword_1EB6E4050;
      v459 = &unk_1B0EC2B20;
      v460 = v482;
      goto LABEL_264;
    case 0x11u:
      v313 = v491;
      sub_1B0D73230(v103, v491, type metadata accessor for Command);
      v314 = *v313;
      v315 = v313[1];
      v317 = v313[2];
      v316 = v313[3];
      v318 = v518;
      if (swift_getEnumCaseMultiPayload() != 17)
      {

        sub_1B0B239C8(v314);
        goto LABEL_210;
      }

      v517 = v103;
      v319 = *v318;
      v320 = v318[1];
      v322 = v318[2];
      v321 = v318[3];
      if ((static SearchKey.__derived_enum_equals(_:_:)(v314, v319) & 1) == 0)
      {

        sub_1B0B239C8(v319);
        sub_1B0B239C8(v314);
        goto LABEL_311;
      }

      if (v317)
      {
        if (!v322)
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0B239C8(v319);
          sub_1B0B239C8(v314);
          swift_bridgeObjectRelease_n();
          goto LABEL_324;
        }

        if (v315 == v320 && v317 == v322)
        {
        }

        else
        {
          v473 = sub_1B0E46A78();

          if ((v473 & 1) == 0)
          {
            sub_1B0B239C8(v319);
            sub_1B0B239C8(v314);
LABEL_324:

LABEL_325:

            v454 = v517;
            goto LABEL_312;
          }
        }
      }

      else if (v322)
      {
        sub_1B0B239C8(v319);
        sub_1B0B239C8(v314);
        goto LABEL_293;
      }

      v132 = sub_1B0CFE01C(v316, v321);
      sub_1B0B239C8(v319);
      sub_1B0B239C8(v314);
      goto LABEL_317;
    case 0x12u:
      v155 = v497;
      sub_1B0D73230(v103, v497, type metadata accessor for Command);
      v368 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7250, &qword_1B0EF1230) + 48);
      v157 = *(v155 + v368);
      v158 = *(v155 + v368 + 8);
      v369 = v518;
      if (swift_getEnumCaseMultiPayload() != 18)
      {
LABEL_130:

        v374 = &qword_1EB6E4050;
        v375 = &unk_1B0EC2B20;
        goto LABEL_154;
      }

      v160 = *(v369 + v368);
      v517 = *(v369 + v368 + 8);
      v161 = v369;
      v162 = v478;
LABEL_127:
      sub_1B03C60A4(v161, v162, &qword_1EB6E4050, &unk_1B0EC2B20);
      v370 = sub_1B0E1A984(v155, v162);
      sub_1B0398EFC(v155, &qword_1EB6E4050, &unk_1B0EC2B20);
      if ((v370 & 1) == 0)
      {
        v439 = &qword_1EB6E4050;
        v440 = &unk_1B0EC2B20;
        goto LABEL_275;
      }

      if ((v158 | (v158 << 32)) == (v517 | (v517 << 32)))
      {
        v371 = _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v157, v160);

        v372 = &qword_1EB6E4050;
        v373 = &unk_1B0EC2B20;
        goto LABEL_151;
      }

      v450 = &qword_1EB6E4050;
      v451 = &unk_1B0EC2B20;
      goto LABEL_246;
    case 0x13u:
      v404 = v492;
      sub_1B0D73230(v103, v492, type metadata accessor for Command);
      v405 = *(v404 + 8);
      v406 = *(v404 + 16);
      v407 = v518;
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        goto LABEL_196;
      }

      v408 = *(v407 + 8);
      v409 = *(v407 + 16);
      if (sub_1B045202C(v405, v408))
      {
        v410 = sub_1B0C2DAB0(v406, v409);

        if (v410)
        {
          goto LABEL_269;
        }
      }

      else
      {
      }

      goto LABEL_278;
    case 0x14u:
      v323 = v494;
      sub_1B0D73230(v103, v494, type metadata accessor for Command);
      v325 = *(v323 + 8);
      v324 = *(v323 + 16);
      v326 = *(v323 + 24);
      v327 = v518;
      if (swift_getEnumCaseMultiPayload() != 20)
      {
        goto LABEL_210;
      }

      if (*v323 != *v327)
      {
        goto LABEL_278;
      }

      if (v326)
      {
        if (*(v327 + 24))
        {
          goto LABEL_269;
        }

        goto LABEL_278;
      }

      if ((*(v327 + 24) & 1) != 0 || v325 != *(v327 + 8) || v324 != *(v327 + 16))
      {
        goto LABEL_278;
      }

      goto LABEL_269;
    case 0x15u:
      v155 = v499;
      sub_1B0D73230(v103, v499, type metadata accessor for Command);
      v340 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7248, &qword_1B0EF1228) + 48);
      v341 = *(v155 + v340);
      v342 = *(v155 + v340 + 8);
      v343 = v518;
      if (swift_getEnumCaseMultiPayload() != 21)
      {
        goto LABEL_153;
      }

      v344 = *(v343 + v340);
      v517 = *(v343 + v340 + 8);
      v345 = v343;
      v162 = v479;
      goto LABEL_148;
    case 0x16u:
      v155 = v500;
      sub_1B0D73230(v103, v500, type metadata accessor for Command);
      v400 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7248, &qword_1B0EF1228) + 48);
      v341 = *(v155 + v400);
      v342 = *(v155 + v400 + 8);
      v401 = v518;
      if (swift_getEnumCaseMultiPayload() != 22)
      {
LABEL_153:

        v374 = &qword_1EB6E3EB0;
        v375 = &unk_1B0EC2010;
LABEL_154:
        v403 = v155;
        goto LABEL_209;
      }

      v344 = *(v401 + v400);
      v517 = *(v401 + v400 + 8);
      v345 = v401;
      v162 = v480;
LABEL_148:
      sub_1B03C60A4(v345, v162, &qword_1EB6E3EB0, &unk_1B0EC2010);
      v402 = sub_1B0E1A698(v155, v162);
      sub_1B0398EFC(v155, &qword_1EB6E3EB0, &unk_1B0EC2010);
      if ((v402 & 1) == 0)
      {
        v439 = &qword_1EB6E3EB0;
        v440 = &unk_1B0EC2010;
        goto LABEL_275;
      }

      if ((v342 | (v342 << 32)) == (v517 | (v517 << 32)))
      {
        v371 = _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v341, v344);

        v372 = &qword_1EB6E3EB0;
        v373 = &unk_1B0EC2010;
LABEL_151:
        sub_1B0398EFC(v162, v372, v373);
        if (v371)
        {
LABEL_269:
          v312 = v103;
          goto LABEL_270;
        }
      }

      else
      {

        v450 = &qword_1EB6E3EB0;
        v451 = &unk_1B0EC2010;
LABEL_246:
        sub_1B0398EFC(v162, v450, v451);
      }

      goto LABEL_278;
    case 0x17u:
      v256 = v503;
      sub_1B0D73230(v103, v503, type metadata accessor for Command);
      v411 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7240, &qword_1B0EF1220);
      v412 = *(v411 + 48);
      v413 = *(v256 + v412);
      v414 = *(v411 + 64);
      v415 = *(v256 + v414);
      v416 = v518;
      if (swift_getEnumCaseMultiPayload() != 23)
      {

LABEL_207:
        v374 = &qword_1EB6E3EB0;
        v375 = &unk_1B0EC2010;
LABEL_208:
        v403 = v256;
        goto LABEL_209;
      }

      v517 = v415;
      v417 = *(v416 + v412);
      v418 = *(v416 + v414);
      v162 = v481;
      sub_1B03C60A4(v416, v481, &qword_1EB6E3EB0, &unk_1B0EC2010);
      v419 = sub_1B0E1A698(v256, v162);
      sub_1B0398EFC(v256, &qword_1EB6E3EB0, &unk_1B0EC2010);
      if (v419)
      {
        v420 = sub_1B0CFD500(v413, v417);

        if (v420)
        {
          v267 = v162;
          v132 = sub_1B0D349B0(v517, v418);

          v268 = &qword_1EB6E3EB0;
          v269 = &unk_1B0EC2010;
LABEL_167:
          sub_1B0398EFC(v267, v268, v269);
          goto LABEL_282;
        }

        v439 = &qword_1EB6E3EB0;
        v440 = &unk_1B0EC2010;
LABEL_275:
        sub_1B0398EFC(v162, v439, v440);
      }

      else
      {
        v452 = &qword_1EB6E3EB0;
        v453 = &unk_1B0EC2010;
LABEL_249:
        sub_1B0398EFC(v162, v452, v453);
      }

      goto LABEL_276;
    case 0x18u:
      v238 = v498;
      sub_1B0D73230(v103, v498, type metadata accessor for Command);
      v239 = *v238;
      v240 = v238[1];
      v242 = v238[2];
      v241 = v238[3];
      v243 = v518;
      if (swift_getEnumCaseMultiPayload() != 24)
      {

        sub_1B0B239C8(v239);
        goto LABEL_210;
      }

      v517 = v103;
      v244 = *v243;
      v245 = v243[1];
      v247 = v243[2];
      v246 = v243[3];
      if ((static SearchKey.__derived_enum_equals(_:_:)(v239, v244) & 1) == 0)
      {

        sub_1B0B239C8(v244);
        sub_1B0B239C8(v239);
        goto LABEL_311;
      }

      if (v242)
      {
        if (!v247)
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0B239C8(v244);
          sub_1B0B239C8(v239);
          swift_bridgeObjectRelease_n();
          goto LABEL_324;
        }

        if (v240 == v245 && v242 == v247)
        {
        }

        else
        {
          v464 = sub_1B0E46A78();

          if ((v464 & 1) == 0)
          {
            sub_1B0B239C8(v244);
            sub_1B0B239C8(v239);
            goto LABEL_324;
          }
        }
      }

      else if (v247)
      {
        sub_1B0B239C8(v244);
        sub_1B0B239C8(v239);
LABEL_293:

        goto LABEL_325;
      }

      v132 = sub_1B0CFE01C(v241, v246);
      sub_1B0B239C8(v244);
      sub_1B0B239C8(v239);
LABEL_317:

      goto LABEL_318;
    case 0x19u:
      v136 = v508;
      sub_1B0D73230(v103, v508, type metadata accessor for Command);
      v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7238, &qword_1B0EF1218);
      v225 = *(v224 + 48);
      v226 = *(v136 + v225);
      v227 = *(v224 + 64);
      v229 = *(v136 + v227);
      v228 = *(v136 + v227 + 8);
      v230 = v518;
      if (swift_getEnumCaseMultiPayload() != 25)
      {
        sub_1B0D72504();

        v374 = &qword_1EB6E3EB0;
        v375 = &unk_1B0EC2010;
LABEL_191:
        v403 = v136;
LABEL_209:
        sub_1B0398EFC(v403, v374, v375);
        goto LABEL_210;
      }

      v231 = *(v230 + v225);
      v232 = *(v230 + v227 + 8);
      v516 = *(v230 + v227);
      v517 = v103;
      v515 = v232;
      v146 = v483;
      sub_1B03C60A4(v230, v483, &qword_1EB6E3EB0, &unk_1B0EC2010);
      v233 = sub_1B0E1A698(v136, v146);
      sub_1B0398EFC(v136, &qword_1EB6E3EB0, &unk_1B0EC2010);
      if ((v233 & 1) == 0)
      {
        v443 = &qword_1EB6E3EB0;
        v444 = &unk_1B0EC2010;
LABEL_231:
        sub_1B0398EFC(v146, v443, v444);
        sub_1B0D72504();

        sub_1B0D72504();
        goto LABEL_311;
      }

      v234 = v515;
      v235 = v516;
      v236 = sub_1B0D34A04(v226, v231);

      v151 = v517;
      if (v236)
      {
        v132 = _s12NIOIMAPCore29StoreDataO21__derived_enum_equalsySbAC_ACtFZ_0(v229, v228, v235, v234);
        sub_1B0D72504();
        sub_1B0D72504();
        v152 = &qword_1EB6E3EB0;
        v153 = &unk_1B0EC2010;
        v154 = v483;
LABEL_62:
        sub_1B0398EFC(v154, v152, v153);
        v237 = v151;
        goto LABEL_283;
      }

      v458 = &qword_1EB6E3EB0;
      v459 = &unk_1B0EC2010;
      v460 = v483;
LABEL_264:
      sub_1B0398EFC(v460, v458, v459);
      sub_1B0D72504();
      sub_1B0D72504();
      v454 = v151;
      goto LABEL_312;
    case 0x1Au:
      v256 = v505;
      sub_1B0D73230(v103, v505, type metadata accessor for Command);
      v436 = v518;
      if (swift_getEnumCaseMultiPayload() != 26)
      {
        goto LABEL_207;
      }

      v437 = v436;
      v438 = v476;
      sub_1B03C60A4(v437, v476, &qword_1EB6E3EB0, &unk_1B0EC2010);
      v132 = sub_1B0E1A698(v256, v438);
      sub_1B0398EFC(v438, &qword_1EB6E3EB0, &unk_1B0EC2010);
      sub_1B0398EFC(v256, &qword_1EB6E3EB0, &unk_1B0EC2010);
      goto LABEL_282;
    case 0x1Bu:
      v129 = v501;
      sub_1B0D73230(v103, v501, type metadata accessor for Command);
      v130 = *v129;
      v131 = v518;
      if (swift_getEnumCaseMultiPayload() != 27)
      {
        goto LABEL_197;
      }

      v132 = sub_1B0C2DB54(v130, *(v129 + 8), *(v129 + 16) | (*(v129 + 22) << 48) | (*(v129 + 20) << 32), *v131, *(v131 + 8), *(v131 + 16) | (*(v131 + 20) << 32) | (*(v131 + 22) << 48));

      goto LABEL_282;
    case 0x1Cu:
      v221 = v502;
      sub_1B0D73230(v103, v502, type metadata accessor for Command);
      v222 = *v221;
      v223 = v518;
      if (swift_getEnumCaseMultiPayload() != 28)
      {
        goto LABEL_86;
      }

LABEL_169:
      v298 = *(v221 + 8);
LABEL_170:
      if ((v298 | (v298 << 32)) != (*(v223 + 8) | (*(v223 + 8) << 32)))
      {
        goto LABEL_276;
      }

      v421 = _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v222, *v223);
      goto LABEL_215;
    case 0x1Du:
      v422 = v506;
      sub_1B0D73230(v103, v506, type metadata accessor for Command);
      v423 = *v422;
      v424 = *(v422 + 24);
      v425 = v518;
      if (swift_getEnumCaseMultiPayload() != 29)
      {

        goto LABEL_86;
      }

      v426 = *(v422 + 22);
      v427 = *(v422 + 20);
      v428 = *(v422 + 16);
      v429 = *(v422 + 8);
      v431 = *v425;
      v430 = *(v425 + 8);
      v432 = *(v425 + 16);
      v433 = *(v425 + 20);
      v434 = *(v425 + 22);
      v435 = *(v425 + 24);
      if (sub_1B0C2DB54(v423, v429, v428 | (v426 << 48) | (v427 << 32), v431, v430, v432 | (v433 << 32) | (v434 << 48)))
      {
        v132 = sub_1B0D35B10(v424, v435);

        goto LABEL_282;
      }

      goto LABEL_276;
    case 0x1Eu:
      v517 = v103;
      v385 = v504;
      sub_1B0D73230(v103, v504, type metadata accessor for Command);
      v387 = *v385;
      v386 = *(v385 + 8);
      v388 = *(v385 + 16);
      v389 = v518;
      if (swift_getEnumCaseMultiPayload() != 30)
      {

LABEL_203:

        v103 = v517;
        goto LABEL_210;
      }

      v390 = *(v389 + 8);
      v391 = *(v389 + 16);
      v392 = sub_1B0D35BCC(v387, *v389);

      if ((v392 & 1) == 0)
      {

        goto LABEL_310;
      }

      if ((v388 | (v388 << 32)) == (v391 | (v391 << 32)))
      {
        v393 = _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v386, v390);

        v304 = v517;
        if (v393)
        {
          v132 = sub_1B0D3CF14();

          v237 = v304;
          goto LABEL_283;
        }
      }

      else
      {

        v304 = v517;
      }

      goto LABEL_273;
    case 0x1Fu:
      v299 = v509;
      sub_1B0D73230(v103, v509, type metadata accessor for Command);
      v300 = *v299;
      v301 = *(v299 + 24);
      v302 = *(v299 + 32);
      v303 = v518;
      if (swift_getEnumCaseMultiPayload() != 31)
      {

LABEL_196:

LABEL_197:

LABEL_210:
        sub_1B0398EFC(v103, &qword_1EB6E72F0, &qword_1B0EF1368);
        goto LABEL_313;
      }

      v304 = v103;
      v305 = *(v299 + 8);
      v306 = *v303;
      v307 = *(v303 + 8);
      v308 = *(v303 + 24);
      v517 = *(v303 + 16);
      v309 = *(v303 + 32);
      if ((v305 | (v305 << 32)) == (v307 | (v307 << 32)))
      {
        v310 = _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v300, v306);

        if (v310 & 1) != 0 && (sub_1B0D3A070(v301, v308))
        {
          v311 = sub_1B0D3A1B8(v302, v309);

          if (v311)
          {
            v312 = v304;
            goto LABEL_270;
          }

          goto LABEL_273;
        }
      }

      else
      {
      }

LABEL_273:
      v454 = v304;
      goto LABEL_312;
    case 0x20u:
      v394 = v507;
      sub_1B0D73230(v103, v507, type metadata accessor for Command);
      v395 = v394[1];
      v546 = *v394;
      v547 = v395;
      v396 = v394[3];
      v548 = v394[2];
      v549 = v396;
      v397 = v518;
      if (swift_getEnumCaseMultiPayload() == 32)
      {
        v398 = v397[1];
        v525 = *v397;
        v526 = v398;
        v399 = v397[3];
        v527[0] = v397[2];
        v527[1] = v399;
        v132 = _s12NIOIMAPCore221ExtendedSearchOptionsV23__derived_struct_equalsySbAC_ACtFZ_0(&v546, &v525);
        sub_1B0D724B0(&v525);
        sub_1B0D724B0(&v546);
        goto LABEL_282;
      }

      sub_1B0D724B0(&v546);
      goto LABEL_210;
    case 0x21u:
      v163 = v510;
      sub_1B0D73230(v103, v510, type metadata accessor for Command);
      v164 = *v163;
      v165 = *(v163 + 8);
      v166 = *(v163 + 16);
      v167 = v518;
      if (swift_getEnumCaseMultiPayload() != 33)
      {
LABEL_185:

        goto LABEL_210;
      }

      v168 = *v167;
      v169 = *(v167 + 16);
      if (v164)
      {
        if (!v168)
        {
          goto LABEL_182;
        }

        if ((v165 | (v165 << 32)) != (*(v167 + 8) | (*(v167 + 8) << 32)))
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

          swift_bridgeObjectRelease_n();
LABEL_276:

LABEL_277:

LABEL_278:
          v454 = v103;
          goto LABEL_312;
        }

        v170 = _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v164, *v167);

        if ((v170 & 1) == 0)
        {
          goto LABEL_276;
        }
      }

      else if (v168)
      {

        goto LABEL_277;
      }

      v114 = sub_1B0D3CF1C(v166, v169);
      goto LABEL_280;
    case 0x22u:
      v133 = v511;
      sub_1B0D73230(v103, v511, type metadata accessor for Command);
      v134 = *v133;
      v135 = v518;
      if (swift_getEnumCaseMultiPayload() != 34)
      {
        goto LABEL_86;
      }

      v114 = sub_1B0D35C20(v134, *v135);
      goto LABEL_280;
    case 0x23u:
      sub_1B0D73230(v103, v512, type metadata accessor for Command);
      if (swift_getEnumCaseMultiPayload() != 35)
      {
        goto LABEL_86;
      }

      v114 = sub_1B0D3CF14();
      goto LABEL_280;
    case 0x24u:
      v123 = v513;
      sub_1B0D73230(v103, v513, type metadata accessor for Command);
      v125 = *v123;
      v124 = v123[1];
      v126 = v518;
      if (swift_getEnumCaseMultiPayload() != 36)
      {
        goto LABEL_86;
      }

      v127 = *v126;
      v128 = v126[1];
      if (v125 == v127 && v124 == v128)
      {
        goto LABEL_19;
      }

      v421 = sub_1B0E46A78();
LABEL_215:
      v442 = v421;

      goto LABEL_216;
    case 0x25u:
      v115 = v514;
      sub_1B0D73230(v103, v514, type metadata accessor for Command);
      v117 = *v115;
      v116 = v115[1];
      v118 = v115[2];
      v119 = v518;
      if (swift_getEnumCaseMultiPayload() != 37)
      {
        goto LABEL_85;
      }

      v120 = *v119;
      v121 = v119[1];
      v122 = v119[2];
      if (v117 == v120 && v116 == v121)
      {
      }

      else
      {
        v441 = sub_1B0E46A78();

        if ((v441 & 1) == 0)
        {
          goto LABEL_276;
        }
      }

      v114 = sub_1B0D35E30(v118, v122);
      goto LABEL_280;
    case 0x26u:
      if (swift_getEnumCaseMultiPayload() == 38)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x27u:
      if (swift_getEnumCaseMultiPayload() == 39)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x28u:
      if (swift_getEnumCaseMultiPayload() == 40)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x29u:
      if (swift_getEnumCaseMultiPayload() == 41)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x2Au:
      if (swift_getEnumCaseMultiPayload() == 42)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x2Bu:
      if (swift_getEnumCaseMultiPayload() == 43)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x2Cu:
      if (swift_getEnumCaseMultiPayload() == 44)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x2Du:
      if (swift_getEnumCaseMultiPayload() == 45)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x2Eu:
      if (swift_getEnumCaseMultiPayload() == 46)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x2Fu:
      if (swift_getEnumCaseMultiPayload() == 47)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    default:
      sub_1B0D73230(v103, v100, type metadata accessor for Command);
      v107 = *v100;
      v108 = *(v100 + 2);
      v109 = v518;
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_85:

LABEL_86:

        goto LABEL_210;
      }

      v110 = *v109;
      v111 = *(v109 + 8);
      v112 = *(v109 + 16);
      if ((*(v100 + 2) | (*(v100 + 2) << 32)) != (v111 | (v111 << 32)))
      {
LABEL_181:

LABEL_182:

        goto LABEL_276;
      }

      v113 = _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v107, v110);

      if ((v113 & 1) == 0)
      {
        goto LABEL_276;
      }

      v114 = sub_1B0D32464(v108, v112);
LABEL_280:
      v132 = v114;

LABEL_281:

LABEL_282:
      v237 = v103;
      goto LABEL_283;
  }
}

unint64_t sub_1B0D72544()
{
  result = qword_1EB6E7270;
  if (!qword_1EB6E7270)
  {
    type metadata accessor for Command(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7270);
  }

  return result;
}

void sub_1B0D7259C(uint64_t a1)
{
  sub_1B0D72E24(319, &qword_1EB6DE948, &qword_1EB6E7278, "^Z\a", &type metadata for MailboxName);
  if (v1 <= 0x3F)
  {
    if (v2 <= 0x3F)
    {
      sub_1B0D729E4(319, &qword_1EB6DE628);
      if (v3 <= 0x3F)
      {
        sub_1B0D729E4(319, &qword_1EB6DB558);
        if (v4 <= 0x3F)
        {
          sub_1B0D72B54(319, &qword_1EB6DE988, &type metadata for MailboxName, &type metadata for ByteBuffer, "reference pattern ");
          if (v5 <= 0x3F)
          {
            sub_1B0D72AD8(319);
            if (v6 <= 0x3F)
            {
              sub_1B0D72E24(319, &qword_1EB6DE950, &qword_1EB6E6400, &qword_1B0EF66E0, &type metadata for MailboxName);
              if (v7 <= 0x3F)
              {
                sub_1B0CF2B9C(319);
                if (v8 <= 0x3F)
                {
                  sub_1B0D72B54(319, &qword_1EB6DB6B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], "username password ");
                  if (v9 <= 0x3F)
                  {
                    sub_1B041D6E0(319, &qword_1EB6DB648);
                    if (v10 <= 0x3F)
                    {
                      sub_1B0D72C40(319, &qword_1EB6DE790, &qword_1EB6E4050, &unk_1B0EC2B20);
                      if (v11 <= 0x3F)
                      {
                        sub_1B0D72CA4(319, &qword_1EB6DE780, &qword_1EB6E4050, &unk_1B0EC2B20);
                        if (v12 <= 0x3F)
                        {
                          sub_1B0D72D40(319, &qword_1EB6DE788, &qword_1EB6E4050, &unk_1B0EC2B20);
                          if (v13 <= 0x3F)
                          {
                            sub_1B0D72BAC(319);
                            if (v14 <= 0x3F)
                            {
                              sub_1B041C078(319);
                              if (v15 <= 0x3F)
                              {
                                sub_1B0CF2DD0(319);
                                if (v16 <= 0x3F)
                                {
                                  sub_1B0D72C40(319, &qword_1EB6DE768, &qword_1EB6E3EB0, &unk_1B0EC2010);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_1B0D72CA4(319, &qword_1EB6DE758, &qword_1EB6E3EB0, &unk_1B0EC2010);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_1B0D72D40(319, &qword_1EB6DE760, &qword_1EB6E3EB0, &unk_1B0EC2010);
                                      if (v19 <= 0x3F)
                                      {
                                        sub_1B0D72DC8(319);
                                        if (v20 <= 0x3F)
                                        {
                                          sub_1B0D72E24(319, &qword_1EB6DE060, &qword_1EB6E72B0, &qword_1B0EF1330, &type metadata for QuotaRoot);
                                          if (v21 <= 0x3F)
                                          {
                                            sub_1B0D72E90(319);
                                            if (v22 <= 0x3F)
                                            {
                                              sub_1B0D72F24(319);
                                              if (v23 <= 0x3F)
                                              {
                                                sub_1B0D72F9C(319);
                                                if (v24 <= 0x3F)
                                                {
                                                  sub_1B041D6E0(319, &qword_1EB6DB5A0);
                                                  if (v25 <= 0x3F)
                                                  {
                                                    sub_1B041D6E0(319, &unk_1EB6DB650);
                                                    if (v26 <= 0x3F)
                                                    {
                                                      sub_1B0D73028(319);
                                                      if (v27 <= 0x3F)
                                                      {
                                                        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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
      }
    }
  }
}

void sub_1B0D729E4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    MEMORY[0x1EEE9AC00](0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E63F8, &qword_1B0EE63C0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata, a2);
    }
  }
}

void sub_1B0D72AD8(uint64_t a1)
{
  if (!qword_1EB6DE9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E7290, "dZ\a");
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB6DE9B0);
    }
  }
}

void sub_1B0D72B54(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1B0D72BAC(uint64_t a1)
{
  if (!qword_1EB6DE050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3850, &qword_1B0E9B600);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E6410, &qword_1B0EE63D0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB6DE050);
    }
  }
}

void sub_1B0D72C40(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1B0D72CA4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E7298, &qword_1B0EF1318);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E72A0, &qword_1B0EF1320);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_1B0D72D40(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E72A8, &qword_1B0EF1328);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_1B0D72DC8(uint64_t a1)
{
  if (!qword_1EB6DE770)
  {
    v2 = sub_1B041C1E8();
    CommandSet = type metadata accessor for LastCommandSet(a1, &type metadata for UID, v2, v3);
    if (!v5)
    {
      atomic_store(CommandSet, &qword_1EB6DE770);
    }
  }
}

void sub_1B0D72E24(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1B0D72E90(uint64_t a1)
{
  if (!qword_1EB6DB5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E72B8, &qword_1B0EF1338);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E72C0, &qword_1B0EF1340);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB6DB5E8);
    }
  }
}

void sub_1B0D72F24(uint64_t a1)
{
  if (!qword_1EB6DE990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E72C8, &qword_1B0EF1348);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6DE990);
    }
  }
}

void sub_1B0D72F9C(uint64_t a1)
{
  if (!qword_1EB6DE970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E63F0, &unk_1B0EE7CA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E72D0, &qword_1B0EF1350);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6DE970);
    }
  }
}

void sub_1B0D73028(uint64_t a1)
{
  if (!qword_1EB6DB6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E72D8, &qword_1B0EF1358);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6DB6C8);
    }
  }
}

uint64_t sub_1B0D730A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2790, &qword_1B0E9CC60);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B0D73230(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0D732E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, uint64_t, void, void, void, void, void, void)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(*a1, a2, *(v4 + 16), *(v4 + 24), *(v4 + 32), **(v4 + 40), *(v4 + 48), *(v4 + 56));
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1B0D733FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B0D7347C()
{
  v1 = *v0;
  v2 = 2 * *(*v0 + 16);
  if (v2 < 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = MEMORY[0x1E69E7CC0];
  sub_1B0D7DEFC();
  v3 = v0[1];
  v4 = *(v1 + 16);
  if (v4 < v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = (2 * v4) | 1;

  sub_1B0D735A4(v6, v1 + 32, v3, v5);
  v7 = v0[2];
  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(v1 + 16) < v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = (2 * v7) | 1;

  sub_1B0D735A4(v9, v1 + 32, 0, v8);
  v10 = *(v11 + 16);
  if (v2 - v10 >= 0)
  {
    sub_1B0D736C4(v2 - v10, 0, 1);

    v0[1] = 0;
    v0[2] = v10;
    *v0 = v11;
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_1B0D735A4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = *v4;
  v10 = *(*v4 + 16);
  if (__OFADD__(v10, v8))
  {
LABEL_15:
    __break(1u);
    goto LABEL_8;
  }

  v5 = a3;
  v6 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v9;
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v12 = *(v9 + 24) >> 1;
  if (v12 < v10 + v8)
  {
    goto LABEL_8;
  }

  if (v7 == v5)
  {
    while (v8 > 0)
    {
      __break(1u);
LABEL_8:
      isUniquelyReferenced_nonNull_native = sub_1B0D7DEFC();
      v9 = *v4;
      v12 = *(*v4 + 24) >> 1;
      if (v7 != v5)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_13;
  }

LABEL_9:
  v13 = *(v9 + 16);
  if (v12 - v13 < v8)
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = memcpy((v9 + 16 * v13 + 32), (v6 + 16 * v5), 16 * v8);
    if (v8 <= 0)
    {
LABEL_13:
      isUniquelyReferenced_nonNull_native = swift_unknownObjectRelease();
      *v4 = v9;
      return isUniquelyReferenced_nonNull_native;
    }

    v14 = *(v9 + 16);
    v15 = __OFADD__(v14, v8);
    v16 = v14 + v8;
    if (!v15)
    {
      *(v9 + 16) = v16;
      goto LABEL_13;
    }
  }

  __break(1u);
  return isUniquelyReferenced_nonNull_native;
}

uint64_t sub_1B0D736C4(uint64_t result, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *(*v3 + 16);
  v6 = v5 + result;
  if (__OFADD__(v5, result))
  {
    goto LABEL_38;
  }

  v9 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v4;
  if (!result || (v10 = *(v4 + 24) >> 1, v10 < v6))
  {
    result = sub_1B0D7DEFC();
    v4 = *v3;
    v10 = *(*v3 + 24) >> 1;
  }

  v11 = *(v4 + 16);
  v12 = v10 - v11;
  if (v10 == v11)
  {
    if (v9 > 0)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v13 = 0;
  }

  else
  {
    if (v12 < 1)
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v13 = v9;
    if (v9)
    {
      v13 = v10 - v11;
      v14 = v9 & ~(v9 >> 63);
      v15 = v4 + 16 * v11 + 32;
      v16 = ~v11 + v10;
      v17 = v9;
      while (v14)
      {
        *v15 = a2;
        *(v15 + 8) = a3 & 1;
        if (!v16)
        {
          if (v12 < v9)
          {
            goto LABEL_39;
          }

          goto LABEL_16;
        }

        v15 += 16;
        --v14;
        --v16;
        if (!--v17)
        {
          v13 = v9;
          goto LABEL_16;
        }
      }

      goto LABEL_37;
    }

LABEL_16:
    if (v13 > 0)
    {
      v18 = *(v4 + 16);
      v19 = __OFADD__(v18, v13);
      v20 = v18 + v13;
      if (v19)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      *(v4 + 16) = v20;
    }
  }

  if (v13 != v12 || v12 == v9)
  {
LABEL_34:
    *v3 = v4;
    return result;
  }

  if (v12 < v9)
  {
    v21 = *(v4 + 16);
    v22 = v12 + 1;
    while (1)
    {
      if (v21 + 1 > *(v4 + 24) >> 1)
      {
        result = sub_1B0D7DEFC();
      }

      v4 = *v3;
      v23 = *(*v3 + 24) >> 1;
      if (v21 < v23)
      {
        break;
      }

LABEL_23:
      *(v4 + 16) = v21;
    }

    v24 = 0;
    v25 = v22 + v23 - v21;
    v26 = (v4 + 16 * v21 + 40);
    while (1)
    {
      *(v26 - 1) = a2;
      *v26 = a3 & 1;
      if (v9 - v22 == v24)
      {
        break;
      }

      if (v22 < 0 || v22 + v24 >= v9)
      {
        goto LABEL_36;
      }

      ++v24;
      v26 += 16;
      if (!(v21 - v23 + v24))
      {
        v21 = v23;
        v22 = v25;
        goto LABEL_23;
      }
    }

    *(v4 + 16) = v21 + v24 + 1;
    goto LABEL_34;
  }

LABEL_41:
  __break(1u);
  return result;
}

void sub_1B0D738D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 > 0xFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (((a4 | a3) & 0x8000000000000000) == 0)
  {
    if (a4 > 0xFFFFFFFFLL)
    {
      goto LABEL_20;
    }

    if (a3 == a4 && a4 >= a3)
    {
      return;
    }

    LODWORD(v7) = a3;
    while (1)
    {
      v8 = *(a2 + 16);
      if (v7 >= v8)
      {
        break;
      }

      v9 = a2 + 32 + 16 * v7;
      if (*(v9 + 8))
      {
        goto LABEL_21;
      }

      v7 = (v8 - 1) & (v7 + 1);
      if (HIDWORD(v7))
      {
        goto LABEL_17;
      }

      MEMORY[0x1B2728D70](*v9);
      if (a4 < a3 != v7 >= a3 && v7 == a4)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}