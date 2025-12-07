uint64_t _s14descr1000F0171O17AssociatedMessageVMa(uint64_t a1)
{
  result = qword_1000FD7B8;
  if (!qword_1000FD7B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100077858()
{
  result = qword_1000FD748;
  if (!qword_1000FD748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD748);
  }

  return result;
}

uint64_t sub_1000778AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000778F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10007795C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000779BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100077A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C4E94();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100077B1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000C4E94();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100077BD8(uint64_t a1)
{
  sub_1000C4E94();
  if (v1 <= 0x3F)
  {
    sub_100077C80();
    if (v2 <= 0x3F)
    {
      sub_100077CD0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100077C80()
{
  if (!qword_1000FCD00)
  {
    v0 = sub_1000C5854();
    if (!v1)
    {
      atomic_store(v0, &qword_1000FCD00);
    }
  }
}

void sub_100077CD0()
{
  if (!qword_1000FD7C8)
  {
    v0 = sub_1000C54C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1000FD7C8);
    }
  }
}

uint64_t sub_100077D80@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a2;
  v61 = a1;
  v55 = a3;
  v3 = sub_1000124CC(&qword_1000FD810, &unk_1000CF740);
  __chkstk_darwin(v3 - 8);
  v51 = &v46 - v4;
  v5 = sub_1000C3514();
  v6 = *(v5 - 8);
  v53 = v5;
  v54 = v6;
  v7 = __chkstk_darwin(v5);
  v52 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v60 = &v46 - v9;
  v10 = sub_1000C2E34();
  v57 = *(v10 - 8);
  v58 = v10;
  __chkstk_darwin(v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000C3054();
  v56 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000C4CC4();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = (&v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v22 = &v46 - v21;
  v23 = sub_1000C4DB4();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = v16;
  v27 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v22, v61, v26);
  v28 = v62;
  result = sub_1000C4D94();
  if (!v28)
  {
    v49 = v13;
    v50 = v12;
    v62 = v24;
    v61 = v23;
    v30 = v27;
    v31 = v60;
    v32 = sub_1000C4DA4();
    v48 = v30;
    v33 = v32;
    v35 = v34;
    sub_100018C68(v32, v34);
    sub_1000C1D84();
    v36 = v50;
    (*(v57 + 104))(v50, enum case for PosterArchive.PosterKitPosterRole.backdrop(_:), v58);
    PosterArchive.init(posterArchiveData:workingDirectory:role:)(v33, v35, v20, v36, v15);
    v37 = v61;
    v58 = sub_1000C4DA4();
    v59 = v38;
    sub_100078380(v31);
    v39 = v49;
    v40 = v56;
    v41 = *(v56 + 16);
    v42 = v51;
    v47 = v15;
    v41(v51, v15, v49);
    (*(v40 + 56))(v42, 0, 1, v39);
    v43 = v53;
    v44 = v54;
    v45 = v60;
    (*(v54 + 16))(v52, v60, v53);
    sub_1000C1D74();
    sub_100018CD0(v58, v59);
    sub_100018CD0(v33, v35);
    (*(v44 + 8))(v45, v43);
    (*(v56 + 8))(v47, v49);
    return (*(v62 + 8))(v48, v37);
  }

  return result;
}

uint64_t sub_100078380@<X0>(uint64_t a3@<X8>)
{
  v60 = a3;
  v3 = sub_1000C3574();
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = __chkstk_darwin(v3);
  v61 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v56 - v6;
  v8 = sub_1000124CC(&qword_1000FC460, &qword_1000C9D30);
  __chkstk_darwin(v8 - 8);
  v59 = v56 - v9;
  v10 = sub_1000C4D84();
  __chkstk_darwin(v10 - 8);
  v11 = sub_1000C20D4();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v56 - v16;
  v18 = objc_opt_self();
  isa = sub_1000C1544().super.isa;
  v65 = 0;
  v20 = [v18 propertyListWithData:isa options:0 format:0 error:&v65];

  if (!v20)
  {
    v41 = v65;
    sub_1000C1474();

    return swift_willThrow();
  }

  v21 = v65;
  sub_1000C58C4();
  swift_unknownObjectRelease();
  sub_1000124CC(&qword_1000FC580, &unk_1000C9E50);
  if (!swift_dynamicCast())
  {
    sub_100078FD8();
    swift_allocError();
    *v42 = 1;
    sub_1000C4FC4();
    sub_10007902C(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
LABEL_22:
    sub_1000C4FD4();
    return swift_willThrow();
  }

  v22 = v69;
  if (!v69[2] || (v23 = sub_100099FF8(0xD000000000000013, 0x80000001000D7A90), (v24 & 1) == 0) || (sub_10001D804(v22[7] + 32 * v23, &v65), (swift_dynamicCast() & 1) == 0))
  {

    sub_100078FD8();
    swift_allocError();
    *v43 = 1;
    sub_1000C4FC4();
    sub_10007902C(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    goto LABEL_22;
  }

  v25 = v70;
  v58 = v69;
  v26 = v12;
  (*(v12 + 104))(v17, enum case for ImageHeader.png(_:), v11);
  v27 = v58;
  v57 = v25;
  LOBYTE(v25) = sub_1000C1594();
  v28 = *(v26 + 8);
  v29 = v17;
  v56[1] = v26 + 8;
  v30 = v28;
  v28(v29, v11);
  if (v25)
  {
    v31 = v57;
    if (!v22[2] || (v32 = sub_100099FF8(0x636E616E696D756CLL, 0xE900000000000065), (v33 & 1) == 0) || (sub_10001D804(v22[7] + 32 * v32, &v65), sub_1000146D8(), (swift_dynamicCast() & 1) == 0) || (v34 = v69, [v69 doubleValue], v34, !v22[2]) || (v35 = sub_100099FF8(0x654B686769487369, 0xE900000000000079), (v36 & 1) == 0) || (sub_10001D804(v22[7] + 32 * v35, &v65), (swift_dynamicCast() & 1) == 0))
    {

      sub_100078FD8();
      swift_allocError();
      *v49 = 1;
      sub_1000C4FC4();
      sub_10007902C(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      goto LABEL_27;
    }

    v37 = v69;
    [v69 BOOLValue];

    if (v22[2])
    {
      v38 = sub_100099FF8(0xD000000000000013, 0x80000001000D7AD0);
      if (v39)
      {
        sub_10001D804(v22[7] + 32 * v38, &v65);

        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_18:
          sub_100078FD8();
          swift_allocError();
          *v40 = 1;
          sub_1000C4FC4();
          sub_10007902C(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
          swift_allocError();
LABEL_27:
          sub_1000C4FD4();
          swift_willThrow();
          return sub_100018CD0(v27, v31);
        }

        if (sub_1000C3024() != 6)
        {
          v67 = &type metadata for Data;
          v68 = &protocol witness table for Data;
          v65 = v27;
          v66 = v31;
          v55 = sub_1000C4D54();
          (*(*(v55 - 8) + 56))(v59, 1, 1, v55);
          sub_100018C68(v27, v31);
          sub_1000C4D64();
          sub_1000C3504();
          return sub_100018CD0(v27, v31);
        }
      }
    }

    goto LABEL_18;
  }

  v45 = v57;
  v46 = v64;
  sub_1000C15A4();
  if (v46)
  {
    v47 = v46;
    v48 = v27;
  }

  else
  {
    sub_100078FD8();
    swift_allocError();
    *v50 = 2;
    v65 = 0;
    v66 = 0xE000000000000000;
    sub_1000C5944(33);

    v65 = 0xD00000000000001FLL;
    v66 = 0x80000001000D7AB0;
    v71._countAndFlagsBits = sub_1000C20C4();
    sub_1000C52E4(v71);

    sub_1000C4FC4();
    sub_10007902C(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    v47 = swift_allocError();
    v48 = v58;
    sub_1000C4FD4();
    swift_willThrow();
    v30(v15, v11);
  }

  v69 = v47;
  swift_errorRetain();
  sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
  v51 = v63;
  if (swift_dynamicCast())
  {

    v53 = v61;
    v52 = v62;
    (*(v62 + 32))(v61, v7, v51);
    sub_100078FD8();
    swift_allocError();
    *v54 = 2;
    v65 = 0;
    v66 = 0xE000000000000000;
    sub_1000C5944(33);

    v65 = 0xD00000000000001FLL;
    v66 = 0x80000001000D7AB0;
    v72._countAndFlagsBits = sub_1000C3564();
    sub_1000C52E4(v72);

    sub_1000C4FC4();
    sub_10007902C(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FD4();
    swift_willThrow();
    sub_100018CD0(v48, v45);
    (*(v52 + 8))(v53, v51);
  }

  else
  {
    sub_100018CD0(v48, v45);
  }
}

unint64_t sub_100078FD8()
{
  result = qword_1000FD818;
  if (!qword_1000FD818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD818);
  }

  return result;
}

uint64_t sub_10007902C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100079088()
{
  result = qword_1000FD820;
  if (!qword_1000FD820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD820);
  }

  return result;
}

unint64_t sub_1000790EC(uint64_t a1)
{
  result = sub_100012610();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100079118()
{
  result = qword_1000FD828;
  if (!qword_1000FD828)
  {
    sub_1000C3BC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD828);
  }

  return result;
}

Swift::Int sub_1000791A0(unsigned __int8 a1)
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t MessageEditingDictionary.encode(to:)(void *a1)
{
  v3 = sub_1000124CC(&qword_1000FD830, &qword_1000CECB0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10001530C(a1, a1[3]);
  sub_10007947C();
  sub_1000C5D04();
  v8[15] = 0;
  sub_1000C5AF4();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1000C5B24();
  v8[13] = 2;
  sub_1000C5AF4();
  v8[12] = 3;
  sub_1000C5AF4();
  v8[11] = 4;
  sub_1000C5B24();
  v8[10] = 5;
  sub_1000C5B04();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_10007947C()
{
  result = qword_1000FD838;
  if (!qword_1000FD838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD838);
  }

  return result;
}

__n128 MessageEditingDictionary.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000798DC(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

MessagesBlastDoorService::MessageEditingDictionary::CodingKeys_optional __swiftcall MessageEditingDictionary.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v5._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._rawValue = &off_1000F1E78;
  v5._object = object;
  v3 = sub_1000C59F4(v2, v5);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t MessageEditingDictionary.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 6778213;
  v2 = 7630949;
  v3 = 29797;
  if (a1 != 4)
  {
    v3 = 29554;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 6910053;
  if (a1 != 1)
  {
    v4 = 6451301;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

double sub_100079628(uint64_t a1)
{
  sub_1000C52C4();

  return result;
}

MessagesBlastDoorService::MessageEditingDictionary::CodingKeys_optional sub_1000796EC@<W0>(Swift::String *a1@<X0>, MessagesBlastDoorService::MessageEditingDictionary::CodingKeys_optional *a2@<X8>)
{
  result.value = MessageEditingDictionary.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void sub_10007971C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6778213;
  v5 = 7630949;
  v6 = 0xE300000000000000;
  v7 = 29797;
  if (v2 != 4)
  {
    v7 = 29554;
  }

  if (v2 != 3)
  {
    v5 = v7;
    v6 = 0xE200000000000000;
  }

  v8 = 6910053;
  if (v2 != 1)
  {
    v8 = 6451301;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1000797A8()
{
  v1 = *v0;
  v2 = 6778213;
  v3 = 7630949;
  v4 = 29797;
  if (v1 != 4)
  {
    v4 = 29554;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 6910053;
  if (v1 != 1)
  {
    v5 = 6451301;
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

MessagesBlastDoorService::MessageEditingDictionary::CodingKeys_optional sub_100079830@<W0>(uint64_t a1@<X0>, MessagesBlastDoorService::MessageEditingDictionary::CodingKeys_optional *a2@<X8>)
{
  result.value = MessageEditingDictionary.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_100079864(uint64_t a1)
{
  v2 = sub_10007947C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000798A0(uint64_t a1)
{
  v2 = sub_10007947C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000798DC(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FD858, &qword_1000CEEA8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  sub_10001530C(a1, a1[3]);
  sub_10007947C();
  sub_1000C5CF4();
  if (v2)
  {
    sub_100015F68(a1);
  }

  else
  {
    LOBYTE(v40[0]) = 0;
    v9 = sub_1000C5A04();
    v11 = v10;
    v12 = v9;
    LOBYTE(v40[0]) = 1;
    v34 = sub_1000C5A34();
    v49 = v13 & 1;
    LOBYTE(v40[0]) = 2;
    v14 = sub_1000C5A04();
    *(&v33 + 1) = v15;
    *&v33 = v14;
    LOBYTE(v40[0]) = 3;
    v16 = sub_1000C5A04();
    v32 = v17;
    v30 = v16;
    LOBYTE(v40[0]) = 4;
    v31 = 0;
    v29 = sub_1000C5A34();
    v48 = v18 & 1;
    v50 = 5;
    v19 = sub_1000C5A14();
    (*(v6 + 8))(v8, v5);
    v28 = v12;
    *&v35 = v12;
    *(&v35 + 1) = v11;
    *&v36 = v34;
    LODWORD(v31) = v49;
    BYTE8(v36) = v49;
    v20 = v33;
    v37 = v33;
    *&v38 = v29;
    v21 = v48;
    BYTE8(v38) = v48;
    BYTE9(v38) = v19;
    v22 = v30;
    v27 = v19;
    v23 = v32;
    *&v39 = v30;
    *(&v39 + 1) = v32;
    sub_100079F3C(&v35, v40);
    sub_100015F68(a1);
    v40[0] = v28;
    v40[1] = v11;
    v40[2] = v34;
    v41 = v31;
    v42 = v20;
    v43 = v29;
    v44 = v21;
    v45 = v27;
    v46 = v22;
    v47 = v23;
    sub_100060438(v40);
    v24 = v38;
    a2[2] = v37;
    a2[3] = v24;
    a2[4] = v39;
    v25 = v36;
    *a2 = v35;
    a2[1] = v25;
  }
}

unint64_t sub_100079CD8()
{
  result = qword_1000FD840;
  if (!qword_1000FD840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD840);
  }

  return result;
}

unint64_t sub_100079D30()
{
  result = qword_1000FD848;
  if (!qword_1000FD848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD848);
  }

  return result;
}

unint64_t sub_100079D88()
{
  result = qword_1000FD850;
  if (!qword_1000FD850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD850);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessageEditingDictionary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MessageEditingDictionary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_100079F88(id *a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X8>)
{
  v5 = v3;
  v24 = sub_1000C2074();
  v8 = *(v24 - 8);
  __chkstk_darwin(v24);
  v25 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [*a1 strokePoints];
  v26 = 0;
  sub_10001D1A8(0, &qword_1000FD868, BlastDoorDrawingStrokePoint_ptr);
  sub_1000C5394();

  v11 = v26;
  if (!v26)
  {
    sub_1000C4FC4();
    sub_100018BFC();
    v5 = swift_allocError();
    goto LABEL_22;
  }

  v21 = v26 & 0xFFFFFFFFFFFFFF8;
  if (v26 >> 62)
  {
    goto LABEL_20;
  }

  v12 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
LABEL_21:

    sub_1000C4FC4();
    sub_100018BFC();
    v5 = swift_allocError();
LABEL_22:
    sub_1000C4FB4();
    swift_willThrow();
LABEL_23:
    *a2 = v5;
    return;
  }

  while (1)
  {
    v26 = _swiftEmptyArrayStorage;
    sub_100045B24(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      break;
    }

    v19 = a3;
    v20 = a2;
    a3 = 0;
    v13 = v26;
    v22 = v8 + 32;
    v23 = v11 & 0xC000000000000001;
    while (1)
    {
      a2 = (a3 + 1);
      if (__OFADD__(a3, 1))
      {
        break;
      }

      if (v23)
      {
        v14 = sub_1000C5954();
      }

      else
      {
        if (a3 >= *(v21 + 16))
        {
          goto LABEL_19;
        }

        v14 = *(v11 + 8 * a3 + 32);
      }

      v15 = v14;
      [v14 location];
      [v15 force];
      [v15 velocity];
      sub_1000C2064();
      if (v3)
      {

        a2 = v20;
        goto LABEL_23;
      }

      v16 = v12;

      v26 = v13;
      v18 = v13[2];
      v17 = v13[3];
      if (v18 >= v17 >> 1)
      {
        sub_100045B24((v17 > 1), v18 + 1, 1);
        v13 = v26;
      }

      v13[2] = v18 + 1;
      (*(v8 + 32))(v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v18, v25, v24);
      ++a3;
      v12 = v16;
      if (a2 == v16)
      {

        sub_1000C2044();
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    v12 = sub_1000C59A4();
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
}

void sub_10007A3A4(void *a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a1;
  v62 = a3;
  v61 = a2;
  v54 = a4;
  v4 = sub_1000C27A4();
  v52 = *(v4 - 8);
  v53 = v4;
  __chkstk_darwin(v4);
  v51 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C3EA4();
  __chkstk_darwin(v6 - 8);
  v55 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C15D4();
  __chkstk_darwin(v8 - 8);
  v57 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C1614();
  __chkstk_darwin(v10 - 8);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000C20B4();
  v56 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000C20A4();
  v58 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v19 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v46 - v20;
  v22 = sub_1000C5514();
  sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v23 = sub_1000C56F4();
  sub_1000C1A54(v22, &_mh_execute_header, v23, "Going through Handwriting unpacking flow.", 41, 2, _swiftEmptyArrayStorage);

  if (*(v62 + 2))
  {
    sub_1000C4FC4();
    sub_100018BFC();
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    return;
  }

  v24 = v59;
  v48 = v19;
  v62 = v21;
  v50 = v15;
  v47 = v13;
  v49 = v16;
  v25 = sub_1000C1554();
  v27 = v26;
  v28 = objc_opt_self();
  isa = sub_1000C1544().super.isa;
  v30 = [v28 decodeHandwritingFromData:isa];

  if (v30)
  {
    v31 = [v30 drawing];
    if (v31)
    {
      v32 = v31;
      v61 = v30;
      v33 = [objc_opt_self() decodeDrawingStrokes:v31];
      sub_10001D1A8(0, &qword_1000FD860, BlastDoorDrawingStroke_ptr);
      v34 = sub_1000C53A4();

      sub_10007ACD0(v34);
      if (!v24)
      {

        [v32 canvasBounds];
        [v32 strokesFrame];
        [v32 totalPoints];
        v35 = v62;
        sub_1000C2094();
        v60 = v32;
        v36 = v61;
        v37 = [v61 uuid];
        v46[1] = v12;
        sub_1000C1604();

        v38 = [v36 creationDate];
        sub_1000C15C4();

        v39 = v49;
        (*(v58 + 16))(v48, v35, v49);
        sub_1000C2084();
        v40 = sub_1000C5514();
        v41 = sub_1000C56F4();
        sub_1000C1A54(v40, &_mh_execute_header, v41, "Successfully completed Handwriting unpacking flow.", 50, 2, _swiftEmptyArrayStorage);

        sub_1000C3E54();
        v42 = v60;
        v43 = v56;
        v44 = v51;
        (*(v56 + 16))(v51, v50, v47);
        (*(v52 + 104))(v44, enum case for BalloonPlugin.Payload.handwriting(_:), v53);
        sub_1000C4474();
        v45 = v58;
        sub_100018CD0(v25, v27);

        (*(v43 + 8))(v50, v47);
        (*(v45 + 8))(v62, v39);
        return;
      }
    }

    else
    {
      sub_1000C4FC4();
      sub_100018BFC();
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
    }
  }

  else
  {
    sub_1000C4FC4();
    sub_100018BFC();
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
  }

  sub_100018CD0(v25, v27);
}

void *sub_10007ACD0(unint64_t a1)
{
  v2 = v1;
  v22 = sub_1000C2054();
  v4 = *(v22 - 8);
  __chkstk_darwin(v22);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1000C59A4())
  {
    v8 = _swiftEmptyArrayStorage;
    if (!i)
    {
      return v8;
    }

    v25 = _swiftEmptyArrayStorage;
    result = sub_10004594C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v10 = 0;
    v8 = v25;
    v20 = i;
    v21 = a1 & 0xC000000000000001;
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v19 = v4 + 32;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v21)
      {
        v12 = sub_1000C5954();
      }

      else
      {
        if (v10 >= *(v18 + 16))
        {
          goto LABEL_19;
        }

        v12 = *(a1 + 8 * v10 + 32);
      }

      v13 = v12;
      v24 = v12;
      sub_100079F88(&v24, &v23, v6);
      if (v2)
      {

        return v8;
      }

      v2 = 0;
      v14 = a1;

      v25 = v8;
      v16 = v8[2];
      v15 = v8[3];
      if (v16 >= v15 >> 1)
      {
        sub_10004594C((v15 > 1), v16 + 1, 1);
        v8 = v25;
      }

      v8[2] = v16 + 1;
      (*(v4 + 32))(v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v16, v6, v22);
      ++v10;
      a1 = v14;
      if (v11 == v20)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
  return result;
}

void *PosterArchive.init(posterArchiveData:workingDirectory:role:)@<X0>(void *a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v59 = a4;
  v51 = a5;
  v58 = sub_1000C3054();
  v50 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C4CF4();
  v54 = *(v9 - 8);
  v55 = v9;
  __chkstk_darwin(v9);
  v53 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000C4CC4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000C1A94();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C4C24();
  v19 = *(v12 + 16);
  v60 = a3;
  v19(v14, a3, v11);
  sub_100018C68(a1, a2);
  v20 = sub_1000C1A84();
  v52 = sub_1000C5554();
  v21 = os_log_type_enabled(v20, v52);
  v61 = v12;
  if (v21)
  {
    v48 = v15;
    v49 = v11;
    v22 = swift_slowAlloc();
    result = swift_slowAlloc();
    v46 = result;
    v62 = result;
    *v22 = 134218242;
    v24 = a2 >> 62;
    v47 = v20;
    if ((a2 >> 62) > 1)
    {
      v25 = v16;
      if (v24 != 2)
      {
        v26 = 0;
        goto LABEL_13;
      }

      v31 = a1[2];
      v30 = a1[3];
      v32 = __OFSUB__(v30, v31);
      v26 = v30 - v31;
      if (!v32)
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    else
    {
      v25 = v16;
      if (!v24)
      {
        v26 = BYTE6(a2);
LABEL_13:
        *(v22 + 4) = v26;
        sub_100018CD0(a1, a2);
        *(v22 + 12) = 2080;
        v33 = v53;
        sub_1000C4CB4();
        v34 = sub_1000C4CD4();
        v36 = v35;
        (*(v54 + 8))(v33, v55);
        v37 = v49;
        v55 = *(v61 + 8);
        v55(v14, v49);
        v38 = sub_10008AC30(v34, v36, &v62);
        v29 = v37;

        *(v22 + 14) = v38;
        v28 = a2;
        v39 = v47;
        _os_log_impl(&_mh_execute_header, v47, v52, "Creating poster archive with data: (%ld bytes) using working directory: %s", v22, 0x16u);
        sub_100015F68(v46);

        v27 = (*(v25 + 8))(v18, v48);
        goto LABEL_14;
      }
    }

    LODWORD(v26) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      return result;
    }

    v26 = v26;
    goto LABEL_13;
  }

  sub_100018CD0(a1, a2);
  v55 = *(v12 + 8);
  v55(v14, v11);
  v27 = (*(v16 + 8))(v18, v15);
  v28 = a2;
  v29 = v11;
LABEL_14:
  v40 = v60;
  __chkstk_darwin(v27);
  *(&v46 - 4) = v40;
  *(&v46 - 3) = a1;
  v42 = v58;
  v41 = v59;
  *(&v46 - 2) = v28;
  *(&v46 - 1) = v41;
  v44 = v56;
  v43 = v57;
  sub_1000C4C94();
  sub_100018CD0(a1, v28);
  if (!v43)
  {
    (*(v50 + 32))(v51, v44, v42);
  }

  v45 = sub_1000C2E34();
  (*(*(v45 - 8) + 8))(v41, v45);
  return (v55)(v40, v29);
}

void sub_10007B49C(uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v41 = a3;
  v42 = a4;
  v4 = sub_1000C2E34();
  v39 = *(v4 - 8);
  v40 = v4;
  __chkstk_darwin(v4);
  v38 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C1614();
  __chkstk_darwin(v6 - 8);
  v45 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C3044();
  __chkstk_darwin(v8 - 8);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C3014();
  v43 = *(v10 - 8);
  v44 = v10;
  __chkstk_darwin(v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000C14E4();
  __chkstk_darwin(v13 - 8);
  v14 = sub_1000C4CF4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000C4244();
  __chkstk_darwin(v18);
  (*(v20 + 104))(&v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for OverridingFileManager.Override.temporaryDirectory(_:));
  sub_1000C4CB4();
  sub_1000C4CE4();
  (*(v15 + 8))(v17, v14);
  v21 = objc_allocWithZone(sub_1000C4254());
  v22 = sub_1000C4234();
  v23 = objc_opt_self();
  v24 = [v23 archiverWithFileManager:v22];
  isa = sub_1000C1544().super.isa;
  v48 = 0;
  v26 = [v24 unarchiveConfigurationFromData:isa error:&v48];

  if (!v26)
  {
    v36 = v48;
    sub_1000C1474();

    swift_willThrow();
    v26 = v24;
    goto LABEL_6;
  }

  v27 = v48;
  v28 = [v26 _path];
  v29 = [v23 serverPathFromPath:v28];

  v30 = v47;
  v31 = sub_10008B184(1752457584, 0xE400000000000000, 0xD000000000000065, 0x80000001000D7BD0, 43, v29);
  if (v30)
  {

    v22 = v24;
LABEL_6:

    goto LABEL_7;
  }

  v32 = v31;

  v33 = [v32 identity];
  v34 = v26;
  sub_10007BED8(v34, v12);
  v26 = v34;
  v35 = v33;
  sub_10007C330(v26, v35, v46);
  v37 = [v35 posterUUID];
  sub_1000C1604();

  [v35 version];
  [v35 supplement];
  (*(v39 + 16))(v38, v41, v40);
  sub_1000C3034();

LABEL_7:
}

uint64_t sub_10007BA90(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a6 & 0x100000000) != 0)
  {
    v6 = result;

    v8._countAndFlagsBits = 58;
    v8._object = 0xE100000000000000;
    sub_1000C52E4(v8);
    v9._countAndFlagsBits = sub_1000C5BE4();
    sub_1000C52E4(v9);

    v10._countAndFlagsBits = 58;
    v10._object = 0xE100000000000000;
    sub_1000C52E4(v10);
    v11._countAndFlagsBits = v6;
    v11._object = a2;
    sub_1000C52E4(v11);
    sub_1000C4FC4();
    sub_10008B2F4(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }

  return result;
}

double sub_10007BBFC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    return *&a6;
  }

  v10._countAndFlagsBits = 58;
  v10._object = 0xE100000000000000;
  sub_1000C52E4(v10);
  v11._countAndFlagsBits = sub_1000C5BE4();
  sub_1000C52E4(v11);

  v12._countAndFlagsBits = 58;
  v12._object = 0xE100000000000000;
  sub_1000C52E4(v12);
  v13._countAndFlagsBits = a1;
  v13._object = a2;
  sub_1000C52E4(v13);
  sub_1000C4FC4();
  sub_10008B2F4(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
  swift_allocError();
  sub_1000C4FB4();
  swift_willThrow();
  return result;
}

uint64_t sub_10007BD68(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 == 6)
  {

    v10._countAndFlagsBits = 58;
    v10._object = 0xE100000000000000;
    sub_1000C52E4(v10);
    v11._countAndFlagsBits = sub_1000C5BE4();
    sub_1000C52E4(v11);

    v12._countAndFlagsBits = 58;
    v12._object = 0xE100000000000000;
    sub_1000C52E4(v12);
    v13._countAndFlagsBits = a1;
    v13._object = a2;
    sub_1000C52E4(v13);
    sub_1000C4FC4();
    sub_10008B2F4(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
  }

  return a6;
}

void sub_10007BED8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = sub_1000C2FF4();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000124CC(&qword_1000FD928, &qword_1000CEF78);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v34 - v11;
  v13 = sub_1000124CC(&qword_1000FD930, &qword_1000CEF80);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v34 - v17;
  v19 = objc_opt_self();
  v40 = 0;
  v20 = [v19 loadConfiguredPropertiesFromPosterConfiguration:a1 error:&v40];
  if (!v20)
  {
    v25 = v40;
    sub_1000C1474();

    swift_willThrow();
    return;
  }

  v21 = v20;
  v22 = v40;
  v23 = [v21 titleStyleConfiguration];
  if (v23)
  {
    v24 = v23;
    sub_10007F13C(v24, v18);
    if (v2)
    {

      return;
    }

    v36 = a1;

    v26 = 0;
  }

  else
  {
    v36 = a1;
    v26 = 1;
  }

  v27 = sub_1000C2F94();
  v28 = 1;
  (*(*(v27 - 8) + 56))(v18, v26, 1, v27);
  v29 = [v21 renderingConfiguration];
  if (!v29)
  {
    v35 = v10;
    v33 = v37;
    v32 = v38;
LABEL_13:
    (*(v33 + 56))(v12, v28, 1, v32);
    sub_100018F28(v18, v16, &qword_1000FD930, &qword_1000CEF80);
    sub_100018F28(v12, v35, &qword_1000FD928, &qword_1000CEF78);
    sub_1000C3004();

    sub_100018F90(v12, &qword_1000FD928, &qword_1000CEF78);
    v31 = v18;
    goto LABEL_14;
  }

  v30 = v29;
  [v30 isDepthEffectDisabled];
  [v30 areMotionEffectsDisabled];
  sub_1000C2FE4();
  if (!v2)
  {
    v35 = v10;

    v33 = v37;
    v32 = v38;
    (*(v37 + 32))(v12, v6, v38);
    v28 = 0;
    goto LABEL_13;
  }

  v31 = v18;
LABEL_14:
  sub_100018F90(v31, &qword_1000FD930, &qword_1000CEF80);
}

void sub_10007C330(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a1;
  v52 = a3;
  v4 = sub_1000C3044();
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = __chkstk_darwin(v4);
  v55 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v49 = &v43 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v43 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v43 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v43 - v16;
  __chkstk_darwin(v15);
  v19 = &v43 - v18;
  v20 = sub_1000C1A94();
  v54 = *(v20 - 8);
  __chkstk_darwin(v20);
  v53 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a2;
  v23 = [a2 provider];
  sub_1000C5224();

  v24 = sub_1000C3024();
  v25 = v56;
  v26 = sub_10007BD68(0x72656469766F7270, 0xEC00000065707954, 0xD000000000000065, 0x80000001000D7BD0, 418, v24);
  if (v25)
  {
  }

  else
  {
    v27 = v26;
    v47 = v19;
    v48 = v20;
    v44 = v17;
    v45 = v14;
    v46 = v11;
    v56 = v22;
    v28 = v53;
    sub_1000C4C24();
    v29 = sub_1000C1A84();
    v30 = sub_1000C5554();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = v27;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v59 = v33;
      *v32 = 136315138;
      v58 = v31;
      v34 = sub_1000C4A84();
      v36 = sub_10008AC30(v34, v35, &v59);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v29, v30, "Unpacking poster from provider: %s", v32, 0xCu);
      sub_100015F68(v33);

      v27 = v31;
    }

    (*(v54 + 8))(v28, v48);
    v37 = v27;
    v38 = v56;
    v39 = v55;
    if (v37 > 2)
    {
      if (v37 == 3)
      {
        v39 = v46;
        sub_100084C24(v57, v46);

        v40 = &enum case for PosterArchive.Provider.gradient(_:);
      }

      else if (v37 == 4)
      {
        v39 = v49;
        sub_100085AA4(v57, v49);

        v40 = &enum case for PosterArchive.Provider.gradientVFX(_:);
      }

      else
      {
        sub_100086594(v57, v55);

        v40 = &enum case for PosterArchive.Provider.dynamic(_:);
      }
    }

    else if (v37)
    {
      if (v37 == 1)
      {
        v39 = v44;
        sub_1000829C4(v57, v44);

        v40 = &enum case for PosterArchive.Provider.memoji(_:);
      }

      else
      {
        v39 = v45;
        sub_1000838D4(v57, v45);

        v40 = &enum case for PosterArchive.Provider.monogram(_:);
      }
    }

    else
    {
      v39 = v47;
      sub_1000810A8(v57, v47);

      v40 = &enum case for PosterArchive.Provider.photos(_:);
    }

    v41 = v50;
    v42 = v51;
    (*(v50 + 104))(v39, *v40, v51);
    (*(v41 + 32))(v52, v39, v42);
  }
}

void sub_10007C820(void *a1@<X0>, uint64_t a2@<X8>)
{
  v141 = a2;
  v170 = sub_1000C3B04();
  v171 = *(v170 - 8);
  v4 = __chkstk_darwin(v170);
  v136 = v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v137 = v129 - v7;
  v8 = __chkstk_darwin(v6);
  v138 = v129 - v9;
  v10 = __chkstk_darwin(v8);
  v139 = v129 - v11;
  v12 = __chkstk_darwin(v10);
  v140 = v129 - v13;
  v14 = __chkstk_darwin(v12);
  v142 = v129 - v15;
  v16 = __chkstk_darwin(v14);
  v143 = v129 - v17;
  v18 = __chkstk_darwin(v16);
  v144 = v129 - v19;
  v20 = __chkstk_darwin(v18);
  v145 = v129 - v21;
  v22 = __chkstk_darwin(v20);
  v146 = v129 - v23;
  v24 = __chkstk_darwin(v22);
  v147 = v129 - v25;
  v26 = __chkstk_darwin(v24);
  v148 = v129 - v27;
  v28 = __chkstk_darwin(v26);
  v149 = v129 - v29;
  v30 = __chkstk_darwin(v28);
  v150 = v129 - v31;
  v32 = __chkstk_darwin(v30);
  v151 = v129 - v33;
  v34 = __chkstk_darwin(v32);
  v152 = v129 - v35;
  v36 = __chkstk_darwin(v34);
  v153 = v129 - v37;
  v38 = __chkstk_darwin(v36);
  v154 = v129 - v39;
  v40 = __chkstk_darwin(v38);
  v155 = v129 - v41;
  v42 = __chkstk_darwin(v40);
  v156 = v129 - v43;
  v44 = __chkstk_darwin(v42);
  v157 = v129 - v45;
  v46 = __chkstk_darwin(v44);
  v158 = v129 - v47;
  v48 = __chkstk_darwin(v46);
  v159 = v129 - v49;
  v50 = __chkstk_darwin(v48);
  v160 = v129 - v51;
  v52 = __chkstk_darwin(v50);
  v161 = v129 - v53;
  v54 = __chkstk_darwin(v52);
  v162 = v129 - v55;
  v56 = __chkstk_darwin(v54);
  v163 = v129 - v57;
  v58 = __chkstk_darwin(v56);
  v164 = v129 - v59;
  v60 = __chkstk_darwin(v58);
  v165 = v129 - v61;
  v62 = __chkstk_darwin(v60);
  v166 = v129 - v63;
  v64 = __chkstk_darwin(v62);
  v167 = v129 - v65;
  v66 = __chkstk_darwin(v64);
  v168 = v129 - v67;
  v68 = __chkstk_darwin(v66);
  v169 = v129 - v69;
  v70 = __chkstk_darwin(v68);
  v72 = v129 - v71;
  v73 = __chkstk_darwin(v70);
  v75 = v129 - v74;
  v76 = __chkstk_darwin(v73);
  v78 = v129 - v77;
  v79 = __chkstk_darwin(v76);
  v81 = v129 - v80;
  v82 = __chkstk_darwin(v79);
  v84 = v129 - v83;
  v85 = __chkstk_darwin(v82);
  v87 = v129 - v86;
  __chkstk_darwin(v85);
  v89 = v129 - v88;
  v90 = a1;
  sub_10007EA44(v90, 12, v89);
  if (!v2)
  {
    v130 = v72;
    v131 = v75;
    v132 = v78;
    v133 = v81;
    v134 = v84;
    v135 = v89;
    v91 = v90;
    sub_10007EA44(v91, 37, v87);
    v92 = v91;
    sub_10007EA44(v92, 25, v134);
    v93 = v92;
    sub_10007EA44(v93, 26, v133);
    v94 = v93;
    sub_10007EA44(v94, 27, v132);
    v95 = v94;
    sub_10007EA44(v95, 22, v131);
    v96 = v95;
    sub_10007EA44(v96, 33, v130);
    v97 = v96;
    sub_10007EA44(v97, 18, v169);
    v98 = v97;
    sub_10007EA44(v98, 38, v168);
    v129[1] = v87;
    v99 = v98;
    sub_10007EA44(v99, 30, v167);
    v100 = v99;
    sub_10007EA44(v100, 31, v166);
    v101 = v100;
    sub_10007EA44(v101, 11, v165);
    v102 = v101;
    sub_10007EA44(v102, 8, v164);
    v103 = v102;
    sub_10007EA44(v103, 6, v163);
    v104 = v103;
    sub_10007EA44(v104, 23, v162);
    v105 = v104;
    sub_10007EA44(v105, 28, v161);
    v106 = v105;
    sub_10007EA44(v106, 7, v160);
    v107 = v106;
    sub_10007EA44(v107, 24, v159);
    v108 = v107;
    sub_10007EA44(v108, 5, v158);
    v109 = v108;
    sub_10007EA44(v109, 17, v157);
    v110 = v109;
    sub_10007EA44(v110, 32, v156);
    v111 = v110;
    sub_10007EA44(v111, 2, v155);
    v112 = v111;
    sub_10007EA44(v112, 16, v154);
    v113 = v112;
    sub_10007EA44(v113, 29, v153);
    v114 = v113;
    sub_10007EA44(v114, 13, v152);
    v115 = v114;
    sub_10007EA44(v115, 1, v151);
    v116 = v115;
    sub_10007EA44(v116, 0, v150);
    v117 = v116;
    sub_10007EA44(v117, 4, v149);
    v118 = v117;
    sub_10007EA44(v118, 15, v148);
    v119 = v118;
    sub_10007EA44(v119, 10, v147);
    v120 = v119;
    sub_10007EA44(v120, 20, v146);
    v121 = v120;
    sub_10007EA44(v121, 9, v145);
    v122 = v121;
    sub_10007EA44(v122, 19, v144);
    v123 = v122;
    sub_10007EA44(v123, 35, v143);
    v124 = v123;
    sub_10007EA44(v124, 34, v142);
    v125 = v124;
    sub_10007EA44(v125, 36, v140);
    v126 = v125;
    sub_10007EA44(v126, 3, v139);
    v127 = v126;
    sub_10007EA44(v127, 14, v138);
    v128 = v127;
    sub_10007EA44(v128, 21, v137);
    v90 = v128;
    sub_10007EA44(v90, 39, v136);
    sub_1000C3B14();
  }
}

void sub_10007EA44(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v59 = a3;
  v7 = sub_1000C3AD4();
  v65 = *(v7 - 8);
  v66 = v7;
  v8 = __chkstk_darwin(v7);
  v60 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v63 = &v57 - v11;
  __chkstk_darwin(v10);
  v13 = &v57 - v12;
  v14 = sub_1000124CC(&qword_1000FD8B8, &qword_1000CEF20);
  v15 = __chkstk_darwin(v14 - 8);
  v58 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v64 = &v57 - v18;
  __chkstk_darwin(v17);
  v67 = &v57 - v19;
  v20 = sub_1000C3AF4();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000124CC(&qword_1000FD8C0, &qword_1000CEF28);
  __chkstk_darwin(v24 - 8);
  v26 = &v57 - v25;
  v27 = a1;
  v28 = [v27 presetIdentifierForCategory:a2];
  if (v28)
  {
    v29 = v28;
    v57 = v13;
    v61 = a2;
    sub_1000C5224();

    sub_1000C3AE4();
    v4 = v3;
    if (v3)
    {

      return;
    }

    (*(v21 + 32))(v26, v23, v20);
    (*(v21 + 56))(v26, 0, 1, v20);
    a2 = v61;
    v13 = v57;
  }

  else
  {

    (*(v21 + 56))(v26, 1, 1, v20);
  }

  v62 = v26;
  v30 = v27;
  v31 = [v30 colorPresetForCategory:a2 colorIndex:0];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 name];
    sub_1000C5224();

    [v32 variation];
    sub_1000C3AC4();
    if (v4)
    {

LABEL_19:
      sub_100018F90(v62, &qword_1000FD8C0, &qword_1000CEF28);
      return;
    }

    v61 = 0;
    v34 = a2;

    v37 = v65;
    v36 = v66;
    v38 = v67;
    (*(v65 + 32))(v67, v13, v66);
    v35 = 0;
  }

  else
  {
    v61 = v4;
    v34 = a2;

    v35 = 1;
    v37 = v65;
    v36 = v66;
    v38 = v67;
  }

  v39 = *(v37 + 56);
  (v39)(v38, v35, 1, v36);
  v40 = v30;
  v41 = [v40 colorPresetForCategory:v34 colorIndex:1];
  if (v41)
  {
    v42 = v41;
    v57 = v39;
    v43 = [v41 name];
    sub_1000C5224();

    [v42 variation];
    v44 = v63;
    v45 = v61;
    sub_1000C3AC4();
    v46 = v64;
    v61 = v45;
    if (v45)
    {

      sub_100018F90(v67, &qword_1000FD8B8, &qword_1000CEF20);
      sub_100018F90(v62, &qword_1000FD8C0, &qword_1000CEF28);
      return;
    }

    v36 = v66;
    (*(v65 + 32))(v46, v44, v66);
    v47 = 0;
    v39 = v57;
  }

  else
  {

    v47 = 1;
    v46 = v64;
  }

  (v39)(v46, v47, 1, v36);
  v48 = v40;
  v49 = [v48 colorPresetForCategory:v34 colorIndex:2];
  if (v49)
  {
    v50 = v49;
    v51 = [v49 name];
    sub_1000C5224();

    [v50 variation];
    v53 = v60;
    v52 = v61;
    sub_1000C3AC4();
    if (v52)
    {

      sub_100018F90(v46, &qword_1000FD8B8, &qword_1000CEF20);
      sub_100018F90(v67, &qword_1000FD8B8, &qword_1000CEF20);
      goto LABEL_19;
    }

    v55 = v58;
    v56 = v53;
    v36 = v66;
    (*(v65 + 32))(v58, v56, v66);
    v54 = 0;
  }

  else
  {

    v54 = 1;
    v55 = v58;
  }

  (v39)(v55, v54, 1, v36);
  sub_1000C3AB4();
}

void sub_10007F13C(char *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_1000124CC(&qword_1000FD938, &qword_1000CEF88);
  __chkstk_darwin(v3 - 8);
  v55 = &v51 - v4;
  v5 = sub_1000124CC(&qword_1000FD940, &qword_1000CEF90);
  __chkstk_darwin(v5 - 8);
  v61 = &v51 - v6;
  v7 = sub_1000124CC(&qword_1000FD948, &qword_1000CEF98);
  __chkstk_darwin(v7 - 8);
  v63 = &v51 - v8;
  v9 = sub_1000C2E94();
  v59 = *(v9 - 8);
  v60 = v9;
  __chkstk_darwin(v9);
  v62 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000C2EB4();
  v57 = *(v11 - 8);
  v58 = v11;
  __chkstk_darwin(v11);
  v64 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000C2FB4();
  __chkstk_darwin(v13 - 8);
  v14 = sub_1000C2FD4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000124CC(&qword_1000FD950, &qword_1000CEFA0);
  __chkstk_darwin(v18 - 8);
  v20 = &v51 - v19;
  v21 = objc_opt_self();
  v22 = [a1 timeFontConfiguration];
  v23 = [v21 systemTimeFontConfigurationFromTimeFontConfiguration:v22];

  v24 = [a1 groupName];
  v53 = sub_1000C5224();
  v65 = v25;

  if (v23)
  {
    v51 = v15;
    v52 = v14;
    v56 = a1;
    v26 = v23;
    v27 = [v26 timeFontIdentifier];
    sub_1000C5224();

    sub_1000C2FA4();
    [v26 weight];
    [v26 isSystemItem];
    v28 = v66;
    sub_1000C2FC4();
    v66 = v28;
    if (v28)
    {

      return;
    }

    v30 = v51;
    v29 = v52;
    (*(v51 + 32))(v20, v17, v52);
    (*(v30 + 56))(v20, 0, 1, v29);
    a1 = v56;
  }

  else
  {
    (*(v15 + 56))(v20, 1, 1, v14);
  }

  v31 = [a1 preferredTitleAlignment];
  v33 = v61;
  v32 = v62;
  v35 = v63;
  v34 = v64;
  if ((v31 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  sub_1000C2EA4();
  if (([a1 preferredTitleLayout] & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    return;
  }

  sub_1000C2E84();
  v36 = [a1 titleColor];
  if (v36)
  {
    v37 = v36;
    v38 = v66;
    sub_10007F984(v37);
    v66 = v38;
    if (v38)
    {

      (*(v59 + 8))(v32, v60);
      (*(v57 + 8))(v34, v58);
      sub_100018F90(v20, &qword_1000FD950, &qword_1000CEFA0);
      return;
    }

    v56 = v20;

    v39 = 0;
  }

  else
  {
    v56 = v20;
    v39 = 1;
  }

  v40 = sub_1000C2E74();
  v41 = 1;
  (*(*(v40 - 8) + 56))(v35, v39, 1, v40);
  if ([a1 titleContentStyle])
  {
    v42 = swift_unknownObjectRetain();
    v43 = v66;
    sub_10007FB7C(v42, v33);
    v66 = v43;
    if (v43)
    {

      swift_unknownObjectRelease();

      sub_100018F90(v35, &qword_1000FD948, &qword_1000CEF98);
      (*(v59 + 8))(v32, v60);
      (*(v57 + 8))(v34, v58);
      sub_100018F90(v56, &qword_1000FD950, &qword_1000CEFA0);
      return;
    }

    swift_unknownObjectRelease();
    v41 = 0;
  }

  v44 = sub_1000C2F54();
  v45 = 1;
  (*(*(v44 - 8) + 56))(v33, v41, 1, v44);
  v46 = [a1 timeNumberingSystem];
  if (v46)
  {
    v47 = v46;
    sub_1000C5224();

    v48 = v55;
    sub_1000C2F64();
    v45 = 0;
  }

  else
  {
    v48 = v55;
  }

  v49 = sub_1000C2F74();
  (*(*(v49 - 8) + 56))(v48, v45, 1, v49);
  [a1 isUserConfigured];
  [a1 contentsLuminance];
  [a1 isAlternateDateEnabled];
  v50 = v66;
  sub_1000C2F84();

  v66 = v50;
}

void sub_10007F984(void *a1)
{
  v3 = sub_1000C2E54();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000C4D24();
  __chkstk_darwin(v4 - 8);
  v5 = [a1 color];
  v6 = sub_10008B184(0x726F6C6F63, 0xE500000000000000, 0xD000000000000065, 0x80000001000D7BD0, 283, v5);
  if (v1)
  {

LABEL_7:
    return;
  }

  v7 = v6;

  v8 = [v7 CGColor];
  sub_1000C4D14();
  if (([a1 preferredStyle] & 0x8000000000000000) == 0)
  {
    sub_1000C2E44();
    v9 = [a1 localizedName];
    if (v9)
    {
      v10 = v9;
      sub_1000C5224();
    }

    sub_1000C2E64();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_10007FB7C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_1000124CC(&qword_1000FD958, &qword_1000CEFA8);
  v4 = __chkstk_darwin(v3 - 8);
  v48 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v47 = &v46 - v6;
  v7 = sub_1000124CC(&qword_1000FD960, &unk_1000CEFB0);
  v8 = __chkstk_darwin(v7 - 8);
  v46 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v46 - v10;
  v12 = sub_1000C2ED4();
  v13 = __chkstk_darwin(v12 - 8);
  __chkstk_darwin(v13);
  v14 = sub_1000C2F54();
  v49 = *(v14 - 8);
  v50 = v14;
  v15 = __chkstk_darwin(v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v46 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v46 - v22;
  __chkstk_darwin(v21);
  v25 = &v46 - v24;
  v26 = [a1 type];
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v27 = [objc_opt_self() vibrantMaterialContentStyleForContentStyle:a1];
      v37 = v52;
      v38 = sub_10008B184(0xD000000000000011, 0x80000001000D7EC0, 0xD000000000000065, 0x80000001000D7BD0, 171, v27);
      if (!v37)
      {
        v43 = v38;

        [v43 type];
        sub_1000C2EC4();
        v44 = sub_1000C2EF4();
        (*(*(v44 - 8) + 56))(v11, 1, 1, v44);
        v45 = sub_1000C2F34();
        (*(*(v45 - 8) + 56))(v47, 1, 1, v45);
        sub_1000C2F44();
        swift_unknownObjectRelease();

        v17 = v20;
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    if (v26 != 3)
    {
      goto LABEL_10;
    }

    v31 = [objc_opt_self() vibrantMonochromeContentStyleForContentStyle:a1];
    v32 = v52;
    v33 = sub_10008B184(0xD000000000000011, 0x80000001000D7EC0, 0xD000000000000065, 0x80000001000D7BD0, 174, v31);
    if (!v32)
    {
      v39 = v33;

      [v39 type];
      sub_1000C2EC4();
      v40 = sub_1000C2EF4();
      (*(*(v40 - 8) + 56))(v46, 1, 1, v40);
      v41 = sub_1000C2F34();
      (*(*(v41 - 8) + 56))(v48, 1, 1, v41);
      sub_1000C2F44();
      swift_unknownObjectRelease();

      goto LABEL_19;
    }

LABEL_15:
    swift_unknownObjectRelease();
    return;
  }

  if (!v26)
  {
    v34 = [objc_opt_self() discreteColorsContentStyleForContentStyle:a1];
    v35 = v52;
    v36 = sub_10008B184(0xD000000000000011, 0x80000001000D7EC0, 0xD000000000000065, 0x80000001000D7BD0, 165, v34);
    if (!v35)
    {
      v42 = v36;

      sub_100080338(v42, v25);
      swift_unknownObjectRelease();
      v17 = v25;
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (v26 != 1)
  {
LABEL_10:
    sub_1000C4FC4();
    sub_10008B2F4(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    goto LABEL_15;
  }

  v27 = [objc_opt_self() gradientContentStyleForContentStyle:a1];
  v28 = v52;
  v29 = sub_10008B184(0xD000000000000011, 0x80000001000D7EC0, 0xD000000000000065, 0x80000001000D7BD0, 168, v27);
  if (v28)
  {
LABEL_14:

    goto LABEL_15;
  }

  v30 = v29;

  sub_10008092C(v30, v23);
  swift_unknownObjectRelease();
  v17 = v23;
LABEL_19:
  (*(v49 + 32))(v51, v17, v50);
}

void sub_100080338(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v51 = sub_1000C4D24();
  v4 = *(v51 - 8);
  __chkstk_darwin(v51);
  v52 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000124CC(&qword_1000FD958, &qword_1000CEFA8);
  __chkstk_darwin(v6 - 8);
  v45 = &v37 - v7;
  v8 = sub_1000124CC(&qword_1000FD960, &unk_1000CEFB0);
  __chkstk_darwin(v8 - 8);
  v10 = &v37 - v9;
  v11 = sub_1000C2ED4();
  v43 = *(v11 - 8);
  __chkstk_darwin(v11);
  v48 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000C2EF4();
  v44 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 isVibrant];
  [a1 allowsVariation];
  [a1 variation];
  sub_1000C2EE4();
  if (!v2)
  {
    v40 = v11;
    v41 = v15;
    v42 = v10;
    [a1 type];
    sub_1000C2EC4();
    v16 = [a1 colors];
    sub_10001D1A8(0, &qword_1000FD968, UIColor_ptr);
    v17 = sub_1000C53A4();

    v18 = v17;
    if (v17 >> 62)
    {
      goto LABEL_21;
    }

    v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      v20 = v42;
      v21 = v45;
      v22 = v13;
      if (!v19)
      {
        break;
      }

      v23 = v18;
      v38 = v13;
      v39 = a1;
      v53 = _swiftEmptyArrayStorage;
      v50 = v19;
      v18 = sub_100045BF0(0, v19 & ~(v19 >> 63), 0);
      if (v50 < 0)
      {
        __break(1u);
        return;
      }

      v24 = 0;
      v13 = v53;
      v25 = v23;
      v26 = v23 & 0xC000000000000001;
      v47 = v23 & 0xFFFFFFFFFFFFFF8;
      v49 = v4 + 32;
      a1 = v23;
      while (1)
      {
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v26)
        {
          v28 = sub_1000C5954();
        }

        else
        {
          if (v24 >= *(v47 + 16))
          {
            goto LABEL_20;
          }

          v28 = v25[v24 + 4];
        }

        v29 = v28;
        v30 = [v28 CGColor];
        sub_1000C4D14();

        v53 = v13;
        v32 = *(v13 + 16);
        v31 = *(v13 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_100045BF0((v31 > 1), v32 + 1, 1);
          v13 = v53;
        }

        *(v13 + 16) = v32 + 1;
        v18 = (*(v4 + 32))(v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v32, v52, v51);
        ++v24;
        v25 = a1;
        if (v27 == v50)
        {

          v22 = v38;
          a1 = v39;
          v21 = v45;
          v20 = v42;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v36 = v18;
      v19 = sub_1000C59A4();
      v18 = v36;
    }

LABEL_17:
    v33 = v44;
    v34 = v41;
    (*(v44 + 16))(v20, v41, v22);
    (*(v33 + 56))(v20, 0, 1, v22);
    v35 = sub_1000C2F34();
    (*(*(v35 - 8) + 56))(v21, 1, 1, v35);
    sub_1000C2F44();
    (*(v33 + 8))(v34, v22);
  }
}

void sub_10008092C(id a1@<X0>, unint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1000C4D24();
  v7 = *(v6 - 8);
  v59 = v6;
  v60 = v7;
  __chkstk_darwin(v6);
  v61 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000124CC(&qword_1000FD958, &qword_1000CEFA8);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_1000124CC(&qword_1000FD960, &unk_1000CEFB0);
  __chkstk_darwin(v12 - 8);
  v49 = &v46 - v13;
  v14 = sub_1000C2ED4();
  v47 = *(v14 - 8);
  v48 = v14;
  __chkstk_darwin(v14);
  v56 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000C2F14();
  __chkstk_darwin(v16 - 8);
  v17 = sub_1000C2F34();
  v52 = *(v17 - 8);
  v53 = v17;
  __chkstk_darwin(v17);
  v57 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 gradientType];
  sub_1000C2F04();
  v19 = [a1 locations];
  sub_10001D1A8(0, &qword_1000FC320, NSNumber_ptr);
  v20 = sub_1000C53A4();

  if (v20 >> 62)
  {
    v21 = sub_1000C59A4();
    v50 = v11;
    v51 = a2;
    if (v21)
    {
      goto LABEL_3;
    }

LABEL_13:

    goto LABEL_14;
  }

  v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v50 = v11;
  v51 = a2;
  if (!v21)
  {
    goto LABEL_13;
  }

LABEL_3:
  v62 = _swiftEmptyArrayStorage;
  sub_100045C34(0, v21 & ~(v21 >> 63), 0);
  if (v21 < 0)
  {
    goto LABEL_32;
  }

  v58 = v2;
  v55 = a1;
  v22 = 0;
  v23 = v62;
  do
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      v24 = sub_1000C5954();
    }

    else
    {
      v24 = *(v20 + 8 * v22 + 32);
    }

    v25 = v24;
    [v24 doubleValue];
    v27 = v26;

    v62 = v23;
    v29 = v23[2];
    v28 = v23[3];
    if (v29 >= v28 >> 1)
    {
      sub_100045C34((v28 > 1), v29 + 1, 1);
      v23 = v62;
    }

    ++v22;
    v23[2] = v29 + 1;
    v23[v29 + 4] = v27;
  }

  while (v21 != v22);

  a1 = v55;
  v3 = v58;
LABEL_14:
  [a1 startPoint];
  [a1 endPoint];
  sub_1000C2F24();
  v11 = v3;
  if (v3)
  {
LABEL_36:

    return;
  }

  [a1 type];
  sub_1000C2EC4();
  v30 = [a1 colors];
  sub_10001D1A8(0, &qword_1000FD968, UIColor_ptr);
  a2 = sub_1000C53A4();

  if (a2 >> 62)
  {
    goto LABEL_33;
  }

  v31 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v31)
  {
LABEL_34:

LABEL_35:
    v41 = sub_1000C2EF4();
    (*(*(v41 - 8) + 56))(v49, 1, 1, v41);
    v43 = v52;
    v42 = v53;
    v44 = v50;
    v45 = v57;
    (*(v52 + 16))(v50, v57, v53);
    (*(v43 + 56))(v44, 0, 1, v42);
    sub_1000C2F44();
    (*(v43 + 8))(v45, v42);
    goto LABEL_36;
  }

  while (1)
  {
    v55 = a1;
    v62 = _swiftEmptyArrayStorage;
    sub_100045BF0(0, v31 & ~(v31 >> 63), 0);
    if (v31 < 0)
    {
      break;
    }

    v32 = 0;
    v33 = v62;
    a1 = (a2 & 0xC000000000000001);
    v54 = a2 & 0xFFFFFFFFFFFFFF8;
    v58 = (v60 + 32);
    while (1)
    {
      v34 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (a1)
      {
        v35 = sub_1000C5954();
      }

      else
      {
        if (v32 >= *(v54 + 16))
        {
          goto LABEL_31;
        }

        v35 = *(a2 + 8 * v32 + 32);
      }

      v36 = v35;
      v37 = [v35 CGColor];
      sub_1000C4D14();
      if (v11)
      {

        (*(v47 + 8))(v56, v48);
        (*(v52 + 8))(v57, v53);

        return;
      }

      v38 = v31;

      v62 = v33;
      v40 = v33[2];
      v39 = v33[3];
      if (v40 >= v39 >> 1)
      {
        sub_100045BF0((v39 > 1), v40 + 1, 1);
        v33 = v62;
      }

      v33[2] = v40 + 1;
      (*(v60 + 32))(v33 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v40, v61, v59);
      ++v32;
      v31 = v38;
      if (v34 == v38)
      {

        a1 = v55;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    v31 = sub_1000C59A4();
    if (!v31)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
}

void sub_1000810A8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v156 = a2;
  v3 = sub_1000C2554();
  __chkstk_darwin(v3 - 8);
  v161 = &v145 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_1000C42C4();
  v159 = *(v160 - 8);
  v5 = __chkstk_darwin(v160);
  v157 = &v145 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  *&v152 = &v145 - v8;
  v9 = __chkstk_darwin(v7);
  *&v151 = &v145 - v10;
  __chkstk_darwin(v9);
  v158 = &v145 - v11;
  v12 = sub_1000124CC(&qword_1000FD878, &qword_1000CEEF8);
  v13 = __chkstk_darwin(v12 - 8);
  v155 = &v145 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v164 = &v145 - v15;
  v16 = sub_1000C1484();
  *&v165 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v145 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_1000C2434();
  v163 = *(v162 - 8);
  v19 = __chkstk_darwin(v162);
  v154 = &v145 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v168 = &v145 - v21;
  v166 = sub_1000C24B4();
  v167 = *(v166 - 8);
  v22 = __chkstk_darwin(v166);
  v153 = &v145 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v169 = &v145 - v24;
  v25 = sub_1000C14E4();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v29 = (&v145 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v27);
  v31 = &v145 - v30;
  v32 = [a1 assetDirectory];
  sub_1000C14A4();

  v33 = objc_opt_self();
  sub_1000C1494(v34);
  v36 = v35;
  *&v177 = 0;
  v37 = [v33 loadFromURL:v35 error:&v177];

  if (!v37)
  {
    v43 = v177;
    sub_1000C1474();

    swift_willThrow();
    v44 = *(v26 + 8);
    v45 = v31;
    v46 = v25;
LABEL_5:
    v44(v45, v46);
    return;
  }

  v170 = v31;
  v171 = v25;
  v172 = v26;
  v38 = v177;
  v173 = v37;
  v39 = [v37 media];
  if (v39)
  {
    v40 = v39;
    v41 = a1;
    sub_10001D1A8(0, &qword_1000FD888, PFPosterMedia_ptr);
    v42 = sub_1000C53A4();
  }

  else
  {
    v41 = a1;
    v42 = 0;
  }

  v47 = v174;
  v48 = sub_10008B184(0x616964656DLL, 0xE500000000000000, 0xD000000000000065, 0x80000001000D7BD0, 644, v42);
  v49 = v47;
  if (v47)
  {
    (*(v172 + 8))(v170, v171);

    return;
  }

  v50 = v48;

  if (v50 >> 62)
  {
    if (sub_1000C59A4())
    {
      goto LABEL_11;
    }

LABEL_16:

    v52 = 0;
    goto LABEL_17;
  }

  if (!*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_11:
  if ((v50 & 0xC000000000000001) != 0)
  {
    v51 = sub_1000C5954();
  }

  else
  {
    if (!*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    v51 = *(v50 + 32);
  }

  v52 = v51;

LABEL_17:
  v53 = sub_10008B184(0x69662E616964656DLL, 0xEB00000000747372, 0xD000000000000065, 0x80000001000D7BD0, 644, v52);

  sub_10008977C(v53, v169);
  v54 = v41;
  *&v177 = sub_1000C24A4();
  *(&v177 + 1) = v55;
  v56 = v165;
  (*(v165 + 104))(v18, enum case for URL.DirectoryHint.inferFromPath(_:), v16);
  sub_100018D24();
  sub_1000C14D4();
  (*(v56 + 8))(v18, v16);

  sub_100089AEC(v29, v168);
  v41 = v172;
  v57 = v173;
  v58 = [v173 layoutConfiguration];
  if (v58)
  {
    v59 = v58;
    v60 = v164;
    sub_100088A70(v59, v164);

    v61 = 0;
    v57 = v173;
  }

  else
  {
    v61 = 1;
    v60 = v164;
  }

  v62 = sub_1000C2454();
  (*(*(v62 - 8) + 56))(v60, v61, 1, v62);
  v63 = [v57 userInfo];
  if (!v63)
  {
    goto LABEL_28;
  }

  v64 = v63;
  v65 = sub_1000C5194();

  *&v179 = sub_1000C5224();
  *(&v179 + 1) = v66;
  sub_1000C5914();
  if (!*(v65 + 16) || (v67 = sub_10009A124(&v177), (v68 & 1) == 0))
  {

    sub_100046CAC(&v177);
LABEL_28:
    v179 = 0u;
    v180 = 0u;
    goto LABEL_29;
  }

  sub_10001D804(*(v65 + 56) + 32 * v67, &v179);
  sub_100046CAC(&v177);

  if (!*(&v180 + 1))
  {
LABEL_29:
    sub_100018F90(&v179, &qword_1000FC828, &qword_1000CF790);
    v69 = 2;
    goto LABEL_30;
  }

  if (swift_dynamicCast())
  {
    v69 = v177;
  }

  else
  {
    v69 = 2;
  }

LABEL_30:
  v148 = v69;
  v70 = [v57 userInfo];
  if (!v70)
  {
LABEL_41:
    v179 = 0u;
    v180 = 0u;
    goto LABEL_42;
  }

  v71 = v70;
  v72 = sub_1000C5194();

  *&v179 = sub_1000C5224();
  *(&v179 + 1) = v73;
  sub_1000C5914();
  if (!*(v72 + 16) || (v74 = sub_10009A124(&v177), (v75 & 1) == 0))
  {

    sub_100046CAC(&v177);
    goto LABEL_41;
  }

  sub_10001D804(*(v72 + 56) + 32 * v74, &v179);
  sub_100046CAC(&v177);

  if (!*(&v180 + 1))
  {
LABEL_42:
    sub_100018F90(&v179, &qword_1000FC828, &qword_1000CF790);
    v147 = 0;
    v149 = 0;
    goto LABEL_43;
  }

  v76 = swift_dynamicCast();
  v77 = v177;
  if (!v76)
  {
    v77 = 0;
  }

  v147 = v77;
  if (v76)
  {
    v78 = *(&v177 + 1);
  }

  else
  {
    v78 = 0;
  }

  v149 = v78;
LABEL_43:
  v150 = 0;
  v79 = [v57 userInfo];
  if (!v79)
  {
    v179 = 0u;
    v180 = 0u;
    goto LABEL_53;
  }

  v80 = v79;
  v81 = sub_1000C5194();

  v82 = v159;
  v49 = (v159 + 104);
  v83 = v158;
  v84 = v160;
  *&v165 = *(v159 + 104);
  (v165)(v158, enum case for PhotoPosterUserInfoKey.regions(_:), v160);
  v85 = sub_1000C42B4();
  v87 = v86;
  v174 = *(v82 + 8);
  (v174)(v83, v84);
  v175 = v85;
  v176 = v87;
  sub_1000C5914();
  if (!*(v81 + 16) || (v88 = sub_10009A124(&v177), (v89 & 1) == 0))
  {

    sub_100046CAC(&v177);
    v179 = 0u;
    v180 = 0u;
    goto LABEL_53;
  }

  sub_10001D804(*(v81 + 56) + 32 * v88, &v179);
  sub_100046CAC(&v177);

  if (!*(&v180 + 1))
  {
LABEL_53:
    sub_100018F90(&v179, &qword_1000FC828, &qword_1000CF790);
LABEL_54:
    v178 = 0u;
    v177 = 0u;
    sub_100018F90(&v177, &qword_1000FC828, &qword_1000CF790);
    v18 = 0;
    v158 = 0;
    v178 = 0u;
    v177 = 0u;
    v99 = v173;
    goto LABEL_55;
  }

  sub_10001D1A8(0, &qword_1000FC478, NSDictionary_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_54;
  }

  v90 = v177;
  if (!v177)
  {
    goto LABEL_54;
  }

  v146 = v54;
  v91 = v151;
  v92 = v160;
  v93 = v165;
  (v165)(v151, enum case for PhotoPosterUserInfoKey.facesRegion(_:), v160);
  v94 = v90;
  v95 = sub_1000C42B4();
  v97 = v96;
  (v174)(v91, v92);
  *&v179 = v95;
  *(&v179 + 1) = v97;
  v98 = [v94 __swift_objectForKeyedSubscript:sub_1000C5C44()];
  swift_unknownObjectRelease();

  if (v98)
  {
    sub_1000C58C4();
    swift_unknownObjectRelease();
  }

  else
  {
    v179 = 0u;
    v180 = 0u;
  }

  v178 = v180;
  v177 = v179;
  if (*(&v180 + 1))
  {
    sub_1000124CC(&qword_1000FD880, &qword_1000CEF00);
    if (swift_dynamicCast())
    {
      v18 = v179;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    sub_100018F90(&v177, &qword_1000FC828, &qword_1000CF790);
    v18 = 0;
  }

  v111 = v152;
  v112 = v160;
  v93(v152, enum case for PhotoPosterUserInfoKey.petsRegion(_:), v160);
  v49 = v94;
  v113 = sub_1000C42B4();
  v115 = v114;
  (v174)(v111, v112);
  *&v179 = v113;
  *(&v179 + 1) = v115;
  v116 = [v49 __swift_objectForKeyedSubscript:sub_1000C5C44()];
  swift_unknownObjectRelease();
  v158 = v49;

  if (v116)
  {
    sub_1000C58C4();
    swift_unknownObjectRelease();
  }

  else
  {
    v179 = 0u;
    v180 = 0u;
  }

  v54 = v146;
  v99 = v173;
  v178 = v180;
  v177 = v179;
  if (*(&v180 + 1))
  {
    sub_1000124CC(&qword_1000FD880, &qword_1000CEF00);
    if (swift_dynamicCast())
    {
      v16 = v179;
    }

    else
    {
      v16 = 0;
    }

    if (!v18)
    {
      goto LABEL_87;
    }

    goto LABEL_56;
  }

LABEL_55:
  sub_100018F90(&v177, &qword_1000FC828, &qword_1000CF790);
  v16 = 0;
  if (!v18)
  {
LABEL_87:
    v174 = 0;
    goto LABEL_88;
  }

LABEL_56:
  v49 = (v18 & 0xFFFFFFFFFFFFFF8);
  v41 = v54;
  if (!(v18 >> 62))
  {
    v100 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_58;
  }

LABEL_126:
  v100 = sub_1000C59A4();
LABEL_58:
  v101 = 0;
  v174 = _swiftEmptyArrayStorage;
  while (v100 != v101)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      sub_1000C5954();
      v103 = v101 + 1;
      if (__OFADD__(v101, 1))
      {
        goto LABEL_122;
      }
    }

    else
    {
      if (v101 >= v49[2])
      {
        goto LABEL_123;
      }

      v102 = *&v18[8 * v101 + 32];
      v103 = v101 + 1;
      if (__OFADD__(v101, 1))
      {
        goto LABEL_122;
      }
    }

    sub_1000C5624();
    ++v101;
    if ((v183 & 1) == 0)
    {
      v165 = v181;
      v152 = v182;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v174 = sub_100045308(0, *(v174 + 2) + 1, 1, v174);
      }

      v105 = *(v174 + 2);
      v104 = *(v174 + 3);
      v106 = v105 + 1;
      if (v105 >= v104 >> 1)
      {
        *&v151 = v105 + 1;
        v110 = sub_100045308((v104 > 1), v105 + 1, 1, v174);
        v106 = v151;
        v174 = v110;
      }

      v107 = v174;
      *(v174 + 2) = v106;
      v108 = &v107[32 * v105];
      v109 = v152;
      *(v108 + 2) = v165;
      *(v108 + 3) = v109;
      v101 = v103;
    }
  }

  v54 = v41;
  v41 = v172;
  v99 = v173;
LABEL_88:
  v117 = v150;
  if (v16)
  {
    if (v16 >> 62)
    {
      v118 = sub_1000C59A4();
    }

    else
    {
      v118 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = 0;
    *&v165 = _swiftEmptyArrayStorage;
    while (v118 != v18)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        sub_1000C5954();
        v49 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_124;
        }
      }

      else
      {
        if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_125;
        }

        v119 = *(v16 + 8 * v18 + 32);
        v49 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_124;
        }
      }

      sub_1000C5624();
      ++v18;
      if ((v186 & 1) == 0)
      {
        v152 = v184;
        v151 = v185;
        v120 = v54;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          *&v165 = sub_100045308(0, *(v165 + 16) + 1, 1, v165);
        }

        v122 = *(v165 + 16);
        v121 = *(v165 + 24);
        if (v122 >= v121 >> 1)
        {
          *&v165 = sub_100045308((v121 > 1), v122 + 1, 1, v165);
        }

        v123 = v165;
        *(v165 + 16) = v122 + 1;
        v124 = v123 + 32 * v122;
        v125 = v151;
        *(v124 + 32) = v152;
        *(v124 + 48) = v125;
        v18 = v49;
        v54 = v120;
        v41 = v172;
      }
    }

    v117 = v150;
    v99 = v173;
  }

  else
  {
    *&v165 = 0;
  }

  *&v177 = 0;
  v126 = [v54 loadUserInfoWithError:&v177];
  v127 = v177;
  if (!v126)
  {
    v139 = v177;
    sub_1000C1474();

    swift_willThrow();

    v117 = 0;
    goto LABEL_114;
  }

  v128 = v126;
  v129 = sub_1000C5194();
  v130 = v127;

  if (!v129)
  {
LABEL_114:
    v179 = 0u;
    v180 = 0u;
    goto LABEL_116;
  }

  v150 = v117;
  v131 = v159;
  v132 = v157;
  v133 = v160;
  (*(v159 + 104))(v157, enum case for PhotoPosterUserInfoKey.isForPlayground(_:), v160);
  v134 = sub_1000C42B4();
  v136 = v135;
  (*(v131 + 8))(v132, v133);
  v175 = v134;
  v176 = v136;
  sub_1000C5914();
  if (*(v129 + 16) && (v137 = sub_10009A124(&v177), (v138 & 1) != 0))
  {
    sub_10001D804(*(v129 + 56) + 32 * v137, &v179);
    sub_100046CAC(&v177);

    v117 = v150;
    if (*(&v180 + 1))
    {
      swift_dynamicCast();
      goto LABEL_117;
    }
  }

  else
  {

    sub_100046CAC(&v177);
    v179 = 0u;
    v180 = 0u;
    v117 = v150;
  }

LABEL_116:
  sub_100018F90(&v179, &qword_1000FC828, &qword_1000CF790);
LABEL_117:
  [v99 options];
  [v99 options];
  sub_1000C2544();
  if (v117)
  {

    sub_100018F90(v164, &qword_1000FD878, &qword_1000CEEF8);
    (*(v163 + 8))(v168, v162);
    (*(v167 + 8))(v169, v166);
    v44 = v41[1];
    v45 = v170;
    v46 = v171;
    goto LABEL_5;
  }

  v140 = [v99 identifier];
  v160 = sub_1000C5224();
  v159 = v141;

  v142 = v167;
  (*(v167 + 16))(v153, v169, v166);
  v143 = v163;
  (*(v163 + 16))(v154, v168, v162);
  v144 = v164;
  sub_100018F28(v164, v155, &qword_1000FD878, &qword_1000CEEF8);
  sub_1000C2484();

  sub_100018F90(v144, &qword_1000FD878, &qword_1000CEEF8);
  (*(v143 + 8))(v168, v162);
  (*(v142 + 8))(v169, v166);
  (*(v172 + 8))(v170, v171);
}

void sub_1000829C4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v3 = sub_1000124CC(&qword_1000FC460, &qword_1000C9D30);
  __chkstk_darwin(v3 - 8);
  v90 = &v85 - v4;
  v5 = sub_1000C4D84();
  __chkstk_darwin(v5 - 8);
  v91 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000124CC(&qword_1000FD8A8, &qword_1000CEF18);
  v8 = __chkstk_darwin(v7 - 8);
  v89 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v98 = &v85 - v10;
  v102 = sub_1000C4B54();
  v104 = *(v102 - 8);
  v11 = __chkstk_darwin(v102);
  v97 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v96 = &v85 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v85 - v16;
  __chkstk_darwin(v15);
  v19 = &v85 - v18;
  v95 = sub_1000C4D24();
  v94 = *(v95 - 8);
  v20 = __chkstk_darwin(v95);
  v93 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v99 = &v85 - v22;
  v23 = sub_1000C4594();
  v100 = *(v23 - 8);
  __chkstk_darwin(v23);
  v103 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000C4384();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = 0;
  v29 = [a1 loadUserInfoWithError:&v108];
  v30 = v108;
  if (!v29)
  {
    v42 = v108;
    sub_1000C1474();

    swift_willThrow();
    return;
  }

  v31 = v29;
  v88 = v23;
  v105 = a1;
  v32 = sub_1000C5194();
  v33 = v30;

  (*(v26 + 104))(v28, enum case for AvatarPosterUserInfoKey.dataRepresentation(_:), v25);
  v34 = sub_1000C4374();
  v36 = v35;
  (*(v26 + 8))(v28, v25);
  v106 = v34;
  v107 = v36;
  sub_1000C5914();
  if (!*(v32 + 16) || (v37 = sub_10009A124(&v108), (v38 & 1) == 0))
  {

    sub_100046CAC(&v108);
LABEL_9:
    v108 = 0xD000000000000066;
    v109 = 0x80000001000D7CB0;
    v112[0] = 471;
    v113._countAndFlagsBits = sub_1000C5BE4();
    sub_1000C52E4(v113);

    v114._countAndFlagsBits = 58;
    v114._object = 0xE100000000000000;
    sub_1000C52E4(v114);
    v115._countAndFlagsBits = 0xD000000000000012;
    v115._object = 0x80000001000D7C90;
    sub_1000C52E4(v115);
    sub_1000C4FC4();
    sub_10008B2F4(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    goto LABEL_10;
  }

  sub_10001D804(*(v32 + 56) + 32 * v37, v112);
  sub_100046CAC(&v108);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v39 = v107;
  if (v107 >> 60 == 15)
  {
    goto LABEL_9;
  }

  v40 = v106;
  sub_1000C1464();
  swift_allocObject();
  sub_1000C1454();
  sub_10008B2F4(&qword_1000FD8B0, &type metadata accessor for AvatarPosterConfiguration, &protocol conformance descriptor for AvatarPosterConfiguration);
  v41 = v101;
  sub_1000C1444();
  if (v41)
  {
    sub_100018CBC(v40, v39);

LABEL_10:

    return;
  }

  v86 = v40;
  v87 = v39;

  v43 = sub_1000C4574();
  v44 = v104;
  v45 = v102;
  v101 = *(v104 + 104);
  v101(v19, enum case for MonogramPosterColorDescriptionKey.red(_:), v102);
  v46 = sub_1000C4B44();
  v48 = v47;
  v49 = *(v44 + 8);
  v50 = v45;
  v104 = v44 + 8;
  v51 = v49;
  v49(v19, v50);
  if (*(v43 + 16))
  {
    sub_100099FF8(v46, v48);
  }

  v52 = sub_1000C4574();
  v53 = v102;
  v101(v17, enum case for MonogramPosterColorDescriptionKey.green(_:), v102);
  v54 = sub_1000C4B44();
  v56 = v55;
  v51(v17, v53);
  if (*(v52 + 16))
  {
    sub_100099FF8(v54, v56);
  }

  v57 = sub_1000C4574();
  v58 = v96;
  v59 = v102;
  v101(v96, enum case for MonogramPosterColorDescriptionKey.blue(_:), v102);
  v60 = sub_1000C4B44();
  v62 = v61;
  v51(v58, v59);
  if (*(v57 + 16))
  {
    sub_100099FF8(v60, v62);
  }

  v63 = sub_1000C4574();
  v64 = v97;
  v65 = v102;
  v101(v97, enum case for MonogramPosterColorDescriptionKey.alpha(_:), v102);
  v66 = sub_1000C4B44();
  v68 = v67;
  v51(v64, v65);
  v69 = v99;
  if (*(v63 + 16))
  {
    sub_100099FF8(v66, v68);
  }

  v70 = v98;

  sub_1000C4D04();
  v71 = v103;
  v72 = sub_1000C4554();
  if (v73 >> 60 == 15)
  {
    v108 = 0xD000000000000066;
    v109 = 0x80000001000D7CB0;
    v112[0] = 478;
    v116._countAndFlagsBits = sub_1000C5BE4();
    sub_1000C52E4(v116);

    v117._countAndFlagsBits = 58;
    v117._object = 0xE100000000000000;
    sub_1000C52E4(v117);
    v118._countAndFlagsBits = 0x6D49726174617661;
    v118._object = 0xEF61746144656761;
    sub_1000C52E4(v118);
    sub_1000C4FC4();
    sub_10008B2F4(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    sub_100018CBC(v86, v87);

    (*(v94 + 8))(v69, v95);
    (*(v100 + 8))(v71, v88);
  }

  else
  {
    v74 = v72;
    v75 = v73;
    v76 = sub_1000C4564();
    if (v77 >> 60 == 15)
    {
      v78 = 1;
      v79 = v94;
    }

    else
    {
      v80 = v76;
      v81 = v77;
      sub_100018C68(v76, v77);
      sub_10008739C(v80, v81, v70);
      v79 = v94;
      sub_100018CBC(v80, v81);
      v78 = 0;
    }

    v82 = sub_1000C2264();
    (*(*(v82 - 8) + 56))(v70, v78, 1, v82);
    (*(v79 + 16))(v93, v69, v95);
    v110 = &type metadata for Data;
    v111 = &protocol witness table for Data;
    v108 = v74;
    v109 = v75;
    v83 = sub_1000C4D54();
    (*(*(v83 - 8) + 56))(v90, 1, 1, v83);
    sub_100018C68(v74, v75);
    sub_1000C4D64();
    sub_100018F28(v70, v89, &qword_1000FD8A8, &qword_1000CEF18);
    v84 = v103;
    sub_1000C4584();
    sub_1000C2334();
    sub_100018CBC(v86, v87);

    sub_100018CBC(v74, v75);
    sub_100018F90(v70, &qword_1000FD8A8, &qword_1000CEF18);
    (*(v79 + 8))(v69, v95);
    (*(v100 + 8))(v84, v88);
  }
}

void sub_1000838D4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v147 = sub_1000C4B54();
  v152 = *(v147 - 8);
  v4 = __chkstk_darwin(v147);
  v133 = v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v132 = v122 - v7;
  v8 = __chkstk_darwin(v6);
  v131 = v122 - v9;
  v10 = __chkstk_darwin(v8);
  v130 = v122 - v11;
  v12 = __chkstk_darwin(v10);
  v141 = v122 - v13;
  v14 = __chkstk_darwin(v12);
  v140 = v122 - v15;
  v16 = __chkstk_darwin(v14);
  v139 = v122 - v17;
  __chkstk_darwin(v16);
  v138 = v122 - v18;
  v136 = sub_1000C4D24();
  v134 = *(v136 - 8);
  v19 = __chkstk_darwin(v136);
  v129 = v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v128 = v122 - v22;
  v23 = __chkstk_darwin(v21);
  v135 = v122 - v24;
  __chkstk_darwin(v23);
  v142 = v122 - v25;
  v26 = sub_1000124CC(&qword_1000FD8C8, &qword_1000CEF30);
  __chkstk_darwin(v26 - 8);
  v143 = v122 - v27;
  v145 = sub_1000C48D4();
  v144 = *(v145 - 1);
  v28 = __chkstk_darwin(v145);
  v30 = (v122 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v28);
  v137 = v122 - v31;
  v32 = sub_1000124CC(&qword_1000FD8D0, &qword_1000CEF38);
  v33 = __chkstk_darwin(v32 - 8);
  v127 = v122 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v37 = v122 - v36;
  __chkstk_darwin(v35);
  v148 = v122 - v38;
  v151 = sub_1000C4934();
  v146 = *(v151 - 8);
  __chkstk_darwin(v151);
  v150 = v122 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1000C4624();
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v43 = v122 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156[0] = 0;
  v44 = [a1 loadUserInfoWithError:v156];
  v45 = v156[0];
  if (!v44)
  {
    v57 = v156[0];
    sub_1000C1474();

    swift_willThrow();
    return;
  }

  v46 = v44;
  v126 = a2;
  v153 = a1;
  v47 = sub_1000C5194();
  v48 = v45;

  (*(v41 + 104))(v43, enum case for MonogramPosterUserInfoKey.dataRepresentation(_:), v40);
  v49 = sub_1000C4614();
  v51 = v50;
  (*(v41 + 8))(v43, v40);
  v154 = v49;
  v155 = v51;
  sub_1000C5914();
  if (!*(v47 + 16) || (v52 = sub_10009A124(v156), (v53 & 1) == 0))
  {

    sub_100046CAC(v156);
LABEL_9:
    v156[0] = 0xD000000000000066;
    v156[1] = 0x80000001000D7CB0;
    v157 = 543;
    v158._countAndFlagsBits = sub_1000C5BE4();
    sub_1000C52E4(v158);

    v159._countAndFlagsBits = 58;
    v159._object = 0xE100000000000000;
    sub_1000C52E4(v159);
    v160._object = 0x80000001000D7C90;
    v160._countAndFlagsBits = 0xD000000000000012;
    sub_1000C52E4(v160);
    sub_1000C4FC4();
    sub_10008B2F4(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    goto LABEL_10;
  }

  sub_10001D804(*(v47 + 56) + 32 * v52, &v157);
  sub_100046CAC(v156);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v54 = v155;
  if (v155 >> 60 == 15)
  {
    goto LABEL_9;
  }

  v55 = v154;
  sub_1000C1464();
  swift_allocObject();
  sub_1000C1454();
  sub_10008B2F4(&qword_1000FD8D8, &type metadata accessor for MonogramPosterConfiguration, &protocol conformance descriptor for MonogramPosterConfiguration);
  v56 = v149;
  sub_1000C1444();
  if (v56)
  {
    sub_100018CBC(v55, v54);

LABEL_10:

    return;
  }

  v125 = v55;
  v124 = v54;

  v58 = sub_1000C32C4();
  v59 = *(v58 - 8);
  v60 = *(v59 + 56);
  v61 = v148;
  v149 = v58;
  v123 = v60;
  v122[1] = v59 + 56;
  (v60)(v148, 1, 1);
  v62 = v143;
  sub_1000C48E4();
  v63 = v144;
  v64 = v145;
  if (v144[6](v62, 1, v145) == 1)
  {
    sub_100018F90(v62, &qword_1000FD8C8, &qword_1000CEF30);
  }

  else
  {
    v65 = v62;
    v66 = v137;
    v63[4](v137, v65, v64);
    v63[2](v30, v66, v64);
    sub_1000878E8(v30, v37);
    (v63[1])(v66, v64);
    sub_100018F90(v61, &qword_1000FD8D0, &qword_1000CEF38);
    v123(v37, 0, 1, v149);
    sub_10001D860(v37, v61, &qword_1000FD8D0, &qword_1000CEF38);
  }

  v67 = sub_1000C4914();
  v68 = sub_1000C4904();
  v69 = v152;
  v70 = *(v152 + 104);
  v71 = v138;
  LODWORD(v143) = enum case for MonogramPosterColorDescriptionKey.red(_:);
  v72 = v147;
  v149 = v152 + 104;
  v145 = v70;
  v70(v138);
  v73 = sub_1000C4B44();
  v75 = v74;
  v76 = *(v69 + 8);
  v152 = v69 + 8;
  v144 = v76;
  (v76)(v71, v72);
  if (*(v67 + 16))
  {
    sub_100099FF8(v73, v75);
  }

  v77 = v139;
  LODWORD(v138) = enum case for MonogramPosterColorDescriptionKey.green(_:);
  v145(v139);
  v78 = sub_1000C4B44();
  v80 = v79;
  (v144)(v77, v72);
  if (*(v67 + 16))
  {
    sub_100099FF8(v78, v80);
  }

  v81 = v68;
  v82 = enum case for MonogramPosterColorDescriptionKey.blue(_:);
  v83 = v140;
  (v145)(v140, enum case for MonogramPosterColorDescriptionKey.blue(_:), v72);
  v84 = sub_1000C4B44();
  v86 = v85;
  (v144)(v83, v72);
  if (*(v67 + 16))
  {
    sub_100099FF8(v84, v86);
  }

  v87 = enum case for MonogramPosterColorDescriptionKey.alpha(_:);
  v88 = v141;
  (v145)(v141, enum case for MonogramPosterColorDescriptionKey.alpha(_:), v72);
  v89 = sub_1000C4B44();
  v91 = v90;
  (v144)(v88, v72);
  if (*(v67 + 16))
  {
    sub_100099FF8(v89, v91);
  }

  v92 = v142;
  sub_1000C4D04();
  v93 = v130;
  v94 = v147;
  (v145)(v130, v143, v147);
  v95 = sub_1000C4B44();
  v97 = v96;
  v98 = v93;
  v99 = v81;
  (v144)(v98, v94);
  if (*(v81 + 16))
  {
    sub_100099FF8(v95, v97);
  }

  v100 = v131;
  v101 = v147;
  (v145)(v131, v138, v147);
  v102 = sub_1000C4B44();
  v104 = v103;
  (v144)(v100, v101);
  if (*(v99 + 16))
  {
    sub_100099FF8(v102, v104);
  }

  v105 = v132;
  v106 = v147;
  (v145)(v132, v82, v147);
  v107 = sub_1000C4B44();
  v109 = v108;
  (v144)(v105, v106);
  if (*(v99 + 16))
  {
    sub_100099FF8(v107, v109);
  }

  v110 = v133;
  v111 = v147;
  (v145)(v133, v87, v147);
  v112 = sub_1000C4B44();
  v114 = v113;
  (v144)(v110, v111);
  if (*(v99 + 16))
  {
    sub_100099FF8(v112, v114);
  }

  v115 = v134;
  v116 = v136;

  v117 = v135;
  sub_1000C4D04();
  sub_100018F28(v148, v127, &qword_1000FD8D0, &qword_1000CEF38);
  v118 = *(v115 + 16);
  v118(v128, v92, v116);
  v118(v129, v117, v116);
  v119 = v150;
  sub_1000C4924();
  sub_1000C48F4();
  sub_1000C32D4();
  sub_100018CBC(v125, v124);

  v120 = *(v115 + 8);
  v121 = v136;
  v120(v135, v136);
  v120(v92, v121);
  sub_100018F90(v148, &qword_1000FD8D0, &qword_1000CEF38);
  (*(v146 + 8))(v119, v151);
}

void sub_100084C24(void *a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v3 = sub_1000124CC(&qword_1000FD900, &qword_1000CEF60);
  v4 = __chkstk_darwin(v3 - 8);
  v101 = v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v93 - v6;
  v103 = sub_1000C3164();
  v102 = *(v103 - 8);
  v8 = __chkstk_darwin(v103);
  v98 = v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v99 = v93 - v10;
  v11 = sub_1000C4B24();
  v112 = *(v11 - 8);
  v113 = v11;
  v12 = __chkstk_darwin(v11);
  v108 = v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v107 = v93 - v15;
  v16 = __chkstk_darwin(v14);
  v106 = v93 - v17;
  __chkstk_darwin(v16);
  v105 = v93 - v18;
  v19 = sub_1000C4D24();
  v104 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v97 = v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v111 = v93 - v22;
  v23 = sub_1000C45F4();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = v93 - v28;
  v110 = sub_1000C4704();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v115 = v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119[0] = 0;
  v31 = [a1 loadUserInfoWithError:v119];
  v32 = v119[0];
  if (v31)
  {
    v33 = v31;
    v95 = v7;
    v94 = v19;
    v114 = a1;
    v34 = sub_1000C5194();
    v35 = v32;

    v96 = *(v24 + 104);
    v96(v29, enum case for GradientPosterUserInfoKey.baseColor(_:), v23);
    v36 = sub_1000C45E4();
    v38 = v37;
    v39 = *(v24 + 8);
    v39(v29, v23);
    v120 = v36;
    v121 = v38;
    sub_1000C5914();
    if (*(v34 + 16) && (v40 = sub_10009A124(v119), (v41 & 1) != 0))
    {
      sub_10001D804(*(v34 + 56) + 32 * v40, &v120);
      sub_100046CAC(v119);
      sub_1000124CC(&qword_1000FD908, &qword_1000CEF68);
      if (swift_dynamicCast())
      {
        v42 = v117;
      }

      else
      {
        v42 = 0;
      }
    }

    else
    {
      sub_100046CAC(v119);
      v42 = 0;
    }

    v43 = v116;
    v44 = sub_10008B184(0x6F6C6F4365736162, 0xE900000000000072, 0xD000000000000065, 0x80000001000D7BD0, 703, v42);
    if (v43 || ((v116 = 0, v93[1] = v44, , , v96(v27, enum case for GradientPosterUserInfoKey.variant(_:), v23), v46 = sub_1000C45E4(), v48 = v47, v39(v27, v23), v120 = v46, v121 = v48, sub_1000C5914(), !*(v34 + 16)) || (v49 = sub_10009A124(v119), (v50 & 1) == 0) ? (, sub_100046CAC(v119), v52 = 0, v53 = 0) : ((sub_10001D804(*(v34 + 56) + 32 * v49, &v120), sub_100046CAC(v119), , (v51 = swift_dynamicCast()) == 0) ? (v52 = 0) : (v52 = v117), !v51 ? (v53 = 0) : (v53 = v118)), v54 = v116, v55 = v112, sub_10008B33C(0x746E6169726176, 0xE700000000000000, 0xD000000000000065, 0x80000001000D7BD0, 704, v52, v53), v54))
    {
    }

    else
    {
      v116 = 0;

      sub_1000C46E4();
      v56 = sub_1000C46F4();
      v57 = *(v55 + 104);
      v58 = v105;
      v59 = v113;
      v57(v105, enum case for GradientPosterColorDescriptionKey.red(_:), v113);
      v60 = sub_1000C4B14();
      v62 = v61;
      v63 = *(v55 + 8);
      v63(v58, v59);
      if (*(v56 + 16))
      {
        sub_100099FF8(v60, v62);
      }

      v64 = sub_1000C46F4();
      v65 = v106;
      v66 = v113;
      v57(v106, enum case for GradientPosterColorDescriptionKey.green(_:), v113);
      v67 = sub_1000C4B14();
      v69 = v68;
      v63(v65, v66);
      if (*(v64 + 16))
      {
        sub_100099FF8(v67, v69);
      }

      v70 = sub_1000C46F4();
      v71 = v107;
      v72 = v113;
      v57(v107, enum case for GradientPosterColorDescriptionKey.blue(_:), v113);
      v73 = sub_1000C4B14();
      v75 = v74;
      v63(v71, v72);
      if (*(v70 + 16))
      {
        sub_100099FF8(v73, v75);
      }

      v76 = sub_1000C46F4();
      v77 = v108;
      v78 = v113;
      v57(v108, enum case for GradientPosterColorDescriptionKey.alpha(_:), v113);
      v79 = sub_1000C4B14();
      v81 = v80;
      v63(v77, v78);
      if (*(v76 + 16))
      {
        sub_100099FF8(v79, v81);
      }

      v82 = v114;
      v83 = v95;
      v84 = v111;

      v85 = v116;
      sub_1000C4D04();
      v86 = v115;
      if (v85)
      {
        (*(v109 + 8))(v115, v110);
      }

      else
      {
        sub_1000C46D4();
        sub_1000C3154();
        v87 = v101;
        sub_100018F28(v83, v101, &qword_1000FD900, &qword_1000CEF60);
        v88 = v102;
        v89 = v103;
        if ((*(v102 + 48))(v87, 1, v103) == 1)
        {
          sub_100018F90(v87, &qword_1000FD900, &qword_1000CEF60);
          v119[0] = 0xD000000000000066;
          v119[1] = 0x80000001000D7CB0;
          v120 = 715;
          v122._countAndFlagsBits = sub_1000C5BE4();
          sub_1000C52E4(v122);

          v123._countAndFlagsBits = 58;
          v123._object = 0xE100000000000000;
          sub_1000C52E4(v123);
          v124._countAndFlagsBits = 0x746E656964617247;
          v124._object = 0xEF746E6169726156;
          sub_1000C52E4(v124);
          sub_1000C4FC4();
          sub_10008B2F4(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
          swift_allocError();
          sub_1000C4FB4();
          swift_willThrow();

          sub_100018F90(v83, &qword_1000FD900, &qword_1000CEF60);
          (*(v104 + 8))(v84, v94);
          (*(v109 + 8))(v86, v110);
        }

        else
        {
          sub_100018F90(v83, &qword_1000FD900, &qword_1000CEF60);
          v90 = v99;
          (*(v88 + 32))(v99, v87, v89);
          v91 = v104;
          v92 = v94;
          (*(v104 + 16))(v97, v84, v94);
          (*(v88 + 16))(v98, v90, v89);
          sub_1000C3174();

          (*(v88 + 8))(v90, v89);
          (*(v91 + 8))(v84, v92);
          (*(v109 + 8))(v115, v110);
        }
      }
    }
  }

  else
  {
    v45 = v119[0];
    sub_1000C1474();

    swift_willThrow();
  }
}

void sub_100085AA4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000C4074();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = 0;
  v9 = [a1 loadUserInfoWithError:&v59];
  v10 = v59;
  if (!v9)
  {
    v24 = v59;
    sub_1000C1474();

LABEL_24:
    swift_willThrow();
LABEL_25:

    return;
  }

  v56 = a2;
  v11 = v9;
  v12 = sub_1000C5194();
  v13 = v10;

  (*(v6 + 104))(v8, enum case for GradientVFXPosterKey.custom(_:), v5);
  v14 = sub_1000C4064();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v61 = v14;
  v62 = v16;
  sub_1000C5914();
  if (*(v12 + 16) && (v17 = sub_10009A124(&v59), (v18 & 1) != 0))
  {
    sub_10001D804(*(v12 + 56) + 32 * v17, &v61);
    sub_100046CAC(&v59);

    v19 = swift_dynamicCast();
    if (v19)
    {
      v20 = v57;
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v21 = v58;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {

    sub_100046CAC(&v59);
    v20 = 0;
    v21 = 0;
  }

  v22 = sub_10008B33C(0x727453726F6C6F63, 0xEB00000000676E69, 0xD000000000000065, 0x80000001000D7BD0, 724, v20, v21);
  if (v2)
  {

    return;
  }

  v25 = v22;
  v26 = v23;

  v59 = v25;
  v60 = v26;
  v61 = 12079;
  v62 = 0xE200000000000000;
  sub_10008B4A8();
  sub_10008B4FC();
  v27 = sub_1000C51C4();

  v29 = v27[2];
  if (v29 != 2)
  {

    v59 = 0;
    v60 = 0xE000000000000000;
    sub_1000C5944(37);

    v59 = 0xD000000000000023;
    v60 = 0x80000001000D7DB0;
    v61 = v29;
    v63._countAndFlagsBits = sub_1000C5BE4();
    sub_1000C52E4(v63);

    sub_1000C4FC4();
    sub_10008B2F4(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
LABEL_23:
    sub_1000C4FB4();
    goto LABEL_24;
  }

  v55 = "DKDrawingStrokePoints";
  v31 = v27[4];
  v30 = v27[5];
  v32 = v27[6];
  v59 = 47;
  v60 = 0xE100000000000000;
  __chkstk_darwin(v28);
  *&v54[-4] = &v59;

  v34 = sub_10008A468(0x7FFFFFFFFFFFFFFFLL, 1, sub_10008B5C4, &v54[-8], v31, v30, v32, v33);
  if (v27[2] >= 2uLL)
  {
    v35 = v34;
    v36 = v27[8];
    v37 = v27[9];
    v38 = v27[10];

    v59 = 47;
    v60 = 0xE100000000000000;
    __chkstk_darwin(v39);
    *&v54[-4] = &v59;
    v40 = sub_10008A468(0x7FFFFFFFFFFFFFFFLL, 1, sub_10008B5C4, &v54[-8], v36, v37, v38, v54);
    v27 = v40;
    v41 = *(v35 + 2);
    if (v41 == 4 && *(v40 + 2) == 4)
    {

      v42 = sub_1000C5474();
      v43 = v55;
      sub_10007BA90(828663154, 0xE400000000000000, 0xD000000000000065, v55 | 0x8000000000000000, 738, v42 | ((HIDWORD(v42) & 1) << 32));
      if (*(v35 + 2) < 2uLL)
      {
        __break(1u);
      }

      else
      {

        v44 = sub_1000C5474();
        sub_10007BA90(0x316E65657267, 0xE600000000000000, 0xD000000000000065, v43 | 0x8000000000000000, 739, v44 | ((HIDWORD(v44) & 1) << 32));
        if (*(v35 + 2) >= 3uLL)
        {

          v45 = sub_1000C5474();
          sub_10007BA90(0x3165756C62, 0xE500000000000000, 0xD000000000000065, v43 | 0x8000000000000000, 740, v45 | ((HIDWORD(v45) & 1) << 32));
          if (*(v35 + 2) < 4uLL)
          {
            __break(1u);
          }

          else
          {

            v47 = sub_1000C5474();
            sub_10007BA90(0x316168706C61, 0xE600000000000000, 0xD000000000000065, v43 | 0x8000000000000000, 741, v47 | ((HIDWORD(v47) & 1) << 32));
            if (v27[2])
            {

              v48 = sub_1000C5474();
              sub_10007BA90(845440370, 0xE400000000000000, 0xD000000000000065, v43 | 0x8000000000000000, 744, v48 | ((HIDWORD(v48) & 1) << 32));
              v54[1] = v49;
              if (v27[2] >= 2uLL)
              {

                v50 = sub_1000C5474();
                sub_10007BA90(0x326E65657267, 0xE600000000000000, 0xD000000000000065, v43 | 0x8000000000000000, 745, v50 | ((HIDWORD(v50) & 1) << 32));
                v54[0] = v51;
                if (v27[2] >= 3uLL)
                {

                  v52 = sub_1000C5474();
                  sub_10007BA90(0x3265756C62, 0xE500000000000000, 0xD000000000000065, v43 | 0x8000000000000000, 746, v52 | ((HIDWORD(v52) & 1) << 32));
                  goto LABEL_32;
                }

LABEL_39:
                __break(1u);
                goto LABEL_40;
              }

LABEL_38:
              __break(1u);
              goto LABEL_39;
            }
          }

          __break(1u);
          goto LABEL_38;
        }
      }

      __break(1u);
    }

    v59 = 0;
    v60 = 0xE000000000000000;
    sub_1000C5944(60);
    v64._countAndFlagsBits = 0xD00000000000002FLL;
    v64._object = 0x80000001000D7DE0;
    sub_1000C52E4(v64);
    v61 = v41;
    v65._countAndFlagsBits = sub_1000C5BE4();
    sub_1000C52E4(v65);

    v66._countAndFlagsBits = 0x32726F6C6F63202CLL;
    v66._object = 0xE90000000000003ALL;
    sub_1000C52E4(v66);
    v46 = v27[2];

    v61 = v46;
    v67._countAndFlagsBits = sub_1000C5BE4();
    sub_1000C52E4(v67);

    sub_1000C4FC4();
    sub_10008B2F4(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    goto LABEL_23;
  }

  __break(1u);
LABEL_32:
  if (v27[2] >= 4uLL)
  {

    v53 = sub_1000C5474();
    sub_10007BA90(0x326168706C61, 0xE600000000000000, 0xD000000000000065, v55 | 0x8000000000000000, 747, v53 | ((HIDWORD(v53) & 1) << 32));
    sub_1000C3BF4();
    goto LABEL_25;
  }

LABEL_40:
  __break(1u);
}

void sub_100086594(void *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = sub_1000124CC(&qword_1000FD920, &qword_1000CEF70);
  v4 = __chkstk_darwin(v3 - 8);
  v91 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v78 - v6;
  v8 = sub_1000C2814();
  v92 = *(v8 - 8);
  v93 = v8;
  v9 = __chkstk_darwin(v8);
  v87 = v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v88 = v78 - v11;
  v12 = sub_1000124CC(&qword_1000FC608, qword_1000CA058);
  v13 = __chkstk_darwin(v12 - 8);
  v86 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v85 = v78 - v16;
  __chkstk_darwin(v15);
  v18 = v78 - v17;
  v19 = sub_1000C44B4();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = v78 - v24;
  v97 = 0;
  v26 = [a1 loadUserInfoWithError:&v97];
  v27 = v97;
  if (!v26)
  {
    v43 = v97;
    sub_1000C1474();

    swift_willThrow();
    return;
  }

  v28 = v26;
  v83 = v7;
  v90 = v18;
  v94 = a1;
  v29 = sub_1000C5194();
  v30 = v27;

  v84 = *(v20 + 104);
  v84(v25, enum case for DynamicPosterUserInfoKey.identifier(_:), v19);
  v31 = sub_1000C44A4();
  v33 = v32;
  v34 = *(v20 + 8);
  v34(v25, v19);
  *&v99[0] = v31;
  *(&v99[0] + 1) = v33;
  sub_1000C5914();
  if (*(v29 + 16) && (v35 = sub_10009A124(&v97), (v36 & 1) != 0))
  {
    sub_10001D804(*(v29 + 56) + 32 * v35, v99);
    sub_100046CAC(&v97);
    v37 = swift_dynamicCast();
    if (v37)
    {
      v38 = *&v96[0];
    }

    else
    {
      v38 = 0;
    }

    if (v37)
    {
      v39 = *(&v96[0] + 1);
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    sub_100046CAC(&v97);
    v38 = 0;
    v39 = 0;
  }

  v40 = v95;
  v41 = sub_10008B33C(0x696669746E656469, 0xEA00000000007265, 0xD000000000000065, 0x80000001000D7BD0, 757, v38, v39);
  if (v40)
  {

    return;
  }

  v81 = "DKDrawingStrokePoints";
  v82 = v41;
  v95 = v42;

  v44 = sub_1000C4D24();
  v45 = *(v44 - 8);
  v46 = *(v45 + 56);
  v80 = v44;
  v79 = v46;
  v78[1] = v45 + 56;
  (v46)(v90, 1, 1);
  v84(v23, enum case for DynamicPosterUserInfoKey.customColor(_:), v19);
  v47 = sub_1000C44A4();
  v49 = v48;
  v34(v23, v19);
  *&v96[0] = v47;
  *(&v96[0] + 1) = v49;
  sub_1000C5914();
  if (!*(v29 + 16) || (v50 = sub_10009A124(&v97), (v51 & 1) == 0))
  {

    sub_100046CAC(&v97);
LABEL_23:
    v55 = v83;
    v57 = v91;
    v56 = v92;
    sub_1000C2804();
    sub_100018F28(v55, v57, &qword_1000FD920, &qword_1000CEF70);
    v58 = v93;
    if ((*(v56 + 48))(v57, 1, v93) != 1)
    {
      sub_100018F90(v55, &qword_1000FD920, &qword_1000CEF70);
      v59 = v88;
      (*(v56 + 32))(v88, v57, v58);
      (*(v56 + 16))(v87, v59, v58);
      v60 = v90;
      sub_100018F28(v90, v86, &qword_1000FC608, qword_1000CA058);
      sub_1000C2824();

      (*(v56 + 8))(v59, v58);
      v61 = v60;
LABEL_33:
      sub_100018F90(v61, &qword_1000FC608, qword_1000CA058);
      return;
    }

    sub_100018F90(v57, &qword_1000FD920, &qword_1000CEF70);
    v97 = 0xD000000000000066;
    v98 = 0x80000001000D7CB0;
    *&v99[0] = 776;
    v100._countAndFlagsBits = sub_1000C5BE4();
    sub_1000C52E4(v100);

    v101._countAndFlagsBits = 58;
    v101._object = 0xE100000000000000;
    sub_1000C52E4(v101);
    v102._countAndFlagsBits = 0xD00000000000001BLL;
    v102._object = 0x80000001000D7E10;
    sub_1000C52E4(v102);
    sub_1000C4FC4();
    sub_10008B2F4(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();

    sub_100018F90(v55, &qword_1000FD920, &qword_1000CEF70);
LABEL_32:
    v61 = v90;
    goto LABEL_33;
  }

  sub_10001D804(*(v29 + 56) + 32 * v50, v96);
  sub_100046CAC(&v97);

  sub_10001D8C8(v96, v99);
  sub_10001D804(v99, &v97);
  v52 = swift_dynamicCast();
  if (v52)
  {
    v53 = *&v96[0];
  }

  else
  {
    v53 = 0;
  }

  if (v52)
  {
    v54 = *(&v96[0] + 1);
  }

  else
  {
    v54 = 0;
  }

  v62 = sub_10008B33C(0x6F436D6F74737563, 0xEB00000000726F6CLL, 0xD000000000000065, v81 | 0x8000000000000000, 761, v53, v54);
  v64 = v63;

  v97 = 47;
  v98 = 0xE100000000000000;
  __chkstk_darwin(v65);
  v78[-2] = &v97;
  v66 = sub_10008A870(0x7FFFFFFFFFFFFFFFLL, 1, sub_10008B550, &v78[-4], v62, v64, v78);
  v67 = v66[2];
  if (v67 != 4)
  {

    v97 = 0;
    v98 = 0xE000000000000000;
    sub_1000C5944(48);

    v97 = 0xD00000000000002ELL;
    v98 = 0x80000001000D7E60;
    *&v96[0] = v67;
    v103._countAndFlagsBits = sub_1000C5BE4();
    sub_1000C52E4(v103);

    sub_1000C4FC4();
    sub_10008B2F4(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();

    sub_100015F68(v99);
    goto LABEL_32;
  }

  v68 = sub_1000C5454();
  sub_10007BBFC(6579570, 0xE300000000000000, 0xD000000000000065, v81 | 0x8000000000000000, 769, v68, v69 & 1);
  v70 = v90;
  if (v66[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_36;
  }

  v71 = sub_1000C5454();
  sub_10007BBFC(0x6E65657267, 0xE500000000000000, 0xD000000000000065, v81 | 0x8000000000000000, 770, v71, v72 & 1);
  if (v66[2] < 3uLL)
  {
LABEL_36:
    __break(1u);
  }

  v73 = sub_1000C5454();
  sub_10007BBFC(1702194274, 0xE400000000000000, 0xD000000000000065, v81 | 0x8000000000000000, 771, v73, v74 & 1);
  if (v66[2] >= 4uLL)
  {

    v75 = sub_1000C5454();
    sub_10007BBFC(0x6168706C61, 0xE500000000000000, 0xD000000000000065, v81 | 0x8000000000000000, 772, v75, v76 & 1);
    v77 = v85;
    sub_1000C4D04();
    sub_100015F68(v99);
    sub_100018F90(v70, &qword_1000FC608, qword_1000CA058);
    v79(v77, 0, 1, v80);
    sub_10001D860(v77, v70, &qword_1000FC608, qword_1000CA058);
    goto LABEL_23;
  }

  __break(1u);
}

uint64_t sub_10008739C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[1] = a3;
  v5 = sub_1000C3524();
  v19 = *(v5 - 8);
  v20 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (v18 - v9);
  blastdoor_AVTAvatarRecordSerializerGetClass();
  swift_getObjCClassMetadata();
  blastdoor_AVTAvatarRecordRenderingGetClass();
  swift_getObjCClassMetadata();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  isa = sub_1000C1544().super.isa;
  v13 = [ObjCClassFromMetadata avatarRecordFromData:isa];

  v14 = [v13 identifier];
  sub_1000C5224();

  v15 = [swift_getObjCClassFromMetadata() avatarDescriptorForRecord:v13];
  v16 = v21;
  sub_1000875D4(v15, v10);
  if (v16)
  {

    swift_unknownObjectRelease();

    return sub_100018CD0(a1, a2);
  }

  else
  {
    (*(v19 + 16))(v8, v10, v20);
    sub_1000C2254();
    (*(v19 + 8))(v10, v20);

    sub_100018CD0(a1, a2);
    return swift_unknownObjectRelease();
  }
}

void sub_1000875D4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000C3BE4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v25 = a2;
    v11 = swift_allocBox();
    v24 = v12;
    v13 = [v10 name];
    sub_1000C5224();

    sub_1000C3BD4();
    if (v2)
    {
LABEL_3:
      swift_deallocBox();
      return;
    }

    (*(v6 + 32))(v24, v8, v5);
    v18 = v25;
    *v25 = v11;
    v19 = enum case for AvatarDescriptor.animoji(_:);
    v20 = sub_1000C3524();
    (*(*(v20 - 8) + 104))(v18, v19, v20);
  }

  else
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      sub_1000C3B24();
      v16 = swift_allocBox();
      sub_10007C820(v15, v17);
      if (v2)
      {
        goto LABEL_3;
      }

      *a2 = v16;
      v21 = enum case for AvatarDescriptor.memoji(_:);
      v22 = sub_1000C3524();
      (*(*(v22 - 8) + 104))(a2, v21, v22);
    }

    else
    {
      sub_1000C4FC4();
      sub_10008B2F4(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
    }
  }
}

uint64_t sub_1000878E8@<X0>(void (*a1)(char *, void, uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v3 = sub_1000C4834();
  v110 = *(v3 - 8);
  v111 = v3;
  __chkstk_darwin(v3);
  v112 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000C3264();
  v6 = *(v5 - 8);
  v108 = v5;
  v109 = v6;
  __chkstk_darwin(v5);
  v113 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1000C4894();
  v98 = *(v99 - 8);
  v8 = __chkstk_darwin(v99);
  v96 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v94 = &v85 - v11;
  v12 = __chkstk_darwin(v10);
  v93 = &v85 - v13;
  __chkstk_darwin(v12);
  v92 = &v85 - v14;
  v15 = sub_1000C4D24();
  __chkstk_darwin(v15 - 8);
  v95 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000124CC(&qword_1000FD8E0, &qword_1000CEF40);
  __chkstk_darwin(v17 - 8);
  v100 = &v85 - v18;
  v101 = sub_1000C4754();
  v106 = *(v101 - 8);
  __chkstk_darwin(v101);
  v97 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000124CC(&qword_1000FD8E8, &qword_1000CEF48);
  __chkstk_darwin(v20 - 8);
  v22 = &v85 - v21;
  v23 = sub_1000C47A4();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000124CC(&qword_1000FD8F0, &qword_1000CEF50);
  v28 = __chkstk_darwin(v27 - 8);
  v91 = &v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v88 = &v85 - v31;
  __chkstk_darwin(v30);
  v33 = &v85 - v32;
  v34 = sub_1000124CC(&qword_1000FD8F8, &qword_1000CEF58);
  v35 = __chkstk_darwin(v34 - 8);
  v90 = &v85 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v39 = &v85 - v38;
  __chkstk_darwin(v37);
  v41 = &v85 - v40;
  v42 = sub_1000C32A4();
  v43 = *(v42 - 8);
  v44 = *(v43 + 56);
  v105 = v41;
  v102 = v44;
  v89 = v43 + 56;
  v44(v41, 1, 1, v42);
  v45 = sub_1000C3284();
  v46 = *(v45 - 8);
  v47 = *(v46 + 56);
  v104 = v33;
  v87 = v45;
  v86 = v47;
  v85 = v46 + 56;
  (v47)(v33, 1, 1);
  sub_1000C4844();
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_100018F90(v22, &qword_1000FD8E8, &qword_1000CEF48);
  }

  else
  {
    (*(v24 + 32))(v26, v22, v23);
    sub_1000C4784();
    sub_1000C4794();
    sub_1000C4774();
    v48 = v107;
    sub_1000C3294();
    if (v48)
    {
      v49 = sub_1000C48D4();
      (*(*(v49 - 8) + 8))(a1, v49);
      (*(v24 + 8))(v26, v23);
LABEL_20:
      sub_100018F90(v104, &qword_1000FD8F0, &qword_1000CEF50);
      v83 = v105;
      return sub_100018F90(v83, &qword_1000FD8F8, &qword_1000CEF58);
    }

    v107 = 0;
    (*(v24 + 8))(v26, v23);
    v50 = v105;
    sub_100018F90(v105, &qword_1000FD8F8, &qword_1000CEF58);
    v102(v39, 0, 1, v42);
    sub_10001D860(v39, v50, &qword_1000FD8F8, &qword_1000CEF58);
  }

  v51 = v100;
  v102 = a1;
  sub_1000C4764();
  v52 = v106;
  v53 = v101;
  v54 = (*(v106 + 48))(v51, 1, v101);
  v56 = v111;
  v55 = v112;
  if (v54 == 1)
  {
    sub_100018F90(v51, &qword_1000FD8E0, &qword_1000CEF40);
    v57 = v107;
    goto LABEL_8;
  }

  v68 = v97;
  (*(v52 + 32))(v97, v51, v53);
  sub_1000C4744();
  v69 = v92;
  sub_1000C4724();
  sub_1000C4854();
  v70 = v52;
  v71 = *(v98 + 8);
  v72 = v99;
  v71(v69, v99);
  v73 = v93;
  sub_1000C4724();
  sub_1000C4874();
  v71(v73, v72);
  v74 = v94;
  sub_1000C4724();
  sub_1000C4864();
  v71(v74, v72);
  v75 = v96;
  sub_1000C4724();
  sub_1000C4884();
  v71(v75, v72);
  v76 = v107;
  sub_1000C4D04();
  v57 = v76;
  if (v76)
  {
    v77 = sub_1000C48D4();
    (*(*(v77 - 8) + 8))(v102, v77);
    (*(v70 + 8))(v68, v53);
    goto LABEL_20;
  }

  sub_1000C4714();
  sub_1000C4734();
  v78 = v88;
  sub_1000C3274();
  (*(v106 + 8))(v68, v53);
  v84 = v104;
  sub_100018F90(v104, &qword_1000FD8F0, &qword_1000CEF50);
  v86(v78, 0, 1, v87);
  v55 = v112;
  sub_10001D860(v78, v84, &qword_1000FD8F0, &qword_1000CEF50);
LABEL_8:
  v58 = sub_1000C48A4();
  v101 = sub_1000C48B4();
  v59 = sub_1000C48C4();
  v60 = *(v59 + 16);
  if (!v60)
  {
LABEL_15:

    v80 = v105;
    sub_100018F28(v105, v90, &qword_1000FD8F8, &qword_1000CEF58);
    v81 = v104;
    sub_100018F28(v104, v91, &qword_1000FD8F0, &qword_1000CEF50);
    sub_1000C32B4();
    v82 = sub_1000C48D4();
    (*(*(v82 - 8) + 8))(v102, v82);
    sub_100018F90(v81, &qword_1000FD8F0, &qword_1000CEF50);
    v83 = v80;
    return sub_100018F90(v83, &qword_1000FD8F8, &qword_1000CEF58);
  }

  v100 = v58;
  v115 = _swiftEmptyArrayStorage;
  v106 = v60;
  v107 = v59;
  sub_100045BAC(0, v60, 0);
  result = v107;
  v62 = 0;
  v63 = v115;
  v64 = v107 + ((*(v110 + 80) + 32) & ~*(v110 + 80));
  v65 = (v110 + 8);
  while (v62 < *(result + 16))
  {
    (*(v110 + 16))(v55, v64 + *(v110 + 72) * v62, v56);
    sub_1000886C0(&v114, v113);
    if (v57)
    {

      v79 = sub_1000C48D4();
      (*(*(v79 - 8) + 8))(v102, v79);
      (*v65)(v55, v56);
      sub_100018F90(v104, &qword_1000FD8F0, &qword_1000CEF50);
      sub_100018F90(v105, &qword_1000FD8F8, &qword_1000CEF58);
    }

    v57 = 0;
    (*v65)(v55, v56);
    v115 = v63;
    v67 = v63[2];
    v66 = v63[3];
    if (v67 >= v66 >> 1)
    {
      sub_100045BAC((v66 > 1), v67 + 1, 1);
      v63 = v115;
    }

    ++v62;
    v63[2] = v67 + 1;
    (*(v109 + 32))(v63 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v67, v113, v108);
    result = v107;
    v56 = v111;
    v55 = v112;
    if (v106 == v62)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000886C0@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v35 = a1;
  v30 = a2;
  v32 = sub_1000C4894();
  v34 = *(v32 - 8);
  v2 = __chkstk_darwin(v32);
  v33 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v31 = v26 - v5;
  v6 = __chkstk_darwin(v4);
  v8 = v26 - v7;
  __chkstk_darwin(v6);
  v10 = v26 - v9;
  v11 = sub_1000C4D24();
  __chkstk_darwin(v11 - 8);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C5094();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000C47B4();
  sub_1000C47E4();
  sub_1000C47E4();
  v19 = v36;
  result = sub_1000C5084();
  if (v19)
  {
    *v35 = v19;
  }

  else
  {
    v28 = v14;
    v29 = v17;
    v27 = v15;
    v26[1] = v18;
    sub_1000C47D4();
    sub_1000C4854();
    v36 = v13;
    v21 = *(v34 + 8);
    v22 = v10;
    v23 = v32;
    v21(v22, v32);
    sub_1000C47D4();
    sub_1000C4874();
    v21(v8, v23);
    v24 = v31;
    sub_1000C47D4();
    sub_1000C4864();
    v21(v24, v23);
    v25 = v33;
    sub_1000C47D4();
    sub_1000C4884();
    v21(v25, v23);
    sub_1000C4D04();
    sub_1000C47C4();
    sub_1000C4814();
    sub_1000C47F4();
    sub_1000C4824();
    sub_1000C4804();
    return sub_1000C3254();
  }

  return result;
}

void sub_100088A70(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30[2] = a2;
  v4 = sub_1000124CC(&qword_1000FD890, &qword_1000CEF08);
  __chkstk_darwin(v4 - 8);
  v6 = v30 - v5;
  v7 = sub_1000C2474();
  v31 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v30 - v12;
  __chkstk_darwin(v11);
  v15 = v30 - v14;
  v16 = [a1 portraitConfiguration];
  [v16 screenSize];
  v34 = v17;
  v33 = v18;
  [v16 screenScale];
  v32 = v19;
  [v16 timeRect];
  [v16 inactiveTimeRect];
  [v16 parallaxPadding];
  sub_1000C2464();
  if (v2)
  {
  }

  else
  {
    v34 = v6;

    v20 = v31;
    v30[0] = *(v31 + 32);
    (v30[0])(v15, v13, v7);
    v21 = [a1 landscapeConfiguration];
    if (v21)
    {
      v22 = v21;
      [v22 screenSize];
      v32 = v24;
      v33 = v23;
      [v22 screenScale];
      v30[1] = v25;
      [v22 timeRect];
      [v22 inactiveTimeRect];
      [v22 parallaxPadding];
      v26 = v10;
      sub_1000C2464();
      v27 = a1;

      v28 = v34;
      (v30[0])(v34, v26, v7);
      v29 = 0;
    }

    else
    {
      v27 = a1;
      v29 = 1;
      v28 = v34;
    }

    (*(v20 + 56))(v28, v29, 1, v7);
    sub_1000C2444();
  }
}

void sub_100088E78(void *a1)
{
  v2 = sub_1000C24D4();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000C2514();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000124CC(&qword_1000FD8A0, &qword_1000CEF10);
  __chkstk_darwin(v4 - 8);
  v6 = v33 - v5;
  [a1 imageSize];
  v33[20] = v8;
  v33[21] = v7;
  [a1 deviceResolution];
  v33[18] = v10;
  v33[19] = v9;
  [a1 parallaxPadding];
  v33[16] = v12;
  v33[17] = v11;
  [a1 visibleFrame];
  v33[14] = v14;
  v33[15] = v13;
  v33[12] = v16;
  v33[13] = v15;
  [a1 inactiveFrame];
  v33[10] = v18;
  v33[11] = v17;
  v33[8] = v20;
  v33[9] = v19;
  [a1 timeFrame];
  v33[6] = v22;
  v33[7] = v21;
  v33[5] = v23;
  v33[4] = v24;
  v25 = [a1 clockLayerOrder];
  if (v25)
  {
    v26 = v25;
    sub_1000C5224();
    sub_1000C24E4();

    v27 = sub_1000C24F4();
    (*(*(v27 - 8) + 56))(v6, 0, 1, v27);
  }

  else
  {
    v28 = sub_1000C24F4();
    (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
  }

  [a1 clockIntersection];
  sub_1000C2504();
  [a1 layoutVariant];
  sub_1000C24C4();
  [a1 hasTopEdgeContact];
  [a1 spatialVisibleFrame];
  v33[3] = v29;
  v33[2] = v30;
  v33[1] = v31;
  v33[0] = v32;
  [a1 spatialAdaptiveFrame];
  [a1 adaptiveTimeFrame];
  [a1 salientContentFrame];
  sub_1000C2524();
}

void sub_100089288(CVPixelBufferRef a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v4 = sub_1000124CC(&qword_1000FC460, &qword_1000C9D30);
  __chkstk_darwin(v4 - 8);
  v6 = &v43[-v5];
  v7 = sub_1000C4D84();
  __chkstk_darwin(v7 - 8);
  v9 = &v43[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1000C1A94();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v43[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = [(__CVBuffer *)a1 image];
  v15 = sub_10008B184(0x6567616D69, 0xE500000000000000, 0xD000000000000065, 0x80000001000D7BD0, 618, v14);
  if (v2)
  {
  }

  else
  {
    v48 = v11;
    v16 = v15;

    sub_1000C4C24();
    v49 = v16;
    v17 = a1;
    v18 = sub_1000C1A84();
    v19 = sub_1000C5554();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v45 = v18;
      v21 = v20;
      v46 = swift_slowAlloc();
      v51 = v46;
      *v21 = 134218754;
      v22 = v49;
      *(v21 + 4) = CVPixelBufferGetWidth(v49);
      *(v21 + 12) = 2048;
      *(v21 + 14) = CVPixelBufferGetHeight(v22);

      v47 = v9;
      *(v21 + 22) = 2080;
      [(__CVBuffer *)v17 frame];
      v52 = v23;
      v53 = v24;
      v54 = v25;
      v55 = v26;
      LOBYTE(v56) = 0;
      type metadata accessor for CGRect(0);
      v27 = sub_1000C4A84();
      v28 = v17;
      v30 = sub_10008AC30(v27, v29, &v51);
      v44 = v19;
      v31 = v30;

      *(v21 + 24) = v31;
      *(v21 + 32) = 2080;
      v32 = [(__CVBuffer *)v17 identifier];
      v33 = sub_1000C5224();
      v35 = v34;

      v36 = sub_10008AC30(v33, v35, &v51);

      *(v21 + 34) = v36;
      v17 = v28;
      v37 = v45;
      _os_log_impl(&_mh_execute_header, v45, v44, "Creating parallax image layer using image: (width: %ld, height: %ld) frame: %s identifier: %s", v21, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v48 + 8))(v13, v10);
    type metadata accessor for CVBuffer(0);
    v55 = v38;
    v56 = &protocol witness table for CVBufferRef;
    v39 = v49;
    v52 = v49;
    v40 = sub_1000C4D54();
    (*(*(v40 - 8) + 56))(v6, 1, 1, v40);
    a1 = v39;
    sub_1000C4D64();
    v41 = v17;
    [(__CVBuffer *)v41 frame];
    [(__CVBuffer *)v41 zPosition];
    v42 = [(__CVBuffer *)v41 identifier];

    sub_1000C5224();
    sub_1000C2404();
  }
}

void sub_10008977C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = sub_1000C2574();
  __chkstk_darwin(v4 - 8);
  v33 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C1A94();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C4C24();
  v10 = a1;
  v11 = sub_1000C1A84();
  v12 = sub_1000C5554();

  v13 = &MBDHTMLToSuper_MENTION_Frame__classData;
  v14 = &MBDHTMLToSuper_MENTION_Frame__classData;
  if (os_log_type_enabled(v11, v12))
  {
    v15 = swift_slowAlloc();
    v32 = v2;
    v16 = v15;
    v31 = swift_slowAlloc();
    v37 = v31;
    *v16 = 136315394;
    v35 = [v10 mediaType];
    v36 = 0;
    type metadata accessor for PFPosterMediaType(0);
    v17 = sub_1000C4A84();
    v30 = v6;
    v19 = sub_10008AC30(v17, v18, &v37);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    v20 = [v10 subpath];
    v21 = sub_1000C5224();
    v23 = v22;

    v24 = v21;
    v13 = &MBDHTMLToSuper_MENTION_Frame__classData;
    v25 = sub_10008AC30(v24, v23, &v37);
    v14 = &MBDHTMLToSuper_MENTION_Frame__classData;

    *(v16 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v11, v12, "Unpacking photos poster media with type: %s at subpath: %s", v16, 0x16u);
    swift_arrayDestroy();

    (*(v7 + 8))(v9, v30);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  [v10 v13[28].name];
  sub_1000C2564();
  v26 = [v10 assetUUID];
  if (v26)
  {
    v27 = v26;
    sub_1000C5224();
  }

  v28 = [v10 v14[28].base_prots];
  sub_1000C5224();

  [v10 version];
  sub_1000C2494();
}

void sub_100089AEC(_UNKNOWN **a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_1000C2414();
  v4 = *(v3 - 8);
  v66 = v3;
  v67 = v4;
  __chkstk_darwin(v3);
  v68 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C2534();
  __chkstk_darwin(v6 - 8);
  v61 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C14E4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000C1A94();
  v65 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C4C24();
  (*(v9 + 16))(v11, a1, v8);
  v15 = sub_1000C1A84();
  v16 = sub_1000C5554();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v62 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v64 = v9;
    v20 = v19;
    v69 = v19;
    *v18 = 136315138;
    sub_10008B2F4(&qword_1000FC778, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v21 = sub_1000C5BE4();
    v59 = v12;
    v22 = v8;
    v24 = v23;
    v25 = v11;
    v26 = *(v64 + 8);
    v26(v25, v22);
    v27 = sub_10008AC30(v21, v24, &v69);
    v8 = v22;

    *(v18 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v15, v16, "Loading layer stack from URL: %s", v18, 0xCu);
    sub_100015F68(v20);
    v9 = v64;

    a1 = v62;

    (*(v65 + 8))(v14, v59);
  }

  else
  {

    v28 = v11;
    v26 = *(v9 + 8);
    v26(v28, v8);
    (*(v65 + 8))(v14, v12);
  }

  v29 = objc_opt_self();
  sub_1000C1494(v30);
  v32 = v31;
  v69 = 0;
  v33 = [v29 loadCompoundLayerStackFromWallpaperURL:v31 options:0x1FFFFLL error:&v69];

  if (!v33)
  {
    v38 = v69;
    sub_1000C1474();

    swift_willThrow();
    v26(a1, v8);
    return;
  }

  v34 = v69;
  v35 = [v33 portraitLayerStack];
  v36 = v63;
  v37 = sub_10008B184(0xD000000000000012, 0x80000001000D7C40, 0xD000000000000065, 0x80000001000D7BD0, 682, v35);
  if (v36)
  {
    v26(a1, v8);

    return;
  }

  v56 = v33;
  v57 = v26;
  v59 = v8;
  v39 = v37;

  v40 = [v39 layers];
  sub_10001D1A8(0, &qword_1000FD898, PFParallaxLayer_ptr);
  v41 = sub_1000C53A4();

  v69 = _swiftEmptyArrayStorage;
  v42 = v41 & 0xFFFFFFFFFFFFFF8;
  if (v41 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1000C59A4())
  {
    v58 = v39;
    v64 = v9;
    v62 = a1;
    if (i)
    {
      v44 = 0;
      v9 = v41 & 0xC000000000000001;
      v65 = _swiftEmptyArrayStorage;
      a1 = &_s9BlastDoor41IMBalloonLayoutInfoSecondarySubcaptionKeySSvg_ptr;
      do
      {
        v39 = v44;
        while (1)
        {
          if (v9)
          {
            v45 = sub_1000C5954();
          }

          else
          {
            if (v39 >= *(v42 + 16))
            {
              goto LABEL_40;
            }

            v45 = *(v41 + 8 * v39 + 32);
          }

          v46 = v45;
          v44 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            __break(1u);
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v39;
          if (v44 == i)
          {
            goto LABEL_26;
          }
        }

        sub_1000C5384();
        if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v65 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1000C53B4();
        }

        sub_1000C53D4();
        v65 = v69;
      }

      while (v44 != i);
    }

    else
    {
      v65 = _swiftEmptyArrayStorage;
    }

LABEL_26:

    v47 = v65;
    v48 = v62;
    if (v65 >> 62)
    {
      break;
    }

    v41 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v49 = v59;
    if (!v41)
    {
      goto LABEL_45;
    }

LABEL_28:
    v69 = _swiftEmptyArrayStorage;
    sub_100045B68(0, v41 & ~(v41 >> 63), 0);
    if (v41 < 0)
    {
      __break(1u);
    }

    v50 = 0;
    v39 = v69;
    a1 = (v47 & 0xC000000000000001);
    v63 = v47 & 0xFFFFFFFFFFFFFF8;
    v9 = v67 + 32;
    while (1)
    {
      v42 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (a1)
      {
        v51 = sub_1000C5954();
      }

      else
      {
        if (v50 >= *(v63 + 16))
        {
          goto LABEL_42;
        }

        v51 = *(v47 + 8 * v50 + 32);
      }

      sub_100089288(v51, v68);
      v69 = v39;
      v53 = *(v39 + 16);
      v52 = *(v39 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_100045B68((v52 > 1), v53 + 1, 1);
        v39 = v69;
      }

      *(v39 + 16) = v53 + 1;
      (*(v67 + 32))(v39 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v53, v68, v66);
      ++v50;
      v47 = v65;
      if (v42 == v41)
      {

        v48 = v62;
        v49 = v59;
        goto LABEL_46;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

  v41 = sub_1000C59A4();
  v49 = v59;
  if (v41)
  {
    goto LABEL_28;
  }

LABEL_45:

LABEL_46:
  v54 = v58;
  sub_100088E78([v58 layout]);
  LODWORD(v68) = [v54 depthEnabled];
  [v54 parallaxDisabled];
  [v54 clockAreaLuminance];
  [v54 settlingEffectEnabled];
  [v54 spatialPhotoEnabled];
  sub_1000C2424();
  v57(v48, v49);
}

char *sub_10008A468@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X6>, unint64_t a9@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v17 = v10;
  v13 = a6;
  v18 = a5 >> 14;
  v14 = a6 >> 14;
  if (a1 && v18 != v14)
  {
    v9 = a4;
    v16 = _swiftEmptyArrayStorage;
    v11 = a5;
    do
    {
      v19 = v11 >> 14;
      if (v11 >> 14 == v14)
      {
        break;
      }

      v41 = a1;
      v48 = v17;
      v43 = v16;
      v16 = a7;
      while (1)
      {
        while (1)
        {
          v47[0] = sub_1000C5884();
          v47[1] = v20;
          v21 = v48;
          v22 = a3(v47);
          v48 = v21;
          if (v21)
          {

            return v16;
          }

          v23 = v22;

          if (v23)
          {
            break;
          }

          v16 = a7;
          v19 = sub_1000C5864() >> 14;
          if (v19 == v14)
          {
            v16 = v43;
            goto LABEL_28;
          }
        }

        result = v11;
        if (v11 >> 14 != v19 || (a2 & 1) == 0)
        {
          break;
        }

        v16 = a7;
        v11 = sub_1000C5864();
        v19 = v11 >> 14;
        if (v11 >> 14 == v14)
        {
          v16 = v43;
          goto LABEL_28;
        }
      }

      if (v19 < v11 >> 14)
      {
        __break(1u);
        return result;
      }

      v44 = sub_1000C5894();
      v39 = v26;
      v40 = v25;
      v38 = v27;
      v16 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_10004540C(0, *(v43 + 2) + 1, 1, v43);
      }

      v29 = *(v16 + 2);
      v28 = *(v16 + 3);
      if (v29 >= v28 >> 1)
      {
        v16 = sub_10004540C((v28 > 1), v29 + 1, 1, v16);
      }

      *(v16 + 2) = v29 + 1;
      v30 = &v16[32 * v29];
      *(v30 + 4) = v44;
      *(v30 + 5) = v40;
      *(v30 + 6) = v39;
      *(v30 + 7) = v38;
      v11 = sub_1000C5864();
      a1 = v41;
      v17 = v48;
    }

    while (*(v16 + 2) != v41);
LABEL_28:
    if (v11 >> 14 == v14 && (a2 & 1) != 0)
    {

      return v16;
    }

    if (v14 >= v11 >> 14)
    {
      v9 = sub_1000C5894();
      v11 = v34;
      v13 = v35;
      v14 = v36;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_33:
      v15 = *(v16 + 2);
      a9 = *(v16 + 3);
LABEL_34:
      v12 = v15 + 1;
      if (v15 < a9 >> 1)
      {
LABEL_35:
        *(v16 + 2) = v12;
        v37 = &v16[32 * v15];
        *(v37 + 4) = v9;
        *(v37 + 5) = v11;
        *(v37 + 6) = v13;
        *(v37 + 7) = v14;
        return v16;
      }

LABEL_38:
      v16 = sub_10004540C((a9 > 1), v12, 1, v16);
      goto LABEL_35;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    v16 = sub_10004540C(0, *(v16 + 2) + 1, 1, v16);
    goto LABEL_33;
  }

  if (v18 != v14 || (a2 & 1) == 0)
  {
    if (v14 >= v18)
    {
      v9 = sub_1000C5894();
      v11 = v31;
      v13 = v32;
      v14 = v33;

      v16 = sub_10004540C(0, 1, 1, _swiftEmptyArrayStorage);
      v15 = *(v16 + 2);
      a9 = *(v16 + 3);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_40;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10008A870@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = sub_1000C5374();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_10004540C(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_10004540C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1000C5354();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1000C52D4();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1000C52D4();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1000C5374();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_10004540C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1000C5374();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_10004540C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_10004540C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1000C52D4();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10008AC30(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10008ACFC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10001D804(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100015F68(v11);
  return v7;
}

unint64_t sub_10008ACFC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10008AE08(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1000C5984();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_10008AE08(uint64_t a1, unint64_t a2)
{
  v3 = sub_10008AE54(a1, a2);
  sub_10008AF84(&off_1000F1100);
  return v3;
}

void *sub_10008AE54(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100099F84(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1000C5984();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000C52F4();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100099F84(v10, 0);
        result = sub_1000C5924();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_10008AF84(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_10008B070(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

char *sub_10008B070(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000124CC(&qword_1000FD870, &qword_1000CEEF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10008B184(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a6)
  {

    v9._countAndFlagsBits = 58;
    v9._object = 0xE100000000000000;
    sub_1000C52E4(v9);
    v10._countAndFlagsBits = sub_1000C5BE4();
    sub_1000C52E4(v10);

    v11._countAndFlagsBits = 58;
    v11._object = 0xE100000000000000;
    sub_1000C52E4(v11);
    v12._countAndFlagsBits = a1;
    v12._object = a2;
    sub_1000C52E4(v12);
    sub_1000C4FC4();
    sub_10008B2F4(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
  }

  return a6;
}

uint64_t sub_10008B2F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10008B33C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a7)
  {

    v10._countAndFlagsBits = 58;
    v10._object = 0xE100000000000000;
    sub_1000C52E4(v10);
    v11._countAndFlagsBits = sub_1000C5BE4();
    sub_1000C52E4(v11);

    v12._countAndFlagsBits = 58;
    v12._object = 0xE100000000000000;
    sub_1000C52E4(v12);
    v13._countAndFlagsBits = a1;
    v13._object = a2;
    sub_1000C52E4(v13);
    sub_1000C4FC4();
    sub_10008B2F4(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
  }

  return a6;
}

unint64_t sub_10008B4A8()
{
  result = qword_1000FD910;
  if (!qword_1000FD910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD910);
  }

  return result;
}

unint64_t sub_10008B4FC()
{
  result = qword_1000FD918;
  if (!qword_1000FD918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD918);
  }

  return result;
}

uint64_t sub_10008B56C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1000C5C04() & 1;
  }
}

uint64_t sub_10008B5E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000124CC(&qword_1000FD728, &qword_1000CEA50);
  __chkstk_darwin(v3 - 8);
  v5 = &v40 - v4;
  v6 = type metadata accessor for MessageDictionary(0);
  v7 = (v1 + v6[37]);
  v8 = v7[1];
  if (v8 && (v9 = (v1 + v6[38]), v10 = v9[1], v10 >> 60 != 15))
  {
    v49 = a1;
    v50 = v8;
    v48 = *v7;
    v16 = *v9;
    v17 = (v1 + v6[41]);
    v18 = v17[1];
    v44 = v5;
    if (v18)
    {
      if (*v17 == 5457241 && v18 == 0xE300000000000000)
      {
        v47 = 1;
      }

      else
      {
        v20 = v6;
        v47 = sub_1000C5C04();
        v6 = v20;
      }
    }

    else
    {
      v47 = 0;
    }

    v21 = v6[39];
    v22 = (v1 + v6[40]);
    if (*(v22 + 8))
    {
      v23 = 0;
    }

    else
    {
      v23 = *v22;
    }

    v24 = *(v1 + v21 + 8);
    v45 = *(v1 + v21);
    v46 = v23;
    v25 = (v1 + v6[43]);
    v26 = *v25;
    v27 = v25[1];
    v28 = (v1 + v6[42]);
    v29 = *v28;
    v30 = v28[1];
    v31 = (v1 + v6[44]);
    v32 = v31[1];
    v41 = *v31;
    v33 = (v1 + v6[46]);
    v34 = v33[1];
    v42 = *v33;
    v43 = v24;
    sub_100018C54(v16, v10);
    sub_100018C54(v16, v10);

    sub_100018C54(v26, v27);
    sub_100018C54(v29, v30);
    sub_100018C54(v41, v32);
    sub_100018C54(v42, v34);
    v35 = v44;
    sub_1000C3FC4();
    sub_100018CBC(v16, v10);
    v36 = sub_1000C3FD4();
    v37 = *(v36 - 8);
    v38 = *(v37 + 56);
    v38(v35, 0, 1, v36);
    v39 = v49;
    (*(v37 + 32))(v49, v35, v36);
    return (v38)(v39, 0, 1, v36);
  }

  else
  {
    sub_100014F70();
    v11 = sub_1000C5714();
    v12 = sub_1000C5554();
    sub_1000C1A44("<NicknameInformation> No nickname", 33, 2, &_mh_execute_header, v11, v12, _swiftEmptyArrayStorage);

    v13 = sub_1000C3FD4();
    v14 = *(*(v13 - 8) + 56);

    return v14(a1, 1, 1, v13);
  }
}

uint64_t sub_10008BA60(uint64_t a1)
{
  v2 = sub_1000124CC(&qword_1000FD728, &qword_1000CEA50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008BB20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a2;
  v86 = a3;
  v97 = sub_1000C3574();
  v98 = *(v97 - 8);
  v4 = __chkstk_darwin(v97);
  v99 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v96 = &v81 - v6;
  v7 = sub_1000124CC(&qword_1000FC460, &qword_1000C9D30);
  __chkstk_darwin(v7 - 8);
  v88 = &v81 - v8;
  v95 = sub_1000C4D84();
  v94 = *(v95 - 8);
  v9 = __chkstk_darwin(v95);
  v85 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v92 = &v81 - v12;
  v13 = __chkstk_darwin(v11);
  v91 = &v81 - v14;
  __chkstk_darwin(v13);
  v84 = &v81 - v15;
  v90 = sub_1000C1A94();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v87 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1000C20D4();
  v101 = *(v100 - 8);
  v17 = __chkstk_darwin(v100);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v81 - v20;
  v22 = sub_1000C4CC4();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000C4DB4();
  v102 = *(v26 - 8);
  v27 = __chkstk_darwin(v26);
  v29 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v81 - v30;
  v103 = "create NicknameInformation";
  (*(v23 + 16))(v25, a1, v22);
  v32 = v104;
  sub_1000C4D94();
  if (v32)
  {
    v111 = v32;
    swift_errorRetain();
    sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
    sub_10008CE38();
    if (swift_dynamicCast())
    {

      v33 = v110;
      v34 = [v110 domain];
      v35 = sub_1000C5224();
      v37 = v36;

      v105 = v35;
      v106 = v37;
      v112._countAndFlagsBits = 45;
      v112._object = 0xE100000000000000;
      sub_1000C52E4(v112);
      v109 = [v33 code];
      v113._countAndFlagsBits = sub_1000C5BE4();
      sub_1000C52E4(v113);

      sub_1000C4FC4();
      sub_10008CE84(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
    }

    else
    {

      swift_getErrorValue();
      swift_getDynamicType();
      sub_1000C5D34();
      sub_1000C4FC4();
      sub_10008CE84(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
    }
  }

  v83 = v19;
  v38 = v101;
  v39 = v100;
  (*(v102 + 32))(v31, v29, v26);
  v40 = sub_1000C4DA4();
  v104 = v26;
  v42 = v40;
  v43 = v41;
  v81 = 0;
  v82 = v31;
  v44 = v38;
  v45 = *(v38 + 13);
  v46 = v21;
  v45(v21, enum case for ImageHeader.png(_:), v39);
  v47 = sub_1000C1594();
  v48 = v42;
  v51 = *(v44 + 1);
  v49 = v44 + 8;
  v50 = v51;
  v51(v46, v39);
  if ((v47 & 1) == 0)
  {
    v101 = v49;
    v95 = v48;
    v63 = v87;
    sub_1000C4C44();
    v64 = sub_1000C1A84();
    v65 = sub_1000C5514();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "Failing watch face since image header was incorrect", v66, 2u);
    }

    (*(v89 + 8))(v63, v90);
    v67 = v83;
    v68 = v81;
    sub_1000C15A4();
    if (v68)
    {
      v69 = v68;
    }

    else
    {
      v105 = 0;
      v106 = 0xE000000000000000;
      sub_1000C5944(33);

      v105 = 0xD00000000000001FLL;
      v106 = 0x80000001000D7AB0;
      v116._countAndFlagsBits = sub_1000C20C4();
      sub_1000C52E4(v116);

      sub_1000C4FC4();
      sub_10008CE84(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      v69 = swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
      v50(v67, v39);
    }

    v75 = v82;
    v111 = v69;
    swift_errorRetain();
    sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
    v76 = v96;
    v77 = v97;
    v78 = swift_dynamicCast();
    v79 = v98;
    v80 = v99;
    if (v78)
    {

      (*(v79 + 32))(v80, v76, v77);
      v101 = "oor.WatchfacePreview";
      v105 = 0;
      v106 = 0xE000000000000000;
      sub_1000C5944(33);

      v105 = 0xD00000000000001FLL;
      v106 = 0x80000001000D7AB0;
      v117._countAndFlagsBits = sub_1000C3564();
      sub_1000C52E4(v117);

      sub_1000C4FC4();
      sub_10008CE84(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
      sub_100018CD0(v95, v43);
      (*(v79 + 8))(v80, v77);
      (*(v102 + 8))(v75, v104);
    }

    else
    {
      (*(v102 + 8))(v75, v104);
      sub_100018CD0(v95, v43);
    }
  }

  v107 = &type metadata for Data;
  v108 = &protocol witness table for Data;
  v105 = v48;
  v106 = v43;
  v52 = sub_1000C4D54();
  (*(*(v52 - 8) + 56))(v88, 1, 1, v52);
  sub_100018C68(v48, v43);
  v53 = v92;
  sub_1000C4D64();
  sub_1000C3B94();
  v54 = v91;
  v55 = v81;
  sub_1000C4D44();
  if (!v55)
  {
    v70 = v94;
    v103 = v43;
    v71 = *(v94 + 8);
    v72 = v95;
    v71(v53, v95);
    v73 = v84;
    (*(v70 + 32))(v84, v54, v72);
    (*(v70 + 16))(v85, v73, v72);
    sub_1000C3BA4();
    sub_100018CD0(v48, v103);
    v71(v73, v72);
    return (*(v102 + 8))(v82, v104);
  }

  v56 = v48;
  v57 = v43;
  (*(v94 + 8))(v53, v95);
  v111 = v55;
  swift_errorRetain();
  sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
  sub_10008CE38();
  if (swift_dynamicCast())
  {

    v58 = v110;
    v59 = [v110 domain];
    v60 = sub_1000C5224();
    v62 = v61;

    v105 = v60;
    v106 = v62;
    v114._countAndFlagsBits = 45;
    v114._object = 0xE100000000000000;
    sub_1000C52E4(v114);
    v109 = [v58 code];
    v115._countAndFlagsBits = sub_1000C5BE4();
    sub_1000C52E4(v115);

    sub_1000C4FC4();
    sub_10008CE84(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();

    sub_100018CD0(v56, v57);
    (*(v102 + 8))(v82, v104);
  }

  swift_getErrorValue();
  swift_getDynamicType();
  sub_1000C5D34();
  sub_1000C4FC4();
  sub_10008CE84(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
  swift_allocError();
  sub_1000C4FB4();
  swift_willThrow();

  sub_100018CD0(v56, v43);
  return (*(v102 + 8))(v82, v104);
}

unint64_t sub_10008CE38()
{
  result = qword_1000FD978;
  if (!qword_1000FD978)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000FD978);
  }

  return result;
}

uint64_t sub_10008CE84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_10008CECC(uint64_t a1, uint64_t a2)
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

uint64_t sub_10008CEE8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
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

uint64_t sub_10008CF44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10008CFB8(void *a1)
{
  v3 = v1;
  v5 = sub_1000124CC(&qword_1000FD990, &qword_1000CF0C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10001530C(a1, a1[3]);
  sub_10008D8C0();
  sub_1000C5D04();
  v11 = *v3;
  v10[7] = 0;
  sub_1000124CC(&qword_1000FC378, &qword_1000CA860);
  sub_100015FB4(&qword_1000FC380, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  sub_1000C5B44();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v10[6] = 1;
  sub_1000C5AF4();
  v10[5] = 2;
  sub_1000C5AF4();
  v10[4] = 3;
  sub_1000C5B74();
  return (*(v6 + 8))(v8, v5);
}

Swift::Int sub_10008D1D8()
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

double sub_10008D270(uint64_t a1)
{
  sub_1000C52C4();

  return result;
}

Swift::Int sub_10008D2F4()
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

unint64_t sub_10008D388@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008D570(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10008D3B8(uint64_t *a1@<X8>)
{
  v2 = 0xE100000000000000;
  v3 = 112;
  v4 = 0xE100000000000000;
  v5 = 110;
  if (*v1 != 2)
  {
    v5 = 7630191;
    v4 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = 6580583;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_10008D40C()
{
  v1 = 112;
  v2 = 110;
  if (*v0 != 2)
  {
    v2 = 7630191;
  }

  if (*v0)
  {
    v1 = 6580583;
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

unint64_t sub_10008D45C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10008D570(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10008D490(uint64_t a1)
{
  v2 = sub_10008D8C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008D4CC(uint64_t a1)
{
  v2 = sub_10008D8C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10008D508@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10008D5BC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

unint64_t sub_10008D570(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F1F28;
  v6._object = a2;
  v4 = sub_1000C59F4(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10008D5BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FD980, &unk_1000CF0B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_10001530C(a1, a1[3]);
  sub_10008D8C0();
  sub_1000C5CF4();
  if (v2)
  {
    return sub_100015F68(a1);
  }

  sub_1000124CC(&qword_1000FC378, &qword_1000CA860);
  v28 = 0;
  sub_100015FB4(&qword_1000FC3A8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  sub_1000C5A54();
  v9 = v29;
  v27 = 1;
  v10 = sub_1000C5A04();
  v24 = v11;
  v22 = v10;
  v26 = 2;
  v21 = sub_1000C5A04();
  v23 = v12;
  v25 = 3;
  v13 = sub_1000C5A84();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = sub_100015F68(a1);
  v18 = v22;
  *a2 = v9;
  *(a2 + 8) = v18;
  v19 = v21;
  *(a2 + 16) = v24;
  *(a2 + 24) = v19;
  *(a2 + 32) = v23;
  *(a2 + 40) = v13;
  *(a2 + 48) = v16 & 1;
  return result;
}

unint64_t sub_10008D8C0()
{
  result = qword_1000FD988;
  if (!qword_1000FD988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD988);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReadReceiptDictionary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReadReceiptDictionary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10008DA68()
{
  result = qword_1000FD998;
  if (!qword_1000FD998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD998);
  }

  return result;
}

unint64_t sub_10008DAC0()
{
  result = qword_1000FD9A0;
  if (!qword_1000FD9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD9A0);
  }

  return result;
}

unint64_t sub_10008DB18()
{
  result = qword_1000FD9A8;
  if (!qword_1000FD9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD9A8);
  }

  return result;
}

double sub_10008DB6C(uint64_t a1, unsigned __int8 a2)
{
  sub_1000C52C4();

  return result;
}

double sub_10008DC70(uint64_t a1, char a2)
{
  sub_1000C52C4();

  return result;
}

Swift::Int sub_10008DCB0(uint64_t a1, unsigned __int8 a2)
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

Swift::Int sub_10008DD80(uint64_t a1, char a2)
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

Swift::Int sub_10008DDDC(uint64_t a1, unsigned __int8 a2)
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t SyndicationActionDictionary.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000124CC(&qword_1000FD9B0, &qword_1000CF220);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7];
  sub_10001530C(a1, a1[3]);
  sub_10008E248();
  sub_1000C5D04();
  LOBYTE(v17) = 0;
  sub_1000C5BC4();
  if (!v2)
  {
    LOBYTE(v17) = 1;
    sub_1000C5B74();
    LOBYTE(v17) = 2;
    sub_1000C5B74();
    LOBYTE(v17) = 3;
    sub_1000C5BC4();
    LOBYTE(v17) = 4;
    sub_1000C5BD4();
    LOBYTE(v17) = 5;
    sub_1000C5AF4();
    v9 = *(v3 + 80);
    v10 = *(v3 + 112);
    v23 = *(v3 + 96);
    v24 = v10;
    v11 = *(v3 + 80);
    v22[0] = *(v3 + 64);
    v22[1] = v11;
    v18 = v9;
    v19 = v23;
    v20 = *(v3 + 112);
    v25 = *(v3 + 128);
    v21 = *(v3 + 128);
    v17 = v22[0];
    v16 = 6;
    sub_100016020(v22, v14);
    sub_10008E29C();
    sub_1000C5BB4();
    v14[2] = v19;
    v14[3] = v20;
    v15 = v21;
    v14[1] = v18;
    v14[0] = v17;
    sub_100016058(v14);
    v13[15] = 7;
    sub_1000C5BC4();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_10008E248()
{
  result = qword_1000FD9B8;
  if (!qword_1000FD9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD9B8);
  }

  return result;
}

unint64_t sub_10008E29C()
{
  result = qword_1000FD9C0;
  if (!qword_1000FD9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD9C0);
  }

  return result;
}

__n128 SyndicationActionDictionary.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10008E4D0(a2, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a1 + 96) = v8[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v9;
    v6 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v6;
    v7 = v8[5];
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v7;
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

unint64_t sub_10008E3C0@<X0>(Swift::String *a1@<X0>, MessagesBlastDoorService::SyndicationActionDictionary::CodingKeys_optional *a2@<X8>)
{
  result = _s24MessagesBlastDoorService27SyndicationActionDictionaryV10CodingKeysO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t sub_10008E424@<X0>(uint64_t a1@<X0>, MessagesBlastDoorService::SyndicationActionDictionary::CodingKeys_optional *a2@<X8>, void *a3@<X1>)
{
  result = _s24MessagesBlastDoorService27SyndicationActionDictionaryV10CodingKeysO8rawValueAESgSS_tcfC_0(a1, a3);
  a2->value = result;
  return result;
}

uint64_t sub_10008E458(uint64_t a1)
{
  v2 = sub_10008E248();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008E494(uint64_t a1)
{
  v2 = sub_10008E248();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10008E4D0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FD9E0, &unk_1000CF428);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  v9 = a1[3];
  v69 = a1;
  sub_10001530C(a1, v9);
  sub_10008E248();
  sub_1000C5CF4();
  if (v2)
  {
    sub_100015F68(v69);
  }

  else
  {
    v42[0] = 0;
    v10 = sub_1000C5AD4();
    v42[0] = 1;
    v32 = sub_1000C5A84();
    v68 = v11 & 1;
    v42[0] = 2;
    v31 = sub_1000C5A84();
    v67 = v12 & 1;
    v42[0] = 3;
    v30 = sub_1000C5AD4();
    v42[0] = 4;
    v29 = sub_1000C5AE4();
    v42[0] = 5;
    *&v28 = sub_1000C5A04();
    *(&v28 + 1) = v13;
    v56 = 6;
    sub_10008EBBC();
    sub_1000C5AC4();
    v64 = v59;
    v65 = v60;
    v66 = v61;
    v62 = v57;
    v63 = v58;
    v55 = 7;
    v27 = 0;
    v14 = sub_1000C5AD4();
    v15 = *(v6 + 8);
    v16 = v14;
    v26 = v14;
    v15(v8, v5);
    LOBYTE(v33) = v16;
    BYTE1(v33) = v10;
    BYTE2(v33) = v30;
    v17 = *(&v28 + 1);
    v18 = v31;
    *(&v33 + 1) = v29;
    *&v34 = v32;
    LODWORD(v27) = v68;
    BYTE8(v34) = v68;
    *&v35 = v31;
    v19 = v67;
    BYTE8(v35) = v67;
    v20 = v28;
    v36 = v28;
    v39 = v64;
    v40 = v65;
    v41 = v66;
    v38 = v63;
    v37 = v62;
    sub_10008EC10(&v33, v42);
    sub_100015F68(v69);
    v42[0] = v26;
    v42[1] = v10;
    v42[2] = v30;
    v43 = v29;
    v44 = v32;
    v45 = v27;
    v46 = v18;
    v47 = v19;
    v48 = v20;
    v49 = v17;
    v52 = v64;
    v53 = v65;
    v54 = v66;
    v50 = v62;
    v51 = v63;
    sub_100057D70(v42);
    v21 = v40;
    *(a2 + 96) = v39;
    *(a2 + 112) = v21;
    *(a2 + 128) = v41;
    v22 = v36;
    *(a2 + 32) = v35;
    *(a2 + 48) = v22;
    v23 = v38;
    *(a2 + 64) = v37;
    *(a2 + 80) = v23;
    v24 = v34;
    *a2 = v33;
    *(a2 + 16) = v24;
  }
}

unint64_t _s24MessagesBlastDoorService27SyndicationActionDictionaryV10CodingKeysO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F1FA8;
  v6._object = a2;
  v4 = sub_1000C59F4(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10008E990()
{
  result = qword_1000FD9C8;
  if (!qword_1000FD9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD9C8);
  }

  return result;
}

unint64_t sub_10008E9E8()
{
  result = qword_1000FD9D0;
  if (!qword_1000FD9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD9D0);
  }

  return result;
}

unint64_t sub_10008EA40()
{
  result = qword_1000FD9D8;
  if (!qword_1000FD9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD9D8);
  }

  return result;
}

__n128 sub_10008EA94(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_10008EAC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 129))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_10008EB24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

unint64_t sub_10008EBBC()
{
  result = qword_1000FD9E8;
  if (!qword_1000FD9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD9E8);
  }

  return result;
}

uint64_t SyndicationActionDictionary.messagePartRange()()
{
  if (*(v0 + 24) & 1) != 0 || (*(v0 + 40))
  {
    result = sub_1000C1324();
    if (result)
    {
      return 0;
    }

    __break(1u);
    goto LABEL_16;
  }

  v2 = *(v0 + 32);
  if (*(v0 + 16) >= 0x7FFFFFFFFFFFFFFFuLL)
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = *(v0 + 16);
  }

  result = sub_1000C1324();
  if (v3 == result)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = v3;
  if (v2 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = v2;
  }

  if (__OFADD__(v3, v4))
  {
    goto LABEL_17;
  }

  if (v3 + v4 < 0)
  {
LABEL_18:
    __break(1u);
  }

  return result;
}

uint64_t sub_10008ECDC()
{
  v44 = sub_1000C4184();
  v0 = *(v44 - 8);
  v1 = __chkstk_darwin(v44);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v43 = &v34 - v4;
  v5 = sub_1000124CC(&qword_1000FD9F0, &qword_1000CF478);
  __chkstk_darwin(v5 - 8);
  v7 = &v34 - v6;
  v8 = sub_1000C41D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000124CC(&qword_1000FC3B0, &qword_1000C9780);
  __chkstk_darwin(v11 - 8);
  v13 = &v34 - v12;
  sub_1000C4E04();
  v14 = sub_1000C3D24();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100018F90(v13, &qword_1000FC3B0, &qword_1000C9780);
    v16 = _swiftEmptyArrayStorage;
LABEL_18:
    v33 = v16[2];

    return v33 != 0;
  }

  v17 = sub_1000C3D04();
  result = (*(v15 + 8))(v13, v14);
  v45 = *(v17 + 16);
  if (!v45)
  {
    v16 = _swiftEmptyArrayStorage;
LABEL_17:

    goto LABEL_18;
  }

  v19 = v9;
  v20 = 0;
  v21 = v17 + 32;
  v22 = (v19 + 56);
  v40 = (v19 + 8);
  v41 = (v19 + 32);
  v38 = (v0 + 88);
  v39 = (v0 + 32);
  v37 = enum case for FileTransferAttribute.AttachmentSubtype.sticker(_:);
  v16 = _swiftEmptyArrayStorage;
  v36 = (v0 + 8);
  v35 = v3;
  while (v20 < *(v17 + 16))
  {
    sub_100018DA8(v21, v47);
    sub_100018DA8(v47, v46);
    sub_1000124CC(&qword_1000FC950, &qword_1000CB6A8);
    v23 = swift_dynamicCast();
    v24 = *v22;
    if (v23)
    {
      v24(v7, 0, 1, v8);
      v25 = v42;
      (*v41)(v42, v7, v8);
      v26 = v17;
      v27 = v43;
      sub_1000C4194();
      (*v40)(v25, v8);
      v28 = v27;
      v17 = v26;
      v29 = v44;
      (*v39)(v3, v28, v44);
      LODWORD(v25) = (*v38)(v3, v29);
      (*v36)(v3, v29);
      if (v25 == v37)
      {
        sub_100018E0C(v47, v46);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100045B04(0, v16[2] + 1, 1);
          v16 = v48;
        }

        v32 = v16[2];
        v31 = v16[3];
        if (v32 >= v31 >> 1)
        {
          sub_100045B04((v31 > 1), v32 + 1, 1);
          v16 = v48;
        }

        v16[2] = v32 + 1;
        result = sub_100018E0C(v46, &v16[5 * v32 + 4]);
        v3 = v35;
        goto LABEL_7;
      }
    }

    else
    {
      v24(v7, 1, 1, v8);
      sub_100018F90(v7, &qword_1000FD9F0, &qword_1000CF478);
    }

    result = sub_100015F68(v47);
LABEL_7:
    ++v20;
    v21 += 40;
    if (v45 == v20)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t Optional.tryUnwrap(_:file:line:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v20 = a5;
  v21._countAndFlagsBits = a1;
  v21._object = a2;
  v11 = *(a6 - 8);
  __chkstk_darwin(a1);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v15, v14);
  v16 = *(a6 + 16);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v13, 1, v16) != 1)
  {
    return (*(v17 + 32))(a7, v13, v16);
  }

  (*(v11 + 8))(v13, a6);
  v22 = a3;
  v23 = a4;

  v25._countAndFlagsBits = 58;
  v25._object = 0xE100000000000000;
  sub_1000C52E4(v25);
  v24 = v20;
  v26._countAndFlagsBits = sub_1000C5BE4();
  sub_1000C52E4(v26);

  v27._countAndFlagsBits = 58;
  v27._object = 0xE100000000000000;
  sub_1000C52E4(v27);
  sub_1000C52E4(v21);
  sub_1000C4FC4();
  sub_100018BFC();
  swift_allocError();
  sub_1000C4FB4();
  return swift_willThrow();
}

unint64_t sub_10008F480(uint64_t a1)
{
  result = sub_1000129AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10008F4AC()
{
  result = qword_1000FD9F8;
  if (!qword_1000FD9F8)
  {
    sub_1000C42A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD9F8);
  }

  return result;
}

unint64_t sub_10008F548()
{
  result = qword_1000FDA00;
  if (!qword_1000FDA00)
  {
    sub_1000C1FD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDA00);
  }

  return result;
}

uint64_t sub_10008F5A0@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v73 = sub_1000C1A94();
  v66 = *(v73 - 8);
  __chkstk_darwin(v73);
  v77 = v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1000C1F84();
  v61 = *(v65 - 8);
  __chkstk_darwin(v65);
  v64 = (v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_1000C1C04();
  v4 = *(v3 - 8);
  v75 = v3;
  v76 = v4;
  v5 = __chkstk_darwin(v3);
  v7 = (v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v78 = v53 - v8;
  v57 = sub_1000C1C74();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v60 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C5274();
  __chkstk_darwin(v10 - 8);
  v11 = sub_1000C14E4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000C4CF4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C4CB4();
  sub_1000C4CE4();
  (*(v16 + 8))(v18, v15);
  sub_1000C5254();
  v19 = v74;
  sub_1000C51E4();
  if (v19)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v21 = v66;
  (*(v12 + 8))(v14, v11);
  sub_1000C1AA4();
  result = sub_1000C1C54();
  v72 = *(result + 16);
  if (v72)
  {
    v22 = 0;
    v23 = v76;
    v70 = result + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v69 = v76 + 16;
    v68 = v76 + 88;
    v67 = enum case for StyleSheet.Rule.qualified(_:);
    v59 = enum case for StyleSheet.Rule.atKeyword(_:);
    v74 = (v76 + 8);
    v63 = (v76 + 96);
    v53[0] = enum case for StyleSheet.Rule.atKeyword(_:);
    v55 = (v61 + 104);
    v62 = (v21 + 1);
    v53[1] = enum case for StyleSheet.Rule.qualified(_:);
    v54 = v61 + 32;
    v66 = _swiftEmptyArrayStorage;
    v24 = v73;
    v25 = v75;
    v71 = result;
    while (1)
    {
      if (v22 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v26 = *(v23 + 16);
      v27 = v78;
      v26(v78, v70 + *(v23 + 72) * v22, v25);
      v26(v7, v27, v25);
      v28 = (*(v23 + 88))(v7, v25);
      if (v28 == v67)
      {
        break;
      }

      if (v28 == v59)
      {
        (*v63)(v7, v25);
        v33 = *v7;
        v34 = v7[1];
        v36 = v7[2];
        v35 = v7[3];
        v42 = sub_10008FEA4(v7[4]);

        v43 = v64;
        *v64 = v33;
        v43[1] = v34;
        v43[2] = v36;
        v43[3] = v35;
        v43[4] = v42;
        goto LABEL_15;
      }

      sub_100092B9C();
      swift_allocError();
      *v37 = 0;
      swift_willThrow();
      (*v74)(v7, v25);
      v38 = v77;
      sub_1000C4C34();
      v39 = sub_1000C1A84();
      v40 = sub_1000C5514();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "Failed to unpack rule from LinkPresentation StyleSheet", v41, 2u);

        (*v62)(v77, v24);
      }

      else
      {

        (*v62)(v38, v24);
      }

      v25 = v75;
      (*v74)(v78, v75);
LABEL_7:
      ++v22;
      result = v71;
      v23 = v76;
      if (v72 == v22)
      {
        goto LABEL_21;
      }
    }

    (*v63)(v7, v25);
    v29 = *v7;
    v30 = v7[1];
    v31 = sub_10008FEA4(v7[2]);

    v32 = v64;
    *v64 = v29;
    v32[1] = v30;
    v32[2] = v31;
LABEL_15:
    (*v55)();
    v44 = v66;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v75;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v44 = sub_100045540(0, v44[2] + 1, 1, v44);
    }

    v24 = v73;
    v47 = v44[2];
    v46 = v44[3];
    v66 = v44;
    if (v47 >= v46 >> 1)
    {
      v66 = sub_100045540((v46 > 1), v47 + 1, 1, v66);
    }

    (*v74)();
    v48 = v65;
    v49 = v66;
    v66[2] = v47 + 1;
    (*(v61 + 32))(v49 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v47, v64, v48);
    goto LABEL_7;
  }

  v66 = _swiftEmptyArrayStorage;
LABEL_21:

  if (!v66[2])
  {
  }

  v50 = v57;
  v51 = v56;
  v52 = v60;
  sub_1000C1FB4();
  return (*(v51 + 8))(v52, v50);
}

void *sub_10008FEA4(uint64_t a1)
{
  v15 = sub_1000C1F74();
  v3 = *(v15 - 8);
  __chkstk_darwin(v15);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 16);
  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = *(sub_1000C1BF4() - 8);
  v14[1] = v3 + 32;
  v8 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = *(v7 + 72);
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    sub_1000900A8(v8, v5);
    if (v1)
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_100045518(0, v10[2] + 1, 1, v10);
    }

    v12 = v10[2];
    v11 = v10[3];
    if (v12 >= v11 >> 1)
    {
      v10 = sub_100045518((v11 > 1), v12 + 1, 1, v10);
    }

    v10[2] = v12 + 1;
    (*(v3 + 32))(v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v5, v15);
    v8 += v9;
    if (!--v6)
    {
      return v10;
    }
  }

  return v10;
}

uint64_t sub_1000900A8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v115 = a2;
  v116 = a1;
  v2 = sub_1000124CC(&qword_1000FDA10, &qword_1000CF550);
  __chkstk_darwin(v2 - 8);
  v100 = &v96 - v3;
  v4 = sub_1000124CC(&qword_1000FDA18, &qword_1000CF558);
  __chkstk_darwin(v4 - 8);
  v102 = &v96 - v5;
  v6 = sub_1000C1F04();
  v98 = *(v6 - 8);
  v99 = v6;
  __chkstk_darwin(v6);
  v97 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1000C1B34();
  v101 = *(v103 - 8);
  __chkstk_darwin(v103);
  v104 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C1BD4();
  v106 = *(v9 - 8);
  v107 = v9;
  __chkstk_darwin(v9);
  v105 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000C1BE4();
  v110 = *(v11 - 8);
  v111 = v11;
  v12 = __chkstk_darwin(v11);
  v108 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v109 = &v96 - v14;
  v15 = sub_1000C1C64();
  v113 = *(v15 - 8);
  v114 = v15;
  __chkstk_darwin(v15);
  v112 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000124CC(&qword_1000FDA20, &qword_1000CF560);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v96 - v21;
  v23 = sub_1000C1C44();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v96 - v28;
  v30 = sub_1000C1BF4();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v33, v116, v30);
  v34 = (*(v31 + 88))(v33, v30);
  if (v34 == enum case for StyleSheet.Rule.Declaration.invalid(_:))
  {
    (*(v31 + 96))(v33, v30);
    v35 = *(v33 + 2);
    v36 = *(v33 + 3);
    v37 = v115;
    *v115 = *v33;
    *(v37 + 2) = v35;
    *(v37 + 3) = v36;
    v38 = &enum case for StyleSheet.Rule.Declaration.invalid(_:);
LABEL_13:
    v49 = *v38;
    v50 = sub_1000C1F74();
    return (*(*(v50 - 8) + 104))(v37, v49, v50);
  }

  if (v34 == enum case for StyleSheet.Rule.Declaration.color(_:))
  {
    (*(v31 + 96))(v33, v30);
    (*(v24 + 32))(v29, v33, v23);
    sub_1000C1C14();
    sub_1000C1C34();
    sub_1000C1C24();
    v37 = v115;
    sub_1000C1F94();
    (*(v24 + 8))(v29, v23);
    v38 = &enum case for StyleSheet.Rule.Declaration.color(_:);
    goto LABEL_13;
  }

  if (v34 == enum case for StyleSheet.Rule.Declaration.backgroundColor(_:))
  {
    (*(v31 + 96))(v33, v30);
    sub_100092BF0(v33, v22);
    sub_100018F28(v22, v20, &qword_1000FDA20, &qword_1000CF560);
    if ((*(v24 + 48))(v20, 1, v23) == 1)
    {
      sub_100018F90(v22, &qword_1000FDA20, &qword_1000CF560);
      sub_100018F90(v20, &qword_1000FDA20, &qword_1000CF560);
      v39 = sub_1000C1FA4();
      v37 = v115;
      (*(*(v39 - 8) + 56))(v115, 1, 1, v39);
    }

    else
    {
      (*(v24 + 32))(v27, v20, v23);
      sub_1000C1C14();
      sub_1000C1C34();
      sub_1000C1C24();
      v37 = v115;
      sub_1000C1F94();
      (*(v24 + 8))(v27, v23);
      sub_100018F90(v22, &qword_1000FDA20, &qword_1000CF560);
      v48 = sub_1000C1FA4();
      (*(*(v48 - 8) + 56))(v37, 0, 1, v48);
    }

    v38 = &enum case for StyleSheet.Rule.Declaration.backgroundColor(_:);
    goto LABEL_13;
  }

  if (v34 == enum case for StyleSheet.Rule.Declaration.textAlign(_:))
  {
    (*(v31 + 96))(v33, v30);
    v41 = v112;
    v40 = v113;
    v42 = v114;
    (*(v113 + 32))(v112, v33, v114);
    v43 = (*(v40 + 88))(v41, v42);
    if (v43 != enum case for StyleSheet.TextAlign.left(_:))
    {
      v62 = v115;
      if (v43 == enum case for StyleSheet.TextAlign.center(_:))
      {
        v63 = enum case for StyleSheet.TextAlign.center(_:);
        v64 = sub_1000C1FC4();
        (*(*(v64 - 8) + 104))(v62, v63, v64);
      }

      else
      {
        v71 = enum case for StyleSheet.TextAlign.right(_:);
        v72 = v43;
        v73 = sub_1000C1FC4();
        v74 = *(*(v73 - 8) + 104);
        if (v72 != v71)
        {
          v74(v62, enum case for StyleSheet.TextAlign.left(_:), v73);
          v80 = enum case for StyleSheet.Rule.Declaration.textAlign(_:);
          v81 = sub_1000C1F74();
          (*(*(v81 - 8) + 104))(v62, v80, v81);
          return (*(v40 + 8))(v41, v42);
        }

        v74(v62, enum case for StyleSheet.TextAlign.right(_:), v73);
      }

      v75 = enum case for StyleSheet.Rule.Declaration.textAlign(_:);
      v76 = sub_1000C1F74();
      return (*(*(v76 - 8) + 104))(v62, v75, v76);
    }

    v44 = enum case for StyleSheet.TextAlign.left(_:);
    v45 = sub_1000C1FC4();
    v46 = v115;
    (*(*(v45 - 8) + 104))(v115, v44, v45);
    v47 = &enum case for StyleSheet.Rule.Declaration.textAlign(_:);
    goto LABEL_34;
  }

  v52 = v117;
  if (v34 == enum case for StyleSheet.Rule.Declaration.font(_:))
  {
    (*(v31 + 96))(v33, v30);
    v54 = v109;
    v53 = v110;
    v55 = v111;
    (*(v110 + 32))(v109, v33, v111);
    v56 = v108;
    (*(v53 + 16))(v108, v54, v55);
    v57 = (*(v53 + 88))(v56, v55);
    if (v57 == enum case for StyleSheet.Font.specified(_:))
    {
      (*(v53 + 96))(v56, v55);
      v59 = v105;
      v58 = v106;
      v60 = v56;
      v61 = v107;
      (*(v106 + 32))(v105, v60, v107);
      v46 = v115;
      sub_1000910C0(v115);
      if (v52)
      {
        (*(v58 + 8))(v59, v61);
        return (*(v53 + 8))(v54, v55);
      }

      (*(v58 + 8))(v59, v61);
      (*(v53 + 8))(v54, v55);
      v82 = enum case for StyleSheet.Font.specified(_:);
      v83 = sub_1000C1F64();
      (*(*(v83 - 8) + 104))(v46, v82, v83);
      v47 = &enum case for StyleSheet.Rule.Declaration.font(_:);
      goto LABEL_34;
    }

    if (v57 == enum case for StyleSheet.Font.system(_:))
    {
      (*(v53 + 96))(v56, v55);
      v65 = v101;
      v66 = v104;
      v67 = v56;
      v68 = v103;
      (*(v101 + 32))(v104, v67, v103);
      v69 = v100;
      (*(v65 + 16))(v100, v66, v68);
      (*(v65 + 56))(v69, 0, 1, v68);
      v70 = v102;
      sub_1000914D4(v69, v102);
      v117 = v52;
      if (v52)
      {
        sub_100018F90(v69, &qword_1000FDA10, &qword_1000CF550);
        (*(v65 + 8))(v66, v68);
        return (*(v53 + 8))(v54, v55);
      }

      else
      {
        sub_100018F90(v69, &qword_1000FDA10, &qword_1000CF550);
        v87 = v98;
        v86 = v99;
        if ((*(v98 + 48))(v70, 1, v99) == 1)
        {
          sub_100018F90(v70, &qword_1000FDA18, &qword_1000CF558);
          sub_100092B9C();
          swift_allocError();
          *v88 = 7;
          swift_willThrow();
          (*(v65 + 8))(v104, v68);
          return (*(v53 + 8))(v54, v55);
        }

        else
        {
          (*(v65 + 8))(v104, v68);
          (*(v53 + 8))(v54, v55);
          v89 = *(v87 + 32);
          v90 = v97;
          v89(v97, v70, v86);
          v91 = v115;
          v89(v115, v90, v86);
          v92 = enum case for StyleSheet.Font.system(_:);
          v93 = sub_1000C1F64();
          (*(*(v93 - 8) + 104))(v91, v92, v93);
          v94 = enum case for StyleSheet.Rule.Declaration.font(_:);
          v95 = sub_1000C1F74();
          return (*(*(v95 - 8) + 104))(v91, v94, v95);
        }
      }
    }

    else
    {
      sub_100092B9C();
      swift_allocError();
      *v78 = 2;
      swift_willThrow();
      v79 = *(v53 + 8);
      v79(v54, v55);
      return (v79)(v56, v55);
    }
  }

  else
  {
    if (v34 == enum case for StyleSheet.Rule.Declaration.backgroundImage(_:))
    {
      (*(v31 + 96))(v33, v30);
      v46 = v115;
      *v115 = *v33;
      v47 = &enum case for StyleSheet.Rule.Declaration.backgroundImage(_:);
LABEL_34:
      v84 = *v47;
      v85 = sub_1000C1F74();
      return (*(*(v85 - 8) + 104))(v46, v84, v85);
    }

    sub_100092B9C();
    swift_allocError();
    *v77 = 1;
    swift_willThrow();
    return (*(v31 + 8))(v33, v30);
  }
}

uint64_t sub_1000910C0@<X0>(uint64_t a1@<X8>)
{
  v27[1] = a1;
  v2 = sub_1000124CC(&qword_1000FDA28, &qword_1000CF568);
  __chkstk_darwin(v2 - 8);
  v30 = v27 - v3;
  v4 = sub_1000124CC(&qword_1000FDA30, &qword_1000CF570);
  __chkstk_darwin(v4 - 8);
  v29 = v27 - v5;
  v6 = sub_1000124CC(&qword_1000FDA38, &qword_1000CF578);
  __chkstk_darwin(v6 - 8);
  v28 = v27 - v7;
  v8 = sub_1000124CC(&qword_1000FDA40, &qword_1000CF580);
  __chkstk_darwin(v8 - 8);
  v10 = v27 - v9;
  v11 = sub_1000124CC(&qword_1000FDA48, &qword_1000CF588);
  __chkstk_darwin(v11 - 8);
  v13 = v27 - v12;
  v14 = sub_1000124CC(&qword_1000FDA50, &qword_1000CF590);
  __chkstk_darwin(v14 - 8);
  v16 = v27 - v15;
  v17 = sub_1000124CC(&qword_1000FDA58, &qword_1000CF598);
  __chkstk_darwin(v17 - 8);
  v19 = v27 - v18;
  v20 = sub_1000124CC(&qword_1000FDA60, &qword_1000CF5A0);
  __chkstk_darwin(v20 - 8);
  v22 = v27 - v21;
  sub_1000C1B84();
  sub_10009181C(v19, v22);
  result = sub_100018F90(v19, &qword_1000FDA58, &qword_1000CF598);
  if (!v1)
  {
    v25 = v28;
    v24 = v29;
    v26 = v30;
    sub_1000C1BB4();
    sub_10009213C(v13, v16);
    sub_100018F90(v13, &qword_1000FDA48, &qword_1000CF588);
    sub_1000C1B94();
    sub_100092484(v25, v10);
    sub_100018F90(v25, &qword_1000FDA38, &qword_1000CF578);
    sub_1000C1BC4();
    sub_1000927CC(v26, v24);
    sub_100018F90(v26, &qword_1000FDA28, &qword_1000CF568);
    sub_1000C1BA4();
    return sub_1000C1F54();
  }

  return result;
}

uint64_t sub_1000914D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000124CC(&qword_1000FDA18, &qword_1000CF558);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1000124CC(&qword_1000FDA10, &qword_1000CF550);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_1000C1B34();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018F28(a1, v9, &qword_1000FDA10, &qword_1000CF550);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100018F90(v9, &qword_1000FDA10, &qword_1000CF550);
    v14 = sub_1000C1F04();
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_1000C1B24();
    sub_1000C1EF4();
    v16 = sub_1000C1F04();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v6, 1, v16) == 1)
    {
      sub_100018F90(v6, &qword_1000FDA18, &qword_1000CF558);
      sub_100092B9C();
      swift_allocError();
      *v18 = 7;
      swift_willThrow();
      return (*(v11 + 8))(v13, v10);
    }

    else
    {
      (*(v11 + 8))(v13, v10);
      (*(v17 + 32))(a2, v6, v16);
      return (*(v17 + 56))(a2, 0, 1, v16);
    }
  }
}

uint64_t sub_10009181C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v73 = a1;
  v72 = a2;
  v2 = sub_1000124CC(&qword_1000FDA68, &qword_1000CF5A8);
  __chkstk_darwin(v2 - 8);
  v70 = &v59 - v3;
  v71 = sub_1000C1EB4();
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v65 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000C1AE4();
  v67 = *(v5 - 8);
  v68 = v5;
  __chkstk_darwin(v5);
  v66 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000124CC(&qword_1000FDA70, &qword_1000CF5B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v59 - v8;
  v10 = sub_1000C1ED4();
  v63 = *(v10 - 8);
  v64 = v10;
  __chkstk_darwin(v10);
  v60 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000C1B04();
  v61 = *(v12 - 8);
  v62 = v12;
  __chkstk_darwin(v12);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000124CC(&qword_1000FDA58, &qword_1000CF598);
  __chkstk_darwin(v15 - 8);
  v17 = &v59 - v16;
  v18 = sub_1000C1B14();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = (&v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v24 = &v59 - v23;
  sub_100018F28(v73, v17, &qword_1000FDA58, &qword_1000CF598);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_100018F90(v17, &qword_1000FDA58, &qword_1000CF598);
    v25 = sub_1000C1EE4();
    return (*(*(v25 - 8) + 56))(v72, 1, 1, v25);
  }

  (*(v19 + 32))(v24, v17, v18);
  (*(v19 + 16))(v22, v24, v18);
  v27 = (*(v19 + 88))(v22, v18);
  if (v27 == enum case for StyleSheet.Font.Size.specified(_:))
  {
    (*(v19 + 96))(v22, v18);
    v28 = *v22;
    v29 = sub_1000124CC(&qword_1000FDA78, &qword_1000CF5B8);
    v31 = v66;
    v30 = v67;
    v32 = v22 + *(v29 + 48);
    v33 = v68;
    (*(v67 + 32))(v66, v32, v68);
    sub_1000C1AD4();
    v34 = v70;
    sub_1000C1EA4();
    v35 = v69;
    v36 = v71;
    if ((*(v69 + 48))(v34, 1, v71) == 1)
    {
      sub_100018F90(v34, &qword_1000FDA68, &qword_1000CF5A8);
      sub_100092B9C();
      swift_allocError();
      *v37 = 4;
      swift_willThrow();
      (*(v30 + 8))(v31, v33);
      return (*(v19 + 8))(v24, v18);
    }

    (*(v30 + 8))(v31, v33);
    (*(v19 + 8))(v24, v18);
    v44 = *(v35 + 32);
    v45 = v65;
    v44(v65, v34, v36);
    v46 = *(sub_1000124CC(&qword_1000FDA80, &unk_1000CF5C0) + 48);
    v47 = v72;
    *v72 = v28;
    v44(&v47[v46], v45, v36);
    v48 = enum case for StyleSheet.Font.Size.specified(_:);
    v49 = sub_1000C1EE4();
    v50 = *(v49 - 8);
    (*(v50 + 104))(v47, v48, v49);
    return (*(v50 + 56))(v47, 0, 1, v49);
  }

  else if (v27 == enum case for StyleSheet.Font.Size.absolute(_:))
  {
    (*(v19 + 96))(v22, v18);
    v38 = v61;
    v39 = v22;
    v40 = v62;
    (*(v61 + 32))(v14, v39, v62);
    sub_1000C1AF4();
    sub_1000C1EC4();
    v42 = v63;
    v41 = v64;
    if ((*(v63 + 48))(v9, 1, v64) == 1)
    {
      sub_100018F90(v9, &qword_1000FDA70, &qword_1000CF5B0);
      sub_100092B9C();
      swift_allocError();
      *v43 = 3;
      swift_willThrow();
      (*(v38 + 8))(v14, v40);
      return (*(v19 + 8))(v24, v18);
    }

    (*(v38 + 8))(v14, v40);
    (*(v19 + 8))(v24, v18);
    v53 = *(v42 + 32);
    v54 = v60;
    v53(v60, v9, v41);
    v55 = v72;
    v53(v72, v54, v41);
    v56 = enum case for StyleSheet.Font.Size.absolute(_:);
    v57 = sub_1000C1EE4();
    v58 = *(v57 - 8);
    (*(v58 + 104))(v55, v56, v57);
    return (*(v58 + 56))(v55, 0, 1, v57);
  }

  else
  {
    sub_100092B9C();
    swift_allocError();
    *v51 = 5;
    swift_willThrow();
    v52 = *(v19 + 8);
    v52(v24, v18);
    return (v52)(v22, v18);
  }
}

uint64_t sub_10009213C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000124CC(&qword_1000FDA50, &qword_1000CF590);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1000124CC(&qword_1000FDA48, &qword_1000CF588);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_1000C1B54();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018F28(a1, v9, &qword_1000FDA48, &qword_1000CF588);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100018F90(v9, &qword_1000FDA48, &qword_1000CF588);
    v14 = sub_1000C1F24();
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_1000C1B44();
    sub_1000C1F14();
    v16 = sub_1000C1F24();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v6, 1, v16) == 1)
    {
      sub_100018F90(v6, &qword_1000FDA50, &qword_1000CF590);
      sub_100092B9C();
      swift_allocError();
      *v18 = 9;
      swift_willThrow();
      return (*(v11 + 8))(v13, v10);
    }

    else
    {
      (*(v11 + 8))(v13, v10);
      (*(v17 + 32))(a2, v6, v16);
      return (*(v17 + 56))(a2, 0, 1, v16);
    }
  }
}

uint64_t sub_100092484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000124CC(&qword_1000FDA40, &qword_1000CF580);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1000124CC(&qword_1000FDA38, &qword_1000CF578);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_1000C1AC4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018F28(a1, v9, &qword_1000FDA38, &qword_1000CF578);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100018F90(v9, &qword_1000FDA38, &qword_1000CF578);
    v14 = sub_1000C1E94();
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_1000C1AB4();
    sub_1000C1E84();
    v16 = sub_1000C1E94();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v6, 1, v16) == 1)
    {
      sub_100018F90(v6, &qword_1000FDA40, &qword_1000CF580);
      sub_100092B9C();
      swift_allocError();
      *v18 = 9;
      swift_willThrow();
      return (*(v11 + 8))(v13, v10);
    }

    else
    {
      (*(v11 + 8))(v13, v10);
      (*(v17 + 32))(a2, v6, v16);
      return (*(v17 + 56))(a2, 0, 1, v16);
    }
  }
}

uint64_t sub_1000927CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000124CC(&qword_1000FDA30, &qword_1000CF570);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1000124CC(&qword_1000FDA28, &qword_1000CF568);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_1000C1B74();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018F28(a1, v9, &qword_1000FDA28, &qword_1000CF568);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100018F90(v9, &qword_1000FDA28, &qword_1000CF568);
    v14 = sub_1000C1F44();
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_1000C1B64();
    sub_1000C1F34();
    v16 = sub_1000C1F44();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v6, 1, v16) == 1)
    {
      sub_100018F90(v6, &qword_1000FDA30, &qword_1000CF570);
      sub_100092B9C();
      swift_allocError();
      *v18 = 8;
      swift_willThrow();
      return (*(v11 + 8))(v13, v10);
    }

    else
    {
      (*(v11 + 8))(v13, v10);
      (*(v17 + 32))(a2, v6, v16);
      return (*(v17 + 56))(a2, 0, 1, v16);
    }
  }
}

unint64_t sub_100092B9C()
{
  result = qword_1000FDA08;
  if (!qword_1000FDA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDA08);
  }

  return result;
}

uint64_t sub_100092BF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FDA20, &qword_1000CF560);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for StyleSheetUnpackerErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StyleSheetUnpackerErrors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100092DB4()
{
  result = qword_1000FDA88;
  if (!qword_1000FDA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDA88);
  }

  return result;
}

double sub_100092E08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_100099FF8(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_10001D804(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_100092E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100099FF8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

void _AttributedString.init(fromNSAttributedString:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000C3D24();
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 string];
  if (!v7)
  {
    sub_1000C5224();
    v7 = sub_1000C51F4();
  }

  sub_1000C5224();
  v21 = _swiftEmptyArrayStorage;
  v20 = 0;
  v8 = [v7 length];
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  v15 = v4;
  v16 = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = &v20;
  *(v10 + 24) = &v21;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100046D10;
  *(v11 + 24) = v10;
  aBlock[4] = sub_100099F44;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009771C;
  aBlock[3] = &unk_1000F56D8;
  v12 = _Block_copy(aBlock);

  [a1 enumerateAttributesInRange:0 options:v9 usingBlock:{0, v12}];
  _Block_release(v12);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v20)
  {
    swift_errorRetain();

    swift_willThrow();
  }

  else
  {

    v13 = v18;
    sub_1000C3D14();

    if (!v13)
    {
      (*(v17 + 32))(v16, v6, v15);
    }
  }
}

unint64_t sub_1000931CC(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v23[0] = result;
      v23[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v23 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v23;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v23 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1000C5984();
        v3 = v22;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v24 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  sub_10009A3F4(result, a2, 10);
  v6 = v20;
  v19 = v21;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_1000934CC(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v28[0] = result;
      v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v28 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v28;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v28 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1000C5984();
        v3 = v27;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v29 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  sub_10009A978(result, a2, 10);
  v6 = v25;
  v24 = v26;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}