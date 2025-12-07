void __swiftcall SubFeatureIndex.init(view:feature:subidentifier:)(IntelligencePlatform::SubFeatureIndex *__return_ptr retstr, Swift::String view, Swift::String feature, Swift::String subidentifier)
{
  retstr->view = view;
  retstr->feature = feature;
  retstr->subidentifier = subidentifier;
}

void __swiftcall FeatureIndex.add(subidentifier:)(IntelligencePlatform::SubFeatureIndex *__return_ptr retstr, Swift::String subidentifier)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  retstr->view._countAndFlagsBits = v4;
  retstr->view._object = v3;
  retstr->feature._countAndFlagsBits = v5;
  retstr->feature._object = v6;
  retstr->subidentifier = subidentifier;
}

IntelligencePlatform::FeatureIndex __swiftcall FeatureIndex.init(view:feature:)(Swift::String view, Swift::String feature)
{
  *v2 = view;
  v2[1] = feature;
  result.feature = feature;
  result.view = view;
  return result;
}

uint64_t FeatureIndex.description.getter()
{
  v3 = *v0;

  sub_1ABA7F32C();
  v1 = sub_1ABA7E378();
  MEMORY[0x1AC5A9410](v1);
  return v3;
}

uint64_t static FeatureIndex.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1ABF25054(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      sub_1ABA7D000();

      return sub_1ABF25054();
    }
  }

  return result;
}

uint64_t sub_1ABC41414(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 2003134838 && a2 == 0xE400000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65727574616566 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

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

uint64_t sub_1ABC414DC(char a1)
{
  if (a1)
  {
    return 0x65727574616566;
  }

  else
  {
    return 2003134838;
  }
}

uint64_t sub_1ABC41514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC41414(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABC4153C(uint64_t a1)
{
  v2 = sub_1ABC416FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC41578(uint64_t a1)
{
  v2 = sub_1ABC416FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FeatureIndex.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D5C70, &qword_1ABF4E3C0);
  sub_1ABA7BB64();
  v11 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v10 - v7;
  v9 = *(v0 + 16);
  v10[1] = *(v0 + 24);
  v10[2] = v9;
  sub_1ABA93E20(v3, v3[3]);
  sub_1ABC416FC();
  sub_1ABF252E4();
  sub_1ABA8C0B8();
  if (!v1)
  {
    sub_1ABA8E804();
    sub_1ABA8C0B8();
  }

  (*(v11 + 8))(v8, v4);
  sub_1ABA7BC90();
}

unint64_t sub_1ABC416FC()
{
  result = qword_1EB4D5C78;
  if (!qword_1EB4D5C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5C78);
  }

  return result;
}

uint64_t FeatureIndex.hash(into:)(uint64_t a1)
{
  sub_1ABF23D34();
  sub_1ABA7E378();

  return sub_1ABF23D34();
}

uint64_t FeatureIndex.hashValue.getter()
{
  sub_1ABF25234();
  sub_1ABF23D34();
  sub_1ABF23D34();
  return sub_1ABF25294();
}

void FeatureIndex.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1ABA7BCA8();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v28 = v27;
  v29 = sub_1ABAD219C(&qword_1EB4D5C80, &qword_1ABF4E3C8);
  sub_1ABA7BB64();
  v31 = v30;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v44 - v33;
  sub_1ABA93E20(v26, v26[3]);
  v35 = sub_1ABC416FC();
  sub_1ABA7C230(&type metadata for FeatureIndex.CodingKeys, v36, v35);
  if (v22)
  {
    sub_1ABA84B54(v26);
  }

  else
  {
    HIBYTE(a12) = 0;
    v37 = sub_1ABA90108(&a12 + 1, v29);
    v39 = v38;
    sub_1ABA8E804();
    v40 = sub_1ABA90108(&a12, v29);
    v42 = v41;
    v43 = *(v31 + 8);
    v45 = v40;
    v43(v34, v29);
    *v28 = v37;
    v28[1] = v39;
    v28[2] = v45;
    v28[3] = v42;

    sub_1ABA84B54(v26);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABC419C8(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_1ABF25234();
  FeatureIndex.hash(into:)(v5);
  return sub_1ABF25294();
}

uint64_t SubFeatureIndex.featureIndex.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t SubFeatureIndex.description.getter()
{
  v1 = v0[4];
  v2 = v0[5];
  v5 = *v0;

  sub_1ABA7F32C();
  v3 = sub_1ABA7E378();
  MEMORY[0x1AC5A9410](v3);
  sub_1ABA7F32C();
  MEMORY[0x1AC5A9410](v1, v2);
  return v5;
}

uint64_t static SubFeatureIndex.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (!v10 && (sub_1ABF25054() & 1) == 0)
  {
    return 0;
  }

  v11 = v2 == v6 && v4 == v7;
  if (!v11 && (sub_1ABF25054() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  sub_1ABA7D000();

  return sub_1ABF25054();
}

uint64_t sub_1ABC41C6C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 2003134838 && a2 == 0xE400000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65727574616566 && a2 == 0xE700000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x746E656469627573 && a2 == 0xED00007265696669)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABC41D84(char a1)
{
  if (!a1)
  {
    return 2003134838;
  }

  if (a1 == 1)
  {
    return 0x65727574616566;
  }

  return 0x746E656469627573;
}

uint64_t sub_1ABC41DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC41C6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABC41E10(uint64_t a1)
{
  v2 = sub_1ABC42004();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC41E4C(uint64_t a1)
{
  v2 = sub_1ABC42004();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SubFeatureIndex.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  v37 = v24;
  v26 = v25;
  v27 = sub_1ABAD219C(&qword_1EB4D5C88, &qword_1ABF4E3D0);
  sub_1ABA7BB64();
  v29 = v28;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v36 - v31;
  v33 = v23[2];
  v36[3] = v23[3];
  v36[4] = v33;
  v34 = v23[4];
  v36[1] = v23[5];
  v36[2] = v34;
  sub_1ABA93E20(v26, v26[3]);
  sub_1ABC42004();
  sub_1ABF252E4();
  v35 = v37;
  sub_1ABF24F34();
  if (!v35)
  {
    sub_1ABA8E804();
    sub_1ABA8C0B8();
    sub_1ABA8C0B8();
  }

  (*(v29 + 8))(v32, v27);
  sub_1ABA7BC90();
}

unint64_t sub_1ABC42004()
{
  result = qword_1EB4D5C90;
  if (!qword_1EB4D5C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5C90);
  }

  return result;
}

uint64_t SubFeatureIndex.hash(into:)(uint64_t a1)
{
  sub_1ABF23D34();
  sub_1ABA7E378();
  sub_1ABF23D34();

  return sub_1ABF23D34();
}

uint64_t SubFeatureIndex.hashValue.getter()
{
  sub_1ABF25234();
  sub_1ABF23D34();
  sub_1ABF23D34();
  sub_1ABF23D34();
  return sub_1ABF25294();
}

void SubFeatureIndex.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1ABA7BCA8();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = v29;
  v31 = sub_1ABAD219C(&qword_1EB4D5C98, &qword_1ABF4E3D8);
  sub_1ABA7BB64();
  v33 = v32;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v48 - v35;
  sub_1ABA93E20(v28, v28[3]);
  v37 = sub_1ABC42004();
  sub_1ABA7C230(&type metadata for SubFeatureIndex.CodingKeys, v38, v37);
  if (v24)
  {
    sub_1ABA84B54(v28);
  }

  else
  {
    a14 = 0;
    v39 = sub_1ABA90108(&a14, v31);
    v51 = v40;
    sub_1ABA8E804();
    v49 = sub_1ABA90108(&a13, v31);
    v50 = v41;
    v42 = sub_1ABF24E14();
    v44 = v43;
    v45 = v42;
    (*(v33 + 8))(v36, v31);
    v47 = v50;
    v46 = v51;
    *v30 = v39;
    v30[1] = v46;
    v30[2] = v49;
    v30[3] = v47;
    v30[4] = v45;
    v30[5] = v44;

    sub_1ABA84B54(v28);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABC42368(uint64_t a1)
{
  v2 = v1[1];
  v3 = *(v1 + 4);
  v4 = *(v1 + 5);
  v7 = *v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  sub_1ABF25234();
  SubFeatureIndex.hash(into:)(v6);
  return sub_1ABF25294();
}

MLFeatureValue_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FeatureView.feature(forIndex:)(IntelligencePlatform::FeatureIndex forIndex)
{
  v1 = sub_1ABC42444(forIndex.view._countAndFlagsBits, sub_1ABC3EA50);
  result.value.super.isa = v1;
  result.is_nil = v2;
  return result;
}

uint64_t sub_1ABC42444(__int128 *a1, uint64_t (*a2)(__int128 *, uint64_t, uint64_t))
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v9 = *a1;
  v10 = v4;
  v11 = v5;
  return a2(&v9, v6, v7);
}

MLFeatureValue_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FeatureView.feature(forIndex:)(IntelligencePlatform::SubFeatureIndex *forIndex)
{
  sub_1ABC3F284();
  result.value.super.isa = v1;
  result.is_nil = v2;
  return result;
}

unint64_t sub_1ABC424F8()
{
  result = qword_1EB4CF660;
  if (!qword_1EB4CF660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF660);
  }

  return result;
}

unint64_t sub_1ABC42550()
{
  result = qword_1ED86DB08;
  if (!qword_1ED86DB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86DB08);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SubFeatureIndex.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FeatureIndex.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABC42784()
{
  result = qword_1EB4D5CA0;
  if (!qword_1EB4D5CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5CA0);
  }

  return result;
}

unint64_t sub_1ABC427DC()
{
  result = qword_1EB4D5CA8;
  if (!qword_1EB4D5CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5CA8);
  }

  return result;
}

unint64_t sub_1ABC42834()
{
  result = qword_1EB4D5CB0;
  if (!qword_1EB4D5CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5CB0);
  }

  return result;
}

unint64_t sub_1ABC4288C()
{
  result = qword_1EB4D5CB8;
  if (!qword_1EB4D5CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5CB8);
  }

  return result;
}

unint64_t sub_1ABC428E4()
{
  result = qword_1EB4D5CC0;
  if (!qword_1EB4D5CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5CC0);
  }

  return result;
}

unint64_t sub_1ABC4293C()
{
  result = qword_1EB4D5CC8;
  if (!qword_1EB4D5CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5CC8);
  }

  return result;
}

id FeedbackService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void FeedbackService.record<A>(feedback:for:)(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v45 = a3;
  v44 = a2;
  v49[1] = *MEMORY[0x1E69E9840];
  v9 = sub_1ABF21EB4();
  v46 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = (*(a5 + 24))(a4, a5, v10);
  (*(a5 + 32))(a4, a5);
  v47 = v13;
  v43 = v5;
  v49[0] = a1;
  v14 = v48;
  v15 = sub_1ABF21B14();
  v48 = v14;
  if (v14)
  {

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v17 = sub_1ABF237F4();
    sub_1ABA7AA24(v17, qword_1ED871B40);
    v18 = v48;
    v19 = v48;
    v20 = sub_1ABF237D4();
    v21 = sub_1ABF24664();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v18;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_1ABA78000, v20, v21, "Failed to encode Feedback: %@", v22, 0xCu);
      sub_1ABB24B18(v23);
      MEMORY[0x1AC5AB8B0](v23, -1, -1);
      MEMORY[0x1AC5AB8B0](v22, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v26 = v12;
    v40 = v9;
    v41 = v15;
    v38 = *(v43 + OBJC_IVAR___GDFeedbackServiceInner_server);
    v43 = v16;
    v39 = sub_1ABF21DB4();
    v42 = sub_1ABF23BD4();

    if (v47)
    {
      v27 = sub_1ABF23BD4();
    }

    else
    {
      v27 = 0;
    }

    v28 = v46;
    if (v45)
    {
      v29 = 0;
    }

    else
    {
      v29 = v44;
    }

    sub_1ABF21E74();
    v30 = sub_1ABF21E34();
    (*(v28 + 8))(v26, v40);
    v31 = (*(a5 + 40))(a4, a5);
    v49[0] = 0;
    v32 = v39;
    v33 = v42;
    v34 = [v38 logWithFeedbackData:v39 type:v42 variant:v27 eventId:v29 withTimestamp:v30 shouldProcessImmediately:v31 & 1 error:v49];

    if (v34)
    {
      v35 = v49[0];
    }

    else
    {
      v36 = v49[0];
      sub_1ABF21BE4();

      swift_willThrow();
    }

    sub_1ABA96210(v41, v43);
  }
}

id FeedbackService.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR___GDFeedbackServiceInner_encoder;
  sub_1ABF21B34();
  swift_allocObject();
  v4 = sub_1ABF21B24();
  sub_1ABF21B04();
  *&v1[v3] = v4;
  v5 = [objc_allocWithZone(GDXPCFeedbackService) init];
  *&v1[OBJC_IVAR___GDFeedbackServiceInner_server] = v5;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

void *FeedbackService.objcRecord(feedback:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  result = sub_1ABC433D8(a1, ObjectType, &protocol descriptor for FeedbackProtocol);
  if (result)
  {
    v5 = result;
    v6 = v4;
    v7 = swift_getObjectType();
    swift_unknownObjectRetain();
    FeedbackService.record<A>(feedback:for:)(v5, 0, 0, v7, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

void *FeedbackService.objcRecord(feedback:for:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  result = sub_1ABC433D8(a1, ObjectType, &protocol descriptor for FeedbackProtocol);
  if (result)
  {
    v7 = result;
    v8 = v6;
    v9 = swift_getObjectType();
    swift_unknownObjectRetain();
    FeedbackService.record<A>(feedback:for:)(v7, a2, 0, v9, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

id FeedbackService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1ABC4334C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedbackServiceNoOpServer();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1ABC433A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedbackServiceNoOpServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1ABC433D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void FileLoader.data(forFile:withExtension:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v54 = a3;
  v55 = a4;
  v52 = a1;
  v53 = a2;
  v50 = sub_1ABF217B4();
  sub_1ABA7BB64();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1ABF21CF4();
  MEMORY[0x1EEE9AC00](v60);
  v51 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - v16;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v59 = &v42 - v21;
  v56 = v4;
  v22 = *(v4 + 16);
  v45 = *(v22 + 16);
  if (v45)
  {
    v23 = 0;
    v47 = v22 + 32;
    v48 = OBJC_IVAR____TtC20IntelligencePlatform10FileLoader_baseUrl;
    v46 = (v19 + 16);
    v58 = (v19 + 8);
    v43 = (v8 + 8);
    v44 = (v19 + 32);
    v42 = v22;
    while (2)
    {
      if (v23 >= *(v22 + 16))
      {
LABEL_15:
        __break(1u);
      }

      else
      {
        v24 = v14;
        v57 = v6;
        v25 = *(v47 + 8 * v23++);
        (*v46)(v17, v56 + v48, v60, v20);
        v26 = *(v25 + 16);

        v27 = 0;
        v28 = v25 + 40;
        while (v26 != v27)
        {
          if (v27 >= *(v25 + 16))
          {
            __break(1u);
            goto LABEL_15;
          }

          ++v27;

          sub_1ABF21C64();

          v28 += 16;
        }

        v29 = v60;
        (*v44)(v59, v17, v60);
        v30 = v51;
        sub_1ABF21C84();
        v14 = v24;
        sub_1ABF21C94();
        v31 = *v58;
        (*v58)(v30, v29);
        v32 = v57;
        sub_1ABF21D34();
        if (v32)
        {
          v33 = v32;
          v34 = v49;
          sub_1ABF217A4();
          sub_1ABC43B3C();
          v35 = v50;
          v36 = sub_1ABF21AD4();

          (*v43)(v34, v35);
          if (v36)
          {
            v6 = 0;

            v37 = sub_1ABA7F34C();
            v31(v37);
            (v31)(v59, v32);
            v22 = v42;
            if (v23 != v45)
            {
              continue;
            }
          }

          else
          {
            sub_1ABC43B94();
            swift_allocError();
            *v40 = v32;
            swift_willThrow();
            v41 = sub_1ABA7F34C();
            v31(v41);
            (v31)(v59, v32);
          }
        }

        else
        {
          v38 = v24;
          v39 = v60;
          (v31)(v38, v60);
          (v31)(v59, v39);
        }
      }

      break;
    }
  }
}

unint64_t sub_1ABC438FC()
{
  result = qword_1EB4D5CE8;
  if (!qword_1EB4D5CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5CE8);
  }

  return result;
}

uint64_t FileLoader.__allocating_init(searchPaths:baseUrl:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = OBJC_IVAR____TtC20IntelligencePlatform10FileLoader_baseUrl;
  sub_1ABF21CF4();
  sub_1ABA7BBB0();
  (*(v6 + 32))(v4 + v5, a2);
  return v4;
}

uint64_t FileLoader.init(searchPaths:baseUrl:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = OBJC_IVAR____TtC20IntelligencePlatform10FileLoader_baseUrl;
  sub_1ABF21CF4();
  sub_1ABA7BBB0();
  (*(v5 + 32))(v2 + v4, a2);
  return v2;
}

uint64_t FileLoader.deinit()
{

  v1 = OBJC_IVAR____TtC20IntelligencePlatform10FileLoader_baseUrl;
  sub_1ABF21CF4();
  sub_1ABA7BBB0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t FileLoader.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC20IntelligencePlatform10FileLoader_baseUrl;
  sub_1ABF21CF4();
  sub_1ABA7BBB0();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

unint64_t sub_1ABC43B3C()
{
  result = qword_1EB4D5CF0;
  if (!qword_1EB4D5CF0)
  {
    sub_1ABF217B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5CF0);
  }

  return result;
}

unint64_t sub_1ABC43B94()
{
  result = qword_1EB4D5CF8;
  if (!qword_1EB4D5CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5CF8);
  }

  return result;
}

uint64_t sub_1ABC43BF0(uint64_t a1)
{
  result = sub_1ABF21CF4();
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

_BYTE *storeEnumTagSinglePayload for FileLoaderInternalError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABC43D7C()
{
  result = qword_1EB4D5D00[0];
  if (!qword_1EB4D5D00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4D5D00);
  }

  return result;
}

unint64_t sub_1ABC43DD0(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t static FileUtils.loadJson<A>(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = sub_1ABF21CF4();
  sub_1ABA7BB64();
  v48 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7BC58();
  v49 = v9 - v8;
  v52 = a2;
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7BC58();
  v14 = v13 - v12;
  v15 = sub_1ABF23C54();
  sub_1ABA7BB64();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7BC58();
  v21 = v20 - v19;
  v22 = a1;
  sub_1ABF23BC4();
  sub_1ABF23C44();
  v23 = sub_1ABF23C14();
  v25 = v24;

  (*(v17 + 8))(v21, v15);
  if (v25 >> 60 == 15)
  {
    sub_1ABF24AB4();

    v53[0] = 0xD00000000000001ELL;
    v53[1] = 0x80000001ABF89530;
    sub_1ABAE27F8();
    v26 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v26);

    sub_1ABBAA394();
    v27 = swift_allocError();
    *v28 = 0xD00000000000001ELL;
    v28[1] = 0x80000001ABF89530;
    swift_willThrow();
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v29 = sub_1ABF237F4();
    sub_1ABA7AA24(v29, qword_1ED871B40);
    (*(v48 + 16))(v49, v22, v51);
    v30 = v27;
    v31 = sub_1ABF237D4();
    v32 = sub_1ABF24674();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v53[0] = v35;
      *v33 = 136315394;
      sub_1ABAE27F8();
      v36 = sub_1ABF24FF4();
      v38 = v37;
      (*(v48 + 8))(v49, v51);
      v39 = sub_1ABADD6D8(v36, v38, v53);

      *(v33 + 4) = v39;
      *(v33 + 12) = 2112;
      v40 = v27;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v41;
      *v34 = v41;
      _os_log_impl(&dword_1ABA78000, v31, v32, "Failed to load data from %s with error %@", v33, 0x16u);
      sub_1ABB24B18(v34);
      MEMORY[0x1AC5AB8B0](v34, -1, -1);
      sub_1ABA84B54(v35);
      MEMORY[0x1AC5AB8B0](v35, -1, -1);
      MEMORY[0x1AC5AB8B0](v33, -1, -1);
    }

    else
    {

      (*(v48 + 8))(v49, v51);
    }

    v42 = 1;
    v43 = v52;
    v44 = a4;
  }

  else
  {
    v46 = objc_autoreleasePoolPush();
    v43 = v52;
    sub_1ABC44328(v23, v25, v52, a3, v53);
    objc_autoreleasePoolPop(v46);
    sub_1ABAC9310(v23, v25);
    v44 = a4;
    (*(v10 + 32))(a4, v14, v52);
    v42 = 0;
  }

  return sub_1ABA7B9B4(v44, v42, 1, v43);
}

uint64_t sub_1ABC44328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_1ABF217F4();
  swift_allocObject();
  sub_1ABF217E4();
  sub_1ABF217D4();

  if (v5)
  {
    *a5 = v5;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FileUtils(_BYTE *result, int a2, int a3)
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

uint64_t FlattenedSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 16);
  swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, v2, v8);
  sub_1ABC445A4(v10, *(v2 + *(a1 + 52)), *(v2 + *(a1 + 52) + 8), v6, *(a1 + 24), v5, *(a1 + 40), a2);
}

uint64_t sub_1ABC445A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v20[0] = a4;
  v20[1] = a5;
  v20[2] = a6;
  v20[3] = a7;
  v10 = type metadata accessor for FlattenedSequence.FlattenedSequenceIterator(0, v20);
  swift_getAssociatedTypeWitness();
  sub_1ABA7ED8C();
  sub_1ABA7B9B4(v11, v12, v13, v14);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(a8, a1, AssociatedTypeWitness);
  v17 = (a8 + *(v10 + 52));
  *v17 = a2;
  v17[1] = a3;
  return result;
}

uint64_t FlattenedSequence.FlattenedSequenceIterator.next()@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = a1[3];
  MEMORY[0x1EEE9AC00](a1);
  v73 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v72 = sub_1ABF247E4();
  sub_1ABA7BB64();
  v9 = v8;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v59 - v11;
  v12 = a1[4];
  v85 = a1;
  v76 = a1[2];
  v77 = v12;
  v13 = swift_getAssociatedTypeWitness();
  v61 = sub_1ABF247E4();
  sub_1ABA7BB64();
  v60 = v14;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v59 - v16;
  v18 = *(v13 - 8);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v19);
  v70 = &v59 - v20;
  v81 = v6;
  v82 = v3;
  v21 = AssociatedTypeWitness;
  v22 = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  v24 = v23;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v25);
  v65 = &v59 - v26;
  v27 = sub_1ABF247E4();
  sub_1ABA7BB64();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v59 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v80 = &v59 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v83 = &v59 - v36;
  sub_1ABA7ED8C();
  sub_1ABA7B9B4(v37, v38, v39, v22);
  v86 = (v29 + 8);
  v62 = v29;
  v78 = *(v29 + 16);
  v79 = v29 + 16;
  v64 = (v24 + 32);
  v67 = (v18 + 8);
  v68 = (v18 + 32);
  v66 = (v9 + 40);
  v74 = v27;
  v75 = v22;
  for (i = v32; ; v32 = i)
  {
    while (1)
    {
      v40 = v80;
      v78(v80, v83, v27);
      v41 = sub_1ABA7E1E0(v40, 1, v22);
      v42 = *v86;
      (*v86)(v40, v27);
      if (v41 != 1)
      {
        return (*(v62 + 32))(v63, v83, v27);
      }

      v43 = *(v85 + 14);
      if (sub_1ABA7E1E0(v87 + v43, 1, v21))
      {
        sub_1ABA7ED8C();
        sub_1ABA7B9B4(v44, v45, v46, v22);
        break;
      }

      swift_getAssociatedConformanceWitness();
      sub_1ABF24864();
      if (sub_1ABA7E1E0(v32, 1, v22) == 1)
      {
        break;
      }

      v52 = v83;
      v42(v83, v27);
      v53 = *v64;
      v54 = v65;
      (*v64)(v65, v32, v22);
      v53(v52, v54, v22);
      sub_1ABA7B9B4(v52, 0, 1, v22);
    }

    v84 = v43;
    v47 = v21;
    v48 = v87;
    v49 = v85;
    v42(v32, v27);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_1ABF24864();
    if (sub_1ABA7E1E0(v17, 1, v13) == 1)
    {
      break;
    }

    v50 = v70;
    (*v68)(v70, v17, v13);
    (*(v48 + *(v49 + 13)))(v50);
    v51 = v71;
    sub_1ABF23F04();
    (*v67)(v50, v13);
    v21 = v47;
    sub_1ABA7B9B4(v51, 0, 1, v47);
    (*v66)(v48 + v84, v51, v72);
    v27 = v74;
    v22 = v75;
  }

  v42(v83, v74);
  (*(v60 + 8))(v17, v61);
  sub_1ABA7ED8C();
  return sub_1ABA7B9B4(v56, v57, v58, v75);
}

uint64_t sub_1ABC44DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  FlattenedSequence.makeIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_1ABC44E30(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = sub_1ABC45270();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ABC44ECC(_DWORD *a1, unsigned int a2)
{
  result = swift_getAssociatedTypeWitness();
  v5 = *(*(result - 8) + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(*(result - 8) + 84);
  }

  v7 = *(*(result - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v6 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v15 = *((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }

    else
    {

      return sub_1ABA7E1E0(a1, v5, result);
    }
  }

  else
  {
    v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v10 = 2;
    }

    else
    {
      v10 = a2 - v6 + 1;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(a1 + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(a1 + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(a1 + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = v13 - 1;
        if (v9)
        {
          v14 = 0;
          LODWORD(v9) = *a1;
        }

        result = v6 + (v9 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1ABC45060(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *(a1 + v10) = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_1ABA7B9B4(a1, a2, v7, AssociatedTypeWitness);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, v10);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        *(a1 + v10) = v15;
        break;
      case 2:
        *(a1 + v10) = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *(a1 + v10) = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1ABC45270()
{
  result = qword_1EB4D5D88[0];
  if (!qword_1EB4D5D88[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_1EB4D5D88);
  }

  return result;
}

unint64_t sub_1ABC452B8(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = sub_1ABC45270();
    if (v3 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      result = sub_1ABF247E4();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1ABC45390(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v6 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v5 + 64);
  v14 = *(v8 + 80);
  v15 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v15;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v12)
  {
    goto LABEL_30;
  }

  v16 = v15 + ((v14 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v14);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v20 < 2)
    {
LABEL_30:
      if (v6 == v12)
      {

        return sub_1ABA7E1E0(a1, v6, AssociatedTypeWitness);
      }

      else
      {
        v22 = ((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v11 & 0x80000000) != 0)
        {
          v24 = sub_1ABA7E1E0((v22 + v14 + 16) & ~v14, v9, v7);
          if (v24 >= 2)
          {
            return v24 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v23 = *v22;
          if (v23 >= 0xFFFFFFFF)
          {
            LODWORD(v23) = -1;
          }

          return (v23 + 1);
        }
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_30;
  }

LABEL_22:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 > 3)
    {
      LODWORD(v16) = 4;
    }

    switch(v16)
    {
      case 2:
        LODWORD(v16) = *a1;
        break;
      case 3:
        LODWORD(v16) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v16) = *a1;
        break;
      default:
        LODWORD(v16) = *a1;
        break;
    }
  }

  return v12 + (v16 | v21) + 1;
}

void sub_1ABC4565C(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = swift_getAssociatedTypeWitness();
  v10 = 0;
  v11 = *(v9 - 8);
  v12 = *(v11 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v8 > v13)
  {
    v13 = v8;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v7 + 64);
  v16 = *(v11 + 80);
  v17 = (v16 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v16;
  v18 = *(*(v9 - 8) + 64);
  if (!v12)
  {
    ++v18;
  }

  v19 = v17 + v18;
  v20 = 8 * (v17 + v18);
  if (a3 > v14)
  {
    if (v19 <= 3)
    {
      v21 = ((a3 - v14 + ~(-1 << v20)) >> v20) + 1;
      if (HIWORD(v21))
      {
        v10 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v10 = v22;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  if (v14 >= a2)
  {
    switch(v10)
    {
      case 1:
        a1[v19] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        return;
      case 2:
        *&a1[v19] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        return;
      case 3:
LABEL_53:
        __break(1u);
        return;
      case 4:
        *&a1[v19] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (!a2)
        {
          return;
        }

LABEL_33:
        if (v8 == v14)
        {
          v26 = a1;
          v27 = a2;
          v12 = v8;
          v9 = AssociatedTypeWitness;
        }

        else
        {
          v28 = (&a1[v15 + 7] & 0xFFFFFFFFFFFFFFF8);
          if ((v13 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v29 = a2 & 0x7FFFFFFF;
              v28[1] = 0;
            }

            else
            {
              v29 = (a2 - 1);
            }

            *v28 = v29;
            return;
          }

          v26 = ((v28 + v16 + 16) & ~v16);
          v27 = (a2 + 1);
        }

        sub_1ABA7B9B4(v26, v27, v12, v9);
        break;
    }
  }

  else
  {
    v23 = ~v14 + a2;
    if (v19 < 4)
    {
      v24 = (v23 >> v20) + 1;
      if (v19)
      {
        v25 = v23 & ~(-1 << v20);
        bzero(a1, v19);
        if (v19 == 3)
        {
          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        else if (v19 == 2)
        {
          *a1 = v25;
        }

        else
        {
          *a1 = v23;
        }
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v23;
      v24 = 1;
    }

    switch(v10)
    {
      case 1:
        a1[v19] = v24;
        break;
      case 2:
        *&a1[v19] = v24;
        break;
      case 3:
        goto LABEL_53;
      case 4:
        *&a1[v19] = v24;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1ABC459B8()
{
  *&__src[0] = 0x68636165726F66;
  *(&__src[0] + 1) = 0xE700000000000000;
  *&__src[1] = &unk_1F208E578;
  *(&__src[1] + 1) = 0x646E617265706FLL;
  *&__src[2] = 0xE700000000000000;
  BYTE8(__src[2]) = 0;
  *&__src[3] = 0xD000000000000092;
  *(&__src[3] + 1) = 0x80000001ABF8CEA0;
  *&__src[4] = 0;
  *(&__src[4] + 1) = 0xE000000000000000;
  memset(&__src[5], 0, 32);
  memset(v4, 0, sizeof(v4));
  memcpy((v0 + 16), __src, 0x70uLL);

  sub_1ABB51320(__src, &v2);
  sub_1ABA925A4(v4, &qword_1EB4D1B10, &unk_1ABF33FA0);

  sub_1ABB5137C(__src);
  return v0;
}

uint64_t sub_1ABC45AA4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1ABF24D84();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1ABC45AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1ABE719F4();
  if (v9)
  {
    v10 = v9;
    swift_beginAccess();
    v11 = *(v10 + 24);
    v4 = v11 != 0;
    if (v11)
    {
      v18 = *(v10 + 24);

      sub_1ABE18604(a1, &v18, 1, a2, a3, a4);
    }

    else
    {
    }
  }

  else
  {
    sub_1ABAF2860();
    swift_allocError();
    sub_1ABA8F41C(v12, 51, v14, v15, v16, v17);
  }

  return v4;
}

uint64_t sub_1ABC45C24(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    type metadata accessor for ResultGraph();
    v1 = swift_allocObject();
    v2 = MEMORY[0x1E69E7CC0];
    *(v1 + 16) = sub_1ABF239C4();
    *(v1 + 24) = v2;
  }
}

uint64_t sub_1ABC45CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v102 = a7;
  v8 = v7;
  v99 = a6;
  Context = type metadata accessor for QueryContext(0);
  MEMORY[0x1EEE9AC00](Context);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v78 - v17;
  v93 = a2;
  v94 = a3;
  v95 = a4;
  v96 = a5;
  v19 = v101;
  v20 = v99;
  v98 = a1;
  v99 = v8;
  result = sub_1ABC4645C(a1, a2, a3, a4, a5, v20, v102);
  if (!v19)
  {
    v97 = result;
    v88 = v15;
    v92 = v18;
    v22 = 0;
    v23 = sub_1ABC4686C();
    v24 = sub_1ABE719F4();
    if (v24)
    {
      v25 = v24;
      swift_beginAccess();
      v91 = *(v25 + 24);
      if (v91)
      {
        v26 = *(v98 + 8);
        if (v26)
        {
          HIDWORD(v81) = v23;
          v80 = v25;

          v79 = v26;
          v28 = sub_1ABE48AE8(v27);
          v85 = type metadata accessor for ResultGraph();
          v29 = swift_allocObject();
          v30 = MEMORY[0x1E69E7CC0];
          result = sub_1ABF239C4();
          v31 = 0;
          v86 = v29;
          v87 = v28;
          v84 = v28 + 32;
          *(v29 + 16) = result;
          *(v29 + 24) = v30;
          v82 = v102 + 1;
          v32 = __OFADD__(v102, 1);
          v83 = v32;
          v33 = 0.0;
          v34 = v92;
          while (1)
          {
            v35 = *(v87 + 16);
            if (v31 == v35)
            {
              break;
            }

            if (v31 >= v35)
            {
              goto LABEL_46;
            }

            v96 = v22;
            v89 = v31;
            v36 = v84 + 40 * v31;
            LODWORD(v102) = *(v36 + 32);
            v37 = *(v36 + 24);
            v39 = *(v36 + 8);
            v38 = *(v36 + 16);
            v40 = *v36;

            sub_1ABE3CF94(v34);
            v41 = swift_allocObject();
            v42 = MEMORY[0x1E69E7CC0];
            *(v41 + 16) = sub_1ABF239C4();
            *(v41 + 24) = v42;

            *(v34 + 8) = v41;
            __src[0] = v40;
            __src[1] = v39;
            __src[2] = v38;
            __src[3] = v37;
            LOBYTE(__src[4]) = v102;
            sub_1ABE48C84(__src);

            v43 = sub_1ABE71D94();
            v117 = v43;
            result = sub_1ABE71DAC();
            if ((result & 1) == 0)
            {
              *(v97 + 40) = v43;
            }

            v44 = v96;
            if (v83)
            {
              goto LABEL_47;
            }

            v45 = v92;
            v46 = v93;
            v47 = v82;
            v49 = v94;
            v48 = v95;
            sub_1ABE18AE8(v92, &v117, v97, v82, 1, v93, v94, v95);
            if (v44)
            {

              return sub_1ABB529C4(v45);
            }

            v50 = sub_1ABE177BC(__src, v45, &v117, v91, v47, v46, v49, v48);
            v96 = 0;
            memcpy(v115, __src, 0x69uLL);
            v51 = sub_1ABA925A4(v115, &qword_1EB4D3430, &unk_1ABF6B740);
            v33 = v33 + 1.0;
            result = sub_1ABE48AE8(v51);
            v52 = result;
            v102 = *(result + 16);
            v90 = v50;
            if (v102)
            {
              v53 = 0;
              v101 = result + 32;
              v54 = Context;
              v99 = result;
              while (v53 < *(v52 + 16))
              {
                v55 = *(v101 + 40 * v53 + 16);
                swift_bridgeObjectRetain_n();
                swift_bridgeObjectRetain_n();
                sub_1ABE7A35C(v55);
                v57 = v56;

                swift_bridgeObjectRelease_n();
                v58 = *(v57 + 16);
                if (v58)
                {
                  v59 = (v57 + 32);
                  for (i = v58 - 1; ; --i)
                  {
                    memcpy(v108, v59, sizeof(v108));
                    v61 = *(v59 + 40);
                    v104 = *(v59 + 24);
                    v105 = v61;
                    v106 = *(v59 + 56);
                    v107 = *(v59 + 72);
                    v109 = *v59;
                    v110 = 1.0 / v33;
                    v114 = v107;
                    v113 = v106;
                    v112 = v61;
                    v111 = v104;
                    sub_1ABB242A4(v108, &v103);
                    sub_1ABB24250(&v109);
                    v33 = v33 + 1.0;
                    if (!i)
                    {
                      break;
                    }

                    v59 = (v59 + 88);
                  }

                  v52 = v99;
                  v54 = Context;
                }

                else
                {
                }

                ++v53;

                if (v53 == v102)
                {

                  v50 = v90;
                  goto LABEL_27;
                }
              }

              __break(1u);
LABEL_46:
              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
              return result;
            }

            v54 = Context;
LABEL_27:
            v62 = v89 + 1;
            if (v89)
            {
              if ((v81 & 0x100000000) != 0)
              {
                sub_1ABE47F28(v50);
              }

              else
              {
                sub_1ABE483B8(v50);
              }

              v102 = v62;
              v63 = v92;
              v64 = v88;
              result = sub_1ABC46A54(v92, v88);
              v65 = *(v54 + 48);
              v66 = v64 + v65;
              v67 = *(v64 + v65);
              v68 = v98;
              v69 = (v98 + v65);
              v70 = *(v98 + v65);
              v71 = __OFADD__(v70, v67);
              v72 = v70 + v67;
              if (v71)
              {
                goto LABEL_48;
              }

              v73 = *(v66 + 8);
              v74 = *(v66 + 16);
              *v69 = v72;

              sub_1ABD7DA50(v73);
              sub_1ABD7DFB4(v74);

              v75 = *(v64 + 16);
              if (v75 <= *(v68 + 16))
              {
                v75 = *(v68 + 16);
              }

              *(v68 + 16) = v75;
              sub_1ABB529C4(v64);
              result = sub_1ABB529C4(v63);
              v31 = v102;
              v22 = v96;
              v34 = v63;
            }

            else
            {
              sub_1ABE48DC0(v50);

              v34 = v92;
              result = sub_1ABB529C4(v92);
              v31 = v62;
              v22 = v96;
            }
          }

          v77 = v97;
          *(v98 + 8) = v86;
          if (!sub_1ABE71DAC())
          {
            *(v77 + 40) = 0;
          }
        }

        else
        {
        }
      }
    }

    sub_1ABAF2860();
    swift_allocError();
    sub_1ABA8F41C(v76, 40, v78, v79, v80, v81);
  }

  return result;
}

uint64_t sub_1ABC4645C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_1ABE719F4();
  if (!v14)
  {
    sub_1ABAF2860();
    swift_allocError();
    *v17 = 0xD000000000000033;
    *(v17 + 8) = 0x80000001ABF8CFD0;
    *(v17 + 16) = 4;
    swift_willThrow();
    return a1;
  }

  v15 = v14;
  v33 = a1;
  swift_beginAccess();
  v38 = v15;
  v16 = *(v15 + 24);
  if (v16)
  {
    a1 = v16;
  }

  else
  {
    type metadata accessor for KnosisQueryParam();
    v18 = sub_1ABF239C4();
    type metadata accessor for QueryNode();
    swift_allocObject();
    a1 = sub_1ABE73A74(0, 0xE000000000000000, v18);
  }

  v37 = a1;
  v19 = sub_1ABE71DAC();
  swift_retain_n();

  if (v19 || (result = sub_1ABE71D70(), (result & 1) != 0))
  {
    v21 = v38;
    swift_beginAccess();
    if (*(*(v38 + 16) + 16))
    {
      type metadata accessor for ResultGraph();
      v22 = swift_allocObject();
      v23 = MEMORY[0x1E69E7CC0];
      *(v22 + 16) = sub_1ABF239C4();
      *(v22 + 24) = v23;
      v24 = *(*(v21 + 16) + 16);
      if (v24)
      {
        v25 = v24 - 1;
        v26 = ( + 40);
        v27 = 1.0;
        while (1)
        {
          v28 = *v26;
          __src[0] = *(v26 - 1);
          v29 = __src[0];
          __src[1] = v28;
          swift_bridgeObjectRetain_n();
          MEMORY[0x1AC5A9410](126, 0xE100000000000000);

          MEMORY[0x1AC5A9410](126, 0xE100000000000000);

          *&__src[2] = 1.0 / v27;
          __src[3] = v29;
          __src[4] = v28;
          __src[5] = 0;
          __src[6] = 0;
          *&__src[7] = xmmword_1ABF4EC00;
          __src[9] = 0xE000000000000000;
          __src[10] = MEMORY[0x1E69E7CC0];
          v34 = 0;
          sub_1ABE48E58(__src, &v34);
          memcpy(__dst, __src, 0x58uLL);
          sub_1ABB24250(__dst);
          if (!v25)
          {
            break;
          }

          v27 = v27 + 1.0;
          --v25;
          v26 += 2;
        }
      }

      *(v33 + 8) = v22;
    }

    goto LABEL_15;
  }

  if (!__OFADD__(a7, 1))
  {
    v31 = sub_1ABE177BC(__dst, v33, &v37, a5, a7 + 1, a2, a3, a4);
    if (!v7)
    {
      v32 = v31;
      memcpy(__src, __dst, 0x69uLL);
      sub_1ABA925A4(__src, &qword_1EB4D3430, &unk_1ABF6B740);

      *(v33 + 8) = v32;
      a1 = v37;
LABEL_15:
      if (sub_1ABE71DAC())
      {
      }

      else
      {
        while (1)
        {
          v30 = *(a1 + 40);
          if (!v30)
          {
            break;
          }

          a1 = v30;
        }

        *(a1 + 80) = 1;
      }

      return a1;
    }

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABC4686C()
{
  v0 = sub_1ABE719F4();
  if (!v0)
  {
    sub_1ABAF2860();
    swift_allocError();
    *v5 = 0xD000000000000025;
    *(v5 + 8) = 0x80000001ABF8CF70;
    *(v5 + 16) = 4;
    return swift_willThrow();
  }

  v1 = v0;
  swift_beginAccess();
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = (v2 + 16);
    v4 = (v2 + 24);
  }

  else
  {
    swift_beginAccess();
    v7 = *(v1 + 16);
    if (!v7[2])
    {
      v11 = 0x80000001ABF8CF70;
      sub_1ABAF2860();
      swift_allocError();
      v13 = 0xD000000000000025;
      goto LABEL_11;
    }

    v3 = v7 + 4;
    v4 = v7 + 5;
  }

  v8 = *v3;
  v9 = *v4;

  v10 = sub_1ABC45AA4(v8, v9);
  if (v10 != 2)
  {
    v14 = v10;

    return v14 & 1;
  }

  v11 = 0x80000001ABF8CFA0;
  sub_1ABAF2860();
  swift_allocError();
  v13 = 0xD000000000000027;
LABEL_11:
  *v12 = v13;
  *(v12 + 8) = v11;
  *(v12 + 16) = 4;
  swift_willThrow();
}

uint64_t sub_1ABC46A54(uint64_t a1, uint64_t a2)
{
  Context = type metadata accessor for QueryContext(0);
  (*(*(Context - 8) + 16))(a2, a1, Context);
  return a2;
}

uint64_t UnicodeWrapperTokenizer.__allocating_init(db:arguments:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  UnicodeWrapperTokenizer.init(db:arguments:)(a1);
  return v3;
}

uint64_t *UnicodeWrapperTokenizer.init(db:arguments:)(uint64_t a1)
{
  v3 = sub_1ABF229A4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1ABF22994();
  v7 = sub_1ABF22E14();
  if (v2)
  {

    (*(v4 + 8))(v6, v3);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v7;
    v10 = v8;
    (*(v4 + 8))(v6, v3);

    *(v1 + 16) = v9;
    *(v1 + 24) = v10;
  }

  return v1;
}

uint64_t UnicodeWrapperTokenizer.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABC46E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = sub_1ABC46EFC(&qword_1ED86FEB8, &protocol conformance descriptor for UnicodeWrapperTokenizer);

  return MEMORY[0x1EEE09A28](a1, a2, a3, a4, a5, v11, v12);
}

uint64_t sub_1ABC46EFC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UnicodeWrapperTokenizer();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t CustomFutureLifeEventContext.__allocating_init(context:)(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = type metadata accessor for ViewService();
  v9 = static ViewService.clientService.getter(v8);
  v10 = CustomFutureLifeEventContext.__allocating_init(context:viewService:)(v7, v9);
  (*(v4 + 8))(a1, v3);
  return v10;
}

uint64_t CustomFutureLifeEventContext.__allocating_init(context:viewService:)(char *a1, void *a2)
{
  sub_1ABA7D028();
  v4 = swift_allocObject();
  CustomFutureLifeEventContext.init(context:viewService:)(a1, a2);
  return v4;
}

void *CustomFutureLifeEventContext.init(context:viewService:)(char *a1, void *a2)
{
  v4 = v2;
  v7 = *v4;
  v8 = *(*v4 + 80);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = v20 - v11;
  (*(v9 + 16))(v20 - v11, a1, v8, v10);
  v13 = type metadata accessor for FutureLifeEventView();
  sub_1ABA7D028();
  swift_allocObject();
  v14 = FutureLifeEventView.init(viewService:)(a2);
  if (v3)
  {
    v15 = *(v9 + 8);
    v15(a1, v8);
    v15(v12, v8);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = v14;
    v17 = sub_1ABC47B14(&qword_1EB4D5E10, type metadata accessor for FutureLifeEventView, &unk_1ABF4F308);
    v18 = *(v7 + 88);
    v20[0] = v13;
    v20[1] = v8;
    v20[2] = v17;
    v20[3] = v18;
    type metadata accessor for EventBaseContext(0, v20);
    (*(v9 + 8))(a1, v8);
    v20[0] = v16;
    v4[2] = sub_1ABC26464(v12, v20);
  }

  return v4;
}

uint64_t CustomFutureLifeEventContext.__allocating_init<>()()
{
  v0 = type metadata accessor for ViewService();
  v1 = static ViewService.clientService.getter(v0);
  sub_1ABA7D028();
  v2 = swift_allocObject();
  CustomFutureLifeEventContext.init<>(viewService:)(v1);
  return v2;
}

uint64_t CustomFutureLifeEventContext.__allocating_init<>(viewService:)(void *a1)
{
  sub_1ABA7D028();
  v2 = swift_allocObject();
  CustomFutureLifeEventContext.init<>(viewService:)(a1);
  return v2;
}

uint64_t *CustomFutureLifeEventContext.init<>(viewService:)(void *a1)
{
  v3 = v1;
  type metadata accessor for FutureLifeEventView();
  sub_1ABA7D028();
  swift_allocObject();
  v5 = a1;
  v6 = FutureLifeEventView.init(viewService:)(v5);
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v7 = v6;
    ViewService.subgraphView(name:tableName:batchSize:)(0xD000000000000017, 0x80000001ABF8D090, 0xD000000000000018, 0x80000001ABF8D0B0, 10);
    sub_1ABAD219C(&qword_1EB4D1B40, &qword_1ABF34150);
    swift_allocObject();
    v9 = sub_1ABAE6998();

    sub_1ABAD219C(&qword_1EB4D5E18, &qword_1ABF4ECF8);
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = v9;
    *(v3 + 16) = v10;
  }

  return v3;
}

uint64_t CustomFutureLifeEventContext.__deallocating_deinit()
{
  CustomFutureLifeEventContext.deinit();
  sub_1ABA7D028();

  return swift_deallocClassInstance();
}

void CustomFutureLifeEventContext.enumerateFutureActivityEvents<>(order:using:)()
{
  type metadata accessor for CustomGraphActivityEvent(0);
  sub_1ABA8F440();
  sub_1ABC47B14(v0, v1, &protocol conformance descriptor for CustomGraphActivityEvent);
  sub_1ABC26E40();
}

uint64_t sub_1ABC47638(uint64_t a1, BOOL *a2, uint64_t (*a3)(char *))
{
  v7 = sub_1ABAD219C(&qword_1EB4D5E20, &unk_1ABF643D0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - v8;
  sub_1ABC47DD4(a1, v12 - v8);
  swift_storeEnumTagMultiPayload();
  v10 = a3(v9);
  result = sub_1ABC47E38(v9);
  if (!v3)
  {
    *a2 = (v10 & 1) == 0;
  }

  return result;
}

uint64_t sub_1ABC477CC(uint64_t a1, BOOL *a2, uint64_t (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
  v11 = sub_1ABF252B4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v19 - v14;
  (*(*(a6 - 8) + 16))(v19 - v14, a1, a6, v13);
  swift_storeEnumTagMultiPayload();
  v16 = a3(v15);
  if (v6)
  {
    return (*(v12 + 8))(v15, v11);
  }

  v18 = v16;
  result = (*(v12 + 8))(v15, v11);
  *a2 = (v18 & 1) == 0;
  return result;
}

uint64_t sub_1ABC479E0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = type metadata accessor for CustomGraphActivityEvent(0);
  sub_1ABA8F440();
  v5 = sub_1ABC47B14(v3, v4, &protocol conformance descriptor for CustomGraphActivityEvent);
  return a1(v2, v2, v5);
}

id static CustomFutureLifeEventContext.subscribeToUpdateNotification(systemwideUniqueSubscriptionId:targetQueue:onReceiveUpdateNotification:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_allocWithZone(GDFutureLifeEventUpdateNotificationSubscription);

  v11 = a3;

  return sub_1ABC47BAC(a1, a2, v11, a4, a5);
}

uint64_t sub_1ABC47B14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1ABC47BAC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1ABF23BD4();

  v13[4] = a4;
  v13[5] = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1ABC3520C;
  v13[3] = &unk_1F20748A0;
  v10 = _Block_copy(v13);
  v11 = [v5 initWithSystemwideUniqueSubscriptionIdentifier:v9 targetQueue:a3 onReceiveUpdateNotificationBlock:v10];

  _Block_release(v10);

  return v11;
}

uint64_t sub_1ABC47CD8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1ABC47DD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomGraphActivityEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABC47E38(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D5E20, &unk_1ABF643D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FutureLifeEventEntry.startDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  sub_1ABF21EB4();
  sub_1ABA7BBB0();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t FutureLifeEventEntry.endDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  sub_1ABF21EB4();
  sub_1ABA7BBB0();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

void FutureLifeEventEntry.entityClass.getter(uint64_t a1@<X8>, uint64_t x0_0@<X0>)
{
  EntityClass.init(intValue:)(*(v3 + 7), &v14);
  v6 = v15;
  if (v15)
  {
    v7 = v18;
    v9 = v16;
    v8 = v17;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = v9;
    *(a1 + 24) = v8;
    *(a1 + 32) = v7;
  }

  else
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v10 = sub_1ABF237F4();
    sub_1ABA7AA24(v10, qword_1ED871B40);
    v11 = sub_1ABF237D4();
    v12 = sub_1ABF24674();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1ABA78000, v11, v12, "FutureLifeEventEntry: entityClass: id.untyped.entityClass is nil.", v13, 2u);
      MEMORY[0x1AC5AB8B0](v13, -1, -1);
    }

    static GraphObjectBase.entityClass.getter(*(x0_0 + 16), *(*(x0_0 + 24) + 8));
  }
}

void *FutureLifeEventEntry.cast<A>(as:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v21 = a4;
  v8 = sub_1ABF21EB4();
  sub_1ABA7BB64();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  v24 = *v4;
  type metadata accessor for TypedEntityIdentifier(0, *(a1 + 16), *(a1 + 24), v17);
  v22 = a3;
  v18 = v23;
  result = TypedEntityIdentifier.cast<A>(as:)(a2, a3, &v25);
  if (!v18)
  {
    v24 = v25;
    v20 = *(v10 + 16);
    v20(v16, v4 + *(a1 + 36), v8);
    v20(v13, v4 + *(a1 + 40), v8);
    return sub_1ABC4823C(&v24, v16, v13, a2, v22, v21);
  }

  return result;
}

uint64_t sub_1ABC4823C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = *a1;
  v9 = type metadata accessor for FutureLifeEventEntry(0, a4, a5, a4);
  v10 = *(v9 + 36);
  v11 = sub_1ABF21EB4();
  sub_1ABA7BBB0();
  v15 = *(v12 + 32);
  v15(&a6[v10], a2, v11);
  v13 = &a6[*(v9 + 40)];

  return (v15)(v13, a3, v11);
}

uint64_t sub_1ABC48308(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABC4835C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t static FutureLifeEventEntry.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v9 = *a2;
  v10 = v6;
  if (!static TypedEntityIdentifier.== infix(_:_:)(&v10, &v9))
  {
    return 0;
  }

  type metadata accessor for FutureLifeEventEntry(0, a3, a4, v7);
  if ((sub_1ABF21E54() & 1) == 0)
  {
    return 0;
  }

  return sub_1ABF21E54();
}

uint64_t FutureLifeEventEntry.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v21 = a2;
  v22 = v5;
  type metadata accessor for FutureLifeEventEntry.CodingKeys(255, v5, v6, a4);
  sub_1ABA7D874();
  swift_getWitnessTable();
  v7 = sub_1ABF24FC4();
  sub_1ABA7BB64();
  v9 = v8;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  sub_1ABA93E20(a1, a1[3]);
  v13 = v23;
  sub_1ABF252E4();
  v27 = *v13;
  v26[1] = 0;
  type metadata accessor for TypedEntityIdentifier(0, v22, v6, v14);
  swift_getWitnessTable();
  v15 = v24;
  sub_1ABF24F84();
  if (!v15)
  {
    v16 = v21;
    v17 = *(v21 + 36);
    v26[0] = 1;
    sub_1ABF21EB4();
    sub_1ABAE849C(&qword_1ED86B860, MEMORY[0x1E6969538]);
    sub_1ABA7C254(v13 + v17, v26);
    v18 = *(v16 + 40);
    v25 = 2;
    sub_1ABA7C254(v13 + v18, &v25);
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t FutureLifeEventEntry.init(from:)@<X0>(void *a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v42 = sub_1ABF21EB4();
  sub_1ABA7BB64();
  v39 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v35 - v11;
  type metadata accessor for FutureLifeEventEntry.CodingKeys(255, a2, a3, v12);
  sub_1ABA7D874();
  swift_getWitnessTable();
  v45 = sub_1ABF24EB4();
  sub_1ABA7BB64();
  v40 = v13;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  v43 = a2;
  v44 = a3;
  v18 = type metadata accessor for FutureLifeEventEntry(0, a2, a3, v17);
  sub_1ABA7BB64();
  v20 = v19;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v35 - v22;
  sub_1ABA93E20(a1, a1[3]);
  v46 = v16;
  v24 = v47;
  sub_1ABF252C4();
  if (v24)
  {
    return sub_1ABA84B54(a1);
  }

  v27 = v40;
  v26 = v41;
  v36 = v20;
  v28 = v23;
  v47 = v18;
  v29 = v42;
  type metadata accessor for TypedEntityIdentifier(0, v43, v44, v25);
  v50 = 0;
  swift_getWitnessTable();
  sub_1ABF24E64();
  *v28 = v51;
  v49 = 1;
  sub_1ABAE849C(&qword_1ED870CD0, MEMORY[0x1E6969558]);
  sub_1ABF24E64();
  v30 = *(v47 + 36);
  v43 = *(v39 + 32);
  v44 = v30;
  v43(&v28[v30], v26, v29);
  v48 = 2;
  v31 = v46;
  sub_1ABF24E64();
  (*(v27 + 8))(v31, v45);
  v32 = v47;
  v43(&v28[*(v47 + 40)], v38, v29);
  v33 = v36;
  (*(v36 + 16))(v37, v28, v32);
  sub_1ABA84B54(a1);
  return (*(v33 + 8))(v28, v32);
}

uint64_t sub_1ABC48B7C(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4D5EC8, &qword_1ABF4F190);
  sub_1ABA7BB64();
  v6 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12[-v8];
  v10 = *v1;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABC49620();
  sub_1ABF252E4();
  v13 = v10;
  v12[15] = 0;
  sub_1ABAE8BC8();
  sub_1ABF24F84();
  if (!v2)
  {
    v12[14] = 1;
    sub_1ABF24F54();
    v12[13] = 2;
    sub_1ABF24F54();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1ABC48D20()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  MEMORY[0x1AC5AA8D0](*v0);
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1AC5AA8D0](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  return MEMORY[0x1AC5AA8D0](*&v4);
}

uint64_t sub_1ABC48D84()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1ABF25234();
  MEMORY[0x1AC5AA8D0](*&v1);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1AC5AA8D0](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x1AC5AA8D0](*&v5);
  return sub_1ABF25294();
}

uint64_t sub_1ABC48E0C@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4D5EB8, &qword_1ABF4F188);
  sub_1ABA7BB64();
  v7 = v6;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17[-v9];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABC49620();
  sub_1ABF252C4();
  if (!v2)
  {
    v17[15] = 0;
    sub_1ABAE8B74();
    sub_1ABF24E64();
    v11 = v18;
    v17[14] = 1;
    sub_1ABF24E34();
    v14 = v13;
    v17[13] = 2;
    sub_1ABF24E34();
    v16 = v15;
    (*(v7 + 8))(v10, v5);
    *a2 = v11;
    *(a2 + 1) = v14;
    *(a2 + 2) = v16;
  }

  return sub_1ABA84B54(a1);
}

uint64_t sub_1ABC48FEC(uint64_t a1)
{
  v2 = sub_1ABC49620();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC49028(uint64_t a1)
{
  v2 = sub_1ABC49620();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABC4909C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABC494C4();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1ABC49124(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1ABF25234();
  MEMORY[0x1AC5AA8D0](*&v2);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x1AC5AA8D0](*&v5);
  if (v4 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v4;
  }

  MEMORY[0x1AC5AA8D0](*&v6);
  return sub_1ABF25294();
}

unint64_t sub_1ABC491E0()
{
  result = qword_1EB4D5E28;
  if (!qword_1EB4D5E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5E28);
  }

  return result;
}

uint64_t sub_1ABC49234(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABC49274()
{
  result = qword_1EB4D5E30[0];
  if (!qword_1EB4D5E30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4D5E30);
  }

  return result;
}

uint64_t sub_1ABC492C8(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_1ABC49348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TypedEntityIdentifier(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    result = sub_1ABF21EB4();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1ABC49428()
{
  result = qword_1EB4CEDA8;
  if (!qword_1EB4CEDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEDA8);
  }

  return result;
}

unint64_t sub_1ABC4947C(void *a1)
{
  a1[1] = sub_1ABAEFDE0();
  a1[2] = sub_1ABAEFD08();
  a1[3] = sub_1ABC494C4();
  a1[4] = sub_1ABC49518();
  result = sub_1ABC4956C();
  a1[5] = result;
  return result;
}

unint64_t sub_1ABC494C4()
{
  result = qword_1EB4CEDA0;
  if (!qword_1EB4CEDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEDA0);
  }

  return result;
}

unint64_t sub_1ABC49518()
{
  result = qword_1EB4CEDB8;
  if (!qword_1EB4CEDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEDB8);
  }

  return result;
}

unint64_t sub_1ABC4956C()
{
  result = qword_1EB4CEDB0;
  if (!qword_1EB4CEDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEDB0);
  }

  return result;
}

unint64_t sub_1ABC495C0(uint64_t a1)
{
  result = sub_1ABC49274();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABC49620()
{
  result = qword_1EB4D5EC0;
  if (!qword_1EB4D5EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5EC0);
  }

  return result;
}

_BYTE *sub_1ABC49674(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABC49754()
{
  result = qword_1EB4D5ED0;
  if (!qword_1EB4D5ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5ED0);
  }

  return result;
}

unint64_t sub_1ABC497AC()
{
  result = qword_1EB4D5ED8;
  if (!qword_1EB4D5ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5ED8);
  }

  return result;
}

unint64_t sub_1ABC49804()
{
  result = qword_1EB4D5EE0;
  if (!qword_1EB4D5EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5EE0);
  }

  return result;
}

uint64_t ViewService.futureLifeEventEntryView()()
{
  type metadata accessor for FutureLifeEventEntryView();
  v1 = swift_allocObject();
  FutureLifeEventEntryView.init(viewService:)(v0);
  return v1;
}

uint64_t FutureLifeEventEntryView.__allocating_init(viewService:)(void *a1)
{
  v2 = swift_allocObject();
  FutureLifeEventEntryView.init(viewService:)(a1);
  return v2;
}

uint64_t *FutureLifeEventEntryView.init(viewService:)(void *a1)
{
  v4 = sub_1ABAE92E0(0xD000000000000012, 0x80000001ABF8D0F0);

  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 16) = v4;
  }

  return v1;
}

uint64_t FutureLifeEventEntryView.futureActivityEventEntries<A>(of:order:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FutureLifeEventEntry(0, a3, *(a4 + 8), a4);
  sub_1ABA8F458();
  swift_getWitnessTable();
  return sub_1ABC28D04();
}

uint64_t FutureLifeEventEntryView.enumerateFutureActivityEventEntries<A>(of:order:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for FutureLifeEventEntry(0, a5, *(a6 + 8), a4);
  sub_1ABA8F458();
  swift_getWitnessTable();
  return sub_1ABC29498();
}

uint64_t sub_1ABC49BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = type metadata accessor for FutureLifeEventEntry(0, a2, *(a3 + 8), a4);
  sub_1ABA8F458();
  WitnessTable = swift_getWitnessTable();
  return a4(v5, v5, WitnessTable);
}

uint64_t FutureLifeEventEntryView.futureActivityEventIds(order:)(char a1)
{
  sub_1ABA7D88C(a1);
  result = sub_1ABAEE8DC();
  if (!v1)
  {
    v3 = sub_1ABAEF5A4(result);

    return v3;
  }

  return result;
}

uint64_t FutureLifeEventEntryView.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ViewService.futureLifeEventView()(uint64_t a1)
{
  type metadata accessor for FutureLifeEventView();
  sub_1ABA7D028();
  v2 = swift_allocObject();
  FutureLifeEventView.init(viewService:)(v1);
  return v2;
}

uint64_t FutureLifeEventView.__allocating_init(viewService:)(void *a1)
{
  sub_1ABA7D028();
  v2 = swift_allocObject();
  FutureLifeEventView.init(viewService:)(a1);
  return v2;
}

uint64_t *FutureLifeEventView.init(viewService:)(void *a1)
{
  v3 = v1;
  type metadata accessor for FutureLifeEventEntryView();
  sub_1ABA7D028();
  swift_allocObject();
  v5 = FutureLifeEventEntryView.init(viewService:)(a1);
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v6 = v5;
    sub_1ABAD219C(&qword_1EB4D5EE8, &qword_1ABF4F300);
    sub_1ABA7D028();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v3 + 16) = v7;
  }

  return v3;
}

uint64_t FutureLifeEventView.enumerateFutureActivityEvents<A>(from:order:using:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v14 = type metadata accessor for CustomGraphActivityEvent(0);
  sub_1ABA8F470();
  v17 = sub_1ABC4A2A0(v15, v16, &protocol conformance descriptor for CustomGraphActivityEvent);
  return sub_1ABC2DC44(v14, a1, a2 & 1, a3, a4, v14, a5, v17, a6, a7);
}

uint64_t sub_1ABC4A134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = type metadata accessor for CustomGraphActivityEvent(0);
  sub_1ABA8F470();
  v11 = sub_1ABC4A2A0(v9, v10, &protocol conformance descriptor for CustomGraphActivityEvent);
  return a4(v8, a1, v8, a2, v11, a3);
}

uint64_t FutureLifeEventView.__deallocating_deinit()
{

  sub_1ABA7D028();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABC4A2A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void __swiftcall CustomGraphPerson.toObjectiveCGraphObject()(GDGraphPerson *__return_ptr retstr)
{
  sub_1ABA7E2A8();
  v2 = v1;
  v3 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  sub_1ABA7AB80(v3);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v153 - v5;
  v7 = *v2;
  sub_1ABAFF390(0, &qword_1EB4D5EF8, off_1E79600C8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v177 = [objc_allocWithZone(ObjCClassFromMetadata) initWithValue_];
  if (!v177)
  {
LABEL_90:
    __break(1u);
    return;
  }

  v9 = v2[1];
  v10 = v2[2];
  v11 = v2[3];
  v12 = v2[4];
  v14 = v2[5];
  v13 = v2[6];
  v15 = v2[8];
  v184 = v2[7];
  v185 = v13;
  v16 = v2[10];
  v182 = v2[9];
  v183 = v15;
  v17 = v2[12];
  v180 = v2[11];
  v181 = v16;
  v179 = v17;
  v18 = type metadata accessor for CustomGraphPerson(0);
  v19 = (v2 + v18[17]);
  v20 = *(sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20) + 28);
  v163 = v19;
  v176 = v6;
  sub_1ABB2E9FC(v19 + v20, v6, &qword_1EB4D9BF0, &qword_1ABF34240);
  v21 = (v2 + v18[18]);
  v22 = v21[2];
  v170 = v21[1];
  v162 = v21;
  v23 = sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v161 = v2 + v18[19];
  LODWORD(v191) = v161[8];
  v169 = v22;

  v175 = v9;

  v174 = v10;

  v173 = v11;

  v172 = v12;

  v171 = v14;

  v168 = sub_1ABC6433C(v191);
  v164 = v2 + v18[20];
  v167 = sub_1ABC6433C(v164[8]);
  v165 = v2 + v18[21];
  v166 = sub_1ABC6433C(v165[8]);
  v187 = v18;
  v24 = *(v2 + v18[22]);
  v25 = *(v24 + 16);
  v178 = MEMORY[0x1E69E7CC0];
  v186 = v2;
  if (v25)
  {
    sub_1ABC6C47C(MEMORY[0x1E69E7CC0]);
    sub_1ABF24BC4();
    v26 = 0;
    v188 = v25;
    v189 = v24 + 32;
    while (1)
    {
      v27 = v189 + (v26 << 6);
      v28 = *(v27 + 24);
      v29 = *(v27 + 32);
      v30 = *(v27 + 40);
      if (*(v27 + 56))
      {
        sub_1ABC6C86C();

        v31 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v32 = *(v27 + 48);
        v33 = objc_allocWithZone(ObjCClassFromMetadata);
        sub_1ABC6C86C();

        v34 = [v33 initWithValue_];
        v31 = MEMORY[0x1E69E7CC0];
        if (!v34)
        {
          goto LABEL_86;
        }
      }

      v35 = *(v30 + 16);
      if (v35)
      {
        break;
      }

LABEL_13:
      ++v26;
      v38 = objc_allocWithZone(GDGraphAgentAffiliationRelationship);
      sub_1ABC6C470();
      sub_1ABC69D78();

      v23 = v193;
      sub_1ABF24B94();
      sub_1ABA9ED44();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (v26 == v25)
      {
        v178 = v193[0];
        v2 = v186;
        goto LABEL_15;
      }
    }

    v190 = v28;
    v191 = v29;
    v192 = v31;

    sub_1ABF24BC4();
    v36 = (v30 + 32);
    while (1)
    {
      v37 = *v36++;
      if (![objc_allocWithZone(ObjCClassFromMetadata) initWithValue_])
      {
        break;
      }

      sub_1ABF24B94();
      sub_1ABA88ED0();
      sub_1ABA979F8();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v35)
      {
        v25 = v188;
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_83;
  }

LABEL_15:
  v39 = *(v2 + v187[23]);
  v40 = *(v39 + 16);
  v41 = MEMORY[0x1E69E7CC0];
  if (v40)
  {
    sub_1ABC6C47C(MEMORY[0x1E69E7CC0]);
    sub_1ABF24BC4();
    v42 = 0;
    v188 = v40;
    v189 = v39 + 32;
    while (1)
    {
      sub_1ABC6C558();
      if (v43)
      {
        sub_1ABA8908C();

        v44 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v45 = sub_1ABC6C794();
        sub_1ABAFF390(v45, &qword_1EB4D5F08, off_1E7960048);
        objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA8908C();

        v46 = sub_1ABA7E79C();
        v48 = [v46 v47];
        v44 = MEMORY[0x1E69E7CC0];
        if (!v48)
        {
          goto LABEL_87;
        }
      }

      v49 = *(v39 + 16);
      if (v49)
      {
        break;
      }

LABEL_26:
      ++v42;
      v53 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABC6C67C();
      sub_1ABC6C470();
      sub_1ABC69D78();

      v23 = v193;
      sub_1ABF24B94();
      sub_1ABA9ED44();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (v42 == v40)
      {
        v41 = v193[0];
        v2 = v186;
        goto LABEL_28;
      }
    }

    v192 = v44;

    sub_1ABF24BC4();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v50 = swift_getObjCClassFromMetadata();
    v51 = (v39 + 32);
    while (1)
    {
      v52 = *v51++;
      if (![objc_allocWithZone(v50) initWithValue_])
      {
        break;
      }

      sub_1ABF24B94();
      sub_1ABA9E944();
      sub_1ABA7D0F8();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v49)
      {
        v40 = v188;
        goto LABEL_26;
      }
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

LABEL_28:
  v160 = v41;
  v54 = *(v2 + v187[24]);
  v55 = *(v54 + 16);
  v56 = MEMORY[0x1E69E7CC0];
  if (v55)
  {
    v193[0] = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v57 = 0;
    v188 = v55;
    v189 = v54 + 32;
    while (1)
    {
      sub_1ABC6C558();
      if (v58)
      {
        sub_1ABA8908C();
      }

      else
      {
        v59 = sub_1ABC6C794();
        sub_1ABAFF390(v59, &qword_1EB4D5F10, off_1E79600B8);
        objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA8908C();

        v60 = sub_1ABA7E79C();
        if (![v60 v61])
        {
          goto LABEL_88;
        }
      }

      v62 = *(v54 + 16);
      if (v62)
      {
        break;
      }

LABEL_39:
      ++v57;
      v66 = objc_allocWithZone(GDGraphEmploymentRelationship);
      sub_1ABC6C67C();
      sub_1ABC6C470();
      sub_1ABC69D78();

      sub_1ABF24B94();
      sub_1ABA9ED44();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (v57 == v55)
      {
        v56 = v193[0];
        v2 = v186;
        goto LABEL_41;
      }
    }

    v192 = v56;

    sub_1ABF24BC4();
    sub_1ABAFF390(0, &qword_1EB4D5F10, off_1E79600B8);
    v63 = swift_getObjCClassFromMetadata();
    v64 = (v54 + 32);
    while (1)
    {
      v65 = *v64++;
      if (![objc_allocWithZone(v63) initWithValue_])
      {
        goto LABEL_84;
      }

      sub_1ABF24B94();
      sub_1ABA9E944();
      sub_1ABA7D0F8();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v62)
      {
        v56 = MEMORY[0x1E69E7CC0];
        v55 = v188;
        goto LABEL_39;
      }
    }
  }

LABEL_41:
  v159 = v56;
  v67 = *(v2 + v187[25]);
  v68 = *(v67 + 16);
  v69 = MEMORY[0x1E69E7CC0];
  if (v68)
  {
    v193[0] = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v70 = 0;
    v190 = v68;
    v191 = v67 + 32;
    while (1)
    {
      v71 = v191 + 40 * v70;
      v72 = *(v71 + 16);
      if (*(v71 + 32))
      {
      }

      else
      {
        v73 = *(v71 + 24);
        v74 = sub_1ABC6C590();
        sub_1ABAFF390(v74, v75, off_1E79601A0);
        v76 = objc_allocWithZone(swift_getObjCClassFromMetadata());

        if (![v76 initWithValue_])
        {
          goto LABEL_89;
        }
      }

      v77 = *(v72 + 16);
      if (v77)
      {
        break;
      }

LABEL_51:
      ++v70;
      v84 = objc_allocWithZone(GDGraphTopicRelationship);
      sub_1ABC6C488();
      sub_1ABC69D04(v85, v86, &qword_1EB4D5F18, off_1E79601A0);

      sub_1ABF24B94();
      sub_1ABA9ED44();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (v70 == v68)
      {
        v69 = v193[0];
        v2 = v186;
        goto LABEL_53;
      }
    }

    v78 = v69;
    v192 = v69;
    sub_1ABF24BC4();
    v79 = sub_1ABC6C590();
    sub_1ABAFF390(v79, v80, off_1E79601A0);
    v81 = swift_getObjCClassFromMetadata();
    v82 = (v72 + 32);
    while (1)
    {
      v83 = *v82++;
      if (![objc_allocWithZone(v81) initWithValue_])
      {
        break;
      }

      sub_1ABF24B94();
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v77)
      {
        v69 = v78;
        v68 = v190;
        goto LABEL_51;
      }
    }

LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

LABEL_53:
  v158 = v69;
  v87 = *(v2 + v187[26]);
  v88 = *(v87 + 16);
  if (v88)
  {
    sub_1ABC6C47C(MEMORY[0x1E69E7CC0]);
    sub_1ABF24BC4();
    v89 = (v87 + 80);
    do
    {
      v90 = *(v89 - 4);
      v69 = *(v89 - 2);
      v91 = *(v89 - 1);
      v92 = *v89;
      v89 += 7;
      objc_allocWithZone(GDGraphHandleRelationship);

      v93 = sub_1ABA7E79C();
      sub_1ABC6A044(v93, v94, v91, v92, v90);
      sub_1ABF24B94();
      sub_1ABA88ED0();
      sub_1ABC6C494();
      sub_1ABF24BA4();
      --v88;
    }

    while (v88);
    v157 = v193[0];
    v2 = v186;
  }

  else
  {
    v157 = MEMORY[0x1E69E7CC0];
  }

  v95 = *(v2 + v187[27]);
  v96 = *(v95 + 16);
  v97 = MEMORY[0x1E69E7CC0];
  if (v96)
  {
    v193[0] = MEMORY[0x1E69E7CC0];
    sub_1ABC6C608();
    v98 = v95 + 112;
    do
    {
      v99 = *(v98 - 56);
      v69 = *(v98 - 48);
      v190 = *(v98 - 32);
      v191 = v99;
      v100 = *(v98 - 16);
      v98 += 88;
      v101 = objc_allocWithZone(GDGraphIdentifierRelationship);

      v108 = sub_1ABC6C5A8(v191, v102, v190, v103, v104, v105, v106, v107, v100);
      sub_1ABC6C6AC(v108);
      sub_1ABA88ED0();
      sub_1ABC6C494();
      sub_1ABF24BA4();
      --v96;
    }

    while (v96);
    v156 = v193[0];
    v2 = v186;
    v97 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v156 = MEMORY[0x1E69E7CC0];
  }

  v109 = v187[29];
  v110 = (v2 + v187[28]);
  v111 = v110[2];
  v186 = v110[1];
  v154 = v110;
  v112 = *(v2 + v109);
  v113 = *(v112 + 16);
  v155 = v111;
  if (v113)
  {
    v193[0] = v97;

    sub_1ABC6C608();
    v114 = (v112 + 72);
    do
    {
      v116 = *(v114 - 3);
      v115 = *(v114 - 2);
      v69 = *(v114 - 1);
      v117 = *v114;
      v118 = v114[2];
      v190 = v114[1];
      v191 = v115;
      v120 = v114[3];
      v119 = v114[4];
      v122 = v114[5];
      v121 = v114[6];
      v123 = v114[8];
      v188 = v114[7];
      v189 = v119;
      v187 = objc_allocWithZone(GDGraphVisualIdentifierRelationship);

      sub_1ABC6A854(v191, v69, v190, v118, v189, v122, v188, v123, v116, v117, v120, v121);
      sub_1ABF24B94();
      sub_1ABA88ED0();
      sub_1ABC6C494();
      sub_1ABF24BA4();
      v114 += 14;
      --v113;
    }

    while (v113);
    v124 = v193[0];
    v97 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v124 = MEMORY[0x1E69E7CC0];
  }

  v125 = *v163;
  v126 = *v162;
  sub_1ABA9F5D0();
  v127 = *(v69 + 2);
  if (v127)
  {
    v193[0] = v97;

    sub_1ABC6C608();
    v128 = v69 + 32;
    do
    {
      ++v128;
      v69 = sub_1ABC6C854(objc_allocWithZone(MEMORY[0x1E696AD98]));
      sub_1ABF24B94();
      sub_1ABA8CFE4();
      sub_1ABA7D0F8();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      --v127;
    }

    while (v127);
    v129 = v193[0];
  }

  else
  {

    v129 = MEMORY[0x1E69E7CC0];
  }

  v191 = v129;
  sub_1ABA9F5D0();
  v130 = *(v69 + 2);
  v131 = MEMORY[0x1E69E7CC0];
  if (v130)
  {
    v193[0] = MEMORY[0x1E69E7CC0];
    sub_1ABC6C608();
    v132 = v69 + 32;
    do
    {
      ++v132;
      sub_1ABC6C854(objc_allocWithZone(MEMORY[0x1E696AD98]));
      sub_1ABF24B94();
      sub_1ABA8CFE4();
      sub_1ABA7D0F8();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      --v130;
    }

    while (v130);
    v131 = v193[0];
  }

  sub_1ABAA3CF0();
  v134 = *v133;
  v135 = *(*v133 + 16);
  v136 = MEMORY[0x1E69E7CC0];
  if (v135)
  {
    v190 = v126;
    v137 = v125;
    v138 = v124;
    v193[0] = MEMORY[0x1E69E7CC0];
    sub_1ABC6C608();
    v139 = v134 + 32;
    do
    {
      ++v139;
      sub_1ABC6C854(objc_allocWithZone(MEMORY[0x1E696AD98]));
      sub_1ABF24B94();
      sub_1ABA8CFE4();
      sub_1ABA7D0F8();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      --v135;
    }

    while (v135);
    v136 = v193[0];
    v124 = v138;
    v125 = v137;
    v126 = v190;
  }

  v140 = *v154;
  objc_allocWithZone(GDGraphPerson);

  v152 = v191;
  v151 = v155;
  v150 = v186;
  v149 = v156;
  v148 = v157;
  v147 = v158;
  v146 = v159;
  v145 = v160;
  v144 = v178;
  sub_1ABA8A034();
  v143 = v141;
  sub_1ABA9F6D8();
  sub_1ABC690A0(v177, v175, v174, v173, v172, v171, v185, v184, v183, v182, v181, v180, v179, v176, v170, v169, v168, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v124, v125, v126, v152, v131, v136, v140);
  sub_1ABA7BC1C();
}

void __swiftcall CustomGraphEvent.toObjectiveCGraphObject()(GDGraphEvent *__return_ptr retstr)
{
  sub_1ABA7E2A8();
  v6 = type metadata accessor for CustomGraphDateRelationship(0);
  sub_1ABA7BB64();
  v133[1] = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7BC58();
  sub_1ABA96A10();
  v9 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v10 = sub_1ABA7AB80(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7AC18();
  sub_1ABA89308();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABAA08DC();
  MEMORY[0x1EEE9AC00](v12);
  v146 = (v133 - v13);
  v14 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v14);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v133 - v16;
  v18 = *v1;
  sub_1ABAFF390(0, &qword_1EB4D5F28, off_1E795FFC8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_allocWithZone(ObjCClassFromMetadata) initWithValue_];
  if (!v19)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v139 = v19;
  v142 = v1;
  v20 = v1[1];
  v21 = *(v20 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  v147 = v6;
  v148 = v4;
  v151 = v3;
  v133[0] = v2;
  if (v21)
  {
    v145 = v17;
    v154 = MEMORY[0x1E69E7CC0];
    sub_1ABC6C608();
    v5 = (v20 + 112);
    do
    {
      v24 = *(v5 - 8);
      v23 = *(v5 - 7);
      v25 = *(v5 - 6);
      v26 = *(v5 - 5);
      v27 = *(v5 - 3);
      v149 = *(v5 - 4);
      v150 = v23;
      v29 = *(v5 - 2);
      v28 = *(v5 - 1);
      v30 = *v5;
      v5 += 11;
      objc_allocWithZone(GDGraphIdentifierRelationship);

      v31 = sub_1ABC6A12C(v150, v25, v149, v27, v28, v30, v24, v26, v29);
      sub_1ABC6C6AC(v31);
      sub_1ABA88ED0();
      sub_1ABC6C494();
      sub_1ABF24BA4();
      --v21;
    }

    while (v21);
    v22 = v154;
    v6 = v147;
    v4 = v148;
    v17 = v145;
  }

  v32 = v142;
  v34 = v142[3];
  v33 = v142[4];
  v143 = type metadata accessor for CustomGraphEvent(0);
  v35 = v32 + v143[7];
  v36 = *(sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00) + 28);
  v140 = v35;
  sub_1ABB2E9FC(&v35[v36], v17, &qword_1EB4D5F20, &qword_1ABF4F358);
  v37 = sub_1ABA7E1E0(v17, 1, v6);
  v137 = v33;
  v138 = v22;
  v136 = v34;
  if (v37 == 1)
  {

    sub_1ABC6AAC4(v17, &qword_1EB4D5F20);
    v135 = 0;
  }

  else
  {
    v38 = &v17[*(v6 + 20)];
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABC6C5E0();
    v5 = v146;
    sub_1ABC6C5F0(&v38[v39], v146);
    sub_1ABC6C5F0(&v17[*(v6 + 24) + *(v33 + 28)], v148);
    v6 = &v17[*(v6 + 28)];
    sub_1ABC6C5F0(v6 + *(v33 + 28), v151);
    sub_1ABA9F7CC();
    v40 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA8D29C();
    v4 = v148;

    sub_1ABA9EAB4();
    v135 = sub_1ABC69E44(v41, v42, v43, v44, v45, v46);
    sub_1ABC6AA68(v17);
  }

  v47 = v142;
  v48 = *(*(v142 + v143[8]) + 16);
  v141 = MEMORY[0x1E69E7CC0];
  if (v48)
  {
    sub_1ABC6C47C(MEMORY[0x1E69E7CC0]);
    sub_1ABF24BC4();
    sub_1ABAA0AA4();
    v144 = v48;
    v145 = v49;
    while (1)
    {
      sub_1ABAA08D0();
      v51 = *(v50 + 32);
      v5 = *(v50 + 40);
      v52 = *(v50 + 56);
      v149 = v53;
      v150 = v51;
      if (v52)
      {
        sub_1ABC6C540();

        v54 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v55 = sub_1ABAB5AC8();
        sub_1ABAFF390(v55, v56, off_1E79600C8);
        v57 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA9E830();

        v58 = sub_1ABA7C298();
        v60 = [v58 v59];
        v54 = MEMORY[0x1E69E7CC0];
        if (!v60)
        {
          goto LABEL_78;
        }
      }

      v61 = v5[2];
      if (v61)
      {
        break;
      }

LABEL_20:
      ++v6;
      v67 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABAA3138();
      sub_1ABC69D78();
      sub_1ABC6C59C();

      sub_1ABF24B94();
      sub_1ABA8965C();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v6 == v48)
      {
        v141 = v154;
        v4 = v148;
        v47 = v142;
        goto LABEL_22;
      }
    }

    v153 = v54;

    sub_1ABF24BC4();
    v62 = sub_1ABA8BCD4();
    sub_1ABAFF390(v62, v63, off_1E79600C8);
    v64 = swift_getObjCClassFromMetadata();
    v65 = v5 + 4;
    while (1)
    {
      v66 = *v65++;
      if (![objc_allocWithZone(v64) initWithValue_])
      {
        break;
      }

      sub_1ABF24B94();
      sub_1ABA9E334();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v61)
      {
        v48 = v144;
        goto LABEL_20;
      }
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

LABEL_22:
  v68 = *(v47 + v143[9]);
  v69 = v68[2];
  v144 = MEMORY[0x1E69E7CC0];
  if (v69)
  {
    sub_1ABC6C47C(MEMORY[0x1E69E7CC0]);
    sub_1ABF24BC4();
    v70 = 0;
    while (1)
    {
      sub_1ABC6C748();
      if (v72)
      {
      }

      else
      {
        v73 = *(v71 + 24);
        v74 = objc_allocWithZone(ObjCClassFromMetadata);
        sub_1ABC6C7B4();

        if (![v68 initWithValue_])
        {
          goto LABEL_79;
        }
      }

      v75 = v5[2];
      if (v75)
      {
        break;
      }

LABEL_31:
      ++v70;
      v77 = objc_allocWithZone(GDGraphEventRelationship);
      sub_1ABC6C488();
      sub_1ABC69D04(v78, v79, &qword_1EB4D5F28, off_1E795FFC8);
      sub_1ABC6C7B4();

      sub_1ABF24B94();
      sub_1ABC6C6C8();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (v70 == v69)
      {
        v144 = v154;
        v4 = v148;
        v47 = v142;
        goto LABEL_33;
      }
    }

    v153 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v6 = (v5 + 4);
    while (1)
    {
      v76 = *v6;
      v6 += 8;
      if (![objc_allocWithZone(ObjCClassFromMetadata) initWithValue_])
      {
        goto LABEL_74;
      }

      sub_1ABF24B94();
      sub_1ABA9E334();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v75)
      {
        goto LABEL_31;
      }
    }
  }

LABEL_33:
  v80 = *(v47 + v143[10]);
  v81 = *(v80 + 16);
  v82 = MEMORY[0x1E69E7CC0];
  if (v81)
  {
    v154 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    sub_1ABAA0AA4();
    v149 = v83;
    v145 = v81;
    while (1)
    {
      v84 = &v149[8 * v6];
      v150 = v84[3];
      v85 = v84[5];
      v86 = *(v84 + 56);
      ObjCClassFromMetadata = v84[4];
      if (v86)
      {
        sub_1ABC6C540();
      }

      else
      {
        v87 = sub_1ABA8CB08();
        sub_1ABAFF390(v87, &qword_1EB4D5F08, off_1E7960048);
        v88 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA9E830();

        v89 = sub_1ABA7C298();
        if (![v89 v90])
        {
          goto LABEL_80;
        }
      }

      v91 = *(v85 + 16);
      if (v91)
      {
        break;
      }

LABEL_44:
      ++v6;
      v95 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA89794();
      sub_1ABC69D78();
      v80 = v96;

      sub_1ABF24B94();
      sub_1ABA8965C();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v6 == v81)
      {
        v97 = v154;
        v4 = v148;
        v47 = v142;
        goto LABEL_47;
      }
    }

    v153 = v82;

    sub_1ABF24BC4();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v92 = swift_getObjCClassFromMetadata();
    v93 = (v85 + 32);
    while (1)
    {
      v94 = *v93++;
      if (![objc_allocWithZone(v92) initWithValue_])
      {
        break;
      }

      sub_1ABF24B94();
      sub_1ABA9E944();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      if (!--v91)
      {
        v82 = MEMORY[0x1E69E7CC0];
        v81 = v145;
        goto LABEL_44;
      }
    }

LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v97 = MEMORY[0x1E69E7CC0];
LABEL_47:
  v98 = v47 + v143[11];
  if (v98[16])
  {
    v99 = 0;
  }

  else
  {
    v80 = *(v98 + 1);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v99 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v99)
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }
  }

  v100 = v47 + v143[12];
  if (*(v100 + 16))
  {
    v101 = 0;
LABEL_53:
    v142 = v101;
    v143 = v99;
    v145 = v97;
    sub_1ABAA154C();
    v134 = v102;
    v149 = v100;
    if (v97)
    {
      v140 = v98;
      v154 = v82;

      sub_1ABC6C718();
      sub_1ABA935AC();
      v104 = v80 + v103;
      v150 = *(v105 + 72);
      v106 = v133[0];
      do
      {
        ObjCClassFromMetadata = v97;
        sub_1ABC6AA04(v104, v106);
        v107 = v4;
        v108 = v147;
        v109 = (v106 + *(v147 + 20));
        v110 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
        v111 = sub_1ABA952DC(v110);
        v112 = v146;
        sub_1ABB2E9FC(v111, v146, &qword_1EB4D9BF0, &qword_1ABF34240);
        v113 = (v106 + *(v108 + 24));
        sub_1ABB2E9FC(v113 + *(v47 + 7), v107, &qword_1EB4D9BF0, &qword_1ABF34240);
        v114 = (v106 + *(v108 + 28));
        sub_1ABB2E9FC(v114 + *(v47 + 7), v151, &qword_1EB4D9BF0, &qword_1ABF34240);
        v115 = *v109;
        v116 = *v113;
        v117 = *v114;
        v4 = v148;
        v118 = objc_allocWithZone(GDGraphDateRelationship);
        sub_1ABA9EFD8();

        sub_1ABC69E44(v112, v4, v151, v115, v116, v117);
        v119 = sub_1ABC6C59C();
        sub_1ABC6AA68(v119);
        v47 = &v154;
        sub_1ABF24B94();
        sub_1ABA8965C();
        v120 = ObjCClassFromMetadata;
        sub_1ABF24BE4();
        sub_1ABF24BA4();
        v104 += v150;
        v97 = (v120 - 1);
      }

      while (v97);
      v121 = v154;
      v98 = v140;
    }

    else
    {

      v121 = MEMORY[0x1E69E7CC0];
    }

    v122 = *v98;
    v123 = *(*v98 + 16);
    v124 = MEMORY[0x1E69E7CC0];
    if (v123)
    {
      v154 = MEMORY[0x1E69E7CC0];
      sub_1ABF24BC4();
      sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
      v125 = swift_getObjCClassFromMetadata();
      v126 = 0;
      while (1)
      {
        sub_1ABA8A95C();
        if (v127)
        {
          break;
        }

        if (![objc_allocWithZone(v125) initWithValue_])
        {
          goto LABEL_76;
        }

        ++v126;
        sub_1ABF24B94();
        sub_1ABA9ED44();
        sub_1ABA88FB0();
        sub_1ABF24BA4();
        if (v123 == v126)
        {
          v124 = v154;
          goto LABEL_64;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_64:
      v128 = *v149;
      v129 = *(*v149 + 16);
      v130 = MEMORY[0x1E69E7CC0];
      if (!v129)
      {
LABEL_70:
        objc_allocWithZone(GDGraphEvent);
        sub_1ABC6727C(v139, v138, v136, v137, v135, v141, v144, v145, v143, v142, v134, v121, v124, v130);
        sub_1ABA7BC1C();
        return;
      }

      v154 = MEMORY[0x1E69E7CC0];
      sub_1ABF24BC4();
      sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
      v131 = swift_getObjCClassFromMetadata();
      v132 = 0;
      while (v132 < *(v128 + 16))
      {
        if (![objc_allocWithZone(v131) initWithValue_])
        {
          goto LABEL_77;
        }

        ++v132;
        sub_1ABF24B94();
        sub_1ABA9ED44();
        sub_1ABA88FB0();
        sub_1ABF24BA4();
        if (v129 == v132)
        {
          v130 = v154;
          goto LABEL_70;
        }
      }
    }

    __break(1u);
    goto LABEL_73;
  }

  v80 = *(v100 + 8);
  sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
  v101 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (v101)
  {
    goto LABEL_53;
  }

LABEL_83:
  __break(1u);
}

void __swiftcall CustomGraphIdentifierRelationship.toObjectiveCGraphObject()(GDGraphIdentifierRelationship *__return_ptr retstr)
{
  v2 = v1[2];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = v1[9];
  v8 = v1[10];
  v9 = objc_allocWithZone(GDGraphIdentifierRelationship);

  v10 = sub_1ABA7E79C();
  sub_1ABC6A12C(v10, v11, v4, v5, v7, v8, v2, v3, v6);
}

void __swiftcall CustomGraphDateRelationship.toObjectiveCGraphObject()(GDGraphDateRelationship *__return_ptr retstr)
{
  sub_1ABA7E2A8();
  v4 = sub_1ABA7E79C();
  v6 = sub_1ABAD219C(v4, v5);
  v7 = sub_1ABA7AB80(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7AC18();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA89308();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1ABC6C7F4();
  v14 = v1 + v13[5];
  v15 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
  sub_1ABA9E550(v14 + *(v15 + 28), v3);
  sub_1ABA9E550(v1 + v13[6] + *(v15 + 28), v2);
  sub_1ABA9E550(v1 + v13[7] + *(v15 + 28), v10);
  objc_allocWithZone(GDGraphDateRelationship);

  sub_1ABA96094();
  sub_1ABC69E44(v16, v17, v18, v19, v20, v21);
  sub_1ABA7BC1C();
}

id sub_1ABC4EFE4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1[1])
  {
    return 0;
  }

  v5 = *a1;
  return static GraphObjectObjectiveCConvertible.objectiveCGraphObjectEntityIdentifier(from:)(&v5, a2, a3, a4);
}

void __swiftcall CustomGraphActivityEvent.toObjectiveCGraphObject()(GDGraphActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  v6 = type metadata accessor for CustomGraphDateRelationship(0);
  sub_1ABA7BB64();
  v177[1] = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7BC58();
  sub_1ABA96A10();
  v9 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v10 = sub_1ABA7AB80(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7AC18();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA89308();
  MEMORY[0x1EEE9AC00](v15);
  v198 = v177 - v16;
  v17 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v17);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABC6C7D4();
  sub_1ABAFF390(0, &qword_1EB4CE650, off_1E795FEF8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_allocWithZone(ObjCClassFromMetadata) initWithValue_];
  if (!v19)
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v185 = v19;
  v188 = v2;
  v20 = v2[1];
  v21 = *(v20 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  v193 = v13;
  v194 = v6;
  v195 = v4;
  v192 = v3;
  if (v21)
  {
    v191 = v5;
    v201[0] = MEMORY[0x1E69E7CC0];
    sub_1ABA9E6A8();
    v23 = (v20 + 112);
    do
    {
      v25 = *(v23 - 8);
      v24 = *(v23 - 7);
      v26 = *(v23 - 5);
      v196 = *(v23 - 4);
      v197 = v24;
      v27 = *(v23 - 2);
      v28 = *v23;
      v23 += 11;
      objc_allocWithZone(GDGraphIdentifierRelationship);

      sub_1ABC6C788();
      sub_1ABC6A12C(v29, v30, v31, v32, v33, v28, v25, v26, v27);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      --v21;
    }

    while (v21);
    v22 = v201[0];
    v13 = v193;
    v6 = v194;
    v5 = v191;
  }

  v34 = v188;
  v36 = v188[3];
  v35 = v188[4];
  v189 = type metadata accessor for CustomGraphActivityEvent(0);
  v37 = v34 + v189[7];
  v38 = *(sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00) + 28);
  v186 = v37;
  sub_1ABB2E9FC(&v37[v38], v5, &qword_1EB4D5F20, &qword_1ABF4F358);
  v39 = sub_1ABA7E1E0(v5, 1, v6);
  v183 = v35;
  v184 = v22;
  v182 = v36;
  if (v39 == 1)
  {

    sub_1ABC6AAC4(v5, &qword_1EB4D5F20);
    v181 = 0;
  }

  else
  {
    v40 = v5 + *(v6 + 20);
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABC6C5E0();
    sub_1ABC6C5F0(v40 + v41, v198);
    v42 = sub_1ABC6C768();
    sub_1ABC6C5F0(v42, v195);
    v43 = sub_1ABC6C754();
    sub_1ABC6C5F0(v43, v13);
    v44 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA8D29C();

    sub_1ABA9EAB4();
    v181 = sub_1ABC69E44(v45, v46, v47, v48, v49, v50);
    sub_1ABC6AA68(v5);
  }

  v51 = v188;
  v52 = *(v188 + v189[8]);
  v53 = *(v52 + 16);
  v54 = MEMORY[0x1E69E7CC0];
  if (v53)
  {
    sub_1ABA9F87C(MEMORY[0x1E69E7CC0]);
    sub_1ABF24BC4();
    v55 = 0;
    v190 = v53;
    v191 = v52 + 32;
    while (1)
    {
      v56 = v191 + (v55 << 6);
      v57 = *(v56 + 32);
      v58 = *(v56 + 40);
      v59 = *(v56 + 56);
      v196 = *(v56 + 24);
      v197 = v57;
      if (v59)
      {
        sub_1ABC6C540();
      }

      else
      {
        v60 = sub_1ABA8CB08();
        sub_1ABAFF390(v60, &qword_1EB4D5EF8, off_1E79600C8);
        v61 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA9E830();

        v62 = sub_1ABA7C298();
        if (![v62 v63])
        {
          goto LABEL_110;
        }
      }

      v64 = *(v58 + 16);
      if (v64)
      {
        break;
      }

LABEL_20:
      v55 = v55 + 1;
      v68 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABC69D78();
      sub_1ABC6C59C();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v55 == v53)
      {
        v54 = v201[0];
        v51 = v188;
        goto LABEL_22;
      }
    }

    v200 = MEMORY[0x1E69E7CC0];

    sub_1ABF24BC4();
    sub_1ABAFF390(0, &qword_1EB4D5EF8, off_1E79600C8);
    v65 = swift_getObjCClassFromMetadata();
    v66 = (v58 + 32);
    while (1)
    {
      v67 = *v66++;
      if (![objc_allocWithZone(v65) initWithValue_])
      {
        goto LABEL_103;
      }

      sub_1ABF24B94();
      sub_1ABA88ED0();
      sub_1ABA979F8();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v64)
      {
        v53 = v190;
        goto LABEL_20;
      }
    }
  }

LABEL_22:
  v180 = v54;
  v69 = *(v51 + v189[9]);
  v70 = *(v69 + 16);
  v190 = MEMORY[0x1E69E7CC0];
  if (v70)
  {
    sub_1ABA9F87C(MEMORY[0x1E69E7CC0]);
    sub_1ABF24BC4();
    v71 = 0;
    v196 = v70;
    v197 = v69 + 32;
    v72 = &qword_1EB4D5F28;
    while (1)
    {
      v73 = v197 + 40 * v71;
      v74 = *(v73 + 16);
      if (*(v73 + 32))
      {
      }

      else
      {
        v75 = *(v73 + 24);
        sub_1ABAFF390(0, v72, off_1E795FFC8);
        v76 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA8D29C();

        if (![v53 initWithValue_])
        {
          goto LABEL_111;
        }
      }

      v77 = *(v74 + 16);
      if (v77)
      {
        break;
      }

LABEL_32:
      ++v71;
      v82 = objc_allocWithZone(GDGraphEventRelationship);
      sub_1ABC6C488();
      sub_1ABC69D04(v83, v84, v72, off_1E795FFC8);
      sub_1ABA8D29C();

      sub_1ABF24B94();
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (v71 == v70)
      {
        v190 = v201[0];
        v51 = v188;
        goto LABEL_34;
      }
    }

    v200 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v78 = v72;
    sub_1ABAFF390(0, v72, off_1E795FFC8);
    v79 = swift_getObjCClassFromMetadata();
    v80 = (v74 + 32);
    while (1)
    {
      v81 = *v80++;
      if (![objc_allocWithZone(v79) initWithValue_])
      {
        goto LABEL_104;
      }

      sub_1ABF24B94();
      sub_1ABA88ED0();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v77)
      {
        v70 = v196;
        v72 = v78;
        goto LABEL_32;
      }
    }
  }

LABEL_34:
  v85 = *(v51 + v189[10]);
  v86 = v85[2];
  v187 = MEMORY[0x1E69E7CC0];
  if (v86)
  {
    sub_1ABA9F87C(MEMORY[0x1E69E7CC0]);
    sub_1ABF24BC4();
    v87 = 0;
    while (1)
    {
      v88 = &v85[5 * v87 + 4];
      v89 = *(v88 + 16);
      if (*(v88 + 32))
      {
      }

      else
      {
        v90 = *(v88 + 24);
        v91 = objc_allocWithZone(ObjCClassFromMetadata);
        sub_1ABA8D29C();

        if (![v85 initWithValue_])
        {
          goto LABEL_112;
        }
      }

      v92 = *(v89 + 16);
      if (v92)
      {
        break;
      }

LABEL_43:
      ++v87;
      v95 = objc_allocWithZone(GDGraphEventRelationship);
      sub_1ABC6C488();
      sub_1ABC69D04(v96, v97, &qword_1EB4CE650, off_1E795FEF8);
      sub_1ABA8D29C();

      sub_1ABF24B94();
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (v87 == v86)
      {
        v187 = v201[0];
        v51 = v188;
        goto LABEL_45;
      }
    }

    v200 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v93 = (v89 + 32);
    while (1)
    {
      v94 = *v93++;
      if (![objc_allocWithZone(ObjCClassFromMetadata) initWithValue_])
      {
        goto LABEL_105;
      }

      sub_1ABF24B94();
      sub_1ABA88ED0();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v92)
      {
        goto LABEL_43;
      }
    }
  }

LABEL_45:
  v98 = *(v51 + v189[11]);
  v99 = *(v98 + 16);
  v100 = MEMORY[0x1E69E7CC0];
  if (v99)
  {
    v201[0] = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v101 = 0;
    v196 = v98 + 32;
    v102 = v99;
    v191 = v99;
    while (1)
    {
      v103 = v196 + (v101 << 6);
      v104 = *(v103 + 24);
      v105 = *(v103 + 40);
      v106 = *(v103 + 56);
      ObjCClassFromMetadata = *(v103 + 32);
      v197 = v104;
      if (v106)
      {
        swift_bridgeObjectRetain_n();
      }

      else
      {
        v107 = sub_1ABC6C794();
        sub_1ABAFF390(v107, &qword_1EB4D5F08, off_1E7960048);
        v108 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA8D29C();
        swift_bridgeObjectRetain_n();

        v109 = sub_1ABA979F8();
        if (![v109 v110])
        {
          goto LABEL_113;
        }
      }

      v111 = *(v105 + 16);
      if (v111)
      {
        break;
      }

LABEL_56:
      ++v101;
      v115 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABC6C470();
      sub_1ABC69D78();
      sub_1ABC6C7B4();

      sub_1ABF24B94();
      sub_1ABAB6908();
      sub_1ABC6C494();
      sub_1ABF24BA4();
      v100 = MEMORY[0x1E69E7CC0];
      if (v101 == v102)
      {
        v116 = v201[0];
        v51 = v188;
        goto LABEL_59;
      }
    }

    v200 = v100;

    sub_1ABF24BC4();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v112 = swift_getObjCClassFromMetadata();
    v113 = (v105 + 32);
    while (1)
    {
      v114 = *v113++;
      if (![objc_allocWithZone(v112) initWithValue_])
      {
        break;
      }

      sub_1ABF24B94();
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v111)
      {
        v102 = v191;
        goto LABEL_56;
      }
    }

LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v116 = MEMORY[0x1E69E7CC0];
LABEL_59:
  v117 = v51 + v189[12];
  if (*(v117 + 16))
  {
    v118 = 0;
  }

  else
  {
    v119 = *(v117 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v118 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v118)
    {
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }
  }

  v120 = v51 + v189[13];
  if (v120[16])
  {
    v121 = 0;
  }

  else
  {
    v122 = *(v120 + 1);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v121 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v121)
    {
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
      return;
    }
  }

  v123 = v51 + v189[14];
  v124 = v123[16];
  v191 = v123;
  v196 = v117;
  if ((v124 & 1) == 0)
  {
    v125 = *(v123 + 1);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_117;
    }
  }

  v177[2] = v51 + v189[15];
  sub_1ABA89F20();
  v177[5] = v126;
  if (!v127)
  {
    sub_1ABC6C3F8();
  }

  v177[6] = v121;
  v178 = v118;
  v179 = v116;
  sub_1ABA9F4DC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v177[4] = sub_1ABAA045C();
  v128 = v188;
  v189 = sub_1ABC6C834(v188 + v189[16]);
  sub_1ABC6C670();
  v188 = v129;
  if (v128)
  {
    v186 = v120;
    v201[0] = MEMORY[0x1E69E7CC0];

    sub_1ABC6C4AC();
    sub_1ABA935AC();
    v117 += v130;
    v197 = *(v131 + 72);
    do
    {
      ObjCClassFromMetadata = v128;
      v132 = v192;
      sub_1ABC6AA04(v117, v192);
      v133 = v194;
      v134 = (v132 + *(v194 + 20));
      sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      sub_1ABA8C968();
      sub_1ABB2E9FC(v134 + v135, v198, &qword_1EB4D9BF0, &qword_1ABF34240);
      v136 = (v132 + *(v133 + 24));
      v137 = v195;
      sub_1ABB2E9FC(v136 + *(v51 + 7), v195, &qword_1EB4D9BF0, &qword_1ABF34240);
      v138 = (v132 + *(v133 + 28));
      v139 = sub_1ABC6C730();
      v140 = v193;
      sub_1ABB2E9FC(v139, v193, &qword_1EB4D9BF0, &qword_1ABF34240);
      v141 = *v134;
      v142 = *v136;
      v143 = *v138;
      v144 = objc_allocWithZone(GDGraphDateRelationship);

      v145 = ObjCClassFromMetadata;
      v116 = sub_1ABC69E44(v198, v137, v140, v141, v142, v143);
      sub_1ABC6AA68(v132);
      v51 = v201;
      sub_1ABF24B94();
      sub_1ABC6C884();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      v117 += v197;
      v128 = (v145 - 1);
    }

    while (v128);
    v146 = v201[0];
    v120 = v186;
  }

  else
  {

    v146 = MEMORY[0x1E69E7CC0];
  }

  v147 = *v196;
  if (*(*v196 + 16))
  {
    sub_1ABA9F87C(MEMORY[0x1E69E7CC0]);
    sub_1ABF24BC4();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v148 = swift_getObjCClassFromMetadata();
    while (1)
    {
      sub_1ABA8A95C();
      if (v149)
      {
        break;
      }

      if (![objc_allocWithZone(v148) initWithValue_])
      {
        goto LABEL_107;
      }

      sub_1ABA8CEB4();
      sub_1ABAB6908();
      sub_1ABA894EC();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
    }

    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v198 = MEMORY[0x1E69E7CC0];
  ObjCClassFromMetadata = v146;
  v150 = *v120;
  v151 = *(*v120 + 16);
  v152 = MEMORY[0x1E69E7CC0];
  if (v151)
  {
    v201[0] = MEMORY[0x1E69E7CC0];
    sub_1ABC6C4AC();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v117 = swift_getObjCClassFromMetadata();
    v153 = 0;
    while (1)
    {
      sub_1ABA89C88();
      if (v149)
      {
        goto LABEL_101;
      }

      if (![objc_allocWithZone(v117) initWithValue_])
      {
        goto LABEL_108;
      }

      ++v153;
      sub_1ABF24B94();
      sub_1ABAB6908();
      sub_1ABA894EC();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (v151 == v153)
      {
        v152 = v201[0];
        break;
      }
    }
  }

  v154 = *v191;
  v155 = *(*v191 + 16);
  v156 = MEMORY[0x1E69E7CC0];
  if (v155)
  {
    v201[0] = MEMORY[0x1E69E7CC0];
    sub_1ABC6C4AC();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    v117 = swift_getObjCClassFromMetadata();
    v157 = 0;
    while (1)
    {
      sub_1ABA9F274();
      if (v149)
      {
        goto LABEL_102;
      }

      if (![objc_allocWithZone(v117) initWithValue_])
      {
        goto LABEL_109;
      }

      ++v157;
      sub_1ABF24B94();
      sub_1ABAB6908();
      sub_1ABA894EC();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (v155 == v157)
      {
        v156 = v201[0];
        break;
      }
    }
  }

  sub_1ABC6C670();
  v158 = MEMORY[0x1E69E7CC0];
  if (v155)
  {
    v201[0] = MEMORY[0x1E69E7CC0];
    sub_1ABC6C4AC();
    v159 = (v117 + 32);
    do
    {
      v160 = *v159++;
      sub_1ABC6C6E4([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_]);
      sub_1ABAB6908();
      sub_1ABC6C494();
      sub_1ABF24BA4();
      --v155;
    }

    while (v155);
    v158 = v201[0];
  }

  sub_1ABA9F5D0();
  v161 = v116[2];
  v162 = MEMORY[0x1E69E7CC0];
  if (v161)
  {
    v201[0] = MEMORY[0x1E69E7CC0];
    sub_1ABC6C4AC();
    v163 = (v116 + 4);
    do
    {
      v163 += 8;
      v164 = sub_1ABAA0D98(objc_allocWithZone(MEMORY[0x1E696AD98]));
      sub_1ABC6C6E4(v164);
      sub_1ABAB6908();
      sub_1ABC6C494();
      sub_1ABF24BA4();
      --v161;
    }

    while (v161);
    v162 = v201[0];
  }

  objc_allocWithZone(GDGraphActivityEvent);
  v176 = v198;
  v175 = ObjCClassFromMetadata;
  v174 = v188;
  v173 = v189;
  sub_1ABAA3CF0();
  v172 = v165;
  sub_1ABA8A034();
  v171 = v166;
  sub_1ABA9F6D8();
  v170 = v167;
  v169 = v178;
  sub_1ABA8A1D4();
  sub_1ABC67508(v185, v184, v182, v183, v181, v180, v190, v187, v168, v169, v170, v171, v172, v173, v174, v175, v176, v152, v156, v158, v162);
  sub_1ABA8B438();
}

id sub_1ABC501D0(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInteger_];
  }
}

id sub_1ABC5021C(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDouble_];
  }
}

void __swiftcall CustomGraphSportsGameEvent.toObjectiveCGraphObject()(GDGraphSportsGameEvent *__return_ptr retstr)
{
  sub_1ABA7E2A8();
  v6 = type metadata accessor for CustomGraphDateRelationship(0);
  sub_1ABA7BB64();
  v156[0] = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7BC58();
  sub_1ABA96A10();
  v9 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v10 = sub_1ABA7AB80(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7C068();
  v173 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v156 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v156 - v16;
  v18 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v18);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABC6C7D4();
  sub_1ABAFF390(0, &qword_1EB4D5F58, off_1E7960170);
  v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v21 = [v20 initWithValue_];
  if (!v21)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v172 = v14;
  v163 = v21;
  v168 = v2;
  v22 = *(v2 + 8);
  v23 = *(v22 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  v174 = v6;
  v177 = v17;
  v171 = v3;
  if (v23)
  {
    v170 = v5;
    v179 = MEMORY[0x1E69E7CC0];
    sub_1ABC6C608();
    v25 = v22 + 112;
    do
    {
      v26 = *(v25 - 56);
      v4 = *(v25 - 24);
      v175 = *(v25 - 32);
      v176 = v26;
      v27 = *(v25 - 16);
      v25 += 88;
      v28 = objc_allocWithZone(GDGraphIdentifierRelationship);

      v35 = sub_1ABC6C514(v176, v29, v175, v30, v31, v32, v33, v34, v27);
      sub_1ABC6C6AC(v35);
      sub_1ABA88ED0();
      sub_1ABC6C494();
      sub_1ABF24BA4();
      --v23;
    }

    while (v23);
    v24 = v179;
    v6 = v174;
    v17 = v177;
    v5 = v170;
  }

  v36 = v168;
  v38 = *(v168 + 24);
  v37 = *(v168 + 32);
  v166 = type metadata accessor for CustomGraphSportsGameEvent(0);
  v39 = v36 + v166[7];
  v40 = *(sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00) + 28);
  v165 = v39;
  sub_1ABB2E9FC(v39 + v40, v5, &qword_1EB4D5F20, &qword_1ABF4F358);
  v41 = sub_1ABA7E1E0(v5, 1, v6);
  v161 = v37;
  v162 = v24;
  v160 = v38;
  if (v41 == 1)
  {

    sub_1ABC6AAC4(v5, &qword_1EB4D5F20);
    v159 = 0;
  }

  else
  {
    v42 = v5 + *(v6 + 20);
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABC6C5E0();
    sub_1ABC6C5F0(v42 + v43, v17);
    v44 = sub_1ABC6C768();
    sub_1ABC6C5F0(v44, v172);
    v45 = sub_1ABC6C754();
    v4 = v173;
    sub_1ABC6C5F0(v45, v173);
    sub_1ABA9F7CC();
    v46 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA8D29C();

    sub_1ABA9EAB4();
    v159 = sub_1ABC69E44(v47, v48, v49, v50, v51, v52);
    sub_1ABC6AA68(v5);
  }

  v53 = v166;
  v54 = v168;
  v55 = *(v168 + v166[8]);
  v56 = *(v55 + 16);
  v57 = MEMORY[0x1E69E7CC0];
  if (v56)
  {
    v179 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v58 = 0;
    v175 = v56;
    v176 = v55 + 32;
    v59 = &qword_1EB4D5F28;
    while (1)
    {
      sub_1ABC6C748();
      if (v61)
      {
      }

      else
      {
        v62 = *(v60 + 24);
        sub_1ABAFF390(0, v59, off_1E795FFC8);
        v63 = objc_allocWithZone(swift_getObjCClassFromMetadata());

        if (![v63 initWithValue_])
        {
          goto LABEL_79;
        }
      }

      v64 = *(v4 + 16);
      if (v64)
      {
        break;
      }

LABEL_19:
      ++v58;
      v69 = objc_allocWithZone(GDGraphEventRelationship);
      sub_1ABC6C488();
      sub_1ABC69D04(v70, v71, v59, off_1E795FFC8);

      sub_1ABF24B94();
      sub_1ABC6C6C8();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (v58 == v56)
      {
        v57 = v179;
        v54 = v168;
        v53 = v166;
        goto LABEL_21;
      }
    }

    v178 = v57;
    sub_1ABF24BC4();
    v65 = v59;
    sub_1ABAFF390(0, v59, off_1E795FFC8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v67 = (v4 + 32);
    while (1)
    {
      v68 = *v67++;
      if (![objc_allocWithZone(ObjCClassFromMetadata) initWithValue_])
      {
        break;
      }

      sub_1ABF24B94();
      sub_1ABA9E944();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v64)
      {
        v57 = MEMORY[0x1E69E7CC0];
        v56 = v175;
        v59 = v65;
        goto LABEL_19;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

LABEL_21:
  v72 = *(v54 + v53[9]);
  v73 = *(v72 + 16);
  v74 = MEMORY[0x1E69E7CC0];
  v167 = v57;
  if (v73)
  {
    v179 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v75 = 0;
    v169 = v73;
    v170 = (v72 + 32);
    while (1)
    {
      v76 = &v170[8 * v75];
      v176 = v76[3];
      v77 = v76[4];
      v78 = v76[5];
      if (v76[7])
      {
        swift_bridgeObjectRetain_n();
      }

      else
      {
        v79 = sub_1ABA8CB08();
        sub_1ABAFF390(v79, &qword_1EB4D5F08, off_1E7960048);
        v80 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA960A4();
        swift_bridgeObjectRetain_n();

        v81 = sub_1ABA7C298();
        if (![v81 v82])
        {
          goto LABEL_80;
        }
      }

      v83 = *(v78 + 16);
      if (v83)
      {
        break;
      }

LABEL_32:
      ++v75;
      v87 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABC6C788();
      sub_1ABC69D78();
      sub_1ABA9F354();

      sub_1ABF24B94();
      sub_1ABA8965C();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v75 == v73)
      {
        v74 = v179;
        v57 = v167;
        v54 = v168;
        v53 = v166;
        goto LABEL_34;
      }
    }

    v175 = v77;
    v178 = MEMORY[0x1E69E7CC0];

    sub_1ABF24BC4();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v84 = swift_getObjCClassFromMetadata();
    v85 = (v78 + 32);
    while (1)
    {
      v86 = *v85++;
      if (![objc_allocWithZone(v84) initWithValue_])
      {
        goto LABEL_75;
      }

      sub_1ABF24B94();
      sub_1ABA9E944();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      if (!--v83)
      {
        v73 = v169;
        goto LABEL_32;
      }
    }
  }

LABEL_34:
  v88 = v54 + v53[10];
  v89 = *(v88 + 16);
  v166 = v88;
  if (v89)
  {
    v90 = 0;
  }

  else
  {
    v91 = *(v88 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v90 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v90)
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }
  }

  v92 = (v54 + v53[11]);
  v93 = *(v92 + 16);
  v164 = v92;
  if (v93)
  {
    v94 = 0;
LABEL_40:
    v156[1] = v94;
    v157 = v90;
    v158 = v74;
    v96 = *(v54 + v53[12]);
    v97 = v96[2];
    v98 = MEMORY[0x1E69E7CC0];
    if (v97)
    {
      v179 = MEMORY[0x1E69E7CC0];
      sub_1ABC6C718();
      v99 = 0;
      v169 = v97;
      v170 = v96 + 4;
      v100 = v97;
      while (1)
      {
        v101 = &v170[8 * v99];
        v102 = v101[4];
        v103 = v101[5];
        v104 = *(v101 + 56);
        v175 = v101[3];
        v176 = v102;
        if (v104)
        {
          sub_1ABC6C540();
        }

        else
        {
          v105 = sub_1ABA8CB08();
          sub_1ABAFF390(v105, &qword_1EB4D5F60, off_1E7960180);
          v106 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          sub_1ABA9E830();

          v107 = sub_1ABA7C298();
          if (![v107 v108])
          {
            goto LABEL_81;
          }
        }

        v109 = *(v103 + 16);
        if (v109)
        {
          break;
        }

        v96 = v98;
LABEL_51:
        ++v99;
        v113 = objc_allocWithZone(GDGraphAttendeeRelationship);
        v97 = v176;
        sub_1ABC6C788();
        sub_1ABC69D78();
        sub_1ABA9F354();

        sub_1ABF24B94();
        sub_1ABA8965C();
        sub_1ABA9E200();
        sub_1ABF24BA4();
        if (v99 == v100)
        {
          v170 = v179;
          v57 = v167;
          goto LABEL_54;
        }
      }

      v178 = v98;

      sub_1ABF24BC4();
      sub_1ABAFF390(0, &qword_1EB4D5F60, off_1E7960180);
      v110 = swift_getObjCClassFromMetadata();
      v111 = (v103 + 32);
      while (1)
      {
        v112 = *v111++;
        if (![objc_allocWithZone(v110) initWithValue_])
        {
          break;
        }

        sub_1ABF24B94();
        sub_1ABA9E944();
        sub_1ABC6C3E0();
        sub_1ABF24BA4();
        if (!--v109)
        {
          v96 = v178;
          v98 = MEMORY[0x1E69E7CC0];
          v100 = v169;
          goto LABEL_51;
        }
      }

LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v170 = MEMORY[0x1E69E7CC0];
LABEL_54:
    sub_1ABA8C5A8();
    v169 = v114;
    if (v97)
    {
      v179 = v98;

      sub_1ABC6C718();
      sub_1ABA935AC();
      v116 = v96 + v115;
      v175 = *(v117 + 72);
      do
      {
        v176 = v97;
        v118 = v171;
        sub_1ABC6AA04(v116, v171);
        v119 = v174;
        v96 = (v118 + *(v174 + 20));
        v120 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
        sub_1ABA952DC(v120);
        sub_1ABC6C67C();
        sub_1ABB2E9FC(v121, v122, v123, v124);
        v125 = (v118 + *(v119 + 24));
        v126 = v172;
        sub_1ABC6C67C();
        sub_1ABB2E9FC(v127, v128, v129, v130);
        v131 = (v118 + *(v119 + 28));
        sub_1ABC6C730();
        v132 = v173;
        sub_1ABC6C67C();
        sub_1ABB2E9FC(v133, v134, v135, v136);
        v137 = *v96;
        v138 = *v125;
        v139 = *v131;
        v140 = objc_allocWithZone(GDGraphDateRelationship);
        sub_1ABA9EFD8();

        v141 = v126;
        v142 = v176;
        sub_1ABC69E44(v177, v141, v132, v137, v138, v139);
        v143 = sub_1ABC6C688();
        sub_1ABC6AA68(v143);
        sub_1ABF24B94();
        sub_1ABC6C6C8();
        sub_1ABF24BE4();
        sub_1ABF24BA4();
        v116 += v175;
        v97 = v142 - 1;
      }

      while (v97);
      v144 = v179;
      v57 = v167;
    }

    else
    {

      v144 = MEMORY[0x1E69E7CC0];
    }

    v145 = *(*v166 + 16);
    v146 = MEMORY[0x1E69E7CC0];
    if (v145)
    {
      v179 = MEMORY[0x1E69E7CC0];
      sub_1ABC6C718();
      sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
      swift_getObjCClassFromMetadata();
      sub_1ABAB587C();
      while (1)
      {
        sub_1ABA8A95C();
        if (v147)
        {
          break;
        }

        if (![sub_1ABAA0CD0() initWithValue_])
        {
          goto LABEL_77;
        }

        ++v146;
        sub_1ABF24B94();
        sub_1ABA9ED44();
        sub_1ABF24BE4();
        sub_1ABF24BA4();
        if (v145 == v146)
        {
          v146 = v179;
          goto LABEL_65;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_65:
      v148 = *v164;
      v149 = *(*v164 + 16);
      v150 = MEMORY[0x1E69E7CC0];
      if (!v149)
      {
LABEL_71:
        objc_allocWithZone(GDGraphSportsGameEvent);
        v155 = v169;
        v154 = v170;
        sub_1ABA8A1D4();
        sub_1ABC678DC(v163, v162, v160, v161, v159, v57, v158, v157, v153, v154, v155, v144, v146, v150);
        sub_1ABA7BC1C();
        return;
      }

      v179 = MEMORY[0x1E69E7CC0];
      sub_1ABC6C718();
      sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
      v151 = swift_getObjCClassFromMetadata();
      v152 = 0;
      while (v152 < *(v148 + 16))
      {
        if (![objc_allocWithZone(v151) initWithValue_])
        {
          goto LABEL_78;
        }

        ++v152;
        sub_1ABF24B94();
        sub_1ABA9ED44();
        sub_1ABF24BE4();
        sub_1ABF24BA4();
        if (v149 == v152)
        {
          v150 = v179;
          v57 = v167;
          goto LABEL_71;
        }
      }
    }

    __break(1u);
    goto LABEL_74;
  }

  v95 = v92[1];
  sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
  v94 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (v94)
  {
    goto LABEL_40;
  }

LABEL_84:
  __break(1u);
}

void __swiftcall CustomGraphTransportationActivityEvent.toObjectiveCGraphObject()(GDGraphTransportationActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  type metadata accessor for CustomGraphDateRelationship(0);
  sub_1ABA8C0D0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA8F4D8();
  v9 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v10 = sub_1ABA7AB80(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7AC18();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA99440(v15, v16, v17, v18, v19, v20, v21, v22, v151[0]);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v151 - v24;
  v26 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v26);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABC6C7C0();
  sub_1ABAFF390(0, &qword_1EB4D5F68, off_1E79601B8);
  v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (!v28)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v29 = v28;
  v30 = v2[2];
  v31 = v2[3];
  v32 = type metadata accessor for CustomGraphTransportationActivityEvent(0);
  v173 = v2;
  v174 = v32;
  v33 = v2 + v32[6];
  v34 = *(sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00) + 28);
  v172 = v33;
  sub_1ABB2E9FC(v33 + v34, v1, &qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABAA5898();
  v179 = v13;
  v166 = v29;
  v165 = v30;
  v164 = v31;
  v178 = v5;
  v152 = v4;
  v151[1] = v7;
  if (v35)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
    v163 = 0;
    v40 = v180;
  }

  else
  {
    sub_1ABA89DD8();
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968();
    sub_1ABA9E550(v4 + v36, v25);
    v37 = sub_1ABAA3560();
    v38 = v180;
    sub_1ABA8B8D0(v37);
    v39 = sub_1ABAA3914();
    sub_1ABA9E550(v39, v179);
    sub_1ABA9F7CC();
    v40 = v38;
    v41 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();
    v13 = v179;

    sub_1ABA96094();
    v163 = sub_1ABC69E44(v42, v43, v44, v45, v46, v47);
    sub_1ABC6AA68(v1);
  }

  v48 = v173;
  v49 = *(v173 + v174[7]);
  v50 = *(v49 + 16);
  v51 = MEMORY[0x1E69E7CC0];
  v177 = v25;
  if (v50)
  {
    v184 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v13 = 0;
    v175 = v50;
    v176 = v49 + 32;
    while (1)
    {
      v52 = v176 + (v13 << 6);
      v182 = *(v52 + 24);
      v54 = *(v52 + 32);
      v53 = *(v52 + 40);
      if (*(v52 + 56))
      {
        swift_bridgeObjectRetain_n();
      }

      else
      {
        v55 = sub_1ABA8CB08();
        sub_1ABAFF390(v55, &qword_1EB4D5EF8, off_1E79600C8);
        v56 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABC6C5D4();
        swift_bridgeObjectRetain_n();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_95;
        }
      }

      v57 = *(v53 + 16);
      if (v57)
      {
        break;
      }

LABEL_16:
      ++v13;
      v61 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABC69D78();
      sub_1ABC6C688();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v13 == v50)
      {
        v51 = v184;
        v40 = v180;
        v48 = v173;
        goto LABEL_18;
      }
    }

    v181 = v54;
    v183 = MEMORY[0x1E69E7CC0];

    sub_1ABA88DF8();
    sub_1ABAFF390(0, &qword_1EB4D5EF8, off_1E79600C8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v59 = (v53 + 32);
    while (1)
    {
      v60 = *v59++;
      if (![objc_allocWithZone(ObjCClassFromMetadata) initWithValue_])
      {
        goto LABEL_89;
      }

      sub_1ABF24B94();
      sub_1ABC6C884();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v57)
      {
        v50 = v175;
        goto LABEL_16;
      }
    }
  }

LABEL_18:
  v62 = *(v48 + v174[8]);
  v63 = *(v62 + 16);
  v64 = MEMORY[0x1E69E7CC0];
  v162 = v51;
  if (v63)
  {
    v184 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v13 = 0;
    v175 = v63;
    v176 = v62 + 32;
    while (1)
    {
      v65 = v176 + (v13 << 6);
      v66 = *(v65 + 32);
      v67 = *(v65 + 40);
      v68 = *(v65 + 56);
      v181 = *(v65 + 24);
      v182 = v66;
      if (v68)
      {
        sub_1ABA8908C();
      }

      else
      {
        v69 = sub_1ABA8CB08();
        sub_1ABAFF390(v69, &qword_1EB4D5F08, off_1E7960048);
        v70 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_96;
        }
      }

      v71 = *(v67 + 16);
      if (v71)
      {
        break;
      }

LABEL_29:
      ++v13;
      v75 = objc_allocWithZone(GDGraphLocationRelationship);
      v51 = v182;
      sub_1ABC69D78();
      sub_1ABC6C688();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v13 == v63)
      {
        v76 = v184;
        v40 = v180;
        v48 = v173;
        goto LABEL_32;
      }
    }

    v183 = v64;

    sub_1ABA88DF8();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v72 = swift_getObjCClassFromMetadata();
    v73 = (v67 + 32);
    while (1)
    {
      v74 = *v73++;
      if (![objc_allocWithZone(v72) initWithValue_])
      {
        break;
      }

      sub_1ABF24B94();
      sub_1ABC6C884();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v71)
      {
        v64 = MEMORY[0x1E69E7CC0];
        v63 = v175;
        goto LABEL_29;
      }
    }

LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v76 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v77 = v48 + v174[9];
  if (*(v77 + 16))
  {
    v78 = 0;
  }

  else
  {
    v79 = *(v77 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v78 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v78)
    {
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }
  }

  v80 = v48 + v174[10];
  v81 = *(v80 + 16);
  v175 = v80;
  v176 = v77;
  if (v81)
  {
    v82 = 0;
  }

  else
  {
    v83 = *(v80 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v82 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v82)
    {
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
      return;
    }
  }

  v84 = v48 + v174[11];
  if ((*(v84 + 16) & 1) == 0)
  {
    v85 = *(v84 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_100;
    }
  }

  sub_1ABA89F20();
  v161 = v82;
  v160 = v86;
  v168 = v87;
  v171 = v84;
  if (!v35)
  {
    sub_1ABC6C3F8();
  }

  sub_1ABA9F4DC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v159 = sub_1ABAA045C();
  v89 = v173;
  v88 = v174;
  v90 = v173 + v174[13];
  v91 = *(v90 + 1);
  v169 = v90;
  v158 = sub_1ABC5021C(v91, v90[16]);
  v92 = v89 + v88[14];
  v93 = *(v92 + 1);
  v170 = v92;
  v157 = sub_1ABC5021C(v93, v92[16]);
  v94 = 0;
  v95 = v89 + v88[15];
  if ((v95[16] & 1) == 0)
  {
    v88 = *(v95 + 1);
    sub_1ABAFF390(0, &qword_1EB4D5F70, off_1E7960098);
    v94 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v94)
    {
      goto LABEL_101;
    }
  }

  v167 = v95;
  v155 = v94;
  v153 = v89 + v174[16];
  v96 = v153[8];
  if (v96 == 8)
  {
    v97 = 0;
  }

  else
  {
    v97 = qword_1ABF4FEF0[v96];
  }

  v156 = v78;
  v174 = v76;
  v154 = sub_1ABC501D0(v97, v96 == 8);
  sub_1ABAA154C();
  v173 = v98;
  if (v89)
  {
    v184 = MEMORY[0x1E69E7CC0];

    sub_1ABA9E6A8();
    sub_1ABA935AC();
    v100 = v88 + v99;
    v181 = *(v101 + 72);
    v102 = v152;
    do
    {
      v182 = v89;
      sub_1ABC6AA04(v100, v102);
      v103 = v178;
      v104 = (v102 + *(v178 + 20));
      sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      sub_1ABA8C968();
      sub_1ABB2E9FC(v104 + v105, v177, &qword_1EB4D9BF0, &qword_1ABF34240);
      v106 = (v102 + *(v103 + 24));
      sub_1ABB2E9FC(v106 + v82[7], v40, &qword_1EB4D9BF0, &qword_1ABF34240);
      v107 = (v102 + *(v103 + 28));
      sub_1ABB2E9FC(v107 + v82[7], v179, &qword_1EB4D9BF0, &qword_1ABF34240);
      v108 = *v104;
      v109 = *v106;
      v110 = *v107;
      v40 = v180;
      v111 = objc_allocWithZone(GDGraphDateRelationship);

      v112 = v182;
      sub_1ABAA2654();
      v51 = sub_1ABC69E44(v113, v114, v115, v108, v109, v110);
      sub_1ABC6AA68(v102);
      v82 = &v184;
      sub_1ABF24B94();
      v13 = v184[2];
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      v100 += v181;
      v89 = (v112 - 1);
    }

    while (v89);
    v116 = v184;
  }

  else
  {

    v116 = MEMORY[0x1E69E7CC0];
  }

  v117 = *(*v176 + 16);
  v118 = MEMORY[0x1E69E7CC0];
  if (v117)
  {
    sub_1ABA9F87C(MEMORY[0x1E69E7CC0]);
    sub_1ABF24BC4();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v89 = swift_getObjCClassFromMetadata();
    sub_1ABC6C4FC();
    while (1)
    {
      sub_1ABC6C508();
      if (v119)
      {
        break;
      }

      if (![objc_allocWithZone(v89) initWithValue_])
      {
        goto LABEL_91;
      }

      sub_1ABA8CEB4();
      sub_1ABAB6908();
      sub_1ABA894EC();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (v117 == v40)
      {
        v118 = v184;
        goto LABEL_58;
      }
    }

    __break(1u);
    goto LABEL_86;
  }

LABEL_58:
  v182 = v118;
  v120 = *(*v175 + 16);
  v121 = MEMORY[0x1E69E7CC0];
  if (v120)
  {
    sub_1ABA9F87C(MEMORY[0x1E69E7CC0]);
    sub_1ABF24BC4();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v89 = swift_getObjCClassFromMetadata();
    sub_1ABC6C4FC();
    while (1)
    {
      sub_1ABC6C508();
      if (v119)
      {
        break;
      }

      if (![objc_allocWithZone(v89) initWithValue_])
      {
        goto LABEL_92;
      }

      sub_1ABA8CEB4();
      sub_1ABAB6908();
      sub_1ABA894EC();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (v120 == v40)
      {
        v121 = v184;
        goto LABEL_64;
      }
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

LABEL_64:
  v180 = v121;
  v122 = *(*v171 + 16);
  v123 = MEMORY[0x1E69E7CC0];
  v181 = v116;
  if (v122)
  {
    v184 = MEMORY[0x1E69E7CC0];
    sub_1ABC6C4AC();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    v89 = swift_getObjCClassFromMetadata();
    sub_1ABC6C4FC();
    while (1)
    {
      sub_1ABC6C508();
      if (v119)
      {
        goto LABEL_87;
      }

      if (![objc_allocWithZone(v89) initWithValue_])
      {
        goto LABEL_93;
      }

      sub_1ABA8CEB4();
      sub_1ABAB6908();
      sub_1ABA894EC();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (v122 == v40)
      {
        v123 = v184;
        break;
      }
    }
  }

  sub_1ABC6C670();
  v124 = MEMORY[0x1E69E7CC0];
  if (v122)
  {
    sub_1ABA9F87C(MEMORY[0x1E69E7CC0]);
    sub_1ABF24BC4();
    v125 = v89 + 32;
    do
    {
      v126 = *v125++;
      sub_1ABC6C6E4([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_]);
      sub_1ABAB6908();
      sub_1ABC6C494();
      sub_1ABF24BA4();
      --v122;
    }

    while (v122);
    v124 = v184;
  }

  v179 = v124;
  sub_1ABC6C670();
  v178 = MEMORY[0x1E69E7CC0];
  sub_1ABC6C670();
  v177 = MEMORY[0x1E69E7CC0];
  v127 = *v167;
  v128 = *(*v167 + 16);
  v129 = MEMORY[0x1E69E7CC0];
  if (v128)
  {
    v176 = v123;
    v184 = MEMORY[0x1E69E7CC0];
    sub_1ABC6C4AC();
    sub_1ABAFF390(0, &qword_1EB4D5F70, off_1E7960098);
    v130 = swift_getObjCClassFromMetadata();
    v131 = 0;
    while (v131 < *(v127 + 16))
    {
      if (![objc_allocWithZone(v130) initWithValue_])
      {
        goto LABEL_94;
      }

      ++v131;
      sub_1ABF24B94();
      sub_1ABAB6908();
      sub_1ABA894EC();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (v128 == v131)
      {
        v129 = v184;
        v123 = v176;
        goto LABEL_80;
      }
    }

    goto LABEL_88;
  }

LABEL_80:
  sub_1ABA9F5D0();
  v132 = *(v51 + 2);
  v133 = MEMORY[0x1E69E7CC0];
  if (v132)
  {
    v184 = MEMORY[0x1E69E7CC0];
    sub_1ABC6C4AC();
    v134 = v51 + 32;
    do
    {
      v135 = *v134++;
      sub_1ABC6C6E4([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_]);
      sub_1ABAB6908();
      sub_1ABC6C494();
      sub_1ABF24BA4();
      --v132;
    }

    while (v132);
    v133 = v184;
  }

  objc_allocWithZone(GDGraphTransportationActivityEvent);
  v150 = v177;
  v149 = v178;
  v148 = v179;
  v147 = v180;
  v146 = v182;
  v145 = v181;
  v144 = v173;
  v143 = v154;
  v142 = v155;
  v141 = v157;
  sub_1ABAA3CF0();
  v140 = v136;
  sub_1ABA8A034();
  v139 = v137;
  sub_1ABA8A1D4();
  sub_1ABC67B68(v166, v165, v164, v163, v162, v174, v156, v161, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v123, v148, v149, v150, v129, v133);
  sub_1ABA8B438();
}

void __swiftcall CustomGraphWorkingActivityEvent.toObjectiveCGraphObject()(GDGraphWorkingActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  sub_1ABAA9198();
  sub_1ABA8C0D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA8F4D8();
  v9 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v10 = sub_1ABA7AB80(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7E77C(v11, v81);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA99440(v13, v14, v15, v16, v17, v18, v19, v20, v82);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA954CC();
  v22 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v22);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D5F78, off_1E7960220);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v24 = sub_1ABA90CF4();
  v25 = type metadata accessor for CustomGraphWorkingActivityEvent(v24);
  sub_1ABAA0EE8(v25);
  v26 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v26 + 28));
  sub_1ABAA5898();
  if (v27)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968();
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v28);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v29 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v30 = sub_1ABAA40C4();
    sub_1ABC6C440(v30);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v31)
      {
        sub_1ABA8908C();
      }

      else
      {
        v32 = sub_1ABAB5AC8();
        sub_1ABAFF390(v32, v33, off_1E79600C8);
        v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_78;
        }
      }

      v35 = v3[2];
      if (v35)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v38 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v36 = sub_1ABA8BCD4();
    sub_1ABAFF390(v36, v37, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v35)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_73;
  }

LABEL_18:
  sub_1ABAB510C();
  v39 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABA8CB08();
        sub_1ABAFF390(v41, &qword_1EB4D5F08, off_1E7960048);
        v42 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_79;
        }
      }

      v43 = v3[2];
      if (v43)
      {
        break;
      }

      v1 = v39;
LABEL_29:
      ++v5;
      v44 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v43)
      {
        v1 = v85;
        v39 = MEMORY[0x1E69E7CC0];
        v6 = v83;
        goto LABEL_29;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v47 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v46)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v48 & 1) == 0)
  {
    v49 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_82;
    }
  }

  sub_1ABAA1F6C();
  if ((v51 & 1) == 0)
  {
    v52 = *(v50 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_83;
    }
  }

  sub_1ABAB1118();
  if (v27)
  {
    v53 = 0;
  }

  else
  {
    v53 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v54 = sub_1ABAA045C();
  v55 = sub_1ABA97B70(v54);
  sub_1ABA80B88(v55);
  if (v3)
  {
    v86 = v39;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v56 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v57 = sub_1ABA90834(v56);
      sub_1ABB2E9FC(v57, v58, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v59 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v60 = sub_1ABA9F354();
      sub_1ABC6AA68(v60);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v27);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v61 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v62)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_75;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v46)
      {
        v61 = v86;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

LABEL_53:
  sub_1ABAA2640(v61);
  v63 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v62)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_76;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v63)
      {
        v63 = v86;
        goto LABEL_59;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_59:
  sub_1ABAA111C();
  v64 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    while (1)
    {
      sub_1ABA9F274();
      if (v62)
      {
        goto LABEL_72;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_77;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v7)
      {
        v64 = v86;
        break;
      }
    }
  }

  sub_1ABA8282C();
  v65 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v66 = sub_1ABA95120();
      sub_1ABAAD268(v66);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
    v65 = v86;
  }

  sub_1ABA7AD30();
  v67 = MEMORY[0x1E69E7CC0];
  objc_allocWithZone(GDGraphWorkingActivityEvent);
  v68 = sub_1ABA8F488();
  sub_1ABC67F50(v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v84, v63, v64, v65, v67);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphMeetingActivityEvent.toObjectiveCGraphObject()(GDGraphMeetingActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  sub_1ABAA9198();
  sub_1ABA8C0D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA8F4D8();
  v9 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v10 = sub_1ABA7AB80(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7E77C(v11, v81);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA99440(v13, v14, v15, v16, v17, v18, v19, v20, v82);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA954CC();
  v22 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v22);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D5F80, off_1E7960078);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v24 = sub_1ABA90CF4();
  v25 = type metadata accessor for CustomGraphMeetingActivityEvent(v24);
  sub_1ABAA0EE8(v25);
  v26 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v26 + 28));
  sub_1ABAA5898();
  if (v27)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968();
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v28);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v29 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v30 = sub_1ABAA40C4();
    sub_1ABC6C440(v30);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v31)
      {
        sub_1ABA8908C();
      }

      else
      {
        v32 = sub_1ABAB5AC8();
        sub_1ABAFF390(v32, v33, off_1E79600C8);
        v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_78;
        }
      }

      v35 = v3[2];
      if (v35)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v38 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v36 = sub_1ABA8BCD4();
    sub_1ABAFF390(v36, v37, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v35)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_73;
  }

LABEL_18:
  sub_1ABAB510C();
  v39 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABA8CB08();
        sub_1ABAFF390(v41, &qword_1EB4D5F08, off_1E7960048);
        v42 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_79;
        }
      }

      v43 = v3[2];
      if (v43)
      {
        break;
      }

      v1 = v39;
LABEL_29:
      ++v5;
      v44 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v43)
      {
        v1 = v85;
        v39 = MEMORY[0x1E69E7CC0];
        v6 = v83;
        goto LABEL_29;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v47 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v46)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v48 & 1) == 0)
  {
    v49 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_82;
    }
  }

  sub_1ABAA1F6C();
  if ((v51 & 1) == 0)
  {
    v52 = *(v50 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_83;
    }
  }

  sub_1ABAB1118();
  if (v27)
  {
    v53 = 0;
  }

  else
  {
    v53 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v54 = sub_1ABAA045C();
  v55 = sub_1ABA97B70(v54);
  sub_1ABA80B88(v55);
  if (v3)
  {
    v86 = v39;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v56 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v57 = sub_1ABA90834(v56);
      sub_1ABB2E9FC(v57, v58, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v59 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v60 = sub_1ABA9F354();
      sub_1ABC6AA68(v60);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v27);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v61 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v62)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_75;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v46)
      {
        v61 = v86;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

LABEL_53:
  sub_1ABAA2640(v61);
  v63 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v62)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_76;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v63)
      {
        v63 = v86;
        goto LABEL_59;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_59:
  sub_1ABAA111C();
  v64 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    while (1)
    {
      sub_1ABA9F274();
      if (v62)
      {
        goto LABEL_72;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_77;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v7)
      {
        v64 = v86;
        break;
      }
    }
  }

  sub_1ABA8282C();
  v65 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v66 = sub_1ABA95120();
      sub_1ABAAD268(v66);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
    v65 = v86;
  }

  sub_1ABA7AD30();
  v67 = MEMORY[0x1E69E7CC0];
  objc_allocWithZone(GDGraphMeetingActivityEvent);
  v68 = sub_1ABA8F488();
  sub_1ABC67F50(v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v84, v63, v64, v65, v67);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphEatingActivityEvent.toObjectiveCGraphObject()(GDGraphEatingActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  sub_1ABAA9198();
  sub_1ABA8C0D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA8F4D8();
  v9 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v10 = sub_1ABA7AB80(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7E77C(v11, v81);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA99440(v13, v14, v15, v16, v17, v18, v19, v20, v82);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA954CC();
  v22 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v22);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D5F88, off_1E795FFB0);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v24 = sub_1ABA90CF4();
  v25 = type metadata accessor for CustomGraphEatingActivityEvent(v24);
  sub_1ABAA0EE8(v25);
  v26 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v26 + 28));
  sub_1ABAA5898();
  if (v27)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968();
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v28);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v29 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v30 = sub_1ABAA40C4();
    sub_1ABC6C440(v30);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v31)
      {
        sub_1ABA8908C();
      }

      else
      {
        v32 = sub_1ABAB5AC8();
        sub_1ABAFF390(v32, v33, off_1E79600C8);
        v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_78;
        }
      }

      v35 = v3[2];
      if (v35)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v38 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v36 = sub_1ABA8BCD4();
    sub_1ABAFF390(v36, v37, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v35)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_73;
  }

LABEL_18:
  sub_1ABAB510C();
  v39 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABA8CB08();
        sub_1ABAFF390(v41, &qword_1EB4D5F08, off_1E7960048);
        v42 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_79;
        }
      }

      v43 = v3[2];
      if (v43)
      {
        break;
      }

      v1 = v39;
LABEL_29:
      ++v5;
      v44 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v43)
      {
        v1 = v85;
        v39 = MEMORY[0x1E69E7CC0];
        v6 = v83;
        goto LABEL_29;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v47 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v46)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v48 & 1) == 0)
  {
    v49 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_82;
    }
  }

  sub_1ABAA1F6C();
  if ((v51 & 1) == 0)
  {
    v52 = *(v50 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_83;
    }
  }

  sub_1ABAB1118();
  if (v27)
  {
    v53 = 0;
  }

  else
  {
    v53 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v54 = sub_1ABAA045C();
  v55 = sub_1ABA97B70(v54);
  sub_1ABA80B88(v55);
  if (v3)
  {
    v86 = v39;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v56 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v57 = sub_1ABA90834(v56);
      sub_1ABB2E9FC(v57, v58, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v59 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v60 = sub_1ABA9F354();
      sub_1ABC6AA68(v60);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v27);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v61 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v62)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_75;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v46)
      {
        v61 = v86;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

LABEL_53:
  sub_1ABAA2640(v61);
  v63 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v62)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_76;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v63)
      {
        v63 = v86;
        goto LABEL_59;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_59:
  sub_1ABAA111C();
  v64 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    while (1)
    {
      sub_1ABA9F274();
      if (v62)
      {
        goto LABEL_72;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_77;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v7)
      {
        v64 = v86;
        break;
      }
    }
  }

  sub_1ABA8282C();
  v65 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v66 = sub_1ABA95120();
      sub_1ABAAD268(v66);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
    v65 = v86;
  }

  sub_1ABA7AD30();
  v67 = MEMORY[0x1E69E7CC0];
  objc_allocWithZone(GDGraphEatingActivityEvent);
  v68 = sub_1ABA8F488();
  sub_1ABC67F50(v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v84, v63, v64, v65, v67);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphWatchingTVActivityEvent.toObjectiveCGraphObject()(GDGraphWatchingTVActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  sub_1ABAA9198();
  sub_1ABA8C0D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA8F4D8();
  v9 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v10 = sub_1ABA7AB80(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7E77C(v11, v81);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA99440(v13, v14, v15, v16, v17, v18, v19, v20, v82);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA954CC();
  v22 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v22);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D5F90, off_1E7960210);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v24 = sub_1ABA90CF4();
  v25 = type metadata accessor for CustomGraphWatchingTVActivityEvent(v24);
  sub_1ABAA0EE8(v25);
  v26 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v26 + 28));
  sub_1ABAA5898();
  if (v27)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968();
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v28);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v29 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v30 = sub_1ABAA40C4();
    sub_1ABC6C440(v30);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v31)
      {
        sub_1ABA8908C();
      }

      else
      {
        v32 = sub_1ABAB5AC8();
        sub_1ABAFF390(v32, v33, off_1E79600C8);
        v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_78;
        }
      }

      v35 = v3[2];
      if (v35)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v38 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v36 = sub_1ABA8BCD4();
    sub_1ABAFF390(v36, v37, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v35)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_73;
  }

LABEL_18:
  sub_1ABAB510C();
  v39 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABA8CB08();
        sub_1ABAFF390(v41, &qword_1EB4D5F08, off_1E7960048);
        v42 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_79;
        }
      }

      v43 = v3[2];
      if (v43)
      {
        break;
      }

      v1 = v39;
LABEL_29:
      ++v5;
      v44 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v43)
      {
        v1 = v85;
        v39 = MEMORY[0x1E69E7CC0];
        v6 = v83;
        goto LABEL_29;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v47 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v46)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v48 & 1) == 0)
  {
    v49 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_82;
    }
  }

  sub_1ABAA1F6C();
  if ((v51 & 1) == 0)
  {
    v52 = *(v50 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_83;
    }
  }

  sub_1ABAB1118();
  if (v27)
  {
    v53 = 0;
  }

  else
  {
    v53 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v54 = sub_1ABAA045C();
  v55 = sub_1ABA97B70(v54);
  sub_1ABA80B88(v55);
  if (v3)
  {
    v86 = v39;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v56 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v57 = sub_1ABA90834(v56);
      sub_1ABB2E9FC(v57, v58, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v59 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v60 = sub_1ABA9F354();
      sub_1ABC6AA68(v60);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v27);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v61 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v62)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_75;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v46)
      {
        v61 = v86;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

LABEL_53:
  sub_1ABAA2640(v61);
  v63 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v62)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_76;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v63)
      {
        v63 = v86;
        goto LABEL_59;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_59:
  sub_1ABAA111C();
  v64 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    while (1)
    {
      sub_1ABA9F274();
      if (v62)
      {
        goto LABEL_72;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_77;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v7)
      {
        v64 = v86;
        break;
      }
    }
  }

  sub_1ABA8282C();
  v65 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v66 = sub_1ABA95120();
      sub_1ABAAD268(v66);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
    v65 = v86;
  }

  sub_1ABA7AD30();
  v67 = MEMORY[0x1E69E7CC0];
  objc_allocWithZone(GDGraphWatchingTVActivityEvent);
  v68 = sub_1ABA8F488();
  sub_1ABC67F50(v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v84, v63, v64, v65, v67);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphCommunicatingActivityEvent.toObjectiveCGraphObject()(GDGraphCommunicatingActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  sub_1ABAA9198();
  sub_1ABA8C0D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA8F4D8();
  v9 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v10 = sub_1ABA7AB80(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7E77C(v11, v81);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA99440(v13, v14, v15, v16, v17, v18, v19, v20, v82);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA954CC();
  v22 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v22);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D5F98, off_1E795FF68);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v24 = sub_1ABA90CF4();
  v25 = type metadata accessor for CustomGraphCommunicatingActivityEvent(v24);
  sub_1ABAA0EE8(v25);
  v26 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v26 + 28));
  sub_1ABAA5898();
  if (v27)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968();
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v28);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v29 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v30 = sub_1ABAA40C4();
    sub_1ABC6C440(v30);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v31)
      {
        sub_1ABA8908C();
      }

      else
      {
        v32 = sub_1ABAB5AC8();
        sub_1ABAFF390(v32, v33, off_1E79600C8);
        v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_78;
        }
      }

      v35 = v3[2];
      if (v35)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v38 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v36 = sub_1ABA8BCD4();
    sub_1ABAFF390(v36, v37, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v35)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_73;
  }

LABEL_18:
  sub_1ABAB510C();
  v39 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABA8CB08();
        sub_1ABAFF390(v41, &qword_1EB4D5F08, off_1E7960048);
        v42 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_79;
        }
      }

      v43 = v3[2];
      if (v43)
      {
        break;
      }

      v1 = v39;
LABEL_29:
      ++v5;
      v44 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v43)
      {
        v1 = v85;
        v39 = MEMORY[0x1E69E7CC0];
        v6 = v83;
        goto LABEL_29;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v47 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v46)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v48 & 1) == 0)
  {
    v49 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_82;
    }
  }

  sub_1ABAA1F6C();
  if ((v51 & 1) == 0)
  {
    v52 = *(v50 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_83;
    }
  }

  sub_1ABAB1118();
  if (v27)
  {
    v53 = 0;
  }

  else
  {
    v53 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v54 = sub_1ABAA045C();
  v55 = sub_1ABA97B70(v54);
  sub_1ABA80B88(v55);
  if (v3)
  {
    v86 = v39;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v56 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v57 = sub_1ABA90834(v56);
      sub_1ABB2E9FC(v57, v58, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v59 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v60 = sub_1ABA9F354();
      sub_1ABC6AA68(v60);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v27);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v61 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v62)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_75;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v46)
      {
        v61 = v86;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

LABEL_53:
  sub_1ABAA2640(v61);
  v63 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v62)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_76;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v63)
      {
        v63 = v86;
        goto LABEL_59;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_59:
  sub_1ABAA111C();
  v64 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    while (1)
    {
      sub_1ABA9F274();
      if (v62)
      {
        goto LABEL_72;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_77;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v7)
      {
        v64 = v86;
        break;
      }
    }
  }

  sub_1ABA8282C();
  v65 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v66 = sub_1ABA95120();
      sub_1ABAAD268(v66);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
    v65 = v86;
  }

  sub_1ABA7AD30();
  v67 = MEMORY[0x1E69E7CC0];
  objc_allocWithZone(GDGraphCommunicatingActivityEvent);
  v68 = sub_1ABA8F488();
  sub_1ABC67F50(v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v84, v63, v64, v65, v67);
  sub_1ABA89A08();
  sub_1ABA8B438();
}