void static DocumentRegistration.Status.== infix(_:_:)()
{
  sub_18E15D880();
  v3 = v2;
  v5 = v4;
  v27 = sub_18E1A71A0();
  sub_18E159050();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  v10 = sub_18E15D988();
  type metadata accessor for DocumentRegistration.Status(v10);
  sub_18E159098();
  MEMORY[0x1EEE9AC00](v11, v12);
  sub_18E1590A8();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  sub_18E15D474();
  v18 = sub_18E161880(&qword_1EABD0518, &qword_18E1AA368);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v22 = &v26 - v21;
  v23 = &v26 + *(v20 + 56) - v21;
  sub_18E16C1DC(v5, &v26 - v21);
  sub_18E16C1DC(v3, v23);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_18E15D6D8();
    sub_18E16C1DC(v22, v1);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_5;
    }

LABEL_7:
    sub_18E16D540(v22, &qword_1EABD0518, &qword_18E1AA368);
    goto LABEL_8;
  }

  sub_18E15D6D8();
  sub_18E16C1DC(v22, v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v7 + 8))(v15, v27);
    goto LABEL_7;
  }

  v24 = v27;
  (*(v7 + 32))(v0, v23, v27);
  sub_18E1A7190();
  v25 = *(v7 + 8);
  v25(v0, v24);
  v25(v15, v24);
LABEL_5:
  sub_18E16D598(v22, type metadata accessor for DocumentRegistration.Status);
LABEL_8:
  sub_18E15BCD4();
}

uint64_t DocumentRegistration.Status.hash(into:)()
{
  sub_18E15933C();
  v2 = sub_18E1A71A0();
  sub_18E159050();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = sub_18E15D988();
  type metadata accessor for DocumentRegistration.Status(v7);
  sub_18E159098();
  MEMORY[0x1EEE9AC00](v8, v9);
  sub_18E15A808();
  v12 = v11 - v10;
  sub_18E15D6D8();
  sub_18E16C1DC(v0, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_18E15D618();
    v14(v13, v12, v2);
    MEMORY[0x193ACB0A0](1);
    sub_18E15B788();
    v17 = sub_18E16D788(v15, v16, MEMORY[0x1E69C6188]);
    sub_18E16DD3C(v17);
    return (*(v4 + 8))(v1, v2);
  }

  else
  {
    v19 = *(v12 + 8);
    v20 = *(v12 + 16);
    MEMORY[0x193ACB0A0](0);
    sub_18E1A7C90();
    MEMORY[0x193ACB0A0](v19);
    return MEMORY[0x193ACB0A0](v20);
  }
}

uint64_t sub_18E16D38C(uint64_t (*a1)(void *))
{
  sub_18E1A7C60();
  a1(v3);
  return sub_18E1A7CA0();
}

uint64_t sub_18E16D3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_18E1A7C60();
  a4(v6);
  return sub_18E1A7CA0();
}

GenerativeModelsFoundation::DocumentRegistration::Progress __swiftcall DocumentRegistration.Progress.init(progress:bytes:totalBytes:)(Swift::Float progress, Swift::UInt bytes, Swift::UInt totalBytes)
{
  *v3 = progress;
  *(v3 + 8) = bytes;
  *(v3 + 16) = totalBytes;
  result.totalBytes = totalBytes;
  result.bytes = bytes;
  result.progress = progress;
  return result;
}

uint64_t DocumentRegistration.Progress.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_18E1A7C90();
  MEMORY[0x193ACB0A0](v1);
  return MEMORY[0x193ACB0A0](v2);
}

uint64_t DocumentRegistration.Progress.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_18E1A7C60();
  sub_18E1A7C90();
  MEMORY[0x193ACB0A0](v1);
  MEMORY[0x193ACB0A0](v2);
  return sub_18E1A7CA0();
}

uint64_t sub_18E16D540(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_18E161880(a2, a3);
  sub_18E159098();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_18E16D598(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_18E159098();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_18E16D5F0(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_18E1A7C60();
  sub_18E1A7C90();
  MEMORY[0x193ACB0A0](v2);
  MEMORY[0x193ACB0A0](v3);
  return sub_18E1A7CA0();
}

uint64_t static DocumentRegistration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  static DocumentRegistration.Status.== infix(_:_:)();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DocumentRegistration(0);
  static DocumentRegistration.InternalStatus.== infix(_:_:)();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  return sub_18E1A6CF0();
}

uint64_t DocumentRegistration.hash(into:)(uint64_t a1)
{
  DocumentRegistration.Status.hash(into:)();
  type metadata accessor for DocumentRegistration(0);
  DocumentRegistration.InternalStatus.hash(into:)();
  sub_18E1A6D10();
  sub_18E159FF0();
  sub_18E16D788(v1, v2, MEMORY[0x1E6968FC0]);
  return sub_18E1A74D0();
}

uint64_t sub_18E16D788(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DocumentRegistration.hashValue.getter()
{
  sub_18E1A7C60();
  DocumentRegistration.Status.hash(into:)();
  type metadata accessor for DocumentRegistration(0);
  DocumentRegistration.InternalStatus.hash(into:)();
  sub_18E1A6D10();
  sub_18E159FF0();
  sub_18E16D788(v0, v1, MEMORY[0x1E6968FC0]);
  sub_18E1A74D0();
  return sub_18E1A7CA0();
}

uint64_t sub_18E16D888(uint64_t a1)
{
  sub_18E1A7C60();
  DocumentRegistration.Status.hash(into:)();
  DocumentRegistration.InternalStatus.hash(into:)();
  sub_18E1A6D10();
  sub_18E16D788(&qword_1EABD0520, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_18E1A74D0();
  return sub_18E1A7CA0();
}

unint64_t sub_18E16D9D0()
{
  result = qword_1EABD0538;
  if (!qword_1EABD0538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0538);
  }

  return result;
}

uint64_t sub_18E16DA98(uint64_t a1)
{
  result = type metadata accessor for DocumentRegistration.Status(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DocumentRegistration.InternalStatus(319);
    if (v3 <= 0x3F)
    {
      result = sub_18E1A6D10();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_18E16DB34(uint64_t a1)
{
  sub_18E16DBBC();
  if (v1 <= 0x3F)
  {
    sub_18E16DBE4();
    if (v2 <= 0x3F)
    {
      sub_18E16DC2C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

ValueMetadata *sub_18E16DBBC()
{
  result = qword_1EABD0568;
  if (!qword_1EABD0568)
  {
    result = &type metadata for DocumentRegistration.Progress;
    atomic_store(&type metadata for DocumentRegistration.Progress, &qword_1EABD0568);
  }

  return result;
}

void sub_18E16DBE4()
{
  if (!qword_1EABD0570)
  {
    v0 = sub_18E1A71A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EABD0570);
    }
  }
}

uint64_t sub_18E16DC2C()
{
  result = qword_1EABD0578;
  if (!qword_1EABD0578)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EABD0578);
  }

  return result;
}

void sub_18E16DC54(uint64_t a1)
{
  sub_18E16DBBC();
  if (v1 <= 0x3F)
  {
    sub_18E16DBE4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

__n128 initializeBufferWithCopyOfBuffer for DocumentRegistration.Progress(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DocumentRegistration.Progress(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DocumentRegistration.Progress(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_18E16DD3C(uint64_t a1)
{

  return sub_18E1A74D0();
}

uint64_t DocumentResource.url.getter@<X0>(uint64_t a1@<X8>)
{
  sub_18E1A6D10();
  sub_18E159098();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t DocumentResource.url.setter()
{
  sub_18E15A9FC();
  sub_18E1A6D10();
  sub_18E159098();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t type metadata accessor for DocumentResource(uint64_t a1)
{
  result = qword_1ED8DA2B8;
  if (!qword_1ED8DA2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DocumentResource.fileDescriptor.setter(int a1)
{
  result = type metadata accessor for DocumentResource(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

void (*DocumentResource.fileDescriptor.modify())()
{
  v0 = sub_18E15A9FC();
  type metadata accessor for DocumentResource(v0);
  return nullsub_1;
}

uint64_t DocumentResource.metadata.getter()
{
  type metadata accessor for DocumentResource(0);
}

uint64_t DocumentResource.metadata.setter()
{
  v2 = sub_18E15A9FC();
  v3 = *(type metadata accessor for DocumentResource(v2) + 24);

  *(v1 + v3) = v0;
  return result;
}

void (*DocumentResource.metadata.modify())()
{
  v0 = sub_18E15A9FC();
  type metadata accessor for DocumentResource(v0);
  return nullsub_1;
}

uint64_t DocumentResource.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18E1A6D10();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  sub_18E1A6D00();
  sub_18E1A75A0();

  v6 = sub_18E1A73A0();

  v7 = type metadata accessor for DocumentResource(0);
  *(a2 + *(v7 + 20)) = v6;
  if (v6 < 0)
  {
    v8 = sub_18E1A7490();
  }

  else
  {
    v8 = sub_18E16E114(v6);
  }

  v9 = v8;
  result = (*(v5 + 8))(a1, v4);
  *(a2 + *(v7 + 24)) = v9;
  return result;
}

void *sub_18E16E114(int a1)
{
  v2 = sub_18E1A7570();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v65[1] = v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a1;
  v5 = flistxattr(a1, 0, 0, 0);
  if (v5 < 0)
  {
    goto LABEL_41;
  }

  v6 = v5;
  v7 = sub_18E16E820(0, v5);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_18E19EAB0(0, *(v7 + 16), 0, v7);
    v7 = v8;
  }

  if (flistxattr(v68, (v7 + 32), v6, 0) < 0)
  {

LABEL_41:

    return sub_18E1A7490();
  }

  sub_18E16E890(0, 0x7FFFFFFFFFFFFFFFLL, 1, v7);
  v10 = v9;
  v11 = v9[2];
  if (!v11)
  {

    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_45;
  }

  v65[0] = v7;
  v69 = MEMORY[0x1E69E7CC0];
  sub_18E19B74C(0, v11, 0);
  v12 = 0;
  v13 = v69;
  v66 = v10;
  v67 = (v10 + 4);
  while (1)
  {
    if (v12 >= v10[2])
    {
      goto LABEL_68;
    }

    v14 = (v67 + 32 * v12);
    v15 = v14[1];
    v17 = v14[2];
    v16 = v14[3];
    v18 = v16 >> 1;
    if (v16)
    {
      sub_18E1A7BA0();
      swift_unknownObjectRetain_n();
      v23 = swift_dynamicCastClass();
      if (!v23)
      {
        swift_unknownObjectRelease();
        v23 = MEMORY[0x1E69E7CC0];
      }

      v24 = *(v23 + 16);

      v19 = v18 - v17;
      if (__OFSUB__(v18, v17))
      {
        goto LABEL_70;
      }

      if (v24 == v19)
      {
        v21 = swift_dynamicCastClass();
        if (v21)
        {
          goto LABEL_26;
        }

        swift_unknownObjectRelease();
LABEL_22:
        v21 = MEMORY[0x1E69E7CC0];
        goto LABEL_26;
      }

      swift_unknownObjectRelease();
      if (!v19)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v19 = v18 - v17;
      v20 = __OFSUB__(v18, v17);
      swift_unknownObjectRetain();
      if (v20)
      {
        goto LABEL_69;
      }

      if (!v19)
      {
        goto LABEL_22;
      }
    }

    if (v19 < 1)
    {
      v21 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_18E161880(&qword_1EABD05B0, qword_18E1AA668);
      v21 = swift_allocObject();
      v22 = j__malloc_size(v21);
      v21[2] = v19;
      v21[3] = 2 * v22 - 64;
    }

    if (v17 == v18)
    {
      goto LABEL_73;
    }

    memcpy(v21 + 4, (v15 + v17), v19);
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_18E19EAB0(0, v21[2] + 1, 1, v21);
      v21 = v35;
    }

    v26 = v21[2];
    v25 = v21[3];
    if (v26 >= v25 >> 1)
    {
      sub_18E19EAB0(v25 > 1, v26 + 1, 1, v21);
      v21 = v36;
    }

    v21[2] = v26 + 1;
    *(v21 + v26 + 32) = 0;
    if (*(v21 + 32))
    {
      break;
    }

LABEL_34:
    v29 = sub_18E1A75B0();
    v31 = v30;

    swift_unknownObjectRelease();
    v69 = v13;
    v33 = v13[2];
    v32 = v13[3];
    if (v33 >= v32 >> 1)
    {
      sub_18E19B74C(v32 > 1, v33 + 1, 1);
      v13 = v69;
    }

    ++v12;
    v13[2] = v33 + 1;
    v34 = &v13[2 * v33];
    v34[4] = v29;
    v34[5] = v31;
    v10 = v66;
    if (v12 == v11)
    {

LABEL_45:
      v38 = v13[2];
      if (!v38)
      {

        return MEMORY[0x1E69E7CC8];
      }

      v39 = MEMORY[0x1E69E7CC8];
      v66 = v13;
      for (i = v13 + 5; ; i += 2)
      {
        v41 = *(i - 1);
        v42 = *i;
        v43 = sub_18E1A75A0();

        v44 = fgetxattr(v68, (v43 + 32), 0, 0, 0, 0);

        if ((v44 & 0x8000000000000000) == 0)
        {
          if (v44)
          {
            v45 = sub_18E1A7690();
            *(v45 + 16) = v44;
            bzero((v45 + 32), v44);
          }

          else
          {
            v45 = MEMORY[0x1E69E7CC0];
          }

          v46 = sub_18E1A75A0();
          v47 = fgetxattr(v68, (v46 + 32), (v45 + 32), v44, 0, 0);

          if (v47 < 0)
          {
          }

          else
          {
            v69 = v45;
            sub_18E1A7560();
            sub_18E161880(&qword_1EABD0598, &qword_18E1AA658);
            sub_18E16F244();
            v48 = sub_18E1A7540();
            v50 = v49;

            if (v50)
            {
              v67 = v50;
              swift_isUniquelyReferenced_nonNull_native();
              v69 = v39;
              v51 = sub_18E159728(v41, v42);
              if (__OFADD__(v39[2], (v52 & 1) == 0))
              {
                goto LABEL_71;
              }

              v53 = v51;
              v54 = v52;
              sub_18E161880(&qword_1EABD05A8, &qword_18E1AA660);
              if (sub_18E1A7940())
              {
                v55 = sub_18E159728(v41, v42);
                if ((v54 & 1) != (v56 & 1))
                {
                  goto LABEL_74;
                }

                v53 = v55;
              }

              v39 = v69;
              if ((v54 & 1) == 0)
              {
                v69[(v53 >> 6) + 8] |= 1 << v53;
                v59 = (v39[6] + 16 * v53);
                *v59 = v41;
                v59[1] = v42;
                v60 = (v39[7] + 16 * v53);
                v61 = v67;
                *v60 = v48;
                v60[1] = v61;
                v62 = v39[2];
                v63 = __OFADD__(v62, 1);
                v64 = v62 + 1;
                if (v63)
                {
                  goto LABEL_72;
                }

                v39[2] = v64;
                goto LABEL_61;
              }

              v57 = (v69[7] + 16 * v53);
              v58 = v67;
              *v57 = v48;
              v57[1] = v58;
            }
          }
        }

LABEL_61:
        if (!--v38)
        {

          return v39;
        }
      }
    }
  }

  v27 = 0;
  while (v26 != v27)
  {
    if (!*(v21 + v27++ + 33))
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  result = sub_18E1A7BB0();
  __break(1u);
  return result;
}

uint64_t DocumentResource.init(_:_:_:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_18E1A6D10();
  sub_18E159098();
  (*(v8 + 32))(a4, a1);
  result = type metadata accessor for DocumentResource(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t sub_18E16E820(uint64_t result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    v4 = sub_18E1A7690();
    *(v4 + 16) = a2;
    memset((v4 + 32), v3, a2);
    return v4;
  }

  return result;
}

void sub_18E16E890(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 < 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    sub_18E19E9C8();
    v12 = v32;
LABEL_32:
    *(v12 + 16) = v5;
    v31 = (v12 + 32 * v10);
    v31[4] = v6;
    v31[5] = v7;
    v31[6] = v8;
    v31[7] = v9;
    return;
  }

  v5 = a4;
  v7 = a3;
  v9 = a2;
  v6 = *(a4 + 16);
  if (!a2 || !v6)
  {
    if (!v6 && (a3 & 1) != 0)
    {
LABEL_23:

      return;
    }

    v6 = sub_18E1A6C4C();
    v7 = v23;
    v8 = v24;
    v9 = v25;

    sub_18E19E9C8();
    v12 = v26;
    v10 = *(v26 + 16);
    v27 = *(v26 + 24);
LABEL_31:
    v5 = v10 + 1;
    if (v10 < v27 >> 1)
    {
      goto LABEL_32;
    }

    goto LABEL_35;
  }

  v8 = 0;
  v10 = result;
  v11 = a4 + 32;
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v13 = (2 * v8) | 1;
    v14 = v11 + v8;
    while (2)
    {
      v15 = 0;
      for (i = v13; ; i += 2)
      {
        if (!(v8 - v6 + v15))
        {
          goto LABEL_24;
        }

        if ((v8 + v15) >= *(v5 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        if (*(v14 + v15) == v10)
        {
          break;
        }

        ++v15;
      }

      if (!v15 && (v7 & 1) != 0)
      {
        ++v8;
        v13 += 2;
        ++v14;
        continue;
      }

      break;
    }

    v35 = v11;
    if (v8 < 0)
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_18E19E9C8();
      v12 = v20;
    }

    v11 = v35;
    v17 = *(v12 + 16);
    v18 = v17 + 1;
    if (v17 >= *(v12 + 24) >> 1)
    {
      v34 = v17 + 1;
      v21 = *(v12 + 16);
      sub_18E19E9C8();
      v17 = v21;
      v18 = v34;
      v11 = v35;
      v12 = v22;
    }

    *(v12 + 16) = v18;
    v19 = (v12 + 32 * v17);
    v19[4] = v5;
    v19[5] = v11;
    v19[6] = v8;
    v19[7] = i;
    v8 += v15 + 1;
    if (v18 == v9)
    {
LABEL_24:
      if (v8 == v6 && (v7 & 1) != 0)
      {
        goto LABEL_23;
      }

      if (v6 < v8)
      {
        __break(1u);
      }

      else
      {
        v6 = sub_18E1A6C4C();
        v7 = v28;
        v8 = v29;
        v9 = v30;

        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_30:
          v10 = *(v12 + 16);
          v27 = *(v12 + 24);
          goto LABEL_31;
        }
      }

      sub_18E19E9C8();
      v12 = v33;
      goto LABEL_30;
    }
  }

  __break(1u);
}

void static DocumentResource.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_18E1A6CF0())
  {
    v4 = type metadata accessor for DocumentResource(0);
    if (*(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20)))
    {
      v5 = *(v4 + 24);
      v6 = *(a1 + v5);
      v7 = *(a2 + v5);

      sub_18E16EBB8(v6, v7);
    }
  }
}

void sub_18E16EBB8(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v4 = a1 + 64;
    sub_18E1590B8();
    v8 = v7 & v6;
    v10 = (v9 + 63) >> 6;
    while (v8)
    {
      v11 = __clz(__rbit64(v8));
      v28 = (v8 - 1) & v8;
LABEL_11:
      v14 = v11 | (v3 << 6);
      v15 = v5;
      v16 = (*(v5 + 48) + 16 * v14);
      v17 = *v16;
      v18 = v16[1];
      v19 = (*(v5 + 56) + 16 * v14);
      v21 = *v19;
      v20 = v19[1];

      v22 = sub_18E159728(v17, v18);
      v24 = v23;

      if ((v24 & 1) == 0)
      {

        return;
      }

      v25 = (*(a2 + 56) + 16 * v22);
      if (*v25 == v21 && v25[1] == v20)
      {

        v5 = v15;
        v8 = v28;
      }

      else
      {
        v27 = sub_18E1A7B90();

        v5 = v15;
        v8 = v28;
        if ((v27 & 1) == 0)
        {
          return;
        }
      }
    }

    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v10)
      {
        return;
      }

      v13 = *(v4 + 8 * v3);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v28 = (v13 - 1) & v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t DocumentResource.hash(into:)(const void *a1)
{
  sub_18E1A6D10();
  sub_18E1594FC();
  sub_18E16F0EC(v3, v4, MEMORY[0x1E6968FC0]);
  sub_18E1A74D0();
  v5 = type metadata accessor for DocumentResource(0);
  sub_18E1A7C90();
  v6 = *(v1 + *(v5 + 24));

  return sub_18E16EF58(a1, v6);
}

uint64_t DocumentResource.hashValue.getter()
{
  sub_18E1A7C60();
  sub_18E1A6D10();
  sub_18E1594FC();
  sub_18E16F0EC(v1, v2, MEMORY[0x1E6968FC0]);
  sub_18E1A74D0();
  v3 = type metadata accessor for DocumentResource(0);
  sub_18E1A7C90();
  sub_18E16EF58(v5, *(v0 + *(v3 + 24)));
  return sub_18E1A7CA0();
}

uint64_t sub_18E16EEA0(uint64_t a1, uint64_t a2)
{
  sub_18E1A7C60();
  sub_18E1A6D10();
  sub_18E16F0EC(&qword_1EABD0520, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_18E1A74D0();
  sub_18E1A7C90();
  sub_18E16EF58(v5, *(v2 + *(a2 + 24)));
  return sub_18E1A7CA0();
}

uint64_t sub_18E16EF58(const void *a1, uint64_t a2)
{
  v2 = a2 + 64;
  sub_18E1590B8();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  if (v5)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x193ACB0A0](v9);
    }

    v5 = *(v2 + 8 * v11);
    ++v10;
    if (v5)
    {
      v10 = v11;
      do
      {
LABEL_7:
        v5 &= v5 - 1;
        memcpy(__dst, a1, sizeof(__dst));

        sub_18E1A75C0();

        sub_18E1A75C0();

        result = sub_18E1A7CA0();
        v9 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E16F0EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_18E16F15C(uint64_t a1)
{
  sub_18E1A6D10();
  if (v1 <= 0x3F)
  {
    sub_18E16F1E8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18E16F1E8()
{
  if (!qword_1ED8DA0D8[0])
  {
    v0 = sub_18E1A74B0();
    if (!v1)
    {
      atomic_store(v0, qword_1ED8DA0D8);
    }
  }
}

unint64_t sub_18E16F244()
{
  result = qword_1EABD05A0;
  if (!qword_1EABD05A0)
  {
    sub_18E169A64(&qword_1EABD0598, &qword_18E1AA658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD05A0);
  }

  return result;
}

GenerativeModelsFoundation::AccessGroup_optional __swiftcall AccessGroup.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_18E1A79E0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t AccessGroup.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000010;
  }
}

unint64_t sub_18E16F364()
{
  result = qword_1EABD05B8;
  if (!qword_1EABD05B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD05B8);
  }

  return result;
}

unint64_t sub_18E16F3DC@<X0>(unint64_t *a1@<X8>)
{
  result = AccessGroup.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_18E16F408()
{
  result = qword_1EABD05C0;
  if (!qword_1EABD05C0)
  {
    sub_18E169A64(&qword_1EABD05C8, &qword_18E1AA720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD05C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AccessGroup(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18E16F608()
{
  result = qword_1EABD05D0;
  if (!qword_1EABD05D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD05D0);
  }

  return result;
}

uint64_t DeleteDataRequest.key.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_18E16F6B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7247737365636361 && a2 == 0xEB0000000070756FLL;
  if (v4 || (sub_18E1A7B90() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7955819 && a2 == 0xE300000000000000;
    if (v6 || (sub_18E1A7B90() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x44497469647561 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_18E1A7B90();

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

uint64_t sub_18E16F7CC(char a1)
{
  if (!a1)
  {
    return 0x7247737365636361;
  }

  if (a1 == 1)
  {
    return 7955819;
  }

  return 0x44497469647561;
}

uint64_t sub_18E16F82C(uint64_t a1)
{
  v2 = *v1;
  sub_18E1A7C60();
  MEMORY[0x193ACB0A0](v2);
  return sub_18E1A7CA0();
}

uint64_t sub_18E16F878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E16F6B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E16F8A0(uint64_t a1)
{
  v2 = sub_18E16FADC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E16F8DC(uint64_t a1)
{
  v2 = sub_18E16FADC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DeleteDataRequest.encode(to:)(void *a1)
{
  v4 = sub_18E161880(&qword_1EABD05D8, &qword_18E1AA7E0);
  sub_18E159050();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v15 - v9;
  v11 = *v1;
  v12 = *(v1 + 1);
  v17 = *(v1 + 2);
  v18 = v12;
  v16 = *(v1 + 6);
  HIDWORD(v15) = v1[28];
  sub_18E158E00(a1, a1[3]);
  sub_18E16FADC();
  sub_18E1A7CD0();
  v23 = v11;
  v22 = 0;
  sub_18E16FB30();
  sub_18E1A7B30();
  if (!v2)
  {
    v13 = BYTE4(v15);
    v21 = 1;
    sub_18E1A7B00();
    v20 = 2;
    v19 = v13;
    sub_18E1A7AF0();
  }

  return (*(v6 + 8))(v10, v4);
}

unint64_t sub_18E16FADC()
{
  result = qword_1EABD05E0;
  if (!qword_1EABD05E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD05E0);
  }

  return result;
}

unint64_t sub_18E16FB30()
{
  result = qword_1EABD05E8;
  if (!qword_1EABD05E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD05E8);
  }

  return result;
}

uint64_t DeleteDataRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_18E161880(&qword_1EABD05F0, &qword_18E1AA7E8);
  sub_18E159050();
  MEMORY[0x1EEE9AC00](v5, v6);
  sub_18E158E00(a1, a1[3]);
  sub_18E16FADC();
  sub_18E1A7CC0();
  if (v2)
  {
    return sub_18E158EC4(a1);
  }

  sub_18E16FDA4();
  sub_18E1A7A80();
  v7 = sub_18E1A7A50();
  v13 = v8;
  v9 = sub_18E1A7A40();
  v10 = sub_18E159514();
  v11(v10);
  *a2 = v14;
  *(a2 + 8) = v7;
  *(a2 + 16) = v13;
  *(a2 + 24) = v9;
  *(a2 + 28) = BYTE4(v9) & 1;

  sub_18E158EC4(a1);
}

unint64_t sub_18E16FDA4()
{
  result = qword_1EABD05F8;
  if (!qword_1EABD05F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD05F8);
  }

  return result;
}

__n128 sub_18E16FE28(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_18E16FE3C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 29))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18E16FE7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 29) = 1;
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

    *(result + 29) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeleteDataRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18E16FFB4()
{
  result = qword_1EABD0600;
  if (!qword_1EABD0600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0600);
  }

  return result;
}

unint64_t sub_18E17000C()
{
  result = qword_1EABD0608;
  if (!qword_1EABD0608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0608);
  }

  return result;
}

unint64_t sub_18E170064()
{
  result = qword_1EABD0610;
  if (!qword_1EABD0610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0610);
  }

  return result;
}

uint64_t ReadDataRequest.key.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_18E170114(uint64_t a1)
{
  v2 = sub_18E17033C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E170150(uint64_t a1)
{
  v2 = sub_18E17033C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ReadDataRequest.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_18E159F44();
  v27 = v26;
  v28 = sub_18E161880(&qword_1EABD0628, &qword_18E1AA9B0);
  sub_18E159050();
  v30 = v29;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = v36 - v33;
  v35 = *(v24 + 8);
  v38 = *(v24 + 16);
  v39 = v35;
  v37 = *(v24 + 24);
  v36[1] = *(v24 + 28);
  sub_18E158E00(v27, v27[3]);
  sub_18E17033C();
  sub_18E1A7CD0();
  sub_18E16FB30();
  sub_18E1A7B30();
  if (!v25)
  {
    sub_18E1A7B00();
    sub_18E1A7AF0();
  }

  (*(v30 + 8))(v34, v28);
  sub_18E15A29C();
}

unint64_t sub_18E17033C()
{
  result = qword_1EABD0630;
  if (!qword_1EABD0630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0630);
  }

  return result;
}

void ReadDataRequest.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_18E159F44();
  v26 = v25;
  v28 = v27;
  sub_18E161880(&unk_1EABD0640, &qword_18E1AA9B8);
  sub_18E159050();
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v29, v30);
  sub_18E159FE0();
  sub_18E158E00(v26, v26[3]);
  sub_18E17033C();
  sub_18E1A7CC0();
  if (v24)
  {
    sub_18E158EC4(v26);
  }

  else
  {
    sub_18E16FDA4();
    sub_18E15AB78();
    sub_18E1A7A80();
    v31 = sub_18E1A7A50();
    v36 = v32;
    v33 = sub_18E1A7A40();
    v34 = sub_18E159514();
    v35(v34);
    *v28 = a14;
    *(v28 + 8) = v31;
    *(v28 + 16) = v36;
    *(v28 + 24) = v33;
    *(v28 + 28) = BYTE4(v33) & 1;

    sub_18E158EC4(v26);
  }

  sub_18E15A29C();
}

uint64_t static ReadDataResponse.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*(a1 + 8) >> 60 != 15)
  {
    if (v3 >> 60 != 15)
    {
      sub_18E17067C(*a2, a2[1]);
      v7 = sub_18E15D9A4();
      sub_18E17067C(v7, v8);
      v9 = sub_18E15D9A4();
      v4 = MEMORY[0x193ACA180](v9);
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v3 >> 60 != 15)
  {
LABEL_5:
    sub_18E17067C(*a2, a2[1]);
    v5 = sub_18E15D9A4();
    sub_18E17067C(v5, v6);
    v4 = 0;
    goto LABEL_7;
  }

  v4 = 1;
LABEL_7:
  v10 = sub_18E15D9A4();
  sub_18E1706E8(v10, v11);
  sub_18E1706E8(v2, v3);
  return v4 & 1;
}

uint64_t sub_18E17067C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_18E170690(a1, a2);
  }

  return a1;
}

uint64_t sub_18E170690(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_18E1706E8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_18E16BCA0(result, a2);
  }

  return result;
}

uint64_t sub_18E1706FC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_18E1A7B90() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_18E1A7B90();

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

uint64_t sub_18E1707CC(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_18E1707F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E1706FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E17081C(uint64_t a1)
{
  v2 = sub_18E170C44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E170858(uint64_t a1)
{
  v2 = sub_18E170C44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E170898(uint64_t a1)
{
  v2 = sub_18E170C98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E1708D4(uint64_t a1)
{
  v2 = sub_18E170C98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E170910(uint64_t a1)
{
  v2 = sub_18E170D40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E17094C(uint64_t a1)
{
  v2 = sub_18E170D40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ReadDataResponse.encode(to:)()
{
  sub_18E159F44();
  v2 = v1;
  sub_18E161880(&qword_1EABD0650, &qword_18E1AA9C0);
  sub_18E159050();
  v27 = v4;
  v28 = v3;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v5, v6);
  v26 = &v23 - v7;
  sub_18E161880(&qword_1EABD0658, &qword_18E1AA9C8);
  sub_18E159050();
  v24 = v9;
  v25 = v8;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v23 - v12;
  v14 = sub_18E161880(&qword_1EABD0660, &qword_18E1AA9D0);
  sub_18E159050();
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v15, v16);
  sub_18E159FE0();
  v17 = v0[1];
  v23 = *v0;
  sub_18E158E00(v2, v2[3]);
  sub_18E170C44();
  sub_18E1A7CD0();
  if (v17 >> 60 == 15)
  {
    LOBYTE(v29) = 0;
    sub_18E170D40();
    sub_18E15AB78();
    sub_18E1A7AD0();
    (*(v24 + 8))(v13, v25);
  }

  else
  {
    LOBYTE(v29) = 1;
    sub_18E170C98();
    v20 = v26;
    sub_18E15AB78();
    sub_18E1A7AD0();
    v29 = v23;
    v30 = v17;
    sub_18E170CEC();
    v21 = v28;
    sub_18E1A7B30();
    sub_18E15D03C();
    v22(v20, v21);
  }

  v18 = sub_18E15A818();
  v19(v18, v14);
  sub_18E15A29C();
}

unint64_t sub_18E170C44()
{
  result = qword_1EABD0668;
  if (!qword_1EABD0668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0668);
  }

  return result;
}

unint64_t sub_18E170C98()
{
  result = qword_1EABD0670;
  if (!qword_1EABD0670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0670);
  }

  return result;
}

unint64_t sub_18E170CEC()
{
  result = qword_1EABD0678;
  if (!qword_1EABD0678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0678);
  }

  return result;
}

unint64_t sub_18E170D40()
{
  result = qword_1EABD0680;
  if (!qword_1EABD0680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0680);
  }

  return result;
}

uint64_t ReadDataResponse.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8) >> 60 == 15)
  {
    return MEMORY[0x193ACB0A0](0);
  }

  MEMORY[0x193ACB0A0](1);

  return sub_18E1A6D70();
}

uint64_t ReadDataResponse.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_18E1A7C60();
  if (v1 >> 60 == 15)
  {
    MEMORY[0x193ACB0A0](0);
  }

  else
  {
    MEMORY[0x193ACB0A0](1);
    sub_18E1A6D70();
  }

  return sub_18E1A7CA0();
}

void ReadDataResponse.init(from:)()
{
  sub_18E159F44();
  v3 = v2;
  v46 = v4;
  v49 = sub_18E161880(&qword_1EABD0688, &qword_18E1AA9D8);
  sub_18E159050();
  v47 = v5;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v40[-v8];
  v10 = sub_18E161880(&qword_1EABD0690, &qword_18E1AA9E0);
  sub_18E159050();
  v45 = v11;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v12, v13);
  sub_18E159FE0();
  v14 = sub_18E161880(&qword_1EABD0698, &qword_18E1AA9E8);
  sub_18E159050();
  v48 = v15;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v40[-v18];
  sub_18E158E00(v3, v3[3]);
  sub_18E170C44();
  sub_18E1A7CC0();
  if (v0)
  {
    goto LABEL_8;
  }

  v42 = v10;
  v43 = v1;
  v44 = v9;
  v20 = v49;
  sub_18E1A7AA0();
  sub_18E15AF14();
  if (v22 == v23 >> 1)
  {
LABEL_7:
    v29 = sub_18E1A78C0();
    swift_allocError();
    v31 = v30;
    sub_18E161880(&qword_1EABD06A0, &qword_18E1AA9F0);
    *v31 = &type metadata for ReadDataResponse;
    sub_18E1A7A00();
    sub_18E1A78A0();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_18E15D03C();
    v32(v19, v14);
LABEL_8:
    v33 = v3;
LABEL_9:
    sub_18E158EC4(v33);
    sub_18E15A29C();
    return;
  }

  if (v22 < (v23 >> 1))
  {
    v41 = *(v21 + v22);
    sub_18E15AF84();
    v25 = v24;
    v27 = v26;
    swift_unknownObjectRelease();
    if (v25 == v27 >> 1)
    {
      if (v41)
      {
        LOBYTE(v50) = 1;
        sub_18E170C98();
        sub_18E1A79F0();
        v28 = v46;
        sub_18E171E48();
        sub_18E15AB78();
        sub_18E1A7A80();
        v35 = v48;
        swift_unknownObjectRelease();
        v37 = sub_18E15A818();
        v38(v37, v20);
        (*(v35 + 8))(v19, v14);
        v39 = v50;
      }

      else
      {
        LOBYTE(v50) = 0;
        sub_18E170D40();
        v34 = v43;
        sub_18E1A79F0();
        v28 = v46;
        swift_unknownObjectRelease();
        (*(v45 + 8))(v34, v42);
        sub_18E15D03C();
        v36(v19, v14);
        v39 = xmmword_18E1AA9A0;
      }

      *v28 = v39;
      v33 = v3;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_18E1713EC(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_18E1A7C60();
  if (v2 >> 60 == 15)
  {
    MEMORY[0x193ACB0A0](0);
  }

  else
  {
    MEMORY[0x193ACB0A0](1);
    sub_18E1A6D70();
  }

  return sub_18E1A7CA0();
}

id ReadDataResponseWrapper.__allocating_init(readDataResponse:)(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC26GenerativeModelsFoundation23ReadDataResponseWrapper_readDataResponse] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ReadDataResponseWrapper.init(readDataResponse:)(_OWORD *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC26GenerativeModelsFoundation23ReadDataResponseWrapper_readDataResponse] = *a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t static ReadDataResponseWrapper.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EABD0620 = a1;
  return result;
}

uint64_t sub_18E171628@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EABD0620;
  return result;
}

uint64_t sub_18E171674(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EABD0620 = v1;
  return result;
}

Swift::Void __swiftcall ReadDataResponseWrapper.encode(with:)(NSCoder with)
{
  sub_18E1A6CA0();
  swift_allocObject();
  sub_18E1A6C90();
  v8 = *(v1 + OBJC_IVAR____TtC26GenerativeModelsFoundation23ReadDataResponseWrapper_readDataResponse);
  v9 = *(v1 + OBJC_IVAR____TtC26GenerativeModelsFoundation23ReadDataResponseWrapper_readDataResponse + 8);
  sub_18E17067C(v8, v9);
  sub_18E171E9C();
  v3 = sub_18E1A6C80();
  v5 = v4;
  sub_18E1706E8(v8, v9);

  sub_18E171EF0();
  sub_18E170690(v3, v5);
  v6 = sub_18E171814(v3, v5);
  v7 = sub_18E1A7500();
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];

  sub_18E16BCA0(v3, v5);
}

id sub_18E171814(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_18E1A6D40();
  v6 = [v4 initWithData_];

  sub_18E16BCA0(a1, a2);
  return v6;
}

id ReadDataResponseWrapper.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_18E171EF0();
  v3 = sub_18E1A7770();
  if (v3)
  {
    v4 = v3;
    sub_18E1A6C70();
    swift_allocObject();
    sub_18E1A6C60();
    v5 = MEMORY[0x193ACA160](v4);
    v7 = v6;
    sub_18E171F34();
    sub_18E1A6C50();
    sub_18E16BCA0(v5, v7);

    v9 = v17;
    v10 = objc_allocWithZone(ObjectType);
    v11 = &v10[OBJC_IVAR____TtC26GenerativeModelsFoundation23ReadDataResponseWrapper_readDataResponse];
    *v11 = v16;
    *(v11 + 1) = v9;
    v15.receiver = v10;
    v15.super_class = ObjectType;
    v12 = objc_msgSendSuper2(&v15, sel_init);

    v13 = swift_getObjectType();
    sub_18E15A008(v13);
  }

  else
  {

    v8 = swift_getObjectType();
    sub_18E15A008(v8);
    return 0;
  }

  return v12;
}

void *ReadDataResponseWrapper.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = v1 + OBJC_IVAR____TtC26GenerativeModelsFoundation23ReadDataResponseWrapper_readDataResponse;
  v5 = *(v1 + OBJC_IVAR____TtC26GenerativeModelsFoundation23ReadDataResponseWrapper_readDataResponse);
  v6 = *(v4 + 8);
  v7 = objc_allocWithZone(ObjectType);
  v8 = &v7[OBJC_IVAR____TtC26GenerativeModelsFoundation23ReadDataResponseWrapper_readDataResponse];
  *v8 = v5;
  *(v8 + 1) = v6;
  v9 = sub_18E15D9A4();
  sub_18E17067C(v9, v10);
  v12.receiver = v7;
  v12.super_class = ObjectType;
  result = objc_msgSendSuper2(&v12, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t ReadDataResponseWrapper.description.getter()
{
  sub_18E1A7870();
  MEMORY[0x193ACAA20](0xD000000000000014, 0x800000018E1B21F0);
  sub_18E1A7930();
  MEMORY[0x193ACAA20](32032, 0xE200000000000000);
  return 0;
}

uint64_t ReadDataResponseWrapper.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26GenerativeModelsFoundation23ReadDataResponseWrapper_readDataResponse + 8);
  sub_18E1A7C60();
  if (v1 >> 60 == 15)
  {
    MEMORY[0x193ACB0A0](0);
  }

  else
  {
    MEMORY[0x193ACB0A0](1);
    sub_18E1A6D70();
  }

  return sub_18E1A7CA0();
}

id ReadDataResponseWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ReadDataResponseWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_18E171E48()
{
  result = qword_1EABD06A8;
  if (!qword_1EABD06A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD06A8);
  }

  return result;
}

unint64_t sub_18E171E9C()
{
  result = qword_1EABD06B8;
  if (!qword_1EABD06B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD06B8);
  }

  return result;
}

unint64_t sub_18E171EF0()
{
  result = qword_1EABD06C0;
  if (!qword_1EABD06C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EABD06C0);
  }

  return result;
}

unint64_t sub_18E171F34()
{
  result = qword_1EABD06C8;
  if (!qword_1EABD06C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD06C8);
  }

  return result;
}

unint64_t sub_18E171F8C()
{
  result = qword_1EABD06D0;
  if (!qword_1EABD06D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD06D0);
  }

  return result;
}

uint64_t sub_18E171FF0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_18E17200C(uint64_t a1)
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

uint64_t sub_18E172034(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18E172088(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void *sub_18E1720D8(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ReadDataResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ReadDataResponse.DataCodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for ReadDataRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18E1723F4()
{
  result = qword_1EABD07A0;
  if (!qword_1EABD07A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD07A0);
  }

  return result;
}

unint64_t sub_18E17244C()
{
  result = qword_1EABD07A8;
  if (!qword_1EABD07A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD07A8);
  }

  return result;
}

unint64_t sub_18E1724A4()
{
  result = qword_1EABD07B0;
  if (!qword_1EABD07B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD07B0);
  }

  return result;
}

unint64_t sub_18E1724FC()
{
  result = qword_1EABD07B8;
  if (!qword_1EABD07B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD07B8);
  }

  return result;
}

unint64_t sub_18E172554()
{
  result = qword_1EABD07C0;
  if (!qword_1EABD07C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD07C0);
  }

  return result;
}

unint64_t sub_18E1725AC()
{
  result = qword_1EABD07C8;
  if (!qword_1EABD07C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD07C8);
  }

  return result;
}

unint64_t sub_18E172604()
{
  result = qword_1EABD07D0;
  if (!qword_1EABD07D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD07D0);
  }

  return result;
}

unint64_t sub_18E17265C()
{
  result = qword_1EABD07D8;
  if (!qword_1EABD07D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD07D8);
  }

  return result;
}

unint64_t sub_18E1726B4()
{
  result = qword_1EABD07E0;
  if (!qword_1EABD07E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD07E0);
  }

  return result;
}

unint64_t sub_18E17270C()
{
  result = qword_1EABD07E8;
  if (!qword_1EABD07E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD07E8);
  }

  return result;
}

unint64_t sub_18E172764()
{
  result = qword_1EABD07F0;
  if (!qword_1EABD07F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD07F0);
  }

  return result;
}

uint64_t WriteDataRequest.key.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t WriteDataRequest.data.getter()
{
  v1 = *(v0 + 32);
  sub_18E170690(v1, *(v0 + 40));
  return v1;
}

uint64_t sub_18E172854(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7247737365636361 && a2 == 0xEB0000000070756FLL;
  if (v4 || (sub_18E1A7B90() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7974697275636573 && a2 == 0xED00006C6576654CLL;
    if (v6 || (sub_18E1A7B90() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 7955819 && a2 == 0xE300000000000000;
      if (v7 || (sub_18E1A7B90() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x44497469647561 && a2 == 0xE700000000000000;
        if (v8 || (sub_18E1A7B90() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 1635017060 && a2 == 0xE400000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_18E1A7B90();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_18E172A08(char a1)
{
  result = 0x7247737365636361;
  switch(a1)
  {
    case 1:
      result = 0x7974697275636573;
      break;
    case 2:
      result = 7955819;
      break;
    case 3:
      result = 0x44497469647561;
      break;
    case 4:
      result = 1635017060;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18E172AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E172854(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E172AD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E172A00();
  *a1 = result;
  return result;
}

uint64_t sub_18E172B00(uint64_t a1)
{
  v2 = sub_18E172DC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E172B3C(uint64_t a1)
{
  v2 = sub_18E172DC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WriteDataRequest.encode(to:)(void *a1)
{
  v4 = sub_18E161880(&qword_1EABD0860, &qword_18E1AB030);
  sub_18E159050();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v16 - v9;
  v11 = *v1;
  v24 = v1[1];
  v12 = *(v1 + 1);
  v20 = *(v1 + 2);
  v21 = v12;
  v19 = *(v1 + 6);
  v18 = v1[28];
  v13 = *(v1 + 5);
  v16 = *(v1 + 4);
  v17 = v13;
  sub_18E158E00(a1, a1[3]);
  sub_18E172DC0();
  sub_18E1A7CD0();
  LOBYTE(v22) = v11;
  v25 = 0;
  sub_18E16FB30();
  sub_18E1590D4();
  sub_18E1A7B30();
  if (!v2)
  {
    v14 = v18;
    LOBYTE(v22) = v24;
    v25 = 1;
    sub_18E172E14();
    sub_18E1590D4();
    sub_18E1A7B30();
    LOBYTE(v22) = 2;
    sub_18E1A7B00();
    LOBYTE(v22) = 3;
    v25 = v14;
    sub_18E1590D4();
    sub_18E1A7AF0();
    v22 = v16;
    v23 = v17;
    v25 = 4;
    sub_18E170690(v16, v17);
    sub_18E170CEC();
    sub_18E1590D4();
    sub_18E1A7B30();
    sub_18E16BCA0(v22, v23);
  }

  return (*(v6 + 8))(v10, v4);
}

unint64_t sub_18E172DC0()
{
  result = qword_1EABD0868;
  if (!qword_1EABD0868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0868);
  }

  return result;
}

unint64_t sub_18E172E14()
{
  result = qword_1EABD0870;
  if (!qword_1EABD0870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0870);
  }

  return result;
}

uint64_t WriteDataRequest.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_18E161880(&qword_1EABD0878, &qword_18E1AB038);
  sub_18E159050();
  MEMORY[0x1EEE9AC00](v5, v6);
  sub_18E158E00(a1, a1[3]);
  sub_18E172DC0();
  sub_18E1A7CC0();
  if (v2)
  {
    return sub_18E158EC4(a1);
  }

  LOBYTE(v24) = 0;
  sub_18E16FDA4();
  sub_18E15D6FC(&type metadata for AccessGroup, &v24);
  v7 = v27[0];
  LOBYTE(v24) = 1;
  sub_18E17312C();
  sub_18E15D6FC(&type metadata for SecurityLevel, &v24);
  v35 = v7;
  v8 = v27[0];
  sub_18E15AA08(2);
  v9 = sub_18E1A7A50();
  v11 = v10;
  v22 = v9;
  v23 = v8;
  sub_18E15AA08(3);
  v12 = sub_18E1A7A40();
  v13 = v12;
  v36 = BYTE4(v12) & 1;
  v37 = 4;
  sub_18E171E48();
  sub_18E15D6FC(MEMORY[0x1E6969080], &v37);
  v14 = sub_18E159524();
  v15(v14);
  v20 = *(&v34 + 1);
  v21 = v34;
  v16 = v35;
  LOBYTE(v24) = v35;
  BYTE1(v24) = v23;
  *(&v24 + 1) = v22;
  *&v25 = v11;
  DWORD2(v25) = v13;
  v17 = v36;
  BYTE12(v25) = v36;
  v26 = v34;
  v18 = v25;
  *a2 = v24;
  a2[1] = v18;
  a2[2] = v26;
  sub_18E173180(&v24, v27);
  sub_18E158EC4(a1);
  v27[0] = v16;
  v27[1] = v23;
  v28 = v22;
  v29 = v11;
  v30 = v13;
  v31 = v17;
  v32 = v21;
  v33 = v20;
  return sub_18E1731B8(v27);
}

unint64_t sub_18E17312C()
{
  result = qword_1EABD0880;
  if (!qword_1EABD0880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0880);
  }

  return result;
}

__n128 sub_18E173218(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_18E17322C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18E17326C(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for WriteDataRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WriteDataRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18E173430()
{
  result = qword_1EABD0888;
  if (!qword_1EABD0888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0888);
  }

  return result;
}

unint64_t sub_18E173488()
{
  result = qword_1EABD0890;
  if (!qword_1EABD0890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0890);
  }

  return result;
}

unint64_t sub_18E1734E0()
{
  result = qword_1EABD0898;
  if (!qword_1EABD0898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0898);
  }

  return result;
}

BOOL sub_18E173534(uint64_t a1, uint64_t a2)
{
  error[1] = *MEMORY[0x1E69E9840];
  v4 = SecTaskCreateFromSelf(0);
  if (!v4)
  {
    if (qword_1EABCFD70 != -1)
    {
      sub_18E159534(&qword_1EABCFD70);
    }

    v11 = sub_18E1A7360();
    v5 = sub_18E15A824(v11, qword_1EABCFD78);
    v12 = sub_18E1A7710();
    if (os_log_type_enabled(v5, v12))
    {
      *sub_18E15BCEC() = 0;
      sub_18E15D048(&dword_18E157000, v13, v14, "Failed to create sec task for checking entitlements");
      sub_18E1590E4();
    }

    goto LABEL_23;
  }

  v5 = v4;
  error[0] = 0;
  v6 = sub_18E1A7500();
  v7 = SecTaskCopyValueForEntitlement(v5, v6, error);

  if (!v7)
  {
    if (qword_1EABCFD70 != -1)
    {
      sub_18E159534(&qword_1EABCFD70);
    }

    v15 = sub_18E1A7360();
    v16 = sub_18E15A824(v15, qword_1EABCFD78);
    v17 = sub_18E1A7720();
    if (sub_18E15AA20(v17))
    {
      *sub_18E15BCEC() = 0;
      sub_18E15D9B0(&dword_18E157000, v18, v19, "Missing keychain-access-groups entitlement!");
      sub_18E1590E4();
    }

    goto LABEL_21;
  }

  v26[0] = v7;
  swift_unknownObjectRetain();
  sub_18E161880(&qword_1EABD08A0, &qword_18E1AB268);
  v8 = swift_dynamicCast();
  if (!v8)
  {
    if (qword_1EABCFD70 != -1)
    {
      sub_18E159534(&qword_1EABCFD70);
    }

    v20 = sub_18E1A7360();
    v21 = sub_18E15A824(v20, qword_1EABCFD78);
    v22 = sub_18E1A7720();
    if (sub_18E15AA20(v22))
    {
      v23 = sub_18E15BCEC();
      *v23 = 0;
      _os_log_impl(&dword_18E157000, v21, a1, "keychain-access-groups entitlement is present, but isn't an array of strings!", v23, 2u);
      sub_18E1590E4();
    }

    swift_unknownObjectRelease();
LABEL_21:
    if (error[0])
    {
    }

LABEL_23:

    return 0;
  }

  v26[0] = a1;
  v26[1] = a2;
  MEMORY[0x1EEE9AC00](v8, v9);
  v25[2] = v26;
  v10 = sub_18E173B2C(sub_18E173C08, v25, v26[2]);
  swift_unknownObjectRelease();

  if (error[0])
  {
  }

  return v10;
}

uint64_t sub_18E173848()
{
  error[1] = *MEMORY[0x1E69E9840];
  v0 = SecTaskCreateFromSelf(0);
  if (!v0)
  {
    if (qword_1EABCFD70 != -1)
    {
      sub_18E159534(&qword_1EABCFD70);
    }

    v5 = sub_18E1A7360();
    v1 = sub_18E15A824(v5, qword_1EABCFD78);
    v6 = sub_18E1A7710();
    if (os_log_type_enabled(v1, v6))
    {
      *sub_18E15BCEC() = 0;
      sub_18E15D048(&dword_18E157000, v7, v8, "Failed to create sec task for checking entitlements");
      sub_18E1590E4();
    }

    goto LABEL_23;
  }

  v1 = v0;
  error[0] = 0;
  v2 = sub_18E1A7500();
  v3 = SecTaskCopyValueForEntitlement(v1, v2, error);

  if (!v3)
  {
    if (qword_1EABCFD70 != -1)
    {
      sub_18E159534(&qword_1EABCFD70);
    }

    v9 = sub_18E1A7360();
    v10 = sub_18E15A824(v9, qword_1EABCFD78);
    v11 = sub_18E1A7720();
    if (sub_18E15AA20(v11))
    {
      *sub_18E15BCEC() = 0;
      sub_18E15D9B0(&dword_18E157000, v12, v13, "Missing com.apple.generativeexperiences.ExternalPartnerCredentialStorage entitlement!");
      sub_18E1590E4();
    }

    goto LABEL_21;
  }

  swift_unknownObjectRetain();
  if (!swift_dynamicCast())
  {
    if (qword_1EABCFD70 != -1)
    {
      sub_18E159534(&qword_1EABCFD70);
    }

    v14 = sub_18E1A7360();
    v15 = sub_18E15A824(v14, qword_1EABCFD78);
    v16 = sub_18E1A7720();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = sub_18E15BCEC();
      *v17 = 0;
      _os_log_impl(&dword_18E157000, v15, v16, "com.apple.generativeexperiences.ExternalPartnerCredentialStorage entitlement is present, but isn't a BOOLean value!", v17, 2u);
      sub_18E1590E4();
    }

    swift_unknownObjectRelease();
LABEL_21:
    if (error[0])
    {
    }

LABEL_23:

    return 0;
  }

  swift_unknownObjectRelease();
  v4 = v19;
  if (error[0])
  {
  }

  return v4;
}

uint64_t sub_18E173AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_18E1A7B90() & 1;
  }
}

BOOL sub_18E173B2C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_18E173C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v5[0] = a1;
  v5[1] = a2;
  return a4(v5, a3);
}

uint64_t sub_18E173C64(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_18E1A6D60();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_18E1706E8(v4, v8);
}

uint64_t *sub_18E173D24()
{
  if (qword_1EABD0270 != -1)
  {
    sub_18E159554(&qword_1EABD0270);
  }

  return &qword_1EABD08A8;
}

id static ExternalPartnerCredentialStorageXPCService.interface.getter()
{
  if (qword_1EABD0270 != -1)
  {
    sub_18E159554(&qword_1EABD0270);
  }

  sub_18E15D8E8(&qword_1EABD08A8, v2);
  v0 = qword_1EABD08A8;

  return v0;
}

void static ExternalPartnerCredentialStorageXPCService.interface.setter(uint64_t a1)
{
  v1 = a1;
  if (qword_1EABD0270 != -1)
  {
    a1 = sub_18E159554(&qword_1EABD0270);
  }

  sub_18E15BC90(a1);
  v2 = qword_1EABD08A8;
  qword_1EABD08A8 = v1;
}

uint64_t static ExternalPartnerCredentialStorageXPCService.interface.modify()
{
  if (qword_1EABD0270 != -1)
  {
    sub_18E159554(&qword_1EABD0270);
  }

  sub_18E15D968();
  return sub_18E15D874();
}

id sub_18E173E94@<X0>(void *a1@<X8>)
{
  sub_18E173D24();
  swift_beginAccess();
  v2 = qword_1EABD08A8;
  *a1 = qword_1EABD08A8;

  return v2;
}

void sub_18E173EF4(id *a1)
{
  v1 = *a1;
  sub_18E173D24();
  swift_beginAccess();
  v2 = qword_1EABD08A8;
  qword_1EABD08A8 = v1;
}

uint64_t sub_18E174008()
{
  sub_18E161880(&qword_1EABD0928, &unk_18E1AB510);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18E1AB270;
  *(v0 + 32) = sel_readDataWithRequestData_with_;
  *(v0 + 40) = 0;
  sub_18E161880(&qword_1EABD0930, &qword_18E1B0B10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18E1AB270;
  DataResponseWrapper = type metadata accessor for ReadDataResponseWrapper();
  *(v1 + 56) = sub_18E161880(&qword_1EABD0938, &qword_18E1AB520);
  *(v1 + 32) = DataResponseWrapper;
  sub_18E17678C(0, &qword_1EABD0940, 0x1E695DFD8);
  v3 = MEMORY[0x193ACAB90](v1);
  sub_18E17678C(0, &qword_1EABD0948, 0x1E69E58C0);
  sub_18E1767CC();
  v4 = sub_18E1A76E0();

  v5 = sub_18E17414C(v4);

  *(v0 + 48) = v5;
  qword_1EABD08D0 = v0;
  return result;
}

uint64_t sub_18E17414C(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_18E1A77F0())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x1E69E7CD0];
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_18E161880(&qword_1EABD0958, &qword_18E1AB528);
  v3 = sub_18E1A7840();
  if (v2)
  {
LABEL_4:

    sub_18E1A77E0();
    sub_18E17678C(0, &qword_1EABD0948, 0x1E69E58C0);
    sub_18E1767CC();
    result = sub_18E1A76F0();
    v1 = v30;
    v5 = v31;
    v6 = v32;
    v7 = v33;
    v8 = v34;
    goto LABEL_11;
  }

LABEL_7:
  v9 = -1 << *(v1 + 32);
  v5 = v1 + 56;
  v6 = ~v9;
  v10 = -v9;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v8 = v11 & *(v1 + 56);

  v7 = 0;
LABEL_11:
  v12 = v3 + 56;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (v8)
  {
    v13 = v7;
LABEL_21:
    v16 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v17 = *(*(v1 + 48) + ((v13 << 9) | (8 * v16)));
    while (1)
    {
      sub_18E17678C(0, &qword_1EABD0948, 0x1E69E58C0);
      swift_dynamicCast();
      result = sub_18E1A7810();
      v18 = -1 << *(v3 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        break;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_31:
      *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v26 = *(v3 + 48) + 40 * v21;
      *(v26 + 32) = v29;
      *v26 = v27;
      *(v26 + 16) = v28;
      ++*(v3 + 16);
      if ((v1 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_14:
      v14 = sub_18E1A7800();
      if (!v14)
      {
        goto LABEL_33;
      }

      *&v27 = v14;
      sub_18E17678C(0, &qword_1EABD0948, 0x1E69E58C0);
      swift_dynamicCast();
    }

    v22 = 0;
    v23 = (63 - v18) >> 6;
    while (++v20 != v23 || (v22 & 1) == 0)
    {
      v24 = v20 == v23;
      if (v20 == v23)
      {
        v20 = 0;
      }

      v22 |= v24;
      v25 = *(v12 + 8 * v20);
      if (v25 != -1)
      {
        v21 = __clz(__rbit64(~v25)) + (v20 << 6);
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = v7;
    while (1)
    {
      v13 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v13 >= ((v6 + 64) >> 6))
      {
LABEL_33:
        sub_18E176834(v1);

        return v3;
      }

      v8 = *(v5 + 8 * v13);
      ++v15;
      if (v8)
      {
        v7 = v13;
        goto LABEL_21;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_18E1744C4()
{
  if (qword_1EABD0278 != -1)
  {
    sub_18E15D71C(&qword_1EABD0278);
  }

  return &qword_1EABD08D0;
}

uint64_t static ExternalPartnerCredentialStorageXPCService.selectorClasses.getter()
{
  if (qword_1EABD0278 != -1)
  {
    sub_18E15D71C(&qword_1EABD0278);
  }

  sub_18E15D8E8(&qword_1EABD08D0, v1);
}

uint64_t static ExternalPartnerCredentialStorageXPCService.selectorClasses.setter(uint64_t a1)
{
  v1 = a1;
  if (qword_1EABD0278 != -1)
  {
    a1 = sub_18E15D71C(&qword_1EABD0278);
  }

  sub_18E15BC90(a1);
  qword_1EABD08D0 = v1;
}

uint64_t static ExternalPartnerCredentialStorageXPCService.selectorClasses.modify()
{
  if (qword_1EABD0278 != -1)
  {
    sub_18E15D71C(&qword_1EABD0278);
  }

  sub_18E15D968();
  return sub_18E15D874();
}

uint64_t sub_18E174628@<X0>(void *a1@<X8>)
{
  sub_18E1744C4();
  swift_beginAccess();
  *a1 = qword_1EABD08D0;
}

uint64_t sub_18E17467C(uint64_t *a1)
{
  v1 = *a1;

  sub_18E1744C4();
  swift_beginAccess();
  qword_1EABD08D0 = v1;
}

uint64_t sub_18E1746D8()
{
  v0 = sub_18E1A7360();
  sub_18E16BD84(v0, qword_1EABD08D8);
  v1 = sub_18E1592FC(v0, qword_1EABD08D8);
  if (qword_1ED8D9B48 != -1)
  {
    swift_once();
  }

  v2 = sub_18E1592FC(v0, qword_1ED8D9780);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_18E1747A0()
{
  if (qword_1EABD0280 != -1)
  {
    sub_18E1590FC(&qword_1EABD0280);
  }

  v0 = sub_18E1A7360();

  return sub_18E1592FC(v0, qword_1EABD08D8);
}

uint64_t static ExternalPartnerCredentialStorageXPCService.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EABD0280 != -1)
  {
    sub_18E1590FC(&qword_1EABD0280);
  }

  v2 = sub_18E1A7360();
  v3 = sub_18E1592FC(v2, qword_1EABD08D8);
  sub_18E15D8E8(v3, v5);
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static ExternalPartnerCredentialStorageXPCService.logger.setter(uint64_t a1)
{
  if (qword_1EABD0280 != -1)
  {
    sub_18E1590FC(&qword_1EABD0280);
  }

  v2 = sub_18E1A7360();
  v3 = sub_18E1592FC(v2, qword_1EABD08D8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t static ExternalPartnerCredentialStorageXPCService.logger.modify(uint64_t a1)
{
  if (qword_1EABD0280 != -1)
  {
    sub_18E1590FC(&qword_1EABD0280);
  }

  v1 = sub_18E1A7360();
  sub_18E1592FC(v1, qword_1EABD08D8);
  swift_beginAccess();
  return sub_18E15D874();
}

uint64_t sub_18E174A00@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18E1747A0();
  swift_beginAccess();
  v3 = sub_18E1A7360();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_18E174A7C(uint64_t a1)
{
  v2 = sub_18E1747A0();
  swift_beginAccess();
  v3 = sub_18E1A7360();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t ExternalParterCredentialStorageError.hashValue.getter()
{
  sub_18E1A7C60();
  MEMORY[0x193ACB0A0](0);
  return sub_18E1A7CA0();
}

uint64_t sub_18E174C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ExternalPartnerCredentialStorageXPCClient.Delegate();

  return MEMORY[0x1EEE2EE60](a1, v5, a3);
}

uint64_t ExternalPartnerCredentialStorageXPCClient.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ExternalPartnerCredentialStorageXPCClient.Delegate();
  a1[1] = swift_allocObject();
  sub_18E176524(&qword_1EABCFCA0, type metadata accessor for ExternalPartnerCredentialStorageXPCClient.Delegate, &unk_18E1AB4B4);
  sub_18E161880(&qword_1EABD08F0, &qword_18E1AB280);
  swift_allocObject();

  v2 = sub_18E1A7130();
  sub_18E161880(&qword_1EABD08F8, &unk_18E1AB288);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v2;
  *a1 = result;
  return result;
}

uint64_t sub_18E174D70(char *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v18[2] = a3;
  v18[1] = a2;
  v20[2] = *MEMORY[0x1E69E9840];
  v6 = sub_18E1A7240();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *v4;
  v18[0] = *(v4 + 8);
  (*(v7 + 104))(v10, *MEMORY[0x1E69A0B38], v6);
  v13 = sub_18E1A7220();
  v14 = sub_18E1A7230();
  v15 = _os_activity_create(&dword_18E157000, "ExternalPartnerCredentialStorageXPCClient.readData()", v13, v14);
  swift_unknownObjectRelease();
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v15, &state);
  v16 = v18[3];
  sub_18E174F6C(v11, v12, v20);
  os_activity_scope_leave(&state);
  swift_unknownObjectRelease();
  if (v16)
  {
    return (*(v7 + 8))(v10, v6);
  }

  (*(v7 + 8))(v10, v6);
  return v20[0];
}

void sub_18E174F6C(char a1@<W0>, os_unfair_lock_s *a5@<X4>, uint64_t a6@<X8>)
{
  sub_18E1A6CA0();
  swift_allocObject();

  sub_18E1A6C90();
  LOBYTE(v17) = a1 & 1;
  sub_18E1766DC();
  v10 = sub_18E1A6C80();
  v12 = v11;

  if (!v6)
  {
    MEMORY[0x1EEE9AC00](v13, v14);
    os_unfair_lock_lock(a5 + 6);
    sub_18E176730(&a5[4]);
    os_unfair_lock_unlock(a5 + 6);
    sub_18E16BCA0(v10, v12);
    v15 = *&v17[OBJC_IVAR____TtC26GenerativeModelsFoundation23ReadDataResponseWrapper_readDataResponse];
    v16 = *&v17[OBJC_IVAR____TtC26GenerativeModelsFoundation23ReadDataResponseWrapper_readDataResponse + 8];
    sub_18E17067C(v15, v16);

    if (v16 >> 60 == 15)
    {
      *a6 = xmmword_18E1AA9A0;
    }

    else
    {
      *a6 = v15;
      *(a6 + 8) = v16;
    }
  }
}

uint64_t sub_18E17516C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  sub_18E17520C(a4, a5, sub_18E176754, v10, a1);
}

void sub_18E17520C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_18E1A6D40();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_18E1752E0;
  v10[3] = &unk_1F01036C0;
  v9 = _Block_copy(v10);

  [a5 readDataWithRequestData:v8 with:v9];
  _Block_release(v9);
}

void sub_18E1752E0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_18E1753BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, SEL *a9)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;

  sub_18E175768(a4, a5, a7, v16, a1, a8, a9);
}

uint64_t sub_18E17546C(char *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v9 = sub_18E1A7240();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v30[0] = *v4;
  v15 = *MEMORY[0x1E69A0B38];
  v16 = *(v10 + 104);
  v31 = v17;
  v16(v13, v15);
  v18 = sub_18E1A7220();
  v19 = sub_18E1A7230();
  v20 = _os_activity_create(&dword_18E157000, "ExternalPartnerCredentialStorageXPCClient.deleteData()", v18, v19);
  swift_unknownObjectRelease();
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v20, &state);
  sub_18E1A6CA0();
  swift_allocObject();

  sub_18E1A6C90();
  LOBYTE(v33) = v14;
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v37 = BYTE4(a4) & 1;
  sub_18E17656C();
  v21 = v30[1];
  v22 = sub_18E1A6C80();
  if (v21)
  {
  }

  else
  {
    v24 = v22;
    v25 = v23;

    MEMORY[0x1EEE9AC00](v26, v27);
    v30[-2] = v24;
    v30[-1] = v25;
    v28 = v30[0];
    os_unfair_lock_lock((v30[0] + 24));
    sub_18E1765C0(&v28[4]);
    os_unfair_lock_unlock(v28 + 6);
    sub_18E16BCA0(v24, v25);
    sub_18E16BCA0(v33, v34);
  }

  os_activity_scope_leave(&state);
  swift_unknownObjectRelease();
  return (*(v10 + 8))(v13, v31);
}

void sub_18E175768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, SEL *a7)
{
  v12 = sub_18E1A6D40();
  v14[4] = a3;
  v14[5] = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_18E173C64;
  v14[3] = a6;
  v13 = _Block_copy(v14);

  [a5 *a7];
  _Block_release(v13);
}

uint64_t ExternalPartnerCredentialStorageXPCClient.readData(accessGroup:key:auditID:)()
{
  sub_18E15A1F8();
  sub_18E159098();
  MEMORY[0x1EEE9AC00](v5, v6);
  sub_18E15A808();
  if (sub_18E176860())
  {
    v7 = sub_18E15D068();
    v11 = sub_18E174D70(v7, v8, v9, v10);
    if (!v1)
    {
      return v11;
    }
  }

  else
  {
    if (qword_1EABCFD70 != -1)
    {
      sub_18E159534(&qword_1EABCFD70);
    }

    v12 = sub_18E1A7360();
    v0 = sub_18E1592FC(v12, qword_1EABCFD78);
    v13 = sub_18E1A7340();
    v14 = sub_18E1A7720();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = sub_18E15BCEC();
      sub_18E176854(v15);
      sub_18E159F68(&dword_18E157000, v16, v17, "ExternalPartnerCredentialStorageXPCClient:readData: Your process must have true for the com.apple.generativeexperiences.ExternalPartnerCredentialStorage entitlement. Falling back on checking legacy direct access to keychain.");
      sub_18E15B7A0();
    }

    sub_18E159574();
    if (v2)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    v21 = "com.apple.openai";
    if (v2)
    {
      v21 = "com.apple.openai.xcode";
    }

    v22 = sub_18E173534(v20, (v21 - 32) | 0x8000000000000000);

    if (v22)
    {
      sub_18E15986C();
      (*(v23 + 16))(v3 + v24, v0, v12);
      if ((v4 & 0x100000000) != 0)
      {
        v25 = 0;
        v26 = 0;
      }

      else
      {
        v25 = sub_18E1A7B70();
      }

      v32 = sub_18E15A028(v25, v26);
      v0 = KeychainStore.readData(accessGroup:key:)(v32, v33, v34);
      sub_18E17626C(v3);
    }

    else
    {
      v27 = sub_18E1A7340();
      v28 = sub_18E1A7720();
      if (sub_18E15AA3C(v28))
      {
        v29 = sub_18E15BCEC();
        sub_18E176854(v29);
        sub_18E15D484(&dword_18E157000, v30, v31, "ExternalPartnerCredentialStorageXPCClient:readData: Your process must have true for the com.apple.generativeexperiences.ExternalPartnerCredentialStorage entitlement. Process also does not have legacy direct access to keychain.");
        sub_18E15B7A0();
      }

      sub_18E176218();
      swift_allocError();
      swift_willThrow();
    }
  }

  return v0;
}

uint64_t ExternalPartnerCredentialStorageXPCClient.writeData(accessGroup:securityLevel:key:auditID:data:)(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, os_unfair_lock_s *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(&v66 + 1) = a7;
  v65 = a3;
  *&v66 = a6;
  v73 = *MEMORY[0x1E69E9840];
  v63 = type metadata accessor for KeychainStore(0);
  sub_18E159098();
  MEMORY[0x1EEE9AC00](v12, v13);
  sub_18E15A808();
  v64 = (v15 - v14);
  v16 = sub_18E1A7240();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  sub_18E15A808();
  v21 = v20 - v19;
  v22 = *a1;
  v23 = *a2;
  v24 = *v7;
  if (sub_18E173848())
  {
    v62 = v24;
    v25 = *MEMORY[0x1E69A0B38];
    v63 = v17;
    v64 = v16;
    (*(v17 + 104))(v21, v25, v16);
    v26 = sub_18E1A7220();
    v27 = sub_18E1A7230();
    v28 = _os_activity_create(&dword_18E157000, "ExternalPartnerCredentialStorageXPCClient.writeData()", v26, v27);
    swift_unknownObjectRelease();
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v28, &state);
    LOBYTE(v69[0]) = BYTE4(a5) & 1;
    LOBYTE(v70) = v22;
    BYTE1(v70) = v23;
    *(&v70 + 1) = v65;
    *&v71 = a4;
    DWORD2(v71) = a5;
    BYTE12(v71) = BYTE4(a5) & 1;
    v72 = v66;
    sub_18E1A6CA0();
    swift_allocObject();

    sub_18E170690(v66, *(&v66 + 1));
    sub_18E1A6C90();
    v69[0] = v70;
    v69[1] = v71;
    v69[2] = v72;
    sub_18E1762C8();
    v29 = sub_18E1A6C80();
    if (v67)
    {

      sub_18E1731B8(&v70);
      os_activity_scope_leave(&state);
      swift_unknownObjectRelease();
      return (*(v63 + 8))(v21, v64);
    }

    else
    {
      v50 = v29;
      v51 = v30;

      MEMORY[0x1EEE9AC00](v52, v53);
      *&v60[-16] = v50;
      *&v60[-8] = v51;
      v54 = v62;
      os_unfair_lock_lock(v62 + 6);
      sub_18E17631C(&v54[4]);
      os_unfair_lock_unlock(v54 + 6);
      sub_18E1731B8(&v70);
      sub_18E16BCA0(v50, v51);
      sub_18E16BCA0(*&v69[0], *(&v69[0] + 1));
      os_activity_scope_leave(&state);
      swift_unknownObjectRelease();
      return (*(v63 + 8))(v21, v64);
    }
  }

  else
  {
    v61 = v23;
    v62 = a4;
    v31 = *(&v66 + 1);
    if (qword_1EABCFD70 != -1)
    {
      sub_18E159534(&qword_1EABCFD70);
    }

    v32 = sub_18E1A7360();
    v33 = sub_18E1592FC(v32, qword_1EABCFD78);
    v34 = sub_18E1A7340();
    v35 = sub_18E1A7720();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = sub_18E15BCEC();
      *v36 = 0;
      _os_log_impl(&dword_18E157000, v34, v35, "ExternalPartnerCredentialStorageXPCClient:writeData: Your process must have true for the com.apple.generativeexperiences.ExternalPartnerCredentialStorage entitlement. Falling back on checking legacy direct access to keychain.", v36, 2u);
      MEMORY[0x193ACB8D0](v36, -1, -1);
    }

    sub_18E159574();
    if (v22)
    {
      v39 = v38;
    }

    else
    {
      v39 = v37;
    }

    v40 = "com.apple.openai";
    if (v22)
    {
      v40 = "com.apple.openai.xcode";
    }

    v41 = sub_18E173534(v39, (v40 - 32) | 0x8000000000000000);

    if (v41)
    {
      v42 = v64;
      (*(*(v32 - 8) + 16))(&v64[*(v63 + 20)], v33, v32);
      if ((a5 & 0x100000000) != 0)
      {
        v43 = 0;
        v44 = 0;
      }

      else
      {
        LODWORD(v70) = a5;
        v43 = sub_18E1A7B70();
      }

      v56 = v62;
      v58 = v65;
      v57 = v66;
      v59 = v61;
      *v64 = v43;
      *(v42 + 8) = v44;
      LOBYTE(v70) = v22;
      LOBYTE(v69[0]) = v59;
      KeychainStore.writeData(accessGroup:key:securityLevel:data:)(&v70, v58, v56, v69, v57, v31);
      return sub_18E17626C(v42);
    }

    else
    {
      v45 = sub_18E1A7340();
      v46 = sub_18E1A7720();
      if (sub_18E15AA3C(v46))
      {
        v47 = sub_18E15BCEC();
        sub_18E176854(v47);
        sub_18E15D484(&dword_18E157000, v48, v49, "ExternalPartnerCredentialStorageXPCClient:writeData: Your process must have true for the com.apple.generativeexperiences.ExternalPartnerCredentialStorage entitlement. Process also does not have legacy direct access to keychain.");
        sub_18E15B7A0();
      }

      sub_18E176218();
      swift_allocError();
      return swift_willThrow();
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ExternalPartnerCredentialStorageXPCClient.deleteData(accessGroup:key:auditID:)(GenerativeModelsFoundation::AccessGroup accessGroup, Swift::String key, Swift::UInt32_optional auditID)
{
  sub_18E15A1F8();
  sub_18E159098();
  MEMORY[0x1EEE9AC00](v6, v7);
  sub_18E15A808();
  if (sub_18E176860())
  {
    v8 = sub_18E15D068();
    sub_18E17546C(v8, v9, v10, v11);
  }

  else
  {
    if (qword_1EABCFD70 != -1)
    {
      sub_18E159534(&qword_1EABCFD70);
    }

    v12 = sub_18E1A7360();
    v13 = sub_18E1592FC(v12, qword_1EABCFD78);
    v14 = sub_18E1A7340();
    v15 = sub_18E1A7720();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = sub_18E15BCEC();
      sub_18E176854(v16);
      sub_18E159F68(&dword_18E157000, v17, v18, "ExternalPartnerCredentialStorageXPCClient:deleteData: Your process must have true for the com.apple.generativeexperiences.ExternalPartnerCredentialStorage entitlement. Falling back on checking legacy direct access to keychain.");
      sub_18E15B7A0();
    }

    sub_18E159574();
    if (v3)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    v22 = "com.apple.openai";
    if (v3)
    {
      v22 = "com.apple.openai.xcode";
    }

    v23 = sub_18E173534(v21, (v22 - 32) | 0x8000000000000000);

    if (v23)
    {
      sub_18E15986C();
      (*(v24 + 16))(v4 + v25, v13, v12);
      if ((v5 & 0x100000000) != 0)
      {
        v26 = 0;
        v27 = 0;
      }

      else
      {
        v26 = sub_18E1A7B70();
      }

      v33 = sub_18E15A028(v26, v27);
      KeychainStore.deleteData(accessGroup:key:)(v33, v34);
      sub_18E17626C(v4);
    }

    else
    {
      v28 = sub_18E1A7340();
      v29 = sub_18E1A7720();
      if (sub_18E15AA3C(v29))
      {
        v30 = sub_18E15BCEC();
        sub_18E176854(v30);
        sub_18E15D484(&dword_18E157000, v31, v32, "ExternalPartnerCredentialStorageXPCClient:deleteData: Your process must have true for the com.apple.generativeexperiences.ExternalPartnerCredentialStorage entitlement. Process also does not have legacy direct access to keychain.");
        sub_18E15B7A0();
      }

      sub_18E176218();
      swift_allocError();
      swift_willThrow();
    }
  }
}

unint64_t sub_18E176218()
{
  result = qword_1EABD0900;
  if (!qword_1EABD0900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0900);
  }

  return result;
}

uint64_t sub_18E17626C(uint64_t a1)
{
  v2 = type metadata accessor for KeychainStore(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_18E1762C8()
{
  result = qword_1EABD0908;
  if (!qword_1EABD0908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0908);
  }

  return result;
}

unint64_t sub_18E17633C()
{
  result = qword_1EABD0910;
  if (!qword_1EABD0910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0910);
  }

  return result;
}

_BYTE *sub_18E1763A4(_BYTE *result, int a2, int a3)
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

uint64_t sub_18E176450(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18E176490(uint64_t result, int a2, int a3)
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

uint64_t sub_18E176524(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_18E17656C()
{
  result = qword_1EABD0918;
  if (!qword_1EABD0918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0918);
  }

  return result;
}

uint64_t sub_18E176634(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_18E1766A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  return v4(v6, a3);
}

unint64_t sub_18E1766DC()
{
  result = qword_1EABD0920;
  if (!qword_1EABD0920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0920);
  }

  return result;
}

uint64_t sub_18E176754(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_18E17678C(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_18E1767CC()
{
  result = qword_1EABD0950;
  if (!qword_1EABD0950)
  {
    sub_18E17678C(255, &qword_1EABD0948, 0x1E69E58C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0950);
  }

  return result;
}

uint64_t sub_18E176860()
{
  *(v1 - 112) = *v0;

  return sub_18E173848();
}

uint64_t KeychainStore.init(auditID:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(type metadata accessor for KeychainStore(0) + 20);
  if (qword_1EABCFD70 != -1)
  {
    swift_once();
  }

  v5 = sub_18E1A7360();
  v6 = sub_18E1592FC(v5, qword_1EABCFD78);
  (*(*(v5 - 8) + 16))(&a2[v4], v6, v5);
  result = 0;
  v8 = 0;
  if ((a1 & 0x100000000) == 0)
  {
    result = sub_18E1A7B70();
  }

  *a2 = result;
  *(a2 + 1) = v8;
  return result;
}

uint64_t type metadata accessor for KeychainStore(uint64_t a1)
{
  result = qword_1EABCFD40;
  if (!qword_1EABCFD40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t KeychainStore.readData(accessGroup:key:)(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  LOBYTE(v59) = *a1;
  sub_18E1776E4(&v59, a2, a3);
  if (!v4)
  {
    v8 = sub_18E1A7530();
    v10 = v9;
    v11 = *MEMORY[0x1E697B270];
    type metadata accessor for CFString(0);
    *(&v60 + 1) = v12;
    *&v59 = v11;
    sub_18E177BE0(&v59, result);
    v13 = v11;
    swift_isUniquelyReferenced_nonNull_native();
    sub_18E15AB84();
    sub_18E177BF0(v14, v8, v10, v15);

    v16 = sub_18E1A7530();
    v18 = v17;
    v19 = *MEMORY[0x1E695E4D0];
    if (*MEMORY[0x1E695E4D0])
    {
      type metadata accessor for CFBoolean(0);
      *(&v60 + 1) = v20;
      *&v59 = v19;
      sub_18E177BE0(&v59, result);
      v21 = v19;
      swift_isUniquelyReferenced_nonNull_native();
      sub_18E15AB84();
      sub_18E177BF0(v22, v16, v18, v23);
    }

    else
    {
      v59 = 0u;
      v60 = 0u;
      sub_18E178150(&v59, &qword_1EABD0960, &qword_18E1AB550);
      v24 = sub_18E159728(v16, v18);
      if (v25)
      {
        v26 = v24;
        swift_isUniquelyReferenced_nonNull_native();
        sub_18E161880(&qword_1EABD0970, &unk_18E1AB558);
        sub_18E1A7940();

        sub_18E177BE0((*(v56 + 56) + 32 * v26), result);
        sub_18E1A7960();
      }

      else
      {
        *result = 0u;
        v58 = 0u;
      }

      sub_18E178150(result, &qword_1EABD0960, &qword_18E1AB550);
    }

    result[0] = 0;
    v27 = sub_18E1A7470();

    v28 = SecItemCopyMatching(v27, result);

    if (v28)
    {
      if (v28 == -25300)
      {
        type metadata accessor for KeychainStore(0);

        v29 = sub_18E1A7340();
        v30 = sub_18E1A7700();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *&v59 = swift_slowAlloc();
          *v31 = 136315394;
          *(v31 + 4) = sub_18E1694A4(a2, a3, &v59);
          *(v31 + 12) = 2080;
          sub_18E159574();
          if (v7)
          {
            v34 = v33;
          }

          else
          {
            v34 = v32;
          }

          if (v7)
          {
            v35 = "com.apple.openai";
          }

          else
          {
            v35 = "availabilityService";
          }

          v36 = sub_18E1694A4(v34, v35 | 0x8000000000000000, &v59);

          *(v31 + 14) = v36;
          _os_log_impl(&dword_18E157000, v29, v30, "nil result for key: %s in accessGroup %s", v31, 0x16u);
          swift_arrayDestroy();
          sub_18E1590E4();
          sub_18E1590E4();
        }

        v3 = 0;
        goto LABEL_22;
      }

      type metadata accessor for KeychainStore(0);
      v37 = sub_18E1A7340();
      v38 = sub_18E1A7710();
      if (sub_18E15AA3C(v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 67109120;
        *(v39 + 4) = v28;
        sub_18E15A2B4();
        _os_log_impl(v40, v41, v42, v43, v39, 8u);
        sub_18E1590E4();
      }

      v3 = v28;
      v44 = sub_18E177D28();
      sub_18E15B7BC(&type metadata for ExternalPartnerCredentialStorageError, v44);
      *v45 = v28;
      *(v45 + 8) = 0;
    }

    else
    {
      if (result[0])
      {
        swift_unknownObjectRetain();
        if (swift_dynamicCast())
        {
          v3 = v59;
LABEL_22:
          swift_unknownObjectRelease();
          return v3;
        }
      }

      v3 += *(type metadata accessor for KeychainStore(0) + 20);
      v46 = sub_18E1A7340();
      v47 = sub_18E1A7710();
      if (sub_18E15AA3C(v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        sub_18E15A2B4();
        _os_log_impl(v49, v50, v51, v52, v48, 2u);
        sub_18E1590E4();
      }

      v53 = sub_18E177D28();
      sub_18E15B7BC(&type metadata for ExternalPartnerCredentialStorageError, v53);
      *v54 = 0;
      *(v54 + 8) = 1;
    }

    swift_willThrow();
    swift_unknownObjectRelease();
  }

  return v3;
}

void KeychainStore.writeData(accessGroup:key:securityLevel:data:)(unsigned __int8 *a1, NSObject *a2, unint64_t a3, char *a4, uint64_t a5, unint64_t a6)
{
  v9 = *a1;
  v69 = *a4;
  type metadata accessor for KeychainStore(0);

  v10 = sub_18E1A7340();
  v11 = sub_18E1A7700();

  if (os_log_type_enabled(v10, v11))
  {
    v70 = v9;
    v12 = swift_slowAlloc();
    *&v75 = swift_slowAlloc();
    *v12 = 136315394;
    sub_18E159574();
    if (v70)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    if (v70)
    {
      v16 = "com.apple.openai";
    }

    else
    {
      v16 = "availabilityService";
    }

    v17 = v11;
    v18 = a6;
    v19 = sub_18E1694A4(v15, v16 | 0x8000000000000000, &v75);

    *(v12 + 4) = v19;
    a6 = v18;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_18E1694A4(a2, a3, &v75);
    _os_log_impl(&dword_18E157000, v10, v17, "Before writing data, deleting existing values for %s.%s", v12, 0x16u);
    swift_arrayDestroy();
    sub_18E1590E4();
    v9 = v70;
    sub_18E1590E4();
  }

  else
  {
  }

  sub_18E15D9D0();
  KeychainStore.deleteData(accessGroup:key:)(v20, v21);
  if (!v22)
  {

    sub_18E170690(a5, a6);
    v23 = sub_18E1A7340();
    v24 = sub_18E1A7700();

    sub_18E16BCA0(a5, a6);
    v67 = a6;
    if (os_log_type_enabled(v23, v24))
    {
      v73 = a3;
      v25 = swift_slowAlloc();
      *&v75 = swift_slowAlloc();
      *v25 = 136315650;
      sub_18E159574();
      if (v9)
      {
        v28 = v27;
      }

      else
      {
        v28 = v26;
      }

      log = a2;
      if (v9)
      {
        v29 = "com.apple.openai";
      }

      else
      {
        v29 = "availabilityService";
      }

      v30 = sub_18E1694A4(v28, v29 | 0x8000000000000000, &v75);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_18E1694A4(log, v73, &v75);
      *(v25 + 22) = 2080;
      v31 = sub_18E1A6D20();
      v33 = sub_18E1694A4(v31, v32, &v75);

      *(v25 + 24) = v33;
      _os_log_impl(&dword_18E157000, v23, v24, "Writing data to %s.%s: %s", v25, 0x20u);
      swift_arrayDestroy();
      sub_18E1590E4();
      sub_18E1590E4();
    }

    else
    {
    }

    sub_18E15D9D0();
    sub_18E1776E4(v34, v35, v36);
    sub_18E1A7530();
    v37 = **(&unk_1E725FC28 + v69);
    type metadata accessor for CFString(0);
    v76 = v38;
    *&v75 = v37;
    sub_18E177BE0(&v75, v74);
    v39 = v37;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_18E15D098(isUniquelyReferenced_nonNull_native, v41, v42, v43, v44, v45, v46, v47, v67);

    sub_18E1A7530();
    v76 = MEMORY[0x1E6969080];
    *&v75 = a5;
    *(&v75 + 1) = v68;
    sub_18E177BE0(&v75, v74);
    sub_18E170690(a5, v68);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    sub_18E15D098(v48, v49, v50, v51, v52, v53, v54, v55, v68);

    v56 = sub_18E1A7470();

    v57 = SecItemAdd(v56, 0);

    if (v57)
    {
      v58 = sub_18E1A7340();
      v59 = sub_18E1A7710();
      if (sub_18E15AA3C(v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 67109120;
        *(v60 + 4) = v57;
        sub_18E15A2B4();
        _os_log_impl(v61, v62, v63, v64, v60, 8u);
        sub_18E1590E4();
      }

      v65 = sub_18E177D28();
      sub_18E15B7BC(&type metadata for ExternalPartnerCredentialStorageError, v65);
      *v66 = v57;
      *(v66 + 8) = 0;
      swift_willThrow();
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> KeychainStore.deleteData(accessGroup:key:)(GenerativeModelsFoundation::AccessGroup accessGroup, Swift::String key)
{
  object = key._object;
  countAndFlagsBits = key._countAndFlagsBits;
  v5 = *accessGroup;
  type metadata accessor for KeychainStore(0);

  v6 = sub_18E1A7340();
  v7 = sub_18E1A7700();

  if (os_log_type_enabled(v6, v7))
  {
    v26 = v7;
    v8 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v8 = 136315394;
    sub_18E159574();
    if (v5)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    if (v5)
    {
      v12 = "com.apple.openai";
    }

    else
    {
      v12 = "availabilityService";
    }

    v13 = sub_18E1694A4(v11, v12 | 0x8000000000000000, &v25);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_18E1694A4(countAndFlagsBits, object, &v25);
    _os_log_impl(&dword_18E157000, v6, v26, "Deleting %s.%s", v8, 0x16u);
    swift_arrayDestroy();
    sub_18E1590E4();
    sub_18E1590E4();
  }

  v27 = v5;
  sub_18E1776E4(&v27, countAndFlagsBits, object);
  if (!v2)
  {
    v14 = sub_18E1A7470();

    v15 = SecItemDelete(v14);

    if (v15 != -25300)
    {
      if (v15)
      {
        v16 = sub_18E1A7340();
        v17 = sub_18E1A7710();
        if (sub_18E15AA3C(v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 67109120;
          *(v18 + 4) = v15;
          sub_18E15A2B4();
          _os_log_impl(v19, v20, v21, v22, v18, 8u);
          sub_18E1590E4();
        }

        v23 = sub_18E177D28();
        sub_18E15B7BC(&type metadata for ExternalPartnerCredentialStorageError, v23);
        *v24 = v15;
        *(v24 + 8) = 0;
        swift_willThrow();
      }
    }
  }
}

uint64_t sub_18E1776E4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = MEMORY[0x1E69E6158];
  v7 = sub_18E1A7490();
  v8 = sub_18E1A7530();
  v10 = v9;
  v11 = *MEMORY[0x1E697B008];
  type metadata accessor for CFString(0);
  *(&v43 + 1) = v12;
  *&v42 = v11;
  sub_18E177BE0(&v42, v41);
  v13 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = v7;
  sub_18E177BF0(v41, v8, v10, isUniquelyReferenced_nonNull_native);

  v15 = v44;
  v16 = sub_18E1A7530();
  v18 = v17;
  if (a3)
  {
    *(&v43 + 1) = v6;
    *&v42 = a2;
    *(&v42 + 1) = a3;
    sub_18E177BE0(&v42, v41);

    v19 = swift_isUniquelyReferenced_nonNull_native();
    v44 = v15;
    sub_18E177BF0(v41, v16, v18, v19);

    v15 = v44;
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
    sub_18E178150(&v42, &qword_1EABD0960, &qword_18E1AB550);
    v20 = sub_18E159728(v16, v18);
    if (v21)
    {
      v22 = v20;
      swift_isUniquelyReferenced_nonNull_native();
      v44 = v15;
      sub_18E161880(&qword_1EABD0970, &unk_18E1AB558);
      sub_18E1A7940();
      v15 = v44;

      sub_18E177BE0((*(v15 + 56) + 32 * v22), v41);
      sub_18E1A7960();
    }

    else
    {
      memset(v41, 0, sizeof(v41));
    }

    sub_18E178150(v41, &qword_1EABD0960, &qword_18E1AB550);
  }

  v23 = sub_18E1A7530();
  v25 = v24;
  if (v5)
  {
    v26 = 0xD000000000000016;
  }

  else
  {
    v26 = 0xD000000000000010;
  }

  if (v5)
  {
    v27 = "com.apple.openai";
  }

  else
  {
    v27 = "availabilityService";
  }

  *(&v43 + 1) = v6;
  v28 = v27 | 0x8000000000000000;
  *&v42 = v26;
  *(&v42 + 1) = v27 | 0x8000000000000000;
  sub_18E177BE0(&v42, v41);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v44 = v15;
  sub_18E177BF0(v41, v23, v25, v29);

  v30 = v44;
  v31 = sub_18E1A7530();
  v33 = v32;
  *(&v43 + 1) = v6;
  *&v42 = v26;
  *(&v42 + 1) = v28;
  sub_18E177BE0(&v42, v41);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v44 = v30;
  sub_18E177BF0(v41, v31, v33, v34);

  v35 = v44;
  v36 = sub_18E1A7530();
  v38 = v37;
  *(&v43 + 1) = MEMORY[0x1E69E6370];
  LOBYTE(v42) = 1;
  sub_18E177BE0(&v42, v41);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v44 = v35;
  sub_18E177BF0(v41, v36, v38, v39);

  return v44;
}

unint64_t sub_18E177A94(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x193ACB070](*(v1 + 40), a1, 4);

  return sub_18E177B20(v2, v3);
}

unint64_t sub_18E177ADC(uint64_t a1)
{
  v2 = sub_18E1A7C50();

  return sub_18E177B80(a1, v2);
}

unint64_t sub_18E177B20(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_18E177B80(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

_OWORD *sub_18E177BE0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

_OWORD *sub_18E177BF0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_18E159728(a2, a3);
  sub_18E15911C();
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v8;
  v12 = v9;
  sub_18E161880(&qword_1EABD0970, &unk_18E1AB558);
  if ((sub_18E1A7940() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_18E159728(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_18E1A7BB0();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  if (v12)
  {
    v15 = (*(*v4 + 56) + 32 * v11);
    sub_18E158EC4(v15);

    return sub_18E177BE0(a1, v15);
  }

  else
  {
    sub_18E15A84C();
    sub_18E17808C(v17, v18, v19, a1, v20);
  }
}

unint64_t sub_18E177D28()
{
  result = qword_1EABD0968;
  if (!qword_1EABD0968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0968);
  }

  return result;
}

void sub_18E177DA4(uint64_t a1)
{
  sub_18E177E28();
  if (v1 <= 0x3F)
  {
    sub_18E1A7360();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18E177E28()
{
  if (!qword_1EABCFC88)
  {
    v0 = sub_18E1A77A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EABCFC88);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for ExternalPartnerCredentialStorageError(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ExternalPartnerCredentialStorageError(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ExternalPartnerCredentialStorageError(uint64_t result, int a2, int a3)
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

uint64_t sub_18E177EDC(uint64_t a1)
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

uint64_t sub_18E177EF8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

unint64_t sub_18E177F28(uint64_t a1, uint64_t *a2, char a3)
{
  sub_18E15DD7C(a2, &qword_1EABD0980, &qword_18E1ABF00);
  sub_18E15911C();
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v6;
  v10 = v7;
  sub_18E161880(&qword_1EABD0978, &unk_18E1AB5F0);
  if ((sub_18E1A7940() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_18E15DD7C(a2, &qword_1EABD0980, &qword_18E1ABF00);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_11:
    sub_18E161880(&qword_1EABD0980, &qword_18E1ABF00);
    result = sub_18E1A7BB0();
    __break(1u);
    return result;
  }

  v9 = v11;
LABEL_5:
  v13 = *v3;
  if (v10)
  {
    *(v13[7] + 8 * v9) = a1;
  }

  else
  {
    sub_18E15DF6C(a2, v15, &qword_1EABD0980, &qword_18E1ABF00);
    return sub_18E1780F8(v9, v15, a1, v13);
  }
}

_OWORD *sub_18E17808C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_18E177BE0(a4, (a5[7] + 32 * a1));
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

unint64_t sub_18E1780F8(unint64_t result, _OWORD *a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + 48 * result);
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  v4[2] = a2[2];
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_18E178150(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_18E161880(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

GenerativeModelsFoundation::SecurityLevel_optional __swiftcall SecurityLevel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_18E1A79E0();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SecurityLevel.rawValue.getter()
{
  result = 0xD000000000000024;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000032;
      break;
    case 2:
      result = 0xD000000000000020;
      break;
    case 3:
      result = 0xD00000000000002ELL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_18E1782B0@<X0>(unint64_t *a1@<X8>)
{
  result = SecurityLevel.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_18E1782DC()
{
  result = qword_1EABD0990;
  if (!qword_1EABD0990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0990);
  }

  return result;
}

unint64_t sub_18E1783FC()
{
  result = qword_1EABD0998;
  if (!qword_1EABD0998)
  {
    sub_18E169A64(&qword_1EABD09A0, &qword_18E1AB700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0998);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SecurityLevel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SecurityLevel(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18E1785D4()
{
  result = qword_1EABD09A8;
  if (!qword_1EABD09A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD09A8);
  }

  return result;
}

uint64_t sub_18E17863C()
{
  sub_18E158FCC();
  if (qword_1ED8DA2C8 != -1)
  {
    sub_18E15D0C0(&qword_1ED8DA2C8);
  }

  v0 = sub_18E1A7360();
  sub_18E1592FC(v0, qword_1ED8DA2D0);
  v1 = sub_18E1A7340();
  v2 = sub_18E1A7730();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    sub_18E15A2C0(&dword_18E157000, v4, v5, "GenerativeModelOverrides no longer supported.");
    MEMORY[0x193ACB8D0](v3, -1, -1);
  }

  v6 = sub_18E161880(&qword_1EABD09B0, &qword_18E1AB788);
  sub_18E15D73C(v6);
  sub_18E15A7EC();

  return v7();
}

uint64_t sub_18E178758()
{
  sub_18E158FCC();
  if (qword_1ED8DA2C8 != -1)
  {
    sub_18E15D0C0(&qword_1ED8DA2C8);
  }

  v0 = sub_18E1A7360();
  sub_18E1592FC(v0, qword_1ED8DA2D0);
  v1 = sub_18E1A7340();
  v2 = sub_18E1A7730();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    sub_18E15A2C0(&dword_18E157000, v4, v5, "GenerativeModelOverrides no longer supported.");
    MEMORY[0x193ACB8D0](v3, -1, -1);
  }

  v6 = sub_18E161880(&qword_1EABD09B8, &qword_18E1AB798);
  sub_18E15D73C(v6);
  sub_18E15A7EC();

  return v7();
}

uint64_t static _GenerativeModelOverrideHelpers._generativeFunctionOverridesCompletionPrompt(_:)()
{
  sub_18E15A288();
  v0[2] = v1;
  sub_18E161880(&qword_1EABD09C0, &qword_18E1AB7A8);
  v2 = swift_task_alloc();
  v0[3] = v2;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_18E178930;

  return static _GenerativeModelOverrideHelpers._generativeFunctionOverridesWithMetadataCompletionPrompt(_:)(v2);
}

uint64_t sub_18E178930()
{
  sub_18E15A288();
  sub_18E15A7FC();
  *v3 = v2;
  v4 = *v1;
  sub_18E15A7FC();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (v0)
  {
    v7 = sub_18E178B48;
  }

  else
  {
    v7 = sub_18E178A38;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_18E178A38()
{
  sub_18E158FCC();
  v3 = *(v2 + 24);
  v4 = sub_18E161880(&qword_1EABD09B0, &qword_18E1AB788);
  sub_18E15A048(v4);
  if (v5)
  {
    sub_18E16D540(v3, &qword_1EABD09C0, &qword_18E1AB7A8);
    v6 = sub_18E1A70A0();
    sub_18E15D73C(v6);
  }

  else
  {
    v7 = *(v1 + 48);
    v8 = sub_18E1A70A0();
    sub_18E159098();
    (*(v9 + 32))(v0, v3, v8);
    sub_18E15B7D4();
    sub_18E159098();
    (*(v10 + 8))(v3 + v7);
  }

  sub_18E15A7EC();

  return v11();
}

uint64_t sub_18E178B48()
{
  sub_18E15A288();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static _GenerativeModelOverrideHelpers._generativeFunctionOverridesChatMessagesPrompt(_:)()
{
  sub_18E15A288();
  v0[2] = v1;
  sub_18E161880(&qword_1EABD09C8, &qword_18E1AB7B8);
  v2 = swift_task_alloc();
  v0[3] = v2;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_18E178C78;

  return static _GenerativeModelOverrideHelpers._generativeFunctionOverridesWithMetadataChatMessagesPrompt(_:)(v2);
}

uint64_t sub_18E178C78()
{
  sub_18E15A288();
  sub_18E15A7FC();
  *v3 = v2;
  v4 = *v1;
  sub_18E15A7FC();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (v0)
  {
    v7 = sub_18E178F94;
  }

  else
  {
    v7 = sub_18E178D80;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_18E178D80()
{
  sub_18E158FCC();
  v3 = *(v2 + 24);
  v4 = sub_18E161880(&qword_1EABD09B8, &qword_18E1AB798);
  sub_18E15A048(v4);
  if (v5)
  {
    sub_18E16D540(v3, &qword_1EABD09C8, &qword_18E1AB7B8);
    v6 = sub_18E1A70B0();
    sub_18E15D73C(v6);
  }

  else
  {
    v7 = *(v1 + 48);
    v8 = sub_18E1A70B0();
    sub_18E159098();
    (*(v9 + 32))(v0, v3, v8);
    sub_18E15B7D4();
    sub_18E159098();
    (*(v10 + 8))(v3 + v7);
  }

  sub_18E15A7EC();

  return v11();
}

_BYTE *storeEnumTagSinglePayload for _GenerativeModelOverrideHelpers(_BYTE *result, int a2, int a3)
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

uint64_t static _OverrideConfigurationHelper.renderedPromptSanitizer(_:)@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(a2, __src, 0x88uLL);
  return sub_18E178FF8(__dst, &v5);
}

uint64_t static _OverrideConfigurationHelper.responseSanitizer(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  sub_18E159D24(v3, v2, v4);
}

{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4 & 1;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  return sub_18E179280(v3, v2, v4, v5, v6, v7);
}

uint64_t static _OverrideConfigurationHelper.renderedPromptSanitizer(_:)@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  v2 = __src;
  memcpy(__dst, __src, 0x89uLL);
  memcpy(v13, v2, 0x89uLL);
  sub_18E1791DC(v13);
  nullsub_1();
  memcpy(v10, __dst, 0x89uLL);
  nullsub_1();
  v6 = *v4;
  v7 = *(v4 + 120);
  LOBYTE(v2) = *(v4 + 16);
  memcpy(__srca, v4 + 24, sizeof(__srca));
  v9 = v2;
  memcpy(&v8[7], __srca, 0x60uLL);
  *a2 = v6;
  *(a2 + 16) = v9;
  memcpy((a2 + 17), v8, 0x67uLL);
  *(a2 + 120) = v7;
  return sub_18E1791E4(__dst, v10);
}

uint64_t sub_18E1791E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E161880(&qword_1EABD09D0, &unk_18E1AB800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E179280(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_18E159D24(a1, a2, a3 & 1);
}

_BYTE *storeEnumTagSinglePayload for _OverrideConfigurationHelper(_BYTE *result, int a2, int a3)
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

uint64_t OverrideHint.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  MEMORY[0x1EEE9AC00](a1, v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  return (*(*(*(a1 + 16) - 8) + 32))(a2, v7);
}

uint64_t sub_18E17947C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18E1794E0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_20;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_20:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_20;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    switch(v4)
    {
      case 2:
        LODWORD(v4) = *a1;
        break;
      case 3:
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v4) = *a1;
        break;
      default:
        LODWORD(v4) = *a1;
        break;
    }
  }

  return (v4 | v9) + 255;
}

void sub_18E1795F8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_35:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_24;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_23;
      case 3:
        goto LABEL_35;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_24;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_18E179800()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18E15DC38;

  return FailureTrackingClientProvider.record(failure:)();
}

uint64_t dispatch thunk of FailureTrackingClientProviding.record(failure:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18E15DC38;

  return v9(a1, a2, a3);
}

uint64_t FailureTracking.Failure.Severity.hashValue.getter()
{
  v1 = *v0;
  sub_18E1A7C60();
  MEMORY[0x193ACB0A0](v1);
  return sub_18E1A7CA0();
}

uint64_t FailureTracking.Failure.useCaseIdentifier.getter()
{
  sub_18E15D6F0();
  sub_18E1A6F70();
  sub_18E159098();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t FailureTracking.Failure.userRequestIdentifier.getter()
{
  v2 = sub_18E15D6F0();
  v3 = *(type metadata accessor for FailureTracking.Failure(v2) + 20);
  sub_18E1A6D90();
  sub_18E159098();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t type metadata accessor for FailureTracking.Failure(uint64_t a1)
{
  result = qword_1EABCFD30;
  if (!qword_1EABCFD30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FailureTracking.Failure.severity.getter()
{
  v2 = sub_18E15D6F0();
  result = type metadata accessor for FailureTracking.Failure(v2);
  *v0 = *(v1 + *(result + 28));
  return result;
}

void FailureTracking.Failure.init(useCaseIdentifier:)(uint64_t a1)
{
  sub_18E15D6F0();
  v3 = sub_18E1A6F70();
  sub_18E159050();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v5 + 16);
  v10(v9, a1, v3);
  v11 = getuid();
  v10(v1, v9, v3);
  v12 = type metadata accessor for FailureTracking.Failure(0);
  sub_18E1A6D80();
  v13 = *(v5 + 8);
  v13(a1, v3);
  v13(v9, v3);
  *&v1[*(v12 + 24)] = v11;
  sub_18E15AA58();
}

uint64_t FailureTracking.Failure.init(useCaseIdentifier:onBehalfOfUserIdentifier:severity:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = sub_18E1A6F70();
  sub_18E159050();
  v10 = v9;
  (*(v11 + 16))(a4, a1, v8);
  v12 = type metadata accessor for FailureTracking.Failure(0);
  sub_18E1A6D80();
  result = (*(v10 + 8))(a1, v8);
  *(a4 + *(v12 + 24)) = a2;
  *(a4 + *(v12 + 28)) = v7;
  return result;
}

void FailureTracking.Failure.init(useCaseIdentifier:onBehalfOfUserIdentifier:)(uint64_t a1, int a2)
{
  sub_18E15D6F0();
  v5 = sub_18E1A6F70();
  sub_18E159050();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v7 + 16);
  v12(v11, a1, v5);
  v12(v2, v11, v5);
  v13 = type metadata accessor for FailureTracking.Failure(0);
  sub_18E1A6D80();
  v14 = *(v7 + 8);
  v14(a1, v5);
  v14(v11, v5);
  *&v2[*(v13 + 24)] = a2;
  sub_18E15AA58();
}

uint64_t FailureTracking.Failure.init(useCaseIdentifier:userRequestIdentifier:onBehalfOfUserIdentifier:severity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  sub_18E1A6F70();
  sub_18E159098();
  (*(v10 + 32))(a5, a1);
  v11 = type metadata accessor for FailureTracking.Failure(0);
  v12 = v11[5];
  sub_18E1A6D90();
  sub_18E159098();
  result = (*(v13 + 32))(a5 + v12, a2);
  *(a5 + v11[6]) = a3;
  *(a5 + v11[7]) = v9;
  return result;
}

unint64_t sub_18E17A030()
{
  result = qword_1EABD09D8;
  if (!qword_1EABD09D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD09D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FailureTracking(_BYTE *result, int a2, int a3)
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

uint64_t sub_18E17A158(uint64_t a1)
{
  result = sub_18E1A6F70();
  if (v2 <= 0x3F)
  {
    result = sub_18E1A6D90();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FailureTracking.Failure.Severity(_BYTE *result, unsigned int a2, unsigned int a3)
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

id FailureTracking.SecureStorage.init(user:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = objc_allocWithZone(type metadata accessor for NSUserDefaults.Secure());
  result = NSUserDefaults.Secure.init(domain:user:)(0xD000000000000014, 0x800000018E1B2670, v2);
  if (result)
  {
    *a2 = result;
    *(a2 + 8) = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FailureTracking.FailureRecord.useCaseIdentifier.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));

  return v2;
}

uint64_t sub_18E17A390(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (sub_18E1A7B90() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1919251317 && a2 == 0xE400000000000000;
    if (v6 || (sub_18E1A7B90() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x800000018E1B2690 == a2;
      if (v7 || (sub_18E1A7B90() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000015 && 0x800000018E1B26B0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_18E1A7B90();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_18E17A504(char a1)
{
  result = 0x6D617473656D6974;
  switch(a1)
  {
    case 1:
      result = 1919251317;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18E17A5C8(uint64_t a1)
{
  sub_18E1A7C60();
  sub_18E15AF24(v3, *v1);
  return sub_18E1A7CA0();
}

uint64_t sub_18E17A624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E17A390(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E17A680@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E17A4FC();
  *a1 = result;
  return result;
}

uint64_t sub_18E17A6B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_18E17A708(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FailureTracking.FailureRecord.encode(to:)(void *a1, void *a2)
{
  v13 = a2;
  v3 = a2[3];
  v14 = a2[2];
  _s13FailureRecordV10CodingKeysOMa(255, v14, v3, a2[4]);
  sub_18E159584();
  swift_getWitnessTable();
  v4 = sub_18E1A7B50();
  sub_18E159050();
  v6 = v5;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v13 - v9;
  sub_18E158E00(a1, a1[3]);
  sub_18E1A7CD0();
  v19 = 0;
  v11 = v15;
  sub_18E1A7B30();
  if (!v11)
  {
    v18 = 1;
    sub_18E1A7B40();
    v17 = 2;
    sub_18E1A7B00();
    v16 = 3;
    sub_18E1A6D90();
    sub_18E17AEB4(&qword_1EABD09E8, MEMORY[0x1E69695B0]);
    sub_18E1A7AE0();
  }

  return (*(v6 + 8))(v10, v4);
}

uint64_t FailureTracking.FailureRecord.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a5;
  sub_18E161880(&qword_1EABD09E0, &qword_18E1AB9D8);
  sub_18E159074();
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v41 = &v38 - v12;
  v43 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v46 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s13FailureRecordV10CodingKeysOMa(255, a2, a3, a4);
  sub_18E159584();
  swift_getWitnessTable();
  v48 = sub_18E1A7AC0();
  sub_18E159050();
  v42 = v15;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v38 - v18;
  v44 = a3;
  v45 = a2;
  v20 = type metadata accessor for FailureTracking.FailureRecord(0, a2, a3, a4);
  sub_18E159050();
  v39 = v21;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v38 - v24;
  sub_18E158E00(a1, a1[3]);
  v47 = v19;
  v26 = v49;
  sub_18E1A7CC0();
  if (v26)
  {
    return sub_18E158EC4(a1);
  }

  v27 = v43;
  v49 = a1;
  v53 = 0;
  v28 = v45;
  sub_18E1A7A80();
  (*(v27 + 32))(v25, v46, v28);
  v52 = 1;
  *&v25[v20[11]] = sub_18E1A7A90();
  v51 = 2;
  v29 = sub_18E1A7A50();
  v30 = &v25[v20[12]];
  *v30 = v29;
  v30[1] = v31;
  sub_18E1A6D90();
  v50 = 3;
  sub_18E17AEB4(qword_1EABD09F0, MEMORY[0x1E69695D0]);
  v32 = v25;
  v33 = v41;
  sub_18E1A7A30();
  v34 = sub_18E15D75C();
  v35(v34);
  sub_18E17AEF8(v33, &v32[v20[13]]);
  v36 = v39;
  (*(v39 + 16))(v40, v32, v20);
  sub_18E158EC4(v49);
  return (*(v36 + 8))(v32, v20);
}

uint64_t sub_18E17AE14(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E161880(&qword_1EABD09E0, &qword_18E1AB9D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E17AEB4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_18E1A6D90();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18E17AEF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E161880(&qword_1EABD09E0, &qword_18E1AB9D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E17AF68(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_18E17AF7C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 12))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18E17AFBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_18E17B014(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_18E17B648(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_18E17B0B4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_18E1A6D90();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v7 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 64);
  v15 = *(v9 + 80);
  if (v10)
  {
    v16 = *(*(v8 - 8) + 64);
  }

  else
  {
    v16 = *(*(v8 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v15 + 16;
  if (a2 <= v13)
  {
    goto LABEL_33;
  }

  v18 = v16 + ((v17 + ((((v14 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8)) & ~v15);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((a2 - v13 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_33;
      }

      goto LABEL_23;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_33;
      }

      goto LABEL_23;
    }

    if (v22 < 2)
    {
LABEL_33:
      if (v7 == v13)
      {

        return sub_18E15D690(a1, v7, v5);
      }

      else
      {
        v26 = (((a1 + v14 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8;
        if ((v12 & 0x80000000) != 0)
        {
          v28 = sub_18E15D690((v17 + v26) & ~v15, v10, v8);
          if (v28 >= 2)
          {
            return v28 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v27 = *(v26 + 8);
          if (v27 >= 0xFFFFFFFF)
          {
            LODWORD(v27) = -1;
          }

          return (v27 + 1);
        }
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_33;
  }

LABEL_23:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v24 = v18;
    }

    else
    {
      v24 = 4;
    }

    switch(v24)
    {
      case 2:
        v25 = *a1;
        break;
      case 3:
        v25 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v25 = *a1;
        break;
      default:
        v25 = *a1;
        break;
    }
  }

  else
  {
    v25 = 0;
  }

  return v13 + (v25 | v23) + 1;
}

void sub_18E17B340(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_18E1A6D90();
  v11 = 0;
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v9 > v14)
  {
    v14 = v9;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v8 + 64);
  v17 = *(v12 + 80);
  v18 = (v17 + 16 + ((((v16 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8)) & ~v17;
  v19 = *(*(v10 - 8) + 64);
  if (!v13)
  {
    ++v19;
  }

  v20 = v18 + v19;
  v21 = 8 * (v18 + v19);
  if (a3 > v15)
  {
    if (v20 <= 3)
    {
      v22 = ((a3 - v15 + ~(-1 << v21)) >> v21) + 1;
      if (HIWORD(v22))
      {
        v11 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v11 = v23;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  if (v15 >= a2)
  {
    switch(v11)
    {
      case 1:
        a1[v20] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        return;
      case 2:
        *&a1[v20] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        return;
      case 3:
LABEL_52:
        __break(1u);
        return;
      case 4:
        *&a1[v20] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (!a2)
        {
          return;
        }

LABEL_33:
        if (v9 == v15)
        {
          v27 = a1;
          v28 = a2;
          v13 = v9;
          v10 = v7;
        }

        else
        {
          v29 = (((&a1[v16 + 3] & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8);
          if ((v14 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              *v29 = a2 & 0x7FFFFFFF;
              v29[1] = 0;
            }

            else
            {
              v29[1] = (a2 - 1);
            }

            return;
          }

          v27 = ((v29 + v17 + 16) & ~v17);
          v28 = (a2 + 1);
        }

        sub_18E159EBC(v27, v28, v13, v10);
        break;
    }
  }

  else
  {
    v24 = ~v15 + a2;
    if (v20 < 4)
    {
      v25 = (v24 >> v21) + 1;
      if (v20)
      {
        v26 = v24 & ~(-1 << v21);
        bzero(a1, v20);
        if (v20 == 3)
        {
          *a1 = v26;
          a1[2] = BYTE2(v26);
        }

        else if (v20 == 2)
        {
          *a1 = v26;
        }

        else
        {
          *a1 = v24;
        }
      }
    }

    else
    {
      bzero(a1, v20);
      *a1 = v24;
      v25 = 1;
    }

    switch(v11)
    {
      case 1:
        a1[v20] = v25;
        break;
      case 2:
        *&a1[v20] = v25;
        break;
      case 3:
        goto LABEL_52;
      case 4:
        *&a1[v20] = v25;
        break;
      default:
        return;
    }
  }
}

void sub_18E17B648(uint64_t a1)
{
  if (!qword_1EABCFE68)
  {
    sub_18E1A6D90();
    v1 = sub_18E1A77A0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EABCFE68);
    }
  }
}

_BYTE *sub_18E17B6A8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

void sub_18E17B7C8()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_18E17BF70((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_18E17B820(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  v12 = &v15[-1] - v11;
  (*(a4 + 24))(a3, a4);
  swift_getAssociatedConformanceWitness();
  sub_18E1A79D0();
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  sub_18E161880(&qword_1EABD0A78, &qword_18E1ABBB8);
  sub_18E17C67C(a3, v15, v16);
  sub_18E17E554(v16, a2, a1, a3, a4);
  return sub_18E17BF90(v16);
}

void sub_18E17B9C0()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_18E161880(&qword_1EABD0A90, &unk_18E1ABD30);
  sub_18E1A74A0();

  os_unfair_lock_unlock(v1 + 6);
}

uint64_t CachedSafetyModelsWrapper.__allocating_init()()
{
  sub_18E15959C();
  v0 = swift_allocObject();
  type metadata accessor for CachedSafetyModels();
  sub_18E15959C();
  v1 = swift_allocObject();
  sub_18E161880(&qword_1EABD0988, &unk_18E1AB600);
  sub_18E161880(&qword_1EABD0A78, &qword_18E1ABBB8);
  sub_18E15A160();
  v2 = sub_18E1A7490();
  sub_18E161880(&qword_1EABD0A80, qword_18E1ABBC0);
  sub_18E159140();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = v2;
  *(v1 + 16) = v3;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t CachedSafetyModelsWrapper.init()()
{
  type metadata accessor for CachedSafetyModels();
  sub_18E15959C();
  v1 = swift_allocObject();
  sub_18E161880(&qword_1EABD0988, &unk_18E1AB600);
  sub_18E161880(&qword_1EABD0A78, &qword_18E1ABBB8);
  sub_18E15A160();
  v2 = sub_18E1A7490();
  sub_18E161880(&qword_1EABD0A80, qword_18E1ABBC0);
  sub_18E159140();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = v2;
  *(v1 + 16) = v3;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t CachedSafetyModelsWrapper.count.getter()
{
  v1 = *(*(v0 + 16) + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(*(v1 + 16) + 16);
  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

uint64_t CachedSafetyModelsWrapper.__allocating_init(from:)(void *a1)
{
  sub_18E15959C();
  v2 = swift_allocObject();
  type metadata accessor for CachedSafetyModels();
  sub_18E15959C();
  v3 = swift_allocObject();
  sub_18E161880(&qword_1EABD0988, &unk_18E1AB600);
  sub_18E161880(&qword_1EABD0A78, &qword_18E1ABBB8);
  sub_18E15A160();
  v4 = sub_18E1A7490();
  sub_18E161880(&qword_1EABD0A80, qword_18E1ABBC0);
  sub_18E159140();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = v4;
  *(v3 + 16) = v5;
  sub_18E158EC4(a1);
  *(v2 + 16) = v3;
  return v2;
}

uint64_t CachedSafetyModelsWrapper.init(from:)(void *a1)
{
  type metadata accessor for CachedSafetyModels();
  sub_18E15959C();
  v3 = swift_allocObject();
  sub_18E161880(&qword_1EABD0988, &unk_18E1AB600);
  sub_18E161880(&qword_1EABD0A78, &qword_18E1ABBB8);
  sub_18E15A160();
  v4 = sub_18E1A7490();
  sub_18E161880(&qword_1EABD0A80, qword_18E1ABBC0);
  sub_18E159140();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = v4;
  *(v3 + 16) = v5;
  sub_18E158EC4(a1);
  *(v1 + 16) = v3;
  return v1;
}

uint64_t sub_18E17BE4C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = CachedSafetyModelsWrapper.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_18E17BEC8()
{
  result = qword_1EABD0A88;
  if (!qword_1EABD0A88)
  {
    type metadata accessor for CachedSafetyModelsWrapper();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0A88);
  }

  return result;
}

uint64_t sub_18E17BF90(uint64_t a1)
{
  v2 = sub_18E161880(&qword_1EABD0988, &unk_18E1AB600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18E17C004(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E161880(&qword_1EABD0A98, &qword_18E1ABD40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ModelBundleInfoForSanitizer.init(resourceURI:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18E1A6D10();
  (*(*(v4 - 8) + 32))(a2, a1, v4);

  return sub_18E159EBC(a2, 0, 1, v4);
}

uint64_t sub_18E17C100(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656372756F736572 && a2 == 0xEB00000000495255)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18E1A7B90();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18E17C17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E17C100(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18E17C1A8(uint64_t a1)
{
  v2 = sub_18E15C810();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E17C1E4(uint64_t a1)
{
  v2 = sub_18E15C810();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ModelBundleInfoForSanitizer.encode(to:)(void *a1)
{
  v2 = sub_18E161880(&qword_1EABD0AA0, &qword_18E1ABD48);
  sub_18E159050();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v10 - v7;
  sub_18E158E00(a1, a1[3]);
  sub_18E15C810();
  sub_18E1A7CD0();
  sub_18E1A6D10();
  sub_18E15C864(&qword_1ED8D96D8, MEMORY[0x1E6968FB8]);
  sub_18E1A7AE0();
  return (*(v4 + 8))(v8, v2);
}

void sub_18E17C3B8(uint64_t a1)
{
  sub_18E17C424(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_18E17C424(uint64_t a1)
{
  if (!qword_1ED8D9B80)
  {
    sub_18E1A6D10();
    v1 = sub_18E1A77A0();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8D9B80);
    }
  }
}

unint64_t sub_18E17C490()
{
  result = qword_1EABD0AB0;
  if (!qword_1EABD0AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0AB0);
  }

  return result;
}

unint64_t sub_18E17C4E8()
{
  result = qword_1ED8D96E8;
  if (!qword_1ED8D96E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D96E8);
  }

  return result;
}

unint64_t sub_18E17C540()
{
  result = qword_1ED8D96F0;
  if (!qword_1ED8D96F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D96F0);
  }

  return result;
}

uint64_t sub_18E17C594(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, a2);
  v7 = sub_18E17D4A8(v6, a2);
  (*(v4 + 8))(a1, a2);
  return v7;
}

__n128 sub_18E17C67C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  result = *a2;
  v4 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v4;
  *(a3 + 40) = *(a2 + 32);
  return result;
}

uint64_t *sub_18E17C6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v8 = 0;
  v9 = 1;
  type metadata accessor for GMFWeakReference(255, *(v5 + 88), a3, a4);
  v6 = sub_18E1A77A0();
  v4[2] = sub_18E17C594(&v8, v6);
  return v4;
}

void sub_18E17C748(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a6;
  v33 = a7;
  v34 = a2;
  v8 = sub_18E1A72F0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_18E1A72B0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v30[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_18E1A72D0();
  sub_18E1A7300();
  v31 = sub_18E1A7740();
  if (sub_18E1A7780())
  {
    if ((a4 & 1) == 0)
    {
      if (v34)
      {
LABEL_9:

        sub_18E1A7330();

        if ((*(v9 + 88))(v12, v8) == *MEMORY[0x1E69E93E8])
        {
          v19 = "[Error] Interval already ended";
        }

        else
        {
          (*(v9 + 8))(v12, v8);
          v19 = "";
        }

        v20 = swift_slowAlloc();
        *v20 = 0;
        v21 = sub_18E1A72A0();
        _os_signpost_emit_with_name_impl(&dword_18E157000, v18, v31, v21, v34, v19, v20, 2u);
        MEMORY[0x193ACB8D0](v20, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v34 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v34 & 0xFFFFF800) == 0xD800)
      {
LABEL_20:
        __break(1u);
        return;
      }

      if (v34 >> 16 <= 0x10)
      {
        v34 = &v35;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_13:

  (*(v14 + 8))(v17, v13);
  if (qword_1ED8DA2E8 != -1)
  {
    swift_once();
  }

  v22 = sub_18E1A7360();
  sub_18E1592FC(v22, qword_1ED8DA2F0);
  v23 = sub_18E1A7340();
  v24 = sub_18E1A7700();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v36 = v26;
    *v25 = 136315138;
    (*(v33 + 40))();
    v27 = sub_18E1A7880();
    v29 = sub_18E1694A4(v27, v28, &v36);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_18E157000, v23, v24, "Caching - signpost for %s", v25, 0xCu);
    sub_18E158EC4(v26);
    MEMORY[0x193ACB8D0](v26, -1, -1);
    MEMORY[0x193ACB8D0](v25, -1, -1);
  }
}

uint64_t sub_18E17CB10(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  v4 = sub_18E1A77A0();
  sub_18E1A7790();
  (*(*(v4 - 8) + 8))(a1, v4);
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_18E17CBDC()
{
  v0 = sub_18E17CBBC();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_18E17CC0C(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    JUMPOUT(0x193ACAC50);
  }

  return 0;
}

uint64_t sub_18E17CC68()
{
  sub_18E1A7C60();
  sub_18E17CC30(v1);
  return sub_18E1A7CA0();
}

uint64_t sub_18E17CCB0(uint64_t a1)
{
  sub_18E1A7C60();
  sub_18E17CC30(v2);
  return sub_18E1A7CA0();
}

uint64_t sub_18E17CCF0()
{
  type metadata accessor for ModelCache();
  v0 = swift_allocObject();
  sub_18E161880(&qword_1EABD0980, &qword_18E1ABF00);
  type metadata accessor for ModelCache.ModelHolderBase();
  sub_18E17DB34();
  v1 = sub_18E1A7490();
  sub_18E161880(&qword_1EABD0AD8, &qword_18E1AC160);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v1;
  *(v0 + 16) = result;
  qword_1ED8D95A0 = v0;
  return result;
}

uint64_t static ModelCache.shared.getter()
{
  if (qword_1ED8D9598 != -1)
  {
    swift_once();
  }
}

uint64_t sub_18E17CE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_18E17CE64, 0, 0);
}

uint64_t sub_18E17CE64()
{
  sub_18E158FCC();
  (*(*(v0 + 32) + 48))(*(v0 + 24));
  sub_18E1594CC();

  return v1();
}

uint64_t sub_18E17CEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_18E161880(&qword_1EABD0AB8, &qword_18E1ABEF0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v22 - v10;
  sub_18E15DF6C(a3, v22 - v10, &qword_1EABD0AB8, &qword_18E1ABEF0);
  v12 = sub_18E1A76D0();
  v13 = sub_18E15D690(v11, 1, v12);

  if (v13 == 1)
  {
    sub_18E178150(v11, &qword_1EABD0AB8, &qword_18E1ABEF0);
  }

  else
  {
    sub_18E1A76C0();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_18E1A76A0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_18E1A75A0() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_18E178150(a3, &qword_1EABD0AB8, &qword_18E1ABEF0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_18E178150(a3, &qword_1EABD0AB8, &qword_18E1ABEF0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_18E17D17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_18E161880(&qword_1EABD0AB8, &qword_18E1ABEF0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v18[-v12];
  sub_18E16BBD0(a5, v18);
  sub_18E161880(&qword_1EABD0AC8, &unk_18E1AC130);
  v14 = swift_allocObject();
  *(v14 + 48) = 0;
  sub_18E15DF6C(v18, v14 + 16, &qword_1EABD0960, &qword_18E1AB550);
  sub_18E178150(v18, &qword_1EABD0960, &qword_18E1AB550);
  v15 = sub_18E1A76D0();
  sub_18E159EBC(v13, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = v14;
  v16[7] = a3;
  v16[8] = a4;

  sub_18E17CEEC(0, 0, v13, &unk_18E1AC148, v16);
}

uint64_t sub_18E17D2F8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_18E17D3C0;

  return sub_18E17CE40(a1, v6, v7, v8, v4, v5);
}

uint64_t sub_18E17D3C0()
{
  v1 = *v0;
  sub_18E159064();
  *v2 = v1;

  sub_18E1594CC();

  return v3();
}

uint64_t sub_18E17D4A8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_18E1A78E0();
  v4 = sub_18E1A78D0();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t sub_18E17D558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_18E1A7910();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18E17D620, 0, 0);
}

uint64_t sub_18E17D620()
{
  sub_18E1A70F0();
  swift_allocObject();

  v0[10] = sub_18E1A7100();
  sub_18E1A7BE0();
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_18E17D750;
  v3 = v0[5];
  v2 = v0[6];

  return sub_18E17E064(v3, v2, 0, 0, 1);
}

uint64_t sub_18E17D750()
{
  sub_18E158FCC();
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *v1;
  sub_18E159064();
  *v6 = v5;
  *(v7 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v8 = sub_18E17D958;
  }

  else
  {
    v8 = sub_18E17D8B4;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_18E17D8B4()
{
  sub_18E158FCC();
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 48));
  sub_18E178150(v1 + 16, &qword_1EABD0960, &qword_18E1AB550);
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  os_unfair_lock_unlock((v1 + 48));

  sub_18E1594CC();

  return v2();
}

uint64_t sub_18E17D958()
{
  sub_18E158FCC();
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 48));
  sub_18E178150(v1 + 16, &qword_1EABD0960, &qword_18E1AB550);
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  os_unfair_lock_unlock((v1 + 48));

  sub_18E1594CC();

  return v2();
}

uint64_t sub_18E17D9FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  os_unfair_lock_lock((a1 + 48));
  sub_18E178150(a1 + 16, &qword_1EABD0960, &qword_18E1AB550);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  os_unfair_lock_unlock((a1 + 48));
  v4 = *MEMORY[0x1E69C5B00];
  v5 = sub_18E1A70E0();
  v6 = *(*(v5 - 8) + 104);

  return v6(a2, v4, v5);
}

Swift::Void __swiftcall ModelCache.reset()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));

  sub_18E161880(&qword_1EABD0980, &qword_18E1ABF00);
  type metadata accessor for ModelCache.ModelHolderBase();
  sub_18E17DB34();
  *(v1 + 16) = sub_18E1A7490();

  os_unfair_lock_unlock((v1 + 24));
}

unint64_t sub_18E17DB34()
{
  result = qword_1ED8D95A8[0];
  if (!qword_1ED8D95A8[0])
  {
    sub_18E169A64(&qword_1EABD0980, &qword_18E1ABF00);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8D95A8);
  }

  return result;
}

uint64_t ModelCache.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_18E17DCF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18E17DD38(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18E17DD58(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_18E17DD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18E17DDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18E17DE10(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18E17DE50(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_18E17DED0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a1 + ((*(v2 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v2 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2);
}

uint64_t sub_18E17DF80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_18E17E830;

  return sub_18E17D558(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_18E17E064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_18E1A7900();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_18E17E164, 0, 0);
}

uint64_t sub_18E17E164()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_18E1A7910();
  v5 = sub_18E17E50C(&qword_1EABD0128, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_18E1A7BC0();
  sub_18E17E50C(&qword_1EABD0130, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_18E1A7920();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_18E17E2F4;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_18E17E2F4()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v8 = *v1;
  sub_18E159064();
  *v5 = v8;
  *(v8 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18E17E4A4, 0, 0);
  }

  else
  {

    sub_18E1594CC();

    return v6();
  }
}

uint64_t sub_18E17E4A4()
{

  sub_18E1594CC();

  return v0();
}

uint64_t sub_18E17E50C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18E17E554(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*(*a3 + 16) || (result = sub_18E177A80(a1), (v10 & 1) == 0))
  {
    v11 = swift_unknownObjectRetain();

    return sub_18E17E5E8(v11, a1, a3, a4, a5);
  }

  return result;
}

unint64_t sub_18E17E5E8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *a3;
  result = sub_18E17E664(a1, a2, isUniquelyReferenced_nonNull_native, &v12, a4, a5);
  *a3 = v12;
  return result;
}

unint64_t sub_18E17E664(uint64_t a1, uint64_t *a2, char a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v11 = *a4;
  v12 = sub_18E177A80(a2);
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  sub_18E161880(&qword_1EABD0AE0, &qword_18E1AC168);
  if ((sub_18E1A7940() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_18E177A80(a2);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    sub_18E161880(&qword_1EABD0988, &unk_18E1AB600);
    result = sub_18E1A7BB0();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *a4;
  if (v15)
  {
    v19 = (v18[7] + 16 * v14);
    *v19 = a1;
    v19[1] = a6;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_18E15DF6C(a2, v21, &qword_1EABD0988, &unk_18E1AB600);
    return sub_18E17E7D4(v14, v21, a1, v18, a5, a6);
  }
}

unint64_t sub_18E17E7D4(unint64_t result, _OWORD *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v6 = (a4[6] + 48 * result);
  v7 = a2[1];
  *v6 = *a2;
  v6[1] = v7;
  v6[2] = a2[2];
  v8 = (a4[7] + 16 * result);
  *v8 = a3;
  v8[1] = a6;
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

uint64_t ModelManagerSessionWrapper.__allocating_init(session:)()
{
  sub_18E1595A8();
  swift_allocObject();
  sub_18E161880(&qword_1EABD0AE8, &qword_18E1AC170);
  sub_18E159140();
  v0 = swift_allocObject();
  return sub_18E15D768(v0);
}

uint64_t ModelManagerSessionWrapper.init(session:)()
{
  sub_18E161880(&qword_1EABD0AE8, &qword_18E1AC170);
  sub_18E159140();
  v0 = swift_allocObject();
  return sub_18E15D768(v0);
}

uint64_t ModelManagerSessionWrapper.__allocating_init(from:)()
{
  sub_18E1595A8();
  swift_allocObject();
  sub_18E161880(&qword_1EABD0AE8, &qword_18E1AC170);
  sub_18E159140();
  v0 = swift_allocObject();
  return sub_18E15914C(v0);
}

uint64_t ModelManagerSessionWrapper.init(from:)()
{
  sub_18E161880(&qword_1EABD0AE8, &qword_18E1AC170);
  sub_18E159140();
  v0 = swift_allocObject();
  return sub_18E15914C(v0);
}

uint64_t sub_18E17E9D4@<X0>(uint64_t *a1@<X8>)
{
  result = ModelManagerSessionWrapper.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_18E17EA1C()
{
  result = qword_1EABD0AF0;
  if (!qword_1EABD0AF0)
  {
    type metadata accessor for ModelManagerSessionWrapper();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0AF0);
  }

  return result;
}

uint64_t sub_18E17EACC(uint64_t a1)
{
  v2 = sub_18E17EB78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E17EB08(uint64_t a1)
{
  v2 = sub_18E17EB78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_18E17EB78()
{
  result = qword_1EABD01C0;
  if (!qword_1EABD01C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD01C0);
  }

  return result;
}

uint64_t _s16GenerativeModels19InputDenyListBundleV8resourceACx_tc12ModelCatalog05TokencdE0RzlufC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v7 = sub_18E1A6F60();
  v9 = v8;
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = v7;
  a4[1] = v9;
  return result;
}

uint64_t _s16GenerativeModels19InputDenyListBundleV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_18E1A7B90();
  }
}

uint64_t sub_18E17ECF0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18E1A7B90();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18E17ED70(uint64_t a1)
{
  v2 = sub_18E15C358();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E17EDAC(uint64_t a1)
{
  v2 = sub_18E15C358();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E17EE1C(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v16 = a4;
  v7 = sub_18E161880(a2, a3);
  sub_18E159050();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v15 - v12;
  v15 = *v5;
  sub_18E158E00(a1, a1[3]);
  v16();
  sub_18E1A7CD0();
  sub_18E1A7B00();
  return (*(v9 + 8))(v13, v7);
}

uint64_t _s16GenerativeModels19InputDenyListBundleV9hashValueSivg_0()
{
  sub_18E1A7C60();
  sub_18E1A75C0();
  return sub_18E1A7CA0();
}

uint64_t sub_18E17EFA4(uint64_t a1)
{
  sub_18E1A7C60();
  sub_18E1A75C0();
  return sub_18E1A7CA0();
}

unint64_t sub_18E17EFF0()
{
  result = qword_1EABD0B18;
  if (!qword_1EABD0B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0B18);
  }

  return result;
}

unint64_t sub_18E17F048()
{
  result = qword_1EABD0B20;
  if (!qword_1EABD0B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0B20);
  }

  return result;
}

unint64_t sub_18E17F0D8()
{
  result = qword_1EABD0B28;
  if (!qword_1EABD0B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0B28);
  }

  return result;
}

unint64_t sub_18E17F130()
{
  result = qword_1EABD0B30;
  if (!qword_1EABD0B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0B30);
  }

  return result;
}

unint64_t sub_18E17F188()
{
  result = qword_1EABD01B0;
  if (!qword_1EABD01B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD01B0);
  }

  return result;
}

unint64_t sub_18E17F1E0()
{
  result = qword_1EABD01B8;
  if (!qword_1EABD01B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD01B8);
  }

  return result;
}

uint64_t sub_18E17F258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[60] = a2;
  v3[61] = a3;
  v3[59] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18E17F27C, 0, 0);
}

uint64_t sub_18E17F27C()
{
  sub_18E16BBD0(*(v0 + 480), v0 + 112);
  if (swift_dynamicCast())
  {
    *(v0 + 496) = *(v0 + 440);
    v1 = swift_task_alloc();
    *(v0 + 504) = v1;
    *v1 = v0;
    v1[1] = sub_18E17F5F8;
    sub_18E15A220();

    return StringResponseSanitizerWithConfiguration.scrub(_:)(v2, v3);
  }

  sub_18E16BBD0(*(v0 + 480), v0 + 144);
  *(v0 + 536) = sub_18E161880(&qword_1EABD0B40, &qword_18E1AC698);
  if (!swift_dynamicCast())
  {
    sub_18E16BBD0(*(v0 + 480), v0 + 176);
    *(v0 + 608) = sub_18E161880(&qword_1EABD0B48, &unk_18E1AC6A0);
    if (!swift_dynamicCast())
    {
      sub_18E16BBD0(*(v0 + 480), *(v0 + 472));
      goto LABEL_28;
    }

    result = *(v0 + 456);
    *(v0 + 616) = result;
    v16 = *(result + 16);
    *(v0 + 624) = v16;
    v8 = MEMORY[0x1E69E7CC0];
    *(v0 + 640) = MEMORY[0x1E69E7CC0];
    *(v0 + 632) = 0;
    if (v16)
    {
      if (!*(result + 16))
      {
        __break(1u);
        return result;
      }

      sub_18E16BBD0(result + 32, v0 + 208);
      swift_task_alloc();
      sub_18E15B77C();
      *(v0 + 648) = v17;
      *v17 = v18;
      sub_18E1595D0(v17);
      goto LABEL_21;
    }

    v33 = *(v0 + 608);
    v34 = *(v0 + 472);

LABEL_27:
    v34[3] = v33;
    *v34 = v8;
LABEL_28:
    sub_18E15A7EC();
    sub_18E15A220();

    __asm { BRAA            X1, X16 }
  }

  v6 = *(v0 + 448);
  *(v0 + 544) = v6;
  v7 = sub_18E1A7490();
  v8 = v7;
  v9 = *(v6 + 32);
  *(v0 + 664) = v9;
  v10 = -1;
  v11 = -1 << v9;
  v12 = *(v6 + 64);
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  *(v0 + 552) = v7;
  v13 = v10 & v12;
  if (v13)
  {
    v14 = 0;
    v15 = *(v0 + 544);
LABEL_18:
    v21 = __clz(__rbit64(v13)) | (v14 << 6);
    v22 = (*(v15 + 48) + 16 * v21);
    v24 = *v22;
    v23 = v22[1];
    sub_18E16BBD0(*(v15 + 56) + 32 * v21, v0 + 304);
    *(v0 + 64) = v24;
    *(v0 + 72) = v23;
    sub_18E177BE0((v0 + 304), (v0 + 80));

    v25 = v14;
  }

  else
  {
    v19 = 0;
    v20 = ((63 - v11) >> 6) - 1;
    while (v20 != v19)
    {
      v14 = v19 + 1;
      v15 = *(v0 + 544);
      v13 = *(v15 + 8 * v19++ + 72);
      if (v13)
      {
        goto LABEL_18;
      }
    }

    sub_18E15D628();
  }

  *(v0 + 568) = v25;
  sub_18E15D9E4();
  if (!v26)
  {
    v33 = *(v0 + 536);
    v34 = *(v0 + 472);

    goto LABEL_27;
  }

  sub_18E15A414();
  swift_task_alloc();
  sub_18E15B77C();
  *(v0 + 592) = v27;
  *v27 = v28;
  sub_18E159194(v27);
LABEL_21:
  sub_18E15A220();

  return sub_18E17F258(v29, v30, v31);
}

uint64_t sub_18E17F5F8(uint64_t a1, uint64_t a2)
{
  sub_18E15D468();
  v7 = v6;
  sub_18E15A7FC();
  *v8 = v7;
  v9 = *v3;
  sub_18E159064();
  *v10 = v9;
  v7[64] = v2;

  if (!v2)
  {

    v7[65] = a2;
    v7[66] = a1;
  }

  sub_18E159FD4();
  sub_18E15A220();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_18E17F720()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[59];
  v3[3] = MEMORY[0x1E69E6158];
  *v3 = v1;
  v3[1] = v2;
  sub_18E15A7EC();
  return v4();
}

uint64_t sub_18E17F75C()
{
  sub_18E15A288();
  sub_18E15D468();
  v3 = v2;
  sub_18E15A7FC();
  *v4 = v3;
  v5 = *v1;
  sub_18E159064();
  *v6 = v5;
  *(v3 + 600) = v0;

  if (v0)
  {
  }

  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18E17F86C()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 552);
  sub_18E177BE0((v0 + 368), (v0 + 400));
  swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 464) = v3;
  result = sub_18E159728(v1, v2);
  if (__OFADD__(*(v3 + 16), (v5 & 1) == 0))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v6 = result;
  v7 = v5;
  sub_18E161880(&qword_1EABD0970, &unk_18E1AB558);
  if (sub_18E1A7940())
  {
    v8 = sub_18E159728(*(v0 + 584), *(v0 + 576));
    if ((v7 & 1) != (v9 & 1))
    {
      sub_18E15A220();

      return sub_18E1A7BB0();
    }

    v6 = v8;
  }

  if (v7)
  {

    v11 = *(v0 + 464);
    v12 = (v11[7] + 32 * v6);
    sub_18E158EC4(v12);
    sub_18E177BE0((v0 + 400), v12);
    result = sub_18E158EC4((v0 + 336));
  }

  else
  {
    v13 = *(v0 + 584);
    v14 = *(v0 + 576);
    v11 = *(v0 + 464);
    v11[(v6 >> 6) + 8] |= 1 << v6;
    v15 = (v11[6] + 16 * v6);
    *v15 = v13;
    v15[1] = v14;
    sub_18E177BE0((v0 + 400), (v11[7] + 32 * v6));
    result = sub_18E158EC4((v0 + 336));
    v16 = v11[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
LABEL_29:
      __break(1u);
      return result;
    }

    v11[2] = v18;
  }

  v19 = *(v0 + 568);
  v20 = *(v0 + 560);
  *(v0 + 552) = v11;
  if (!v20)
  {
    while (1)
    {
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v22 >= (((1 << *(v0 + 664)) + 63) >> 6))
      {
        sub_18E15D628();
        goto LABEL_19;
      }

      v21 = *(v0 + 544);
      v20 = *(v21 + 8 * v22 + 64);
      ++v19;
      if (v20)
      {
        v19 = v22;
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v21 = *(v0 + 544);
LABEL_18:
  v23 = __clz(__rbit64(v20)) | (v19 << 6);
  v24 = (*(v21 + 48) + 16 * v23);
  v26 = *v24;
  v25 = v24[1];
  sub_18E16BBD0(*(v21 + 56) + 32 * v23, v0 + 304);
  *(v0 + 64) = v26;
  *(v0 + 72) = v25;
  sub_18E177BE0((v0 + 304), (v0 + 80));

LABEL_19:
  *(v0 + 568) = v19;
  sub_18E15D9E4();
  if (!v27)
  {
    v34 = *(v0 + 536);
    v35 = *(v0 + 472);

    v35[3] = v34;
    *v35 = v11;
    sub_18E15A7EC();
    sub_18E15A220();

    __asm { BRAA            X1, X16 }
  }

  sub_18E15A414();
  swift_task_alloc();
  sub_18E15B77C();
  *(v0 + 592) = v28;
  *v28 = v29;
  sub_18E159194(v28);
  sub_18E15A220();

  return sub_18E17F258(v30, v31, v32);
}