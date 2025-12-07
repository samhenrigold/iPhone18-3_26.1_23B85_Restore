uint64_t sub_1B0AEF094(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0AEF11C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1B0AEF160(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    return sub_1B03E1BE8(a2);
  }

  return result;
}

uint64_t sub_1B0AEF178(uint64_t result, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2)
  {
    if (v2 != 1)
    {
      return result;
    }

    a2 &= 0xCFFFFFFFFFFFFFFFLL;
  }

  return sub_1B03B2000(result, a2);
}

uint64_t sub_1B0AEF194(uint64_t result, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2)
  {
    if (v2 != 1)
    {
      return result;
    }

    a2 &= 0xCFFFFFFFFFFFFFFFLL;
  }

  return sub_1B0391D50(result, a2);
}

uint64_t sub_1B0AEF1B0(uint64_t result, unint64_t a2)
{
  if (((a2 >> 60) | 4) != 0xF)
  {
    return sub_1B03B2000(result, a2);
  }

  return result;
}

void sub_1B0AEF1F0(uint64_t a1)
{
  sub_1B0AD434C(319, &qword_1EB6DE198, &type metadata for UID);
  if (v1 <= 0x3F)
  {
    _s15MissingMessagesO10NewMissingVMa(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0AEF2A4(uint64_t a1)
{
  sub_1B043CC04(319, qword_1EB6DE250, sub_1B041C1E8, &type metadata for UID, type metadata accessor for MessageIdentifierSetNonEmpty);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for OptionalMillisecondDate(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MessageSize(uint64_t result, int a2, int a3)
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

uint64_t sub_1B0AEF394(uint64_t a1)
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

uint64_t sub_1B0AEF3B0(uint64_t result, int a2)
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

unint64_t sub_1B0AEF3E0()
{
  result = qword_1EB6E4288;
  if (!qword_1EB6E4288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4288);
  }

  return result;
}

unint64_t sub_1B0AEF438()
{
  result = qword_1EB6E4290;
  if (!qword_1EB6E4290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4290);
  }

  return result;
}

unint64_t sub_1B0AEF490()
{
  result = qword_1EB6E4298;
  if (!qword_1EB6E4298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4298);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FindMissingMessages.CommandID.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FindMissingMessages.CommandID.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

_BYTE *sub_1B0AEF638(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_1B0AEF66C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0AEF6B4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1B0AEF704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, void *a7@<X8>)
{
  v97 = a5;
  *&v98 = a4;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4030, &qword_1B0EC2B00);
  MEMORY[0x1EEE9AC00](v92);
  v95 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v91 = &v88 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4038, &qword_1B0EC2B08);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v88 - v16;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
  v94 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v89 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v93 = &v88 - v20;
  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  v22 = *(Missing - 8);
  MEMORY[0x1EEE9AC00](Missing);
  v24 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v88 - v26;
  result = sub_1B0AF2D78(v28, v29, v30, a6);
  if ((a3 * 3) >> 64 != (3 * a3) >> 63)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v90 = v17;
  if (result < 3 * a3 / 4)
  {
    v33 = sub_1B0AF3134(result, v98 & 0xFFFFFFFF00000101, v32, a6);
    if ((v33 & 0x100000000) == 0)
    {
      v34 = v33;
      if (v33 >= 2)
      {
        v88 = a7;
        result = sub_1B0AF4680(a1, a2);
        v35 = result;
        v36 = *(result + 16);
        if (v36)
        {
          v37 = 0;
          while (v37 < *(v35 + 16))
          {
            sub_1B0AF4CB4(v35 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v37, v27, type metadata accessor for FindMissingMessages.CommandID);
            sub_1B0AF4C4C(v27, v24, type metadata accessor for FindMissingMessages.CommandID);
            if (swift_getEnumCaseMultiPayload() == 1)
            {

              goto LABEL_28;
            }

            ++v37;
            result = sub_1B0AF4054(v24, type metadata accessor for FindMissingMessages.CommandID);
            if (v36 == v37)
            {
              goto LABEL_10;
            }
          }

          __break(1u);
          goto LABEL_42;
        }

LABEL_10:
        v38 = v98;
        v39 = (v98 >> 8) & 1;

        v40 = *(a6 + 16);
        if ((v39 | v38))
        {
          if ((v97 & 0x100000000) != 0)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB0, &unk_1B0EC2010);
            v70 = swift_allocBox();
            v72 = v71;
            v102[0] = v34;
            LODWORD(v101) = v34;
            v73 = sub_1B041C1E8();
            static MessageIdentifier.... infix(_:_:)(v102, &v101, &type metadata for UID, v99);
            *v102 = v99[0];
            v101 = Range<>.init<A>(_:)(v102, &type metadata for UID, v73);
            sub_1B03D06F8();
            sub_1B0E46F08();
            v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
            (*(*(v74 - 8) + 56))(v72, 0, 1, v74);
            v75 = v70 | 0xA000000000000000;
            v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4270, &qword_1B0EC47F0);
            v76 = v88;
            v77 = (v88 + *(v55 + 48));
            *v88 = v40;
            *(v76 + 8) = 0;
            if ((v98 & 0x100) != 0)
            {
              *v77 = v75;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB8, &qword_1B0EC2020);
              type metadata accessor for SearchReturnOption(0);
              v78 = swift_allocObject();
              *(v78 + 16) = xmmword_1B0EC1E70;
              swift_storeEnumTagMultiPayload();
              *v77 = v75;
              v77[1] = v78;
            }

            type metadata accessor for ClientCommand(0);
            swift_storeEnumTagMultiPayload();
            v67 = *(*(v55 - 8) + 56);
            v68 = v76;
          }

          else
          {
            if ((v97 & 0xFFFFFFFE) == 0)
            {
LABEL_28:
              v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4270, &qword_1B0EC47F0);
              return (*(*(v69 - 8) + 56))(v88, 1, 1, v69);
            }

            LODWORD(v99[0]) = 1;
            if ((v97 & 0xFFFFFFFE) > 0xFFFFFFF5uLL)
            {
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
              return result;
            }

            v102[0] = v97 + 10;
            v41 = sub_1B041B7F0();
            static MessageIdentifier.... infix(_:_:)(v99, v102, &type metadata for SequenceNumber, &v100);
            sub_1B03D06F8();
            v42 = v95;
            sub_1B0E46EE8();
            v99[0] = v100;
            *v102 = Range<>.init<A>(_:)(v99, &type metadata for SequenceNumber, v41);
            v43 = v96;
            v44 = v90;
            if (v102[1] != v102[0])
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
              v45 = sub_1B0E46E88();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
              sub_1B0E46E38();
              v45(v99, 0);
            }

            result = a3 + 20;
            if (__OFADD__(a3, 20))
            {
              goto LABEL_48;
            }

            v46 = v91;
            MessageIdentifierSet.suffix(_:)(result, v92, v91);
            sub_1B0398EFC(v42, &qword_1EB6E4030, &qword_1B0EC2B00);
            v47 = MessageIdentifierSet.count.getter();
            v48 = v93;
            if (v47 <= 0)
            {
              sub_1B0398EFC(v46, &qword_1EB6E4030, &qword_1B0EC2B00);
              v50 = 1;
            }

            else
            {
              v49 = v89;
              sub_1B03C60A4(v46, v89, &qword_1EB6E4030, &qword_1B0EC2B00);
              sub_1B03C60A4(v49, v44, &qword_1EB6E4040, &qword_1B0EC2B10);
              v50 = 0;
            }

            v79 = v94;
            v80 = *(v94 + 56);
            v80(v44, v50, 1, v43);
            if ((*(v79 + 48))(v44, 1, v43) == 1)
            {
              sub_1B0398EFC(v44, &qword_1EB6E4038, &qword_1B0EC2B08);
              goto LABEL_28;
            }

            sub_1B03C60A4(v44, v48, &qword_1EB6E4040, &qword_1B0EC2B10);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
            v81 = swift_allocBox();
            v83 = v82;
            sub_1B03B5C80(v48, v82, &qword_1EB6E4040, &qword_1B0EC2B10);
            v80(v83, 0, 1, v43);
            v84 = v81 | 0xB000000000000004;
            v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4270, &qword_1B0EC47F0);
            v85 = v88;
            v86 = (v88 + *(v55 + 48));
            *v88 = v40;
            *(v85 + 8) = 1;
            if ((v98 & 0x100) != 0)
            {
              sub_1B0398EFC(v48, &qword_1EB6E4040, &qword_1B0EC2B10);
              *v86 = v84;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB8, &qword_1B0EC2020);
              type metadata accessor for SearchReturnOption(0);
              v87 = swift_allocObject();
              *(v87 + 16) = xmmword_1B0EC1E70;
              swift_storeEnumTagMultiPayload();
              sub_1B0398EFC(v48, &qword_1EB6E4040, &qword_1B0EC2B10);
              *v86 = v84;
              v86[1] = v87;
            }

            type metadata accessor for ClientCommand(0);
            swift_storeEnumTagMultiPayload();
            v67 = *(*(v55 - 8) + 56);
            v68 = v88;
          }
        }

        else
        {
          v53 = a3 - 1;
          if (__OFSUB__(a3, 1))
          {
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }

          if (v53 > 0xFFFFFFFFLL)
          {
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

          if (v53 > 0x7FFFFFFFFFFFFFFELL)
          {
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          if (HIDWORD(a3))
          {
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          v102[0] = 1;
          LODWORD(v101) = a3;
          sub_1B041B7F0();
          static MessageIdentifier.... infix(_:_:)(v102, &v101, &type metadata for SequenceNumber, v99);
          v54 = v99[0];
          v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4270, &qword_1B0EC47F0);
          v56 = v88;
          v57 = (v88 + *(v55 + 48));
          *v88 = v40;
          *(v56 + 8) = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB0, &unk_1B0EC2010);
          v58 = swift_allocBox();
          v60 = v59;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42D0, &unk_1B0EC5990);
          inited = swift_initStackObject();
          v98 = xmmword_1B0EC1E70;
          *(inited + 16) = xmmword_1B0EC1E70;
          LODWORD(v99[0]) = 1;
          v102[0] = v34;
          sub_1B041C1E8();
          static MessageIdentifier.... infix(_:_:)(v99, v102, &type metadata for UID, inited + 32);
          sub_1B0AF32C8(inited);
          v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
          (*(*(v62 - 8) + 56))(v60, 0, 1, v62);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB8, &qword_1B0EC2020);
          v63 = *(type metadata accessor for SearchReturnOption(0) - 8);
          v64 = (*(v63 + 80) + 32) & ~*(v63 + 80);
          v65 = swift_allocObject();
          *(v65 + 16) = v98;
          v66 = v65 + v64;
          *v66 = v54;
          *(v66 + 8) = 1;
          swift_storeEnumTagMultiPayload();
          *v57 = v58 | 0xA000000000000000;
          v57[1] = v65;
          type metadata accessor for ClientCommand(0);
          swift_storeEnumTagMultiPayload();
          v67 = *(*(v55 - 8) + 56);
          v68 = v56;
        }

        return v67(v68, 0, 1, v55);
      }
    }
  }

  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4270, &qword_1B0EC47F0);
  v52 = *(*(v51 - 8) + 56);

  return v52(a7, 1, 1, v51);
}

uint64_t sub_1B0AF0444(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v142 = a5;
  v9 = _s20GrowWindowOfInterestV6ResultVMa(0);
  v145 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v144 = v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v152 = v134 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v150 = *(v13 - 8);
  v151 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v143 = v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v146 = v134 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42A8, &qword_1B0EC49E0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v149 = v134 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42B0, &qword_1B0EC49E8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v154 = v134 - v20;
  v21 = type metadata accessor for TaskHistory.Running(0);
  v147 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v140 = v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v134 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v141 = v134 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v134 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4258, &qword_1B0EC49F0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v148 = v134 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v153 = v134 - v34;
  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  v155 = *(Missing - 8);
  v156 = Missing;
  MEMORY[0x1EEE9AC00](Missing);
  v137 = v134 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v136 = v134 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v139 = v134 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v138 = v134 - v42;
  v43 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = v134 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v48 = v134 - v47;
  if ((sub_1B0AECC08(0, a2, a3, a4) & 1) == 0)
  {
    result = sub_1B0AECC08(1, a2, a3, a4);
    if ((result & 1) == 0)
    {
      return result;
    }

    v62 = a4;
    sub_1B0AF4CB4(a1, v45, type metadata accessor for UntaggedResponse);
    if (swift_getEnumCaseMultiPayload() != 12)
    {
      sub_1B0AF4054(v45, type metadata accessor for UntaggedResponse);
LABEL_20:
      v85 = *(v157 + 8);
      v86 = v157;
      v87 = *(v157 + 9);
      if (*(v157 + 9))
      {
        v88 = 256;
      }

      else
      {
        v88 = 0;
      }

      v89 = v152;
      sub_1B0B7EA7C(v88 | v85, v152);
      if ((*(v150 + 48))(v89, 1, v151) == 1)
      {
        v78 = &qword_1EB6E3920;
        v79 = &qword_1B0E9B070;
        v80 = v89;
        return sub_1B0398EFC(v80, v78, v79);
      }

      v106 = v146;
      v107 = sub_1B03C60A4(v89, v146, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v109 = *v86;
      v110 = *(v86 + 24);
      v111 = 256;
      if (!v87)
      {
        v111 = 0;
      }

      v112 = sub_1B0AF3134(v107, v111 | v85 | (*(v86 + 12) << 32), v108, *(v86 + 24));
      if ((v112 & 0x100000000) != 0)
      {
        v78 = &unk_1EB6E1AF0;
        v79 = &unk_1B0E9AF40;
        v80 = v106;
        return sub_1B0398EFC(v80, v78, v79);
      }

      v113 = v112;
      v114 = v143;
      sub_1B03B5C80(v106, v143, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v115 = v144;
      sub_1B0AF23A0(v114, v113, v109, v144);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v110 = sub_1B0B00038(0, v110[2] + 1, 1, v110);
      }

      v116 = v145;
      v118 = v110[2];
      v117 = v110[3];
      if (v118 >= v117 >> 1)
      {
        v110 = sub_1B0B00038((v117 > 1), v118 + 1, 1, v110);
      }

      sub_1B0398EFC(v106, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v110[2] = v118 + 1;
      result = sub_1B0AF4C4C(v115, v110 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v118, _s20GrowWindowOfInterestV6ResultVMa);
      *(v86 + 24) = v110;
      return result;
    }

    v63 = *v45;
    v64 = *(v45 + 1);
    v65 = *(v45 + 2);
    v66 = *(v45 + 3);
    v67 = v45[32];
    v68 = *(v45 + 5);
    v149 = *v45;
    if (v64)
    {
      LODWORD(v138) = v67;
      v139 = v66;
      v141 = v65;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v70 = Tag.init(_:)(v63, v64, v69);
      if (v71)
      {
        v73 = v155;
        v72 = v156;
      }

      else
      {
        v119 = v70;
        v134[1] = v68;
        v135 = v62;
        v134[0] = a1;
        v120 = *(a2 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if (v120)
        {
          LODWORD(v154) = v119;
          v153 = HIDWORD(v119);
          v121 = a2 + ((*(v147 + 80) + 32) & ~*(v147 + 80));
          v122 = *(v147 + 72);
          do
          {
            sub_1B0AF4CB4(v121, v25, type metadata accessor for TaskHistory.Running);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              sub_1B0AF4054(v25, type metadata accessor for TaskHistory.Running);
            }

            else
            {
              v123 = *v25;
              v124 = a2;
              v125 = *(v25 + 1);
              v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
              sub_1B0AF4054(&v25[*(v126 + 64)], type metadata accessor for ClientCommand);
              v127 = v123 == v154 && v125 == v153;
              a2 = v124;
              if (v127)
              {
                a1 = v140;
                sub_1B0AF4CB4(v121, v140, type metadata accessor for TaskHistory.Running);
                if (swift_getEnumCaseMultiPayload() == 1)
                {
                  goto LABEL_85;
                }

                v99 = *a1;
                v129 = *(a1 + 1);
                v128 = *(a1 + 2);
                sub_1B0AF4054(&a1[*(v126 + 64)], type metadata accessor for ClientCommand);

                if (v99 == v154)
                {
                  a1 = v134[0];
                  v130 = v156;
                  if (v129 == v153)
                  {
                    v60 = v148;
                    sub_1B0AE2A30(v128, v135, v148);
                    sub_1B0AEF11C(v149, v64);

                    if ((*(v155 + 48))(v60, 1, v130) != 1)
                    {
                      v131 = v60;
                      v132 = v136;
                      sub_1B0AF4C4C(v131, v136, type metadata accessor for FindMissingMessages.CommandID);
                      v133 = v132;
                      v105 = v137;
                      sub_1B0AF4C4C(v133, v137, type metadata accessor for FindMissingMessages.CommandID);
                      result = swift_getEnumCaseMultiPayload();
                      if (result == 1)
                      {
                        if (*(v105 + 8) != 1)
                        {
                          return result;
                        }

                        goto LABEL_20;
                      }

                      return sub_1B0AF4054(v105, type metadata accessor for FindMissingMessages.CommandID);
                    }

LABEL_77:
                    v78 = &qword_1EB6E4258;
                    v79 = &qword_1B0EC49F0;
                    v80 = v60;
                    return sub_1B0398EFC(v80, v78, v79);
                  }

LABEL_83:
                  __break(1u);
LABEL_84:
                  sub_1B0AF4054(v99, type metadata accessor for TaskHistory.Running);
                  __break(1u);
LABEL_85:
                  result = sub_1B0AF4054(a1, type metadata accessor for TaskHistory.Running);
                  __break(1u);
                  return result;
                }

LABEL_82:
                __break(1u);
                goto LABEL_83;
              }
            }

            v121 += v122;
            --v120;
          }

          while (v120);
        }

        v73 = v155;
        v72 = v156;
      }
    }

    else
    {
      v73 = v155;
      v72 = v156;
    }

    sub_1B0AEF11C(v149, v64);

    v60 = v148;
    (*(v73 + 56))(v148, 1, 1, v72);
    goto LABEL_77;
  }

  v152 = a2;
  v135 = a4;
  sub_1B0AF4CB4(a1, v48, type metadata accessor for UntaggedResponse);
  if (swift_getEnumCaseMultiPayload() != 12)
  {
    sub_1B0AF4054(v48, type metadata accessor for UntaggedResponse);
    goto LABEL_12;
  }

  v50 = *v48;
  v49 = *(v48 + 1);
  v51 = *(v48 + 2);
  v52 = *(v48 + 3);
  v53 = v48[32];
  v54 = *(v48 + 5);
  if (!v49)
  {
    v90 = 0;
    v59 = v155;
    v58 = v156;
    v60 = v153;
LABEL_55:
    sub_1B0AEF11C(v50, v90);

    (*(v59 + 56))(v60, 1, 1, v58);
    goto LABEL_77;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v148 = v49;
  v56 = Tag.init(_:)(v50, v49, v55);
  if (v57)
  {
    v59 = v155;
    v58 = v156;
    v60 = v153;
LABEL_54:
    v90 = v148;
    goto LABEL_55;
  }

  v91 = v56;
  v140 = v50;
  LODWORD(v143) = v53;
  v144 = v52;
  v145 = v51;
  v146 = v54;
  v92 = *(v152 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (!v92)
  {
LABEL_53:

    v59 = v155;
    v58 = v156;
    v60 = v153;
    v50 = v140;
    goto LABEL_54;
  }

  LODWORD(v151) = v91;
  v150 = HIDWORD(v91);
  v93 = v152 + ((*(v147 + 80) + 32) & ~*(v147 + 80));
  v94 = *(v147 + 72);
  while (1)
  {
    sub_1B0AF4CB4(v93, v30, type metadata accessor for TaskHistory.Running);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_1B0AF4054(v30, type metadata accessor for TaskHistory.Running);
LABEL_29:
    v93 += v94;
    if (!--v92)
    {
      goto LABEL_53;
    }
  }

  v95 = *v30;
  v96 = *(v30 + 1);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
  sub_1B0AF4054(&v30[*(v97 + 64)], type metadata accessor for ClientCommand);
  v98 = v95 == v151 && v96 == v150;
  if (!v98)
  {
    goto LABEL_29;
  }

  v99 = v141;
  sub_1B0AF4CB4(v93, v141, type metadata accessor for TaskHistory.Running);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    goto LABEL_84;
  }

  v100 = *v99;
  v101 = *(v99 + 4);
  v102 = *(v99 + 8);
  sub_1B0AF4054(v99 + *(v97 + 64), type metadata accessor for ClientCommand);

  v98 = v100 == v151;
  v60 = v153;
  if (!v98)
  {
    __break(1u);
    goto LABEL_81;
  }

  v103 = v156;
  if (v101 != v150)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  sub_1B0AE2A30(v102, v135, v153);
  sub_1B0AEF11C(v140, v148);

  if ((*(v155 + 48))(v60, 1, v103) == 1)
  {
    goto LABEL_77;
  }

  v104 = v138;
  sub_1B0AF4C4C(v60, v138, type metadata accessor for FindMissingMessages.CommandID);
  v105 = v139;
  sub_1B0AF4C4C(v104, v139, type metadata accessor for FindMissingMessages.CommandID);
  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    return sub_1B0AF4054(v105, type metadata accessor for FindMissingMessages.CommandID);
  }

  if (*(v105 + 8))
  {
    return result;
  }

LABEL_12:
  v74 = v157;
  if (*(v157 + 9))
  {
    v75 = 256;
  }

  else
  {
    v75 = 0;
  }

  v76 = v154;
  sub_1B0B7EB64(v75 | *(v157 + 8), v154);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4030, &qword_1B0EC2B00);
  if ((*(*(v77 - 8) + 48))(v76, 1, v77) == 1)
  {
    v78 = &qword_1EB6E42B0;
    v79 = &qword_1B0EC49E8;
    v80 = v76;
  }

  else
  {
    v81 = v149;
    MessageIdentifierSet.ranges.getter(v149);
    v82 = sub_1B0B4A3FC();
    v84 = v83;
    sub_1B0398EFC(v81, &qword_1EB6E42A8, &qword_1B0EC49E0);
    if ((v84 & 1) == 0)
    {
      result = sub_1B0398EFC(v76, &qword_1EB6E4030, &qword_1B0EC2B00);
      *(v74 + 16) = HIDWORD(v82);
      *(v74 + 20) = 0;
      return result;
    }

    v78 = &qword_1EB6E4030;
    v79 = &qword_1B0EC2B00;
    v80 = v76;
  }

  return sub_1B0398EFC(v80, v78, v79);
}

uint64_t sub_1B0AF1388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v103 = a2;
  v104 = a1;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v15 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v115 = &v97 - v16;
  v17 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v114 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v122 = &v97 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v125 = &v97 - v22;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42B8, &qword_1B0EC49F8);
  MEMORY[0x1EEE9AC00](v127);
  v101 = (&v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v98 = &v97 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v97 - v27);
  MEMORY[0x1EEE9AC00](v29);
  v124 = &v97 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42C0, &qword_1B0EC4A00);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v99 = &v97 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v100 = (&v97 - v34);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v97 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v105 = (&v97 - v39);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v40 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v110 = &v97 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v109 = &v97 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v102 = &v97 - v45;
  v46 = *(a11 + 16);
  v108 = a11;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v106 = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v112 = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v107 = a5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v111 = a6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v121 = v46;
  if (!v46)
  {
LABEL_17:
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42C8, &qword_1B0EC4A08);
    v81 = v105;
    (*(*(v80 - 8) + 56))(v105, 1, 1, v80);
    goto LABEL_20;
  }

  v119 = (v40 + 56);
  v120 = (v15 + 48);
  v113 = (v40 + 48);
  v47 = _s20GrowWindowOfInterestV6ResultVMa(0);
  v48 = 0;
  v49 = v108 + ((*(*(v47 - 8) + 80) + 32) & ~*(*(v47 - 8) + 80));
  v116 = *(*(v47 - 8) + 72);
  v117 = v47;
  v118 = v37;
  v50 = v122;
  while (1)
  {
    v51 = v127;
    v52 = *(v127 + 48);
    v53 = v124;
    sub_1B0AF4CB4(v49, &v124[v52], _s20GrowWindowOfInterestV6ResultVMa);
    *v28 = v48;
    v54 = v28 + *(v51 + 48);
    sub_1B0AF4C4C(&v53[v52], v54, _s20GrowWindowOfInterestV6ResultVMa);
    sub_1B03B5C80(v54 + *(v47 + 24), v50, &qword_1EB6E3920, &qword_1B0E9B070);
    v55 = (*v120)(v50, 1, v126);
    sub_1B0398EFC(v50, &qword_1EB6E3920, &qword_1B0E9B070);
    if (v55 != 1)
    {
      v62 = v125;
      (*v119)(v125, 1, 1, v123);
      v64 = v118;
LABEL_9:
      v67 = v62;
      v68 = &unk_1EB6E3670;
      v69 = &unk_1B0E9B260;
LABEL_10:
      sub_1B0398EFC(v67, v68, v69);
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42C8, &qword_1B0EC4A08);
      (*(*(v70 - 8) + 56))(v64, 1, 1, v70);
      goto LABEL_11;
    }

    v56 = v54 + *(v47 + 20);
    v57 = v114;
    sub_1B0AF4CB4(v56, v114, _s15MissingMessagesO11QueriedUIDsVMa);
    v58 = v57;
    v59 = v115;
    sub_1B03C60A4(v58, v115, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (MessageIdentifierSet.count.getter() <= 0)
    {
      sub_1B0398EFC(v59, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v63 = 1;
      v62 = v125;
    }

    else
    {
      v60 = v110;
      sub_1B03C60A4(v59, v110, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v61 = v60;
      v62 = v125;
      sub_1B03C60A4(v61, v125, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v63 = 0;
    }

    v65 = v123;
    (*v119)(v62, v63, 1, v123);
    v66 = (*v113)(v62, 1, v65);
    v64 = v118;
    if (v66 == 1)
    {
      goto LABEL_9;
    }

    v75 = v62;
    v76 = v109;
    sub_1B03C60A4(v75, v109, &unk_1EB6E26C0, &unk_1B0E9DE10);
    if (sub_1B0A9EF00(v48, 0, v112, v111, v77))
    {
      v67 = v76;
      v68 = &unk_1EB6E26C0;
      v69 = &unk_1B0E9DE10;
      goto LABEL_10;
    }

    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42C8, &qword_1B0EC4A08);
    v79 = *(v78 + 48);
    *v64 = v48;
    sub_1B03C60A4(v76, v64 + v79, &unk_1EB6E26C0, &unk_1B0E9DE10);
    (*(*(v78 - 8) + 56))(v64, 0, 1, v78);
LABEL_11:
    sub_1B0398EFC(v28, &qword_1EB6E42B8, &qword_1B0EC49F8);
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42C8, &qword_1B0EC4A08);
    v72 = *(v71 - 8);
    v73 = *(v72 + 48);
    v74 = v73(v64, 1, v71);
    sub_1B0398EFC(v64, &qword_1EB6E42C0, &qword_1B0EC4A00);
    if (v74 != 1)
    {
      break;
    }

    ++v48;
    v47 = v117;
    v49 += v116;
    if (v121 == v48)
    {
      goto LABEL_17;
    }
  }

  v82 = v127;
  v83 = *(v127 + 48);
  v84 = v98;
  sub_1B0AF4CB4(v49, &v98[v83], _s20GrowWindowOfInterestV6ResultVMa);
  v85 = v101;
  *v101 = v48;
  v86 = *(v82 + 48);
  sub_1B0AF4C4C(&v84[v83], v85 + v86, _s20GrowWindowOfInterestV6ResultVMa);
  v87 = v100;
  sub_1B0AF3414(v48, v85 + v86, v112, v111, v100);
  sub_1B0398EFC(v85, &qword_1EB6E42B8, &qword_1B0EC49F8);
  v88 = v99;
  sub_1B03B5C80(v87, v99, &qword_1EB6E42C0, &qword_1B0EC4A00);
  if (v73(v88, 1, v71) == 1)
  {

    __break(1u);
  }

  else
  {
    v81 = v105;
    sub_1B03C60A4(v88, v105, &qword_1EB6E42C8, &qword_1B0EC4A08);
    sub_1B0398EFC(v87, &qword_1EB6E42C0, &qword_1B0EC4A00);
    (*(v72 + 56))(v81, 0, 1, v71);
LABEL_20:

    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42C8, &qword_1B0EC4A08);
    if ((*(*(v89 - 8) + 48))(v81, 1, v89) == 1)
    {
      sub_1B0398EFC(v81, &qword_1EB6E42C0, &qword_1B0EC4A00);
      return 0;
    }

    else
    {
      v90 = *v81;
      v91 = v102;
      sub_1B03C60A4(v81 + *(v89 + 48), v102, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3620, &qword_1B0EC26A0);
      swift_allocBox();
      v93 = *(v92 + 48);
      v94 = v103;
      *v95 = v104;
      v95[1] = v94;
      sub_1B03C60A4(v91, v95 + v93, &unk_1EB6E26C0, &unk_1B0E9DE10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    }

    return v90;
  }

  return result;
}

uint64_t sub_1B0AF1F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29 - v6;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v31 = &v29 - v9;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v10 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v34 = &v29 - v11;
  v12 = _s20GrowWindowOfInterestV6ResultVMa(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03D06F8();
  result = sub_1B0E46EE8();
  v17 = *(a4 + 16);
  if (v17)
  {
    v18 = *(v12 + 24);
    v19 = a4 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v20 = (v10 + 16);
    v21 = v13;
    v22 = (v8 + 48);
    v32 = *(v21 + 72);
    v33 = v18;
    v30 = v15;
    do
    {
      sub_1B0AF4CB4(v19, v15, _s20GrowWindowOfInterestV6ResultVMa);
      (*v20)(v34, v15, v36);
      sub_1B0E46ED8();
      sub_1B03B5C80(&v15[v33], v7, &qword_1EB6E3920, &qword_1B0E9B070);
      if ((*v22)(v7, 1, v35) == 1)
      {
        sub_1B0AF4054(v15, _s20GrowWindowOfInterestV6ResultVMa);
        result = sub_1B0398EFC(v7, &qword_1EB6E3920, &qword_1B0E9B070);
      }

      else
      {
        v23 = v7;
        v24 = v22;
        v25 = v20;
        v26 = v7;
        v27 = v31;
        sub_1B03C60A4(v23, v31, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0E46EC8();
        v28 = v27;
        v7 = v26;
        v20 = v25;
        v22 = v24;
        v15 = v30;
        sub_1B0398EFC(v28, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        result = sub_1B0AF4054(v15, _s20GrowWindowOfInterestV6ResultVMa);
      }

      v19 += v32;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t _s20GrowWindowOfInterestV6ResultVMa(uint64_t a1)
{
  result = qword_1EB6DDA10;
  if (!qword_1EB6DDA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B0AF23A0@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v29 = a4;
  v30 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v28 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v26 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  LODWORD(v32[0]) = 1;
  LODWORD(v33) = a2;
  v16 = sub_1B041C1E8();
  static MessageIdentifier.... infix(_:_:)(v32, &v33, &type metadata for UID, &v34);
  sub_1B03D06F8();
  sub_1B0E46EE8();
  v32[0] = v34;
  v33 = Range<>.init<A>(_:)(v32, &type metadata for UID, v16);
  if (HIDWORD(v33) != v33)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    v17 = sub_1B0E46E88();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
    sub_1B0E46E38();
    v17(v32, 0);
  }

  MessageIdentifierSet.intersection(_:)(v9, v12);
  sub_1B0398EFC(v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  MessageIdentifierSet.suffix(_:)(v27, v5, v15);
  sub_1B0398EFC(v12, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v18 = sub_1B0B4AAF0();
  if ((v18 & 0x100000000) != 0 || (v19 = v18, v18 > a2))
  {
    v23 = v26;
    sub_1B0E46EE8();
    LODWORD(v33) = 1;
    LODWORD(v31) = a2;
    static MessageIdentifier.... infix(_:_:)(&v33, &v31, &type metadata for UID, v32);
    v33 = v32[0];
    v31 = Range<>.init<A>(_:)(&v33, &type metadata for UID, v16);
    v24 = _s20GrowWindowOfInterestV6ResultVMa(0);
    v25 = v29;
    sub_1B0E46F08();
    sub_1B0398EFC(v30, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v15, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    (*(v28 + 56))(v25 + *(v24 + 24), 1, 1, v5);
    return sub_1B03C60A4(v23, v25, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  else
  {
    v20 = v29;
    sub_1B03B5C80(v15, v29, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    LODWORD(v33) = v19;
    LODWORD(v31) = a2;
    static MessageIdentifier.... infix(_:_:)(&v33, &v31, &type metadata for UID, v32);
    v33 = v32[0];
    v31 = Range<>.init<A>(_:)(&v33, &type metadata for UID, v16);
    v21 = _s20GrowWindowOfInterestV6ResultVMa(0);
    sub_1B0E46F08();
    sub_1B0398EFC(v30, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v15, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    return (*(v28 + 56))(v20 + *(v21 + 24), 1, 1, v5);
  }
}

uint64_t sub_1B0AF27F8@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v21 = *(v2 - 8);
  v22 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v19 = &v19 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - v12;
  v14 = _s20GrowWindowOfInterestV6ResultVMa(0);
  sub_1B03B5C80(v1 + *(v14 + 24), v13, &qword_1EB6E3920, &qword_1B0E9B070);
  v15 = 1;
  LODWORD(v5) = (*(v5 + 48))(v13, 1, v4);
  v16 = v20;
  sub_1B0398EFC(v13, &qword_1EB6E3920, &qword_1B0E9B070);
  if (v5 == 1)
  {
    sub_1B0AF4CB4(v1 + *(v14 + 20), v10, _s15MissingMessagesO11QueriedUIDsVMa);
    sub_1B03C60A4(v10, v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_1B0398EFC(v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    }

    else
    {
      v17 = v19;
      sub_1B03C60A4(v7, v19, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03C60A4(v17, v16, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v15 = 0;
    }
  }

  return (*(v21 + 56))(v16, v15, 1, v22);
}

uint64_t sub_1B0AF2B0C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *(_s20GrowWindowOfInterestV6ResultVMa(0) + 24);
  sub_1B03B5C80(v2 + v14, v9, &qword_1EB6E3920, &qword_1B0E9B070);
  v15 = *(v11 + 48);
  v16 = (v11 + 56);
  if (v15(v9, 1, v10) == 1)
  {
    sub_1B0398EFC(v9, &qword_1EB6E3920, &qword_1B0E9B070);
    sub_1B0398EFC(v2 + v14, &qword_1EB6E3920, &qword_1B0E9B070);
    sub_1B03B5C80(a1, v2 + v14, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    return (*v16)(v2 + v14, 0, 1, v10);
  }

  else
  {
    sub_1B03C60A4(v9, v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    MessageIdentifierSet.union(_:)(a1, v6);
    sub_1B0398EFC(v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    (*v16)(v6, 0, 1, v10);
    return sub_1B0ADE468(v6, v2 + v14);
  }
}

uint64_t sub_1B0AF2D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v38 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v8 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v38 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = _s20GrowWindowOfInterestV6ResultVMa(0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a4 + 16);
  if (v20)
  {
    v43 = v7;
    v21 = 0;
    v22 = *(v16 + 24);
    v23 = a4 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v40 = *(v17 + 72);
    v41 = v22;
    v24 = (v8 + 48);
    v25 = &unk_1EB6E1AF0;
    v38 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = v24;
    while (1)
    {
      sub_1B0AF4CB4(v23, v19, _s20GrowWindowOfInterestV6ResultVMa);
      sub_1B03B5C80(v19, v44, v25, &unk_1B0E9AF40);
      v26 = v43;
      sub_1B03B5C80(&v19[v41], v43, &qword_1EB6E3920, &qword_1B0E9B070);
      v27 = v25;
      v28 = *v24;
      if ((*v24)(v26, 1, v45) == 1)
      {
        sub_1B03D06F8();
        v29 = v42;
        sub_1B0E46EE8();
        v30 = v26;
        v31 = v29;
        v19 = v38;
        v32 = v28(v30, 1, v45);
        v25 = v27;
        if (v32 != 1)
        {
          sub_1B0398EFC(v43, &qword_1EB6E3920, &qword_1B0E9B070);
        }
      }

      else
      {
        v33 = v26;
        v31 = v42;
        sub_1B03C60A4(v33, v42, v27, &unk_1B0E9AF40);
        v25 = v27;
      }

      v34 = v44;
      MessageIdentifierSet.subtracting(_:)(v31, v14);
      sub_1B0398EFC(v34, v25, &unk_1B0E9AF40);
      sub_1B0398EFC(v31, v25, &unk_1B0E9AF40);
      v35 = MessageIdentifierSet.count.getter();
      sub_1B0398EFC(v14, v25, &unk_1B0E9AF40);
      result = sub_1B0AF4054(v19, _s20GrowWindowOfInterestV6ResultVMa);
      v37 = __OFADD__(v21, v35);
      v21 += v35;
      if (v37)
      {
        break;
      }

      v24 = v39;
      v23 += v40;
      if (!--v20)
      {
        return v21;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

unint64_t sub_1B0AF3134(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19[-v10];
  v12 = *(a4 + 16);
  if (v12)
  {
    v13 = v12 - 1;
    v14 = *(_s20GrowWindowOfInterestV6ResultVMa(0) - 8);
    sub_1B03B5C80(a4 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v13, v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03C60A4(v8, v11, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v15 = sub_1B0B4AAF0();
    sub_1B0398EFC(v11, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v16 = 0;
    v17 = 1;
    if ((v15 & 0x100000000) == 0 && (v15 & 0xFFFFFFFE) != 0)
    {
      v17 = 0;
      v16 = (v15 - 1);
    }
  }

  else
  {
    v17 = 0;
    v16 = HIDWORD(a2);
  }

  return v16 | (v17 << 32);
}

unint64_t sub_1B0AF32C8(unint64_t result)
{
  if (*(result + 16))
  {
    v1 = result;
    sub_1B03D06F8();
    result = sub_1B0E46EE8();
    v2 = *(v1 + 16);
    if (!v2)
    {
    }

    v3 = 0;
    while (v3 < *(v1 + 16))
    {
      v6[0] = *(v1 + 32 + 8 * v3);
      v4 = sub_1B041C1E8();
      result = Range<>.init<A>(_:)(v6, &type metadata for UID, v4);
      v6[4] = result;
      if (HIDWORD(result) != result)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        v5 = sub_1B0E46E88();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
        sub_1B0E46E38();
        result = v5(v6, 0);
      }

      if (v2 == ++v3)
      {
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0AF3414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v42 = a3;
  v43 = a4;
  v44 = a1;
  v48 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v41 - v8;
  v9 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v46 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v45 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v41 = &v41 - v21;
  v22 = _s20GrowWindowOfInterestV6ResultVMa(0);
  sub_1B03B5C80(a2 + *(v22 + 24), v13, &qword_1EB6E3920, &qword_1B0E9B070);
  LODWORD(v7) = (*(v7 + 48))(v13, 1, v6);
  sub_1B0398EFC(v13, &qword_1EB6E3920, &qword_1B0E9B070);
  if (v7 != 1)
  {
    (*(v18 + 56))(v16, 1, 1, v17);
LABEL_7:
    v30 = &unk_1EB6E3670;
    v31 = &unk_1B0E9B260;
    v32 = v16;
LABEL_8:
    sub_1B0398EFC(v32, v30, v31);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42C8, &qword_1B0EC4A08);
    return (*(*(v33 - 8) + 56))(v48, 1, 1, v33);
  }

  v23 = a2 + *(v22 + 20);
  v24 = v46;
  sub_1B0AF4CB4(v23, v46, _s15MissingMessagesO11QueriedUIDsVMa);
  v25 = v24;
  v26 = v47;
  sub_1B03C60A4(v25, v47, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_1B0398EFC(v26, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v29 = 1;
  }

  else
  {
    v27 = v26;
    v28 = v45;
    sub_1B03C60A4(v27, v45, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03C60A4(v28, v16, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v29 = 0;
  }

  (*(v18 + 56))(v16, v29, 1, v17);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    goto LABEL_7;
  }

  v35 = v41;
  sub_1B03C60A4(v16, v41, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v36 = v44;
  if (sub_1B0A9EF00(v44, 0, v42, v43, v37))
  {
    v30 = &unk_1EB6E26C0;
    v31 = &unk_1B0E9DE10;
    v32 = v35;
    goto LABEL_8;
  }

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42C8, &qword_1B0EC4A08);
  v39 = *(v38 + 48);
  v40 = v48;
  *v48 = v36;
  sub_1B03C60A4(v35, v40 + v39, &unk_1EB6E26C0, &unk_1B0E9DE10);
  return (*(*(v38 - 8) + 56))(v40, 0, 1, v38);
}

uint64_t sub_1B0AF3920(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v25 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42A0, "ְ\t");
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v26 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  sub_1B0AF27F8(&v25 - v16);
  sub_1B03B5C80(a2, v14, &unk_1EB6E26C0, &unk_1B0E9DE10);
  (*(v4 + 56))(v14, 0, 1, v3);
  v18 = *(v7 + 56);
  sub_1B03B5C80(v17, v9, &unk_1EB6E3670, &unk_1B0E9B260);
  sub_1B03B5C80(v14, &v9[v18], &unk_1EB6E3670, &unk_1B0E9B260);
  v19 = *(v4 + 48);
  if (v19(v9, 1, v3) != 1)
  {
    sub_1B03B5C80(v9, v26, &unk_1EB6E3670, &unk_1B0E9B260);
    if (v19(&v9[v18], 1, v3) != 1)
    {
      v21 = &v9[v18];
      v22 = v25;
      sub_1B03C60A4(v21, v25, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B03D06F8();
      v23 = v26;
      v20 = sub_1B0E46E08();
      sub_1B0398EFC(v22, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0398EFC(v14, &unk_1EB6E3670, &unk_1B0E9B260);
      sub_1B0398EFC(v17, &unk_1EB6E3670, &unk_1B0E9B260);
      sub_1B0398EFC(v23, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0398EFC(v9, &unk_1EB6E3670, &unk_1B0E9B260);
      return v20 & 1;
    }

    sub_1B0398EFC(v14, &unk_1EB6E3670, &unk_1B0E9B260);
    sub_1B0398EFC(v17, &unk_1EB6E3670, &unk_1B0E9B260);
    sub_1B0398EFC(v26, &unk_1EB6E26C0, &unk_1B0E9DE10);
    goto LABEL_6;
  }

  sub_1B0398EFC(v14, &unk_1EB6E3670, &unk_1B0E9B260);
  sub_1B0398EFC(v17, &unk_1EB6E3670, &unk_1B0E9B260);
  if (v19(&v9[v18], 1, v3) != 1)
  {
LABEL_6:
    sub_1B0398EFC(v9, &qword_1EB6E42A0, "ְ\t");
    v20 = 0;
    return v20 & 1;
  }

  sub_1B0398EFC(v9, &unk_1EB6E3670, &unk_1B0E9B260);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_1B0AF3D34@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - v5;
  v7 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s20GrowWindowOfInterestV6ResultVMa(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v28 = &v28 - v18;
  sub_1B03D06F8();
  sub_1B0E46EE8();
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = v4;
    v21 = *(v10 + 20);
    v22 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v23 = *(v11 + 72);
    v24 = (v20 + 16);
    do
    {
      sub_1B0AF4CB4(v22, v13, _s20GrowWindowOfInterestV6ResultVMa);
      sub_1B0AF4CB4(&v13[v21], v9, _s15MissingMessagesO11QueriedUIDsVMa);
      (*v24)(v6, v9, v3);
      sub_1B0E46ED8();
      sub_1B0AF4054(v13, _s20GrowWindowOfInterestV6ResultVMa);
      sub_1B0398EFC(v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v22 += v23;
      --v19;
    }

    while (v19);
  }

  v25 = v16;
  v26 = v28;
  sub_1B03C60A4(v25, v28, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  return sub_1B03C60A4(v26, v29, &unk_1EB6E1AF0, &unk_1B0E9AF40);
}

uint64_t sub_1B0AF4054(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1B0AF40B4(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4280, &qword_1B0EC4800);
  v4 = *(v3 - 8);
  v40 = v3;
  v41 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42D8, &qword_1B0EC4A10);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v39 - v10;
  v12 = type metadata accessor for DownloadTask.CommandID(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v44 = &v39 - v16;
  v52 = type metadata accessor for TaskHistory.Running(0);
  MEMORY[0x1EEE9AC00](v52);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v46 = &v39 - v21;
  v51 = *(a1 + 16);
  if (!v51)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v22 = 0;
  v23 = *(v20 + 80);
  v49 = *(v20 + 72);
  v50 = a1 + ((v23 + 32) & ~v23);
  v47 = (v13 + 48);
  v48 = (v13 + 56);
  v54 = MEMORY[0x1E69E7CC0];
  v24 = v46;
  v42 = v13;
  v43 = v12;
  do
  {
    sub_1B0AF4CB4(v50 + v49 * v22, v24, type metadata accessor for TaskHistory.Running);
    sub_1B0AF4CB4(v24, v18, type metadata accessor for TaskHistory.Running);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B0AF4054(v18, type metadata accessor for TaskHistory.Running);
      v25 = 1;
    }

    else
    {
      v26 = v11;
      v27 = *(v18 + 2);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
      sub_1B0AF4054(&v18[*(v28 + 64)], type metadata accessor for ClientCommand);
      v29 = *(v45 + 16);
      if (v29)
      {
        v30 = v45 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
        v31 = *(v41 + 72);
        while (1)
        {
          sub_1B03B5C80(v30, v6, &qword_1EB6E4280, &qword_1B0EC4800);
          if (*v6 == v27)
          {
            break;
          }

          sub_1B0398EFC(v6, &qword_1EB6E4280, &qword_1B0EC4800);
          v30 += v31;
          if (!--v29)
          {
            v25 = 1;
            v11 = v26;
            goto LABEL_14;
          }
        }

        v32 = v39;
        sub_1B03C60A4(v6, v39, &qword_1EB6E4280, &qword_1B0EC4800);
        v11 = v26;
        sub_1B0AF4CB4(v32 + *(v40 + 52), v26, type metadata accessor for DownloadTask.CommandID);
        sub_1B0398EFC(v32, &qword_1EB6E4280, &qword_1B0EC4800);
        v25 = 0;
LABEL_14:
        v13 = v42;
        v12 = v43;
        v24 = v46;
      }

      else
      {
        v25 = 1;
        v11 = v26;
        v13 = v42;
        v12 = v43;
      }
    }

    (*v48)(v11, v25, 1, v12);
    sub_1B0AF4054(v24, type metadata accessor for TaskHistory.Running);
    if ((*v47)(v11, 1, v12) == 1)
    {
      sub_1B0398EFC(v11, &qword_1EB6E42D8, &qword_1B0EC4A10);
    }

    else
    {
      v33 = v44;
      sub_1B0AF4C4C(v11, v44, type metadata accessor for DownloadTask.CommandID);
      sub_1B0AF4C4C(v33, v53, type metadata accessor for DownloadTask.CommandID);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_1B0AFFC30(0, v54[2] + 1, 1, v54);
      }

      v35 = v54[2];
      v34 = v54[3];
      if (v35 >= v34 >> 1)
      {
        v54 = sub_1B0AFFC30((v34 > 1), v35 + 1, 1, v54);
      }

      v36 = v53;
      v37 = v54;
      v54[2] = v35 + 1;
      sub_1B0AF4C4C(v36, v37 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v35, type metadata accessor for DownloadTask.CommandID);
      v24 = v46;
    }

    ++v22;
  }

  while (v22 != v51);
  return v54;
}

void *sub_1B0AF4680(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4260, &qword_1B0EC47E0);
  v4 = *(v3 - 8);
  v40 = v3;
  v41 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4258, &qword_1B0EC49F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v39 - v10;
  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  v13 = *(Missing - 8);
  MEMORY[0x1EEE9AC00](Missing);
  v53 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v44 = &v39 - v16;
  v52 = type metadata accessor for TaskHistory.Running(0);
  MEMORY[0x1EEE9AC00](v52);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v46 = &v39 - v21;
  v51 = *(a1 + 16);
  if (!v51)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v22 = 0;
  v23 = *(v20 + 80);
  v49 = *(v20 + 72);
  v50 = a1 + ((v23 + 32) & ~v23);
  v47 = (v13 + 48);
  v48 = (v13 + 56);
  v54 = MEMORY[0x1E69E7CC0];
  v24 = v46;
  v42 = v13;
  v43 = Missing;
  do
  {
    sub_1B0AF4CB4(v50 + v49 * v22, v24, type metadata accessor for TaskHistory.Running);
    sub_1B0AF4CB4(v24, v18, type metadata accessor for TaskHistory.Running);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B0AF4054(v18, type metadata accessor for TaskHistory.Running);
      v25 = 1;
    }

    else
    {
      v26 = v11;
      v27 = *(v18 + 2);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
      sub_1B0AF4054(&v18[*(v28 + 64)], type metadata accessor for ClientCommand);
      v29 = *(v45 + 16);
      if (v29)
      {
        v30 = v45 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
        v31 = *(v41 + 72);
        while (1)
        {
          sub_1B03B5C80(v30, v6, &qword_1EB6E4260, &qword_1B0EC47E0);
          if (*v6 == v27)
          {
            break;
          }

          sub_1B0398EFC(v6, &qword_1EB6E4260, &qword_1B0EC47E0);
          v30 += v31;
          if (!--v29)
          {
            v25 = 1;
            v11 = v26;
            goto LABEL_14;
          }
        }

        v32 = v39;
        sub_1B03C60A4(v6, v39, &qword_1EB6E4260, &qword_1B0EC47E0);
        v11 = v26;
        sub_1B0AF4CB4(v32 + *(v40 + 52), v26, type metadata accessor for FindMissingMessages.CommandID);
        sub_1B0398EFC(v32, &qword_1EB6E4260, &qword_1B0EC47E0);
        v25 = 0;
LABEL_14:
        v13 = v42;
        Missing = v43;
        v24 = v46;
      }

      else
      {
        v25 = 1;
        v11 = v26;
        v13 = v42;
        Missing = v43;
      }
    }

    (*v48)(v11, v25, 1, Missing);
    sub_1B0AF4054(v24, type metadata accessor for TaskHistory.Running);
    if ((*v47)(v11, 1, Missing) == 1)
    {
      sub_1B0398EFC(v11, &qword_1EB6E4258, &qword_1B0EC49F0);
    }

    else
    {
      v33 = v44;
      sub_1B0AF4C4C(v11, v44, type metadata accessor for FindMissingMessages.CommandID);
      sub_1B0AF4C4C(v33, v53, type metadata accessor for FindMissingMessages.CommandID);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_1B0B00010(0, v54[2] + 1, 1, v54);
      }

      v35 = v54[2];
      v34 = v54[3];
      if (v35 >= v34 >> 1)
      {
        v54 = sub_1B0B00010((v34 > 1), v35 + 1, 1, v54);
      }

      v36 = v53;
      v37 = v54;
      v54[2] = v35 + 1;
      sub_1B0AF4C4C(v36, v37 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v35, type metadata accessor for FindMissingMessages.CommandID);
      v24 = v46;
    }

    ++v22;
  }

  while (v22 != v51);
  return v54;
}

uint64_t sub_1B0AF4C4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0AF4CB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for PartialRange(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PartialRange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_1B0AF4DF4(uint64_t a1)
{
  sub_1B043B29C(319);
  if (v1 <= 0x3F)
  {
    _s15MissingMessagesO11QueriedUIDsVMa(319);
    if (v2 <= 0x3F)
    {
      sub_1B0AB44A4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for FetchedWindow(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for FetchedWindow(uint64_t result, int a2, int a3)
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

unint64_t sub_1B0AF4EFC()
{
  result = qword_1EB6E42E0;
  if (!qword_1EB6E42E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E42E0);
  }

  return result;
}

uint64_t sub_1B0AF4F50@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for MessagesToRemoveHelper.Range(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_1B0AF8134(v12, v10, type metadata accessor for MessagesToRemoveHelper.Range);
      v14 = a1(v10);
      if (v3)
      {
        return sub_1B0AF819C(v10, type metadata accessor for MessagesToRemoveHelper.Range);
      }

      if (v14)
      {
        break;
      }

      sub_1B0AF819C(v10, type metadata accessor for MessagesToRemoveHelper.Range);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_1B0AF81FC(v10, v18, type metadata accessor for MessagesToRemoveHelper.Range);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

unint64_t sub_1B0AF511C(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  for (i = (a3 + 32); ; ++i)
  {
    v8 = *i;
    v9 = *i;
    result = a1(&v9, a2);
    if (v3)
    {
      break;
    }

    if (result)
    {
      return v8 | (HIDWORD(v8) << 32);
    }

    if (!--v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B0AF51AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = BYTE5(a4);
  v61 = a3;
  v62 = a1;
  v59 = a2;
  v63 = a6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v57);
  v55 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v52 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v52 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v52 - v14;
  v15 = type metadata accessor for MessageBatches(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v54 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v52 = &v52 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v52 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v52 - v30;
  LOBYTE(v66[0]) = v7 & 1;
  LOBYTE(v65) = BYTE4(a5) & 1;
  v60 = a5;
  sub_1B0AF6F68(v61, v62, &v52 - v30);
  sub_1B03B5C80(v31, v28, &unk_1EB6E3670, &unk_1B0E9B260);
  if ((*(v19 + 48))(v28, 1, v18) == 1)
  {
    sub_1B0398EFC(v31, &unk_1EB6E3670, &unk_1B0E9B260);
    sub_1B0398EFC(v28, &unk_1EB6E3670, &unk_1B0E9B260);
    return (*(v19 + 56))(v63, 1, 1, v18);
  }

  v61 = v19;
  v62 = v18;
  v33 = v63;
  sub_1B03C60A4(v28, v25, &unk_1EB6E26C0, &unk_1B0E9DE10);
  sub_1B0AF8134(v59, v17, type metadata accessor for MessageBatches);
  LOBYTE(v66[0]) = 0;
  v34 = 0xFFFFFFFFLL;
  if ((v60 & 0x100000000) == 0)
  {
    v34 = a5;
  }

  sub_1B0B3EDEC(v34);
  v35 = *(v17 + 1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v36 = sub_1B0AF819C(v17, type metadata accessor for MessageBatches);
  MEMORY[0x1EEE9AC00](v36);
  *(&v52 - 2) = v25;
  v37 = sub_1B0AF511C(sub_1B0AF74CC, (&v52 - 4), v35);
  v39 = v38;

  v40 = v25;
  if ((v39 & 1) == 0)
  {
    v66[0] = v37;
    v41 = sub_1B041C1E8();
    v65 = Range<>.init<A>(_:)(v66, &type metadata for UID, v41);
    sub_1B03D06F8();
    v42 = v58;
    sub_1B0E46F08();
    v44 = v56;
    v43 = v57;
    MessageIdentifierSet.intersection(_:)(v25, v56);
    sub_1B0398EFC(v42, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if ((v60 & 0x100000000) != 0 || (LODWORD(v66[0]) = v60, (MessageIdentifierSet.contains(_:)(v66, v43) & 1) == 0))
    {
      v46 = v55;
      sub_1B03B5C80(v44, v55, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v50 = MessageIdentifierSet.count.getter();
      sub_1B0398EFC(v44, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0398EFC(v31, &unk_1EB6E3670, &unk_1B0E9B260);
      if (v50 >= 1)
      {
        v48 = v46;
        v49 = v54;
        goto LABEL_13;
      }
    }

    else
    {
      LODWORD(v65) = v60;
      LODWORD(v64) = -1;
      static MessageIdentifier.... infix(_:_:)(&v65, &v64, &type metadata for UID, v66);
      v65 = v66[0];
      v64 = Range<>.init<A>(_:)(&v65, &type metadata for UID, v41);
      v45 = v58;
      sub_1B0E46F08();
      v46 = v53;
      MessageIdentifierSet.union(_:)(v45, v53);
      sub_1B0398EFC(v45, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v47 = MessageIdentifierSet.count.getter();
      sub_1B0398EFC(v44, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0398EFC(v31, &unk_1EB6E3670, &unk_1B0E9B260);
      if (v47 >= 1)
      {
        v48 = v46;
        v49 = v52;
LABEL_13:
        sub_1B03C60A4(v48, v49, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B03C60A4(v49, v33, &unk_1EB6E26C0, &unk_1B0E9DE10);
        v51 = 0;
LABEL_15:
        (*(v61 + 56))(v33, v51, 1, v62);
        return sub_1B0398EFC(v40, &unk_1EB6E26C0, &unk_1B0E9DE10);
      }
    }

    sub_1B0398EFC(v46, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v51 = 1;
    goto LABEL_15;
  }

  sub_1B0398EFC(v31, &unk_1EB6E3670, &unk_1B0E9B260);
  (*(v61 + 56))(v33, 1, 1, v62);
  return sub_1B0398EFC(v40, &unk_1EB6E26C0, &unk_1B0E9DE10);
}

uint64_t sub_1B0AF58C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v31 = &v30 - v8;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v33);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v34 = &v30 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v32 = &v30 - v17;
  sub_1B03D06F8();
  sub_1B0E46EE8();
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = (v4 + 16);
    v20 = (a1 + 40);
    do
    {
      if ((*v20 & 1) == 0)
      {
        v39 = *(v20 - 1);
        v21 = sub_1B041C1E8();
        v38 = Range<>.init<A>(_:)(&v39, &type metadata for UID, v21);
        sub_1B0E46F08();
        (*v19)(v6, v10, v3);
        sub_1B0E46ED8();
        sub_1B0398EFC(v10, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      }

      v20 += 12;
      --v18;
    }

    while (v18);
  }

  v22 = v32;
  sub_1B03C60A4(v15, v32, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v23 = v34;
  sub_1B03B5C80(v22, v34, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v24 = MessageIdentifierSet.count.getter();
  sub_1B0398EFC(v22, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (v24 <= 0)
  {
    sub_1B0398EFC(v23, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v28 = 1;
    v27 = v37;
  }

  else
  {
    v25 = v31;
    sub_1B03C60A4(v23, v31, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v26 = v25;
    v27 = v37;
    sub_1B03C60A4(v26, v37, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v28 = 0;
  }

  return (*(v35 + 56))(v27, v28, 1, v36);
}

void sub_1B0AF5C8C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v45 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  if ((a1 & 0x100000000) == 0)
  {
    if (a1 == -1)
    {
      __break(1u);
      return;
    }

    ++v10;
    if ((a4 & 0x100000000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  if ((a4 & 0x100000000) == 0)
  {
LABEL_6:
    if (v10 <= a4)
    {
      v31 = a4;
    }

    else
    {
      v31 = v10;
    }

    if ((a1 & 0x100000000) != 0)
    {
      v10 = a4;
    }

    else
    {
      v10 = v31;
    }

LABEL_12:
    v46 = v10;
    v47 = v26;
    v48 = v30;
    v49 = &v45 - v27;
    v50 = v29;
    v51 = v28;
    v52 = a2;
    v53 = v25;
    v54 = a5;
    sub_1B03D06F8();
    sub_1B0E46EE8();
    v32 = *(a3 + 16);
    if (v32)
    {
      v33 = (a3 + 32);
      v34 = sub_1B041C1E8();
      v35 = (v45 + 16);
      do
      {
        v36 = *v33;
        v33 = (v33 + 12);
        v56[0] = v36;
        *v58 = Range<>.init<A>(_:)(v56, &type metadata for UID, v34);
        sub_1B0E46F08();
        (*v35)(v13, v18, v11);
        sub_1B0E46ED8();
        sub_1B0398EFC(v18, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        --v32;
      }

      while (v32);
    }

    v37 = v47;
    sub_1B03C60A4(v21, v47, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    LODWORD(v56[0]) = v46;
    v58[0] = -1;
    v38 = sub_1B041C1E8();
    static MessageIdentifier.... infix(_:_:)(v56, v58, &type metadata for UID, &v57);
    v39 = v48;
    sub_1B0E46EE8();
    v56[0] = v57;
    *v58 = Range<>.init<A>(_:)(v56, &type metadata for UID, v38);
    if (v58[1] != v58[0])
    {
      v40 = sub_1B0E46E88();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
      sub_1B0E46E38();
      v40(v56, 0);
    }

    v41 = v50;
    MessageIdentifierSet.subtracting(_:)(v39, v50);
    sub_1B0398EFC(v37, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v39, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if ((v52 & 0x100000000) != 0)
    {
      v42 = 1;
    }

    else
    {
      v42 = v52;
    }

    v58[0] = v42;
    LODWORD(v55) = -1;
    static MessageIdentifier.... infix(_:_:)(v58, &v55, &type metadata for UID, v56);
    *v58 = v56[0];
    v55 = Range<>.init<A>(_:)(v58, &type metadata for UID, v38);
    v43 = v51;
    sub_1B0E46F08();
    v44 = v49;
    MessageIdentifierSet.intersection(_:)(v43, v49);
    sub_1B0398EFC(v43, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v41, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03C60A4(v44, v54, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    return;
  }

  sub_1B0B4B7A8(a5);
}

BOOL sub_1B0AF61A8(unsigned int *a1, unsigned int *a2)
{
  if (*(a1 + 5))
  {
    return (*(a2 + 5) & 1) != 0;
  }

  if (*(a2 + 5))
  {
    return 0;
  }

  v3 = *a2 | (*(a2 + 4) << 32);
  if (((*a1 | (*(a1 + 4) << 32)) & 0x100000000) != 0)
  {
    if ((v3 & 0x100000000) != 0)
    {
      return 1;
    }
  }

  else if ((v3 & 0x100000000) == 0 && *a1 == *a2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1B0AF62A8(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 14931;
  }

  else
  {
    v2 = 978332499;
  }

  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
  v3 = sub_1B0E44B88();
  MEMORY[0x1B2726E80](v3);

  return v5;
}

uint64_t sub_1B0AF6338(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  v15 = *v2;
  v16 = *(v2 + 8) | (*(v2 + 12) << 32);
  v17 = *(v2 + 16);
  v18 = *(v2 + 20);
  LOBYTE(v26) = *(v2 + 13);
  LOBYTE(v25) = v18;
  sub_1B0AF6718(a1, a2, v15, v16 | (v26 << 40), v17 | (v18 << 32), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1B0398EFC(v7, &unk_1EB6E3670, &unk_1B0E9B260);
    result = sub_1B0B3ED74();
    if (v20)
    {
      return result;
    }

    LODWORD(v25) = result;
    LODWORD(v24) = -1;
    v21 = sub_1B041C1E8();
    static MessageIdentifier.... infix(_:_:)(&v25, &v24, &type metadata for UID, &v26);
    v25 = v26;
    v24 = Range<>.init<A>(_:)(&v25, &type metadata for UID, v21);
    sub_1B03D06F8();
    sub_1B0E46F08();
    sub_1B0AF6BEC(v11);
    v22 = v11;
  }

  else
  {
    sub_1B03C60A4(v7, v14, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0AF6BEC(v14);
    v22 = v14;
  }

  return sub_1B0398EFC(v22, &unk_1EB6E26C0, &unk_1B0E9DE10);
}

void sub_1B0AF65C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = *(a2 + 8);
  v8 = *(v7 + 16);
  if (v8 > a1)
  {
    v9 = a1 - 1;
    if (__OFSUB__(a1, 1))
    {
      __break(1u);
    }

    else if (v9 < v8)
    {
      LODWORD(v13) = *(v7 + 8 * v9 + 32);
      LODWORD(v12) = -1;
      v10 = sub_1B041C1E8();
      static MessageIdentifier.... infix(_:_:)(&v13, &v12, &type metadata for UID, &v14);
      v13 = v14;
      v12 = Range<>.init<A>(_:)(&v13, &type metadata for UID, v10);
      sub_1B03D06F8();
      sub_1B0E46F08();
      sub_1B0AF6BEC(v6);
      sub_1B0398EFC(v6, &unk_1EB6E26C0, &unk_1B0E9DE10);
      return;
    }

    __break(1u);
  }
}

uint64_t sub_1B0AF6718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v46 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = v39 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v42 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v47 = v39 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v20);
  v24.n128_f64[0] = MEMORY[0x1EEE9AC00](v21);
  v26 = v39 - v25;
  v50 = a2;
  if (*(*(a2 + 8) + 16) <= a1)
  {
    v32 = *(v42 + 56);

    return v32(a6, 1, 1, v15, v24);
  }

  else
  {
    v39[1] = v22;
    v40 = v23;
    v39[0] = v17;
    v52 = v15;
    v41 = a6;
    sub_1B03D06F8();
    sub_1B0E46EE8();
    if (a1 >= 1)
    {
      v27 = a5;
      v28 = a5;
      v29 = (v42 + 48);
      v43 = (v46 + 16);
      v30 = HIDWORD(v28) & 1;
      v45 = a4 & 0xFFFFFFFFFFLL | (((a4 >> 40) & 1) << 40);
      v46 = (a4 >> 40) & 1;
      v44 = v27 | (v30 << 32);
      while (1)
      {
        v54 = v46;
        v53 = v30;
        sub_1B0AF51AC(v26, v50, v51, v45, v44, v14);
        if ((*v29)(v14, 1, v52) == 1)
        {
          break;
        }

        v31 = v47;
        sub_1B03C60A4(v14, v47, &unk_1EB6E26C0, &unk_1B0E9DE10);
        (*v43)(v48, v31, v49);
        sub_1B0E46ED8();
        sub_1B0398EFC(v31, &unk_1EB6E26C0, &unk_1B0E9DE10);
        if (!--a1)
        {
          goto LABEL_11;
        }
      }

      sub_1B0398EFC(v14, &unk_1EB6E3670, &unk_1B0E9B260);
    }

LABEL_11:
    v34 = v40;
    sub_1B03B5C80(v26, v40, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v35 = MessageIdentifierSet.count.getter();
    sub_1B0398EFC(v26, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (v35 < 1)
    {
      sub_1B0398EFC(v34, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      return (*(v42 + 56))(v41, 1, 1, v52);
    }

    else
    {
      v36 = v39[0];
      sub_1B03C60A4(v34, v39[0], &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v37 = v36;
      v38 = v41;
      sub_1B03C60A4(v37, v41, &unk_1EB6E26C0, &unk_1B0E9DE10);
      return (*(v42 + 56))(v38, 0, 1, v52);
    }
  }
}

uint64_t sub_1B0AF6BEC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 12);
  v4 = *(v1 + 8);
  v5 = *(v1 + 13);
  v9[2] = a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = sub_1B0B3E4C8(sub_1B0AF6CEC, v9, v2);

  *v1 = v6;
  LOBYTE(v6) = sub_1B0B64D24(v6, v2);

  if ((v6 & 1) == 0 && (v5 & 1) == 0 && ((v4 | (v3 << 32)) & 0x100000000) == 0)
  {
    if (v4 == -1)
    {
      __break(1u);
    }

    else
    {
      v10[0] = v4 + 1;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      result = MessageIdentifierSet.contains(_:)(v10, v8);
      if ((result & 1) == 0)
      {
        *(v1 + 12) = 256;
        *(v1 + 8) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B0AF6CEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B0AF6D30(*(v2 + 16), *a1);
  *a2 = result;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1B0AF6D30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20[-v11];
  v23 = a2;
  v13 = sub_1B041C1E8();
  v22 = Range<>.init<A>(_:)(&v23, &type metadata for UID, v13);
  sub_1B03D06F8();
  sub_1B0E46F08();
  MessageIdentifierSet.intersection(_:)(a1, v12);
  sub_1B0398EFC(v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v14 = sub_1B0B4AAF0();
  if (v14 & 0x100000000) != 0 || (v15 = v14, MessageIdentifierSet.ranges.getter(v6), v16 = sub_1B0B4A3E8() >> 32, v18 = v17, sub_1B0398EFC(v6, &unk_1EB6E2780, &unk_1B0E9C5E0), (v18))
  {
    sub_1B0398EFC(v12, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    return 0;
  }

  else
  {
    v21 = v16;
    LODWORD(v22) = v15;
    static MessageIdentifier.... infix(_:_:)(&v22, &v21, &type metadata for UID, &v23);
    sub_1B0398EFC(v12, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    return v23;
  }
}

uint64_t sub_1B0AF6F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v41 = a2;
  v44 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v36 = &v35 - v9;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v39);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v40 = &v35 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v37 = &v35 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v38 = &v35 - v20;
  sub_1B03D06F8();
  sub_1B0E46EE8();
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = (a1 + 32);
    v23 = sub_1B041C1E8();
    do
    {
      v24 = *v22;
      v22 = (v22 + 12);
      v46 = v24;
      v45 = Range<>.init<A>(_:)(&v46, &type metadata for UID, v23);
      sub_1B0E46F08();
      (*(v5 + 16))(v7, v11, v4);
      sub_1B0E46ED8();
      sub_1B0398EFC(v11, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      --v21;
    }

    while (v21);
  }

  v25 = v16;
  v26 = v37;
  sub_1B03C60A4(v25, v37, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v27 = v38;
  MessageIdentifierSet.subtracting(_:)(v41, v38);
  sub_1B0398EFC(v26, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v28 = v40;
  sub_1B03B5C80(v27, v40, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v29 = MessageIdentifierSet.count.getter();
  sub_1B0398EFC(v27, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (v29 <= 0)
  {
    sub_1B0398EFC(v28, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v33 = 1;
    v32 = v44;
  }

  else
  {
    v30 = v36;
    sub_1B03C60A4(v28, v36, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v31 = v30;
    v32 = v44;
    sub_1B03C60A4(v31, v44, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v33 = 0;
  }

  return (*(v42 + 56))(v32, v33, 1, v43);
}

BOOL sub_1B0AF7364(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  v13 = *a1;
  v10 = sub_1B041C1E8();
  v12 = Range<>.init<A>(_:)(&v13, &type metadata for UID, v10);
  sub_1B03D06F8();
  sub_1B0E46F08();
  MessageIdentifierSet.intersection(_:)(a2, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  LOBYTE(a2) = sub_1B0E46E98();
  sub_1B0398EFC(v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  return (a2 & 1) == 0;
}

uint64_t sub_1B0AF74EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_1B0B64D24(a1, a4) & 1) == 0)
  {
    return 0;
  }

  if ((a2 & 0x10000000000) != 0)
  {
    if ((a5 & 0x10000000000) == 0)
    {
      return 0;
    }
  }

  else
  {
    if ((a5 & 0x10000000000) != 0)
    {
      return 0;
    }

    if ((a2 & 0x100000000) != 0)
    {
      if ((a5 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else if ((a5 & 0x100000000) != 0 || a5 != a2)
    {
      return 0;
    }
  }

  if ((a3 & 0x100000000) != 0)
  {
    if ((a6 & 0x100000000) != 0)
    {
      return 1;
    }
  }

  else if ((a6 & 0x100000000) == 0 && a6 == a3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1B0AF7574(unint64_t a1, unint64_t a2, int a3, uint64_t a4, int a5)
{
  LODWORD(v63) = a5;
  v70 = a4;
  v71 = a3;
  v68 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  MEMORY[0x1EEE9AC00](v7);
  v64 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v67 = v62 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24D8, &qword_1B0E9CCD8);
  MEMORY[0x1EEE9AC00](v66);
  v12 = v62 - v11;
  v13 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v65 = v62 - v20;
  v21 = _s15MissingMessagesO30WindowUpperBoundAndQueriedUIDsVMa(0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42E8, &unk_1B0EC4B30);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = v62 - v26;
  v69 = a1;
  sub_1B0B4B4F0(v62 - v26);
  if ((*(v22 + 48))(v27, 1, v21) == 1)
  {
    if (v71)
    {
      LODWORD(v73) = 1;
      LODWORD(v72) = -1;
      sub_1B041C1E8();
      static MessageIdentifier.... infix(_:_:)(&v73, &v72, &type metadata for UID, &v74);
      v28 = v74;
      v16 = sub_1B0AFFFFC(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v30 = *(v16 + 16);
      v29 = *(v16 + 24);
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        v16 = sub_1B0AFFFFC((v29 > 1), v30 + 1, 1, v16);
      }

LABEL_55:
      sub_1B0AF819C(v69, _s15MissingMessagesOMa);
      *(v16 + 16) = v31;
      v60 = v16 + 12 * v30;
      *(v60 + 32) = v28;
      *(v60 + 40) = 0;
      goto LABEL_56;
    }

    v39 = HIDWORD(v68);
    if (v63 > 1u)
    {
      v40 = 0xFFFFFFFFLL;
      if (v39 != 0xFFFFFFFF)
      {
        LODWORD(v73) = HIDWORD(v68) + 1;
        LODWORD(v72) = -1;
        sub_1B041C1E8();
        static MessageIdentifier.... infix(_:_:)(&v73, &v72, &type metadata for UID, &v74);
        v28 = v74;
        v16 = sub_1B0AFFFFC(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v30 = *(v16 + 16);
        v59 = *(v16 + 24);
        goto LABEL_53;
      }

      __break(1u);
    }

    else
    {
      if ((v68 & 0xFFFFFFFE) == 0)
      {
        v16 = MEMORY[0x1E69E7CC0];
        goto LABEL_48;
      }

      LODWORD(v73) = 1;
      LODWORD(v72) = v68 - 1;
      sub_1B041C1E8();
      static MessageIdentifier.... infix(_:_:)(&v73, &v72, &type metadata for UID, &v74);
      v5 = v74;
      v16 = sub_1B0AFFFFC(0, 1, 1, MEMORY[0x1E69E7CC0]);
      a1 = *(v16 + 16);
      v40 = *(v16 + 24);
      v12 = (a1 + 1);
      if (a1 < v40 >> 1)
      {
LABEL_11:
        *(v16 + 16) = v12;
        v41 = v16 + 12 * a1;
        *(v41 + 32) = v5;
        *(v41 + 40) = 0;
LABEL_48:
        if (v39 == 0xFFFFFFFF)
        {
          sub_1B0AF819C(v69, _s15MissingMessagesOMa);
          goto LABEL_56;
        }

        LODWORD(v73) = v39 + 1;
        LODWORD(v72) = -1;
        sub_1B041C1E8();
        static MessageIdentifier.... infix(_:_:)(&v73, &v72, &type metadata for UID, &v74);
        v28 = v74;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1B0AFFFFC(0, *(v16 + 16) + 1, 1, v16);
        }

        v30 = *(v16 + 16);
        v59 = *(v16 + 24);
LABEL_53:
        v31 = v30 + 1;
        if (v30 >= v59 >> 1)
        {
          v16 = sub_1B0AFFFFC((v59 > 1), v30 + 1, 1, v16);
        }

        goto LABEL_55;
      }
    }

    v16 = sub_1B0AFFFFC((v40 > 1), v12, 1, v16);
    goto LABEL_11;
  }

  sub_1B0AF81FC(v27, v24, _s15MissingMessagesO30WindowUpperBoundAndQueriedUIDsVMa);
  v32 = sub_1B041C1E8();
  static MessageIdentifierRange.all.getter(&type metadata for UID, v32, &v74);
  v73 = v74;
  v62[0] = v32;
  v72 = Range<>.init<A>(_:)(&v73, &type metadata for UID, v32);
  sub_1B03D06F8();
  sub_1B0E46F08();
  v33 = *(v21 + 20);
  v63 = v24;
  sub_1B0AF8134(&v24[v33], v15, _s15MissingMessagesO11QueriedUIDsVMa);
  v34 = v65;
  MessageIdentifierSet.subtracting(_:)(v15, v65);
  sub_1B0398EFC(v18, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v15, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v35 = v67;
  v62[1] = v16;
  MessageIdentifierSet.ranges.getter(v67);
  sub_1B03B5C80(v35, v12, &unk_1EB6E2780, &unk_1B0E9C5E0);
  v36 = *(v66 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  v37 = sub_1B0E46E18();
  sub_1B0398EFC(v35, &unk_1EB6E2780, &unk_1B0E9C5E0);
  *&v12[v36] = v37;
  v38 = v34;
  if (v37 != sub_1B0E46E28())
  {
    v42 = v36;
    v16 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      MessageIdentifierSet.RangeView.subscript.getter(v7, &v74);
      v43 = v74;
      v44 = sub_1B0E46E18();
      v45 = sub_1B0E46E28();
      if (v37 < v44 || v37 >= v45)
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1B0AFFFFC(0, *(v16 + 16) + 1, 1, v16);
      }

      v47 = *(v16 + 16);
      v46 = *(v16 + 24);
      if (v47 >= v46 >> 1)
      {
        v16 = sub_1B0AFFFFC((v46 > 1), v47 + 1, 1, v16);
      }

      ++v37;
      *(v16 + 16) = v47 + 1;
      v48 = v16 + 12 * v47;
      *(v48 + 32) = v43;
      *(v48 + 40) = 0;
      if (v37 == sub_1B0E46E28())
      {
        *&v12[v42] = v37;
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_58;
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_21:
  sub_1B0398EFC(v12, &qword_1EB6E24D8, &qword_1B0E9CCD8);
  v49 = v64;
  v44 = v38;
  MessageIdentifierSet.ranges.getter(v64);
  v50 = sub_1B0B4A3E8();
  v52 = v51;
  sub_1B0398EFC(v49, &unk_1EB6E2780, &unk_1B0E9C5E0);
  v37 = v63;
  v53 = HIDWORD(v68);
  if (v71)
  {
    v54 = 0;
  }

  else
  {
    v54 = HIDWORD(v68);
  }

  if (v54 <= *v63)
  {
    v54 = *v63;
  }

  if (v71)
  {
    LODWORD(v53) = *v63;
    v54 = *v63;
  }

  if (!v63[4])
  {
    LODWORD(v53) = v54;
  }

  if (v52)
  {
    if (v63[4] & v71)
    {
      v55 = 1;
      goto LABEL_39;
    }
  }

  else
  {
    if (v53 <= HIDWORD(v50))
    {
      LODWORD(v53) = HIDWORD(v50);
    }

    if ((v63[4] & v71) != 0)
    {
      LODWORD(v53) = HIDWORD(v50);
    }
  }

  if (v53 == -1)
  {
    sub_1B0AF819C(v69, _s15MissingMessagesOMa);
    sub_1B0398EFC(v38, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0AF819C(v37, _s15MissingMessagesO30WindowUpperBoundAndQueriedUIDsVMa);
    goto LABEL_56;
  }

  v55 = v53 + 1;
LABEL_39:
  LODWORD(v73) = v55;
  LODWORD(v72) = -1;
  static MessageIdentifier.... infix(_:_:)(&v73, &v72, &type metadata for UID, &v74);
  v43 = v74;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_58:
    v16 = sub_1B0AFFFFC(0, *(v16 + 16) + 1, 1, v16);
  }

  v57 = *(v16 + 16);
  v56 = *(v16 + 24);
  if (v57 >= v56 >> 1)
  {
    v16 = sub_1B0AFFFFC((v56 > 1), v57 + 1, 1, v16);
  }

  sub_1B0AF819C(v69, _s15MissingMessagesOMa);
  sub_1B0398EFC(v44, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0AF819C(v37, _s15MissingMessagesO30WindowUpperBoundAndQueriedUIDsVMa);
  *(v16 + 16) = v57 + 1;
  v58 = v16 + 12 * v57;
  *(v58 + 32) = v43;
  *(v58 + 40) = 1;
LABEL_56:
  LOBYTE(v74) = 0;
  LOBYTE(v73) = BYTE4(v70) & 1;
  return v16;
}

uint64_t sub_1B0AF7FEC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 21))
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

uint64_t sub_1B0AF8034(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 21) = 1;
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

    *(result + 21) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s11QueryRangesV7ElementVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s11QueryRangesV7ElementVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B0AF8134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0AF819C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0AF81FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s11QueryRangesV19FetchedWindowUpdateOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s11QueryRangesV19FetchedWindowUpdateOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 6) = v3;
  return result;
}

uint64_t sub_1B0AF82B0(uint64_t a1)
{
  if (*(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0AF82CC(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    *(result + 5) = 1;
  }

  else
  {
    *(result + 5) = 0;
  }

  return result;
}

unint64_t sub_1B0AF8314()
{
  result = qword_1EB6E42F0;
  if (!qword_1EB6E42F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E42F0);
  }

  return result;
}

uint64_t sub_1B0AF8368()
{
  result = sub_1B03D0770(&unk_1F2710E80);
  qword_1EB737D70 = result;
  return result;
}

uint64_t sub_1B0AF8390(uint64_t a1)
{
  v2 = v1;
  PendingDownload = type metadata accessor for FindPendingDownload(0);
  v5 = PendingDownload - 8;
  MEMORY[0x1EEE9AC00](PendingDownload);
  v101 = v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v100 = v95 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v95 - v10;
  v104 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v104);
  v96 = v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v99 = v95 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v95 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v98 = v95 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v95 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v95 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v97 = v95 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v95 - v32;
  v34 = *(v5 + 44);
  v103 = v2;
  sub_1B03D08AC(v2 + v34, v95 - v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  if (sub_1B0E46E98())
  {
    sub_1B0AFB928(a1, v25, type metadata accessor for MailboxTaskLogger);
    sub_1B0AFB928(a1, v22, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v35 = sub_1B0E43988();
    v36 = sub_1B0E45908();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v107 = v38;
      *v37 = 68159235;
      *(v37 + 4) = 2;
      *(v37 + 8) = 256;
      v39 = v104;
      v40 = &v22[*(v104 + 20)];
      *(v37 + 10) = *v40;
      *(v37 + 11) = 2082;
      v41 = &v25[*(v39 + 20)];
      *(v37 + 13) = sub_1B0399D64(*(v41 + 1), *(v41 + 2), &v107);
      *(v37 + 21) = 1040;
      *(v37 + 23) = 2;
      *(v37 + 27) = 512;
      LOWORD(v40) = *(v40 + 12);
      sub_1B0AFB990(v22, type metadata accessor for MailboxTaskLogger);
      *(v37 + 29) = v40;
      *(v37 + 31) = 2160;
      *(v37 + 33) = 0x786F626C69616DLL;
      *(v37 + 41) = 2085;
      v42 = *(v41 + 4);
      LODWORD(v41) = *(v41 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AFB990(v25, type metadata accessor for MailboxTaskLogger);
      v105 = v42;
      v106 = v41;
      v43 = sub_1B0E44BA8();
      v45 = sub_1B0399D64(v43, v44, &v107);

      *(v37 + 43) = v45;
      _os_log_impl(&dword_1B0389000, v35, v36, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task.", v37, 0x33u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v38, -1, -1);
      MEMORY[0x1B272C230](v37, -1, -1);
    }

    else
    {
      sub_1B0AFB990(v22, type metadata accessor for MailboxTaskLogger);

      sub_1B0AFB990(v25, type metadata accessor for MailboxTaskLogger);
    }

    v75 = v33;
    return sub_1B0398EFC(v75, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  v95[1] = v26;
  v102 = v33;
  MessageIdentifierSet.ranges.getter(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  v46 = sub_1B0E46E18();
  v47 = sub_1B0E46E28();
  v48 = sub_1B0E46E18();
  result = sub_1B0E46E28();
  if (v46 < v48 || result < v46)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v50 = sub_1B0E46E18();
  v51 = sub_1B0E46E28();
  result = sub_1B0398EFC(v11, &unk_1EB6E2780, &unk_1B0E9C5E0);
  if (v47 < v50 || v51 < v47)
  {
    goto LABEL_26;
  }

  if (!__OFSUB__(v47, v46))
  {
    if (v47 - v46 > 19)
    {
      v76 = v99;
      sub_1B0AFB928(a1, v99, type metadata accessor for MailboxTaskLogger);
      v77 = v96;
      sub_1B0AFB928(a1, v96, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v78 = v102;
      sub_1B03D08AC(v102, v28);
      v79 = v101;
      sub_1B0AFB928(v103, v101, type metadata accessor for FindPendingDownload);
      v80 = sub_1B0E43988();
      v81 = sub_1B0E45908();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v107 = v103;
        *v82 = 68159747;
        *(v82 + 4) = 2;
        *(v82 + 8) = 256;
        v83 = v104;
        v84 = v76;
        v85 = v77 + *(v104 + 20);
        *(v82 + 10) = *v85;
        *(v82 + 11) = 2082;
        v86 = v84 + *(v83 + 20);
        *(v82 + 13) = sub_1B0399D64(*(v86 + 8), *(v86 + 16), &v107);
        *(v82 + 21) = 1040;
        *(v82 + 23) = 2;
        *(v82 + 27) = 512;
        LOWORD(v85) = *(v85 + 24);
        sub_1B0AFB990(v77, type metadata accessor for MailboxTaskLogger);
        *(v82 + 29) = v85;
        *(v82 + 31) = 2160;
        *(v82 + 33) = 0x786F626C69616DLL;
        *(v82 + 41) = 2085;
        v87 = *(v86 + 32);
        LODWORD(v85) = *(v86 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AFB990(v84, type metadata accessor for MailboxTaskLogger);
        v105 = v87;
        v106 = v85;
        v88 = sub_1B0E44BA8();
        v90 = sub_1B0399D64(v88, v89, &v107);

        *(v82 + 43) = v90;
        *(v82 + 51) = 2048;
        v91 = MessageIdentifierSet.count.getter();
        sub_1B0398EFC(v28, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        *(v82 + 53) = v91;
        *(v82 + 61) = 2082;
        if (*(v79 + 57))
        {
          v92 = 6581810;
        }

        else
        {
          v92 = 7631665;
        }

        sub_1B0AFB990(v79, type metadata accessor for FindPendingDownload);
        v93 = sub_1B0399D64(v92, 0xE300000000000000, &v107);

        *(v82 + 63) = v93;
        _os_log_impl(&dword_1B0389000, v80, v81, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Excluding %ld, UIDs %{public}s", v82, 0x47u);
        v94 = v103;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v94, -1, -1);
        MEMORY[0x1B272C230](v82, -1, -1);

        v75 = v102;
      }

      else
      {
        sub_1B0398EFC(v28, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0AFB990(v77, type metadata accessor for MailboxTaskLogger);

        sub_1B0AFB990(v79, type metadata accessor for FindPendingDownload);
        sub_1B0AFB990(v76, type metadata accessor for MailboxTaskLogger);
        v75 = v78;
      }
    }

    else
    {
      v52 = v98;
      sub_1B0AFB928(a1, v98, type metadata accessor for MailboxTaskLogger);
      sub_1B0AFB928(a1, v17, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v53 = v97;
      sub_1B03D08AC(v102, v97);
      v54 = v100;
      sub_1B0AFB928(v103, v100, type metadata accessor for FindPendingDownload);
      v55 = sub_1B0E43988();
      v56 = sub_1B0E45908();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v107 = v103;
        *v57 = 68159747;
        *(v57 + 4) = 2;
        *(v57 + 8) = 256;
        v58 = v104;
        v59 = &v17[*(v104 + 20)];
        *(v57 + 10) = *v59;
        *(v57 + 11) = 2082;
        v60 = v53;
        v61 = v52;
        v62 = v52 + *(v58 + 20);
        *(v57 + 13) = sub_1B0399D64(*(v62 + 8), *(v62 + 16), &v107);
        *(v57 + 21) = 1040;
        *(v57 + 23) = 2;
        *(v57 + 27) = 512;
        LOWORD(v59) = *(v59 + 12);
        sub_1B0AFB990(v17, type metadata accessor for MailboxTaskLogger);
        *(v57 + 29) = v59;
        *(v57 + 31) = 2160;
        *(v57 + 33) = 0x786F626C69616DLL;
        *(v57 + 41) = 2085;
        v63 = *(v62 + 32);
        v64 = *(v62 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AFB990(v61, type metadata accessor for MailboxTaskLogger);
        v105 = v63;
        v106 = v64;
        v65 = sub_1B0E44BA8();
        v67 = sub_1B0399D64(v65, v66, &v107);

        *(v57 + 43) = v67;
        *(v57 + 51) = 2082;
        v68 = MessageIdentifierSet.debugDescription.getter();
        v70 = v69;
        sub_1B0398EFC(v60, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v71 = sub_1B0399D64(v68, v70, &v107);

        *(v57 + 53) = v71;
        *(v57 + 61) = 2082;
        if (*(v54 + 57))
        {
          v72 = 6581810;
        }

        else
        {
          v72 = 7631665;
        }

        sub_1B0AFB990(v54, type metadata accessor for FindPendingDownload);
        v73 = sub_1B0399D64(v72, 0xE300000000000000, &v107);

        *(v57 + 63) = v73;
        _os_log_impl(&dword_1B0389000, v55, v56, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Excluding UIDs %{public}s, %{public}s", v57, 0x47u);
        v74 = v103;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v74, -1, -1);
        MEMORY[0x1B272C230](v57, -1, -1);

        v75 = v102;
      }

      else
      {
        sub_1B0AFB990(v17, type metadata accessor for MailboxTaskLogger);

        sub_1B0AFB990(v54, type metadata accessor for FindPendingDownload);
        sub_1B0398EFC(v53, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0AFB990(v52, type metadata accessor for MailboxTaskLogger);
        v75 = v102;
      }
    }

    return sub_1B0398EFC(v75, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1B0AF9048(uint64_t a1, char *a2)
{
  v3 = v2;
  v155 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v155);
  v7 = &v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v142 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v153 = &v142 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v150 = &v142 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v148 = &v142 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v149 = &v142 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v151 = &v142 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v152 = &v142 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v142 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v142 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v31);
  MEMORY[0x1EEE9AC00](v32);
  MEMORY[0x1EEE9AC00](&v142 - v33);
  v35 = &v142 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v157 = &v142 - v41;
  v42 = *v3;
  if (!*v3)
  {
    sub_1B0AFB928(a2, v10, type metadata accessor for MailboxTaskLogger);
    sub_1B0AFB928(a2, v7, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v75 = sub_1B0E43988();
    v76 = sub_1B0E458D8();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v156 = a2;
      v157 = v78;
      v160[0] = v78;
      *v77 = 68159235;
      *(v77 + 4) = 2;
      *(v77 + 8) = 256;
      v79 = v155;
      v80 = &v7[*(v155 + 20)];
      *(v77 + 10) = *v80;
      *(v77 + 11) = 2082;
      v81 = a1;
      v82 = v3;
      v83 = &v10[*(v79 + 20)];
      *(v77 + 13) = sub_1B0399D64(*(v83 + 1), *(v83 + 2), v160);
      *(v77 + 21) = 1040;
      *(v77 + 23) = 2;
      *(v77 + 27) = 512;
      LOWORD(v80) = *(v80 + 12);
      sub_1B0AFB990(v7, type metadata accessor for MailboxTaskLogger);
      *(v77 + 29) = v80;
      *(v77 + 31) = 2160;
      *(v77 + 33) = 0x786F626C69616DLL;
      *(v77 + 41) = 2085;
      v84 = *(v83 + 4);
      LODWORD(v80) = *(v83 + 10);
      v3 = v82;
      a1 = v81;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AFB990(v10, type metadata accessor for MailboxTaskLogger);
      v158 = v84;
      v159 = v80;
      v85 = sub_1B0E44BA8();
      v87 = sub_1B0399D64(v85, v86, v160);

      *(v77 + 43) = v87;
      _os_log_impl(&dword_1B0389000, v75, v76, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence returned no messages to download.", v77, 0x33u);
      v88 = v157;
      swift_arrayDestroy();
      a2 = v156;
      MEMORY[0x1B272C230](v88, -1, -1);
      MEMORY[0x1B272C230](v77, -1, -1);
    }

    else
    {
      sub_1B0AFB990(v7, type metadata accessor for MailboxTaskLogger);

      v89 = sub_1B0AFB990(v10, type metadata accessor for MailboxTaskLogger);
    }

    goto LABEL_35;
  }

  v145 = v37;
  v146 = v40;
  v147 = v39;
  v144 = v38;
  v142 = v25;
  v154 = v3;
  v43 = *(v42 + 16);
  v44 = MEMORY[0x1E69E7CC0];
  v156 = a2;
  if (v43)
  {
    v143 = a1;
    v158 = MEMORY[0x1E69E7CC0];
    sub_1B0B0A044(0, v43, 0);
    v44 = v158;
    v45 = (v42 + 32);
    v46 = *(v158 + 2);
    do
    {
      v48 = *v45;
      v45 += 6;
      v47 = v48;
      v158 = v44;
      v49 = *(v44 + 3);
      if (v46 >= v49 >> 1)
      {
        sub_1B0B0A044((v49 > 1), v46 + 1, 1);
        v44 = v158;
      }

      *(v44 + 2) = v46 + 1;
      *&v44[4 * v46++ + 32] = v47;
      --v43;
    }

    while (v43);
    a1 = v143;
    a2 = v156;
  }

  sub_1B03D06F8();
  sub_1B0E46EE8();
  v50 = *(v44 + 2);
  if (v50)
  {
    v51 = (v44 + 32);
    do
    {
      v52 = *v51++;
      LODWORD(v160[0]) = v52;
      MessageIdentifierSet.insert(_:)(&v158, v160, v29);
      --v50;
    }

    while (v50);
  }

  v53 = v157;
  sub_1B074BA2C(v35, v157);
  MessageIdentifierSet.ranges.getter(v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  v54 = sub_1B0E46E18();
  v55 = sub_1B0E46E28();
  v56 = sub_1B0E46E18();
  v57 = sub_1B0E46E28();
  if (v54 < v56 || v57 < v54)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v58 = sub_1B0E46E18();
  v59 = sub_1B0E46E28();
  sub_1B0398EFC(v28, &unk_1EB6E2780, &unk_1B0E9C5E0);
  if (v55 < v58 || v59 < v55)
  {
    goto LABEL_39;
  }

  if (__OFSUB__(v55, v54))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if ((v55 - v54 - 21) >= 0xFFFFFFFFFFFFFFECLL)
  {
    v90 = v152;
    sub_1B0AFB928(a2, v152, type metadata accessor for MailboxTaskLogger);
    v91 = v151;
    sub_1B0AFB928(a2, v151, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v92 = v145;
    sub_1B03D08AC(v53, v145);
    v93 = sub_1B0E43988();
    v94 = sub_1B0E458D8();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      v160[0] = v153;
      *v95 = 68159491;
      LODWORD(v150) = v94;
      *(v95 + 4) = 2;
      *(v95 + 8) = 256;
      v96 = v155;
      v97 = v91 + *(v155 + 20);
      *(v95 + 10) = *v97;
      *(v95 + 11) = 2082;
      v98 = v90 + *(v96 + 20);
      *(v95 + 13) = sub_1B0399D64(*(v98 + 8), *(v98 + 16), v160);
      *(v95 + 21) = 1040;
      *(v95 + 23) = 2;
      *(v95 + 27) = 512;
      LOWORD(v97) = *(v97 + 24);
      sub_1B0AFB990(v91, type metadata accessor for MailboxTaskLogger);
      *(v95 + 29) = v97;
      *(v95 + 31) = 2160;
      *(v95 + 33) = 0x786F626C69616DLL;
      *(v95 + 41) = 2085;
      v99 = v90;
      v100 = *(v98 + 32);
      LODWORD(v97) = *(v98 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AFB990(v99, type metadata accessor for MailboxTaskLogger);
      v158 = v100;
      v159 = v97;
      v101 = sub_1B0E44BA8();
      v103 = sub_1B0399D64(v101, v102, v160);

      *(v95 + 43) = v103;
      *(v95 + 51) = 2082;
      v104 = MessageIdentifierSet.debugDescription.getter();
      v106 = v105;
      sub_1B0398EFC(v92, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v107 = sub_1B0399D64(v104, v106, v160);

      *(v95 + 53) = v107;
      _os_log_impl(&dword_1B0389000, v93, v150, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence returned UIDs %{public}s to download.", v95, 0x3Du);
      v108 = v153;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v108, -1, -1);
      MEMORY[0x1B272C230](v95, -1, -1);

      a2 = v156;
      v109 = v157;
    }

    else
    {
      sub_1B0AFB990(v91, type metadata accessor for MailboxTaskLogger);

      sub_1B0398EFC(v92, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0AFB990(v90, type metadata accessor for MailboxTaskLogger);
      v109 = v53;
    }

    v89 = sub_1B0398EFC(v109, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v3 = v154;
    goto LABEL_35;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v60 = sub_1B0E46E98();
  v3 = v154;
  if (v60)
  {
    v61 = v149;
    sub_1B0AFB928(a2, v149, type metadata accessor for MailboxTaskLogger);
    v62 = v148;
    sub_1B0AFB928(a2, v148, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v63 = sub_1B0E43988();
    v64 = sub_1B0E458D8();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      v160[0] = v153;
      *v65 = 68159235;
      *(v65 + 4) = 2;
      *(v65 + 8) = 256;
      v66 = v155;
      v67 = v62 + *(v155 + 20);
      *(v65 + 10) = *v67;
      *(v65 + 11) = 2082;
      v68 = v61;
      v69 = v61 + *(v66 + 20);
      *(v65 + 13) = sub_1B0399D64(*(v69 + 8), *(v69 + 16), v160);
      *(v65 + 21) = 1040;
      *(v65 + 23) = 2;
      *(v65 + 27) = 512;
      LOWORD(v67) = *(v67 + 24);
      sub_1B0AFB990(v62, type metadata accessor for MailboxTaskLogger);
      *(v65 + 29) = v67;
      *(v65 + 31) = 2160;
      *(v65 + 33) = 0x786F626C69616DLL;
      *(v65 + 41) = 2085;
      v70 = *(v69 + 32);
      LODWORD(v69) = *(v69 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AFB990(v68, type metadata accessor for MailboxTaskLogger);
      v158 = v70;
      v159 = v69;
      v71 = sub_1B0E44BA8();
      v73 = sub_1B0399D64(v71, v72, v160);

      *(v65 + 43) = v73;
      a2 = v156;
      _os_log_impl(&dword_1B0389000, v63, v64, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence returned no messages to download.", v65, 0x33u);
      v74 = v153;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v74, -1, -1);
      MEMORY[0x1B272C230](v65, -1, -1);
    }

    else
    {
      sub_1B0AFB990(v62, type metadata accessor for MailboxTaskLogger);

      sub_1B0AFB990(v61, type metadata accessor for MailboxTaskLogger);
    }

    v135 = v157;
    goto LABEL_34;
  }

  v110 = v150;
  sub_1B0AFB928(a2, v150, type metadata accessor for MailboxTaskLogger);
  sub_1B0AFB928(a2, v153, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B03D08AC(v53, v146);
  sub_1B03D08AC(v53, v147);
  v111 = v144;
  sub_1B03D08AC(v53, v144);
  v112 = sub_1B0E43988();
  v113 = sub_1B0E458D8();
  if (os_log_type_enabled(v112, v113))
  {
    LODWORD(v152) = v113;
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v160[0] = v115;
    *v114 = 68160003;
    *(v114 + 4) = 2;
    *(v114 + 8) = 256;
    v116 = v155;
    v117 = v153;
    v118 = v153 + *(v155 + 20);
    *(v114 + 10) = *v118;
    *(v114 + 11) = 2082;
    v119 = v110;
    v120 = v110 + *(v116 + 20);
    *(v114 + 13) = sub_1B0399D64(*(v120 + 8), *(v120 + 16), v160);
    *(v114 + 21) = 1040;
    *(v114 + 23) = 2;
    *(v114 + 27) = 512;
    LOWORD(v118) = *(v118 + 24);
    sub_1B0AFB990(v117, type metadata accessor for MailboxTaskLogger);
    *(v114 + 29) = v118;
    *(v114 + 31) = 2160;
    *(v114 + 33) = 0x786F626C69616DLL;
    *(v114 + 41) = 2085;
    v121 = *(v120 + 32);
    LODWORD(v120) = *(v120 + 40);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0AFB990(v119, type metadata accessor for MailboxTaskLogger);
    v158 = v121;
    v159 = v120;
    v122 = sub_1B0E44BA8();
    v124 = sub_1B0399D64(v122, v123, v160);

    *(v114 + 43) = v124;
    *(v114 + 51) = 2048;
    v125 = v146;
    v126 = MessageIdentifierSet.count.getter();
    sub_1B0398EFC(v125, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    *(v114 + 53) = v126;
    *(v114 + 61) = 1024;
    v127 = v147;
    v128 = sub_1B0B4AAF0();
    if ((v128 & 0x100000000) == 0)
    {
      v129 = v128;
      sub_1B0398EFC(v127, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      *(v114 + 63) = v129;
      *(v114 + 67) = 1024;
      v130 = v142;
      v131 = v144;
      MessageIdentifierSet.ranges.getter(v142);
      v132 = sub_1B0B4A3E8();
      v134 = v133;
      sub_1B0398EFC(v130, &unk_1EB6E2780, &unk_1B0E9C5E0);
      if ((v134 & 1) == 0)
      {
        sub_1B0398EFC(v131, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        *(v114 + 69) = HIDWORD(v132);
        _os_log_impl(&dword_1B0389000, v112, v152, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence returned %ld (min:  %u, max: %u) messages to download.", v114, 0x49u);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v115, -1, -1);
        MEMORY[0x1B272C230](v114, -1, -1);

        v89 = sub_1B0398EFC(v157, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        a2 = v156;
        v3 = v154;
        goto LABEL_35;
      }

LABEL_42:
      __break(1u);
      return;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  sub_1B0398EFC(v111, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v147, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v146, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0AFB990(v153, type metadata accessor for MailboxTaskLogger);

  sub_1B0AFB990(v110, type metadata accessor for MailboxTaskLogger);
  v135 = v53;
LABEL_34:
  v89 = sub_1B0398EFC(v135, &unk_1EB6E1AF0, &unk_1B0E9AF40);
LABEL_35:
  v136 = *(v3 + 32);
  v137 = *(v3 + 40);
  MEMORY[0x1EEE9AC00](v89);
  *(&v142 - 2) = v3;
  *(&v142 - 1) = a2;
  if (*(a1 + 192) == 1)
  {
    v139 = *(a1 + 176);
    v138 = *(a1 + 184);
    v158 = *(a1 + 168);
    v140 = v158;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B2BE00(&v158, v136, v137, 0, sub_1B0AFB7DC);
    sub_1B03BB638(v140, v139, v138, 1);
    v141 = v158;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 168) = v141;
    *(a1 + 192) = 1;
  }
}

void sub_1B0AFA12C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v135 = a3;
  v5 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v5);
  v129 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v118 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v128 = &v118 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v130 = &v118 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v118 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v17);
  v132 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v133 = &v118 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v136 = &v118 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v118 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v118 - v27;
  v29 = type metadata accessor for MessagesPendingDownload(0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v118 - v34;
  v36 = *a2;
  if (*a2)
  {
    v119 = v9;
    v120 = v5;
    v124 = v33;
    v126 = v32;
    v37 = *(a2 + 57);
    v38 = a1 + *(type metadata accessor for MailboxSyncState(0) + 52);
    v39 = v38 + *(type metadata accessor for PendingPersistenceUpdates(0) + 28);
    v40 = v39;
    v123 = v37;
    if (v37 == 1)
    {
      v40 = v39 + *(type metadata accessor for MessagesPendingDownloadPerPass(0) + 20);
    }

    v125 = v39;
    v134 = v28;
    v41 = sub_1B0AFB928(v40, v35, type metadata accessor for MessagesPendingDownload);
    MEMORY[0x1EEE9AC00](v41);
    v127 = v35;
    *(&v118 - 2) = v35;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v121 = v36;
    v42 = sub_1B0B1578C(sub_1B0AFB7E4, (&v118 - 4), v36);
    v43 = v42[2];
    v44 = MEMORY[0x1E69E7CC0];
    v131 = a1;
    v122 = v42;
    if (v43)
    {
      v45 = v42;
      v137 = MEMORY[0x1E69E7CC0];
      sub_1B0B0A044(0, v43, 0);
      v44 = v137;
      v46 = (v45 + 4);
      v47 = *(v137 + 16);
      do
      {
        v49 = *v46;
        v46 += 6;
        v48 = v49;
        v137 = v44;
        v50 = *(v44 + 24);
        if (v47 >= v50 >> 1)
        {
          sub_1B0B0A044((v50 > 1), v47 + 1, 1);
          v44 = v137;
        }

        *(v44 + 16) = v47 + 1;
        *(v44 + 4 * v47++ + 32) = v48;
        --v43;
      }

      while (v43);
    }

    sub_1B03D06F8();
    sub_1B0E46EE8();
    v51 = *(v44 + 16);
    v52 = v136;
    if (v51)
    {
      v53 = (v44 + 32);
      do
      {
        v54 = *v53++;
        LODWORD(v139[0]) = v54;
        MessageIdentifierSet.insert(_:)(&v137, v139, v17);
        --v51;
      }

      while (v51);
    }

    v55 = v134;
    sub_1B074BA2C(v25, v134);
    MessageIdentifierSet.ranges.getter(v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
    v56 = sub_1B0E46E18();
    v57 = sub_1B0E46E28();
    v58 = sub_1B0E46E18();
    v59 = sub_1B0E46E28();
    if (v56 < v58 || v59 < v56)
    {
      __break(1u);
    }

    else
    {
      v60 = sub_1B0E46E18();
      v61 = sub_1B0E46E28();
      sub_1B0398EFC(v16, &unk_1EB6E2780, &unk_1B0E9C5E0);
      if (v57 >= v60 && v61 >= v57)
      {
        if (!__OFSUB__(v57, v56))
        {
          if ((v57 - v56 - 21) >= 0xFFFFFFFFFFFFFFECLL)
          {
            v84 = v135;
            v85 = v130;
            sub_1B0AFB928(v135, v130, type metadata accessor for MailboxTaskLogger);
            v86 = v128;
            sub_1B0AFB928(v84, v128, type metadata accessor for MailboxTaskLogger);
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B03D08AC(v55, v52);
            v87 = v133;
            sub_1B03D08AC(v55, v133);
            v88 = v121;
            swift_bridgeObjectRetain_n();
            v89 = sub_1B0E43988();
            v90 = sub_1B0E45908();
            if (os_log_type_enabled(v89, v90))
            {
              v91 = swift_slowAlloc();
              v135 = swift_slowAlloc();
              v139[0] = v135;
              *v91 = 68160003;
              *(v91 + 4) = 2;
              *(v91 + 8) = 256;
              v92 = v120;
              v93 = *(v120 + 20);
              LODWORD(v132) = v90;
              v94 = v86 + v93;
              *(v91 + 10) = *(v86 + v93);
              *(v91 + 11) = 2082;
              v95 = v86;
              v96 = v85;
              v97 = v85 + *(v92 + 20);
              *(v91 + 13) = sub_1B0399D64(*(v97 + 8), *(v97 + 16), v139);
              *(v91 + 21) = 1040;
              *(v91 + 23) = 2;
              *(v91 + 27) = 512;
              v98 = *(v94 + 24);
              sub_1B0AFB990(v95, type metadata accessor for MailboxTaskLogger);
              *(v91 + 29) = v98;
              *(v91 + 31) = 2160;
              *(v91 + 33) = 0x786F626C69616DLL;
              *(v91 + 41) = 2085;
              v99 = *(v97 + 32);
              LODWORD(v97) = *(v97 + 40);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0AFB990(v96, type metadata accessor for MailboxTaskLogger);
              v137 = v99;
              v138 = v97;
              v100 = sub_1B0E44BA8();
              v102 = sub_1B0399D64(v100, v101, v139);

              *(v91 + 43) = v102;
              *(v91 + 51) = 2082;
              v103 = MessageIdentifierSet.debugDescription.getter();
              v105 = v104;
              sub_1B0398EFC(v52, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              v106 = sub_1B0399D64(v103, v105, v139);

              *(v91 + 53) = v106;
              *(v91 + 61) = 2048;
              v107 = v133;
              v108 = MessageIdentifierSet.count.getter();
              sub_1B0398EFC(v107, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              *(v91 + 63) = v108;
              *(v91 + 71) = 2048;
              v109 = *(v88 + 16);

              *(v91 + 73) = v109;

              _os_log_impl(&dword_1B0389000, v89, v132, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Adding %{public}s (%ld out of %ld) to download.", v91, 0x51u);
              v110 = v135;
              swift_arrayDestroy();
              MEMORY[0x1B272C230](v110, -1, -1);
              v111 = v91;
              v55 = v134;
              MEMORY[0x1B272C230](v111, -1, -1);
            }

            else
            {

              sub_1B0398EFC(v87, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              sub_1B0AFB990(v86, type metadata accessor for MailboxTaskLogger);

              sub_1B0398EFC(v52, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              sub_1B0AFB990(v85, type metadata accessor for MailboxTaskLogger);
            }

            v112 = v125;
            if (!v123)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v62 = v135;
            v63 = v119;
            sub_1B0AFB928(v135, v119, type metadata accessor for MailboxTaskLogger);
            v64 = v129;
            sub_1B0AFB928(v62, v129, type metadata accessor for MailboxTaskLogger);
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            v65 = v132;
            sub_1B03D08AC(v55, v132);
            v66 = v121;
            swift_bridgeObjectRetain_n();
            v67 = sub_1B0E43988();
            v68 = sub_1B0E45908();
            if (os_log_type_enabled(v67, v68))
            {
              v69 = v64;
              v70 = swift_slowAlloc();
              v136 = swift_slowAlloc();
              v139[0] = v136;
              *v70 = 68159747;
              *(v70 + 4) = 2;
              *(v70 + 8) = 256;
              v71 = v120;
              v72 = *(v120 + 20);
              LODWORD(v135) = v68;
              v73 = v69 + v72;
              *(v70 + 10) = *(v69 + v72);
              *(v70 + 11) = 2082;
              v74 = v63 + *(v71 + 20);
              *(v70 + 13) = sub_1B0399D64(*(v74 + 8), *(v74 + 16), v139);
              *(v70 + 21) = 1040;
              *(v70 + 23) = 2;
              *(v70 + 27) = 512;
              v75 = *(v73 + 24);
              sub_1B0AFB990(v69, type metadata accessor for MailboxTaskLogger);
              *(v70 + 29) = v75;
              *(v70 + 31) = 2160;
              *(v70 + 33) = 0x786F626C69616DLL;
              *(v70 + 41) = 2085;
              v76 = *(v74 + 32);
              LODWORD(v74) = *(v74 + 40);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0AFB990(v63, type metadata accessor for MailboxTaskLogger);
              v137 = v76;
              v138 = v74;
              v55 = v134;
              v77 = sub_1B0E44BA8();
              v79 = sub_1B0399D64(v77, v78, v139);

              *(v70 + 43) = v79;
              *(v70 + 51) = 2048;
              v80 = v132;
              v81 = MessageIdentifierSet.count.getter();
              sub_1B0398EFC(v80, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              *(v70 + 53) = v81;
              *(v70 + 61) = 2048;
              v82 = *(v66 + 16);

              *(v70 + 63) = v82;

              _os_log_impl(&dword_1B0389000, v67, v135, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Adding %ld messages (out of %ld) to download.", v70, 0x47u);
              v83 = v136;
              swift_arrayDestroy();
              MEMORY[0x1B272C230](v83, -1, -1);
              MEMORY[0x1B272C230](v70, -1, -1);
            }

            else
            {

              sub_1B0398EFC(v65, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              sub_1B0AFB990(v64, type metadata accessor for MailboxTaskLogger);

              sub_1B0AFB990(v63, type metadata accessor for MailboxTaskLogger);
            }

            v112 = v125;
            if (!v123)
            {
LABEL_24:
              v113 = v124;
              sub_1B0AFB928(v112, v124, type metadata accessor for MessagesPendingDownload);
              sub_1B0B41F0C(v122);

              sub_1B0ABC908(v113, v112);
              v114 = v126;
              sub_1B0AFB928(v112, v126, type metadata accessor for MessagesPendingDownload);
              sub_1B0B420DC();
              sub_1B0ABC908(v114, v112);

              goto LABEL_28;
            }
          }

          v115 = type metadata accessor for MessagesPendingDownloadPerPass(0);
          v116 = v124;
          sub_1B0AFB928(v112 + *(v115 + 20), v124, type metadata accessor for MessagesPendingDownload);
          sub_1B0B41F0C(v122);

          sub_1B0ABC908(v116, v112 + *(v115 + 20));
          v117 = v126;
          sub_1B0AFB928(v112 + *(v115 + 20), v126, type metadata accessor for MessagesPendingDownload);
          sub_1B0B420DC();
          sub_1B0ABC908(v117, v112 + *(v115 + 20));
          LOBYTE(v115) = sub_1B0E46A78();

          if ((v115 & 1) == 0)
          {
LABEL_29:
            sub_1B0398EFC(v55, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            sub_1B0AFB990(v127, type metadata accessor for MessagesPendingDownload);
            return;
          }

LABEL_28:
          sub_1B03BDE74(0xAu);
          sub_1B03BDD7C(&v137, 10);
          goto LABEL_29;
        }

LABEL_33:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_33;
  }
}

uint64_t sub_1B0AFAE6C(int *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9 - v3;
  v5 = *a1;
  type metadata accessor for MessagesPendingDownload(0);
  v11 = v5;
  if (MessageIdentifierSet.contains(_:)(&v11, v2))
  {
    v6 = 0;
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B24198();
    v10 = v5;
    v7 = MessageIdentifierSet.contains(_:)(&v10, v2);
    sub_1B0398EFC(v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v6 = v7 ^ 1;
  }

  return v6 & 1;
}

double sub_1B0AFAF8C@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

double sub_1B0AFAFE0()
{
  if (qword_1EB6DD9A0 != -1)
  {
    swift_once();
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

uint64_t sub_1B0AFB04C()
{
  BYTE8(v2) = 0;
  *&v2 = *(v0 + 57);
  sub_1B0E46508();
  return *(&v2 + 1);
}

void sub_1B0AFB0A4(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X6>, uint64_t *a4@<X8>, double a5@<D0>)
{
  if (sub_1B0A9F14C(a1, a2, a5))
  {
    v8 = 0xF000000000000007;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35F8, &unk_1B0EC4DC0);
    v10 = swift_allocBox();
    v12 = v11;
    v13 = v9[16];
    v14 = v11 + v9[20];
    v15 = v9[24];
    v16 = *(v5 + 16);
    *v11 = *(v5 + 8);
    *(v11 + 8) = v16;
    *(v11 + 16) = *(v5 + 57);
    sub_1B03D08AC(v5 + *(a3 + 36), v11 + v13);
    v17 = (v5 + *(a3 + 40));
    v18 = *v17;
    LOBYTE(v17) = *(v17 + 8);
    *v14 = v18;
    *(v14 + 8) = v17;
    *(v12 + v15) = 563;
    v8 = v10 | 0x4000000000000004;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  *a4 = v8;
}

uint64_t sub_1B0AFB1C4()
{
  v1 = *(v0 + 8);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1 | (v1 << 32));
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0AFB244(uint64_t a1)
{
  MEMORY[0x1B2728D70](*(v1 + 8) | (*(v1 + 8) << 32));
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0AFB2B8(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v2 | (v2 << 32));
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0AFB334(uint64_t a1, uint64_t a2)
{
  v2 = 0x100000000;
  if (*(a1 + 12))
  {
    v3 = 0x100000000;
  }

  else
  {
    v3 = 0;
  }

  if (!*(a2 + 12))
  {
    v2 = 0;
  }

  return sub_1B0AFB370(*a1, v3 | *(a1 + 8), *a2, v2 | *(a2 + 8));
}

uint64_t sub_1B0AFB370(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4 || (v4 = *(result + 16), v4 != *(a3 + 16)))
  {
LABEL_19:
    v10 = 0;
    return v10 & 1;
  }

  if (v4)
  {
    v5 = result == a3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_11:
    if ((a2 & 0x100000000) != 0)
    {
      v8 = 6581810;
    }

    else
    {
      v8 = 7631665;
    }

    if ((a4 & 0x100000000) != 0)
    {
      v9 = 6581810;
    }

    else
    {
      v9 = 7631665;
    }

    if (v8 == v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = sub_1B0E46A78();
    }

    swift_bridgeObjectRelease_n();
    return v10 & 1;
  }

  v6 = (result + 32);
  v7 = (a3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      goto LABEL_19;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0AFB43C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 13))
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

uint64_t sub_1B0AFB484(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 13) = 1;
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

    *(result + 13) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B0AFB500(uint64_t a1)
{
  sub_1B0AFB64C(319);
  if (v1 <= 0x3F)
  {
    sub_1B043CB9C(319, &qword_1EB6DAD90, sub_1B0451ED8, &type metadata for SyncStep, MEMORY[0x1E69E64E8]);
    if (v2 <= 0x3F)
    {
      sub_1B043CB9C(319, &qword_1EB6DE3E0, sub_1B041C1E8, &type metadata for UID, type metadata accessor for MessageIdentifierSet);
      if (v3 <= 0x3F)
      {
        sub_1B07F2F30(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B0AFB64C(uint64_t a1)
{
  if (!qword_1EB6DB360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3600, &unk_1B0EA2060);
    v1 = sub_1B0E45D88();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6DB360);
    }
  }
}

unint64_t sub_1B0AFB6B0()
{
  result = qword_1EB6DD998;
  if (!qword_1EB6DD998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD998);
  }

  return result;
}

unint64_t sub_1B0AFB704(uint64_t a1)
{
  result = sub_1B0AFB72C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0AFB72C()
{
  result = qword_1EB6DD990;
  if (!qword_1EB6DD990)
  {
    type metadata accessor for FindPendingDownload(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD990);
  }

  return result;
}

unint64_t sub_1B0AFB788()
{
  result = qword_1EB6DD9A8;
  if (!qword_1EB6DD9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD9A8);
  }

  return result;
}

uint64_t sub_1B0AFB804(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B0AEBEB4(a2, a3, a4);
  if ((result & 1) != 0 && !*v4 && ((a1 >> 59) & 0x1E | (a1 >> 2) & 1) == 12)
  {
    v8 = a1 & 0xFFFFFFFFFFFFFFBLL;
    if (*(v4 + 16) == *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v10 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      result = sub_1B04520BC(*(v4 + 8), *(v8 + 16));
      if (result)
      {
        if (*(v4 + 57))
        {
          v11 = 6581810;
        }

        else
        {
          v11 = 7631665;
        }

        if (v9)
        {
          v12 = 6581810;
        }

        else
        {
          v12 = 7631665;
        }

        if (v11 == v12)
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          result = swift_bridgeObjectRelease_n();
LABEL_18:
          *v4 = v10;
          return result;
        }

        v13 = sub_1B0E46A78();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        result = swift_bridgeObjectRelease_n();
        if (v13)
        {
          goto LABEL_18;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B0AFB928(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0AFB990(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0AFBA04(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = *(v1 + 48) + ((v8 << 10) | (16 * v9));
      v11 = *v10;
      v12 = *(v10 + 8);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03AB2E0(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_1B0AFBB0C(uint64_t a1)
{
  v2 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  v12 = 0;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 56);
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = v12;
LABEL_9:
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    sub_1B0B0D400(*(a1 + 48) + *(v3 + 72) * (v18 | (v17 << 6)), v11, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0B0D530(v11, v5);
    sub_1B0B02C9C(v8, v5);
    sub_1B0B0D468(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
  }

  while (1)
  {
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v17 >= v16)
    {

      return;
    }

    v15 = *(a1 + 56 + 8 * v17);
    ++v12;
    if (v15)
    {
      v12 = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1B0AFBD00(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_1B03BDD7C(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1B0AFBDDC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      swift_bridgeObjectRetain_n();
      sub_1B0B01BA4(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1B0AFBE98(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      swift_bridgeObjectRetain_n();
      sub_1B0B01BA4(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1B0AFBF54(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      swift_bridgeObjectRetain_n();
      sub_1B0B01BA4(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1B0AFBFE0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      swift_bridgeObjectRetain_n();
      sub_1B0B01BA4(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1B0AFC078(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1B0AFF1F4(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B0AFC16C(uint64_t a1)
{
  v2 = v1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v4 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v55 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v48 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v48 - v11;
  v12 = type metadata accessor for MessageBatches.OtherUIDsBatchSequence(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (&v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *v2;
  v19 = *(*v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v21 = v18[3] >> 1, v21 < v19))
  {
    v18 = sub_1B0B00400(isUniquelyReferenced_nonNull_native, v19, 1, v18, &qword_1EB6E4240, &unk_1B0EC5120, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v21 = v18[3] >> 1;
  }

  v22 = v18[2];
  v23 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v24 = *(v4 + 72);
  v25 = v21 - v22;
  v26 = v18 + v23 + v24 * v22;
  sub_1B0B0D400(a1, v14, type metadata accessor for MessageBatches.OtherUIDsBatchSequence);
  v27 = sub_1B0ADF500(v17, v26, v25);
  result = sub_1B0B0D468(a1, type metadata accessor for MessageBatches.OtherUIDsBatchSequence);
  if (v27 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (!v27)
  {
LABEL_8:
    if (v27 != v25)
    {
      result = sub_1B0B0D468(v17, type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator);
LABEL_10:
      *v2 = v18;
      return result;
    }

LABEL_12:
    v32 = v18[2];
    v33 = v57;
    sub_1B0B3FBB4(v57);
    v34 = v54;
    sub_1B0A1C8C0(v33, v54);
    v50 = *(v4 + 48);
    for (i = v50(v34, 1, v56); i != 1; i = v50(v34, 1, v56))
    {
      sub_1B0398EFC(v34, &unk_1EB6E3670, &unk_1B0E9B260);
      v37 = v18[3];
      v38 = v37 >> 1;
      if ((v37 >> 1) < v32 + 1)
      {
        v18 = sub_1B0B00400((v37 > 1), v32 + 1, 1, v18, &qword_1EB6E4240, &unk_1B0EC5120, &unk_1EB6E26C0, &unk_1B0E9DE10);
        v38 = v18[3] >> 1;
      }

      v39 = v55;
      sub_1B0A1C8C0(v57, v55);
      v40 = v50(v39, 1, v56);
      v52 = v32;
      if (v40 == 1)
      {
        v41 = v55;
LABEL_26:
        sub_1B0398EFC(v41, &unk_1EB6E3670, &unk_1B0E9B260);
        v36 = v52;
      }

      else
      {
        if (v32 <= v38)
        {
          v42 = v38;
        }

        else
        {
          v42 = v32;
        }

        v49 = v42;
        v51 = v18 + v23 + v24 * v32;
        v43 = v53;
        v41 = v55;
        while (1)
        {
          sub_1B03C60A4(v41, v43, &unk_1EB6E26C0, &unk_1B0E9DE10);
          v44 = v52;
          if (v49 == v52)
          {
            break;
          }

          sub_1B0398EFC(v57, &unk_1EB6E3670, &unk_1B0E9B260);
          v45 = v51;
          sub_1B03C60A4(v43, v51, &unk_1EB6E26C0, &unk_1B0E9DE10);
          v52 = v44 + 1;
          v46 = v57;
          sub_1B0B3FBB4(v57);
          v41 = v55;
          sub_1B0A1C8C0(v46, v55);
          v47 = v50(v41, 1, v56);
          v51 = v45 + v24;
          if (v47 == 1)
          {
            goto LABEL_26;
          }
        }

        sub_1B0398EFC(v43, &unk_1EB6E26C0, &unk_1B0E9DE10);
        v36 = v49;
      }

      v32 = v36;
      v18[2] = v36;
      v34 = v54;
      sub_1B0A1C8C0(v57, v54);
    }

    sub_1B0398EFC(v57, &unk_1EB6E3670, &unk_1B0E9B260);
    sub_1B0B0D468(v17, type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator);
    result = sub_1B0398EFC(v34, &unk_1EB6E3670, &unk_1B0E9B260);
    goto LABEL_10;
  }

  v29 = v18[2];
  v30 = __OFADD__(v29, v27);
  v31 = v29 + v27;
  if (!v30)
  {
    v18[2] = v31;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0AFC708(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1B0B0007C(result, v10, 1, v3, &qword_1EB6E41A0, &unk_1B0EF9FA0, &type metadata for FetchAttribute);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B0AFC818(uint64_t result)
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

  result = sub_1B0440EC4(result, v11, 1, v3, &qword_1EB6E4418, &qword_1B0EC76A0);
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

  memcpy((v3 + 4 * v7 + 32), (v6 + 32), 4 * v2);

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

uint64_t sub_1B0AFC914(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1B0B005E8(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t Flags.Label.flags.getter(unsigned __int8 a1)
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v21 = v1;
  v22 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42F8, &unk_1B0EC4E40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC1E70;
  v5 = Flag.flagged.unsafeMutableAddressor();
  v7 = *v5;
  v6 = *(v5 + 1);
  *(inited + 32) = v7;
  *(inited + 40) = v6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = sub_1B0B0B038(inited);
  swift_setDeallocating();
  sub_1B0B0B218(inited + 32);
  v20 = v8;
  if (a1 > 3u)
  {
    if (a1 != 6)
    {
      if (a1 == 5)
      {
        goto LABEL_13;
      }

      if (a1 != 4)
      {
        goto LABEL_12;
      }
    }

LABEL_10:
    v10 = Flag.Keyword.colorBit0.unsafeMutableAddressor();
    v11 = *v10;
    v12 = v10[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B01BA4(v19, v11, v12);

    if (a1 - 5 >= 2)
    {
      if (a1 == 2)
      {
        return v20;
      }

      goto LABEL_12;
    }

LABEL_13:
    v16 = Flag.Keyword.colorBit2.unsafeMutableAddressor();
    v17 = *v16;
    v18 = v16[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B01BA4(v19, v17, v18);

    return v20;
  }

  if (a1 == 1)
  {
    return v20;
  }

  if (a1 == 2)
  {
    goto LABEL_10;
  }

LABEL_12:
  v13 = Flag.Keyword.colorBit1.unsafeMutableAddressor();
  v14 = *v13;
  v15 = v13[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B01BA4(v19, v14, v15);

  if (a1 >= 5u)
  {
    goto LABEL_13;
  }

  return v20;
}

unint64_t sub_1B0AFCB98(unsigned __int8 a1)
{
  v2 = 0x5000000000000004;
  v3 = 0x5000000000000004;
  if ((a1 - 2) <= 4u)
  {
    v3 = qword_1B0EC5308[(a1 - 2)];
  }

  v4 = swift_allocObject();
  v5 = Flag.Keyword.colorBit0.unsafeMutableAddressor();
  v7 = *v5;
  v6 = *(v5 + 1);
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = 0x2000000000000004;
  if (a1 <= 6u)
  {
    v8 = qword_1B0EC5330[a1];
  }

  v9 = v3 | v4;
  v10 = swift_allocObject();
  v11 = Flag.Keyword.colorBit1.unsafeMutableAddressor();
  v13 = *v11;
  v12 = *(v11 + 1);
  *(v10 + 16) = v13;
  *(v10 + 24) = v12;
  v14 = v8 | v10;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (a1 >= 5u)
  {
    v2 = 0x2000000000000004;
  }

  v15 = swift_allocObject();
  v16 = Flag.Keyword.colorBit2.unsafeMutableAddressor();
  v18 = *v16;
  v17 = *(v16 + 1);
  *(v15 + 16) = v18;
  *(v15 + 24) = v17;
  v19 = v2 | v15;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EA8, &unk_1B0EF9FB0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1B0EC4E20;
  *(v21 + 32) = 0xF00000000000001CLL;
  *(v21 + 40) = v9;
  *(v21 + 48) = v14;
  *(v21 + 56) = v19;
  *(v20 + 16) = v21;
  return v20 | 0xC000000000000000;
}

uint64_t FlagEncoder.debugDescription.getter()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1B0AFF1F4(0, 14, 0, MEMORY[0x1E69E7CC0]);
  v4 = v3;
  v39 = v3;
  v5 = v1[1];
  if (v5)
  {
    v6 = *v1;
    v7 = *(v3 + 2);
    v8 = *(v3 + 3);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v7 >= v8 >> 1)
    {
      v4 = sub_1B0AFF1F4((v8 > 1), v7 + 1, 1, v4);
    }

    *(v4 + 2) = v7 + 1;
    v9 = &v4[16 * v7];
    *(v9 + 4) = v6;
    *(v9 + 5) = v5;
    v39 = v4;
  }

  v10 = v1[3];
  if (v10)
  {
    v11 = v1[2];
    v12 = *(v4 + 2);
    v13 = *(v4 + 3);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v12 >= v13 >> 1)
    {
      v4 = sub_1B0AFF1F4((v13 > 1), v12 + 1, 1, v4);
    }

    *(v4 + 2) = v12 + 1;
    v14 = &v4[16 * v12];
    *(v14 + 4) = v11;
    *(v14 + 5) = v10;
    v39 = v4;
  }

  v15 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0AFC078(v15);
  v16 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0AFC078(v16);
  v17 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0AFC078(v17);
  v18 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0AFC078(v18);
  v19 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0AFC078(v19);
  v20 = v1[12];
  v21 = v39;
  if (v20)
  {
    v22 = v1[11];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1B0AFF1F4(0, *(v39 + 2) + 1, 1, v39);
    }

    v24 = *(v21 + 2);
    v23 = *(v21 + 3);
    v25 = v24 + 1;
    if (v24 >= v23 >> 1)
    {
      v21 = sub_1B0AFF1F4((v23 > 1), v24 + 1, 1, v21);
    }

    *(v21 + 2) = v25;
    v26 = &v21[16 * v24];
    *(v26 + 4) = v22;
    *(v26 + 5) = v20;
  }

  else
  {
    v25 = *(v39 + 2);
    if (!v25)
    {
      goto LABEL_20;
    }
  }

  sub_1B041D32C(0, v25, 0);
  v27 = (v21 + 40);
  do
  {
    v29 = *(v27 - 1);
    v28 = *v27;
    v31 = *(v2 + 16);
    v30 = *(v2 + 24);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v31 >= v30 >> 1)
    {
      sub_1B041D32C((v30 > 1), v31 + 1, 1);
    }

    *(v2 + 16) = v31 + 1;
    v32 = v2 + 16 * v31;
    *(v32 + 32) = v29;
    *(v32 + 40) = v28;
    v27 += 2;
    --v25;
  }

  while (v25);
LABEL_20:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  v33 = sub_1B0E448E8();
  v35 = v34;

  MEMORY[0x1B2726E80](v33, v35);

  MEMORY[0x1B2726E80](0x3A73726F6C6F6320, 0xE900000000000020);
  if (v1[10])
  {
    v36 = 7562617;
  }

  else
  {
    v36 = 28526;
  }

  if (v1[10])
  {
    v37 = 0xE300000000000000;
  }

  else
  {
    v37 = 0xE200000000000000;
  }

  MEMORY[0x1B2726E80](v36, v37);

  MEMORY[0x1B2726E80](125, 0xE100000000000000);
  return 123;
}

uint64_t FlagDecoder.debugDescription.getter(uint64_t a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_1B0AFF0E8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1B0AFF0E8((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x6564726177726F46;
  *(v5 + 5) = 0xE900000000000064;
  if ((a1 & 0x100) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1B0AFF0E8((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x7463657269646552;
    *(v8 + 5) = 0xEA00000000006465;
  }

LABEL_12:
  if ((a1 & 0x10000) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_1B0AFF0E8((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 1802401098;
    *(v11 + 5) = 0xE400000000000000;
    if ((a1 & 0x1000000) == 0)
    {
LABEL_14:
      if ((a1 & 0x100000000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }
  }

  else if ((a1 & 0x1000000) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_1B0AFF0E8((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  strcpy(v14 + 32, "ColoredLabel");
  v14[45] = 0;
  *(v14 + 23) = -5120;
  if ((a1 & 0x100000000) != 0)
  {
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    if (v16 >= v15 >> 1)
    {
      v2 = sub_1B0AFF0E8((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 2) = v16 + 1;
    v17 = &v2[16 * v16];
    strcpy(v17 + 32, "iCloudCleanup");
    *(v17 + 23) = -4864;
  }

LABEL_31:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  v18 = sub_1B0E448E8();
  v20 = v19;

  MEMORY[0x1B2726E80](v18, v20);

  MEMORY[0x1B2726E80](125, 0xE100000000000000);
  return 0x7374726F70707573;
}

uint64_t sub_1B0AFD478()
{
  v1 = 0x100000000;
  if (!v0[4])
  {
    v1 = 0;
  }

  v2 = 0x1000000;
  if (!v0[3])
  {
    v2 = 0;
  }

  v3 = 0x10000;
  if (!v0[2])
  {
    v3 = 0;
  }

  v4 = 256;
  if (!v0[1])
  {
    v4 = 0;
  }

  return FlagDecoder.debugDescription.getter(v4 | *v0 | v3 | v2 | v1);
}

__n128 FlagEncoder.init(permanentFlags:)@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_1B0B0B26C(a2, v6);
  v3 = v6[5];
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v3;
  *(a1 + 96) = v7;
  v4 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v4;
  result = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = result;
  return result;
}

BOOL sub_1B0AFD53C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return _s13IMAP2Behavior11FlagEncoderV23__derived_struct_equalsySbAC_ACtFZ_0(v11, v13);
}

unint64_t FlagDecoder.init(permanentFlags:)(uint64_t a1)
{
  v1 = sub_1B0B0CE64(a1);

  return v1 & 0x101010101;
}

uint64_t sub_1B0AFD5E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!*(a3 + 16))
  {
    return a4 & 1;
  }

  sub_1B0E46C28();
  MEMORY[0x1B2728D70](0);
  sub_1B0E44BB8();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v6 = sub_1B0E46CB8();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return a4 & 1;
  }

  v9 = ~v7;
  while (1)
  {
    if (!*(*(a3 + 48) + 16 * v8 + 8))
    {
      goto LABEL_4;
    }

    v10 = sub_1B0E44BB8();
    v12 = v11;
    if (v10 == sub_1B0E44BB8() && v12 == v13)
    {
      break;
    }

    v15 = sub_1B0E46A78();

    if (v15)
    {
      goto LABEL_13;
    }

LABEL_4:
    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return a4 & 1;
    }
  }

LABEL_13:
  a4 = 1;
  return a4 & 1;
}

uint64_t *Flag.Keyword.iCloudCleanup.unsafeMutableAddressor()
{
  if (qword_1EB6DE190 != -1)
  {
    swift_once();
  }

  return &static Flag.Keyword.iCloudCleanup;
}

unint64_t FlagDecoder.decode(_:)(uint64_t a1, uint64_t a2)
{
  v4 = Flag.seen.unsafeMutableAddressor();
  v5 = *v4;
  v6 = v4[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = sub_1B0A92834(v5, v6, a1);

  v8 = Flag.deleted.unsafeMutableAddressor();
  v9 = *v8;
  v10 = v8[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = sub_1B0A92834(v9, v10, a1);

  v12 = Flag.answered.unsafeMutableAddressor();
  v13 = *v12;
  v14 = v12[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v69 = sub_1B0A92834(v13, v14, a1);

  v15 = Flag.draft.unsafeMutableAddressor();
  v16 = *v15;
  v17 = v15[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18 = sub_1B0A92834(v16, v17, a1);

  if ((a2 & 1) == 0)
  {
    v22 = 0x200000000;
    if ((a2 & 0x100) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    v31 = Flag.Keyword.unregistered_redirected.unsafeMutableAddressor();
    v32 = *v31;
    v33 = v31[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LOBYTE(v32) = sub_1B0A92834(v32, v33, a1);

    if (v32)
    {
      v26 = 0x10000000000;
    }

    else
    {
      v26 = 0;
    }

    if ((a2 & 0x10000) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v30 = 0x3000000000000;
    goto LABEL_15;
  }

  v19 = Flag.Keyword.forwarded.unsafeMutableAddressor();
  v20 = *v19;
  v21 = v19[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v20) = sub_1B0A92834(v20, v21, a1);

  v22 = 0x100000000;
  if ((v20 & 1) == 0)
  {
    v23 = Flag.Keyword.unregistered_forwarded.unsafeMutableAddressor();
    v24 = *v23;
    v25 = v23[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LOBYTE(v24) = sub_1B0A92834(v24, v25, a1);

    if ((v24 & 1) == 0)
    {
      v22 = 0;
    }
  }

  if ((a2 & 0x100) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  v26 = 0x20000000000;
  if ((a2 & 0x10000) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v27 = Flag.Keyword.notJunk.unsafeMutableAddressor();
  v28 = *v27;
  v29 = v27[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v28) = sub_1B0A92834(v28, v29, a1);

  if (v28)
  {
LABEL_8:
    v30 = 0x2000000000000;
    goto LABEL_15;
  }

  v51 = Flag.Keyword.junk.unsafeMutableAddressor();
  v52 = *v51;
  v53 = v51[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v52) = sub_1B0A92834(v52, v53, a1);

  if (v52)
  {
    v30 = 0x1000000000000;
  }

  else
  {
    v61 = Flag.Keyword.unregistered_notJunk.unsafeMutableAddressor();
    v62 = *v61;
    v63 = v61[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LOBYTE(v62) = sub_1B0A92834(v62, v63, a1);

    if (v62)
    {
      goto LABEL_8;
    }

    v64 = Flag.Keyword.unregistered_junk.unsafeMutableAddressor();
    v65 = *v64;
    v66 = v64[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LOBYTE(v65) = sub_1B0A92834(v65, v66, a1);

    if (v65)
    {
      v30 = 0x1000000000000;
    }

    else
    {
      v30 = 0;
    }
  }

LABEL_15:
  v34 = Flag.flagged.unsafeMutableAddressor();
  v35 = *v34;
  v36 = v34[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v37 = sub_1B0A92834(v35, v36, a1);

  if ((a2 & 0x1000000) == 0)
  {
    if (v37)
    {
      v38 = 0x800000000000000;
    }

    else
    {
      v38 = 0;
    }

    if ((a2 & 0x100000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  if (v37)
  {
    v67 = v18;
    v68 = v11;
    v39 = v7;
    v40 = Flag.Keyword.colorBit0.unsafeMutableAddressor();
    v41 = *v40;
    v42 = v40[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v43 = sub_1B0A92834(v41, v42, a1);

    v44 = Flag.Keyword.colorBit1.unsafeMutableAddressor();
    v45 = *v44;
    v46 = v44[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v47 = sub_1B0A92834(v45, v46, a1);

    v48 = Flag.Keyword.colorBit2.unsafeMutableAddressor();
    v49 = *v48;
    v50 = v48[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LOBYTE(v49) = sub_1B0A92834(v49, v50, a1);

    if (v49)
    {
      v7 = v39;
      v11 = v68;
      if (v47)
      {
        v18 = v67;
        if ((v43 & 1) == 0)
        {
          v38 = 0x700000000000000;
          if ((a2 & 0x100000000) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_30;
        }

LABEL_55:
        v38 = 0x100000000000000;
        if ((a2 & 0x100000000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }

      v58 = (v43 & 1) == 0;
      v59 = 0x500000000000000;
      v60 = 0x600000000000000;
LABEL_47:
      if (v58)
      {
        v38 = v59;
      }

      else
      {
        v38 = v60;
      }

      v18 = v67;
      if ((a2 & 0x100000000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    v7 = v39;
    v11 = v68;
    if (v47)
    {
      v58 = (v43 & 1) == 0;
      v59 = 0x300000000000000;
      v60 = 0x400000000000000;
      goto LABEL_47;
    }

    v18 = v67;
    if ((v43 & 1) == 0)
    {
      goto LABEL_55;
    }

    v38 = 0x200000000000000;
    if ((a2 & 0x100000000) == 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v38 = 0;
    if ((a2 & 0x100000000) == 0)
    {
      goto LABEL_33;
    }
  }

LABEL_30:
  if (qword_1EB6DE190 != -1)
  {
    swift_once();
  }

  sub_1B0A92834(static Flag.Keyword.iCloudCleanup, unk_1EB737E80, a1);
LABEL_33:
  v54 = 256;
  if ((v11 & 1) == 0)
  {
    v54 = 0;
  }

  v55 = 0x10000;
  if ((v69 & 1) == 0)
  {
    v55 = 0;
  }

  v56 = 0x1000000;
  if ((v18 & 1) == 0)
  {
    v56 = 0;
  }

  return v54 & 0xFFFFFFFFFFFFFFFELL | ((v7 & 1) == 0) | v55 | v56 | v22 | v26 | v30 | v38;
}

uint64_t FlagUpdatesToBeSent.add.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t FlagUpdatesToBeSent.remove.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t static FlagUpdatesToBeSent.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  if ((sub_1B0AFE1EC(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_1B0AFE1EC(a2, a4);
}

uint64_t sub_1B0AFDD30(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
LABEL_7:
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(v3 + 48) + 16 * (v10 | (v4 << 6));
    v14 = *v13;
    v15 = *(v13 + 8);
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](v15 | (v15 << 32));
    result = sub_1B0E46CB8();
    v16 = -1 << *(a2 + 32);
    v17 = result & ~v16;
    if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      return 0;
    }

    v18 = ~v16;
    while (1)
    {
      v19 = (*(a2 + 48) + 16 * v17);
      if ((v19[2] | (v19[2] << 32)) == (v15 | (v15 << 32)))
      {
        v20 = *v19;
        v21 = *(*v19 + 16);
        if (v21 == *(v14 + 16))
        {
          break;
        }
      }

LABEL_16:
      v17 = (v17 + 1) & v18;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        return 0;
      }
    }

    v22 = (v20 + 32);
    if (v21)
    {
      v23 = v20 == v14;
    }

    else
    {
      v23 = 1;
    }

    if (!v23)
    {
      v24 = (v14 + 32);
      while (v21)
      {
        if (*v22 != *v24)
        {
          goto LABEL_16;
        }

        ++v22;
        ++v24;
        if (!--v21)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_31;
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1B0AFDF14(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v37 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v38 = v7;
  v39 = result;
  v46 = a2 + 56;
  if (!v6)
  {
    goto LABEL_8;
  }

  while (2)
  {
    v9 = __clz(__rbit64(v6));
    v41 = (v6 - 1) & v6;
LABEL_13:
    v40 = v3;
    v12 = *(result + 48) + 24 * (v9 | (v3 << 6));
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 12);
    v16 = *(v12 + 16);
    v17 = *(v12 + 20);
    v18 = *(v12 + 22);
    sub_1B0E46C28();
    v43 = v14;
    v47 = v16;
    v49 = v18;
    v19 = v42 & 0xFF00000000000000 | v16 | (v17 << 32) | (v18 << 48);
    GmailLabel.hash(into:)(v50, v13, v14 | (v15 << 32), v19);
    v20 = sub_1B0E46CB8();
    v21 = -1 << *(v2 + 32);
    v22 = v20 & ~v21;
    if (((*(v8 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      return 0;
    }

    v42 = v19;
    v23 = ~v21;
    v24 = v15 - v43;

    v48 = v13;
    swift_beginAccess();
    v44 = (v18 | (v17 << 8)) + v43;
    v45 = v17;
    v25 = v17;
    while (1)
    {
      v26 = *(v2 + 48) + 24 * v22;
      v27 = *(v26 + 8);
      v28 = *(v26 + 12);
      if (v28 - v27 != v24)
      {
        goto LABEL_15;
      }

      v29 = v2;
      v30 = *v26;
      v31 = *(v26 + 20);
      v32 = *(v26 + 22);
      v33 = *(v26 + 16) == v47 && v31 == v25;
      v34 = v33 && v32 == v49;
      if (v34 && v30 == v48)
      {
        break;
      }

      swift_beginAccess();
      v36 = memcmp((*(v30 + 24) + (v32 | (v31 << 8)) + v27), (*(v48 + 24) + v44), v28 - v27);
      v25 = v45;
      v8 = v46;
      v2 = v29;
      if (!v36)
      {

        v7 = v38;
        result = v39;
        goto LABEL_30;
      }

LABEL_15:
      v22 = (v22 + 1) & v23;
      if (((*(v8 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {

        return 0;
      }
    }

    v7 = v38;
    result = v39;
    v2 = v29;
    v8 = v46;
LABEL_30:
    v3 = v40;
    v6 = v41;
    if (v41)
    {
      continue;
    }

    break;
  }

LABEL_8:
  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v11 = *(v37 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v41 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0AFE1EC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v21 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v22 = v7;
  v23 = result;
  if (v6)
  {
    while (1)
    {
      v24 = (v6 - 1) & v6;
LABEL_13:
      sub_1B0E46C28();
      sub_1B0E44BB8();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v11 = sub_1B0E46CB8();
      v12 = -1 << *(a2 + 32);
      v13 = v11 & ~v12;
      if (((*(v8 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        break;
      }

      v14 = ~v12;
      while (1)
      {
        v15 = sub_1B0E44BB8();
        v17 = v16;
        if (v15 == sub_1B0E44BB8() && v17 == v18)
        {
          break;
        }

        v20 = sub_1B0E46A78();

        if (v20)
        {
          goto LABEL_23;
        }

        v13 = (v13 + 1) & v14;
        if (((*(v8 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

LABEL_23:

      v7 = v22;
      result = v23;
      v6 = v24;
      if (!v24)
      {
        goto LABEL_8;
      }
    }

LABEL_26:

    return 0;
  }

LABEL_8:
  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v21 + 8 * v3);
    ++v9;
    if (v10)
    {
      v24 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void FlagUpdatesToBeSent.hash(into:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  sub_1B0B0ADF0(a1, a2);

  sub_1B0B0ADF0(a1, a3);
}

uint64_t FlagUpdatesToBeSent.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  sub_1B0B0ADF0(v5, a1);
  sub_1B0B0ADF0(v5, a2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0AFE4C4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B0E46C28();
  sub_1B0B0ADF0(v4, v1);
  sub_1B0B0ADF0(v4, v2);
  return sub_1B0E46CB8();
}

void sub_1B0AFE518(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1B0B0ADF0(a1, v3);

  sub_1B0B0ADF0(a1, v4);
}

uint64_t sub_1B0AFE558(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1B0E46C28();
  sub_1B0B0ADF0(v5, v2);
  sub_1B0B0ADF0(v5, v3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0AFE5A8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1B0AFE1EC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1B0AFE1EC(v2, v3);
}

uint64_t FlagEncoder.test_encode(_:)(unint64_t a1, char a2)
{
  v27 = MEMORY[0x1E69E7CD0];
  if (a1)
  {
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = Flag.seen.unsafeMutableAddressor();
    v7 = *v6;
    v8 = v6[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B01BA4(&v26, v7, v8);

    if ((a1 & 0x100) == 0)
    {
LABEL_3:
      if ((a1 & 0x10000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  v9 = Flag.deleted.unsafeMutableAddressor();
  v10 = *v9;
  v11 = v9[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B01BA4(&v26, v10, v11);

  if ((a1 & 0x10000) == 0)
  {
LABEL_4:
    v5 = v2[1];
    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_8:
  v12 = Flag.answered.unsafeMutableAddressor();
  v13 = *v12;
  v14 = v12[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B01BA4(&v26, v13, v14);

  v5 = v2[1];
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_9:
  if ((a1 & 0x1000000) != 0)
  {
    v15 = *v2;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B01BA4(&v26, v15, v5);
  }

LABEL_11:
  if ((a1 & 0x100000000) != 0)
  {
    v16 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B0AF54(v16);
  }

  if ((a1 & 0x10000000000) != 0)
  {
    v17 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B0AF54(v17);
  }

  v18 = HIBYTE(a1);
  if (BYTE6(a1))
  {
    v19 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B0AF54(v19);
  }

  if (!v18)
  {
    goto LABEL_27;
  }

  v20 = Flag.flagged.unsafeMutableAddressor();
  v21 = *v20;
  v22 = v20[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B01BA4(&v26, v21, v22);

  if (v18 <= 6)
  {
    if (((1 << SHIBYTE(a1)) & 0x54) == 0)
    {
      if (((1 << SHIBYTE(a1)) & 3) != 0)
      {
        goto LABEL_27;
      }

      if (v18 != 5)
      {
        goto LABEL_25;
      }

LABEL_26:
      sub_1B0B01BA4(&v26, 0x616C466C69614D24, 0xED00003274694267);

      goto LABEL_27;
    }

    sub_1B0B01BA4(&v26, 0x616C466C69614D24, 0xED00003074694267);

    if ((v18 - 5) < 2)
    {
      goto LABEL_26;
    }

    if (v18 == 2)
    {
      goto LABEL_27;
    }
  }

LABEL_25:
  sub_1B0B01BA4(&v26, 0x616C466C69614D24, 0xED00003174694267);

  if (v18 >= 5)
  {
    goto LABEL_26;
  }

LABEL_27:
  v23 = v2[12];
  if (v23 && (a2 & 1) != 0)
  {
    v24 = v2[11];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B01BA4(&v26, v24, v23);
  }

  return v27;
}

uint64_t FlagEncoder.encode(_:)(unint64_t a1, uint64_t a2, unsigned int a3)
{
  *&v59 = a2;
  BYTE8(v59) = a3;
  v5 = *(&v59 + 1);
  v6 = a3 >> 8;
  *&v59 = MEMORY[0x1E69E7CD0];
  *(&v59 + 1) = MEMORY[0x1E69E7CD0];
  v7 = a2 & 1;
  v58[0] = a2 & 1;
  *&v58[1] = v5;
  v58[9] = BYTE1(a3);
  v8 = FlagsWithModifications.locallyModified.getter(a1 & 0xFFFF010101010101, *v58, *&v58[8]);
  v9 = sub_1B0A94670(0, v8);

  if (v9)
  {
    v10 = Flag.seen.unsafeMutableAddressor();
    v11 = *v10;
    v12 = v10[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B01BA4(v58, v11, v12);
  }

  v58[0] = v7;
  *&v58[1] = v5;
  v58[9] = v6;
  v13 = FlagsWithModifications.locallyModified.getter(a1 & 0xFFFF010101010101, *v58, *&v58[8]);
  v14 = sub_1B0A94670(1, v13);

  if (v14)
  {
    v15 = Flag.deleted.unsafeMutableAddressor();
    v16 = *v15;
    v17 = v15[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B01BA4(v58, v16, v17);
  }

  v58[0] = v7;
  *&v58[1] = v5;
  v58[9] = v6;
  v18 = FlagsWithModifications.locallyModified.getter(a1 & 0xFFFF010101010101, *v58, *&v58[8]);
  v19 = sub_1B0A94670(2, v18);

  if (v19)
  {
    v20 = Flag.answered.unsafeMutableAddressor();
    v21 = *v20;
    v22 = v20[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B01BA4(v58, v21, v22);
  }

  v23 = *(v3 + 8);
  if (v23)
  {
    v24 = *v3;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v58[0] = v7;
    *&v58[1] = v5;
    v58[9] = v6;
    v25 = FlagsWithModifications.locallyModified.getter(a1 & 0xFFFF010101010101, *v58, *&v58[8]);
    v26 = sub_1B0A94670(3, v25);

    if (v26)
    {
      sub_1B0B01BA4(v58, v24, v23);
    }
  }

  v58[0] = v7;
  *&v58[1] = v5;
  v58[9] = v6;
  v27 = FlagsWithModifications.locallyModified.getter(a1 & 0xFFFF010101010101, *v58, *&v58[8]);
  v28 = sub_1B0A94670(4, v27);

  if (v28)
  {
    v29 = *(v3 + 32);
    v58[0] = v7;
    *&v58[1] = v5;
    v58[9] = v6;
    sub_1B0AFBDDC(v29);
    sub_1B0AFBFE0(*(v3 + 48));
  }

  v58[0] = v7;
  *&v58[1] = v5;
  v58[9] = v6;
  v30 = FlagsWithModifications.locallyModified.getter(a1 & 0xFFFF010101010101, *v58, *&v58[8]);
  v31 = sub_1B0A94670(5, v30);

  if (v31)
  {
    v32 = *(v3 + 40);
    v58[0] = v7;
    *&v58[1] = v5;
    v58[9] = v6;
    sub_1B0AFBE98(v32);
    sub_1B0AFBFE0(*(v3 + 48));
  }

  v58[0] = v7;
  *&v58[1] = v5;
  v58[9] = v6;
  v33 = FlagsWithModifications.locallyModified.getter(a1 & 0xFFFF010101010101, *v58, *&v58[8]);
  v34 = sub_1B0A94670(6, v33);

  if (v34)
  {
    v35 = *(v3 + 56);
    if (BYTE6(a1))
    {
      if (BYTE6(a1) != 1)
      {
        sub_1B0AFBFE0(v35);
        sub_1B0AFBF54(*(v3 + 64));
        goto LABEL_22;
      }

      sub_1B0AFBF54(v35);
    }

    else
    {
      sub_1B0AFBFE0(v35);
    }

    sub_1B0AFBFE0(*(v3 + 64));
LABEL_22:
    sub_1B0AFBFE0(*(v3 + 72));
  }

  v58[0] = v7;
  *&v58[1] = v5;
  v58[9] = v6;
  v36 = FlagsWithModifications.locallyModified.getter(a1 & 0xFFFF010101010101, *v58, *&v58[8]);
  v37 = sub_1B0A94670(7, v36);

  if ((v37 & 1) == 0)
  {
    goto LABEL_29;
  }

  if (HIBYTE(a1))
  {
    v41 = Flag.flagged.unsafeMutableAddressor();
    v42 = *v41;
    v43 = v41[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B01BA4(v58, v42, v43);

    if ((*(v3 + 80) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v38 = Flag.flagged.unsafeMutableAddressor();
    v39 = *v38;
    v40 = v38[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B01BA4(v58, v39, v40);

    if ((*(v3 + 80) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v44 = Flag.Keyword.colorBit0.unsafeMutableAddressor();
  v45 = *v44;
  v46 = v44[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B01BA4(v58, v45, v46);

  v47 = Flag.Keyword.colorBit1.unsafeMutableAddressor();
  v48 = *v47;
  v49 = v47[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B01BA4(v58, v48, v49);

  v50 = Flag.Keyword.colorBit2.unsafeMutableAddressor();
  v51 = *v50;
  v52 = v50[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B01BA4(v58, v51, v52);

LABEL_29:
  v53 = *(v3 + 96);
  if (v53)
  {
    v54 = *(v3 + 88);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v58[0] = v7;
    *&v58[1] = v5;
    v58[9] = v6;
    v55 = FlagsWithModifications.locallyModified.getter(a1 & 0xFFFF010101010101, *v58, *&v58[8]);
    v56 = sub_1B0A94670(8, v55);

    if (v56)
    {
      sub_1B0B01BA4(v58, v54, v53);
    }
  }

  return v59;
}

unint64_t sub_1B0AFEFFC()
{
  result = Flag.Keyword.init(_:)(0x4364756F6C436924uLL, 0xEE0070756E61656CLL);
  if (v1)
  {
    static Flag.Keyword.iCloudCleanup = result;
    unk_1EB737E80 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Flag.Keyword.iCloudCleanup.getter()
{
  if (qword_1EB6DE190 != -1)
  {
    swift_once();
  }

  v0 = static Flag.Keyword.iCloudCleanup;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

char *sub_1B0AFF0E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E37F8, &qword_1B0EA2E00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0AFF1F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42F8, &unk_1B0EC4E40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0AFF314(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E44B0, &qword_1B0EC5230);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0AFF450(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E44A8, &qword_1B0EC5228);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0AFF55C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42D0, &unk_1B0EC5990);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B0AFF688(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4498, &qword_1B0EC5218);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0AFF794(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4490, &qword_1B0EC5210);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0AFF8B4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_1B0AFF9B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E44B8, &qword_1B0EC5238);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0AFFB14(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size_0(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 192);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[192 * v11])
    {
      memmove(v15, v16, 192 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1B0AFFC58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4150, &qword_1B0EC3510);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 240);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[240 * v8])
    {
      memmove(v12, v13, 240 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0AFFD9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4520, &unk_1B0EC52B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0AFFEA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4528, &qword_1B0EC52C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B0B0007C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size_0(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[40 * v11])
    {
      memmove(v15, v16, 40 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1B0B00198(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_1B0B00298(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43A0, &qword_1B0EC50E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 192);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[24 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 192 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43A8, &qword_1B0EC50F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B0B00400(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_1B0B005E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EA8, &unk_1B0EF9FB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0B006F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4500, &qword_1B0EC5280);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0B00800(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43D8, &qword_1B0EC5140);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0B0095C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E44F0, &qword_1B0EC5270);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0B00A7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4558, &qword_1B0EC52F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0B00B9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4550, &qword_1B0EC52E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0B00CBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4530, &qword_1B0EC52C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}