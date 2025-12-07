_BYTE *storeEnumTagSinglePayload for InferredModeType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C493C9E8()
{
  result = qword_1EC0BFA08;
  if (!qword_1EC0BFA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFA08);
  }

  return result;
}

uint64_t sub_1C493CA4C()
{
  sub_1C4EFBC08();
  if (v0)
  {
    return 0;
  }

  if (!sub_1C4EFBBE8())
  {
    sub_1C4405D1C(MEMORY[0x1E69E6158]);
    return v5;
  }

  sub_1C443FCEC();
  if (v1 == v2)
  {
    sub_1C4416168();
    if (!(v1 ^ v2 | v3))
    {
      goto LABEL_11;
    }

    if (sub_1C4426BD4() != 5)
    {
      sub_1C4404C28();
      return sub_1C4F011E8();
    }

    return 0;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  sub_1C4413308();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1C493CB08()
{
  v0 = sub_1C4EFBC08();
  if (v1)
  {
    return v0;
  }

  if (!sub_1C4EFBBE8())
  {
    sub_1C4405D1C(MEMORY[0x1E69E6530]);
    return v6;
  }

  sub_1C443FCEC();
  if (v2 != v3)
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_1C4416168();
  if (v2 ^ v3 | v4)
  {
    if (sub_1C4426BD4() == 5)
    {
      return 0;
    }

    sub_1C4404C28();
    return sub_1C4F02AA8();
  }

LABEL_14:
  __break(1u);
  sub_1C4413308();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1C493CBD4()
{
  sub_1C4EFBC08();
  if (v0)
  {
    return 0;
  }

  if (!sub_1C4EFBBE8())
  {
    sub_1C4405D1C(MEMORY[0x1E69E7360]);
    return v5;
  }

  sub_1C443FCEC();
  if (v1 == v2)
  {
    sub_1C4416168();
    if (!(v1 ^ v2 | v3))
    {
      goto LABEL_11;
    }

    if (sub_1C4426BD4() != 5)
    {
      sub_1C4404C28();
      return sub_1C4F02AA8();
    }

    return 0;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  sub_1C4413308();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1C493CC98()
{
  sub_1C4EFBC08();
  if (v0)
  {
    return 0;
  }

  if (!sub_1C4EFBBE8())
  {
    sub_1C4405D1C(MEMORY[0x1E69E63B0]);
    return v6;
  }

  sub_1C443FCEC();
  if (v1 == v2)
  {
    sub_1C4416168();
    if (!(v1 ^ v2 | v3))
    {
      goto LABEL_11;
    }

    if (sub_1C4426BD4() != 5)
    {
      sub_1C4404C28();
      sub_1C4F01A08();
      return v5;
    }

    return 0;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  sub_1C4413308();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

sqlite3_stmt *sub_1C493CD60@<X0>(sqlite3_stmt **a1@<X8>)
{
  v2 = sub_1C4EFBC08();
  if (v3)
  {
    goto LABEL_6;
  }

  v4 = v2;
  result = sub_1C4EFBBE8();
  if (!result)
  {
    return sub_1C4EFBBF8();
  }

  if (v4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v4 <= 0x7FFFFFFF)
  {
    if (sqlite3_column_type(result, v4) != 5)
    {
      result = sub_1C4EF99A8();
      goto LABEL_7;
    }

LABEL_6:
    result = 0;
    v6 = 0xF000000000000000;
LABEL_7:
    *a1 = result;
    a1[1] = v6;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t InferredTriple.subject.getter()
{
  sub_1C44059B8();
  sub_1C4EFF0C8();
  sub_1C43FBCE0();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t InferredTriple.predicate.getter()
{
  v0 = sub_1C44059B8();
  type metadata accessor for InferredTriple(v0);
  sub_1C4EFEEF8();
  sub_1C43FBCE0();
  v1 = sub_1C4409DB8();

  return v2(v1);
}

uint64_t type metadata accessor for InferredTriple(uint64_t a1)
{
  result = qword_1EDDE97A8;
  if (!qword_1EDDE97A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InferredTriple.relationshipId.getter()
{
  v0 = sub_1C44059B8();
  type metadata accessor for InferredTriple(v0);
  sub_1C4EFF8A8();
  sub_1C43FBCE0();
  v1 = sub_1C4409DB8();

  return v2(v1);
}

uint64_t InferredTriple.relationshipPredicate.getter()
{
  v0 = sub_1C44059B8();
  type metadata accessor for InferredTriple(v0);
  sub_1C4EFEEF8();
  sub_1C43FBCE0();
  v1 = sub_1C4409DB8();

  return v2(v1);
}

uint64_t InferredTriple.object.getter()
{
  v1 = *(v0 + *(type metadata accessor for InferredTriple(0) + 32));
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t InferredTriple.sources.getter()
{
  v2 = sub_1C44059B8();
  result = type metadata accessor for InferredTriple(v2);
  *v0 = *(v1 + *(result + 40));
  return result;
}

uint64_t InferredTriple.init(subject:predicate:relationshipId:relationshipPredicate:object:score:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9)
{
  v16 = sub_1C44059B8();
  v17 = type metadata accessor for InferredTriple(v16);
  v18 = v17[10];
  if (qword_1EDDDBDD8 != -1)
  {
    sub_1C44334B8(&qword_1EDDDBDD8);
  }

  *(v9 + v18) = qword_1EDE2C8F8;
  sub_1C4EFF0C8();
  sub_1C43FBCE0();
  (*(v19 + 32))(v9, a1);
  v20 = v17[5];
  v21 = sub_1C4EFEEF8();
  sub_1C43FBCE0();
  v23 = *(v22 + 32);
  v23(v9 + v20, a2, v21);
  v24 = (v9 + v17[8]);
  *v24 = a5;
  v24[1] = a6;
  v25 = v9 + v17[9];
  *v25 = a7;
  *(v25 + 8) = a8 & 1;
  v26 = v17[6];
  sub_1C4EFF8A8();
  sub_1C43FBCE0();
  (*(v27 + 32))(v9 + v26, a3);
  result = (v23)(v9 + v17[7], a4, v21);
  *(v9 + v17[11]) = a9;
  return result;
}

uint64_t InferredTriple.init(row:)()
{
  sub_1C44059B8();
  v2 = sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v49 = v3;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C4406BA0();
  v5 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  v14 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v48 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v47 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C493E9BC();
  sub_1C4410E18();
  sub_1C493E9BC();
  sub_1C493E9BC();
  sub_1C4410E18();
  sub_1C493E9BC();
  v50 = v14;
  sub_1C493DD18();
  v45 = v19;
  v46 = v18;
  v43 = v13;
  v44 = v5;
  v51 = v10;
  v52 = v1;
  v20 = sub_1C493CC98();
  v22 = v21;
  sub_1C493E370(0x6D617473656D6974, 0xE900000000000070, v23, v24, v25, v26, v27, v28, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
  v30 = v29;
  v31 = v49;
  v32 = v2;
  v33 = type metadata accessor for InferredTriple(0);
  v34 = v33[10];
  if (qword_1EDDDBDD8 != -1)
  {
    sub_1C44334B8(&qword_1EDDDBDD8);
  }

  v35 = qword_1EDE2C8F8;

  *(v0 + v34) = v35;
  (*(v48 + 32))(v0, v47, v50);
  v36 = *(v7 + 32);
  v37 = v44;
  v36(v0 + v33[5], v43, v44);
  v38 = (v0 + v33[8]);
  v39 = v45;
  *v38 = v46;
  v38[1] = v39;
  v40 = v0 + v33[9];
  *v40 = v20;
  *(v40 + 8) = v22 & 1;
  (*(v31 + 32))(v0 + v33[6], v52, v32);
  result = (v36)(v0 + v33[7], v51, v37);
  *(v0 + v33[11]) = v30;
  return result;
}

uint64_t InferredTriple.databaseValueRepresentation.getter()
{
  v1 = v0;
  sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C4F3B920;
  v3 = sub_1C4EFB258();
  v4 = MEMORY[0x1E699FE38];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  v5 = v4;
  sub_1C4422F90((v2 + 32));
  sub_1C4EFF058();
  v6 = type metadata accessor for InferredTriple(0);
  *(v2 + 96) = v3;
  *(v2 + 104) = v5;
  sub_1C4422F90((v2 + 72));
  sub_1C4EFEEF8();
  v7 = MEMORY[0x1E69A9748];
  sub_1C493EDA4(&qword_1EC0BFA10, MEMORY[0x1E69A9748], MEMORY[0x1E69A9698]);
  sub_1C493EDA4(&qword_1EDDFCCC0, v7, MEMORY[0x1E69A9750]);
  sub_1C493EDA4(&off_1EDDFCCA8, v7, MEMORY[0x1E69A9770]);
  sub_1C441BA00();
  sub_1C4EFBA18();
  *(v2 + 136) = v3;
  v8 = MEMORY[0x1E699FE38];
  *(v2 + 144) = MEMORY[0x1E699FE38];
  sub_1C4422F90((v2 + 112));
  sub_1C4EFF858();
  *(v2 + 176) = v3;
  *(v2 + 184) = v8;
  sub_1C4422F90((v2 + 152));
  sub_1C441BA00();
  v9 = MEMORY[0x1E69A0138];
  sub_1C4EFBA18();
  v10 = (v1 + v6[8]);
  v12 = *v10;
  v11 = v10[1];
  *(v2 + 216) = MEMORY[0x1E69E6158];
  *(v2 + 224) = v9;
  *(v2 + 192) = v12;
  *(v2 + 200) = v11;
  v13 = v1 + v6[9];
  v14 = *v13;
  LODWORD(v5) = *(v13 + 8);
  v15 = MEMORY[0x1E69E63B0];
  v16 = MEMORY[0x1E69A0168];
  *(v2 + 256) = MEMORY[0x1E69E63B0];
  *(v2 + 264) = v16;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v5 == 1)
  {
    v14 = sub_1C4EF92F8();
  }

  *(v2 + 232) = v14;
  v17 = *(v1 + v6[10]);
  *(v2 + 296) = &type metadata for SourceSet;
  *(v2 + 304) = sub_1C493EB98();
  *(v2 + 272) = v17;
  v18 = *(v1 + v6[11]);
  *(v2 + 336) = v15;
  *(v2 + 344) = v16;
  *(v2 + 312) = v18;
  return v2;
}

BOOL static InferredTriple.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1C4EFF088() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for InferredTriple(0);
  if ((sub_1C44DBB50(a1 + v4[5], a2 + v4[5]) & 1) == 0 || (sub_1C4EFF878() & 1) == 0 || (sub_1C44DBB50(a1 + v4[7], a2 + v4[7]) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[8];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[9];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  if (*(a1 + v4[10]) == *(a2 + v4[10]))
  {
    return *(a1 + v4[11]) == *(a2 + v4[11]);
  }

  return 0;
}

uint64_t InferredTriple.hash(into:)(uint64_t a1)
{
  sub_1C4EFF0C8();
  sub_1C493EDA4(&qword_1EDDFE820, MEMORY[0x1E69A9810], MEMORY[0x1E69A9820]);
  sub_1C4F00FE8();
  v2 = type metadata accessor for InferredTriple(0);
  sub_1C4EFEEF8();
  sub_1C493EDA4(&qword_1EDDFCCB8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9758]);
  sub_1C4F00FE8();
  sub_1C4EFF8A8();
  sub_1C493EDA4(&qword_1EDDFE808, MEMORY[0x1E69A99E8], MEMORY[0x1E69A99F8]);
  sub_1C4F00FE8();
  sub_1C4F00FE8();
  sub_1C4F01298();
  v3 = (v1 + v2[9]);
  if (*(v3 + 8) == 1)
  {
    sub_1C4F02B18();
  }

  else
  {
    v4 = *v3;
    sub_1C4F02B18();
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x1C6941830](v5);
  }

  MEMORY[0x1C6941830](*(v1 + v2[10]));
  v6 = *(v1 + v2[11]);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  return MEMORY[0x1C6941830](*&v6);
}

uint64_t InferredTriple.hashValue.getter()
{
  sub_1C4F02AF8();
  InferredTriple.hash(into:)(v1);
  return sub_1C4F02B68();
}

uint64_t sub_1C493DCDC()
{
  sub_1C4F02AF8();
  InferredTriple.hash(into:)(v1);
  return sub_1C4F02B68();
}

void sub_1C493DD18()
{
  sub_1C43FE96C();
  sub_1C44173C0();
  v0 = sub_1C456902C(&qword_1EC0BFA28, &qword_1C4F3BA48);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C43FD934();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4406BA0();
  sub_1C43FE99C();
  sub_1C4EFBC08();
  if (v4)
  {
    v5 = sub_1C4EFBD98();
    v6 = sub_1C441FCF8(v5);
    sub_1C441E424(v6);
    sub_1C4EFB628();
    sub_1C44199D0();
    v9 = sub_1C493EDA4(v7, v8, MEMORY[0x1E699FEA0]);
    sub_1C43FFC70(v9);
    sub_1C4411E4C();
    v10 = sub_1C43FBF04();
    v11(v10);
    swift_willThrow();
LABEL_10:
    sub_1C4402144();
    sub_1C43FBC80();
    return;
  }

  if (!sub_1C4EFBBE8())
  {
    sub_1C4425C54();
    goto LABEL_10;
  }

  sub_1C4404424();
  if (v12 != v13)
  {
    __break(1u);
  }

  else
  {
    sub_1C442DFF8();
    if (v12 ^ v13 | v14)
    {
      sub_1C4403364();
      MEMORY[0x1EEE9AC00](v15);
      v17 = sub_1C440ACA0(v16);
      if (v17 == 5)
      {
        MEMORY[0x1EEE9AC00](v17);
        sub_1C43FD954();
        *(v18 - 16) = sub_1C487BF24;
        *(v18 - 8) = v2;
        sub_1C440060C();
        sub_1C442BC34();
      }

      else
      {
        sub_1C44000C4();
        sub_1C4F011E8();
      }

      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1C493DF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  sub_1C44173C0();
  v20 = sub_1C456902C(&qword_1EC0BFA28, &qword_1C4F3BA48);
  sub_1C43FBD18(v20);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v21);
  v22 = sub_1C43FD934();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C4406BA0();
  sub_1C43FE99C();
  sub_1C4EFBC08();
  if (v24)
  {
    v25 = sub_1C4EFBD98();
    v26 = sub_1C441FCF8(v25);
    sub_1C441E424(v26);
    sub_1C4EFB628();
    sub_1C44199D0();
    v29 = sub_1C493EDA4(v27, v28, MEMORY[0x1E699FEA0]);
    sub_1C43FFC70(v29);
    sub_1C4411E4C();
    v30 = sub_1C43FBF04();
    v31(v30);
    swift_willThrow();
LABEL_10:
    sub_1C4402144();
    sub_1C43FBC80();
    return;
  }

  if (!sub_1C4EFBBE8())
  {
    sub_1C4425C54();
    goto LABEL_10;
  }

  sub_1C4404424();
  if (v32 != v33)
  {
    __break(1u);
  }

  else
  {
    sub_1C442DFF8();
    if (v32 ^ v33 | v34)
    {
      sub_1C4403364();
      MEMORY[0x1EEE9AC00](v35);
      v37 = sub_1C440ACA0(v36);
      if (v37 == 5)
      {
        MEMORY[0x1EEE9AC00](v37);
        sub_1C43FD954();
        *(v38 - 16) = sub_1C487BF24;
        *(v38 - 8) = v22;
        sub_1C440060C();
        sub_1C442BC34();
      }

      else
      {
        sub_1C44000C4();
        sub_1C4F02AA8();
      }

      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1C493E14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C43FE96C();
  sub_1C44173C0();
  v22 = sub_1C456902C(&qword_1EC0BFA28, &qword_1C4F3BA48);
  sub_1C43FBD18(v22);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  v24 = sub_1C43FD934();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C4406BA0();
  sub_1C43FE99C();
  sub_1C4EFBC08();
  if (v26)
  {
    v27 = sub_1C4EFBD98();
    v28 = sub_1C441FCF8(v27);
    sub_1C441E424(v28);
    sub_1C4EFB628();
    sub_1C44199D0();
    v31 = sub_1C493EDA4(v29, v30, MEMORY[0x1E699FEA0]);
    sub_1C43FFC70(v31);
    sub_1C4411E4C();
    v32 = sub_1C43FBF04();
    v33(v32);
    swift_willThrow();
LABEL_11:
    sub_1C4402144();
    sub_1C43FBC80();
    return;
  }

  if (!sub_1C4EFBBE8())
  {
    sub_1C4425C54();
    goto LABEL_11;
  }

  sub_1C4404424();
  if (v34 != v35)
  {
    __break(1u);
  }

  else
  {
    sub_1C442DFF8();
    if (v34 ^ v35 | v36)
    {
      sub_1C4403364();
      MEMORY[0x1EEE9AC00](v37);
      v39 = sub_1C440ACA0(v38);
      if (v39 == 5 || (v39 = sub_1C4F02AA8(), v39 >= 0x10000))
      {
        MEMORY[0x1EEE9AC00](v39);
        sub_1C43FD954();
        *(v40 - 16) = sub_1C487BF24;
        *(v40 - 8) = v24;
        sub_1C440060C();
        sub_1C442BC34();
      }

      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1C493E370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  sub_1C44173C0();
  v20 = sub_1C456902C(&qword_1EC0BFA28, &qword_1C4F3BA48);
  sub_1C43FBD18(v20);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v21);
  v22 = sub_1C43FD934();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C4406BA0();
  sub_1C43FE99C();
  sub_1C4EFBC08();
  if (v24)
  {
    v25 = sub_1C4EFBD98();
    v26 = sub_1C441FCF8(v25);
    sub_1C441E424(v26);
    sub_1C4EFB628();
    sub_1C44199D0();
    v29 = sub_1C493EDA4(v27, v28, MEMORY[0x1E699FEA0]);
    sub_1C43FFC70(v29);
    sub_1C4411E4C();
    v30 = sub_1C43FBF04();
    v31(v30);
    swift_willThrow();
LABEL_10:
    sub_1C4402144();
    sub_1C43FBC80();
    return;
  }

  if (!sub_1C4EFBBE8())
  {
    sub_1C4425C54();
    goto LABEL_10;
  }

  sub_1C4404424();
  if (v32 != v33)
  {
    __break(1u);
  }

  else
  {
    sub_1C442DFF8();
    if (v32 ^ v33 | v34)
    {
      sub_1C4403364();
      MEMORY[0x1EEE9AC00](v35);
      v37 = sub_1C440ACA0(v36);
      if (v37 == 5)
      {
        MEMORY[0x1EEE9AC00](v37);
        sub_1C43FD954();
        *(v38 - 16) = sub_1C487BF24;
        *(v38 - 8) = v22;
        sub_1C440060C();
        sub_1C442BC34();
      }

      else
      {
        sub_1C44000C4();
        sub_1C4F01A08();
      }

      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1C493E588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  sub_1C44173C0();
  v23 = sub_1C456902C(&qword_1EC0BFA28, &qword_1C4F3BA48);
  sub_1C43FBD18(v23);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v24);
  v25 = sub_1C43FD934();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C4406BA0();
  sub_1C43FE99C();
  sub_1C4EFBC08();
  if (v27)
  {
    v28 = sub_1C4EFBD98();
    v29 = sub_1C441FCF8(v28);
    sub_1C441E424(v29);
    sub_1C4EFB628();
    sub_1C44199D0();
    v32 = sub_1C493EDA4(v30, v31, MEMORY[0x1E699FEA0]);
    sub_1C43FFC70(v32);
    sub_1C4411E4C();
    v33 = sub_1C43FBF04();
    v34(v33);
    swift_willThrow();
LABEL_10:
    sub_1C4402144();
    sub_1C43FBC80();
    return;
  }

  if (!sub_1C4EFBBE8())
  {
    sub_1C4425C54();
    goto LABEL_10;
  }

  sub_1C4404424();
  if (v35 != v36)
  {
    __break(1u);
  }

  else
  {
    sub_1C442DFF8();
    if (v35 ^ v36 | v37)
    {
      sub_1C4403364();
      MEMORY[0x1EEE9AC00](v38);
      v40 = sub_1C440ACA0(v39);
      if (v40 == 5)
      {
        MEMORY[0x1EEE9AC00](v40);
        sub_1C43FD954();
        *(v41 - 16) = sub_1C487BF24;
        *(v41 - 8) = v25;
        sub_1C440060C();
        sub_1C442BC34();
      }

      else
      {
        sub_1C44000C4();
        sub_1C4F017E8();
      }

      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1C493E7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  sub_1C44173C0();
  v20 = sub_1C456902C(&qword_1EC0BFA28, &qword_1C4F3BA48);
  sub_1C43FBD18(v20);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v21);
  v22 = sub_1C43FD934();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C4406BA0();
  sub_1C43FE99C();
  sub_1C4EFBC08();
  if (v24)
  {
    v25 = sub_1C4EFBD98();
    v26 = sub_1C441FCF8(v25);
    sub_1C441E424(v26);
    sub_1C4EFB628();
    sub_1C44199D0();
    v29 = sub_1C493EDA4(v27, v28, MEMORY[0x1E699FEA0]);
    sub_1C43FFC70(v29);
    sub_1C4411E4C();
    v30 = sub_1C43FBF04();
    v31(v30);
    swift_willThrow();
LABEL_10:
    sub_1C4402144();
    sub_1C43FBC80();
    return;
  }

  if (!sub_1C4EFBBE8())
  {
    sub_1C4425C54();
    goto LABEL_10;
  }

  sub_1C4404424();
  if (v32 != v33)
  {
    __break(1u);
  }

  else
  {
    sub_1C442DFF8();
    if (v32 ^ v33 | v34)
    {
      sub_1C4403364();
      MEMORY[0x1EEE9AC00](v35);
      v37 = sub_1C440ACA0(v36);
      if (v37 == 5)
      {
        MEMORY[0x1EEE9AC00](v37);
        sub_1C43FD954();
        *(v38 - 16) = sub_1C487BDA4;
        *(v38 - 8) = v22;
        sub_1C440060C();
        sub_1C442BC34();
      }

      else
      {
        sub_1C44000C4();
        sub_1C4F02AA8();
      }

      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1C493E9BC()
{
  sub_1C43FE96C();
  v19 = v0;
  v20 = v1;
  v18[0] = v2;
  v18[1] = v3;
  v5 = v4;
  v6 = sub_1C456902C(&qword_1EC0BFA28, &qword_1C4F3BA48);
  sub_1C43FBD18(v6);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C43FD934();
  sub_1C43FCDF8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC08();
  if (v14)
  {
    v15 = sub_1C4EFBD98();
    sub_1C441FCF8(v15);
    sub_1C4EFB6F8();
    sub_1C4EFB628();
    sub_1C44199D0();
    sub_1C493EDA4(v16, v17, MEMORY[0x1E699FEA0]);
    swift_allocError();
    sub_1C4EFB618();
    (*(v10 + 8))(v13, v8);
    swift_willThrow();
  }

  else
  {
    v5(0);
    sub_1C493EDA4(v18[0], v19, v20);
    sub_1C4EFB9E8();
  }

  sub_1C43FBC80();
}

unint64_t sub_1C493EB98()
{
  result = qword_1EC0BFA18;
  if (!qword_1EC0BFA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFA18);
  }

  return result;
}

uint64_t sub_1C493EC5C(uint64_t a1)
{
  v1 = sub_1C4EFF0C8();
  if (v2 <= 0x3F)
  {
    v1 = sub_1C4EFEEF8();
    if (v3 <= 0x3F)
    {
      v4 = sub_1C4EFF8A8();
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        sub_1C493ED54();
        v1 = v6;
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_1C493ED54()
{
  if (!qword_1EDDF05D8)
  {
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDF05D8);
    }
  }
}

uint64_t sub_1C493EDA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C493EDEC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7, char *a8)
{
  v13 = sub_1C456902C(&qword_1EC0BFA40, &unk_1C4F74970);
  sub_1C43FBD18(v13);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBC74();
  v112 = v15;
  v16 = sub_1C456902C(&qword_1EC0BFA48, &unk_1C4F74980);
  sub_1C43FBD18(v16);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBC74();
  v19 = sub_1C43FD2C8(v18);
  v20 = type metadata accessor for INGroupStructs.Person(v19);
  v122 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  sub_1C43FD2D8();
  v131 = v21;
  v22 = sub_1C43FBE44();
  v118 = type metadata accessor for INGroupStructs.Software(v22);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FD2D8();
  v116 = v24;
  v25 = sub_1C43FBE44();
  v115 = type metadata accessor for INGroupStructs.SoftwareRelationshipType(v25);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FD2D8();
  v117 = v27;
  v28 = sub_1C456902C(&qword_1EC0BFA50, &qword_1C4F3BA60);
  sub_1C43FBD18(v28);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBC74();
  v114 = v30;
  v31 = sub_1C43FBE44();
  v123 = type metadata accessor for INGroupStructs.GroupRelationshipType(v31);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FD2D8();
  v124 = v33;
  v34 = sub_1C43FBE44();
  v35 = type metadata accessor for INGroupStructs.GroupOfHumans(v34);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBCC4();
  v39 = v38 - v37;
  HIDWORD(v110) = *a8;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v125 = a4;
  v126 = a5;
  MEMORY[0x1C6940010](a4, a5);
  if (qword_1EDDF78F0 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v40 = type metadata accessor for SourceIdPrefix(0);
    sub_1C442B738(v40, &qword_1EDE2D608);
    String.base64EncodedSHA(withPrefix:)();
    v42 = v41;
    v44 = v43;

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4DC1AF4(v42, v44, v45, v46, v47, v48, v49, v50, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119);
    if (v129)
    {

      return;
    }

    v121 = v40;
    v113 = v39;
    v51 = [a6 speakableGroupName];
    v109 = v44;
    if (v51)
    {
      v52 = v51;
      v53 = v42;
      v54 = [v51 description];
      v39 = a3;
      v55 = sub_1C4F01138();
      v56 = a2;
      v58 = v57;

      v42 = v53;
      v59 = (v113 + *(v35 + 36));

      *v59 = v55;
      v59[1] = v58;
      a3 = v39;
      a2 = v56;
    }

    v60 = sub_1C4428DA0(a1);
    v108 = v42;
    if (!v60)
    {
      break;
    }

    v61 = v60;
    v130 = MEMORY[0x1E69E7CC0];
    sub_1C459E728();
    if (v61 < 0)
    {
      __break(1u);
      return;
    }

    v62 = 0;
    v129 = v130;
    v120 = v61;
    v119 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v63 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        break;
      }

      a6 = 0;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v64 = MEMORY[0x1C6940F90](v62, a1);
        v39 = v121;
      }

      else
      {
        v39 = v121;
        if (v62 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v64 = *(a1 + 8 * v62 + 32);
      }

      sub_1C4942AA8(a2, a3, v125, v126);
      v65 = a2;
      v35 = a3;
      if (qword_1EDDF7998 != -1)
      {
        swift_once();
      }

      sub_1C442B738(v39, &qword_1EDE2D728);
      String.base64EncodedSHA(withPrefix:)();
      v67 = v66;
      v69 = v68;

      sub_1C493F6F4(v64, v67, v69, v65, a3, v131);

      v70 = v129;
      v72 = *(v129 + 16);
      v71 = *(v129 + 24);
      if (v72 >= v71 >> 1)
      {
        sub_1C43FCFE8(v71);
        sub_1C459E728();
        v70 = v129;
      }

      *(v70 + 16) = v72 + 1;
      v129 = v70;
      sub_1C4940EAC(v131, v70 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v72, type metadata accessor for INGroupStructs.Person);
      ++v62;
      a2 = v65;
      v39 = v123;
      v73 = v124;
      if (v63 == v120)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
  }

  v129 = MEMORY[0x1E69E7CC0];
  v39 = v123;
  v73 = v124;
LABEL_21:
  v74 = sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v75, v76, v77, v74);
  sub_1C4EFD188();
  v78 = *(v39 + 24);
  if (qword_1EDDFD130 != -1)
  {
    sub_1C4409DC8();
    swift_once();
  }

  v79 = type metadata accessor for Source(0);
  v80 = sub_1C442B738(v79, qword_1EDDFD138);
  sub_1C448CD84(v80, v73 + v78, type metadata accessor for Source);
  *(v73 + *(v39 + 28)) = v129;
  sub_1C4DCBB2C();
  sub_1C448CD84(v73, v114, type metadata accessor for INGroupStructs.GroupRelationshipType);
  sub_1C442BC40();
  sub_1C440BAA8(v81, v82, v83, v84);
  sub_1C4DC23D4(v114);
  sub_1C43FCF64();
  sub_1C440BAA8(v85, v86, v87, v74);
  sub_1C4EFD228();
  sub_1C448CD84(v80, v117 + v115[6], type metadata accessor for Source);
  sub_1C4EFE558();
  v88 = (v117 + v115[8]);
  sub_1C4EFE658();
  v89 = (v117 + v115[10]);
  sub_1C4EFE678();
  sub_1C4405034(v115[12]);
  sub_1C43FCF64();
  sub_1C440BAA8(v90, v91, v92, v118);
  *v88 = v125;
  v88[1] = v126;
  *v89 = 0xD000000000000013;
  v89[1] = 0x80000001C4F8E570;
  v93 = qword_1EDDF79C0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v93 != -1)
  {
    sub_1C4414C0C(&qword_1EDDF79C0);
  }

  sub_1C442B738(v121, &qword_1EDE2D740);
  String.base64EncodedSHA(withPrefix:)();
  sub_1C4DC24C4();
  v94 = (v116 + *(v118 + 36));
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  *v94 = a2;
  v94[1] = a3;
  sub_1C4407168();
  sub_1C441C310(v116, &v132, v95);
  v96 = sub_1C43FC024();
  v99 = sub_1C444FDD8(v96, v97, v98, v118);
  sub_1C4DC2D38(v99);
  sub_1C441CAD8();
  sub_1C448CD84(v117, v112, v100);
  v101 = sub_1C43FC024();
  v104 = sub_1C444FDD8(v101, v102, v103, v115);
  sub_1C4DC2E48(v104);
  sub_1C4DC2F38();
  sub_1C440F7EC();

  sub_1C43FD964();
  sub_1C4940F0C(v116, v105);
  sub_1C440ACC4();
  sub_1C4940F0C(v117, v106);
  sub_1C44324F8();
  sub_1C4940F0C(v113, v107);
}

void sub_1C493F6F4(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v390 = a5;
  v391 = a4;
  v405 = a3;
  v406 = a2;
  v399 = a1;
  v389 = a6;
  v6 = sub_1C456902C(&qword_1EC0BFA40, &unk_1C4F74970);
  sub_1C43FBD18(v6);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBC74();
  v9 = sub_1C43FD2C8(v8);
  v386 = type metadata accessor for INGroupStructs.SoftwareRelationshipType(v9);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD2D8();
  v409 = v11;
  v12 = sub_1C456902C(&qword_1EC0BFA58, &unk_1C4F3BA68);
  sub_1C43FBD18(v12);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBC74();
  v15 = sub_1C43FD2C8(v14);
  v383 = type metadata accessor for INGroupStructs.IdentifierRelationshipType(v15);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD2D8();
  v385 = v17;
  v18 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v18);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBC74();
  v395 = v20;
  v21 = sub_1C456902C(&qword_1EC0BFA48, &unk_1C4F74980);
  v22 = sub_1C43FBD18(v21);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBFDC();
  v394 = v23;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBF38();
  v393 = v25;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBF38();
  v392 = v27;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = sub_1C43FD2C8(&v377 - v29);
  v407 = type metadata accessor for INGroupStructs.AddressRelationshipType(v30);
  v400 = *(v407 - 8);
  MEMORY[0x1EEE9AC00](v407);
  sub_1C43FBFDC();
  v398 = v31;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBF38();
  v411 = v33;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBF38();
  v397 = v35;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBF38();
  v403 = v37;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBF38();
  v396 = v39;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBF38();
  v402 = v41;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v377 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v377 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v377 - v49;
  MEMORY[0x1EEE9AC00](v51);
  countAndFlagsBits = &v377 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v377 - v55;
  v57 = type metadata accessor for INGroupStructs.Software(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FBCC4();
  v61 = v60 - v59;
  v62 = type metadata accessor for INGroupStructs.Person(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FBCC4();
  v66 = v65 - v64;
  v67 = v405;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v68 = v67;
  v69 = v408;
  sub_1C4DC35D0(v406, v68, v70, v71, v72, v73, v74, v75, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388);
  if (!v69)
  {
    v381 = v56;
    v406 = countAndFlagsBits;
    v408 = v62;
    v378 = v50;
    v379 = v47;
    v380 = v44;
    v401 = v57;
    v404 = v61;
    v405 = v66;
    if (qword_1EDDF79C0 != -1)
    {
      sub_1C4414C0C(&qword_1EDDF79C0);
    }

    v76 = type metadata accessor for SourceIdPrefix(0);
    sub_1C442B738(v76, &qword_1EDE2D740);
    sub_1C447F130();
    String.base64EncodedSHA(withPrefix:)();
    v77 = v404;
    sub_1C4DC24C4();
    v78 = v399;
    v382 = 0;
    v79 = v407;
    v80 = *(v408 + 56);
    v81 = v405;

    *(v81 + v80) = MEMORY[0x1E69E7CC0];
    sub_1C4DC9D34();
    v82 = [v78 displayName];
    v83 = v82;
    object = v82;
    if (!v82)
    {
      sub_1C4F01138();
      object = sub_1C4F01108();

      sub_1C4F01138();
      v44 = v85;
      v83 = sub_1C4F01108();
    }

    sub_1C4F01138();
    v87 = v86;
    sub_1C441BA14();
    if (v89)
    {
      v377 = v88;
      v90 = objc_allocWithZone(MEMORY[0x1E6996728]);
      v91 = v82;
      v92 = [v90 init];
      v44 = [v92 typeOfHandleString_];

      if (v44 == 1)
      {

        sub_1C4EFEEF8();
        v93 = v381;
        sub_1C43FCF64();
        sub_1C443FCF8(v94, v95, v96, v97);
        sub_1C4EFD1D8();
        v98 = v79[6];
        if (qword_1EDDFD130 != -1)
        {
          sub_1C4409DC8();
          swift_once();
        }

        v99 = type metadata accessor for Source(0);
        sub_1C442B738(v99, qword_1EDDFD138);
        sub_1C442CC2C();
        sub_1C448CD84(v100, v93 + v98, v101);
        sub_1C4EFE518();
        sub_1C4EFE4E8();
        sub_1C4405034(v79[10]);
        sub_1C4EFE478();
        sub_1C4405034(v79[12]);
        sub_1C4EFE618();
        sub_1C4405034(v79[14]);
        sub_1C43FCF64();
        v102 = v401;
        sub_1C440BAA8(v103, v104, v105, v401);
        sub_1C44103D8();
        sub_1C4407168();
        sub_1C441C310(v77, &v413, v106);
        v107 = sub_1C43FC024();
        v110 = sub_1C444FDD8(v107, v108, v109, v102);
        object = v93;
        sub_1C4DC3EF4(v110);
        v44 = v410;
        v111 = v93;
        v113 = sub_1C440BDBC();
        v114 = v409;
        if (*v112)
        {
          object = v112;
          sub_1C4589390();
          v115 = *(*object + 16);
          sub_1C4589F28();
          sub_1C4408BC4(v115 + 1);
          sub_1C4400630();
          sub_1C448CD84(v111, v116, v117);
        }

        v113(v410, 0);
        v118 = v391;
        sub_1C441FD30();
        sub_1C4940F0C(v111, v119);
        goto LABEL_18;
      }

      object = objc_allocWithZone(MEMORY[0x1E696AB60]);
      v122 = v382;
      v123 = sub_1C4475EF8(2048);
      v118 = v391;
      if (v122)
      {

        v382 = 0;
LABEL_17:

        sub_1C44103D8();
        v114 = v409;
LABEL_18:
        v121 = v399;
LABEL_19:
        v124 = [v121 relationship];
        if (v124)
        {
          object = v124;
          v125 = sub_1C4F01138();
          countAndFlagsBits = v126;

          v127 = (v405 + *(v408 + 36));

          *v127 = v125;
          v127[1] = countAndFlagsBits;
          v121 = v399;
          sub_1C447F130();
        }

        v128 = (v404 + v401[9]);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        *v128 = v118;
        v128[1] = countAndFlagsBits;
        v129 = [v121 personHandle];
        v130 = v411;
        if (!v129)
        {
LABEL_34:
          v138 = sub_1C494480C(v399);
          if (!v138)
          {
            v138 = MEMORY[0x1E69E7CC0];
          }

          v408 = v138;
          v139 = sub_1C4428DA0(v138);
          if (v139)
          {
            v140 = v139;
            if (v139 < 1)
            {
              __break(1u);
              goto LABEL_118;
            }

            v141 = 0;
            v406 = v408 & 0xC000000000000001;
            do
            {
              if (v406)
              {
                v142 = MEMORY[0x1C6940F90](v141, v408);
              }

              else
              {
                v142 = *(v408 + 8 * v141 + 32);
              }

              v143 = v142;
              v144 = sub_1C4A99AB0(v142);
              if (v145)
              {
                v146 = v144;
                v147 = v145;
                v148 = [v143 type];
                v149 = sub_1C4EFEEF8();
                if (v148 == 1)
                {
                  v169 = v402;
                  v170 = sub_1C43FF1D4();
                  sub_1C443FCF8(v170, v171, v172, v149);
                  sub_1C4EFD1D8();
                  v173 = v79[6];
                  if (qword_1EDDFD130 != -1)
                  {
                    sub_1C4409DC8();
                    swift_once();
                  }

                  v174 = type metadata accessor for Source(0);
                  sub_1C442B738(v174, qword_1EDDFD138);
                  sub_1C442CC2C();
                  sub_1C448CD84(v175, v169 + v173, v176);
                  sub_1C440237C();
                  v130 = (v169 + v79[8]);
                  sub_1C4EFE4E8();
                  sub_1C4425C70();
                  sub_1C442FE50();
                  sub_1C4EFE618();
                  sub_1C43FC4DC(v79[14]);
                  v177 = v169 + v79[15];
                  v178 = sub_1C43FF1D4();
                  v79 = v401;
                  sub_1C440BAA8(v178, v179, v180, v401);
                  *v130 = v146;
                  v130[1] = v147;
                  sub_1C4407168();
                  sub_1C441C310(v404, &v414, v181);
                  v182 = sub_1C43FC024();
                  v185 = sub_1C444FDD8(v182, v183, v184, v79);
                  sub_1C4940DD4(v185, v177);
                  if (sub_1C440C440())
                  {
                    sub_1C4940E44(v130);
                  }

                  else
                  {
                    v221 = v395;
                    sub_1C4EFE958();
                    sub_1C4940E44(v130);
                    sub_1C44334D8(v221, 0);
                    sub_1C449A970(v221, v177 + v222);
                  }

                  sub_1C440BDBC();
                  sub_1C441ECF0();
                  if (v224)
                  {
                    v225 = v223;
                    sub_1C4400630();
                    sub_1C448CD84(v402, v396, v226);
                    v227 = *v225;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    *v225 = v227;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      sub_1C442BC40();
                      sub_1C458DEE8(v258, v259, v260, v261);
                      sub_1C4415A40(v262);
                    }

                    sub_1C4426BEC();
                    if (v214)
                    {
                      sub_1C43FCFE8(v229);
                      sub_1C442BC40();
                      sub_1C458DEE8(v263, v264, v265, v266);
                      sub_1C4415A40(v267);
                    }

                    sub_1C4411E70();
                    sub_1C4940EAC(v396, v230, v231);
                    v232 = sub_1C4410E30();
                    v149(v232);
                    v130 = v411;
                  }

                  else
                  {
                    v233 = sub_1C4410E30();
                    v149(v233);
                  }

                  sub_1C441FD30();
                  v220 = v402;
                }

                else if (v148 == 2)
                {
                  v150 = v403;
                  sub_1C43FCF64();
                  sub_1C443FCF8(v151, v152, v153, v149);
                  sub_1C4EFD1D8();
                  v154 = v79[6];
                  if (qword_1EDDFD130 != -1)
                  {
                    sub_1C4409DC8();
                    swift_once();
                  }

                  v155 = type metadata accessor for Source(0);
                  sub_1C442B738(v155, qword_1EDDFD138);
                  sub_1C442CC2C();
                  sub_1C448CD84(v156, v150 + v154, v157);
                  sub_1C4EFE518();
                  sub_1C4405D38();
                  sub_1C4405010();
                  v158 = v150;
                  v159 = (v150 + v79[12]);
                  sub_1C4EFE618();
                  sub_1C43FC4DC(v79[14]);
                  v160 = v158 + v79[15];
                  v161 = sub_1C43FF1D4();
                  v79 = v401;
                  sub_1C440BAA8(v161, v162, v163, v401);
                  *v159 = v146;
                  v159[1] = v147;
                  sub_1C4407168();
                  v130 = v393;
                  sub_1C448CD84(v404, v393, v164);
                  v165 = sub_1C43FC024();
                  v168 = sub_1C444FDD8(v165, v166, v167, v79);
                  sub_1C4940DD4(v168, v160);
                  if (sub_1C440C440())
                  {
                    sub_1C4940E44(v130);
                  }

                  else
                  {
                    v205 = v395;
                    sub_1C4EFE958();
                    sub_1C4940E44(v130);
                    sub_1C44334D8(v205, 0);
                    sub_1C449A970(v205, v160 + v206);
                  }

                  sub_1C440BDBC();
                  sub_1C441ECF0();
                  if (v208)
                  {
                    v209 = v207;
                    sub_1C4400630();
                    sub_1C448CD84(v403, v397, v210);
                    v211 = *v209;
                    v212 = swift_isUniquelyReferenced_nonNull_native();
                    *v209 = v211;
                    if ((v212 & 1) == 0)
                    {
                      sub_1C442BC40();
                      sub_1C458DEE8(v248, v249, v250, v251);
                      sub_1C4415A40(v252);
                    }

                    sub_1C4426BEC();
                    if (v214)
                    {
                      sub_1C43FCFE8(v213);
                      sub_1C442BC40();
                      sub_1C458DEE8(v253, v254, v255, v256);
                      sub_1C4415A40(v257);
                    }

                    sub_1C4411E70();
                    sub_1C4940EAC(v397, v215, v216);
                    v217 = sub_1C4410E30();
                    v149(v217);
                    v130 = v411;
                  }

                  else
                  {
                    v218 = sub_1C4410E30();
                    v149(v218);
                  }

                  sub_1C441FD30();
                  v220 = v403;
                }

                else
                {
                  sub_1C43FCF64();
                  sub_1C443FCF8(v186, v187, v188, v149);
                  sub_1C4EFD1D8();
                  v189 = v79[6];
                  if (qword_1EDDFD130 != -1)
                  {
                    sub_1C4409DC8();
                    swift_once();
                  }

                  v190 = type metadata accessor for Source(0);
                  sub_1C442B738(v190, qword_1EDDFD138);
                  sub_1C442CC2C();
                  sub_1C448CD84(v191, v130 + v189, v192);
                  sub_1C4EFE518();
                  sub_1C4405D38();
                  sub_1C4405010();
                  v193 = (v130 + v79[12]);
                  *v193 = 0;
                  v193[1] = 0;
                  sub_1C4EFE618();
                  v194 = v130;
                  v195 = (v130 + v79[14]);
                  v196 = v194 + v79[15];
                  v197 = sub_1C43FF1D4();
                  v79 = v401;
                  sub_1C440BAA8(v197, v198, v199, v401);
                  *v195 = v146;
                  v195[1] = v147;
                  sub_1C4407168();
                  v130 = v394;
                  sub_1C448CD84(v404, v394, v200);
                  v201 = sub_1C43FC024();
                  v204 = sub_1C444FDD8(v201, v202, v203, v79);
                  sub_1C4940DD4(v204, v196);
                  if (sub_1C440C440())
                  {
                    sub_1C4940E44(v130);
                  }

                  else
                  {
                    v234 = v395;
                    sub_1C4EFE958();
                    sub_1C4940E44(v130);
                    sub_1C44334D8(v234, 0);
                    sub_1C449A970(v234, v196 + v235);
                  }

                  sub_1C440BDBC();
                  sub_1C441ECF0();
                  if (v237)
                  {
                    v238 = v236;
                    sub_1C4400630();
                    sub_1C448CD84(v130, v398, v239);
                    v240 = *v238;
                    v241 = swift_isUniquelyReferenced_nonNull_native();
                    *v238 = v240;
                    if ((v241 & 1) == 0)
                    {
                      sub_1C442BC40();
                      sub_1C458DEE8(v268, v269, v270, v271);
                      sub_1C4415A40(v272);
                    }

                    sub_1C4426BEC();
                    if (v214)
                    {
                      sub_1C43FCFE8(v242);
                      sub_1C442BC40();
                      sub_1C458DEE8(v273, v274, v275, v276);
                      *v238 = v277;
                    }

                    sub_1C4411E70();
                    sub_1C4940EAC(v243, v244, v245);
                    v246 = sub_1C4410E30();
                    v149(v246);
                    v130 = v411;
                  }

                  else
                  {
                    v247 = sub_1C4410E30();
                    v149(v247);
                  }

                  sub_1C441FD30();
                  v220 = v130;
                }

                sub_1C4940F0C(v220, v219);
              }

              else
              {
              }

              ++v141;
              v114 = v409;
            }

            while (v140 != v141);
          }

          v278 = sub_1C494486C(v399);
          if (!v279)
          {
LABEL_92:
            v310 = v405;
            sub_1C448CD84(v405, v389, type metadata accessor for INGroupStructs.Person);
            sub_1C43FD964();
            sub_1C4940F0C(v404, v311);
            sub_1C44350E0();
            sub_1C4940F0C(v310, v312);
            return;
          }

          v121 = v278;
          v130 = v279;
          sub_1C441BA14();
          if (!v280)
          {

            goto LABEL_92;
          }

          countAndFlagsBits = sub_1C4EFEEF8();
          v140 = v385;
          sub_1C43FCF64();
          sub_1C440BAA8(v281, v282, v283, countAndFlagsBits);
          v44 = v383;
          sub_1C4EFD258();
          object = *(v44 + 24);
          if (qword_1EDDFD130 == -1)
          {
LABEL_90:
            v284 = type metadata accessor for Source(0);
            v285 = sub_1C442B738(v284, qword_1EDDFD138);
            sub_1C448CD84(v285, v140 + object, type metadata accessor for Source);
            sub_1C4EFE558();
            v286 = (v140 + *(v44 + 32));
            sub_1C4EFE658();
            *(v140 + *(v44 + 40)) = xmmword_1C4F3BA50;
            *v286 = v121;
            v286[1] = v130;
            v287 = v384;
            sub_1C448CD84(v140, v384, type metadata accessor for INGroupStructs.IdentifierRelationshipType);
            sub_1C444FDD8(v287, 0, 1, v44);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C4DC407C(v287);
            sub_1C43FCF64();
            sub_1C440BAA8(v288, v289, v290, countAndFlagsBits);
            v291 = v386;
            sub_1C4EFD228();
            sub_1C448CD84(v285, v114 + v291[6], type metadata accessor for Source);
            sub_1C4EFE558();
            v292 = (v114 + v291[8]);
            *v292 = 0;
            v292[1] = 0;
            sub_1C4EFE658();
            v293 = (v114 + v291[10]);
            *v293 = 0;
            v293[1] = 0;
            sub_1C4EFE678();
            v294 = (v114 + v291[12]);
            sub_1C43FCF64();
            v295 = v401;
            sub_1C440BAA8(v296, v297, v298, v401);
            *v294 = v121;
            v294[1] = v130;
            sub_1C4407168();
            sub_1C441C310(v404, &v413, v299);
            v300 = sub_1C43FC024();
            v303 = sub_1C444FDD8(v300, v301, v302, v295);
            sub_1C4DC2D38(v303);
            sub_1C441CAD8();
            sub_1C441C310(v114, &v412, v304);
            v305 = sub_1C43FC024();
            v308 = sub_1C444FDD8(v305, v306, v307, v291);
            sub_1C4DC416C(v308);
            sub_1C440ACC4();
            sub_1C4940F0C(v114, v309);
            sub_1C4940F0C(v140, type metadata accessor for INGroupStructs.IdentifierRelationshipType);
            goto LABEL_92;
          }

LABEL_118:
          sub_1C4409DC8();
          swift_once();
          goto LABEL_90;
        }

        v121 = v129;
        sub_1C4A99AB0(v129);
        if (!v131 || (v132 = String.normalizedContactHandle()(), countAndFlagsBits = v132.value._countAndFlagsBits, object = v132.value._object, , !v132.value._object))
        {

          goto LABEL_34;
        }

        v133 = (v132.value._object >> 56) & 0xF;
        if ((v132.value._object & 0x2000000000000000) == 0)
        {
          v133 = v132.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (!v133)
        {
          goto LABEL_32;
        }

        v134 = [v399 displayName];
        v44 = sub_1C4F01138();
        v136 = v135;

        if (v132.value._countAndFlagsBits == v44 && v132.value._object == v136)
        {

          v114 = v409;
          goto LABEL_34;
        }

        v44 = sub_1C4F02938();

        v114 = v409;
        if (v44)
        {
LABEL_32:

          goto LABEL_34;
        }

        v337 = [v121 type];
        sub_1C4EFEEF8();
        if (v337 == 2)
        {
          v44 = v379;
          v347 = sub_1C43FF1D4();
          sub_1C443FCF8(v347, v348, v349, v350);
          sub_1C4EFD1D8();
          v351 = v79[6];
          if (qword_1EDDFD130 != -1)
          {
            sub_1C4409DC8();
            swift_once();
          }

          v352 = type metadata accessor for Source(0);
          sub_1C442B738(v352, qword_1EDDFD138);
          sub_1C442CC2C();
          sub_1C448CD84(v353, v44 + v351, v354);
          sub_1C440237C();
          sub_1C43FC4DC(v79[8]);
          sub_1C4EFE4E8();
          sub_1C4425C70();
          v346 = (v44 + v79[12]);
        }

        else
        {
          if (v337 != 1)
          {
            v44 = v380;
            v355 = sub_1C43FF1D4();
            sub_1C443FCF8(v355, v356, v357, v358);
            sub_1C4EFD1D8();
            v359 = v79[6];
            if (qword_1EDDFD130 != -1)
            {
              sub_1C4409DC8();
              swift_once();
            }

            v360 = type metadata accessor for Source(0);
            sub_1C442B738(v360, qword_1EDDFD138);
            sub_1C442CC2C();
            sub_1C448CD84(v361, v44 + v359, v362);
            sub_1C440237C();
            sub_1C43FC4DC(v79[8]);
            sub_1C4EFE4E8();
            sub_1C4425C70();
            sub_1C442FE50();
            sub_1C4EFE618();
            v346 = (v44 + v79[14]);
            goto LABEL_114;
          }

          v44 = v378;
          v338 = sub_1C43FF1D4();
          sub_1C443FCF8(v338, v339, v340, v341);
          sub_1C4EFD1D8();
          v342 = v79[6];
          if (qword_1EDDFD130 != -1)
          {
            sub_1C4409DC8();
            swift_once();
          }

          v343 = type metadata accessor for Source(0);
          sub_1C442B738(v343, qword_1EDDFD138);
          sub_1C442CC2C();
          sub_1C448CD84(v344, v44 + v342, v345);
          sub_1C440237C();
          v346 = (v44 + v79[8]);
          sub_1C4EFE4E8();
          sub_1C4425C70();
          sub_1C442FE50();
        }

        sub_1C4EFE618();
        sub_1C43FC4DC(v79[14]);
LABEL_114:
        sub_1C43FCF64();
        v363 = v401;
        sub_1C440BAA8(v364, v365, v366, v401);
        *v346 = v132;
        sub_1C4407168();
        sub_1C441C310(v404, &v413, v367);
        v368 = sub_1C43FC024();
        v371 = sub_1C444FDD8(v368, v369, v370, v363);
        object = v44;
        sub_1C4DC3EF4(v371);
        countAndFlagsBits = sub_1C440BDBC();
        if (*v372)
        {
          object = v372;
          sub_1C4589390();
          v373 = *(*object + 16);
          sub_1C4589F28();
          sub_1C4408BC4(v373 + 1);
          sub_1C4400630();
          sub_1C448CD84(v44, v374, v375);
        }

        (countAndFlagsBits)(v410, 0);
        v130 = v411;

        sub_1C441FD30();
        sub_1C4940F0C(v44, v376);
        goto LABEL_34;
      }

      object = v123;
      v382 = 0;
      v313 = [v123 matchesInString:v83 options:0 range:{0, MEMORY[0x1C69400B0](v377, v87)}];

      sub_1C44DBED0();
      v314 = sub_1C4F01678();

      countAndFlagsBits = sub_1C4428DA0(v314);

      if (!countAndFlagsBits)
      {
        sub_1C447F130();
        goto LABEL_17;
      }

      sub_1C4EFEEF8();
      v315 = v406;
      sub_1C43FCF64();
      sub_1C443FCF8(v316, v317, v318, v319);
      sub_1C4EFD1D8();
      v320 = v79[6];
      v321 = v388;
      if (qword_1EDDFD130 != -1)
      {
        sub_1C4409DC8();
        swift_once();
      }

      v322 = type metadata accessor for Source(0);
      sub_1C442B738(v322, qword_1EDDFD138);
      sub_1C442CC2C();
      sub_1C448CD84(v323, v315 + v320, v324);
      sub_1C4EFE518();
      sub_1C4405D38();
      sub_1C4405010();
      sub_1C4EFE618();
      v325 = (v406 + v79[14]);
      *v325 = 0;
      v325[1] = 0;
      sub_1C43FCF64();
      v326 = v401;
      sub_1C440BAA8(v327, v328, v329, v401);
      sub_1C44103D8();
      v330 = v406;
      sub_1C4407168();
      sub_1C448CD84(v77, v321, v331);
      sub_1C440BAA8(v321, 0, 1, v326);
      object = v330;
      sub_1C4DC3EF4(v321);
      v333 = sub_1C440BDBC();
      if (*v332)
      {
        object = v332;
        sub_1C4589390();
        countAndFlagsBits = *(*object + 16);
        sub_1C4589F28();
        sub_1C4408BC4((countAndFlagsBits + 1));
        sub_1C4400630();
        sub_1C448CD84(v330, v334, v335);
      }

      v333(v410, 0);
      sub_1C447F130();
      sub_1C441FD30();
      sub_1C4940F0C(v330, v336);
    }

    else
    {
      v120 = v82;
    }

    v114 = v409;
    v121 = v399;
    v118 = v391;
    goto LABEL_19;
  }
}

uint64_t sub_1C4940DD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BFA48, &unk_1C4F74980);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4940E44(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BFA48, &unk_1C4F74980);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4940EAC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C4940F0C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4940F64(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for Fuser(0);
  sub_1C43FBD18(v5);
  *(v3 + 32) = swift_task_alloc();
  v6 = type metadata accessor for Linker(0);
  sub_1C43FBD18(v6);
  *(v3 + 40) = swift_task_alloc();
  v7 = type metadata accessor for INGroupSourceIngestor(0);
  *(v3 + 48) = v7;
  sub_1C43FBD18(v7);
  *(v3 + 56) = swift_task_alloc();
  v8 = type metadata accessor for Source(0);
  *(v3 + 64) = v8;
  sub_1C43FBD18(v8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v9 = type metadata accessor for PhaseStores(0);
  sub_1C43FBD18(v9);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 121) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C49410BC, 0, 0);
}

uint64_t sub_1C49410BC()
{
  sub_1C4419288();
  sub_1C44717B8(v1, v2, v3);
  if (qword_1EDDFD130 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 121);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 72);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v10 = *(v0 + 16);
  v11 = sub_1C442B738(*(v0 + 64), qword_1EDDFD138);
  *(v0 + 104) = v11;
  sub_1C44717B8(v11, v5, type metadata accessor for Source);
  sub_1C44717B8(v10, v8, type metadata accessor for PhaseStores);
  sub_1C44717B8(v11, v8 + *(v9 + 20), type metadata accessor for Source);
  *(v8 + *(v9 + 24)) = v4;
  sub_1C44717B8(v11, v7, type metadata accessor for Source);
  sub_1C44717B8(v10, v6, type metadata accessor for PhaseStores);
  *(v0 + 120) = 1;
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  *v12 = v0;
  v12[1] = sub_1C4941274;

  return Linker.init(source:stores:pipelineType:)();
}

uint64_t sub_1C4941274()
{

  return MEMORY[0x1EEE6DFA0](sub_1C4941370, 0, 0);
}

uint64_t sub_1C4941370()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  v23 = v0[5];
  v7 = v0[2];
  v8 = v0[3];
  sub_1C44717B8(v0[13], v0[9], type metadata accessor for Source);
  sub_1C4419288();
  sub_1C44717B8(v7, v3, v9);
  Fuser.init(source:stores:pipelineType:)();
  sub_1C44857CC(v7);
  v10 = (v8 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor);
  *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor + 24) = v4;
  v10[4] = sub_1C4941610();
  v11 = sub_1C4422F90(v10);
  sub_1C4941668(v5, v11, type metadata accessor for INGroupSourceIngestor);
  sub_1C44002E8();
  sub_1C4941668(v2, v12, v13);
  sub_1C44002E8();
  sub_1C4941668(v1, v14, v15);
  sub_1C44002E8();
  sub_1C4941668(v23, v16, v17);
  sub_1C44002E8();
  sub_1C4941668(v6, v18, v19);
  *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType) = 1;

  v20 = v0[1];
  v21 = v0[3];

  return v20(v21);
}

uint64_t type metadata accessor for INGroupPhase(uint64_t a1)
{
  result = qword_1EDDEB5C0;
  if (!qword_1EDDEB5C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C4941610()
{
  result = qword_1EDDE3A58;
  if (!qword_1EDDE3A58)
  {
    type metadata accessor for INGroupSourceIngestor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE3A58);
  }

  return result;
}

uint64_t sub_1C4941668(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for INGroupSourceIngestor(uint64_t a1)
{
  result = qword_1EDDE3A38;
  if (!qword_1EDDE3A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4941738()
{
  sub_1C44067F0();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  sub_1C44067F0();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = (v3 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x1E69E7CD0];
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  type metadata accessor for PhaseStores(0);
  v12 = v0;
  v14 = v0;
  v15 = v3;
  v16 = v6;
  v17 = v1;
  v20 = v1;
  v18 = v5;
  v19 = v2;
  GraphStore.tripleInsertingTransaction(transactionBody:)(sub_1C49428EC, v13);
  if (!v11)
  {
    swift_beginAccess();
    v7 = *v4;
    if (!*v4)
    {
      sub_1C4EF9AE8();
      sub_1C46444AC();

      v9 = v12;
      goto LABEL_5;
    }

    swift_willThrow();
    v8 = v7;
  }

  v9 = v12;
LABEL_5:
  sub_1C4941908(v9, (v2 + 16), (v1 + 16));
}

uint64_t sub_1C4941908(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = type metadata accessor for Pipeline.StatusStore(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4430D14(a1, v9, type metadata accessor for Configuration);
  v9[*(v7 + 28)] = *(a1 + *(type metadata accessor for INGroupSourceIngestor(0) + 24));
  Pipeline.StatusStore.currentSessionId()();
  sub_1C47CE078(v9);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v11 = sub_1C4F01108();

  *(inited + 48) = v11;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  sub_1C4461BB8(0, &qword_1EDDFA440, 0x1E696AEC0);
  *(inited + 72) = sub_1C4F01EF8();
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  swift_beginAccess();
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  swift_beginAccess();
  v12 = *a3;
  swift_beginAccess();
  result = v12 - *a2;
  if (__OFSUB__(v12, *a2))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}

void sub_1C4941BC0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v47 = a4;
  v44 = a7;
  v45 = a8;
  v42 = a6;
  v43 = a2;
  v40 = a5;
  v41 = a1;
  v46 = a9;
  v10 = type metadata accessor for INGroupSourceIngestor(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_autoreleasePoolPush();
  v15 = [objc_opt_self() intent];
  v16 = [v15 publisherWithStartTime:0 endTime:0 maxEvents:0 reversed:1];
  v39 = v16;

  objc_autoreleasePoolPop(v14);
  v52 = sub_1C4941FB4;
  v53 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v36[1] = &v50;
  v50 = sub_1C45AF9C8;
  v51 = &unk_1F43F0730;
  v17 = _Block_copy(&aBlock);
  v38 = [v16 filterWithIsIncluded_];
  _Block_release(v17);
  v52 = nullsub_1;
  v53 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_1C44405F8;
  v51 = &unk_1F43F0758;
  v37 = _Block_copy(&aBlock);
  sub_1C4430D14(a3, v13, type metadata accessor for INGroupSourceIngestor);
  v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v19 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  sub_1C4942910(v13, v25 + v18);
  *(v25 + v19) = v47;
  v27 = v40;
  v26 = v41;
  *(v25 + v20) = v40;
  *(v25 + v21) = v42;
  v28 = v45;
  *(v25 + v22) = v44;
  v29 = (v25 + v23);
  v30 = v43;
  *v29 = v26;
  v29[1] = v30;
  *(v25 + v24) = v28;
  v52 = sub_1C4942974;
  v53 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_1C45AF9C8;
  v51 = &unk_1F43F07A8;
  v31 = _Block_copy(&aBlock);

  v32 = v27;

  v34 = v37;
  v33 = v38;
  v35 = [v38 sinkWithCompletion:v37 shouldContinue:v31];
  _Block_release(v31);
  _Block_release(v34);

  [objc_opt_self() _resetCache];
  swift_beginAccess();
  *v46 = *(v32 + 16);
}

uint64_t sub_1C4941FB4(void *a1)
{
  v1 = [a1 eventBody];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1C45B4BF8(v1, &selRef_intentClass);
    v5 = v4;
    sub_1C4461BB8(0, &qword_1EDDDB8F0, 0x1E696E9E8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = NSStringFromClass(ObjCClassFromMetadata);
    v8 = sub_1C4F01138();
    v10 = v9;

    if (v5)
    {
      if (v3 == v8 && v5 == v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = sub_1C4F02938();
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

void sub_1C49420A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), uint64_t a8, uint64_t a9)
{
  v55 = a7;
  v15 = objc_autoreleasePoolPush();
  sub_1C4ACE97C();
  swift_beginAccess();
  if (*(a3 + 16))
  {
    swift_beginAccess();
    *(a4 + 16) = 1;
LABEL_7:
    objc_autoreleasePoolPop(v15);
    return;
  }

  swift_beginAccess();
  v16 = *(a5 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v18;
    v19 = [a1 eventBody];
    if (!v19)
    {
      goto LABEL_7;
    }

    v20 = v19;
    v21 = sub_1C4942C20();
    v22 = v21;
    if (!v21)
    {

      goto LABEL_7;
    }

    v23 = [v21 intent];
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    if (!v24 || (v50 = v24, v53 = sub_1C45B4BF8(v24, &selRef_conversationIdentifier), (v54 = v25) == 0))
    {

      goto LABEL_7;
    }

    v51 = v22;
    v52 = v20;
    swift_beginAccess();
    v26 = *(a6 + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v27 = sub_1C4499AD0(v53, v54, v26);

    if (v27)
    {

      goto LABEL_7;
    }

    v49 = v23;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v28 = [v52 bundleID];
    v48 = sub_1C4F01138();
    v47 = v29;

    v30 = type metadata accessor for PhaseStores(0);
    MEMORY[0x1EEE9AC00](v30);
    v44 = v51;
    v45 = v50;
    v46 = a2;
    v32 = sub_1C4942F64(v53, v54, v48, v47, v31, 1, sub_1C4942A6C, &v43);
    v33 = v54;
    v50 = v32;

    swift_beginAccess();
    sub_1C44869B4(v57, v53, v33, v34, v35, v36, v37, v38, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57[0], v57[1], v57[2], v57[3], v57[4], v57[5], v57[6], v57[7], v57[8], v57[9], v57[10], v57[11]);
    swift_endAccess();

    sub_1C4812140();
    v40 = v39;

    v55(v40);

    swift_beginAccess();
    v41 = *(a9 + 16);
    v17 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (!v17)
    {
      *(a9 + 16) = v42;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_1C49426F4()
{
  sub_1C4941738();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C49427DC(uint64_t a1)
{
  result = sub_1C49428A8(qword_1EDDE3A60, &unk_1C4F3BAA8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4942820(uint64_t a1)
{
  result = sub_1C49428A8(&qword_1EDDE3A48, &unk_1C4F3BAD0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4942864(uint64_t a1)
{
  result = sub_1C49428A8(&qword_1EDDE3A50, &unk_1C4F3BAEC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C49428A8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INGroupSourceIngestor(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4942910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for INGroupSourceIngestor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4942974(void *a1)
{
  v3 = *(type metadata accessor for INGroupSourceIngestor(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1C49420A8(a1, v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v7), *(v1 + v8), *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
  return v9 & 1;
}

uint64_t sub_1C4942AA8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = [v4 displayName];
  v11 = sub_1C4F01138();
  v13 = v12;

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    return 0;
  }

  v15 = [v4 displayName];
  v16 = sub_1C4F01138();
  v18 = v17;

  MEMORY[0x1C6940010](v16, v18);

  v19 = [v5 personHandle];
  if (v19)
  {
    v20 = sub_1C4943218(v19);
    if (v21)
    {
      MEMORY[0x1C6940010](v20);
    }
  }

  v22 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v22 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    MEMORY[0x1C6940010](a1, a2);
  }

  v23 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v23 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    MEMORY[0x1C6940010](a3, a4);
  }

  return 0;
}

void *sub_1C4942C20()
{
  v1 = [v0 eventBody];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 interaction];

    v4 = sub_1C4EF9A68();
    v6 = v5;

    sub_1C4461BB8(0, &qword_1EDDFCE70, 0x1E696ACD0);
    sub_1C4461BB8(0, &qword_1EDDDBAE0, 0x1E696E8B8);
    v2 = sub_1C4F01D38();
    sub_1C4434000(v4, v6);
  }

  return v2;
}

int *sub_1C4942D08(uint64_t a1, unint64_t a2, void (*a3)(char *, void), unint64_t a4, uint64_t a5, char a6, int *a7)
{
  v7 = a7;
  v12 = [a7 intent];
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v14 = v13;
  v15 = sub_1C4943288(v13);
  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = v15;
  v17 = [v14 sender];
  if (!v17)
  {

LABEL_11:
    v20 = sub_1C465B58C();
    v21 = sub_1C43FFB2C(&type metadata for TransformingError, v20);
    sub_1C44199E8(v21, v22);
LABEL_12:

    return v7;
  }

  v28 = v17;
  if (!a2)
  {

    v24 = sub_1C465B58C();
    sub_1C43FFB2C(&type metadata for TransformingError, v24);
    *v25 = 0;
    swift_willThrow();

    v12 = v28;
    goto LABEL_12;
  }

  v18 = sub_1C4428DA0(v16);
  if (a6)
  {
    if (v18 != 1)
    {
      sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C4F0FCC0;
      *(inited + 32) = v28;
      v30 = inited;
      sub_1C49D46E8(v16);

      return MEMORY[0x1E69E7CC0];
    }

LABEL_20:

    return MEMORY[0x1E69E7CC0];
  }

  if (v18 != 1 || !sub_1C4428DA0(v16))
  {
    goto LABEL_20;
  }

  sub_1C4431590(0, (v16 & 0xC000000000000001) == 0, v16);
  if ((v16 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x1C6940F90](0, v16);
  }

  else
  {
    v26 = *(v16 + 32);
  }

  v27 = v26;

  LOBYTE(v30) = 1;
  v7 = sub_1C49432F8(v27, a3, a4, a1, a2, v14, &v30);

  return v7;
}

int *sub_1C4942F64(uint64_t a1, unint64_t a2, void (*a3)(char *, void), unint64_t a4, uint64_t a5, char a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), int *a8)
{
  v15 = [v8 intent];
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v17 = v16;
  v34 = a5;
  v18 = sub_1C4943288(v16);
  if (!v18)
  {
LABEL_12:
    v25 = sub_1C465B58C();
    v26 = sub_1C43FFB2C(&type metadata for TransformingError, v25);
    sub_1C44199E8(v26, v27);

    return v8;
  }

  v19 = v18;
  v20 = [v17 sender];
  if (!v20)
  {

    goto LABEL_12;
  }

  v33 = v20;
  if (!a2)
  {

    v29 = sub_1C465B58C();
    sub_1C43FFB2C(&type metadata for TransformingError, v29);
    *v30 = 0;
    swift_willThrow();

    return v8;
  }

  v21 = sub_1C4428DA0(v19);
  if (a6)
  {
    if (v21 != 1)
    {
      sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1C4F0FCC0;
      *(v22 + 32) = v33;
      v38 = v22;
      v23 = v33;
      sub_1C49D46E8(v19);
      v8 = a8;
      v24 = a7(v38, a3, a4, a1, a2, v34);
      if (v9)
      {
      }

      else
      {
        v8 = v24;
      }

      return v8;
    }

    goto LABEL_20;
  }

  if (v21 != 1 || !sub_1C4428DA0(v19))
  {
LABEL_20:

    return MEMORY[0x1E69E7CC0];
  }

  sub_1C4431590(0, (v19 & 0xC000000000000001) == 0, v19);
  if ((v19 & 0xC000000000000001) != 0)
  {
    v31 = MEMORY[0x1C6940F90](0, v19);
  }

  else
  {
    v31 = *(v19 + 32);
  }

  v32 = v31;

  v39 = 1;
  v8 = sub_1C49432F8(v32, a3, a4, a1, a2, v17, &v39);

  return v8;
}

uint64_t sub_1C4943218(void *a1)
{
  v2 = [a1 value];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C4943288(void *a1)
{
  v1 = [a1 recipients];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1C4461BB8(0, &qword_1EDDDB850, 0x1E696E940);
  v3 = sub_1C4F01678();

  return v3;
}

int *sub_1C49432F8(void *a1, void (*countAndFlagsBits)(char *, void), unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unsigned __int8 *a7)
{
  v8 = v7;
  v15 = sub_1C456902C(&qword_1EC0BFA60, &qword_1C4F3BB30);
  v16 = sub_1C43FBD18(v15);
  MEMORY[0x1EEE9AC00](v16);
  v328 = (&v317 - v17);
  v18 = sub_1C456902C(&qword_1EC0BFA68, &qword_1C4F3BB38);
  v19 = sub_1C43FBD18(v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = sub_1C43FD2C8(&v317 - v20);
  v321 = type metadata accessor for INPersonStructs.IdentifierRelationshipType(v21);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FD2D8();
  v24 = sub_1C43FD2C8(v23);
  v329 = type metadata accessor for INPersonStructs.SoftwareRelationshipType(v24);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FD2D8();
  v327 = v26;
  v27 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v28 = sub_1C43FBD18(v27);
  MEMORY[0x1EEE9AC00](v28);
  v333 = &v317 - v29;
  v30 = sub_1C456902C(&qword_1EC0BFA70, &unk_1C4F75520);
  v31 = sub_1C43FBD18(v30);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBFDC();
  v332 = v32;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBF38();
  v331 = v34;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBF38();
  v330 = v36;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v37);
  v39 = sub_1C43FD2C8(&v317 - v38);
  v40 = type metadata accessor for INPersonStructs.AddressRelationshipType(v39);
  v338 = *(v40 - 1);
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBFDC();
  v337 = v41;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBF38();
  v344 = v43;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBF38();
  v336 = v45;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBF38();
  v342 = v47;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBF38();
  v335 = v49;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBF38();
  v341 = v51;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBF38();
  v340 = v53;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBF38();
  v339 = v55;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FBF38();
  v320 = v57;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v317 - v59;
  v345 = type metadata accessor for INPersonStructs.Software(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FD2D8();
  v346 = v62;
  v343 = type metadata accessor for INPersonStructs.Person(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FD2D8();
  v348 = v64;
  HIDWORD(v324) = *a7;
  v325 = a4;
  v326 = a5;
  v334 = a1;
  sub_1C4942AA8(countAndFlagsBits, a3, a4, a5);
  if (qword_1EDDF78C8 != -1)
  {
    swift_once();
  }

  v65 = type metadata accessor for SourceIdPrefix(0);
  sub_1C442B738(v65, &qword_1EDDF78D0);
  String.base64EncodedSHA(withPrefix:)();
  v67 = v66;
  v69 = v68;

  v70 = HIBYTE(v69) & 0xF;
  if ((v69 & 0x2000000000000000) == 0)
  {
    v70 = v67 & 0xFFFFFFFFFFFFLL;
  }

  if (!v70)
  {

    sub_1C465B58C();
    swift_allocError();
    *v80 = 0;
    swift_willThrow();
    return v40;
  }

  v71 = v67;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v72 = v348;
  v73 = v71;
  sub_1C4DCFD88(v71, v69, v74, v75, v76, v77, v78, v79, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328);
  if (v8)
  {

    return v40;
  }

  v318 = v71;
  v319 = v69;
  if (qword_1EDDF79A0 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v65, &qword_1EDDF79A8);
  String.base64EncodedSHA(withPrefix:)();
  v81 = v346;
  sub_1C4DD0708();
  v82 = (v81 + *(v345 + 36));
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  *v82 = countAndFlagsBits;
  v82[1] = a3;
  v83 = *(v343 + 56);

  *(v72 + v83) = MEMORY[0x1E69E7CC0];
  sub_1C4DD8234();
  v84 = [v334 displayName];
  if (!v84)
  {
    sub_1C4F01138();
    v73 = v85;
    v84 = sub_1C4F01108();
  }

  sub_1C4F01138();
  object = v86;
  sub_1C441BA14();
  v317 = 0;
  if (!v89)
  {

LABEL_21:
    v96 = v344;
    goto LABEL_22;
  }

  countAndFlagsBits = v88;
  v90 = [objc_allocWithZone(MEMORY[0x1E6996728]) init];
  v91 = [v90 typeOfHandleString_];

  if (v91 != 1)
  {
    v73 = v72 + *(v343 + 44);

    *v73 = countAndFlagsBits;
    *(v73 + 8) = object;
    goto LABEL_21;
  }

  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v92, v93, v94, v95);
  sub_1C4EFD1D8();
  v73 = v40[6];
  v96 = v344;
  if (qword_1EDDFD0D0 != -1)
  {
    goto LABEL_115;
  }

  while (1)
  {
    v97 = type metadata accessor for Source(0);
    sub_1C442B738(v97, qword_1EDDFD0D8);
    sub_1C4419A08();
    sub_1C448CDE4(v98, &v60[v73], v99);
    sub_1C4EFE518();
    v73 = &v60[v40[8]];
    sub_1C4EFE4E8();
    v100 = &v60[v40[10]];
    *v100 = 0;
    *(v100 + 1) = 0;
    sub_1C4EFE478();
    v101 = &v60[v40[12]];
    *v101 = 0;
    *(v101 + 1) = 0;
    sub_1C4EFE618();
    v102 = &v60[v40[14]];
    *v102 = 0;
    *(v102 + 1) = 0;
    sub_1C43FCF64();
    v103 = v345;
    sub_1C440BAA8(v104, v105, v106, v345);
    *v73 = countAndFlagsBits;
    *(v73 + 8) = object;
    v107 = sub_1C442CC44();
    sub_1C4404430(v107, v108, v109);
    sub_1C43FBD94();
    sub_1C440BAA8(v110, v111, v112, v103);
    sub_1C4DD0FE4(object);
    object = v72;
    countAndFlagsBits = sub_1C4DD10F4(v347);
    if (*v113)
    {
      object = v113;
      sub_1C45893E4();
      v73 = *(*object + 16);
      sub_1C4589F7C();
      *(*object + 16) = v73 + 1;
      sub_1C4400648();
      sub_1C448CDE4(v60, v114, v115);
    }

    countAndFlagsBits(v347, 0);
    sub_1C441FD48();
    sub_1C4944A0C(v60, v116);
LABEL_22:
    v117 = [v334 relationship];
    if (v117)
    {
      v118 = v117;
      v73 = sub_1C4F01138();
      countAndFlagsBits = v119;

      object = (v72 + *(v343 + 36));

      *object = v73;
      object[1] = countAndFlagsBits;
    }

    v120 = [v334 personHandle];
    if (v120)
    {
      v60 = v120;
      sub_1C4A99AB0(v120);
      if (!v121 || (v73 = v121, v122 = String.normalizedContactHandle()(), countAndFlagsBits = v122.value._countAndFlagsBits, object = v122.value._object, , !v122.value._object))
      {

        goto LABEL_39;
      }

      v123 = (v122.value._object >> 56) & 0xF;
      if ((v122.value._object & 0x2000000000000000) == 0)
      {
        v123 = v122.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (!v123)
      {
LABEL_35:

LABEL_38:

        goto LABEL_39;
      }

      v124 = [v334 displayName];
      v72 = sub_1C4F01138();
      v73 = v125;

      if (v122.value._countAndFlagsBits == v72 && v122.value._object == v73)
      {

        goto LABEL_38;
      }

      v72 = sub_1C4F02938();

      if (v72)
      {
        goto LABEL_35;
      }

      v277 = [v60 type];
      sub_1C4EFEEF8();
      if (v277 == 2)
      {
        v279 = v339;
        sub_1C43FCF64();
        sub_1C440BAA8(v288, v289, v290, v291);
        sub_1C4EFD1D8();
        v292 = v40[6];
        v278 = v345;
        if (qword_1EDDFD0D0 != -1)
        {
          sub_1C4407180();
          swift_once();
        }

        v293 = type metadata accessor for Source(0);
        sub_1C442B738(v293, qword_1EDDFD0D8);
        sub_1C4419A08();
        sub_1C448CDE4(v294, v279 + v292, v295);
        sub_1C4EFE518();
        sub_1C43FC4E8(v40[8]);
        sub_1C4EFE4E8();
        sub_1C440D554();
        v73 = v279 + v40[12];
      }

      else
      {
        v278 = v345;
        if (v277 != 1)
        {
          v279 = v340;
          sub_1C43FCF64();
          sub_1C440BAA8(v296, v297, v298, v299);
          sub_1C4EFD1D8();
          v300 = v40[6];
          if (qword_1EDDFD0D0 != -1)
          {
            sub_1C4407180();
            swift_once();
          }

          v301 = type metadata accessor for Source(0);
          sub_1C442B738(v301, qword_1EDDFD0D8);
          sub_1C4419A08();
          sub_1C448CDE4(v302, v279 + v300, v303);
          sub_1C4EFE518();
          sub_1C43FC4E8(v40[8]);
          sub_1C4EFE4E8();
          sub_1C440D554();
          sub_1C43FC4E8(v40[12]);
          sub_1C4EFE618();
          v73 = v279 + v40[14];
          goto LABEL_111;
        }

        v279 = v320;
        sub_1C43FCF64();
        sub_1C440BAA8(v280, v281, v282, v283);
        sub_1C4EFD1D8();
        v284 = v40[6];
        if (qword_1EDDFD0D0 != -1)
        {
          sub_1C4407180();
          swift_once();
        }

        v285 = type metadata accessor for Source(0);
        sub_1C442B738(v285, qword_1EDDFD0D8);
        sub_1C4419A08();
        sub_1C448CDE4(v286, v279 + v284, v287);
        sub_1C4EFE518();
        v73 = v279 + v40[8];
        sub_1C4EFE4E8();
        sub_1C440D554();
        sub_1C43FC4E8(v40[12]);
      }

      sub_1C4EFE618();
      sub_1C43FC4E8(v40[14]);
LABEL_111:
      sub_1C43FCF64();
      sub_1C440BAA8(v304, v305, v306, v278);
      *v73 = v122;
      v307 = sub_1C442CC44();
      sub_1C4404430(v307, v308, v309);
      sub_1C43FBD94();
      sub_1C440BAA8(v310, v311, v312, v278);
      object = v279;
      sub_1C4DD0FE4(v122.value._object);
      v72 = v347;
      countAndFlagsBits = sub_1C44251A4();
      if (*v313)
      {
        object = v313;
        sub_1C45893E4();
        v73 = *(*object + 16);
        sub_1C4589F7C();
        *(*object + 16) = v73 + 1;
        sub_1C4400648();
        sub_1C448CDE4(v279, v314, v315);
      }

      countAndFlagsBits(v347, 0);

      sub_1C441FD48();
      sub_1C4944A0C(v279, v316);
    }

LABEL_39:
    v127 = sub_1C494480C(v334);
    if (!v127)
    {
      v127 = MEMORY[0x1E69E7CC0];
    }

    v343 = v127;
    v340 = sub_1C4428DA0(v127);
    if (!v340)
    {
      goto LABEL_89;
    }

    if (v340 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_115:
    sub_1C4407180();
    swift_once();
  }

  v128 = 0;
  v339 = v343 & 0xC000000000000001;
  do
  {
    if (v339)
    {
      v129 = MEMORY[0x1C6940F90](v128, v343);
    }

    else
    {
      v129 = *(v343 + 8 * v128 + 32);
    }

    v130 = v129;
    v131 = sub_1C4A99AB0(v129);
    if (v132)
    {
      v133 = v131;
      v134 = v132;
      v135 = [v130 type];
      v136 = sub_1C4EFEEF8();
      if (v135 == 1)
      {
        v155 = v341;
        sub_1C43FCF64();
        sub_1C4414C2C(v156, v157, v158);
        v159 = v40[6];
        if (qword_1EDDFD0D0 != -1)
        {
          sub_1C4407180();
          swift_once();
        }

        v160 = type metadata accessor for Source(0);
        sub_1C442B738(v160, qword_1EDDFD0D8);
        sub_1C4419A08();
        sub_1C448CDE4(v161, v155 + v159, v162);
        sub_1C4EFE518();
        v163 = (v155 + v40[8]);
        sub_1C4EFE4E8();
        sub_1C44334F8();
        sub_1C43FC4DC(v40[12]);
        sub_1C4EFE618();
        sub_1C43FC4DC(v40[14]);
        sub_1C43FCF64();
        v96 = v345;
        sub_1C440BAA8(v164, v165, v166, v345);
        *v163 = v133;
        v163[1] = v134;
        v167 = sub_1C442CC44();
        v168 = v330;
        sub_1C448CDE4(v167, v330, v169);
        sub_1C43FBD94();
        sub_1C4405040(v170, v171, v172);
        if (sub_1C441ED04())
        {
          sub_1C4944940(v168);
        }

        else
        {
          v163 = v333;
          sub_1C4EFE958();
          sub_1C4944940(v168);
          sub_1C44173D0();
        }

        sub_1C44251A4();
        sub_1C441CAF0();
        if (v203)
        {
          v204 = v202;
          sub_1C4400648();
          sub_1C448CDE4(v341, v335, v205);
          v206 = *v204;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v204 = v206;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1C4425C94();
            sub_1C44350F8(v223);
          }

          sub_1C442BC4C();
          if (v197)
          {
            sub_1C4410E40(v208);
            sub_1C44350F8(v224);
          }

          *(v206 + 16) = v163;
          sub_1C4411EA4();
          sub_1C49449A8(v335, v209);
        }

        v210 = sub_1C4410E30();
        v136(v210);

        sub_1C441FD48();
        v201 = v341;
      }

      else if (v135 == 2)
      {
        v137 = v342;
        sub_1C43FCF64();
        sub_1C4414C2C(v138, v139, v140);
        v141 = v40[6];
        if (qword_1EDDFD0D0 != -1)
        {
          sub_1C4407180();
          swift_once();
        }

        v142 = type metadata accessor for Source(0);
        sub_1C442B738(v142, qword_1EDDFD0D8);
        sub_1C4419A08();
        sub_1C448CDE4(v143, v137 + v141, v144);
        sub_1C4EFE518();
        sub_1C43FC4DC(v40[8]);
        sub_1C4EFE4E8();
        sub_1C44334F8();
        v145 = (v137 + v40[12]);
        sub_1C4EFE618();
        sub_1C43FC4DC(v40[14]);
        sub_1C43FCF64();
        v96 = v345;
        sub_1C440BAA8(v146, v147, v148, v345);
        *v145 = v133;
        v145[1] = v134;
        v149 = sub_1C442CC44();
        v150 = v331;
        sub_1C448CDE4(v149, v331, v151);
        sub_1C43FBD94();
        sub_1C4405040(v152, v153, v154);
        if (sub_1C441ED04())
        {
          sub_1C4944940(v150);
        }

        else
        {
          v145 = v333;
          sub_1C4EFE958();
          sub_1C4944940(v150);
          sub_1C44173D0();
        }

        sub_1C44251A4();
        sub_1C441CAF0();
        if (v191)
        {
          v192 = v190;
          sub_1C4400648();
          sub_1C448CDE4(v342, v336, v193);
          v194 = *v192;
          v195 = swift_isUniquelyReferenced_nonNull_native();
          *v192 = v194;
          if ((v195 & 1) == 0)
          {
            sub_1C4425C94();
            sub_1C44350F8(v221);
          }

          sub_1C442BC4C();
          if (v197)
          {
            sub_1C4410E40(v196);
            sub_1C44350F8(v222);
          }

          *(v194 + 16) = v145;
          sub_1C4411EA4();
          sub_1C49449A8(v336, v198);
        }

        v199 = sub_1C4410E30();
        v136(v199);

        sub_1C441FD48();
        v201 = v342;
      }

      else
      {
        sub_1C43FCF64();
        sub_1C4414C2C(v173, v174, v175);
        v176 = v40[6];
        if (qword_1EDDFD0D0 != -1)
        {
          sub_1C4407180();
          swift_once();
        }

        v177 = type metadata accessor for Source(0);
        sub_1C442B738(v177, qword_1EDDFD0D8);
        sub_1C4419A08();
        sub_1C448CDE4(v178, v96 + v176, v179);
        sub_1C4EFE518();
        sub_1C43FC4DC(v40[8]);
        sub_1C4EFE4E8();
        sub_1C44334F8();
        sub_1C43FC4DC(v40[12]);
        sub_1C4EFE618();
        v180 = (v96 + v40[14]);
        sub_1C43FCF64();
        v96 = v345;
        sub_1C440BAA8(v181, v182, v183, v345);
        *v180 = v133;
        v180[1] = v134;
        v184 = sub_1C442CC44();
        v185 = v332;
        sub_1C448CDE4(v184, v332, v186);
        sub_1C43FBD94();
        sub_1C4405040(v187, v188, v189);
        if (sub_1C441ED04())
        {
          sub_1C4944940(v185);
        }

        else
        {
          v180 = v333;
          sub_1C4EFE958();
          sub_1C4944940(v185);
          sub_1C44173D0();
        }

        sub_1C44251A4();
        sub_1C441CAF0();
        if (v212)
        {
          v213 = v211;
          sub_1C4400648();
          sub_1C448CDE4(v96, v337, v214);
          v215 = *v213;
          v216 = swift_isUniquelyReferenced_nonNull_native();
          *v213 = v215;
          if ((v216 & 1) == 0)
          {
            sub_1C4425C94();
            sub_1C44350F8(v225);
          }

          sub_1C442BC4C();
          if (v197)
          {
            sub_1C4410E40(v217);
            sub_1C44350F8(v226);
          }

          *(v215 + 16) = v180;
          sub_1C4411EA4();
          sub_1C49449A8(v218, v219);
        }

        v220 = sub_1C4410E30();
        v136(v220);

        sub_1C441FD48();
        v201 = v96;
      }

      sub_1C4944A0C(v201, v200);
    }

    else
    {
    }

    ++v128;
  }

  while (v340 != v128);
LABEL_89:

  v227 = sub_1C4EFEEF8();
  v228 = v327;
  sub_1C43FCF64();
  sub_1C440BAA8(v229, v230, v231, v227);
  v232 = v329;
  sub_1C4EFD228();
  v233 = v232[6];
  if (qword_1EDDFD0D0 != -1)
  {
    sub_1C4407180();
    swift_once();
  }

  v234 = type metadata accessor for Source(0);
  v235 = sub_1C442B738(v234, qword_1EDDFD0D8);
  sub_1C4419A08();
  sub_1C448CDE4(v236, v228 + v233, v237);
  sub_1C4EFE558();
  v238 = (v228 + v232[8]);
  sub_1C4EFE658();
  v239 = (v228 + v232[10]);
  sub_1C4EFE678();
  v240 = (v228 + v232[12]);
  *v240 = 0;
  v240[1] = 0;
  sub_1C43FCF64();
  v241 = v345;
  sub_1C440BAA8(v242, v243, v244, v345);
  v245 = v326;
  *v238 = v325;
  v238[1] = v245;
  *v239 = 0xD000000000000013;
  v239[1] = 0x80000001C4F8E570;
  v246 = sub_1C442CC44();
  sub_1C4404430(v246, v247, v248);
  sub_1C43FBD94();
  sub_1C440BAA8(v249, v250, v251, v241);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4DD118C(v238);
  v252 = sub_1C494486C(v334);
  if (v253)
  {
    v254 = v252;
    v255 = v253;
    sub_1C441BA14();
    if (v256)
    {
      v257 = v322;
      sub_1C43FCF64();
      sub_1C440BAA8(v258, v259, v260, v227);
      v261 = v321;
      sub_1C4EFD258();
      sub_1C4419A08();
      sub_1C448CDE4(v235, v257 + v262, v263);
      sub_1C4EFE558();
      v264 = (v257 + *(v261 + 32));
      sub_1C4EFE658();
      *(v257 + *(v261 + 40)) = xmmword_1C4F3BA50;
      *v264 = v254;
      v264[1] = v255;
      v265 = v323;
      sub_1C448CDE4(v257, v323, type metadata accessor for INPersonStructs.IdentifierRelationshipType);
      sub_1C43FBD94();
      sub_1C440BAA8(v266, v267, v268, v261);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4DD129C(v265);

      *v240 = v254;
      v240[1] = v255;
      sub_1C4944A0C(v257, type metadata accessor for INPersonStructs.IdentifierRelationshipType);
    }

    else
    {
    }
  }

  v40 = v328;
  sub_1C448CDE4(v228, v328, type metadata accessor for INPersonStructs.SoftwareRelationshipType);
  sub_1C43FBD94();
  sub_1C440BAA8(v269, v270, v271, v329);
  v272 = v348;
  sub_1C4DD13A8(v40);
  v347[0] = BYTE4(v324);
  v273 = v317;
  sub_1C4DD14B4();
  if (!v273)
  {
    v40 = v274;
  }

  sub_1C43FF1E4();
  sub_1C4408BE8();
  sub_1C440ACDC();
  sub_1C4944A0C(v272, v275);
  return v40;
}

uint64_t sub_1C494480C(void *a1)
{
  v1 = [a1 aliases];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1C4944A64();
  v3 = sub_1C4F01678();

  return v3;
}

uint64_t sub_1C494486C(void *a1)
{
  v1 = [a1 customIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C49448D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BFA70, &unk_1C4F75520);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4944940(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BFA70, &unk_1C4F75520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C49449A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for INPersonStructs.AddressRelationshipType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4944A0C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C4944A64()
{
  result = qword_1EC0BFA78;
  if (!qword_1EC0BFA78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0BFA78);
  }

  return result;
}

uint64_t type metadata accessor for INPersonSourceIngestor(uint64_t a1)
{
  result = qword_1EDDE2A80;
  if (!qword_1EDDE2A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4944B1C()
{
  sub_1C44067F0();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  sub_1C44067F0();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = (v3 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x1E69E7CD0];
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  type metadata accessor for PhaseStores(0);
  v12 = v0;
  v14 = v0;
  v15 = v3;
  v16 = v6;
  v17 = v1;
  v20 = v1;
  v18 = v5;
  v19 = v2;
  GraphStore.tripleInsertingTransaction(transactionBody:)(sub_1C4945B40, v13);
  if (!v11)
  {
    swift_beginAccess();
    v7 = *v4;
    if (!*v4)
    {
      sub_1C4EF9AE8();
      sub_1C46452D4();

      v9 = v12;
      goto LABEL_5;
    }

    swift_willThrow();
    v8 = v7;
  }

  v9 = v12;
LABEL_5:
  sub_1C4944CEC(v9, (v2 + 16), (v1 + 16));
}

uint64_t sub_1C4944CEC(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = type metadata accessor for Pipeline.StatusStore(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4430D74(a1, v9, type metadata accessor for Configuration);
  v9[*(v7 + 28)] = *(a1 + *(type metadata accessor for INPersonSourceIngestor(0) + 24));
  Pipeline.StatusStore.currentSessionId()();
  sub_1C47CE078(v9);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v11 = sub_1C4F01108();

  *(inited + 48) = v11;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  sub_1C4461BB8(0, &qword_1EDDFA440, 0x1E696AEC0);
  *(inited + 72) = sub_1C4F01EF8();
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  swift_beginAccess();
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  swift_beginAccess();
  v12 = *a3;
  swift_beginAccess();
  result = v12 - *a2;
  if (__OFSUB__(v12, *a2))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}

void sub_1C4944FA4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v47 = a4;
  v44 = a7;
  v45 = a8;
  v42 = a6;
  v43 = a2;
  v40 = a5;
  v41 = a1;
  v46 = a9;
  v10 = type metadata accessor for INPersonSourceIngestor(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_autoreleasePoolPush();
  v15 = [objc_opt_self() intent];
  v16 = [v15 publisherWithStartTime:0 endTime:0 maxEvents:0 reversed:1];
  v39 = v16;

  objc_autoreleasePoolPop(v14);
  v52 = sub_1C4945398;
  v53 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v36[1] = &v50;
  v50 = sub_1C45AF9C8;
  v51 = &unk_1F43F08D0;
  v17 = _Block_copy(&aBlock);
  v38 = [v16 filterWithIsIncluded_];
  _Block_release(v17);
  v52 = nullsub_1;
  v53 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_1C44405F8;
  v51 = &unk_1F43F08F8;
  v37 = _Block_copy(&aBlock);
  sub_1C4430D74(a3, v13, type metadata accessor for INPersonSourceIngestor);
  v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v19 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  sub_1C4945B64(v13, v25 + v18);
  *(v25 + v19) = v47;
  v27 = v40;
  v26 = v41;
  *(v25 + v20) = v40;
  *(v25 + v21) = v42;
  v28 = v45;
  *(v25 + v22) = v44;
  v29 = (v25 + v23);
  v30 = v43;
  *v29 = v26;
  v29[1] = v30;
  *(v25 + v24) = v28;
  v52 = sub_1C4945BC8;
  v53 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_1C45AF9C8;
  v51 = &unk_1F43F0948;
  v31 = _Block_copy(&aBlock);

  v32 = v27;

  v34 = v37;
  v33 = v38;
  v35 = [v38 sinkWithCompletion:v37 shouldContinue:v31];
  _Block_release(v31);
  _Block_release(v34);

  [objc_opt_self() _resetCache];
  swift_beginAccess();
  *v46 = *(v32 + 16);
}

id sub_1C4945398(void *a1)
{
  result = [a1 eventBody];
  if (result)
  {
    v2 = result;
    v3 = sub_1C4942A54(result);
    v5 = v4;
    sub_1C4461BB8(0, &qword_1EDDDB8F0, 0x1E696E9E8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = NSStringFromClass(ObjCClassFromMetadata);
    v8 = sub_1C4F01138();
    v10 = v9;

    if (v5)
    {
      if (v3 == v8 && v5 == v10)
      {

LABEL_12:
        v13 = [v2 interactionDirection];

        return (v13 == 2);
      }

      v12 = sub_1C4F02938();

      if (v12)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

void sub_1C49454B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = objc_autoreleasePoolPush();
  sub_1C4ACEAB4();
  swift_beginAccess();
  if (*(a3 + 16))
  {
    swift_beginAccess();
    *(a4 + 16) = 1;
LABEL_7:
    objc_autoreleasePoolPop(v15);
    return;
  }

  swift_beginAccess();
  v16 = *(a5 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v18;
    v19 = [a1 eventBody];
    if (!v19)
    {
      goto LABEL_7;
    }

    v20 = v19;
    v21 = sub_1C4942C20();
    v22 = v21;
    if (!v21)
    {

      goto LABEL_7;
    }

    v23 = [v21 intent];
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    if (!v24 || (v49 = sub_1C4942A60(v24), (v50 = v25) == 0))
    {

      goto LABEL_7;
    }

    v45 = v23;
    v47 = v20;
    swift_beginAccess();
    v26 = *(a6 + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v27 = sub_1C4499AD0(v49, v50, v26);

    if (v27)
    {

      goto LABEL_7;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v28 = [v47 bundleID];
    v43 = v22;
    v29 = sub_1C4F01138();
    v31 = v30;

    v32 = type metadata accessor for PhaseStores(0);
    sub_1C4942D08(v49, v50, v29, v31, *(a2 + *(v32 + 32)), 0, v43);

    swift_beginAccess();
    sub_1C44869B4(v54, v49, v50, v33, v34, v35, v36, v37, v42, v43, v45, v47, v49, v50, a7, v53, v54[0], v54[1], v54[2], v54[3], v54[4], v54[5], v54[6], v54[7], v54[8], v54[9], v54[10], v54[11], v54[12], v54[13]);
    swift_endAccess();

    sub_1C4812140();
    v39 = v38;

    v52(v39);

    swift_beginAccess();
    v40 = *(a9 + 16);
    v17 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (!v17)
    {
      *(a9 + 16) = v41;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_1C4945948()
{
  sub_1C4944B1C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4945A30(uint64_t a1)
{
  result = sub_1C4945AFC(&qword_1EDDE2AA8, &unk_1C4F3BB58);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4945A74(uint64_t a1)
{
  result = sub_1C4945AFC(&qword_1EDDE2A90, &unk_1C4F3BB80);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4945AB8(uint64_t a1)
{
  result = sub_1C4945AFC(&qword_1EDDE2A98, &unk_1C4F3BB9C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4945AFC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INPersonSourceIngestor(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4945B64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for INPersonSourceIngestor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4945BC8(void *a1)
{
  v3 = *(type metadata accessor for INPersonSourceIngestor(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1C49454B0(a1, v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v7), *(v1 + v8), *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
  return v9 & 1;
}

void *sub_1C4945CB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1;
    v45 = MEMORY[0x1E69E7CC0];
    sub_1C459D768(0, v3, 0);
    v44 = v45;
    v5 = a2;
    v6 = sub_1C486C288();
    v8 = v7;
    v10 = v9;
    v11 = v4 + 56;
    result = objc_opt_self();
    v13 = v8;
    v14 = 0;
    v40 = (v5 + OBJC_IVAR____TtC24IntelligencePlatformCore18InstalledAppSignal_config);
    v41 = result;
    v36 = v4 + 64;
    v37 = v3;
    v38 = v4 + 56;
    v39 = v4;
    if ((v6 & 0x8000000000000000) == 0)
    {
      while (v6 < 1 << *(v4 + 32))
      {
        v15 = v6 >> 6;
        if ((*(v11 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v4 + 36) != v13)
        {
          goto LABEL_26;
        }

        v43 = v10;
        v42 = v13;
        v16 = (*(v4 + 48) + 16 * v6);
        v18 = *v16;
        v17 = v16[1];
        v19 = *v40;
        v20 = v40[1];
        v21 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
        swift_bridgeObjectRetain_n();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v22 = sub_1C4673B1C(v19, v20, 0x6174736E49707061, 0xEC00000064656C6CLL, v18, v17);
        v23 = [v41 featureValueWithInt64_];

        v24 = v44;
        v26 = *(v44 + 16);
        v25 = *(v44 + 24);
        if (v26 >= v25 >> 1)
        {
          result = sub_1C459D768((v25 > 1), v26 + 1, 1);
          v24 = v44;
        }

        *(v24 + 16) = v26 + 1;
        v27 = v24 + 16 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v23;
        if (v43)
        {
          goto LABEL_30;
        }

        v11 = v38;
        v4 = v39;
        v28 = 1 << *(v39 + 32);
        if (v6 >= v28)
        {
          goto LABEL_27;
        }

        v29 = *(v38 + 8 * v15);
        if ((v29 & (1 << v6)) == 0)
        {
          goto LABEL_28;
        }

        v44 = v24;
        if (*(v39 + 36) != v42)
        {
          goto LABEL_29;
        }

        v30 = v29 & (-2 << (v6 & 0x3F));
        if (v30)
        {
          v28 = __clz(__rbit64(v30)) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v31 = v15 << 6;
          v32 = v15 + 1;
          v33 = (v36 + 8 * v15);
          while (v32 < (v28 + 63) >> 6)
          {
            v35 = *v33++;
            v34 = v35;
            v31 += 64;
            ++v32;
            if (v35)
            {
              result = sub_1C45E8E98(v6, v42, 0);
              v28 = __clz(__rbit64(v34)) + v31;
              goto LABEL_19;
            }
          }

          result = sub_1C45E8E98(v6, v42, 0);
        }

LABEL_19:
        if (++v14 == v37)
        {

          return v44;
        }

        v10 = 0;
        v13 = *(v39 + 36);
        v6 = v28;
        if (v28 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1C4945FCC(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore18InstalledAppSignal____lazy_storage___featureNames) = 0;
  *(v3 + 16) = v5;
  *(v3 + 32) = v6;
  *(v3 + 40) = *(a1 + 24);
  sub_1C463F300(a2, v3 + OBJC_IVAR____TtC24IntelligencePlatformCore18InstalledAppSignal_config);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore18InstalledAppSignal_store) = a3;
  return v3;
}

uint64_t sub_1C4946038()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore18InstalledAppSignal____lazy_storage___featureNames;
  if (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore18InstalledAppSignal____lazy_storage___featureNames))
  {
    v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore18InstalledAppSignal____lazy_storage___featureNames);
  }

  else
  {
    sub_1C448DE08();
    v2 = v3;
    *(v0 + v1) = v3;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v2;
}

uint64_t sub_1C49460A4()
{
  v86 = type metadata accessor for GraphTriple(0);
  sub_1C43FCDF8();
  v72 = v0;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v71 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v78 = &v71 - v5;
  v6 = sub_1C4EFDE88();
  sub_1C43FCDF8();
  v8 = v7;
  v75 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v83 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v77 = &v71 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v76 = &v71 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v71 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v73 = &v71 - v19;
  sub_1C4EFDE98();
  sub_1C43FCDF8();
  v81 = v21;
  v82 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v85 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  sub_1C4EFEEF8();
  v23 = swift_allocObject();
  v79 = xmmword_1C4F0D130;
  *(v23 + 16) = xmmword_1C4F0D130;
  sub_1C4EFE778();
  sub_1C4D504A4();
  v74 = v24;
  v25 = *(v8 + 104);
  sub_1C4407074();
  v25();
  sub_1C4407074();
  v25();
  v26 = v76;
  sub_1C4407074();
  v25();
  v27 = v77;
  sub_1C4407074();
  v25();
  v28 = v83;
  sub_1C4407074();
  v25();
  v69 = v28;
  v70 = 0;
  v29 = v73;
  sub_1C4EFDCD8();

  v30 = *(v75 + 8);
  v30(v83, v6);
  v30(v27, v6);
  v30(v26, v6);
  v30(v17, v6);
  v30(v29, v6);
  v31 = sub_1C4EFF8F8();
  v32 = v78;
  sub_1C440BAA8(v78, 1, 1, v31);
  v33 = sub_1C498DB80();
  sub_1C482ADC8(v32);
  v34 = *(v33 + 16);
  if (v34)
  {
    v87 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v34, 0);
    v35 = v87;
    v36 = *(v72 + 80);
    v83 = v33;
    v37 = v33 + ((v36 + 32) & ~v36);
    v38 = v72[9];
    do
    {
      sub_1C449EF40(v37, v3, type metadata accessor for GraphTriple);
      v39 = &v3[*(v86 + 8)];
      v40 = *v39;
      v41 = *(v39 + 1);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C449F280(v3, type metadata accessor for GraphTriple);
      v87 = v35;
      v43 = *(v35 + 16);
      v42 = *(v35 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_1C44CD9C0(v42 > 1, v43 + 1, 1);
        v35 = v87;
      }

      *(v35 + 16) = v43 + 1;
      v44 = v35 + 16 * v43;
      *(v44 + 32) = v40;
      *(v44 + 40) = v41;
      v37 += v38;
      --v34;
    }

    while (v34);
  }

  v45 = sub_1C4499940();
  v46 = v84;

  v47 = v80;
  v48 = sub_1C4945CB8(v45, v46);

  v50 = v46[2];
  v49 = v46[3];
  v52 = v46[4];
  v51 = v46[5];
  v53 = v46[6];
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  v86 = &v71;
  *(inited + 16) = v79;
  *(inited + 32) = v50;
  *(inited + 40) = v49;
  MEMORY[0x1EEE9AC00](inited);
  *(&v71 - 6) = v55;
  *(&v71 - 5) = v52;
  *(&v71 - 4) = v51;
  *(&v71 - 3) = v53;
  v69 = v48;
  swift_bridgeObjectRetain_n();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C4418704(sub_1C4673BE8, (&v71 - 8), v56, v57, v58, v59, v60, v61, v71, v72);
  if (v47)
  {
    (*(v81 + 8))(v85, v82);

    swift_setDeallocating();
    sub_1C44DEE40();
  }

  else
  {

    swift_setDeallocating();
    sub_1C44DEE40();

    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v63 = sub_1C4F00978();
    sub_1C442B738(v63, qword_1EDE2DF70);
    v64 = v84;

    v65 = sub_1C4F00968();
    v66 = sub_1C4F01CB8();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v87 = v68;
      *v67 = 136315138;
      *(v67 + 4) = sub_1C441D828(*(v64 + OBJC_IVAR____TtC24IntelligencePlatformCore18InstalledAppSignal_config), *(v64 + OBJC_IVAR____TtC24IntelligencePlatformCore18InstalledAppSignal_config + 8), &v87);
      _os_log_impl(&dword_1C43F8000, v65, v66, "SignalView %s: Wrote features for app installations.", v67, 0xCu);
      sub_1C440962C(v68);
      MEMORY[0x1C6942830](v68, -1, -1);
      MEMORY[0x1C6942830](v67, -1, -1);
    }

    return (*(v81 + 8))(v85, v82);
  }
}

uint64_t sub_1C49468E0()
{

  sub_1C449F280(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore18InstalledAppSignal_config, _s10ViewConfigVMa);

  return v0;
}

uint64_t sub_1C4946968()
{
  sub_1C49468E0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InstalledAppSignal(uint64_t a1)
{
  result = qword_1EC0BFA88;
  if (!qword_1EC0BFA88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4946A14(uint64_t a1)
{
  result = _s10ViewConfigVMa(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C4946AC8()
{
  sub_1C49460A4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4946BB4()
{
  if (qword_1EC0B70F8 != -1)
  {
    swift_once();
  }

  qword_1EC152598 = qword_1EC0C37E8;
  unk_1EC1525A0 = *algn_1EC0C37F0;
  qword_1EC1525B0 = qword_1EC0C3800;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4946C84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636F4C70616DLL && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F72506369736162 && a2 == 0xEF73656974726570)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4946D58(char a1)
{
  if (a1)
  {
    return 0x6F72506369736162;
  }

  else
  {
    return 0x7461636F4C70616DLL;
  }
}

uint64_t sub_1C4946DA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = sub_1C456902C(&qword_1EC0BFAB8, &qword_1C4F3BD48);
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v13 - v10;
  sub_1C4409678(a1, a1[3]);
  sub_1C49473F8();
  sub_1C4F02BF8();
  v15 = 0;
  sub_1C4F02798();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C46D4190(&qword_1EC0B8728, sub_1C458A984, MEMORY[0x1E69E6300]);
    sub_1C4F027E8();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_1C4946F6C(void *a1)
{
  sub_1C456902C(&qword_1EC0BFAA8, &unk_1C4F3BD38);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  v4 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C49473F8();
  sub_1C4F02BC8();
  if (!v1)
  {
    v4 = sub_1C4F02678();
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C46D4190(&qword_1EC0B8740, sub_1C458AA50, MEMORY[0x1E69E6330]);
    sub_1C4F026C8();
    v6 = sub_1C44069E0();
    v7(v6);
  }

  sub_1C440962C(a1);
  return v4;
}

uint64_t sub_1C4947184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4946C84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C49471AC(uint64_t a1)
{
  v2 = sub_1C49473F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C49471E8(uint64_t a1)
{
  v2 = sub_1C49473F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4947224@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B6DA8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC1525B0;
  *a1 = qword_1EC152598;
  *(a1 + 8) = unk_1EC1525A0;
  *(a1 + 24) = v2;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C49472D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4946F6C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1C4947320(uint64_t a1)
{
  *(a1 + 8) = sub_1C4947350();
  result = sub_1C49473A4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4947350()
{
  result = qword_1EC0BFA98;
  if (!qword_1EC0BFA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFA98);
  }

  return result;
}

unint64_t sub_1C49473A4()
{
  result = qword_1EC0BFAA0;
  if (!qword_1EC0BFAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFAA0);
  }

  return result;
}

unint64_t sub_1C49473F8()
{
  result = qword_1EC0BFAB0;
  if (!qword_1EC0BFAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFAB0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InstantMessageAddress.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C494752C()
{
  result = qword_1EC0BFAC0;
  if (!qword_1EC0BFAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFAC0);
  }

  return result;
}

unint64_t sub_1C4947584()
{
  result = qword_1EC0BFAC8;
  if (!qword_1EC0BFAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFAC8);
  }

  return result;
}

unint64_t sub_1C49475DC()
{
  result = qword_1EC0BFAD0;
  if (!qword_1EC0BFAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFAD0);
  }

  return result;
}

uint64_t sub_1C494765C()
{

  sub_1C440CABC();
  sub_1C47D21A8();
  v1 = v0;

  return v1;
}

uint64_t sub_1C49476D0()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_1C4405D5C();
  sub_1C440CABC();
  sub_1C47D21A8();
  sub_1C4403374();
  return sub_1C440E410();
}

uint64_t sub_1C494776C()
{

  sub_1C440CABC();
  sub_1C47D21A8();
  v1 = v0;

  return v1;
}

uint64_t sub_1C49477E0()
{
  sub_1C442FE68();
  sub_1C440CABC();
  sub_1C47D21A8();
  sub_1C4403374();
  return sub_1C440E410();
}

uint64_t sub_1C4947844()
{
  sub_1C442FE68();
  sub_1C440CABC();
  sub_1C47D21A8();
  sub_1C4403374();
  return sub_1C440E410();
}

uint64_t sub_1C49478A4()
{
  sub_1C442FE68();
  sub_1C440CABC();
  sub_1C47D21A8();
  sub_1C4403374();
  return sub_1C440E410();
}

uint64_t sub_1C4947908()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_1C4405D5C();
  sub_1C440CABC();
  sub_1C47D21A8();
  sub_1C4403374();
  return sub_1C440E410();
}

uint64_t sub_1C4947978()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_1C4405D5C();
  sub_1C440CABC();
  sub_1C47D21A8();
  sub_1C4403374();
  return sub_1C440E410();
}

uint64_t sub_1C49479E8()
{

  sub_1C47D21A8();
  sub_1C4403374();
  return sub_1C440E410();
}

uint64_t static IntelligencePlatformComputeSystem.start()@<X0>(uint64_t a1@<X8>)
{
  v236 = *MEMORY[0x1E69E9840];
  sub_1C4EF98F8();
  sub_1C43FCDF8();
  v227 = v3;
  v228 = v2;
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FD2D8();
  v226 = v4;
  sub_1C43FBE44();
  sub_1C4EFFAE8();
  sub_1C43FCDF8();
  v199 = v6;
  v200 = v5;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  v197 = v7;
  sub_1C43FBE44();
  v8 = sub_1C4EFFB08();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1C43FD2D8();
  v198 = v9;
  sub_1C43FBE44();
  sub_1C4EFDED8();
  sub_1C43FCDF8();
  v218 = v11;
  v219 = v10;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD2D8();
  v217 = v12;
  sub_1C43FBE44();
  sub_1C4EFF968();
  sub_1C43FCDF8();
  v214 = v14;
  v215 = v13;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD2D8();
  v216 = v15;
  sub_1C43FBE44();
  sub_1C4EFD598();
  sub_1C43FCDF8();
  v212 = v17;
  v213 = v16;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD2D8();
  v211 = v18;
  v19 = sub_1C43FBE44();
  v20 = type metadata accessor for GDInteractionEnumeration.GDInteractionIterator(v19);
  MEMORY[0x1EEE9AC00](v20 - 8);
  sub_1C43FD2D8();
  v210 = v21;
  sub_1C43FBE44();
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v208 = v23;
  v209 = v22;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FD2D8();
  v207 = v24;
  v25 = sub_1C43FBE44();
  v26 = type metadata accessor for Source(v25);
  v202 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26 - 8);
  sub_1C43FBCC4();
  v29 = v28 - v27;
  v30 = sub_1C4F001E8();
  sub_1C43FCDF8();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBFDC();
  v232 = v34;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v194 - v36;
  v230 = 0;
  v231 = type metadata accessor for Configuration(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBFDC();
  v196 = v39;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v40);
  v201 = &v194 - v41;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v42);
  v220 = &v194 - v43;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v44);
  v222 = &v194 - v45;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v194 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v194 - v50;
  v53 = MEMORY[0x1EEE9AC00](v52);
  v55 = &v194 - v54;
  (*(v32 + 104))(v37, *MEMORY[0x1E69A9CE8], v30, v53);
  v56 = sub_1C4F001D8();
  v205 = v32;
  v58 = *(v32 + 8);
  v57 = v32 + 8;
  v59 = v37;
  v60 = v58;
  v58(v59, v30);
  if (v56)
  {
    static Configuration.intelligencePlatformComputeServiceMemoryReduction.getter();
  }

  else
  {
    static Configuration.intelligencePlatformComputeService.getter();
  }

  v203 = v60;
  v204 = v57;
  v206 = v30;
  if (qword_1EDDFD018 != -1)
  {
    sub_1C4400660(&qword_1EDDFD018);
  }

  v229 = sub_1C4F00978();
  v61 = sub_1C442B738(v229, qword_1EDE2DDF8);
  v62 = sub_1C4F00968();
  v63 = sub_1C4F01CF8();
  v64 = sub_1C43FEB2C(v63);
  p_info = &OBJC_METACLASS____TtC24IntelligencePlatformCore10StateStore.info;
  v225 = v61;
  if (v64)
  {
    v221 = v48;
    v224 = a1;
    v66 = swift_slowAlloc();
    v195 = swift_slowAlloc();
    *&v235[0] = v195;
    *v66 = 136315138;
    swift_beginAccess();
    sub_1C440E3F8();
    v223 = v55;
    sub_1C4430958(v55, v51, v67);
    sub_1C441ED20();
    v69 = &v51[v68];
    v70 = *v69;
    v71 = *(v69 + 1);
    if (qword_1EDDFA628 != -1)
    {
      sub_1C442CC60();
      swift_once();
    }

    v72 = xmmword_1EDDFA630;
    sub_1C4407194();
    sub_1C4453EFC(v51, v73);
    v74 = v72.i64[0] & ~v70 | v72.i64[1] & ~v71;
    if (v74)
    {
      v75 = 0;
    }

    else
    {
      v75 = 0xD000000000000016;
    }

    if (v74)
    {
      v76 = 0xE000000000000000;
    }

    else
    {
      v76 = 0x80000001C4FA9F30;
    }

    v77 = sub_1C441D828(v75, v76, v235);

    *(v66 + 4) = v77;
    _os_log_impl(&dword_1C43F8000, v62, v63, "IntelligencePlatformComputeSystem: starting... %s", v66, 0xCu);
    sub_1C440962C(v195);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();

    v55 = v223;
    a1 = v224;
    v48 = v221;
    p_info = 0x1EDDFA000;
  }

  else
  {
  }

  v78 = v230;
  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v229, qword_1EDE2E088);
  v79 = sub_1C4F00968();
  v80 = sub_1C4F01CF8();
  if (sub_1C43FEB2C(v80))
  {
    v81 = sub_1C43FCED0();
    *v81 = 0;
    _os_log_impl(&dword_1C43F8000, v79, v80, "IntelligencePlatformComputeSystem: Running StorageCleanup", v81, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  swift_beginAccess();
  sub_1C440E3F8();
  sub_1C4430958(v55, v48, v82);
  sub_1C494A2B0(v48, v55);
  v83 = objc_opt_self();
  *&v235[0] = 0;
  v84 = [v83 setFileLimitWithError_];
  v85 = *&v235[0];
  if (!v84)
  {
    v109 = *&v235[0];
    v78 = sub_1C4EF97A8();

    swift_willThrow();
    goto LABEL_51;
  }

  sub_1C4EFA658();
  swift_allocObject();
  v86 = v85;
  qword_1EDE2D5D0 = sub_1C4EFA648();

  sub_1C440E3F8();
  v87 = v222;
  sub_1C4430958(v55, v222, v88);
  sub_1C441ED20();
  v90 = (v87 + v89);
  v92 = *v90;
  v91 = v90[1];
  if (*(p_info + 1576) != -1)
  {
    sub_1C442CC60();
    swift_once();
  }

  v93 = xmmword_1EDDFA630;
  sub_1C4407194();
  sub_1C4453EFC(v94, v95);
  v195 = v93.i64[1];
  v222 = v93.i64[0];
  if ((v93.i64[0] & ~v92) == 0 && (v93.i64[1] & v91) == v93.i64[1])
  {
    sub_1C4461BB8(0, &qword_1EDDFE8E8, 0x1E696AAE8);

    if (qword_1EDDFA690 != -1)
    {
      swift_once();
    }

    v96 = off_1EDDFA698;
    *&v235[0] = off_1EDDFA698;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v97 = sub_1C4B325E4();
    if (v97)
    {
      sub_1C49D3594(v97);
      v96 = *&v235[0];
    }

    v98 = v232;
    v221 = v48;
    v99 = v96[2];
    v223 = v55;
    v224 = a1;
    if (v99)
    {
      *&v235[0] = MEMORY[0x1E69E7CC0];
      sub_1C44CD9C0(0, v99, 0);
      v100 = *&v235[0];
      v101 = *(v202 + 80);
      v194 = v96;
      v102 = v96 + ((v101 + 32) & ~v101);
      v103 = *(v202 + 72);
      do
      {
        sub_1C4430958(v102, v29, type metadata accessor for Source);
        v104 = *v29;
        v105 = *(v29 + 8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4453EFC(v29, type metadata accessor for Source);
        *&v235[0] = v100;
        v107 = *(v100 + 16);
        v106 = *(v100 + 24);
        if (v107 >= v106 >> 1)
        {
          sub_1C44CD9C0(v106 > 1, v107 + 1, 1);
          v100 = *&v235[0];
        }

        *(v100 + 16) = v107 + 1;
        v108 = v100 + 16 * v107;
        *(v108 + 32) = v104;
        *(v108 + 40) = v105;
        v102 += v103;
        --v99;
      }

      while (v99);

      v55 = v223;
      a1 = v224;
      v78 = v230;
      v98 = v232;
    }

    else
    {
    }

    v110 = sub_1C4F001B8();
    v111 = *(v110 + 16);
    if (v111)
    {
      v112 = v206;
      v114 = v205 + 16;
      v113 = *(v205 + 16);
      v115 = (*(v205 + 80) + 32) & ~*(v205 + 80);
      v205 = v110;
      v116 = v110 + v115;
      v117 = *(v114 + 56);
      v118 = v203;
      do
      {
        v113(v98, v116, v112);
        sub_1C4F001D8();
        v98 = v232;
        v118(v232, v112);
        v116 += v117;
        --v111;
      }

      while (v111);

      v55 = v223;
      a1 = v224;
      v78 = v230;
    }

    else
    {
    }

    v119 = v207;
    sub_1C4EF9C88();
    sub_1C494A7D4(&qword_1EDDFCD50, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v120 = v209;
    sub_1C4F02858();

    v121 = *(v208 + 8);
    v121(v119, v120);
    sub_1C4EF9C88();
    sub_1C4EF9B68();
    v121(v119, v120);

    sub_1C4EF9C88();
    sub_1C4EF9B18();
    v121(v119, v120);

    v122 = objc_allocWithZone(MEMORY[0x1E696AB60]);
    v123 = sub_1C4475EF8(2048);
    if (v78)
    {

      v78 = 0;
    }

    else
    {
      v124 = v123;
      v125 = sub_1C4F01108();
      v126 = [v124 matchesInString:v125 options:0 range:{0, sub_1C4F013B8()}];

      sub_1C4461BB8(0, &qword_1EDDF03D0, 0x1E696AEF8);
      v127 = sub_1C4F01678();

      sub_1C4428DA0(v127);
    }

    v128 = [objc_allocWithZone(MEMORY[0x1E6996728]) init];
    v129 = sub_1C4F01108();
    [v128 typeOfHandleString_];

    String.normalizedContactHandle()();

    sub_1C440E3F8();
    v130 = v221;
    sub_1C4430958(v55, v221, v131);
    type metadata accessor for ViewUpdate.SignpostHelper(0);
    swift_allocObject();
    sub_1C4462C40();
    sub_1C4462D98();
    sub_1C44528E0();
    v132 = objc_autoreleasePoolPush();
    v133 = [objc_opt_self() interactionHistoryEnumeratorWithBatchSize_];
    v134 = v210;
    sub_1C4EF97F8();
    GDInteractionEnumeration.GDInteractionIterator.next()(v135);
    v137 = v136;

    sub_1C4453EFC(v134, type metadata accessor for GDInteractionEnumeration.GDInteractionIterator);
    objc_autoreleasePoolPop(v132);
    static IntelligencePlatformComputeSystem.tearDownDatabases(config:)(v55);
    v138 = [BiomeLibrary() Siri];
    swift_unknownObjectRelease();
    v139 = [v138 Remembers];
    swift_unknownObjectRelease();
    v140 = [v139 AudioHistory];
    swift_unknownObjectRelease();
    v141 = [v140 publisher];

    v48 = v130;
  }

  sub_1C4F00858();
  sub_1C494A7D4(&qword_1EDDFA5F8, MEMORY[0x1E69AA2F0], MEMORY[0x1E69AA250]);
  sub_1C4EFA568();
  v142 = BiomeLibrary();
  v143 = swift_allocObject();
  *(v143 + 16) = v142;
  v144 = swift_allocObject();
  *(v144 + 16) = sub_1C494A314;
  *(v144 + 24) = v143;
  sub_1C4EFA588();

  v145 = BiomeLibrary();
  *(swift_allocObject() + 16) = v145;
  sub_1C4EFA578();

  sub_1C4430958(v55, v48, type metadata accessor for Configuration);
  sub_1C4D61780(v48);
  sub_1C4D62120(v48);
  v146 = v48;
  sub_1C4453EFC(v48, type metadata accessor for Configuration);
  p_info = v220;
  sub_1C4430958(v55, v220, type metadata accessor for Configuration);
  sub_1C441ED20();
  v148 = p_info + v147;
  v150 = *v148;
  v149 = *(v148 + 8);
  sub_1C4453EFC(p_info, type metadata accessor for Configuration);
  v29 = v195;
  if ((v222 & ~v150) == 0 && (v149 & v195) == v195)
  {
    v152 = v211;
    v151 = v212;
    v153 = v213;
    (*(v212 + 104))(v211, *MEMORY[0x1E69A9300], v213);
    sub_1C4EFD588();
    (*(v151 + 8))(v152, v153);
    sub_1C4EFDF58();
    v48 = *(sub_1C456902C(qword_1EC0BBC80, &qword_1C4F3BE70) + 48);
    v154 = *MEMORY[0x1E69A9A40];
    sub_1C4EFF958();
    sub_1C43FBCE0();
    p_info = v216;
    (*(v155 + 104))(v216, v154);
    sub_1C4EFF928();
    (*(v214 + 104))(p_info, *MEMORY[0x1E69A9A28], v215);
    v157 = v217;
    v156 = v218;
    *v217 = sub_1C494A1D8;
    v157[1] = 0;
    (*(v156 + 104))(v157, *MEMORY[0x1E69A95E0], v219);
    sub_1C4EFDEE8();
    if (!v78)
    {

      sub_1C456902C(&qword_1EC0BFB38, &qword_1C4F3BE78);
      v150 = v197;
      sub_1C4EFFAC8();
      sub_1C4EFF928();
      (*(v199 + 104))(v150, *MEMORY[0x1E69A9AC8], v200);
      sub_1C4EFFAF8();
      sub_1C4EFEF48();
      swift_allocObject();
      sub_1C4EFEF08();

      goto LABEL_59;
    }

LABEL_51:
    v158 = v78;
    v159 = sub_1C4F00968();
    v160 = sub_1C4F01CE8();

    if (os_log_type_enabled(v159, v160))
    {
      v48 = swift_slowAlloc();
      p_info = swift_slowAlloc();
      *v48 = 138412290;
      v161 = v78;
      v162 = _swift_stdlib_bridgeErrorToNSError();
      *(v48 + 4) = v162;
      *p_info = v162;
      _os_log_impl(&dword_1C43F8000, v159, v160, "IntelligencePlatformComputeSystem: Failed to start with error %@", v48, 0xCu);
      sub_1C4420C3C(p_info, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830](v163);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830](v164);
    }

    if (qword_1EDDFEC88 != -1)
    {
      sub_1C4410E64(&qword_1EDDFEC88);
    }

    sub_1C441CB00();
    v165 = sub_1C4435104();
    v166(v165);
    static Features.optionsForEnabledFeatures.getter(v235);
    (*(p_info + 8))(v29, v48);

    goto LABEL_56;
  }

  sub_1C4787A70(v55);
LABEL_59:
  if (sub_1C4B6A8D0(v55, v184, v185, v186, v187, v188, v189, v190) == 2)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    sub_1C442B738(v229, qword_1EDDFECB8);
    v159 = sub_1C4F00968();
    v160 = sub_1C4F01CF8();
    if (sub_1C43FEB2C(v160))
    {
      v150 = sub_1C43FCED0();
      *v150 = 0;
      _os_log_impl(&dword_1C43F8000, v159, v160, "IntelligencePlatformComputeSystem: storage system failed to start, will exit when process becomes clean after handling launch events.", v150, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830](v171);
    }

    xpc_transaction_exit_clean();
    if (qword_1EDDFEC88 != -1)
    {
      sub_1C4410E64(&qword_1EDDFEC88);
    }

    sub_1C441CB00();
    v172 = sub_1C4435104();
    v173(v172);
    static Features.optionsForEnabledFeatures.getter(v235);
    (*(p_info + 8))(v29, v150);
LABEL_56:
    v167 = *(&v235[0] + 1) | v159;
    v168 = (a1 + *(v231 + 20));
    *v168 = *&v235[0] | v160;
    v168[1] = v167;
    goto LABEL_57;
  }

  sub_1C440E3F8();
  v174 = v201;
  sub_1C4430958(v55, v201, v175);
  sub_1C441ED20();
  v177 = (v174 + v176);
  v179 = *v177;
  v178 = v177[1];
  sub_1C4407194();
  sub_1C4453EFC(v174, v180);
  if ((v222 & ~v179) == 0 && (v178 & v29) == v29)
  {
    sub_1C440E3F8();
    v181 = v196;
    sub_1C4430958(v55, v196, v182);
    if (qword_1EDDFB828 != -1)
    {
      sub_1C43FF20C(&qword_1EDDFB828);
    }

    sub_1C4ABF9D8();
    sub_1C4407194();
    sub_1C4453EFC(v181, v183);
    if (v78)
    {
    }

    else
    {

      sub_1C4BF8774(0xD000000000000021, 0x80000001C4F85FC0, v234);

      v235[0] = v234[0];
      v235[1] = v234[1];
      v235[2] = v234[2];
      v235[3] = v234[3];
      sub_1C494A340(v234, &v233);
      sub_1C49477E0();
      sub_1C494A39C(v234);

      sub_1C494A39C(v234);
    }

    type metadata accessor for ViewGeneration.ViewClients(0);
    sub_1C4C819E0(v55);
    sub_1C49497C0();
    sub_1C440E3F8();
    sub_1C4430958(v55, v146, v191);
    if (qword_1EDDFF2A0 != -1)
    {
      sub_1C43FD998(&qword_1EDDFF2A0);
    }

    sub_1C4949780();
    sub_1C4407194();
    sub_1C4453EFC(v146, v192);
    if (qword_1EDDFE628 != -1)
    {
      sub_1C4402394(&qword_1EDDFE628);
    }

    sub_1C4949814();
    static ViewUpdate.GenerationRunnerSingleton.deinitInstance(for:)(v55);
    static IntelligencePlatformComputeSystem.tearDownDatabases(config:)(v55);
  }

  sub_1C440E3F8();
  sub_1C4430958(v55, a1, v193);
LABEL_57:
  sub_1C4407194();
  return sub_1C4453EFC(v55, v169);
}

void static IntelligencePlatformComputeSystem.tearDownDatabases(config:)(uint64_t a1)
{
  sub_1C4B6AB68(a1);
  if (qword_1EC0B7088 != -1)
  {
    swift_once();
  }

  sub_1C494972C();
  if (qword_1EDDE7308 != -1)
  {
    swift_once();
  }

  sub_1C49496D8();
  if (qword_1EDDFF220 != -1)
  {
    swift_once();
  }

  sub_1C4949698();
  if (qword_1EDDFEE20[0] != -1)
  {
    swift_once();
  }

  sub_1C4427314();
  if (qword_1EDDFF500 != -1)
  {
    swift_once();
  }

  sub_1C44270DC();
  sub_1C4949698();
  if (qword_1EDDFF418 != -1)
  {
    swift_once();
  }

  sub_1C4949658();
  if (qword_1EDDFF230 != -1)
  {
    swift_once();
  }

  sub_1C4427394();
  if (qword_1EDDFF7A0 != -1)
  {
    swift_once();
  }

  sub_1C4949604();
  if (qword_1EDDFF248 != -1)
  {
    swift_once();
  }

  sub_1C49495C4();
  if (qword_1EDDFF168[0] != -1)
  {
    swift_once();
  }

  sub_1C4949584();
}

uint64_t sub_1C494940C(void *a1)
{
  v1 = [a1 allStreams];
  sub_1C4461BB8(0, &unk_1EDDF0580, 0x1E698F328);
  v2 = sub_1C4F01678();

  return v2;
}

unint64_t sub_1C4949470@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1();
  a2[3] = sub_1C456902C(&qword_1EC0BFB40, &unk_1C4F3BF20);
  result = sub_1C494AA78();
  a2[4] = result;
  *a2 = v3;
  return result;
}

id sub_1C49494C4(uint64_t a1, id a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v2 = [a2 streamWithIdentifier:a1 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_1C4EF97A8();

    swift_willThrow();
  }

  return v2;
}

void sub_1C4949584()
{
  sub_1C43FD97C();
  v1 = sub_1C4411EC0();
  sub_1C494A794(v1);
  os_unfair_lock_unlock(v0 + 6);
}

void sub_1C49495C4()
{
  sub_1C43FD97C();
  v1 = sub_1C4411EC0();
  sub_1C494A81C(v1);
  os_unfair_lock_unlock(v0 + 6);
}

void sub_1C4949604()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_1C494A85C((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_1C4949658()
{
  sub_1C43FD97C();
  v1 = sub_1C4411EC0();
  sub_1C494A89C(v1);
  os_unfair_lock_unlock(v0 + 6);
}

void sub_1C4949698()
{
  sub_1C43FD97C();
  v1 = sub_1C4411EC0();
  sub_1C494A8DC(v1);
  os_unfair_lock_unlock(v0 + 6);
}

void sub_1C49496D8()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_1C494A91C((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_1C494972C()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_1C494A95C((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_1C4949780()
{
  sub_1C43FD97C();
  v1 = sub_1C4411EC0();
  sub_1C494A9F8(v1);
  os_unfair_lock_unlock(v0 + 6);
}

void sub_1C49497C0()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_1C494AA38((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_1C4949814()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_1C494A9B8((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1C4949868(uint64_t a1, void *a2)
{
  v4 = sub_1C4EFB768();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18[0] = 0;
  *(&v18[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();

  *&v18[0] = 0xD000000000000015;
  *(&v18[0] + 1) = 0x80000001C4F8C340;
  MEMORY[0x1C6940010](*a2, a2[1]);
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  sub_1C4EFB758();
  sub_1C4EFB998();
  if (v2)
  {

    (*(v5 + 8))(v7, v4);
    sub_1C4420C3C(v18, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v8 = sub_1C4F00978();
    sub_1C442B738(v8, qword_1EDE2DF70);
    v9 = v2;
    v10 = sub_1C4F00968();
    v11 = sub_1C4F01CD8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v2;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_1C43F8000, v10, v11, "ViewDatabaseTable: numRows threw error: %@", v12, 0xCu);
      sub_1C4420C3C(v13, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v13, -1, -1);
      MEMORY[0x1C6942830](v12, -1, -1);
    }

    sub_1C47DCC80();
    swift_allocError();
    *v16 = v2;
    return swift_willThrow();
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    sub_1C4420C3C(v18, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (v21)
    {
      return 0;
    }

    else
    {
      return v20;
    }
  }
}

uint64_t sub_1C4949B94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EFB768();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18[0] = 0;
  *(&v18[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();

  *&v18[0] = 0xD000000000000015;
  *(&v18[0] + 1) = 0x80000001C4F8C340;
  MEMORY[0x1C6940010](*(a2 + 8), *(a2 + 16));
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  sub_1C4EFB758();
  sub_1C4EFB998();
  if (v2)
  {

    (*(v5 + 8))(v7, v4);
    sub_1C4420C3C(v18, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v8 = sub_1C4F00978();
    sub_1C442B738(v8, qword_1EDE2DF70);
    v9 = v2;
    v10 = sub_1C4F00968();
    v11 = sub_1C4F01CD8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v2;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_1C43F8000, v10, v11, "ViewDatabaseTable: numRows threw error: %@", v12, 0xCu);
      sub_1C4420C3C(v13, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v13, -1, -1);
      MEMORY[0x1C6942830](v12, -1, -1);
    }

    sub_1C47DCC80();
    swift_allocError();
    *v16 = v2;
    return swift_willThrow();
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    sub_1C4420C3C(v18, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (v21)
    {
      return 0;
    }

    else
    {
      return v20;
    }
  }
}

uint64_t sub_1C4949EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  sub_1C4F02248();

  MEMORY[0x1C6940010](a2, a3);
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  sub_1C4EFB758();
  sub_1C4EFB998();
  if (v3)
  {

    (*(v8 + 8))(v12, v6);
    sub_1C4420C3C(v33, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDE2DF70);
    v14 = v3;
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CD8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v3;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_1C43F8000, v15, v16, "ViewDatabaseTable: numRows threw error: %@", v17, 0xCu);
      sub_1C4420C3C(v18, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830](v21, v22, v23, v24, v25);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830](v26, v27, v28, v29, v30);
    }

    sub_1C47DCC80();
    swift_allocError();
    *v31 = v3;
    return swift_willThrow();
  }

  else
  {

    (*(v8 + 8))(v12, v6);
    sub_1C4420C3C(v33, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (v36)
    {
      return 0;
    }

    else
    {
      return v35;
    }
  }
}

uint64_t sub_1C494A1D8()
{
  v0 = sub_1C4EFF288();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  sub_1C4EFF2A8();
  (*(v2 + 104))(v6, *MEMORY[0x1E69A9888], v0);
  return sub_1C4EFF298();
}

uint64_t sub_1C494A2B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Configuration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for IntelligencePlatformComputeSystem(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C494A49C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C4949868(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C494A4C8@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t *a3@<X8>)
{
  memcpy(__dst, a2, sizeof(__dst));
  result = sub_1C4949B94(a1, __dst);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C494A524@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a2[1];
  v8[0] = *a2;
  v8[1] = v5;
  v6 = a2[3];
  v8[2] = a2[2];
  v8[3] = v6;
  result = sub_1C4949868(a1, v8);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C494A56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  v8 = *(a2 + 32);
  result = sub_1C4949868(a1, v7);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C494A5EC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  v7[2] = a2[2];
  result = sub_1C4949868(a1, v7);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C494A634@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t *a3@<X8>)
{
  memcpy(v7, a2, sizeof(v7));
  result = sub_1C4949868(a1, v7);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C494A690@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t *a3@<X8>)
{
  memcpy(__dst, a2, sizeof(__dst));
  result = sub_1C4949868(a1, __dst);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C494A6EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C4949EC0(a1, *a2, a2[1]);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C494A7D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C494AA78()
{
  result = qword_1EDDDBBD8;
  if (!qword_1EDDDBBD8)
  {
    sub_1C4572308(&qword_1EC0BFB40, &unk_1C4F3BF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBBD8);
  }

  return result;
}

uint64_t static IntelligencePlatformSystem.start()()
{
  v104[3] = *MEMORY[0x1E69E9840];
  sub_1C4EFDBB8();
  sub_1C43FCDF8();
  v101 = v1;
  v102 = v0;
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FBCC4();
  v4 = (v3 - v2);
  v5 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v100 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v100);
  v13 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v99 - v15;
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v17 = sub_1C4F00978();
  sub_1C442B738(v17, qword_1EDDFECB8);
  v18 = sub_1C4F00968();
  v19 = sub_1C4F01CF8();
  if (sub_1C43FEB2C(v19))
  {
    v20 = sub_1C43FCED0();
    sub_1C43FBD24(v20);
    sub_1C442CC74(&dword_1C43F8000, v21, v19, "IntelligencePlatformSystem: starting...");
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  static Configuration.intelligenceplatformd.getter();
  sub_1C4D61780(v16);
  sub_1C4D62120(v16);
  sub_1C4F00858();
  sub_1C494BE9C();
  sub_1C4EFA568();
  v22 = sub_1C4F00968();
  v23 = sub_1C4F01CF8();
  if (sub_1C43FEB2C(v23))
  {
    v24 = sub_1C43FCED0();
    sub_1C43FBD24(v24);
    sub_1C442CC74(&dword_1C43F8000, v25, v23, "IntelligencePlatformSystem: running storage cleanup");
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v26 = sub_1C4F00968();
  v27 = sub_1C4F01CF8();
  if (sub_1C43FEB2C(v27))
  {
    v28 = sub_1C43FCED0();
    sub_1C43FBD24(v28);
    sub_1C442CC74(&dword_1C43F8000, v29, v27, "IntelligencePlatformSystem: starting storage system");
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v37 = sub_1C4B6A8D0(v16, v30, v31, v32, v33, v34, v35, v36);
  if (v37 == 2)
  {
    if (qword_1EDDFEC88 != -1)
    {
      swift_once();
    }

    v38 = *(&xmmword_1EDDFEC90 + 1);
    if (xmmword_1EDDFEC90 == 0)
    {
      v39 = 0;
    }

    else
    {
      v39 = xmmword_1EDDFEC90;
    }

    sub_1C4F001A8();
    (*(v7 + 16))(v13, v11, v5);
    static Features.optionsForEnabledFeatures.getter(v104);
    (*(v7 + 8))(v11, v5);
    v40 = v104[1] | v38;
    v41 = &v13[*(v100 + 20)];
    *v41 = v104[0] | v39;
    v41[1] = v40;
    sub_1C4467948(v16);
    sub_1C4409954(v13, v16);
  }

  sub_1C4787A70(v16);
  v42 = sub_1C4F00968();
  v43 = sub_1C4F01CF8();
  if (sub_1C43FEB2C(v43))
  {
    v44 = sub_1C43FCED0();
    sub_1C43FBD24(v44);
    sub_1C442CC74(&dword_1C43F8000, v45, v43, "IntelligencePlatformSystem: registering scheduled tasks");
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  sub_1C4AE8848(v16);
  v46 = sub_1C4F00968();
  v47 = sub_1C4F01CF8();
  if (sub_1C43FEB2C(v47))
  {
    v48 = sub_1C43FCED0();
    sub_1C43FBD24(v48);
    sub_1C442CC74(&dword_1C43F8000, v49, v47, "IntelligencePlatformSystem: starting XPC");
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  type metadata accessor for InternalXPC();
  v50 = sub_1C4406834();
  sub_1C498DCF8(v50);
  type metadata accessor for AssetRegistryXPC();
  v51 = sub_1C4406834();
  sub_1C45A4E68(v51);
  type metadata accessor for SysdiagnoseXPC();
  v52 = sub_1C4406834();
  sub_1C4B7CE74(v52);
  type metadata accessor for LighthouseXPC();
  v53 = sub_1C4406834();
  sub_1C49D2384(v53);
  type metadata accessor for FeedbackServiceXPC();
  v54 = sub_1C4406834();
  sub_1C4806FFC(v54);
  type metadata accessor for EventLogServiceXPC();
  v55 = sub_1C4406834();
  sub_1C4785724(v55);
  type metadata accessor for KnosisXPC();
  sub_1C4EFDBA8();
  sub_1C49AAAC4(v4, v16);
  (*(v101 + 8))(v4, v102);
  type metadata accessor for InferenceSupportXPC();
  v56 = sub_1C4406834();
  sub_1C493365C(v56);
  type metadata accessor for GraphSimulationXPC();
  v57 = sub_1C4406834();
  sub_1C48688E8(v57);
  type metadata accessor for LinkService();
  sub_1C49E3590();
  type metadata accessor for EntityResolutionXPC();
  v58 = sub_1C4406834();
  sub_1C4711C38(v58);
  if (v37 == 1)
  {
    v59 = [objc_allocWithZone(MEMORY[0x1E69A9F30]) init];
    v104[0] = 0;
    v60 = [v59 checkInWithError_];

    if (v60)
    {
      v61 = v104[0];
      v62 = sub_1C4F00968();
      v63 = sub_1C4F01CF8();
      if (sub_1C43FEB2C(v63))
      {
        v64 = sub_1C43FCED0();
        *v64 = 0;
        sub_1C43FD0B4();
        _os_log_impl(v65, v66, v67, v68, v64, 2u);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      goto LABEL_26;
    }

    v69 = v104[0];
    v70 = sub_1C4EF97A8();

    swift_willThrow();
    v71 = v70;
    v62 = sub_1C4F00968();
    LOBYTE(v69) = sub_1C4F01CD8();

    if (os_log_type_enabled(v62, v69))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v104[0] = v73;
      *v72 = 136315138;
      v103 = v70;
      v74 = v70;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v75 = sub_1C4F01198();
      v77 = sub_1C441D828(v75, v76, v104);

      *(v72 + 4) = v77;
      sub_1C43FD0B4();
      _os_log_impl(v78, v79, v80, v81, v72, 0xCu);
      sub_1C440962C(v73);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();

LABEL_26:
      goto LABEL_28;
    }
  }

LABEL_28:
  v82 = sub_1C4F00968();
  v83 = sub_1C4F01CF8();
  if (sub_1C43FEB2C(v83))
  {
    v84 = sub_1C43FCED0();
    *v84 = 0;
    sub_1C43FD0B4();
    _os_log_impl(v85, v86, v87, v88, v84, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  if (qword_1EDDE5600 != -1)
  {
    swift_once();
  }

  sub_1C46942D8();
  if (qword_1EDDE40B8 != -1)
  {
    swift_once();
  }

  sub_1C4B6CC64();
  if (qword_1EDDE0EE8 != -1)
  {
    swift_once();
  }

  sub_1C49FA3C0();
  sub_1C4AAA45C(v16);
  if (qword_1EDDE4AE8 != -1)
  {
    swift_once();
  }

  sub_1C4663C1C(v16);
  if (qword_1EDDDCF38 != -1)
  {
    swift_once();
  }

  sub_1C4D1ED5C(v16);
  if (qword_1EDDFDCF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_1EDDFF3C8)
  {
    v89 = (*(off_1EDDFF3D0 + 6))();
    (*(v90 + 8))(v16, v89, v90);
  }

  if (v37 == 2)
  {
    v91 = sub_1C4F00968();
    v92 = sub_1C4F01CF8();
    if (sub_1C43FEB2C(v92))
    {
      v93 = sub_1C43FCED0();
      *v93 = 0;
      sub_1C43FD0B4();
      _os_log_impl(v94, v95, v96, v97, v93, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    xpc_transaction_exit_clean();
  }

  return sub_1C4467948(v16);
}

uint64_t sub_1C494B4E4()
{
  v1 = v0;
  v116 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C43FBCC4();
  v5 = v4 - v3;
  static Configuration.intelligenceplatformd.getter();
  v6 = [objc_allocWithZone(MEMORY[0x1E69A9F28]) init];
  v112[0] = 0;
  v7 = [v6 sysdiagnoseInfoWithError_];

  v8 = v112[0];
  if (v7)
  {
    v9 = sub_1C4F01138();
    v11 = v10;
    v12 = v8;
  }

  else
  {
    v13 = v112[0];
    v14 = sub_1C4EF97A8();

    swift_willThrow();
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v15 = sub_1C4F00978();
    sub_1C442B738(v15, qword_1EDE2DF70);
    v16 = v14;
    v17 = sub_1C4F00968();
    v18 = sub_1C4F01CF8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v14;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_1C43F8000, v17, v18, "Error running view validation: %@", v19, 0xCu);
      sub_1C45B4B90(v20);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v1 = 0;
    v11 = 0xE700000000000000;
    v9 = 0x22726F72726522;
  }

  v23 = sub_1C4B6ABF0();
  if (v1)
  {

    sub_1C4467948(v5);
  }

  else
  {
    v84 = v9;
    v108 = v11;
    v81 = sub_1C494BBD4(v23);
    v105 = v24;

    v25 = sub_1C4BA1184(0x656C646E75424643, 0xEF6E6F6973726556);
    v99 = v26;
    v102 = v25;
    v96 = sub_1C4BA1184(0xD00000000000001ALL, 0x80000001C4FA9F50);
    v28 = v27;
    v29 = sub_1C4BA1184(0x646E656972464447, 0xEE00656D614E796CLL);
    v31 = v30;
    static VersionInfo.modificationDates.getter();
    sub_1C465DFB8(v32, v33, v34, v35, v36, v37, v38, v39, v81, v84, v87, v89, v90, v93, v94, v96, v99, v102, v105, v108);
    v41 = v40;

    sub_1C4BA32C0(v113);
    v42.i64[0] = 1;
    v43 = vdupq_lane_s64(vmvnq_s8(vceqq_s64(vdupq_laneq_s64(v113[0], 1), v42)).i64[0], 0);
    v88 = vandq_s8(v113[1], v43);
    v91 = vandq_s8(v113[0], v43);
    if (v113[0].i64[1] == 1)
    {
      v44 = 0;
    }

    else
    {
      v44 = v114;
    }

    v45 = v5;
    if (v113[0].i64[1] == 1)
    {
      v46 = 0;
    }

    else
    {
      v46 = v115;
    }

    static VersionInfo.featureFlags.getter();
    *v111 = v103;
    *&v111[8] = v100;
    *&v111[16] = v97;
    *&v111[24] = v28;
    *&v111[32] = v29;
    *&v111[40] = v31;
    *&v111[48] = v41;
    v111[56] = 0;
    *&v111[64] = v91;
    *&v111[80] = v88;
    *&v111[96] = v44;
    *&v111[104] = v46;
    *&v111[112] = v47;
    VersionInfo.AllInfo.fetchAll()(v47, v48, v49, v50, v51, v52, v53, v54, v82, v85, v88.i64[0], v88.i64[1], v91.i64[0], v91.i64[1], v95, v97, v100, v103, v106, v109);
    v56 = v55;
    memcpy(v112, v111, sizeof(v112));
    sub_1C494BFA0(v112);
    v101 = sub_1C494BBD4(v56);
    v104 = v57;

    MEMORY[0x1EEE9AC00](v58);
    sub_1C4432510();
    v59 = MEMORY[0x1E69E7CC8];
    v61 = sub_1C469AB60(MEMORY[0x1E69E7CC8], sub_1C494BFF4, v60, &unk_1F43D9C28);
    sub_1C465E5C0(v61);
    v63 = v62;

    v98 = sub_1C494BBD4(v63);
    v65 = v64;

    MEMORY[0x1EEE9AC00](v66);
    sub_1C4432510();
    v68 = sub_1C469AB60(v59, sub_1C494C010, v67, &unk_1F43D9C28);
    v69 = v45;
    sub_1C465E7CC(v68);
    v71 = v70;

    v72 = sub_1C494BBD4(v71);
    v74 = v73;

    v75 = sub_1C4B6AEC0(v45);
    sub_1C465E7CC(v75);
    v78 = v77;

    v92 = sub_1C494BBD4(v78);
    v80 = v79;

    *v111 = 0;
    *&v111[8] = 0xE000000000000000;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0x7453227B20202020, 0xEF3A22656761726FLL);
    MEMORY[0x1C6940010](v83, v107);

    MEMORY[0x1C6940010](0x227377656956222CLL, 0xE90000000000003ALL);
    MEMORY[0x1C6940010](v86, v110);

    MEMORY[0x1C6940010](0x6F6973726556222CLL, 0xEB000000003A226ELL);
    MEMORY[0x1C6940010](v101, v104);

    MEMORY[0x1C6940010](0x696C65706950222CLL, 0xEC0000003A22656ELL);
    MEMORY[0x1C6940010](v98, v65);

    MEMORY[0x1C6940010](0xD000000000000012, 0x80000001C4FA9F70);
    MEMORY[0x1C6940010](v72, v74);

    MEMORY[0x1C6940010](0xD000000000000015, 0x80000001C4FA9F90);
    MEMORY[0x1C6940010](v92, v80);

    v1 = *v111;
    sub_1C4467948(v69);
  }

  return v1;
}

uint64_t sub_1C494BBD4(uint64_t a1)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v1 = 0x22726F72726522;
  v2 = sub_1C4F01188();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = objc_autoreleasePoolPush();
  v4 = objc_opt_self();
  v5 = sub_1C4F00EC8();
  v25[0] = 0;
  v6 = [v4 dataWithJSONObject:v5 options:0 error:v25];

  v7 = v25[0];
  if (v6)
  {
    v8 = sub_1C4EF9A68();
    v10 = v9;

    sub_1C4F01178();
    v11 = sub_1C4F01158();
    v13 = v12;
    sub_1C4434000(v8, v10);
    objc_autoreleasePoolPop(v3);
    if (v13)
    {
      return v11;
    }
  }

  else
  {
    v14 = v7;
    v15 = sub_1C4EF97A8();

    swift_willThrow();
    objc_autoreleasePoolPop(v3);
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v16 = sub_1C4F00978();
    sub_1C442B738(v16, qword_1EDDFECB8);
    v17 = v15;
    v18 = sub_1C4F00968();
    v19 = sub_1C4F01CD8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = v15;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_1C43F8000, v18, v19, "Error generating status data: %@", v20, 0xCu);
      sub_1C45B4B90(v21);
      MEMORY[0x1C6942830](v21, -1, -1);
      MEMORY[0x1C6942830](v20, -1, -1);
    }
  }

  return v1;
}

unint64_t sub_1C494BE9C()
{
  result = qword_1EDDFA5F8;
  if (!qword_1EDDFA5F8)
  {
    sub_1C4F00858();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA5F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntelligencePlatformSystem(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C494C02C(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for PhaseStores(0);
  *(v3 + 32) = v5;
  sub_1C43FBD18(v5);
  *(v3 + 40) = sub_1C43FBE7C();
  v6 = type metadata accessor for Linker(0);
  sub_1C43FBD18(v6);
  *(v3 + 48) = sub_1C43FBE7C();
  v7 = type metadata accessor for INPersonSourceIngestor(0);
  *(v3 + 56) = v7;
  sub_1C43FBD18(v7);
  *(v3 + 64) = sub_1C43FBE7C();
  v8 = type metadata accessor for Source(0);
  *(v3 + 72) = v8;
  sub_1C43FBD18(v8);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  v9 = type metadata accessor for Configuration(0);
  sub_1C43FBD18(v9);
  *(v3 + 96) = sub_1C43FBE7C();
  *(v3 + 121) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C494C15C, 0, 0);
}

uint64_t sub_1C494C15C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  sub_1C4430A70(v2, *(v0 + 96), type metadata accessor for Configuration);
  *(v0 + 104) = *(v2 + *(v1 + 24));
  v3 = qword_1EDDFD0D0;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 121);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 64);
  v8 = *(v0 + 56);
  v9 = *(v0 + 40);
  v10 = *(v0 + 16);
  v11 = sub_1C442B738(*(v0 + 72), qword_1EDDFD0D8);
  sub_1C4430A70(v11, v6, type metadata accessor for Source);
  sub_1C4430A70(v10, v7, type metadata accessor for PhaseStores);
  sub_1C4430A70(v11, v7 + *(v8 + 20), type metadata accessor for Source);
  *(v7 + *(v8 + 24)) = v4;
  sub_1C4430A70(v11, v5, type metadata accessor for Source);
  sub_1C4430A70(v10, v9, type metadata accessor for PhaseStores);
  *(v0 + 120) = 3;
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  *v12 = v0;
  v12[1] = sub_1C494C338;

  return Linker.init(source:stores:pipelineType:)();
}

uint64_t sub_1C494C338()
{

  return MEMORY[0x1EEE6DFA0](sub_1C494C434, 0, 0);
}

uint64_t sub_1C494C434()
{
  v15 = *(v0 + 121);
  v1 = *(v0 + 96);
  v14 = *(v0 + 104);
  v2 = *(v0 + 88);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 48);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
  sub_1C4EFD548();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C4F0D130;
  sub_1C4EFD4C8();
  sub_1C44857CC(v7);
  v9 = (v6 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_sourceIngestor);
  *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_sourceIngestor + 24) = v4;
  v9[4] = sub_1C494C73C();
  v10 = sub_1C4422F90(v9);
  sub_1C494C794(v3, v10, type metadata accessor for INPersonSourceIngestor);
  sub_1C494C794(v1, v6 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_config, type metadata accessor for Configuration);
  *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_graphStore) = v14;
  sub_1C494C794(v2, v6 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_source, type metadata accessor for Source);
  sub_1C494C794(v5, v6 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_linker, type metadata accessor for Linker);
  *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_entityClasses) = v8;
  *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_matchesDict) = MEMORY[0x1E69E7CC8];
  *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_pipelineType) = v15;

  v11 = *(v0 + 8);
  v12 = *(v0 + 24);

  return v11(v12);
}

uint64_t type metadata accessor for INPersonMatchExtractor(uint64_t a1)
{
  result = qword_1EC0BFB48;
  if (!qword_1EC0BFB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C494C73C()
{
  result = qword_1EDDE2AA0;
  if (!qword_1EDDE2AA0)
  {
    type metadata accessor for INPersonSourceIngestor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE2AA0);
  }

  return result;
}

uint64_t sub_1C494C794(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C494C7F0(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for Fuser(0);
  sub_1C43FBD18(v5);
  *(v3 + 32) = swift_task_alloc();
  v6 = type metadata accessor for Linker(0);
  sub_1C43FBD18(v6);
  *(v3 + 40) = swift_task_alloc();
  v7 = type metadata accessor for INPersonSourceIngestor(0);
  *(v3 + 48) = v7;
  sub_1C43FBD18(v7);
  *(v3 + 56) = swift_task_alloc();
  v8 = type metadata accessor for Source(0);
  *(v3 + 64) = v8;
  sub_1C43FBD18(v8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v9 = type metadata accessor for PhaseStores(0);
  sub_1C43FBD18(v9);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 121) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C494C948, 0, 0);
}

uint64_t sub_1C494C948()
{
  sub_1C4419288();
  sub_1C44717B8(v1, v2, v3);
  if (qword_1EDDFD0D0 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 121);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 72);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v10 = *(v0 + 16);
  v11 = sub_1C442B738(*(v0 + 64), qword_1EDDFD0D8);
  *(v0 + 104) = v11;
  sub_1C44717B8(v11, v5, type metadata accessor for Source);
  sub_1C44717B8(v10, v8, type metadata accessor for PhaseStores);
  sub_1C44717B8(v11, v8 + *(v9 + 20), type metadata accessor for Source);
  *(v8 + *(v9 + 24)) = v4;
  sub_1C44717B8(v11, v7, type metadata accessor for Source);
  sub_1C44717B8(v10, v6, type metadata accessor for PhaseStores);
  *(v0 + 120) = 1;
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  *v12 = v0;
  v12[1] = sub_1C494CB00;

  return Linker.init(source:stores:pipelineType:)();
}

uint64_t sub_1C494CB00()
{

  return MEMORY[0x1EEE6DFA0](sub_1C494CBFC, 0, 0);
}

uint64_t sub_1C494CBFC()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  v23 = v0[5];
  v7 = v0[2];
  v8 = v0[3];
  sub_1C44717B8(v0[13], v0[9], type metadata accessor for Source);
  sub_1C4419288();
  sub_1C44717B8(v7, v3, v9);
  Fuser.init(source:stores:pipelineType:)();
  sub_1C44857CC(v7);
  v10 = (v8 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor);
  *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor + 24) = v4;
  v10[4] = sub_1C494C73C();
  v11 = sub_1C4422F90(v10);
  sub_1C494CE9C(v5, v11, type metadata accessor for INPersonSourceIngestor);
  sub_1C44002E8();
  sub_1C494CE9C(v2, v12, v13);
  sub_1C44002E8();
  sub_1C494CE9C(v1, v14, v15);
  sub_1C44002E8();
  sub_1C494CE9C(v23, v16, v17);
  sub_1C44002E8();
  sub_1C494CE9C(v6, v18, v19);
  *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType) = 1;

  v20 = v0[1];
  v21 = v0[3];

  return v20(v21);
}

uint64_t type metadata accessor for IntentsPersonPhase(uint64_t a1)
{
  result = qword_1EDDE5AE8;
  if (!qword_1EDDE5AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C494CE9C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_1C494CF40(char a1)
{
  switch(a1)
  {
    case 3:
    case 4:
      sub_1C43FE984();
      break;
    default:
      return;
  }
}

uint64_t sub_1C494D028@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  switch(a3)
  {
    case 1:
      v12 = MEMORY[0x1E69E63B0];
      v13 = MEMORY[0x1E69A0168];
      goto LABEL_16;
    case 2:
      v6 = (result & 1) == 0;
      v7 = 6581861;
      if ((result & 1) == 0)
      {
        v7 = 0x7472617473;
      }

      v8 = 0xE500000000000000;
      v9 = MEMORY[0x1E69E6158];
      v10 = MEMORY[0x1E69A0138];
      v11 = 0xE300000000000000;
      goto LABEL_11;
    case 3:
      v12 = MEMORY[0x1E69E6530];
      v13 = MEMORY[0x1E69A0180];
LABEL_16:
      a4[3] = v12;
      a4[4] = v13;
      *a4 = result;
      return result;
    case 4:
      v6 = (result & 1) == 0;
      v7 = 0x63696E756D6D6F63;
      if (result)
      {
        v7 = 0x7070416F746F6870;
      }

      v8 = 0xED00006E6F697461;
      v9 = MEMORY[0x1E69E6158];
      v10 = MEMORY[0x1E69A0138];
      v11 = 0xEF65636E61726165;
LABEL_11:
      a4[3] = v9;
      a4[4] = v10;
      if (!v6)
      {
        v8 = v11;
      }

      *a4 = v7;
      a4[1] = v8;
      break;
    case 5:
      if ((result & 0x10000) != 0)
      {
        v16 = sub_1C4EFB258();
        v17 = MEMORY[0x1E699FE38];
        a4[3] = v16;
        a4[4] = v17;
        sub_1C4422F90(a4);
        result = sub_1C4EFB228();
      }

      else
      {
        v20 = MEMORY[0x1E69E75F8];
        v21 = MEMORY[0x1E69A01E8];
        LOWORD(v19) = result;
        result = sub_1C441D670(&v19, a4);
      }

      break;
    case 6:
      v14 = 0xE800000000000000;
      v15 = 0x676E696D6F636E69;
      switch(result)
      {
        case 1:
          v15 = 0x676E696F6774756FLL;
          break;
        case 2:
          v14 = 0xED00006C616E6F69;
          v15 = 0x7463657269646962;
          break;
        case 3:
          v14 = 0xE900000000000064;
          v15 = 0x656E696665646E75;
          break;
        default:
          break;
      }

      v18 = MEMORY[0x1E69A0138];
      a4[3] = MEMORY[0x1E69E6158];
      a4[4] = v18;
      *a4 = v15;
      a4[1] = v14;
      break;
    default:
      v5 = MEMORY[0x1E69A0138];
      a4[3] = MEMORY[0x1E69E6158];
      a4[4] = v5;
      *a4 = result;
      a4[1] = a2;

      result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      break;
  }

  return result;
}

void sub_1C494D274(char *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v80 = a3;
  v81 = a4;
  v7 = sub_1C4EFCE48();
  sub_1C43FCDF8();
  v76 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v75[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for GraphBasedVirtualInteractionStreamProvider(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v75[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v77 = sub_1C456902C(&qword_1EC0BFC88, &unk_1C4F3D4A0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v75[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v75[-v19];
  v90 = MEMORY[0x1E69E7CC0];
  v21 = objc_autoreleasePoolPush();
  sub_1C4951AE8(a1, a2, &v90);
  if (v4)
  {
    objc_autoreleasePoolPop(v21);
    __break(1u);
  }

  else
  {
    objc_autoreleasePoolPop(v21);
    v79 = a1;
    v22 = a1;
    v23 = a2;
    if (sub_1C4D29B64(v22, a2))
    {
      sub_1C4EFDA08();
      v24.n128_f64[0] = (*(v76 + 32))(v15, v11, v7);
      *&v15[*(v12 + 20)] = v81;
      sub_1C4953708(v15, v20, v24);
      v25 = v78;
      sub_1C45AD5C0();
      v26 = v90;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C4413318();
        v26 = v65;
      }

      v27 = *(v26 + 16);
      if (v27 >= *(v26 + 24) >> 1)
      {
        sub_1C4411ED0();
        v26 = v66;
      }

      sub_1C4420C3C(v20, &qword_1EC0BFC88, &unk_1C4F3D4A0);
      v86 = v77;
      v87 = &off_1F440C7D0;
      sub_1C4422F90(&v85);
      sub_1C45AD5C0();
      sub_1C443FD10();
      sub_1C441D670(&v85, v26 + v27 * v28 + 32);
      sub_1C4420C3C(v25, &qword_1EC0BFC88, &unk_1C4F3D4A0);
      v90 = v26;
    }

    v29 = v79;
    v30 = v23;
    v31 = sub_1C4AA8CEC(v79, v23);
    v32 = v80;
    if (v31)
    {
      type metadata accessor for PhotosMetadataFetcher();
      v33 = swift_allocObject();
      v83 = sub_1C4EFFB28();
      v84 = &off_1F43F81B8;
      sub_1C4422F90(&v82);
      sub_1C4EFD9E8();
      *&v85 = v33;
      v34 = sub_1C441D670(&v82, &v85 + 8);
      sub_1C440C588(v34, v35, &unk_1EC0BFCB0, &unk_1C4F3D4C8);
      v36 = v90;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C4413318();
        v36 = v67;
      }

      v37 = *(v36 + 16);
      if (v37 >= *(v36 + 24) >> 1)
      {
        sub_1C4411ED0();
        v36 = v68;
      }

      sub_1C4425CB8();
      v88 = sub_1C440BD5C();
      v89 = &off_1F43F8220;
      v38 = swift_allocObject();
      sub_1C4400680(v38);
      sub_1C443FD10();
      sub_1C43FD9B8(v36 + v37 * v39);
      v90 = v36;
      v30 = v23;
    }

    if (sub_1C49C4868(v29, v30))
    {
      v40 = sub_1C456902C(&qword_1EC0BFC90, &qword_1C4F5E1A0);
      sub_1C441E43C(v40);
      v32;
      v41 = sub_1C4EFF738();
      v42 = sub_1C440D578(v41);
      sub_1C440C588(v42, v43, &unk_1EC0BFCA8, &unk_1C4F3D4C0);
      v44 = v90;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C4413318();
        v44 = v69;
      }

      v45 = *(v44 + 16);
      if (v45 >= *(v44 + 24) >> 1)
      {
        sub_1C4411ED0();
        v44 = v70;
      }

      sub_1C4425CB8();
      v88 = sub_1C440BD5C();
      v89 = &off_1F43F39A8;
      sub_1C44006A8();
      v46 = swift_allocObject();
      sub_1C4400680(v46);
      sub_1C443FD10();
      sub_1C43FD9B8(v44 + v45 * v47);
      v90 = v44;
      v29 = v79;
      v30 = v23;
    }

    if (sub_1C49C4B70(v29, v30))
    {
      v48 = sub_1C456902C(&qword_1EC0BFC90, &qword_1C4F5E1A0);
      sub_1C441E43C(v48);
      v32;
      v49 = sub_1C4EFF738();
      v50 = sub_1C440D578(v49);
      sub_1C440C588(v50, v51, &unk_1EC0BFCA0, &unk_1C4F3D4B8);
      v52 = v90;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C4413318();
        v52 = v71;
      }

      v53 = *(v52 + 16);
      if (v53 >= *(v52 + 24) >> 1)
      {
        sub_1C4411ED0();
        v52 = v72;
      }

      sub_1C4425CB8();
      v88 = sub_1C440BD5C();
      v89 = &off_1F43F39A8;
      sub_1C44006A8();
      v54 = swift_allocObject();
      sub_1C4400680(v54);
      sub_1C443FD10();
      sub_1C43FD9B8(v52 + v53 * v55);
      v90 = v52;
      v29 = v79;
      v30 = v23;
    }

    if (sub_1C49C4E78(v29, v30))
    {
      v56 = sub_1C456902C(&qword_1EC0BFC90, &qword_1C4F5E1A0);
      sub_1C441E43C(v56);
      v32;
      v57 = sub_1C4EFF738();
      v59 = sub_1C440D578(v57);
      sub_1C440C588(v59, v60, &unk_1EC0BFC98, &unk_1C4F3D4B0);
      v58 = v90;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458CD80();
        v58 = v73;
      }

      v61 = *(v58 + 16);
      if (v61 >= *(v58 + 24) >> 1)
      {
        sub_1C458CD80();
        v58 = v74;
      }

      sub_1C4425CB8();
      v88 = sub_1C440BD5C();
      v89 = &off_1F43F39A8;
      sub_1C44006A8();
      v62 = swift_allocObject();
      sub_1C4400680(v62);
      *(v58 + 16) = v61 + 1;
      sub_1C43FD9B8(v58 + 40 * v61);
      v90 = v58;
      v30 = v23;
    }

    else
    {
      v58 = v90;
    }

    if (*(v58 + 16))
    {

      v63 = swift_allocObject();
      *(v63 + 16) = v58;
      *(v63 + 24) = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1C463DFA8();
      swift_allocError();
      *v64 = v29;
      *(v64 + 8) = v30;
      *(v64 + 16) = 1;
      swift_willThrow();
    }
  }
}

void sub_1C494DA84(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *(v5 + 16);
  v27 = a1;
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v10 = sub_1C49C02D8(sub_1C4952014, v26, v9);
  v11 = v10[2];
  if (v11)
  {
    v13 = v10[4];
    v12 = v10[5];

    if (v11 != 1)
    {
      if (qword_1EDDFA668 != -1)
      {
        sub_1C4406758();
        swift_once();
      }

      v14 = sub_1C4F00978();
      sub_1C442B738(v14, qword_1EDE2DDE0);

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v15 = sub_1C4F00968();
      v16 = sub_1C4F01CD8();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v33 = v25;
        *v17 = 136315394;
        v31 = a3;
        v32 = a4;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v18 = sub_1C4F01198();
        v20 = sub_1C441D828(v18, v19, &v33);

        *(v17 + 4) = v20;
        *(v17 + 12) = 2080;
        v31 = v13;
        v32 = v12;

        sub_1C456902C(&qword_1EC0B8808, &qword_1C4F3C4B0);
        v21 = sub_1C4F01198();
        v23 = sub_1C441D828(v21, v22, &v33);

        *(v17 + 14) = v23;
        _os_log_impl(&dword_1C43F8000, v15, v16, "InteractionSourceAdapterRegistry: Multiple source adapters support this query: %s. Choosing the first one: %s", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C6942830](v25, -1, -1);
        MEMORY[0x1C6942830](v17, -1, -1);
      }
    }

    *a5 = v13;
    a5[1] = v12;
  }

  else
  {

    sub_1C463DFA8();
    swift_allocError();
    *v24 = a3;
    *(v24 + 8) = a4;
    *(v24 + 16) = 1;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

unint64_t sub_1C494DD30()
{
  sub_1C44103E8();
  sub_1C4F025D8();
  sub_1C440F210();
  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

void sub_1C494DD70(char a1)
{
  switch(a1)
  {
    case 5:
      sub_1C43FE984();
      break;
    default:
      return;
  }
}

uint64_t sub_1C494DE50(char a1)
{
  if (a1)
  {
    return 6581861;
  }

  else
  {
    return 0x7472617473;
  }
}

unint64_t sub_1C494DEA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C494DD30();
  *a1 = result;
  return result;
}

void sub_1C494DED0()
{
  v1 = sub_1C4405D78();
  sub_1C494DD70(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_1C494DFCC@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1C494E298();
  *a2 = result;
  return result;
}

uint64_t sub_1C494E004()
{
  v1 = sub_1C4405D78();
  result = sub_1C494DE50(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_1C494E0DC(unint64_t a1)
{
  v1 = a1;
  if (a1 >= 4)
  {
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406758();
      swift_once();
    }

    v2 = sub_1C4F00978();
    sub_1C442B738(v2, qword_1EDE2DDE0);
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CE8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = v1;
      _os_log_impl(&dword_1C43F8000, v3, v4, "EntityRelevance.CommunicationDirection: Unexpected interaction store direction value: %ld", v5, 0xCu);
      MEMORY[0x1C6942830](v5, -1, -1);
    }

    return 4;
  }

  return v1;
}

unint64_t sub_1C494E1C8()
{
  sub_1C44103E8();
  sub_1C4F025D8();
  sub_1C440F210();
  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C494E208(char a1)
{
  result = 0x676E696D6F636E69;
  switch(a1)
  {
    case 1:
      result = 0x676E696F6774756FLL;
      break;
    case 2:
      result = 0x7463657269646962;
      break;
    case 3:
      result = 0x656E696665646E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C494E298()
{
  sub_1C44103E8();
  sub_1C4F025D8();
  sub_1C440F210();
  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C494E2DC(char a1)
{
  if (a1)
  {
    return 0x7070416F746F6870;
  }

  else
  {
    return 0x63696E756D6D6F63;
  }
}

unint64_t sub_1C494E32C()
{
  sub_1C44103E8();
  sub_1C4F025D8();
  sub_1C440F210();
  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1C494E390@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C494E1C8();
  *a1 = result;
  return result;
}

uint64_t sub_1C494E3C0()
{
  v1 = sub_1C4405D78();
  result = sub_1C494E208(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1C494E4BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C494E298();
  *a1 = result;
  return result;
}

uint64_t sub_1C494E4F4()
{
  v1 = sub_1C4405D78();
  result = sub_1C494E2DC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_1C494E5F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C494E32C();
  *a1 = result;
  return result;
}

void sub_1C494E620()
{
  v1 = sub_1C4405D78();
  sub_1C494CF40(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_1C494E6F8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 1:
      return a6 == 1 && *&a1 == *&a4;
    case 2:
      if (a6 != 2)
      {
        return 0;
      }

      v15 = (a1 & 1) == 0;
      if (a1)
      {
        v9 = 6581861;
      }

      else
      {
        v9 = 0x7472617473;
      }

      v10 = 0xE500000000000000;
      v11 = 0xE300000000000000;
      if (v15)
      {
        v12 = 0xE500000000000000;
      }

      else
      {
        v12 = 0xE300000000000000;
      }

      v13 = (a4 & 1) == 0;
      if (a4)
      {
        v14 = 6581861;
      }

      else
      {
        v14 = 0x7472617473;
      }

      goto LABEL_30;
    case 3:
      return a6 == 3 && a1 == a4;
    case 4:
      if (a6 != 4)
      {
        return 0;
      }

      v8 = (a1 & 1) == 0;
      if (a1)
      {
        v9 = 0x7070416F746F6870;
      }

      else
      {
        v9 = 0x63696E756D6D6F63;
      }

      v10 = 0xED00006E6F697461;
      v11 = 0xEF65636E61726165;
      if (v8)
      {
        v12 = 0xED00006E6F697461;
      }

      else
      {
        v12 = 0xEF65636E61726165;
      }

      v13 = (a4 & 1) == 0;
      if (a4)
      {
        v14 = 0x7070416F746F6870;
      }

      else
      {
        v14 = 0x63696E756D6D6F63;
      }

LABEL_30:
      if (v13)
      {
        v16 = v10;
      }

      else
      {
        v16 = v11;
      }

      if (v9 != v14 || v12 != v16)
      {
        goto LABEL_68;
      }

      goto LABEL_69;
    case 5:
      if (a6 != 5)
      {
        return 0;
      }

      if ((a1 & 0x10000) != 0)
      {
        return (a4 & 0x10000) != 0;
      }

      return (a4 & 0x10000) == 0 && a1 == a4;
    case 6:
      if (a6 != 6)
      {
        return 0;
      }

      v19 = 0x676E696D6F636E69;
      v20 = 0xE800000000000000;
      v21 = a1;
      v22 = 0x676E696D6F636E69;
      switch(v21)
      {
        case 1:
          v22 = 0x676E696F6774756FLL;
          break;
        case 2:
          v22 = 0x7463657269646962;
          v20 = 0xED00006C616E6F69;
          break;
        case 3:
          v22 = 0x656E696665646E75;
          v20 = 0xE900000000000064;
          break;
        default:
          break;
      }

      v23 = 0xE800000000000000;
      switch(a4)
      {
        case 1:
          v19 = 0x676E696F6774756FLL;
          break;
        case 2:
          v19 = 0x7463657269646962;
          v23 = 0xED00006C616E6F69;
          break;
        case 3:
          v19 = 0x656E696665646E75;
          v23 = 0xE900000000000064;
          break;
        default:
          break;
      }

      if (v22 != v19 || v20 != v23)
      {
LABEL_68:
        v25 = sub_1C4F02938();

        return v25 & 1;
      }

LABEL_69:

      return 1;
    default:
      if (a6)
      {
        return 0;
      }

      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_1C4F02938();
  }
}

uint64_t sub_1C494EA28(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C494EAC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001C4F86740 == a2;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x456E6F6973736573 && a2 == 0xEC000000746E6576;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001C4F85600 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7463617265746E69 && a2 == 0xEF657079546E6F69;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x646576726573626FLL && a2 == 0xEB00000000656741;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000016 && 0x80000001C4F86760 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C4F02938();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C494ED10(char a1)
{
  result = 0x4449656C646E7562;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x456E6F6973736573;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x7463617265746E69;
      break;
    case 5:
      result = 0x646576726573626FLL;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C494EE00(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C494EE9C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73696E616863656DLL && a2 == 0xE90000000000006DLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C494EF38(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C494EFC0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C494F050(uint64_t a1, uint64_t a2)
{
  if (a1 == 6645601 && a2 == 0xE300000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C494F0D8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746E657665 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C494F160(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v72 = a4;
  v73 = a2;
  v66 = a3;
  sub_1C456902C(&qword_1EC0BFBD0, &qword_1C4F3C500);
  sub_1C43FCDF8();
  v70 = v7;
  v71 = v6;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBC74();
  v67 = v9;
  sub_1C456902C(&qword_1EC0BFBD8, &qword_1C4F3C508);
  sub_1C43FCDF8();
  v68 = v11;
  v69 = v10;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBC74();
  v65 = v13;
  sub_1C456902C(&qword_1EC0BFBE0, &qword_1C4F3C510);
  sub_1C43FCDF8();
  v63 = v15;
  v64 = v14;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBC74();
  v62 = v17;
  sub_1C456902C(&qword_1EC0BFBE8, &qword_1C4F3C518);
  sub_1C43FCDF8();
  v60 = v19;
  v61 = v18;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBC74();
  v59 = v21;
  v58 = sub_1C456902C(&qword_1EC0BFBF0, &qword_1C4F3C520);
  sub_1C43FCDF8();
  v57 = v22;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C4402A68();
  v24 = sub_1C456902C(&qword_1EC0BFBF8, &qword_1C4F3C528);
  sub_1C43FCDF8();
  v56 = v25;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v54 - v27;
  v29 = sub_1C456902C(&qword_1EC0BFC00, &qword_1C4F3C530);
  sub_1C43FCDF8();
  v55 = v30;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v54 - v32;
  sub_1C456902C(&qword_1EC0BFC08, &qword_1C4F3C538);
  sub_1C43FCDF8();
  v75 = v34;
  v76 = v35;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v54 - v37;
  v39 = a1[3];
  sub_1C4409678(a1, v39);
  sub_1C4952034();
  v74 = v38;
  sub_1C4F02BF8();
  switch(v72)
  {
    case 1:
      LOBYTE(v77[0]) = 1;
      sub_1C4952328();
      sub_1C43FF22C(&type metadata for EntityRelevance.AttributeQuery.LookaheadDurationCodingKeys, v77);
      sub_1C4F027B8();
      (*(v56 + 8))(v28, v24);
      return (*(v76 + 8))(v39, v4);
    case 2:
      LOBYTE(v77[0]) = 2;
      sub_1C4952280();
      v44 = v74;
      v43 = v75;
      sub_1C4F02718();
      LOBYTE(v77[0]) = v73 & 1;
      sub_1C49524C0();
      v45 = v58;
      sub_1C4F027E8();
      (*(v57 + 8))(v4, v45);
      return (*(v76 + 8))(v44, v43);
    case 3:
      LOBYTE(v77[0]) = 3;
      sub_1C495222C();
      v47 = v59;
      sub_1C43FF22C(&type metadata for EntityRelevance.AttributeQuery.CommunicationMechanismCodingKeys, v77);
      v77[0] = v73;
      type metadata accessor for GDInteractionMechanism(0);
      sub_1C4417410();
      sub_1C4952478(v48, v49, &protocol conformance descriptor for GDInteractionMechanism);
      v50 = v61;
      sub_1C4426BFC();
      sub_1C4F027E8();
      v51 = v60;
      goto LABEL_8;
    case 4:
      LOBYTE(v77[0]) = 4;
      sub_1C4952184();
      v40 = v62;
      sub_1C4410E84(&type metadata for EntityRelevance.AttributeQuery.InteractionTypeCodingKeys, v77);
      LOBYTE(v77[0]) = v73 & 1;
      sub_1C4952424();
      v41 = v64;
      sub_1C4F027E8();
      v42 = v63;
      goto LABEL_11;
    case 5:
      LOBYTE(v77[0]) = 5;
      sub_1C4952130();
      v47 = v65;
      sub_1C43FF22C(&type metadata for EntityRelevance.AttributeQuery.ObservedAgeCodingKeys, v77);
      LOWORD(v77[0]) = v73;
      BYTE2(v77[0]) = BYTE2(v73) & 1;
      type metadata accessor for PHPersonAgeType(0);
      sub_1C4403390();
      sub_1C4952478(v52, v53, &protocol conformance descriptor for PHPersonAgeType);
      v50 = v69;
      sub_1C4426BFC();
      sub_1C4F02778();
      v51 = v68;
LABEL_8:
      (*(v51 + 8))(v47, v50);
      return (*(v76 + 8))(v39, v4);
    case 6:
      LOBYTE(v77[0]) = 6;
      sub_1C4952088();
      v40 = v67;
      sub_1C4410E84(&type metadata for EntityRelevance.AttributeQuery.CommunicationDirectionCodingKeys, v77);
      LOBYTE(v77[0]) = v73;
      sub_1C49523D0();
      v41 = v71;
      sub_1C4F027E8();
      v42 = v70;
LABEL_11:
      (*(v42 + 8))(v40, v41);
      return (*(v76 + 8))(v4, v24);
    default:
      LOBYTE(v77[0]) = 0;
      sub_1C495237C();
      sub_1C4410E84(&type metadata for EntityRelevance.AttributeQuery.BundleIDCodingKeys, v77);
      sub_1C4F02798();
      (*(v55 + 8))(v33, v29);
      return (*(v76 + 8))(v4, v24);
  }
}

uint64_t sub_1C494F908()
{
  sub_1C4404078();
  switch(v1)
  {
    case 1:
      MEMORY[0x1C69417F0](1);
      if ((v0 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v3 = v0;
      }

      else
      {
        v3 = 0;
      }

      result = MEMORY[0x1C6941830](v3);
      break;
    case 2:
      MEMORY[0x1C69417F0](2);
      goto LABEL_7;
    case 3:
      MEMORY[0x1C69417F0](3);
      result = MEMORY[0x1C69417F0](v0);
      break;
    case 4:
      MEMORY[0x1C69417F0](4);
LABEL_7:
      sub_1C4F01298();

      break;
    case 5:
      MEMORY[0x1C69417F0](5);
      if ((v0 & 0x10000) != 0)
      {
        result = sub_1C4F02B18();
      }

      else
      {
        sub_1C4F02B18();
        result = sub_1C4F02B28();
      }

      break;
    case 6:
      MEMORY[0x1C69417F0](6);

      result = sub_1C468B054();
      break;
    default:
      MEMORY[0x1C69417F0](0);

      result = sub_1C4F01298();
      break;
  }

  return result;
}

uint64_t sub_1C494FAC4()
{
  sub_1C4F02AF8();
  sub_1C494F908();
  return sub_1C4F02B68();
}

uint64_t sub_1C494FB24(void *a1)
{
  v84[14] = sub_1C456902C(&qword_1EC0BFB70, &qword_1C4F3C4B8);
  sub_1C43FCDF8();
  v84[18] = v3;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBC74();
  v87 = v5;
  sub_1C456902C(&qword_1EC0BFB78, &qword_1C4F3C4C0);
  sub_1C43FCDF8();
  v84[16] = v6;
  v84[17] = v7;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBC74();
  v86 = v9;
  v84[15] = sub_1C456902C(&qword_1EC0BFB80, &qword_1C4F3C4C8);
  sub_1C43FCDF8();
  v84[13] = v10;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBC74();
  v84[20] = v12;
  sub_1C456902C(&qword_1EC0BFB88, &qword_1C4F3C4D0);
  sub_1C43FCDF8();
  v84[11] = v14;
  v84[12] = v13;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBC74();
  v84[19] = v16;
  sub_1C456902C(&qword_1EC0BFB90, &qword_1C4F3C4D8);
  sub_1C43FCDF8();
  v84[9] = v18;
  v84[10] = v17;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBC74();
  v85 = v20;
  sub_1C456902C(&qword_1EC0BFB98, &qword_1C4F3C4E0);
  sub_1C43FCDF8();
  v84[7] = v22;
  v84[8] = v21;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v84 - v24;
  v26 = sub_1C456902C(&qword_1EC0BFBA0, &qword_1C4F3C4E8);
  sub_1C43FCDF8();
  v84[6] = v27;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C4402A68();
  v29 = sub_1C456902C(&qword_1EC0BFBA8, &unk_1C4F3C4F0);
  sub_1C43FCDF8();
  v31 = v30;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v32);
  v34 = v84 - v33;
  v35 = a1[3];
  v88 = a1;
  sub_1C4409678(a1, v35);
  sub_1C4952034();
  v36 = v89;
  sub_1C4F02BC8();
  if (v36)
  {
    goto LABEL_9;
  }

  v84[4] = v1;
  v84[3] = v26;
  v84[5] = v25;
  v37 = v85;
  v89 = v31;
  sub_1C4F026E8();
  result = sub_1C4570934();
  if (v40 == v41 >> 1)
  {
LABEL_8:
    v49 = sub_1C4F022E8();
    swift_allocError();
    v51 = v50;
    v26 = *(sub_1C456902C(&qword_1EC0B7410, &qword_1C4F06F90) + 48);
    *v51 = &type metadata for EntityRelevance.AttributeQuery;
    sub_1C4F025F8();
    sub_1C4F022D8();
    (*(*(v49 - 8) + 104))(v51, *MEMORY[0x1E69E6AF8], v49);
    swift_willThrow();
    swift_unknownObjectRelease();
    v52 = sub_1C442CC90();
    v53(v52, v29);
LABEL_9:
    v37 = v88;
LABEL_10:
    sub_1C440962C(v37);
    return v26;
  }

  v84[2] = v34;
  if (v40 < (v41 >> 1))
  {
    v42 = v29;
    v43 = *(v39 + v40);
    v44 = sub_1C4570928(v40 + 1, v41 >> 1, result, v39);
    v46 = v45;
    v48 = v47;
    swift_unknownObjectRelease();
    v84[1] = v44;
    if (v46 == v48 >> 1)
    {
      switch(v43)
      {
        case 1:
          LOBYTE(v90[0]) = 1;
          sub_1C4952328();
          sub_1C44071AC(&type metadata for EntityRelevance.AttributeQuery.LookaheadDurationCodingKeys, v90);
          sub_1C442FE88();
          sub_1C441C7EC();
          v69 = sub_1C4F02698();
          sub_1C4405070();
          v70 = sub_1C441BA28();
          v71(v70);
          v72 = sub_1C443351C();
          v73(v72, v42);
          v26 = *&v69;
          goto LABEL_10;
        case 2:
          LOBYTE(v90[0]) = 2;
          sub_1C4952280();
          v54 = v42;
          sub_1C44071AC(&type metadata for EntityRelevance.AttributeQuery.SessionEventCodingKeys, v90);
          sub_1C442FE88();
          sub_1C49522D4();
          sub_1C441C7EC();
          sub_1C4F026C8();
          swift_unknownObjectRelease();
          goto LABEL_17;
        case 3:
          LOBYTE(v90[0]) = 3;
          sub_1C495222C();
          sub_1C44071AC(&type metadata for EntityRelevance.AttributeQuery.CommunicationMechanismCodingKeys, v90);
          sub_1C442FE88();
          type metadata accessor for GDInteractionMechanism(0);
          sub_1C4417410();
          sub_1C4952478(v55, v56, &protocol conformance descriptor for GDInteractionMechanism);
          sub_1C441C7EC();
          sub_1C4F026C8();
          swift_unknownObjectRelease();
          v61 = sub_1C4432524();
          v62(v61);
          v63 = sub_1C442CC90();
          v64(v63, v42);
          v26 = v90[0];
          goto LABEL_10;
        case 4:
          LOBYTE(v90[0]) = 4;
          sub_1C4952184();
          v54 = v42;
          sub_1C44071AC(&type metadata for EntityRelevance.AttributeQuery.InteractionTypeCodingKeys, v90);
          sub_1C442FE88();
          sub_1C49521D8();
          sub_1C441C7EC();
          sub_1C4F026C8();
          swift_unknownObjectRelease();
LABEL_17:
          v59 = sub_1C4432524();
          v60(v59);
          v81 = sub_1C443351C();
          v83 = v54;
          goto LABEL_21;
        case 5:
          LOBYTE(v90[0]) = 5;
          sub_1C4952130();
          sub_1C44071AC(&type metadata for EntityRelevance.AttributeQuery.ObservedAgeCodingKeys, v90);
          sub_1C442FE88();
          type metadata accessor for PHPersonAgeType(0);
          sub_1C4403390();
          sub_1C4952478(v57, v58, &protocol conformance descriptor for PHPersonAgeType);
          sub_1C441C7EC();
          sub_1C4F02658();
          swift_unknownObjectRelease();
          v74 = sub_1C4432524();
          v75(v74);
          v76 = sub_1C442CC90();
          v77(v76, v42);
          v78 = 0x10000;
          if (!BYTE2(v90[0]))
          {
            v78 = 0;
          }

          v26 = v78 | LOWORD(v90[0]);
          goto LABEL_10;
        case 6:
          LOBYTE(v90[0]) = 6;
          sub_1C4952088();
          sub_1C44071AC(&type metadata for EntityRelevance.AttributeQuery.CommunicationDirectionCodingKeys, v90);
          sub_1C442FE88();
          sub_1C49520DC();
          sub_1C4F026C8();
          swift_unknownObjectRelease();
          v79 = sub_1C4416174();
          v80(v79);
          v81 = sub_1C443351C();
          v83 = v42;
LABEL_21:
          v82(v81, v83);
          v26 = LOBYTE(v90[0]);
          break;
        default:
          LOBYTE(v90[0]) = 0;
          sub_1C495237C();
          sub_1C44071AC(&type metadata for EntityRelevance.AttributeQuery.BundleIDCodingKeys, v90);
          v26 = sub_1C4F02678();
          sub_1C4405070();
          v65 = sub_1C44251BC();
          v66(v65);
          v67 = sub_1C442CC90();
          v68(v67, v42);
          v37 = v88;
          break;
      }

      goto LABEL_10;
    }

    v29 = v42;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C49506C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C494EA28(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C49506F0(uint64_t a1)
{
  v2 = sub_1C495237C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C495072C(uint64_t a1)
{
  v2 = sub_1C495237C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4950770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C494EAC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4950798(uint64_t a1)
{
  v2 = sub_1C4952034();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C49507D4(uint64_t a1)
{
  v2 = sub_1C4952034();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4950814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C494EE00(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4950840(uint64_t a1)
{
  v2 = sub_1C4952088();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C495087C(uint64_t a1)
{
  v2 = sub_1C4952088();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C49508BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C494EE9C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C49508E8(uint64_t a1)
{
  v2 = sub_1C495222C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4950924(uint64_t a1)
{
  v2 = sub_1C495222C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4950964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C494EF38(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4950990(uint64_t a1)
{
  v2 = sub_1C4952184();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C49509CC(uint64_t a1)
{
  v2 = sub_1C4952184();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4950A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C494EFC0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4950A38(uint64_t a1)
{
  v2 = sub_1C4952328();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4950A74(uint64_t a1)
{
  v2 = sub_1C4952328();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4950AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C494F050(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4950AE0(uint64_t a1)
{
  v2 = sub_1C4952130();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4950B1C(uint64_t a1)
{
  v2 = sub_1C4952130();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4950B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C494F0D8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4950B88(uint64_t a1)
{
  v2 = sub_1C4952280();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4950BC4(uint64_t a1)
{
  v2 = sub_1C4952280();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4950C18()
{
  sub_1C4F02AF8();
  sub_1C494F908();
  return sub_1C4F02B68();
}

uint64_t sub_1C4950C70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C494FB24(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1C4950CDC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_date;
  sub_1C4EF9CD8();
  sub_1C43FBCE0();
  (*(v12 + 32))(v5 + v11, a1);
  *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_entityClass) = a2;
  v13 = (v5 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_entityIdentifier);
  *v13 = a3;
  v13[1] = a4;
  *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_attributes) = a5;
  return v5;
}

uint64_t sub_1C4950D8C()
{
  sub_1C4404078();
  if ((sub_1C4EF9C68() & 1) == 0)
  {
    return 0;
  }

  sub_1C441ED2C(OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_entityClass);
  v3 = v3 && v0 == v2;
  if (v3)
  {
  }

  else
  {
    v4 = sub_1C4409A04(v1);

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1C44033A8(OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_entityIdentifier);
  if (v3 && v6 == v7)
  {
    return 1;
  }

  return sub_1C4F02938();
}

uint64_t sub_1C4950E5C()
{
  BYTE8(v3) = 0;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000018, 0x80000001C4FAA170);
  sub_1C4EF9CD8();
  sub_1C4952478(&qword_1EDDFCD50, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v1 = sub_1C4F02858();
  MEMORY[0x1C6940010](v1);

  MEMORY[0x1C6940010](0x797469746E65202CLL, 0xEF203A7373616C43);
  *&v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_entityClass);
  sub_1C4F02438();
  MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4FAA190);
  MEMORY[0x1C6940010](*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_entityIdentifier), *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_entityIdentifier + 8));
  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return *(&v3 + 1);
}

uint64_t sub_1C4950FE0()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_date;
  sub_1C4EF9CD8();
  sub_1C43FBCE0();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_1C495109C(uint64_t a1)
{
  result = sub_1C4EF9CD8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C4951194()
{
  sub_1C4404078();
  if ((sub_1C4EF9C68() & 1) == 0 || (sub_1C4EF9C68() & 1) == 0)
  {
    return 0;
  }

  sub_1C441ED2C(OBJC_IVAR____TtC24IntelligencePlatformCore18InteractionSession_entityClass);
  v3 = v3 && v0 == v2;
  if (v3)
  {
  }

  else
  {
    v4 = sub_1C4409A04(v1);

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1C44033A8(OBJC_IVAR____TtC24IntelligencePlatformCore18InteractionSession_entityIdentifier);
  if (v3 && v6 == v7)
  {
    return 1;
  }

  return sub_1C4F02938();
}

uint64_t sub_1C495127C()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore18InteractionSession_startDate;
  v2 = sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore18InteractionSession_endDate, v2);

  return v0;
}

uint64_t sub_1C4951330(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_1C49513B4(uint64_t a1)
{
  result = sub_1C4EF9CD8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1C4951458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4839234(a1, a3);
  if (v6)
  {

    sub_1C4839564(a2, a4);
  }
}

uint64_t sub_1C49514B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C43797469746E65 && a2 == 0xED00007365737361;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C4FAA1B0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4951588(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6C43797469746E65;
  }
}

uint64_t sub_1C49515D0(void *a1)
{
  v4 = sub_1C456902C(&qword_1EC0BFC20, &qword_1C4F3C548);
  sub_1C43FCDF8();
  v6 = v5;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4402A68();
  sub_1C4409678(a1, a1[3]);
  sub_1C4952568();
  sub_1C4F02BF8();
  sub_1C456902C(&qword_1EC0BB498, &qword_1C4F1FFE8);
  v8 = sub_1C4952678(&qword_1EDDDBB60, sub_1C470EB1C);
  sub_1C43FC4F4(v8);
  if (!v1)
  {
    sub_1C456902C(&qword_1EC0BB4A0, &unk_1C4F1FFF0);
    v9 = sub_1C49525BC(&qword_1EDDDBB58, sub_1C49526E0);
    sub_1C43FC4F4(v9);
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_1C49517A0(void *a1)
{
  v2 = sub_1C456902C(&qword_1EC0BFC18, &qword_1C4F3C540);
  sub_1C43FCDF8();
  v4 = v3;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  sub_1C4409678(a1, a1[3]);
  sub_1C4952568();
  sub_1C4F02BC8();
  sub_1C456902C(&qword_1EC0BB498, &qword_1C4F1FFE8);
  HIBYTE(v12) = 0;
  v8 = sub_1C4952678(&qword_1EDDFA550, sub_1C470EAC8);
  sub_1C4408C10(v8);
  v10 = v13;
  sub_1C456902C(&qword_1EC0BB4A0, &unk_1C4F1FFF0);
  HIBYTE(v12) = 1;
  v11 = sub_1C49525BC(&qword_1EDDFA548, sub_1C4952624);
  sub_1C4408C10(v11);
  (*(v4 + 8))(v7, v2);
  sub_1C440962C(a1);
  return v10;
}

uint64_t sub_1C49519EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C49514B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4951A14(uint64_t a1)
{
  v2 = sub_1C4952568();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4951A50(uint64_t a1)
{
  v2 = sub_1C4952568();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4951AA0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C49517A0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void sub_1C4951D58(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v12 = a1[3];
  v13 = a1[4];
  sub_1C4409678(a1, v12);
  (*(v13 + 8))(&v15, a2, a3, a4, a5, v12, v13);
  if (v6)
  {

    v14 = 0uLL;
  }

  else
  {
    v14 = v15;
  }

  *a6 = v14;
}

uint64_t sub_1C4951E14()
{

  return v0;
}

uint64_t sub_1C4951E3C()
{
  sub_1C4951E14();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4951EA0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 17))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 6)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4951EE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

unint64_t sub_1C4951F68()
{
  result = qword_1EDDFB7D0;
  if (!qword_1EDDFB7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB7D0);
  }

  return result;
}

unint64_t sub_1C4951FC0()
{
  result = qword_1EDDFB700;
  if (!qword_1EDDFB700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB700);
  }

  return result;
}

unint64_t sub_1C4952034()
{
  result = qword_1EDDFB7A8;
  if (!qword_1EDDFB7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB7A8);
  }

  return result;
}

unint64_t sub_1C4952088()
{
  result = qword_1EDDFB728;
  if (!qword_1EDDFB728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB728);
  }

  return result;
}

unint64_t sub_1C49520DC()
{
  result = qword_1EDDFB6C8;
  if (!qword_1EDDFB6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB6C8);
  }

  return result;
}

unint64_t sub_1C4952130()
{
  result = qword_1EC0BFBB0;
  if (!qword_1EC0BFBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFBB0);
  }

  return result;
}

unint64_t sub_1C4952184()
{
  result = qword_1EDDFB758;
  if (!qword_1EDDFB758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB758);
  }

  return result;
}

unint64_t sub_1C49521D8()
{
  result = qword_1EDDFB6E8;
  if (!qword_1EDDFB6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB6E8);
  }

  return result;
}

unint64_t sub_1C495222C()
{
  result = qword_1EC0BFBC0;
  if (!qword_1EC0BFBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFBC0);
  }

  return result;
}

unint64_t sub_1C4952280()
{
  result = qword_1EDDFB770;
  if (!qword_1EDDFB770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB770);
  }

  return result;
}

unint64_t sub_1C49522D4()
{
  result = qword_1EDDFB7B0;
  if (!qword_1EDDFB7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB7B0);
  }

  return result;
}

unint64_t sub_1C4952328()
{
  result = qword_1EDDFB740;
  if (!qword_1EDDFB740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB740);
  }

  return result;
}

unint64_t sub_1C495237C()
{
  result = qword_1EDDF67F0;
  if (!qword_1EDDF67F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF67F0);
  }

  return result;
}

unint64_t sub_1C49523D0()
{
  result = qword_1EDDE8110;
  if (!qword_1EDDE8110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE8110);
  }

  return result;
}

unint64_t sub_1C4952424()
{
  result = qword_1EDDE8128;
  if (!qword_1EDDE8128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE8128);
  }

  return result;
}

uint64_t sub_1C4952478(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C49524C0()
{
  result = qword_1EDDE8138;
  if (!qword_1EDDE8138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE8138);
  }

  return result;
}

unint64_t sub_1C4952514()
{
  result = qword_1EDDFB7C8;
  if (!qword_1EDDFB7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB7C8);
  }

  return result;
}

unint64_t sub_1C4952568()
{
  result = qword_1EDDFAFB8;
  if (!qword_1EDDFAFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAFB8);
  }

  return result;
}

uint64_t sub_1C49525BC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0BB4A0, &unk_1C4F1FFF0);
    a2();
    result = sub_1C441C328();
    atomic_store(result, a1);
  }

  return result;
}