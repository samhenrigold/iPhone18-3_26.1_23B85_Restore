uint64_t *sub_1C98B2718@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *result * a2;
  if ((*result * a2) >> 64 == v3 >> 63)
  {
    v4 = result[2];
    *a3 = v3;
    a3[1] = result[1];
    a3[2] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C98B2758(uint64_t a1)
{

  return sub_1C9A938F8();
}

void sub_1C98B27F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v32 = v31;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  (*(v25 + 16))(v27, v25);
  (*(v23 + 40))(v29, AssociatedTypeWitness, v23);
  (*(v32 + 8))(v35, AssociatedTypeWitness);
  sub_1C97AEB5C();
}

void sub_1C98B299C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1C9835358(AssociatedTypeWitness, v5, v6, v7, &unk_1C9AFDF2C);
  v12 = sub_1C9835358(v8, v9, v10, v11, &unk_1C9AFDF34);
  sub_1C9835358(v12, v13, v14, v15, &unk_1C9AFDF3C);
  sub_1C98B5E40();
}

uint64_t sub_1C98B2AB0()
{

  v0 = sub_1C97DB3E0();

  return v0;
}

uint64_t sub_1C98B2B18(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v6 = v2[1];
  v5[1] = *v2;
  v5[2] = v6;
  v7 = v2[3];
  v5[3] = v2[2];
  v5[4] = v7;
  v12[0] = a1;
  v12[1] = a2;
  v10[2] = sub_1C98B7280;
  v10[3] = v5;
  v10[4] = v12;
  sub_1C97E82EC(v2, v11, &qword_1EC3C78E8, &qword_1C9AAEC40);
  v8 = sub_1C97E3314(a1, a2, sub_1C98702BC, v10);

  return v8;
}

void sub_1C98B2C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_1C97AE9DC();
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v34 = v58 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = (*(v35 + 16))(v36, v35);
  (*(v30 + 16))(v34, v20, v26);
  v38 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v26;
  *(v39 + 24) = v24;
  (*(v30 + 32))(v39 + v38, v34, v26);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = sub_1C97AEA9C(AssociatedTypeWitness, v41, v42, v43, &unk_1C9AFD9F8);
  v48 = sub_1C97AEA9C(v44, v45, v46, v47, &unk_1C9AFDA00);
  v52 = sub_1C97AEA9C(v48, v49, v50, v51, &unk_1C9AFDA08);
  v58[0] = AssociatedTypeWitness;
  v58[1] = v44;
  v58[2] = v48;
  v58[3] = v52;
  v53 = type metadata accessor for SharedSoundPrintK.Configuration(0, v58);
  v55 = type metadata accessor for SharedSoundPrintK.Instance(v54);
  WitnessTable = swift_getWitnessTable();
  sub_1C99D6B34(v28, v37, sub_1C98B70A8, v39, v53, v55, WitnessTable, &a10);

  sub_1C97AEB5C();
}

void sub_1C98B2E20()
{
  sub_1C97AEB94();
  v4 = sub_1C98B7750(v3);
  v5 = (*(v2 + 16))(v4, v2);
  v6 = sub_1C98BBF7C(v5);
  v8 = v7;

  if (!v1)
  {
    sub_1C97AA878();
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    *(v9 + 24) = v8;
    sub_1C97AA878();
    v10 = swift_allocObject();
    *(v10 + 16) = v0;
    *(v10 + 24) = v2;
    sub_1C97A7DFC();
    v11 = swift_allocObject();
    v11[2] = sub_1C98B75D0;
    v11[3] = v10;
    v11[4] = sub_1C98B75B8;
    v11[5] = v9;
    sub_1C97AA878();
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1C98B75A0;
    *(v12 + 24) = v11;
    swift_unknownObjectRetain();

    v13 = sub_1C98B7774();
    sub_1C97A2CEC(v13, v14);
    sub_1C97A2CEC(&qword_1EC3CB170, &qword_1C9AAEC08);
    sub_1C98B7600(&qword_1EC3CB178);
    sub_1C98B7700();
    sub_1C9A92048();
  }

  sub_1C97AEB5C();
}

void sub_1C98B2FA8()
{
  sub_1C97AEB94();
  v4 = sub_1C98B7750(v3);
  v5 = (*(v2 + 16))(v4, v2);
  v6 = sub_1C98BBF7C(v5);
  v8 = v7;

  if (!v1)
  {
    sub_1C97AA878();
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    *(v9 + 24) = v8;
    sub_1C97AA878();
    v10 = swift_allocObject();
    *(v10 + 16) = v0;
    *(v10 + 24) = v2;
    sub_1C97A7DFC();
    v11 = swift_allocObject();
    v11[2] = sub_1C98B75D0;
    v11[3] = v10;
    v11[4] = sub_1C98B75B8;
    v11[5] = v9;
    sub_1C97AA878();
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1C98B75A0;
    *(v12 + 24) = v11;
    swift_unknownObjectRetain();

    v13 = sub_1C98B7774();
    sub_1C97A2CEC(v13, v14);
    sub_1C97A2CEC(&qword_1EC3CB170, &qword_1C9AAEC08);
    sub_1C98B7600(qword_1EC3C4AF8);
    sub_1C98B7700();
    sub_1C9A92048();
  }

  sub_1C97AEB5C();
}

void sub_1C98B3130(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = (*(a2 + 16))(ObjectType, a2);
  v7 = sub_1C98BBF7C(v6);
  v9 = v8;

  if (!v2)
  {
    sub_1C97AA878();
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = v9;
    sub_1C97AA878();
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;
    sub_1C97A7DFC();
    v12 = swift_allocObject();
    v12[2] = sub_1C98B75D0;
    v12[3] = v11;
    v12[4] = sub_1C98B75B8;
    v12[5] = v10;
    sub_1C97AA878();
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1C98B75A0;
    *(v13 + 24) = v12;
    swift_unknownObjectRetain();

    sub_1C97A2CEC(&qword_1EC3CB180, &qword_1C9AAEC10);
    sub_1C97A2CEC(&qword_1EC3CB170, &qword_1C9AAEC08);
    sub_1C97AE9EC();
    sub_1C97AE67C(v14, &qword_1EC3CB180, &qword_1C9AAEC10, v15);
    sub_1C9A92048();
  }
}

void sub_1C98B32F4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = (*(a2 + 16))(ObjectType, a2);
  v7 = sub_1C98BBF7C(v6);
  v9 = v8;

  if (!v2)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;
    v12 = swift_allocObject();
    v12[2] = sub_1C9834F38;
    v12[3] = v11;
    v12[4] = sub_1C9834F1C;
    v12[5] = v10;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1C98B706C;
    *(v13 + 24) = v12;
    swift_unknownObjectRetain();

    sub_1C97A2CEC(&qword_1EC3C8A20, &qword_1C9AA4F20);
    sub_1C97A2CEC(&qword_1EC3CB170, &qword_1C9AAEC08);
    sub_1C97AE67C(&qword_1EC3C8A48, &qword_1EC3C8A20, &qword_1C9AA4F20, MEMORY[0x1E695BD60]);
    sub_1C9A92048();
  }
}

void sub_1C98B3568()
{
  sub_1C97AEB48();
  WitnessTable = swift_getWitnessTable();
  sub_1C98B772C(WitnessTable);
}

BOOL sub_1C98B35FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_1C9A92438() & 1) != 0 && (v14[0] = a3, v14[1] = a4, v14[2] = a5, v14[3] = a6, v12 = type metadata accessor for SharedSoundPrintK.Configuration(0, v14), *(a1 + *(v12 + 52)) == *(a2 + *(v12 + 52))))
  {
    return *(a1 + *(v12 + 56)) == *(a2 + *(v12 + 56));
  }

  else
  {
    return 0;
  }
}

void sub_1C98B3698()
{
  sub_1C97AEB94();
  v14 = v0;
  v3 = v2;
  v5 = *(v4 + 16);
  v15 = *(v4 + 32);
  v16 = v5;
  v17[0] = v5;
  v17[1] = v15;
  v6 = type metadata accessor for SharedSoundPrintK.Configuration.CodingKeys(255, v17);
  sub_1C98B762C(v6);
  v7 = sub_1C9A93A78();
  sub_1C97AE9C8();
  v9 = v8;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v13 - v11;
  sub_1C97A5A8C(v3, v3[3]);
  sub_1C9A93DD8();
  LOBYTE(v17[0]) = 0;
  sub_1C9A93A18();
  if (!v1)
  {
    sub_1C98353B4(1);
    sub_1C98353B4(2);
  }

  (*(v9 + 8))(v12, v7);
  sub_1C97AEB5C();
}

uint64_t sub_1C98B3818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  v16[0] = a4;
  v16[1] = a5;
  v16[2] = a6;
  v16[3] = a7;
  result = type metadata accessor for SharedSoundPrintK.Configuration(0, v16);
  *(a8 + *(result + 52)) = a2;
  *(a8 + *(result + 56)) = a3;
  return result;
}

void sub_1C98B38C8()
{
  sub_1C97AEB94();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v39 = v11;
  sub_1C97AE9DC();
  v40 = v12;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C97AEAD8();
  v46 = v16 - v15;
  v47 = v14;
  v48 = v17;
  v49 = v18;
  v50 = v19;
  v20 = type metadata accessor for SharedSoundPrintK.Configuration.CodingKeys(255, &v47);
  sub_1C98B762C(v20);
  sub_1C9A93978();
  sub_1C97AE9C8();
  v42 = v22;
  v43 = v21;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v37 - v24;
  v45 = v8;
  v47 = v8;
  v48 = v6;
  v41 = v6;
  v49 = v4;
  v50 = v2;
  v26 = type metadata accessor for SharedSoundPrintK.Configuration(0, &v47);
  sub_1C97AE9C8();
  v38 = v27;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v37 - v29;
  sub_1C97A5A8C(v10, v10[3]);
  v44 = v25;
  sub_1C9A93DB8();
  if (v0)
  {
    sub_1C97A592C(v10);
  }

  else
  {
    v31 = v30;
    v32 = v40;
    LOBYTE(v47) = 0;
    v33 = v45;
    v34 = v43;
    sub_1C9A938F8();
    (*(v32 + 32))(v31, v46, v33);
    *&v31[*(v26 + 52)] = sub_1C9835400(1);
    v35 = sub_1C9835400(2);
    (*(v42 + 8))(v44, v34);
    *&v31[*(v26 + 56)] = v35;
    v36 = v38;
    (*(v38 + 16))(v39, v31, v26);
    sub_1C97A592C(v10);
    (*(v36 + 8))(v31, v26);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C98B3C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1C9807FAC(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_1C9807FAC(a2, a4);
}

uint64_t sub_1C98B3C70(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000001C9AD7ED0 == a2;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001C9AD7F10 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

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

unint64_t sub_1C98B3D44(char a1)
{
  if (a1)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000014;
  }
}

void sub_1C98B3D7C()
{
  sub_1C97AEB94();
  sub_1C97A2CEC(qword_1EC3CB1B8, &qword_1C9AAEC38);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C98B7774();
  sub_1C97A5A8C(v2, v3);
  sub_1C98B7154();
  sub_1C9A93DD8();
  sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
  sub_1C98B71A8(&qword_1EC3CE700, MEMORY[0x1E69E6458], MEMORY[0x1E69E6300]);
  sub_1C98B76A8();
  if (!v0)
  {
    sub_1C98B76A8();
  }

  v4 = sub_1C98B7720();
  v5(v4);
  sub_1C97AEB5C();
}

void sub_1C98B3EE8()
{
  sub_1C97C80D0();

  sub_1C97C80D0();
}

uint64_t sub_1C98B3F28()
{
  sub_1C9A93CC8();
  sub_1C97C80D0();
  sub_1C97C80D0();
  return sub_1C9A93D18();
}

void sub_1C98B3F80()
{
  sub_1C97AEB94();
  v1 = v0;
  v2 = sub_1C97A2CEC(&qword_1EC3CB1A8, &unk_1C9AAEC28);
  sub_1C97AE9C8();
  v4 = v3;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v8 - v6;
  sub_1C97A5A8C(v1, v1[3]);
  sub_1C98B7154();
  sub_1C9A93DB8();
  sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
  v9 = 0;
  sub_1C98B71A8(&qword_1EC3CBB00, MEMORY[0x1E69E6478], MEMORY[0x1E69E6330]);
  sub_1C98B7678();
  v9 = 1;
  sub_1C98B7678();
  (*(v4 + 8))(v7, v2);
  sub_1C97A592C(v1);
  sub_1C97AEB5C();
}

uint64_t sub_1C98B4144(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C98B4198(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1C98B4240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C98B3C70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C98B4268(uint64_t a1)
{
  v2 = sub_1C98B7154();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98B42A4(uint64_t a1)
{
  v2 = sub_1C98B7154();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C98B42E0(void *a1@<X8>)
{
  sub_1C98B3F80();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

uint64_t sub_1C98B4338()
{
  sub_1C9A93CC8();
  sub_1C98B3EE8();
  return sub_1C9A93D18();
}

uint64_t sub_1C98B4394()
{
  v1 = sub_1C97A2CEC(&qword_1EC3CB190, &qword_1C9AAEC18);
  sub_1C97AE9C8();
  v3 = v2;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  v7 = *(v0 + 16);
  v8 = swift_allocObject();
  v8[2] = sub_1C97AE650;
  v8[3] = v0;
  v8[4] = v7;

  sub_1C97A2CEC(&qword_1EC3CB198, &qword_1C9AAEC20);
  sub_1C97AE9EC();
  sub_1C97AE67C(v9, &qword_1EC3CB198, &qword_1C9AAEC20, v10);
  sub_1C98B7700();
  sub_1C9A91EF8();
  sub_1C97AE67C(&qword_1EC3CB1A0, &qword_1EC3CB190, &qword_1C9AAEC18, MEMORY[0x1E695C058]);
  v11 = sub_1C9A91F28();
  (*(v3 + 8))(v6, v1);
  return v11;
}

_DWORD *sub_1C98B4588(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((((*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v7 = a2 - v5;
    v8 = v6 & 0xFFFFFFF8;
    if ((v6 & 0xFFFFFFF8) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = v7 + 1;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    switch(v11)
    {
      case 1:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v12 = *(result + v6);
        if (!v12)
        {
          goto LABEL_22;
        }

LABEL_18:
        v13 = v12 - 1;
        if (v8)
        {
          v13 = 0;
          LODWORD(v8) = *result;
        }

        return (v5 + (v8 | v13) + 1);
      default:
LABEL_22:
        if (v5)
        {
          return sub_1C97ABF20(result, v5, v4);
        }

        return 0;
    }
  }

  return sub_1C97ABF20(result, v5, v4);
}

void sub_1C98B4694(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = a3 - v7;
    if (((((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
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
  }

  if (a2 <= v7)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:

          sub_1C97ACC50(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    if (((((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = a2 - v7;
    }

    else
    {
      v13 = 1;
    }

    if (((((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v14 = ~v7 + a2;
      bzero(a1, v8);
      *a1 = v14;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v13;
        break;
      case 2:
        *&a1[v8] = v13;
        break;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v8] = v13;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1C98B486C()
{
  result = qword_1EC3CB138;
  if (!qword_1EC3CB138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB138);
  }

  return result;
}

void sub_1C98B48E4(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v3 = a3[1];
  v6[0] = *a3;
  v6[1] = v3;
  v4 = a3[3];
  v6[2] = a3[2];
  v6[3] = v4;
  v5[2] = v6;
  sub_1C98B5494(a1, a2, sub_1C97E8400, v5);
}

void sub_1C98B4934(void *a1, uint64_t (*a2)(void *), void *a3)
{
  v63 = a3;
  v64 = a2;
  v59 = sub_1C97A2CEC(&qword_1EC3C6760, &qword_1C9A9C780);
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v48 - v4;
  v58 = sub_1C97A2CEC(&qword_1EC3C8A20, &qword_1C9AA4F20);
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v62 = &v48 - v5;
  v53 = sub_1C97A2CEC(&qword_1EC3CB140, &qword_1C9AAEBD8);
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v48 - v6;
  v7 = sub_1C97A2CEC(&qword_1EC3C7528, &qword_1C9AAEBE0);
  v54 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - v8;
  v10 = sub_1C97A2CEC(&qword_1EC3CB148, &qword_1C9AAEBE8);
  v55 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  v13 = sub_1C9A91748();
  v60 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  sub_1C97E82EC(a1, v67, &qword_1EC3CE610, &qword_1C9AAEBF0);
  LODWORD(v17) = 1182400512;
  v18 = [v16 initWithFloat_];
  v19 = v69;
  sub_1C999C710();
  if (v19)
  {
    sub_1C97DA1E0(a1, &qword_1EC3CE610, &qword_1C9AAEBF0);

    return;
  }

  v48 = v9;
  v49 = v7;
  v50 = v12;
  v51 = v10;
  v69 = v13;
  memcpy(__dst, a1, 0x41uLL);
  v20 = [v18 integerValue];

  __dst[9] = 1;
  __dst[10] = v20;
  v21 = v64(__dst);
  memcpy(v67, __dst, sizeof(v67));
  sub_1C97DA1E0(v67, &unk_1EC3C9940, &unk_1C9AA5510);
  v64 = v15;
  sub_1C9A91738();
  v65 = sub_1C98BF080();
  v22 = &unk_1C9A9C770;
  sub_1C97A2CEC(&unk_1EC3C7390, &unk_1C9A9C770);
  v23 = sub_1C97A2CEC(&qword_1EC3C7C80, &qword_1C9AB6790);
  sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390, &unk_1C9A9C770, MEMORY[0x1E695BED8]);
  v24 = v61;
  sub_1C9A91F68();

  v25 = a1[9];
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
    goto LABEL_10;
  }

  v28 = (v27 * 160) >> 64;
  v29 = 160 * v27;
  v22 = v60;
  v30 = v59;
  if (v28 != v29 >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v26 = __OFADD__(v29, 512);
  v31 = v29 + 512;
  if (v26)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v32 = a1[10];
  v33 = (v32 * 160) >> 64;
  v34 = 160 * v32;
  if (v33 != v34 >> 63)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v63 = v21;
  *(v24 + *(v59 + 60)) = v31;
  *(v24 + *(v30 + 64)) = v34;
  *(v24 + *(v30 + 68)) = v23;
  sub_1C97A2CEC(&qword_1EC3C8A38, &unk_1C9AA4F50);
  sub_1C97AE67C(&qword_1EC3C8A40, &qword_1EC3C6760, &qword_1C9A9C780, &unk_1C9AB2030);
  sub_1C9A91F68();
  sub_1C97DA1E0(v24, &qword_1EC3C6760, &qword_1C9A9C780);
  v23 = objc_autoreleasePoolPush();
  v21 = objc_autoreleasePoolPush();
  if (qword_1EC3C55D0 != -1)
  {
LABEL_13:
    swift_once();
  }

  v35 = swift_allocObject();
  *(v35 + 16) = 34;
  LOWORD(v65) = 34;
  v36 = MEMORY[0x1EEE9AC00](v35);
  *(&v48 - 4) = sub_1C9834EC4;
  *(&v48 - 3) = v36;
  *(&v48 - 2) = &v65;

  v37 = sub_1C97E2E88();

  objc_autoreleasePoolPop(v21);
  objc_autoreleasePoolPop(v23);
  v38 = v56;
  v39 = v62;
  sub_1C98B32F4(v37, &off_1F4937390);
  (*(v57 + 8))(v39, v58);

  sub_1C97AE67C(&qword_1EC3CB150, &qword_1EC3CB140, &qword_1C9AAEBD8, MEMORY[0x1E695BE28]);
  v40 = v48;
  v41 = v53;
  sub_1C9A91F68();
  (*(v52 + 8))(v38, v41);
  v65 = 0;
  v66 = 0xE000000000000000;
  sub_1C9A935B8();

  v65 = 0xD000000000000019;
  v66 = 0x80000001C9AD7EB0;
  sub_1C97AE3DC();
  v42 = sub_1C9A93A98();
  MEMORY[0x1CCA90230](v42);

  MEMORY[0x1CCA90230](8250, 0xE200000000000000);
  v43 = v50;
  sub_1C97DCAC0(v65, v66);

  (*(v54 + 8))(v40, v49);
  sub_1C97AE67C(&qword_1EC3CB158, &qword_1EC3CB148, &qword_1C9AAEBE8, MEMORY[0x1E695BCC0]);
  v44 = v51;
  sub_1C9A92008();
  sub_1C97A2CEC(&qword_1EC3CB160, &unk_1C9AAEBF8);
  swift_allocObject();
  v45 = sub_1C98E3778();
  (*(v55 + 8))(v43, v44);
  v65 = v45;
  sub_1C97AE67C(&qword_1EC3CB168, &qword_1EC3CB160, &unk_1C9AAEBF8, &unk_1C9AB4B80);
  v46 = sub_1C9A91F28();

  v47 = (v22)[1](v64, v69);
  type metadata accessor for SharedSoundPrintK.Instance(v47);
  *(swift_allocObject() + 16) = v46;
}

void sub_1C98B5494(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v66 = a4;
  v69 = a3;
  v61 = a2;
  v63 = a1;
  v62 = sub_1C97A2CEC(&qword_1EC3C6760, &qword_1C9A9C780);
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v48 - v5;
  v6 = sub_1C97A2CEC(&qword_1EC3C8A20, &qword_1C9AA4F20);
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v48 - v7;
  v8 = sub_1C97A2CEC(&qword_1EC3CB140, &qword_1C9AAEBD8);
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v48 - v9;
  v10 = sub_1C97A2CEC(&qword_1EC3C7528, &qword_1C9AAEBE0);
  v56 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  v13 = sub_1C97A2CEC(&qword_1EC3CB148, &qword_1C9AAEBE8);
  v57 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  v16 = sub_1C9A91748();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  LODWORD(v21) = 1182400512;
  v22 = [v20 initWithFloat_];
  sub_1C999C710();
  if (v4)
  {

    return;
  }

  v48 = v12;
  v49 = v10;
  v50 = v15;
  v51 = v13;
  v52 = v17;
  v53 = v16;
  v23 = [v22 integerValue];

  v67 = 1;
  v68 = v23;
  v69(&v67);
  sub_1C9A91738();
  v67 = sub_1C98BF080();
  sub_1C97A2CEC(&unk_1EC3C7390, &unk_1C9A9C770);
  v24 = sub_1C97A2CEC(&qword_1EC3C7C80, &qword_1C9AB6790);
  sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390, &unk_1C9A9C770, MEMORY[0x1E695BED8]);
  v25 = v64;
  sub_1C9A91F68();

  v26 = v63 - 1;
  if (__OFSUB__(v63, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v27 = (v26 * 160) >> 64;
  v28 = 160 * v26;
  v29 = v61;
  v30 = v62;
  if (v27 != v28 >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v31 = __OFADD__(v28, 512);
  v32 = v28 + 512;
  if (v31)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((v61 * 160) >> 64 != (160 * v61) >> 63)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *&v25[*(v62 + 60)] = v32;
  *&v25[*(v30 + 64)] = 160 * v29;
  *&v25[*(v30 + 68)] = v24;
  sub_1C97A2CEC(&qword_1EC3C8A38, &unk_1C9AA4F50);
  sub_1C97AE67C(&qword_1EC3C8A40, &qword_1EC3C6760, &qword_1C9A9C780, &unk_1C9AB2030);
  sub_1C9A91F68();
  sub_1C97DA1E0(v25, &qword_1EC3C6760, &qword_1C9A9C780);
  v69 = objc_autoreleasePoolPush();
  v25 = objc_autoreleasePoolPush();
  if (qword_1EC3C55D0 != -1)
  {
LABEL_13:
    swift_once();
  }

  v33 = swift_allocObject();
  *(v33 + 16) = 34;
  LOWORD(v67) = 34;
  v34 = MEMORY[0x1EEE9AC00](v33);
  *(&v48 - 4) = sub_1C98351CC;
  *(&v48 - 3) = v34;
  *(&v48 - 2) = &v67;

  v35 = sub_1C97E2E88();
  v36 = v53;
  v37 = v35;

  objc_autoreleasePoolPop(v25);
  objc_autoreleasePoolPop(v69);
  v38 = v58;
  v39 = v65;
  sub_1C98B32F4(v37, &off_1F4937390);
  (*(v59 + 8))(v39, v60);

  sub_1C97AE67C(&qword_1EC3CB150, &qword_1EC3CB140, &qword_1C9AAEBD8, MEMORY[0x1E695BE28]);
  v40 = v48;
  v41 = v55;
  sub_1C9A91F68();
  (*(v54 + 8))(v38, v41);
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_1C9A935B8();

  v67 = 0xD000000000000019;
  v68 = 0x80000001C9AD7EB0;
  sub_1C97AE3DC();
  v42 = sub_1C9A93A98();
  MEMORY[0x1CCA90230](v42);

  MEMORY[0x1CCA90230](8250, 0xE200000000000000);
  v43 = v50;
  sub_1C97DCAC0(v67, v68);

  (*(v56 + 8))(v40, v49);
  sub_1C97AE67C(&qword_1EC3CB158, &qword_1EC3CB148, &qword_1C9AAEBE8, MEMORY[0x1E695BCC0]);
  v44 = v51;
  sub_1C9A92008();
  sub_1C97A2CEC(&qword_1EC3CB160, &unk_1C9AAEBF8);
  swift_allocObject();
  v45 = sub_1C98E3778();
  (*(v57 + 8))(v43, v44);
  v67 = v45;
  sub_1C97AE67C(&qword_1EC3CB168, &qword_1EC3CB160, &unk_1C9AAEBF8, &unk_1C9AB4B80);
  v46 = sub_1C9A91F28();

  v47 = (*(v52 + 8))(v19, v36);
  type metadata accessor for SharedSoundPrintK.Instance(v47);
  *(swift_allocObject() + 16) = v46;
}

void sub_1C98B5E40()
{
  sub_1C97AEB94();
  v108 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v103 = v10;
  v104 = v9;
  v12 = v11;
  v99 = sub_1C97A2CEC(&qword_1EC3C6760, &qword_1C9A9C780);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C97AC02C();
  v101 = v14;
  sub_1C97A2CEC(&qword_1EC3C8A20, &qword_1C9AA4F20);
  sub_1C97AE9C8();
  v96 = v16;
  v97 = v15;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C97AC02C();
  v102 = v18;
  v88 = sub_1C97A2CEC(&qword_1EC3CB140, &qword_1C9AAEBD8);
  sub_1C97AE9C8();
  v87 = v19;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C97AC02C();
  v95 = v21;
  v91 = sub_1C97A2CEC(&qword_1EC3C7528, &qword_1C9AAEBE0);
  sub_1C97AE9C8();
  v90 = v22;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C97AC02C();
  v89 = v24;
  sub_1C97A2CEC(&qword_1EC3CB148, &qword_1C9AAEBE8);
  sub_1C97AE9C8();
  v93 = v26;
  v94 = v25;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C97AC02C();
  v92 = v28;
  v98 = sub_1C9A91748();
  sub_1C97AE9C8();
  v100 = v29;
  MEMORY[0x1EEE9AC00](v30);
  sub_1C97AEAD8();
  sub_1C97AE9DC();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  sub_1C97AEAD8();
  v36 = v35 - v34;
  v109 = v8;
  v110 = v6;
  v105 = v6;
  v106 = v4;
  v111 = v4;
  v112 = v2;
  v107 = v2;
  v37 = type metadata accessor for SharedReformattedAudioSource.Configuration(0, &v109);
  sub_1C97AE9C8();
  v39 = v38;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v86 - v41;
  v43 = sub_1C98B7774();
  v113 = v8;
  v44(v43);
  v45 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  LODWORD(v46) = 1182400512;
  v47 = [v45 initWithFloat_];
  v48 = v108;
  sub_1C999C710();
  if (v48)
  {

    (*(v32 + 8))(v36, v8);
    goto LABEL_11;
  }

  v108 = v12;
  v49 = [v47 integerValue];

  sub_1C98BEFD0(v36, 1, v49, v8, v105, v106, v107, v42);
  v50 = v104(v42);
  v104 = 0;
  (*(v39 + 8))(v42, v37);
  sub_1C9A91738();
  v51 = sub_1C98BF080();
  v109 = v51;
  sub_1C97A2CEC(&unk_1EC3C7390, &unk_1C9A9C770);
  v52 = sub_1C97A2CEC(&qword_1EC3C7C80, &qword_1C9AB6790);
  sub_1C97AE9EC();
  sub_1C97AE67C(v53, &unk_1EC3C7390, &unk_1C9A9C770, v54);
  v55 = v101;
  sub_1C9A91F68();

  v109 = v113;
  v110 = v105;
  v111 = v106;
  v112 = v107;
  v56 = type metadata accessor for SharedSoundPrintK.Configuration(0, &v109);
  v57 = *&v108[*(v56 + 52)];
  v58 = __OFSUB__(v57, 1);
  v59 = v57 - 1;
  if (v58)
  {
    __break(1u);
    goto LABEL_13;
  }

  v60 = (v59 * 160) >> 64;
  v61 = 160 * v59;
  v62 = v99;
  if (v60 != v61 >> 63)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v58 = __OFADD__(v61, 512);
  v63 = v61 + 512;
  if (v58)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v64 = *&v108[*(v56 + 56)];
  v65 = (v64 * 160) >> 64;
  v66 = 160 * v64;
  if (v65 == v66 >> 63)
  {
    v108 = v50;
    *(v55 + *(v99 + 60)) = v63;
    *(v55 + *(v62 + 64)) = v66;
    *(v55 + *(v62 + 68)) = v52;
    sub_1C97A2CEC(&qword_1EC3C8A38, &unk_1C9AA4F50);
    sub_1C97AE67C(&qword_1EC3C8A40, &qword_1EC3C6760, &qword_1C9A9C780, &unk_1C9AB2030);
    sub_1C9A91F68();
    sub_1C97DA1E0(v55, &qword_1EC3C6760, &qword_1C9A9C780);
    v50 = objc_autoreleasePoolPush();
    v51 = objc_autoreleasePoolPush();
    if (qword_1EC3C55D0 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  swift_once();
LABEL_8:
  v67 = swift_allocObject();
  *(v67 + 16) = 34;
  LOWORD(v109) = 34;
  v68 = MEMORY[0x1EEE9AC00](v67);
  *(&v86 - 4) = sub_1C98351CC;
  *(&v86 - 3) = v68;
  *(&v86 - 2) = &v109;

  v69 = v104;
  v70 = sub_1C97E2E88();
  if (v69)
  {

    (*(v96 + 8))(v102, v97);
    objc_autoreleasePoolPop(v51);
    objc_autoreleasePoolPop(v50);

    v71 = sub_1C98B7710();
    v72(v71);
  }

  else
  {
    v73 = v70;

    objc_autoreleasePoolPop(v51);
    objc_autoreleasePoolPop(v50);
    v74 = v95;
    v75 = v102;
    sub_1C98B32F4(v73, &off_1F4937390);
    (*(v96 + 8))(v75, v97);

    sub_1C97AE67C(&qword_1EC3CB150, &qword_1EC3CB140, &qword_1C9AAEBD8, MEMORY[0x1E695BE28]);
    v76 = v89;
    v77 = v88;
    v104 = 0;
    sub_1C9A91F68();
    (*(v87 + 8))(v74, v77);
    v109 = 0;
    v110 = 0xE000000000000000;
    sub_1C9A935B8();

    v109 = 0xD000000000000019;
    v110 = 0x80000001C9AD7EB0;
    sub_1C97AE3DC();
    v78 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v78);

    MEMORY[0x1CCA90230](8250, 0xE200000000000000);
    v79 = v92;
    sub_1C97DCAC0(v109, v110);

    (*(v90 + 8))(v76, v91);
    sub_1C97AE67C(&qword_1EC3CB158, &qword_1EC3CB148, &qword_1C9AAEBE8, MEMORY[0x1E695BCC0]);
    v80 = v94;
    sub_1C9A92008();
    sub_1C97A2CEC(&qword_1EC3CB160, &unk_1C9AAEBF8);
    sub_1C97AA878();
    swift_allocObject();
    v81 = sub_1C98E3778();
    (*(v93 + 8))(v79, v80);
    v109 = v81;
    sub_1C97AE67C(&qword_1EC3CB168, &qword_1EC3CB160, &unk_1C9AAEBF8, &unk_1C9AB4B80);
    v82 = sub_1C9A91F28();

    v83 = sub_1C98B7710();
    v85 = v84(v83);
    type metadata accessor for SharedSoundPrintK.Instance(v85);
    *(swift_allocObject() + 16) = v82;
  }

LABEL_11:
  sub_1C97AEB5C();
}

void sub_1C98B6918(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1C97A2CEC(&qword_1EC3C8A78, &unk_1C9AA4F70);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = *a1;
  v11 = sub_1C9A92478();
  v12 = [v10 featureValueForName_];

  if (!v12)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1C9A92FD8();

  v13 = sub_1C97A2CEC(&qword_1EC3C8A38, &unk_1C9AA4F50);
  if (sub_1C97ABF20(v9, 1, v13) == 1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1C97AE67C(&qword_1EC3C8A70, &qword_1EC3C8A38, &unk_1C9AA4F50, MEMORY[0x1E695FCF0]);
  v14 = sub_1C9A91BC8();
  v15 = *(*(v13 - 8) + 8);
  v15(v9, v13);
  v16 = sub_1C9A92478();
  v17 = [v10 featureValueForName_];

  if (!v17)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1C9A92FD8();

  if (sub_1C97ABF20(v7, 1, v13) != 1)
  {
    v18 = sub_1C9A91BC8();
    v15(v7, v13);
    *a2 = v14;
    a2[1] = v18;
    return;
  }

LABEL_9:
  __break(1u);
}

id sub_1C98B6BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C97A2CEC(&qword_1EC3C8A38, &unk_1C9AA4F50);
  sub_1C97AE9C8();
  v8 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18[-v10];
  sub_1C97A2CEC(&qword_1EC3C69E8, &unk_1C9A9D4A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9EDD0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  v13 = sub_1C989A598(COERCE_DOUBLE(1));
  (*(v8 + 16))(v11, a1, v6);

  v14 = sub_1C9A92FE8();
  *(inited + 72) = v13;
  *(inited + 48) = v14;
  v15 = sub_1C9A92348();
  v16 = objc_allocWithZone(MEMORY[0x1E695FE48]);
  return sub_1C98B6EC8(v15);
}

uint64_t sub_1C98B6D2C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  a4(a1);
  if (!v5)
  {
    a5 = a2();
    swift_unknownObjectRelease();
  }

  return a5;
}

void sub_1C98B6DA4()
{
  sub_1C97AEB48();
  WitnessTable = swift_getWitnessTable();
  sub_1C98B772C(WitnessTable);
}

id sub_1C98B6EC8(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1C9A922F8();

  v7[0] = 0;
  v3 = [v1 initWithDictionary:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_1C9A913C8();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1C98B6FB0@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *__return_ptr, __int16 *)@<X1>, uint64_t a3@<X2>, __int16 *a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1C97E44B0(*a1, a2, a3, *a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

void sub_1C98B6FE4(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C98B48C0(__dst);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t sub_1C98B70A8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*(v1 + 24) + 24))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C98B711C@<X0>(uint64_t *a4@<X8>)
{
  result = sub_1C98C00FC();
  *a4 = result;
  return result;
}

unint64_t sub_1C98B7154()
{
  result = qword_1EC3CB1B0;
  if (!qword_1EC3CB1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB1B0);
  }

  return result;
}

uint64_t sub_1C98B71A8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3C9AA0, &qword_1C9AA0690);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C98B722C(uint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  v8 = a2[3];
  v10[2] = a2[2];
  v10[3] = v8;
  sub_1C98B48E4(v5, v6, v10);
  if (!v3)
  {
    *a3 = v9;
  }
}

_BYTE *sub_1C98B729C(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SharedSoundPrintK.Output.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C98B7448()
{
  result = qword_1EC3CB240;
  if (!qword_1EC3CB240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB240);
  }

  return result;
}

unint64_t sub_1C98B74F4()
{
  result = qword_1EC3CB248;
  if (!qword_1EC3CB248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB248);
  }

  return result;
}

unint64_t sub_1C98B754C()
{
  result = qword_1EC3CB250;
  if (!qword_1EC3CB250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB250);
  }

  return result;
}

uint64_t sub_1C98B7600(unint64_t *a1)
{
  v4 = MEMORY[0x1E695BD60];

  return sub_1C97AE67C(a1, v1, v2, v4);
}

uint64_t sub_1C98B762C(uint64_t a1)
{

  return swift_getWitnessTable();
}

void *sub_1C98B7658(void *__src, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return memcpy(va, __src, 0x58uLL);
}

uint64_t sub_1C98B7678()
{

  return sub_1C9A938F8();
}

uint64_t sub_1C98B76A8()
{

  return sub_1C9A93A18();
}

uint64_t sub_1C98B76D4()
{
  v3 = *(v0 + 16);
  *(v1 - 64) = *v0;
  *(v1 - 48) = v3;
  *(v1 - 32) = *(v0 + 32);

  return sub_1C9791040();
}

void sub_1C98B772C(uint64_t a1)
{

  sub_1C98B299C(v3, v2, v1, a1);
}

uint64_t sub_1C98B7750(uint64_t a1)
{

  return swift_getObjectType();
}

void sub_1C98B7780(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = *(a1 + 16);
  v10 = v7;
  if (*(a1 + 16) && (v10 = *a1, v9 == 1))
  {
    v11 = sub_1C9A92478();
    v12 = sub_1C98B7BF4(v11);
    v14 = v13;

    if (v4)
    {
      return;
    }
  }

  else
  {
    v12 = *(v10 + 16);

    swift_getObjectType();
    v14 = &off_1F4937390;
    off_1F4937398();
  }

  *&v44 = v8;
  *(&v44 + 1) = v7;
  LOBYTE(v45) = v9;
  v15 = sub_1C98B83D4(&v44, a3);
  if (v4)
  {
    swift_unknownObjectRelease();

    return;
  }

  v17 = v15;
  if ((~v15 & 0xF000000000000007) != 0)
  {
    v38 = v15;
    v39 = a4;
    if ((v15 & 0x8000000000000000) != 0)
    {
      v21 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
      v19 = type metadata accessor for SNSoundPrintFeatureExtractorConfiguration(v16);
      v20 = &off_1F494E2E0;
    }

    else
    {
      v19 = type metadata accessor for SNLogMelBasedFeatureExtractorConfiguration(v16);
      v20 = &off_1F4934D10;
      v21 = v17;
    }

    *(&v41 + 1) = v19;
    *&v42 = v20;
    *&v40 = v21;
    sub_1C979B054(&v40, &v44);
    v24 = *(&v45 + 1);
    v25 = v46;
    sub_1C97A5A8C(&v44, *(&v45 + 1));
    v26 = *(v25 + 8);
    v27 = v21;
    v28 = v26(v24, v25);
    v29 = *(&v45 + 1);
    v30 = v46;
    sub_1C97A5A8C(&v44, *(&v45 + 1));
    v22 = (*(v30 + 16))(v29, v30);
    v31 = *(&v45 + 1);
    v32 = v46;
    sub_1C97A5A8C(&v44, *(&v45 + 1));
    LODWORD(v33) = (*(v32 + 24))(v31, v32);
    sub_1C97A592C(&v44);
    v17 = v38;
    a4 = v39;
    goto LABEL_20;
  }

  *&v42 = 0;
  v40 = 0u;
  v41 = 0u;
  sub_1C98B854C(&v40);
  type metadata accessor for SNModelMetadataUtils(v18);
  sub_1C9A3C0B0(v12, v14);
  v40 = v44;
  v41 = v45;
  v42 = v46;
  v43 = v47;
  if (BYTE8(v45))
  {
    goto LABEL_17;
  }

  v22 = v41;
  if ((v41 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (DWORD1(v41))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (BYTE8(v40) & 1) != 0 || (BYTE8(v42))
  {
LABEL_17:

    sub_1C97A8E8C();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
    sub_1C97F9CA8(&v40);
    swift_unknownObjectRelease();
    return;
  }

  v37 = v40;
  v33 = v42;
  sub_1C97F9CA8(&v40);
  if ((v33 & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

  if (HIDWORD(v33))
  {
LABEL_28:
    __break(1u);
    return;
  }

  v28 = v37;
LABEL_20:
  v34 = sub_1C9A92478();

  v35 = sub_1C9A924A8();
  *a4 = v12;
  *(a4 + 8) = v14;
  *(a4 + 16) = v34;
  *(a4 + 24) = v35;
  *(a4 + 32) = v36;
  *(a4 + 40) = v28;
  *(a4 + 48) = v22;
  *(a4 + 52) = v33;
  *(a4 + 56) = v17;
}

uint64_t sub_1C98B7AF4(uint64_t result, unsigned int a2, unsigned int a3, double a4)
{
  if (a4 < 0.0 || a4 >= 1.0)
  {
    v5 = 0;
LABEL_11:
    sub_1C98B8770();
    swift_allocError();
    *v6 = v5;
    return swift_willThrow();
  }

  if (a2 - 1 >= result)
  {
    v5 = 1;
    goto LABEL_11;
  }

  if (!a3 || a2 % a3)
  {
    v5 = 2;
    goto LABEL_11;
  }

  v7 = result * a4;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v7 <= -1.0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v7 >= 4294967300.0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = result - v7;
  if (result < v7)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v9 = v8 >= v8 % a3;
  v10 = v8 - v8 % a3;
  if (!v9)
  {
    goto LABEL_25;
  }

  if (v10 <= a2)
  {
    return a2;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_1C98B7BF4(uint64_t a1)
{
  v3 = sub_1C9A924A8();
  v5 = sub_1C98C751C(v3, v4);
  if (v2)
  {
  }

  else
  {
    v6 = v5;

    v7 = objc_autoreleasePoolPush();
    v8 = objc_autoreleasePoolPush();
    if (qword_1EC3C55D0 != -1)
    {
      sub_1C9835338(&qword_1EC3C55D0);
    }

    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    MEMORY[0x1EEE9AC00](v9);

    v1 = sub_1C97E2E88();

    objc_autoreleasePoolPop(v8);
    objc_autoreleasePoolPop(v7);
  }

  return v1;
}

void sub_1C98B7D94(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 24))
  {
    v4 = 15360;
  }

  else
  {
    v4 = *(a3 + 16);
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (HIDWORD(v4))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = *(a3 + 32);
  v7 = *(a3 + 40);
  v8 = sub_1C98B7AF4(v4, 1u, 1u, 0.5);
  if (v3)
  {
    return;
  }

  if (v7)
  {
    v6 = v8;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

  if (HIDWORD(v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  objc_allocWithZone(type metadata accessor for SNSoundPrintFeatureExtractorConfiguration(v9));
  v10 = swift_unknownObjectRetain();
  if (!sub_1C9A1601C(v10, a2, v4, v6))
  {
LABEL_17:
    __break(1u);
  }
}

uint64_t sub_1C98B7E70()
{
  sub_1C97A2CEC(&qword_1EC3CB260, &qword_1C9AAEE88);
  sub_1C98B86EC();
  v0 = sub_1C9A92348();
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C97EE774(sub_1C98B8740, 0, 0);
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C97EE774(sub_1C98B8758, 0, 1);
  return v0;
}

uint64_t sub_1C98B7F3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[1];
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  result = sub_1C98B7AF4(15360, 0x140u, 0xA0u, 0.5);
  if (!v3)
  {
    if (v7)
    {
      v6 = result;
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v6))
    {
      objc_allocWithZone(type metadata accessor for SNLogMelBasedFeatureExtractorConfiguration(v9));
      v10 = swift_unknownObjectRetain();
      result = sub_1C9856FE4(v10, v5, v6);
      if (result)
      {
        *a3 = result;
        return result;
      }

LABEL_11:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

void sub_1C98B7FEC(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  sub_1C98B7D94(*a1, a1[1], a2);
  if (!v3)
  {
    *a3 = v5 | 0x8000000000000000;
  }
}

uint64_t (*sub_1C98B8028(char a1))()
{
  v2 = sub_1C98B7E70();
  v3 = sub_1C987825C(a1 & 1, v2);
  v5 = v4;

  if (v3)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = v5;
    return sub_1C98B86D0;
  }

  else
  {
    type metadata accessor for SNError(v6);
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0xD000000000000037, 0x80000001C9AD7F30);
    sub_1C9A93728();
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0, 0xE000000000000000);

    return swift_willThrow();
  }
}

void *sub_1C98B8180(uint64_t a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr, void *, uint64_t))
{
  v6[1] = a2;
  v6[0] = a1;
  result = a4(&v7, v6, a3);
  if (!v4)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1C98B81CC(char a1, _OWORD *a2, uint64_t a3)
{
  v7 = sub_1C98B8028(a1 & 1);
  if (!v3)
  {
    v8 = v7;
    if (a1)
    {
      v9 = 33;
    }

    else
    {
      v9 = 21;
    }

    v17 = objc_autoreleasePoolPush();
    v15 = objc_autoreleasePoolPush();
    if (qword_1EC3C55D0 != -1)
    {
      sub_1C9835338(&qword_1EC3C55D0);
    }

    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    LOBYTE(v16[0]) = v9;
    BYTE1(v16[0]) = a3;
    MEMORY[0x1EEE9AC00](v10);

    v11 = sub_1C97E2E88();

    objc_autoreleasePoolPop(v15);
    objc_autoreleasePoolPop(v17);
    v12 = a2[1];
    v16[0] = *a2;
    v16[1] = v12;
    v13 = a2[3];
    v16[2] = a2[2];
    v16[3] = v13;
    a3 = (v8)(v11, &off_1F4937390, v16);
  }

  return a3;
}

unint64_t sub_1C98B83D4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if (!*(a1 + 16))
  {
    v8 = v4 & 1;
    v12 = *(a1[1] + 16);

LABEL_7:
    v14 = &off_1F4937390;
    goto LABEL_8;
  }

  if (*(a1 + 16) != 1)
  {
    v12 = *(v4 + 16);

    v8 = 2;
    goto LABEL_7;
  }

  v5 = sub_1C9A92478();
  v6 = sub_1C98C6F38(v5);
  v8 = v7;
  v10 = v9;

  if (v2)
  {
    return v4;
  }

  v11 = sub_1C9A92478();
  v12 = sub_1C98B7BF4(v11);
  v14 = v13;

LABEL_8:
  v16 = type metadata accessor for SNModelMetadataUtils(v15);
  v17 = v14;
  v4 = v16;
  sub_1C9A3C0B0(v12, v17);
  if (v2)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = swift_unknownObjectRelease();
    sub_1C98B88F8(v19, v20, v21, v22, v23, v24, v25, v26, v27[0], v27[1], v27[2], v27[3], v27[4], v27[5], v27[6], v27[7], *&v28[0], *(&v28[0] + 1), *&v28[1], *(&v28[1] + 1), v28[2]);
    if (v8 == 2)
    {
      sub_1C97F9CA8(v27);
      return 0xF000000000000007;
    }

    else
    {
      v4 = sub_1C98B81CC(v8 & 1, v28, a2);
      sub_1C97F9CA8(v27);
    }
  }

  return v4;
}

uint64_t sub_1C98B854C(uint64_t a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CB258, &qword_1C9AAEE80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C98B85B4(uint64_t a1, uint64_t a2, double a3)
{
  type metadata accessor for SNModelMetadataUtils(a3);
  sub_1C9A3C0B0(a1, a2);
  if (!v3)
  {
    sub_1C98B88F8(v6, v7, v8, v9, v10, v11, v12, v13, v18, v19, v20, v21, v22, v23, v24, v25, *&v26[0], *(&v26[0] + 1), *&v26[1], *(&v26[1] + 1), v26[2]);
    sub_1C97F9CA8(&v18);
    if (BYTE1(v19) == 2)
    {
      type metadata accessor for SNError(v14);
      sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD00000000000003ALL, 0x80000001C9AD7F70);
      swift_willThrow();
    }

    else
    {
      v15 = type metadata accessor for SNMLModelHashableUncodableWrapper(v14);
      ObjectType = swift_getObjectType();
      sub_1C9889FB4(a1, v17, v15, ObjectType, a2);
      swift_unknownObjectRetain();
    }
  }
}

unint64_t sub_1C98B86EC()
{
  result = qword_1EC3C55B0;
  if (!qword_1EC3C55B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C55B0);
  }

  return result;
}

unint64_t sub_1C98B8770()
{
  result = qword_1EC3CB268;
  if (!qword_1EC3CB268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB268);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SNSoundDetectionUtils.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C98B88A4()
{
  result = qword_1EC3CB270;
  if (!qword_1EC3CB270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB270);
  }

  return result;
}

uint64_t sub_1C98B890C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C97A2CEC(&qword_1EC3CB2A8, &qword_1C9AAEF90);
  sub_1C97DACE4(v4);
  sub_1C97ABFF0();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  v9 = *(v6 + 56);
  v10 = sub_1C9A91978();
  v11 = *(v10 - 8);
  v12 = v11[2];
  v12(v8, v2, v10);
  v12(&v8[v9], a1, v10);
  v13 = v11[11];
  v14 = sub_1C97CB094();
  v15 = v13(v14);
  if (v15 == *MEMORY[0x1E69AD928] || v15 == *MEMORY[0x1E69AD8A8] || v15 == *MEMORY[0x1E69AD828] || v15 == *MEMORY[0x1E69AD820] || v15 == *MEMORY[0x1E69AD840] || v15 == *MEMORY[0x1E69AD8D0] || v15 == *MEMORY[0x1E69AD918] || v15 == *MEMORY[0x1E69AD940] || v15 == *MEMORY[0x1E69AD920] || v15 == *MEMORY[0x1E69AD868] || v15 == *MEMORY[0x1E69AD8F8] || v15 == *MEMORY[0x1E69AD900] || v15 == *MEMORY[0x1E69AD848] || v15 == *MEMORY[0x1E69AD898] || v15 == *MEMORY[0x1E69AD958] || v15 == *MEMORY[0x1E69AD8D8] || v15 == *MEMORY[0x1E69AD8F0] || v15 == *MEMORY[0x1E69AD930] || v15 == *MEMORY[0x1E69AD858] || v15 == *MEMORY[0x1E69AD908] || v15 == *MEMORY[0x1E69AD948] || v15 == *MEMORY[0x1E69AD870] || v15 == *MEMORY[0x1E69AD8C8] || v15 == *MEMORY[0x1E69AD838] || v15 == *MEMORY[0x1E69AD810] || v15 == *MEMORY[0x1E69AD8E0] || v15 == *MEMORY[0x1E69AD8B0] || v15 == *MEMORY[0x1E69AD8B8] || v15 == *MEMORY[0x1E69AD830] || v15 == *MEMORY[0x1E69AD8C0] || v15 == *MEMORY[0x1E69AD8A0] || v15 == *MEMORY[0x1E69AD938] || v15 == *MEMORY[0x1E69AD860] || v15 == *MEMORY[0x1E69AD888] || v15 == *MEMORY[0x1E69AD880] || v15 == *MEMORY[0x1E69AD878] || v15 == *MEMORY[0x1E69AD818] || v15 == *MEMORY[0x1E69AD850] || v15 == *MEMORY[0x1E69AD910] || v15 == *MEMORY[0x1E69AD950] || v15 == *MEMORY[0x1E69AD890] || v15 == *MEMORY[0x1E69AD8E8])
  {
    if ((v13)(&v8[v9], v10) == v15)
    {
      v16 = v11[1];
      v16(&v8[v9], v10);
      v17 = sub_1C97CB094();
      (v16)(v17);
      return 1;
    }

    v19 = v11[1];
    v20 = sub_1C97CB094();
    v19(v20);
    (v19)(&v8[v9], v10);
  }

  else
  {
    if (qword_1EC3C5520 != -1)
    {
      swift_once();
    }

    v21 = sub_1C9A91B58();
    sub_1C97BFF6C(v21, qword_1EC3D3108);
    v22 = sub_1C9A92FA8();
    v23 = sub_1C9A91B38();
    if (os_log_type_enabled(v23, v22))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1C9788000, v23, v22, "Unexpected neural network layer kind", v24, 2u);
      MEMORY[0x1CCA93280](v24, -1, -1);
    }

    sub_1C97DA1E0(v8, &qword_1EC3CB2A8, &qword_1C9AAEF90);
  }

  return 0;
}

void sub_1C98B8EA8()
{
  sub_1C97AEB94();
  v3 = v2;
  v4 = sub_1C9A91558();
  sub_1C97AE9C8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEAD8();
  sub_1C98BBBF0();
  sub_1C9A91A68();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97AEAD8();
  (*(v6 + 16))(v1, v3, v4);
  sub_1C9A91A28();
  (*(v6 + 8))(v3, v4);
  if (!v0)
  {
    v9 = sub_1C98BBC00();
    v10(v9);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C98B9028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a1;
  v52 = sub_1C9A91838();
  sub_1C97AE9C8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEAD8();
  v8 = sub_1C97A2CEC(&qword_1EC3CB2C0, &qword_1C9ABC370);
  sub_1C97DACE4(v8);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - v10;
  v12 = sub_1C9A919F8();
  sub_1C97AE9C8();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C97AEAD8();
  v18 = v17 - v16;
  result = sub_1C9A91A58();
  v56 = *(result + 16);
  if (v56)
  {
    v47 = a3;
    v20 = 0;
    v54 = result + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v53 = v14 + 16;
    v51 = v6 + 88;
    v50 = *MEMORY[0x1E69AD808];
    v48 = v6 + 96;
    v49 = v6 + 8;
    v55 = a2;
    while (1)
    {
      if (v20 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v21 = result;
      (*(v14 + 16))(v18, v54 + *(v14 + 72) * v20, v12);
      if (sub_1C9A919D8() == v57 && v22 == a2)
      {
      }

      else
      {
        v24 = sub_1C9A93B18();

        if ((v24 & 1) == 0)
        {
          v25 = sub_1C98BBC80();
          v26(v25);
          a2 = v55;
          goto LABEL_16;
        }
      }

      sub_1C9A919E8();
      v27 = sub_1C98BBC80();
      v28(v27);
      v29 = sub_1C98BBAF0();
      v31 = v30(v29);
      if (v31 == v50)
      {
        v32 = sub_1C98BBAF0();
        v33(v32);
        v34 = sub_1C9A91828();
        sub_1C97DA940();
        v35 = sub_1C97A7890();
        v36(v35);
        sub_1C9855128();
        sub_1C97ACC50(v37, v38, v39, v34);
      }

      else
      {
        v34 = sub_1C9A91828();
        sub_1C97ACC50(v11, 1, 1, v34);
        v40 = sub_1C98BBAF0();
        v41(v40);
      }

      a2 = v55;
      sub_1C9A91828();
      if (sub_1C97ABF20(v11, 1, v34) != 1)
      {

        (*(*(v34 - 8) + 32))(v47, v11, v34);
        sub_1C9855128();
        v42 = v34;
        return sub_1C97ACC50(v43, v44, v45, v42);
      }

      sub_1C97DA1E0(v11, &qword_1EC3CB2C0, &qword_1C9ABC370);
LABEL_16:
      ++v20;
      result = v21;
      if (v56 == v20)
      {

        a3 = v47;
        goto LABEL_19;
      }
    }
  }

LABEL_19:
  v42 = sub_1C9A91828();
  v43 = a3;
  v44 = 1;
  v45 = 1;
  return sub_1C97ACC50(v43, v44, v45, v42);
}

uint64_t sub_1C98B9418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v200 = a4;
  v203 = a2;
  v204 = a3;
  v171 = a5;
  v201 = sub_1C9A91A68();
  sub_1C97AE9C8();
  v191 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97AEAD8();
  v198 = v10 - v9;
  v11 = sub_1C97A2CEC(&qword_1EC3CB290, &qword_1C9AAEF70);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C97AC02C();
  v186 = v13;
  v14 = sub_1C97A2CEC(&qword_1EC3CB298, &qword_1C9AAEF78);
  v15 = sub_1C97DACE4(v14);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C98435A0();
  sub_1C98BBBD0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C97ABFC0();
  v202 = v17;
  v18 = sub_1C97A2CEC(&qword_1EC3CB2A0, &qword_1C9AAEF80);
  sub_1C97DACE4(v18);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C97AC02C();
  v170 = v20;
  sub_1C98BBB00();
  v181 = sub_1C9A919C8();
  sub_1C97AE9C8();
  v161 = v21;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C97ABF90();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C97ABFC0();
  v179 = v24;
  sub_1C98BBB00();
  v172 = sub_1C9A91888();
  sub_1C97AE9C8();
  v173 = v25;
  MEMORY[0x1EEE9AC00](v26);
  sub_1C97AEAD8();
  v180 = v28 - v27;
  sub_1C98BBB00();
  v193 = sub_1C9A91978();
  sub_1C97AE9C8();
  v177 = v29;
  MEMORY[0x1EEE9AC00](v30);
  sub_1C97ABF90();
  v192 = v31;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C97ABFC0();
  v182 = v33;
  v34 = sub_1C97A2CEC(&unk_1EC3CE660, &qword_1C9AAEF88);
  v35 = sub_1C97DACE4(v34);
  MEMORY[0x1EEE9AC00](v35);
  sub_1C97ABF90();
  v195 = v36;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C98435C8();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C98435C8();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C97ABFC0();
  v194 = v40;
  sub_1C98BBB00();
  v41 = sub_1C9A919A8();
  sub_1C97AE9C8();
  v196 = v42;
  MEMORY[0x1EEE9AC00](v43);
  sub_1C97ABF90();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C98435C8();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C98435C8();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C98435C8();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v47);
  v49 = v158 - v48;
  v168 = sub_1C9A91A18();
  sub_1C97AE9C8();
  v199 = v50;
  MEMORY[0x1EEE9AC00](v51);
  sub_1C97AEAD8();
  v54 = v53 - v52;
  v55 = sub_1C9A91A78();
  sub_1C97AE9C8();
  v57 = v56;
  MEMORY[0x1EEE9AC00](v58);
  sub_1C98435A0();
  v61 = v59 - v60;
  MEMORY[0x1EEE9AC00](v62);
  v64 = v158 - v63;
  sub_1C9A91A48();
  v65 = *(v57 + 16);
  v167 = v64;
  v65(v61, v64, v55);
  v66 = sub_1C98BBB68();
  v77 = v67(v66) == *MEMORY[0x1E69AD960];
  v165 = v55;
  v164 = v57;
  if (!v77)
  {
    v124 = sub_1C98BBB68();
    v125(v124);
    sub_1C98BBC10();
    goto LABEL_29;
  }

  v158[1] = a1;
  v68 = sub_1C98BBB68();
  v69(v68);
  v70 = v199;
  (*(v199 + 32))(v54, v61, v168);
  result = sub_1C9A91A08();
  v72 = v172;
  v73 = v54;
  v74 = result;
  v190 = *(result + 16);
  if (!v190)
  {
LABEL_28:

    (*(v70 + 8))(v73, v168);
    sub_1C98BBC10();
    v55 = v165;
    v57 = v164;
LABEL_29:
    result = sub_1C9A91A38();
    v199 = result;
    v126 = *(result + 16);
    v127 = v202;
    if (v126 == 1)
    {
      (*(v57 + 8))(v167, v55);

      v128 = 1;
    }

    else
    {
      v129 = 0;
      v197 = (v191 + 16);
      v49 = (v191 + 32);
      v130 = (v191 + 8);
      while (1)
      {
        if (v129 == v126)
        {
          v131 = 1;
          v129 = v126;
        }

        else
        {
          if ((v129 & 0x8000000000000000) != 0)
          {
            goto LABEL_50;
          }

          if (v129 >= *(v199 + 16))
          {
            goto LABEL_51;
          }

          v132 = v191;
          v133 = v199 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v129;
          v134 = *(v11 + 48);
          v135 = v186;
          *v186 = v129;
          (*(v132 + 16))(&v135[v134], v133, v201);
          v136 = v135;
          v127 = v202;
          sub_1C98BB7B8(v136, v5, &qword_1EC3CB290, &qword_1C9AAEF70);
          v131 = 0;
          ++v129;
        }

        sub_1C97ACC50(v5, v131, 1, v11);
        sub_1C98BB7B8(v5, v127, &qword_1EC3CB298, &qword_1C9AAEF78);
        v137 = sub_1C98BBCA0();
        if (sub_1C97ABF20(v137, v138, v11) == 1)
        {
          break;
        }

        v139 = v5;
        v140 = *v127;
        v141 = v11;
        v142 = v127 + *(v11 + 48);
        v143 = v198;
        v144 = v201;
        (*v49)(v198, v142, v201);
        if (v140)
        {
          v145 = v195;
          sub_1C98B9418(v143, v203, v204, v200, v195);
          (*v130)(v143, v144);
          sub_1C98BBB94(v145);
          if (!v77)
          {
            v148 = sub_1C98BBAD0();
            v149(v148);

            v150 = *(v196 + 32);
            (v150)(v158[2], v145, v41);
            sub_1C98BBC10();
            v151 = sub_1C97E89F0();
            v150(v151);
            goto LABEL_47;
          }

          result = sub_1C97DA1E0(v145, &unk_1EC3CE660, &qword_1C9AAEF88);
        }

        else
        {
          result = (*v130)(v143, v144);
        }

        v11 = v141;
        v5 = v139;
        v127 = v202;
      }

      v146 = sub_1C98BBAD0();
      v147(v146);

      sub_1C98BBC10();
    }

    return sub_1C97ACC50(v49, v128, 1, v41);
  }

  v75 = 0;
  v188 = result + ((*(v196 + 80) + 32) & ~*(v196 + 80));
  v187 = v196 + 16;
  v197 = v177 + 1;
  v185 = v177 + 11;
  v184 = *MEMORY[0x1E69AD8E8];
  v183 = v196 + 8;
  v175 = v177 + 12;
  v174 = v173 + 32;
  v177 = (v161 + 8);
  v173 += 8;
  v166 = (v196 + 32);
  v161 += 32;
  v189 = v73;
  v176 = result;
  while (1)
  {
    if (v75 >= *(v74 + 16))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      return result;
    }

    (*(v196 + 16))(v49, v188 + *(v196 + 72) * v75, v41);
    v77 = sub_1C9A91998() == v203 && v76 == v204;
    if (v77)
    {
      break;
    }

    v78 = sub_1C9A93B18();

    if (v78)
    {
      goto LABEL_13;
    }

LABEL_14:
    sub_1C9A91988();
    v82 = sub_1C98BBB58();
    v84 = v83(v82);
    if (v84 != v184)
    {
      v102 = sub_1C98BBAB8();
      v103(v102);
      v104 = sub_1C98BBB58();
      v105(v104);
      v110 = v194;
      goto LABEL_26;
    }

    sub_1C98BBB0C();
    v85 = sub_1C98BBB68();
    v86(v85);
    sub_1C98BBB0C();
    v87 = v180;
    v88 = sub_1C98B7774();
    v89(v88);
    v90 = v72;
    v91 = v179;
    sub_1C9A91868();
    v72 = v178;
    sub_1C98BB3C0(v203, v204, v200, v178);
    v92 = *v177;
    (*v177)(v91, v181);
    sub_1C98BBB94(v72);
    if (v77)
    {
      sub_1C97DA1E0(v72, &unk_1EC3CE660, &qword_1C9AAEF88);
      v93 = v170;
      sub_1C9A91878();
      v94 = v181;
      if (sub_1C97ABF20(v93, 1, v181) == 1)
      {
        sub_1C98BBB0C();
        v95 = sub_1C98BBC4C();
        v96(v95);
        v97 = sub_1C98BBAB8();
        v98(v97);
        v99 = v93;
        v100 = &qword_1EC3CB2A0;
        v101 = &qword_1C9AAEF80;
        goto LABEL_25;
      }

      sub_1C98BBB0C();
      v115 = v163;
      v116(v163, v93, v94);
      v117 = v162;
      sub_1C98BB3C0(v203, v204, v200, v162);
      v92(v115, v94);
      sub_1C98BBB0C();
      v118 = sub_1C98BBC4C();
      v119(v118);
      v120 = sub_1C98BBAB8();
      v121(v120);
      sub_1C98BBB94(v117);
      if (v77)
      {
        v99 = v117;
        v100 = &unk_1EC3CE660;
        v101 = &qword_1C9AAEF88;
LABEL_25:
        sub_1C97DA1E0(v99, v100, v101);
        v110 = v194;
        v74 = v176;
LABEL_26:
        sub_1C97ACC50(v110, 1, 1, v41);
        v73 = v189;
        goto LABEL_27;
      }

      v122 = v117;
      v109 = *v166;
      (*v166)(v160, v122, v41);
      v110 = v194;
      v123 = sub_1C98B7774();
      (v109)(v123);
    }

    else
    {
      sub_1C98BBB0C();
      v106(v87, v90);
      v107 = sub_1C98BBAB8();
      v108(v107);
      v109 = *v166;
      (*v166)(v169, v72, v41);
      v110 = v194;
      v111 = sub_1C98B7774();
      (v109)(v111);
      v72 = v90;
    }

    sub_1C9855128();
    sub_1C97ACC50(v112, v113, v114, v41);
    sub_1C98BBB94(v110);
    v73 = v189;
    v74 = v176;
    if (!v77)
    {

      goto LABEL_46;
    }

LABEL_27:
    ++v75;
    result = sub_1C97DA1E0(v110, &unk_1EC3CE660, &qword_1C9AAEF88);
    v70 = v199;
    if (v190 == v75)
    {
      goto LABEL_28;
    }
  }

LABEL_13:
  sub_1C9A91988();
  v79 = sub_1C98B890C(v200);
  v80 = sub_1C98BBB58();
  v81(v80);
  if ((v79 & 1) == 0)
  {
    goto LABEL_14;
  }

  v109 = *v166;
  v110 = v194;
  (*v166)(v194, v49, v41);
  sub_1C9855128();
  sub_1C97ACC50(v152, v153, v154, v41);
  v73 = v189;
LABEL_46:
  (*(v199 + 8))(v73, v168);
  v155 = sub_1C98BBAD0();
  v156(v155);
  v157 = v159;
  v109(v159, v110, v41);
  sub_1C98BBC10();
  v109(v49, v157, v41);
LABEL_47:
  v128 = 0;
  return sub_1C97ACC50(v49, v128, 1, v41);
}

void sub_1C98BA30C()
{
  sub_1C97AEB94();
  v1 = sub_1C97A2CEC(&qword_1EC3CB278, &qword_1C9AAEF60);
  sub_1C97DACE4(v1);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97AC02C();
  v32 = v3;
  sub_1C98BBB00();
  sub_1C9A91858();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97AEAD8();
  sub_1C98BBBF0();
  sub_1C9A91978();
  sub_1C97AE9C8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C98435A0();
  sub_1C98BBBD0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C98BBB18();
  sub_1C9A91908();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97AEAD8();
  sub_1C98BBC64(v10);
  v11 = sub_1C98BBB38();
  if (v12(v11) == *MEMORY[0x1E69AD830])
  {
    v13 = (v6 + 96);
    v14 = sub_1C98BBB4C();
    v15(v14);
    v16 = sub_1C98BBBE0();
    v17(v16);
    sub_1C9A918C8();
    sub_1C9A918E8();
    sub_1C9A91848();
    v18 = sub_1C98BBBB4();
    v13(v18);
    sub_1C9A918D8();
    v19 = sub_1C98BBCA0();
    if (sub_1C97ABF20(v19, v20, v0) == 1)
    {
      v21 = sub_1C98BBB28();
      v22(v21);
      sub_1C97DA1E0(v32, &qword_1EC3CB278, &qword_1C9AAEF60);
    }

    else
    {
      sub_1C9A91848();
      v30 = sub_1C98BBB28();
      v31(v30);
      (v13)(v32, v0);
    }
  }

  else
  {
    v23 = *(v6 + 8);
    v24 = sub_1C98BBB4C();
    v23(v24);
    sub_1C9A918F8();
    v25 = sub_1C98BBC1C();
    v26(v25);
    type metadata accessor for ModelFeatureExtractorError(0);
    sub_1C98BA9C4();
    sub_1C98BBB74();
    sub_1C97A2CEC(&qword_1EC3CB288, &qword_1C9AAEF68);
    v27 = sub_1C98BBC00();
    v28(v27);
    sub_1C9A91988();
    swift_willThrow();
    v29 = sub_1C97A7890();
    v23(v29);
  }

  sub_1C98BBC34();
  sub_1C97AEB5C();
}

void sub_1C98BA658()
{
  sub_1C97AEB94();
  v1 = sub_1C97A2CEC(&qword_1EC3CB278, &qword_1C9AAEF60);
  sub_1C97DACE4(v1);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97AC02C();
  v32 = v3;
  sub_1C98BBB00();
  sub_1C9A91858();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97AEAD8();
  sub_1C98BBBF0();
  sub_1C9A91978();
  sub_1C97AE9C8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C98435A0();
  sub_1C98BBBD0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C98BBB18();
  sub_1C9A91958();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97AEAD8();
  sub_1C98BBC64(v10);
  v11 = sub_1C98BBB38();
  if (v12(v11) == *MEMORY[0x1E69AD838])
  {
    v13 = (v6 + 96);
    v14 = sub_1C98BBB4C();
    v15(v14);
    v16 = sub_1C98BBBE0();
    v17(v16);
    sub_1C9A91918();
    sub_1C9A91938();
    sub_1C9A91848();
    v18 = sub_1C98BBBB4();
    v13(v18);
    sub_1C9A91928();
    v19 = sub_1C98BBCA0();
    if (sub_1C97ABF20(v19, v20, v0) == 1)
    {
      v21 = sub_1C98BBB28();
      v22(v21);
      sub_1C97DA1E0(v32, &qword_1EC3CB278, &qword_1C9AAEF60);
    }

    else
    {
      sub_1C9A91848();
      v30 = sub_1C98BBB28();
      v31(v30);
      (v13)(v32, v0);
    }
  }

  else
  {
    v23 = *(v6 + 8);
    v24 = sub_1C98BBB4C();
    v23(v24);
    sub_1C9A91948();
    v25 = sub_1C98BBC1C();
    v26(v25);
    type metadata accessor for ModelFeatureExtractorError(0);
    sub_1C98BA9C4();
    sub_1C98BBB74();
    sub_1C97A2CEC(&qword_1EC3CB288, &qword_1C9AAEF68);
    v27 = sub_1C98BBC00();
    v28(v27);
    sub_1C9A91988();
    swift_willThrow();
    v29 = sub_1C97A7890();
    v23(v29);
  }

  sub_1C98BBC34();
  sub_1C97AEB5C();
}

unint64_t sub_1C98BA9C4()
{
  result = qword_1EC3CB280;
  if (!qword_1EC3CB280)
  {
    type metadata accessor for ModelFeatureExtractorError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB280);
  }

  return result;
}

void sub_1C98BAA1C()
{
  sub_1C97AEB94();
  v0 = sub_1C97A2CEC(&qword_1EC3CB278, &qword_1C9AAEF60);
  sub_1C97DACE4(v0);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v37 - v2;
  sub_1C9A91858();
  sub_1C97AE9C8();
  v39 = v5;
  v40 = v4;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97AEAD8();
  v38 = v7 - v6;
  sub_1C98BBB00();
  v8 = sub_1C9A91978();
  sub_1C97AE9C8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C98435A0();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C98BBB18();
  sub_1C9A918B8();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C97AEAD8();
  sub_1C98BBC64(v17);
  v18 = sub_1C98BBB38();
  if (v19(v18) == *MEMORY[0x1E69AD928])
  {
    v20 = sub_1C98BBB4C();
    v21(v20);
    v22 = sub_1C98BBBE0();
    v23(v22);
    sub_1C9A918A8();
    v24 = sub_1C98BBCA0();
    v25 = v40;
    if (sub_1C97ABF20(v24, v26, v40) == 1)
    {
      v27 = sub_1C97DA1E0(v3, &qword_1EC3CB278, &qword_1C9AAEF60);
      MEMORY[0x1CCA8F540](v27);
    }

    else
    {
      v35 = v38;
      v34 = v39;
      v36 = (*(v39 + 32))(v38, v3, v25);
      MEMORY[0x1CCA8F540](v36);
      sub_1C9A91848();
      (*(v34 + 8))(v35, v25);
    }

    v28 = sub_1C98BBC80();
    v29(v28);
  }

  else
  {
    v30 = *(v10 + 8);
    v31 = sub_1C98BBB4C();
    v30(v31);
    sub_1C9A91968();
    type metadata accessor for ModelFeatureExtractorError(0);
    sub_1C98BA9C4();
    sub_1C98BBB74();
    v33 = v32;
    sub_1C97A2CEC(&qword_1EC3CB288, &qword_1C9AAEF68);
    (*(v10 + 16))(v33, v14, v8);
    sub_1C9A91988();
    swift_willThrow();
    (v30)(v14, v8);
  }

  sub_1C97CB094();
  sub_1C97AEB5C();
}

uint64_t sub_1C98BADA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v87 = a5;
  v88 = a4;
  v9 = sub_1C97A2CEC(&qword_1EC3CB2A0, &qword_1C9AAEF80);
  sub_1C97DACE4(v9);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97AC02C();
  v78 = v11;
  sub_1C98BBB00();
  sub_1C9A919C8();
  sub_1C97AE9C8();
  v81 = v13;
  v82 = v12;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C97ABF90();
  v75 = v14;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C98BBB18();
  v16 = sub_1C97A2CEC(&unk_1EC3CE660, &qword_1C9AAEF88);
  v17 = sub_1C97DACE4(v16);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C97ABF90();
  v76 = v18;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C97ABFC0();
  v79 = v20;
  sub_1C98BBB00();
  sub_1C9A919A8();
  sub_1C97AE9C8();
  v85 = v22;
  v86 = v21;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C97ABF90();
  v74 = v23;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C97ABFC0();
  v77 = v25;
  sub_1C98BBB00();
  v80 = sub_1C9A91888();
  sub_1C97AE9C8();
  v84 = v26;
  MEMORY[0x1EEE9AC00](v27);
  sub_1C97AEAD8();
  v30 = v29 - v28;
  v31 = sub_1C9A91978();
  sub_1C97AE9C8();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  sub_1C98435A0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v73 - v36;
  v39 = sub_1C9A91998() == a2 && v38 == a3;
  v83 = a2;
  if (v39)
  {
    v40 = a3;
  }

  else
  {
    v40 = a3;
    v41 = sub_1C9A93B18();

    if ((v41 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  sub_1C9A91988();
  v42 = sub_1C98B890C(v88);
  (*(v33 + 8))(v37, v31);
  if (v42)
  {
    v43 = v86;
    v44 = v87;
    (*(v85 + 16))(v87, a1, v86);
LABEL_17:
    v60 = 0;
    return sub_1C97ACC50(v44, v60, 1, v43);
  }

LABEL_10:
  sub_1C9A91988();
  v45 = sub_1C97E89F0();
  if (v46(v45) != *MEMORY[0x1E69AD8E8])
  {
    v61 = sub_1C97E89F0();
    v62(v61);
    v60 = 1;
    v43 = v86;
    v44 = v87;
    return sub_1C97ACC50(v44, v60, 1, v43);
  }

  v47 = sub_1C97E89F0();
  v48(v47);
  v49 = v84;
  v50 = sub_1C97A7890();
  v51 = v80;
  v52(v50);
  sub_1C9A91868();
  v53 = v79;
  v54 = v40;
  sub_1C98BB3C0(v83, v40, v88, v79);
  v56 = v81;
  v55 = v82;
  v73 = *(v81 + 8);
  v73(v5, v82);
  v43 = v86;
  if (sub_1C97ABF20(v53, 1, v86) != 1)
  {
    (*(v49 + 8))(v30, v51);
    v63 = *(v85 + 32);
    v64 = v77;
    v63(v77, v53, v43);
    v44 = v87;
    v63(v87, v64, v43);
    goto LABEL_17;
  }

  sub_1C97DA1E0(v53, &unk_1EC3CE660, &qword_1C9AAEF88);
  v57 = v78;
  sub_1C9A91878();
  if (sub_1C97ABF20(v57, 1, v55) != 1)
  {
    (*(v56 + 32))(v75, v57, v55);
    v66 = v76;
    sub_1C98BB3C0(v83, v54, v88, v76);
    v67 = sub_1C98B7774();
    (v73)(v67);
    v68 = sub_1C98BBC8C();
    v69(v68);
    v70 = sub_1C97ABF20(v66, 1, v43);
    v44 = v87;
    if (v70 == 1)
    {
      sub_1C97DA1E0(v66, &unk_1EC3CE660, &qword_1C9AAEF88);
      v60 = 1;
      return sub_1C97ACC50(v44, v60, 1, v43);
    }

    v71 = *(v85 + 32);
    v72 = v74;
    v71(v74, v66, v43);
    v71(v44, v72, v43);
    goto LABEL_17;
  }

  v58 = sub_1C98BBC8C();
  v59(v58);
  sub_1C97DA1E0(v57, &qword_1EC3CB2A0, &qword_1C9AAEF80);
  v60 = 1;
  v44 = v87;
  return sub_1C97ACC50(v44, v60, 1, v43);
}

uint64_t sub_1C98BB3C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v47 = a2;
  v48 = a3;
  v46 = a1;
  v39[0] = a4;
  v4 = sub_1C97A2CEC(&unk_1EC3CE660, &qword_1C9AAEF88);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v39 - v5;
  v7 = sub_1C9A919A8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C97A2CEC(&qword_1EC3CB2B0, &qword_1C9AAEF98);
  MEMORY[0x1EEE9AC00](v11);
  v40 = (v39 - v12);
  v13 = &qword_1EC3CB2B8;
  v14 = &unk_1C9AAEFA0;
  v15 = sub_1C97A2CEC(&qword_1EC3CB2B8, &unk_1C9AAEFA0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v39 - v19;
  result = sub_1C9A919B8();
  v22 = 0;
  v41 = v8;
  v42 = result;
  v23 = *(result + 16);
  v39[1] = v8 + 16;
  v49 = (v8 + 32);
  v44 = v23;
  v45 = (v8 + 8);
  while (1)
  {
    if (v22 == v23)
    {
      v24 = 1;
      v22 = v23;
      goto LABEL_7;
    }

    if ((v22 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v22 >= *(v42 + 16))
    {
      goto LABEL_14;
    }

    v43 = v22 + 1;
    v25 = v41;
    v26 = v42 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22;
    v27 = *(v11 + 48);
    v28 = v11;
    v29 = v18;
    v30 = v10;
    v31 = v14;
    v32 = v13;
    v33 = v6;
    v34 = v40;
    *v40 = v22;
    (*(v25 + 16))(&v34[v27], v26, v7);
    v35 = v34;
    v6 = v33;
    v13 = v32;
    v14 = v31;
    v10 = v30;
    v18 = v29;
    v11 = v28;
    sub_1C98BB7B8(v35, v18, &qword_1EC3CB2B0, &qword_1C9AAEF98);
    v24 = 0;
    v22 = v43;
LABEL_7:
    sub_1C97ACC50(v18, v24, 1, v11);
    sub_1C98BB7B8(v18, v20, v13, v14);
    if (sub_1C97ABF20(v20, 1, v11) == 1)
    {

      v37 = 1;
      v38 = v39[0];
      return sub_1C97ACC50(v38, v37, 1, v7);
    }

    v36 = *v49;
    (*v49)(v10, &v20[*(v11 + 48)], v7);
    sub_1C98BADA4(v10, v46, v47, v48, v6);
    (*v45)(v10, v7);
    if (sub_1C97ABF20(v6, 1, v7) != 1)
    {

      v38 = v39[0];
      v36(v39[0], v6, v7);
      v37 = 0;
      return sub_1C97ACC50(v38, v37, 1, v7);
    }

    result = sub_1C97DA1E0(v6, &unk_1EC3CE660, &qword_1C9AAEF88);
    v23 = v44;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1C98BB7B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1C97A2CEC(a3, a4);
  sub_1C97DA940();
  v5 = sub_1C97CB094();
  v6(v5);
  return a2;
}

uint64_t sub_1C98BB814(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3CB288, &qword_1C9AAEF68);

  return sub_1C97ABF20(a1, a2, v4);
}

uint64_t sub_1C98BB868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C97A2CEC(&qword_1EC3CB288, &qword_1C9AAEF68);

  return sub_1C97ACC50(a1, a2, a3, v6);
}

uint64_t sub_1C98BB8CC(uint64_t a1)
{
  sub_1C98BB99C(319);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = sub_1C9A91978();
    if (v5 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v7;
    }
  }

  return v3;
}

void sub_1C98BB99C(uint64_t a1)
{
  if (!qword_1EC3CB2D8)
  {
    sub_1C9A91978();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC3CB2D8);
    }
  }
}

uint64_t sub_1C98BBA4C(uint64_t a1)
{
  result = sub_1C9A91A68();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C98BBB74()
{

  return swift_allocError();
}

uint64_t sub_1C98BBC64(uint64_t a1)
{

  return sub_1C9A91988();
}

uint64_t sub_1C98BBCC4(uint64_t a1)
{
  result = sub_1C9886CD8(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1C98BC898();
  if (v7)
  {
    return 0;
  }

  else
  {
    return sub_1C98BC2B0(v5, v6, 0, a1);
  }
}

uint64_t sub_1C98BBD24(uint64_t a1)
{
  result = sub_1C98BC4BC(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1C98BC898();
  if (v7)
  {
    return 0;
  }

  else
  {
    return sub_1C98BC6E8(v5, v6, 0, a1);
  }
}

void *sub_1C98BBD84(uint64_t a1)
{
  result = sub_1C9887A94();
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == (1 << *(a1 + 32)))
  {
    return 0;
  }

  else
  {
    return sub_1C98BC3CC(&v5, result, v3, 0, a1);
  }
}

uint64_t sub_1C98BBE10(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1C9A92618();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C98BBE70(uint64_t a1, uint64_t (*a2)(void))
{
  result = sub_1C9886CD8(a1);
  if (v6)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1C98BC898();
  if (v7)
  {
    return 0;
  }

  else
  {
    return a2();
  }
}

uint64_t sub_1C98BBED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1C9A91558();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_1C97ACC50(a2, v7, 1, v6);
}

SEL *sub_1C98BBFBC(void *a1, SEL *a2)
{
  v2 = a2;
  v4 = [a1 *a2];
  sub_1C97FD598(v5);
  v6 = sub_1C9A92328();

  v7 = *(v6 + 16);

  if (v7 != 1)
  {
    sub_1C9834F94();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();
    return v2;
  }

  v8 = [a1 *v2];
  v9 = sub_1C9A92328();
  v10 = sub_1C98BBE70(v9, sub_1C98BC32C);

  if (v10)
  {

    if ([v10 type] != 5)
    {
      sub_1C9834F94();
      swift_allocError();
      *v17 = 1;
      swift_willThrow();

      return v2;
    }

    v12 = [a1 *v2];
    v13 = sub_1C9A92328();
    v2 = sub_1C98BBCC4(v13);
    v15 = v14;

    if (v15)
    {

      return v2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C98BC19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  ObjectType = swift_getObjectType();
  v7 = [objc_allocWithZone(MEMORY[0x1E695FF08]) init];
  v8 = (*(a3 + 24))(a1, v7, ObjectType, a3);

  objc_autoreleasePoolPop(v5);
  return v8;
}

uint64_t sub_1C98BC27C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C98BC2B0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 48) + 16 * result);

    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1C98BC32C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1C98BC37C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_1C98BC3CC(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = *(*(a5 + 56) + 8 * a2);
    *result = v6;

    v7 = v6;
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1C98BC45C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1C9A93478();
  }

  else
  {
    return sub_1C9A93438();
  }
}

void sub_1C98BC4FC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v7 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v8 = a4;
      }

      else
      {
        v8 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1CCA91190](a1, a2, v8);
      type metadata accessor for SNModelFeatureConnection(v9);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for SNModelFeatureConnection(a5);
    if (sub_1C9A934A8() == *(a4 + 36))
    {
      sub_1C9A934B8();
      swift_dynamicCast();
      v5 = v16;
      v10 = sub_1C9A931D8();
      v11 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v7 = v10 & v11;
        if (((*(a4 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
        {
          goto LABEL_25;
        }

        v12 = *(*(a4 + 48) + 8 * v7);
        v13 = sub_1C9A931E8();

        if (v13)
        {
          goto LABEL_18;
        }

        v10 = v7 + 1;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:

    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_18:
  }

  v14 = *(*(a4 + 48) + 8 * v7);

  v15 = v14;
}

uint64_t sub_1C98BC6E8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 48) + 16 * result);

    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for SNCoreMLError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C98BC844()
{
  result = qword_1EC3CB2F0[0];
  if (!qword_1EC3CB2F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3CB2F0);
  }

  return result;
}

void sub_1C98BC8A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  v3 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    while (1)
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      v6 = *(v3 + 16);
      if (__OFADD__(v6, v5))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v6 + v5 > *(v3 + 24) >> 1)
      {
        sub_1C97E5448();
        v3 = v7;
      }

      if (*(v4 + 16))
      {
        v8 = *(v3 + 16);
        if ((*(v3 + 24) >> 1) - v8 < v5)
        {
          goto LABEL_16;
        }

        memcpy((v3 + 24 * v8 + 32), (v4 + 32), 24 * v5);

        if (v5)
        {
          v9 = *(v3 + 16);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_17;
          }

          *(v3 + 16) = v11;
        }
      }

      else
      {

        if (v5)
        {
          goto LABEL_15;
        }
      }

      ++v2;
      if (!--v1)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }
}

uint64_t sub_1C98BC9F0(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = *(a1 + 16);
  v4 = a1 + 32;
  for (result = MEMORY[0x1E69E7CC0]; v3; --v3)
  {
    v4 += 8;
    v7 = result;

    a2(v6);
    result = v7;
  }

  return result;
}

void sub_1C98BCA64(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  v3 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    while (1)
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      v6 = *(v3 + 16);
      if (__OFADD__(v6, v5))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v6 + v5 > *(v3 + 24) >> 1)
      {
        sub_1C97E5014();
        v3 = v7;
      }

      if (*(v4 + 16))
      {
        v8 = *(v3 + 16);
        if ((*(v3 + 24) >> 1) - v8 < v5)
        {
          goto LABEL_16;
        }

        memcpy((v3 + 4 * v8 + 32), (v4 + 32), 4 * v5);

        if (v5)
        {
          v9 = *(v3 + 16);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_17;
          }

          *(v3 + 16) = v11;
        }
      }

      else
      {

        if (v5)
        {
          goto LABEL_15;
        }
      }

      ++v2;
      if (!--v1)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }
}

BOOL sub_1C98BCB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_1C9A92438() & 1) == 0)
  {
    return 0;
  }

  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  v12 = type metadata accessor for SharedVGGish.Configuration(0, v14);
  return *(a1 + *(v12 + 52)) == *(a2 + *(v12 + 52));
}

uint64_t sub_1C98BCBFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x80000001C9AD41E0 == a2;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C9AD62D0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

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

unint64_t sub_1C98BCCD0(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_1C98BCD08(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v13 = *(a2 + 32);
  v14 = v3;
  v15[0] = v3;
  v15[1] = v13;
  type metadata accessor for SharedVGGish.Configuration.CodingKeys(255, v15);
  sub_1C98BDFB0();
  swift_getWitnessTable();
  v4 = sub_1C9A93A78();
  sub_1C97AE9C8();
  v6 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9A93DD8();
  LOBYTE(v15[0]) = 0;
  v10 = v16;
  sub_1C9A93A18();
  if (!v10)
  {
    LOBYTE(v15[0]) = 1;
    sub_1C9A93A08();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1C98BCEE8(uint64_t a1)
{
  sub_1C9A93CC8();
  sub_1C98BCEA0(v3, a1);
  return sub_1C9A93D18();
}

uint64_t sub_1C98BCF30@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v38 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v12;
  v44 = v13;
  v45 = v14;
  v46 = v15;
  type metadata accessor for SharedVGGish.Configuration.CodingKeys(255, &v43);
  sub_1C98BDFB0();
  swift_getWitnessTable();
  v41 = sub_1C9A93978();
  sub_1C97AE9C8();
  v37 = v16;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v17);
  v39 = a2;
  v40 = a3;
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = a5;
  v18 = type metadata accessor for SharedVGGish.Configuration(0, &v43);
  sub_1C97AE9C8();
  v35 = v19;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v33 - v21;
  sub_1C97A5A8C(a1, a1[3]);
  v23 = v47;
  sub_1C9A93DB8();
  if (v23)
  {
    return sub_1C97A592C(a1);
  }

  v47 = v22;
  v34 = v18;
  v24 = v38;
  LOBYTE(v43) = 0;
  v25 = v39;
  sub_1C9A938F8();
  v26 = v47;
  (*(v24 + 32))(v47, v42, v25);
  LOBYTE(v43) = 1;
  v27 = sub_1C9A938E8();
  v28 = sub_1C98BDFC8();
  v29(v28);
  v30 = v34;
  *&v26[*(v34 + 52)] = v27;
  v31 = v35;
  (*(v35 + 16))(v36, v26, v30);
  sub_1C97A592C(a1);
  return (*(v31 + 8))(v26, v30);
}

uint64_t sub_1C98BD290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C98BCBFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C98BD2C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C98BD318(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1C98BD3B0(uint64_t a1, uint64_t a2)
{
  sub_1C9A93CC8();
  sub_1C98BCEA0(v4, a2);
  return sub_1C9A93D18();
}

uint64_t sub_1C98BD404()
{
  v1 = sub_1C97A2CEC(qword_1EC3C6788, &unk_1C9AA4F80);
  sub_1C97AE9C8();
  v3 = v2;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = *(v0 + 16);
  v8 = swift_allocObject();
  v8[2] = sub_1C97AE650;
  v8[3] = v0;
  v8[4] = v7;

  sub_1C97A2CEC(&unk_1EC3CC280, &qword_1C9A9C7A0);
  sub_1C97AE67C(&unk_1EC3C4A90, &unk_1EC3CC280, &qword_1C9A9C7A0, MEMORY[0x1E695BED8]);
  sub_1C9A91EF8();
  sub_1C97AE67C(&unk_1EC3C4A58, qword_1EC3C6788, &unk_1C9AA4F80, MEMORY[0x1E695C058]);
  v9 = sub_1C9A91F28();
  (*(v3 + 8))(v6, v1);
  return v9;
}

uint64_t sub_1C98BD600(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_DWORD *sub_1C98BD678(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v7 = a2 - v5;
    v8 = v6 & 0xFFFFFFF8;
    if ((v6 & 0xFFFFFFF8) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = v7 + 1;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    switch(v11)
    {
      case 1:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v12 = *(result + v6);
        if (!v12)
        {
          goto LABEL_22;
        }

LABEL_18:
        v13 = v12 - 1;
        if (v8)
        {
          v13 = 0;
          LODWORD(v8) = *result;
        }

        return (v5 + (v8 | v13) + 1);
      default:
LABEL_22:
        if (v5)
        {
          return sub_1C97ABF20(result, v5, v4);
        }

        return 0;
    }
  }

  return sub_1C97ABF20(result, v5, v4);
}

void sub_1C98BD77C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = a3 - v7;
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
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
  }

  if (a2 <= v7)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:

          sub_1C97ACC50(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = a2 - v7;
    }

    else
    {
      v13 = 1;
    }

    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v14 = ~v7 + a2;
      bzero(a1, v8);
      *a1 = v14;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v13;
        break;
      case 2:
        *&a1[v8] = v13;
        break;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v8] = v13;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C98BD974(uint64_t *a1, uint64_t a2)
{

  sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
  sub_1C97AE67C(&unk_1EC3C4A40, &qword_1EC3C9AA0, &qword_1C9AA0690, MEMORY[0x1E69E6328]);
  return sub_1C9A91B88();
}

uint64_t sub_1C98BDA34@<X0>(void **a1@<X0>, uint64_t a4@<X8>)
{
  v6 = sub_1C97A2CEC(&qword_1EC3C8A78, &unk_1C9AA4F70);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v19 - v10;
  v12 = *a1;
  v13 = sub_1C9A92478();
  v14 = [v12 featureValueForName_];

  if (v14)
  {
    sub_1C9A92FD8();
  }

  else
  {
    v15 = sub_1C97A2CEC(&qword_1EC3C8A38, &unk_1C9AA4F50);
    sub_1C97ACC50(v11, 1, 1, v15);
  }

  sub_1C98BDC6C(v11, v9);
  v16 = sub_1C97A2CEC(&qword_1EC3C8A38, &unk_1C9AA4F50);
  if (sub_1C97ABF20(v9, 1, v16) == 1)
  {
    sub_1C98BDCDC(v9);
    sub_1C986EEEC();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    return sub_1C98BDCDC(v11);
  }

  else
  {
    sub_1C98BDCDC(v11);
    return (*(*(v16 - 8) + 32))(a4, v9, v16);
  }
}

uint64_t sub_1C98BDC34@<X0>(uint64_t *a4@<X8>)
{
  result = sub_1C98BFACC();
  *a4 = result;
  return result;
}

uint64_t sub_1C98BDC6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3C8A78, &unk_1C9AA4F70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C98BDCDC(uint64_t a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3C8A78, &unk_1C9AA4F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *sub_1C98BDD5C(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SharedVGGish.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C98BDF08()
{
  result = qword_1EC3CB378;
  if (!qword_1EC3CB378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB378);
  }

  return result;
}

uint64_t sub_1C98BDFD8@<X0>(id a1@<X1>, void *a2@<X8>)
{
  v3 = a1;
  sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
  v4 = sub_1C9A924F8();
  v6 = v5;
  sub_1C98BE060();
  result = swift_allocError();
  *v8 = v4;
  v8[1] = v6;
  *a2 = result;
  return result;
}

unint64_t sub_1C98BE060()
{
  result = qword_1EC3CB380;
  if (!qword_1EC3CB380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB380);
  }

  return result;
}

unint64_t sub_1C98BE0C8()
{
  result = qword_1EC3CB388[0];
  if (!qword_1EC3CB388[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3CB388);
  }

  return result;
}

uint64_t sub_1C98BE11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v10 = sub_1C97A83D4(a6);
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a2;
  v11[5] = a3;

  sub_1C9803BB8(sub_1C98BECF8, v10, &unk_1C9AAF600, v11, a4);
}

uint64_t sub_1C98BE1FC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C97AA640;

  return v6(a1);
}

uint64_t sub_1C98BE31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C98BE340, 0, 0);
}

uint64_t sub_1C98BE340(double a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2];
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  type metadata accessor for XPCProxyDecoder.SingleValueContainer(a1);
  v9 = swift_allocObject();
  v1[5] = v9;
  v9[2] = v5;
  v9[3] = v6;
  v9[4] = v7;
  v9[5] = v8;
  sub_1C97A8F30(v5, v6, v7, v8);
  sub_1C98BE668(v9, v2, v3);
  v1[6] = v10;
  v11 = swift_task_alloc();
  v1[7] = v11;
  *v11 = v1;
  v11[1] = sub_1C98BE454;

  return sub_1C98040B4();
}

uint64_t sub_1C98BE454(uint64_t a1, uint64_t a2)
{
  sub_1C97AA890();
  v7 = v6;
  v8 = *v3;
  sub_1C97AA83C();
  *v9 = v8;
  v7[8] = v2;

  if (v2)
  {
    v10 = sub_1C98BE5F4;
  }

  else
  {

    v7[9] = a2;
    v7[10] = a1;
    v10 = sub_1C98BE584;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1C98BE584()
{
  sub_1C97AA884();

  v1 = v0[1];
  v3 = v0[9];
  v2 = v0[10];

  return v1(v2, v3);
}

uint64_t sub_1C98BE5F4()
{
  sub_1C97AA884();

  v1 = *(v0 + 8);

  return v1();
}

void *sub_1C98BE668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return &unk_1C9AAF620;
}

uint64_t sub_1C98BE6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  v3[6] = v6;
  type metadata accessor for XPCFunction(0, &type metadata for XPCVoid, a2, v7);
  v3[4] = &off_1F494B9C0;
  v3[5] = a3;
  swift_getWitnessTable();
  *v6 = v3;
  v6[1] = sub_1C98BE7D8;

  return sub_1C987CBD8();
}

uint64_t sub_1C98BE7D8()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;
  *(v4 + 56) = v0;

  if (v0)
  {
    v5 = sub_1C97A9A2C;
  }

  else
  {
    v5 = sub_1C98BE8DC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C98BE8F8()
{
  sub_1C97AA95C();
  v2 = v1;
  v4 = v3;
  v6 = v5;

  v7 = swift_task_alloc();
  *(v0 + 16) = v7;
  *v7 = v0;
  v7[1] = sub_1C98BE9A8;

  return sub_1C98BE31C(v6, v4, v2);
}

uint64_t sub_1C98BE9A8()
{
  sub_1C97AA95C();
  sub_1C98BEFBC();
  v4 = *v3;
  sub_1C97AA83C();
  *v5 = v4;

  v8 = *(v4 + 8);
  if (!v1)
  {
    v6 = v2;
    v7 = v0;
  }

  return v8(v6, v7);
}

uint64_t sub_1C98BEAA0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1C98BEB50;

  return sub_1C98BE8F8();
}

uint64_t sub_1C98BEB50()
{
  sub_1C98BEFBC();
  v5 = v4;
  v6 = *v3;
  sub_1C97AA83C();
  *v7 = v6;

  if (!v1)
  {
    v8 = *(v5 + 16);
    *v8 = v2;
    v8[1] = v0;
  }

  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_1C98BEC58(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C98BECA8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C98BED10(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C97AA640;

  return sub_1C98BE1FC(a1, v4);
}

uint64_t sub_1C98BEDD0()
{
  sub_1C97AA95C();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C98BEE74;

  return sub_1C98BE6DC(v4, v2, v3);
}

uint64_t sub_1C98BEE74()
{
  sub_1C97AA95C();
  sub_1C98BEFBC();
  v3 = *v2;
  sub_1C97AA83C();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v1, v0);
}

uint64_t sub_1C98BEF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C98BEFD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  v16[0] = a4;
  v16[1] = a5;
  v16[2] = a6;
  v16[3] = a7;
  result = type metadata accessor for SharedReformattedAudioSource.Configuration(0, v16);
  *(a8 + *(result + 52)) = a2;
  *(a8 + *(result + 56)) = a3;
  return result;
}

uint64_t sub_1C98BF080()
{
  v2 = sub_1C97A2CEC(&unk_1EC3CB410, &unk_1C9ACDD50);
  sub_1C97AE9C8();
  v4 = v3;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AEA4C();
  v6 = *(v0 + 16);
  v7 = swift_allocObject();
  v7[2] = sub_1C97AE650;
  v7[3] = v0;
  v7[4] = v6;

  sub_1C97A2CEC(&unk_1EC3C7390, &unk_1C9A9C770);
  sub_1C97AE9EC();
  sub_1C97AE67C(v8, &unk_1EC3C7390, &unk_1C9A9C770, v9);
  sub_1C9A91EF8();
  v10 = sub_1C97AE67C(&unk_1EC3C4A68, &unk_1EC3CB410, &unk_1C9ACDD50, MEMORY[0x1E695C058]);
  v11 = sub_1C98C6874(v10);
  (*(v4 + 8))(v1, v2);
  return v11;
}

void sub_1C98BF250()
{
  sub_1C97AEB94();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v11 = v10;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C97AEA4C();
  (*(v4 + 16))(v6, v4);
  (*(v2 + 40))(v8, AssociatedTypeWitness, v2);
  (*(v11 + 8))(v0, AssociatedTypeWitness);
  sub_1C97AEB5C();
}

void sub_1C98BF3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97F09E4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1C97F09E4();
  v7 = swift_getAssociatedConformanceWitness();
  sub_1C97F09E4();
  v8 = swift_getAssociatedConformanceWitness();
  sub_1C98C5878(a1, sub_1C98C6548, v10, AssociatedTypeWitness, AssociatedConformanceWitness, v7, v8, v9, v10[0], v10[1], v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
}

void sub_1C98BF4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_1C988EB84();
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v34 = v58 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = (*(v35 + 16))(v36, v35);
  (*(v30 + 16))(v34, v20, v26);
  v38 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v26;
  *(v39 + 24) = v24;
  (*(v30 + 32))(v39 + v38, v34, v26);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = sub_1C97AEA9C(AssociatedTypeWitness, v41, v42, v43, &unk_1C9AFDF2C);
  v48 = sub_1C97AEA9C(v44, v45, v46, v47, &unk_1C9AFDF34);
  v52 = sub_1C97AEA9C(v48, v49, v50, v51, &unk_1C9AFDF3C);
  v58[0] = AssociatedTypeWitness;
  v58[1] = v44;
  v58[2] = v48;
  v58[3] = v52;
  v53 = type metadata accessor for SharedReformattedAudioSource.Configuration(0, v58);
  v55 = type metadata accessor for SharedReformattedAudioSource.Instance(v54);
  WitnessTable = swift_getWitnessTable();
  sub_1C99D6B34(v28, v37, sub_1C98C6568, v39, v53, v55, WitnessTable, &a10);

  sub_1C97AEB5C();
}

void sub_1C98BF700()
{
  sub_1C97AEA3C();
  swift_getWitnessTable();
  v1 = *(v0 + 96);
  v2[0] = *(v0 + 80);
  v2[1] = v1;
  _s21ServerEnvironmentImplVMa(255, v2);
  swift_getWitnessTable();
  sub_1C98C69E0();
}

void sub_1C98BF780()
{
  sub_1C97AEB48();
  WitnessTable = swift_getWitnessTable();
  sub_1C98C6984(WitnessTable);
}

uint64_t sub_1C98BF808()
{
  sub_1C98C6824();
  sub_1C97A2CEC(&qword_1EC3CB4A0, &unk_1C9AAF8B0);
  sub_1C98C6800();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C98C67E8();
  sub_1C98C0B4C(v3, v4, v5);
  sub_1C98C68EC();
  if (v0)
  {
    sub_1C98C6904();
    v6 = sub_1C98C67BC(&qword_1EC3C4A50);
    sub_1C98C6854(v6);
    sub_1C97F07FC();
    v7 = swift_allocObject();
    v8 = sub_1C98C6814(v7);
    *v9 = sub_1C98C677C;
    v9[1] = v8;
    v10 = sub_1C98C6790(&qword_1EC3CB4A8);
    sub_1C98C6874(v10);
    sub_1C98C6834();
  }

  return sub_1C98C6890();
}

uint64_t sub_1C98BF910(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = sub_1C97A2CEC(&qword_1EC3CB420, &qword_1C9AAF848);
  MEMORY[0x1EEE9AC00](v6);
  v7 = objc_autoreleasePoolPush();
  v8 = sub_1C98C0EB4(a1, a2, a3);
  objc_autoreleasePoolPop(v7);
  return v8;
}

uint64_t sub_1C98BFACC()
{
  sub_1C98C6824();
  sub_1C97A2CEC(&qword_1EC3CB4A0, &unk_1C9AAF8B0);
  sub_1C98C6800();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C98C67E8();
  sub_1C98C121C(v3, v4, v5);
  sub_1C98C68EC();
  if (v0)
  {
    sub_1C98C6904();
    v6 = sub_1C98C67BC(&qword_1EC3C4A50);
    sub_1C98C6854(v6);
    sub_1C97F07FC();
    v7 = swift_allocObject();
    v8 = sub_1C98C6814(v7);
    *v9 = sub_1C98C677C;
    v9[1] = v8;
    v10 = sub_1C98C6790(&qword_1EC3CB4A8);
    sub_1C98C6874(v10);
    sub_1C98C6834();
  }

  return sub_1C98C6890();
}

uint64_t sub_1C98BFBD4()
{
  sub_1C98C6824();
  sub_1C97A2CEC(&qword_1EC3CB4A0, &unk_1C9AAF8B0);
  sub_1C98C6800();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C98C67E8();
  sub_1C98C1584(v3, v4, v5);
  sub_1C98C68EC();
  if (v0)
  {
    sub_1C98C6904();
    v6 = sub_1C98C67BC(&qword_1EC3C4A50);
    sub_1C98C6854(v6);
    sub_1C97F07FC();
    v7 = swift_allocObject();
    v8 = sub_1C98C6814(v7);
    *v9 = sub_1C98C677C;
    v9[1] = v8;
    v10 = sub_1C98C6790(&qword_1EC3CB4A8);
    sub_1C98C6874(v10);
    sub_1C98C6834();
  }

  return sub_1C98C6890();
}

uint64_t sub_1C98BFCDC()
{
  sub_1C98C6824();
  sub_1C97A2CEC(&qword_1EC3CB508, &unk_1C9AAF8F0);
  sub_1C98C6800();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C98C67E8();
  sub_1C98C18EC(v3, v4, v5);
  sub_1C98C68EC();
  if (v0)
  {
    sub_1C98C6904();
    v6 = sub_1C98C67BC(&qword_1EC3C7270);
    sub_1C98C6854(v6);
    sub_1C97F07FC();
    v7 = swift_allocObject();
    v8 = sub_1C98C6814(v7);
    *v9 = sub_1C98C677C;
    v9[1] = v8;
    v10 = sub_1C98C6790(&qword_1EC3CB520);
    sub_1C98C6874(v10);
    sub_1C98C6834();
  }

  return sub_1C98C6890();
}

uint64_t sub_1C98BFDE4()
{
  sub_1C98C6824();
  sub_1C97A2CEC(&qword_1EC3CB4C0, &qword_1C9AAF8D0);
  sub_1C98C6800();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C98C67E8();
  sub_1C98C1C54(v3, v4, v5);
  sub_1C98C68EC();
  if (v0)
  {
    sub_1C98C6904();
    v6 = sub_1C98C67BC(&qword_1EC3CB4D0);
    sub_1C98C6854(v6);
    sub_1C97F07FC();
    v7 = swift_allocObject();
    v8 = sub_1C98C6814(v7);
    *v9 = sub_1C98C677C;
    v9[1] = v8;
    v10 = sub_1C98C6790(&qword_1EC3CB4D8);
    sub_1C98C6874(v10);
    sub_1C98C6834();
  }

  return sub_1C98C6890();
}

uint64_t sub_1C98BFEEC()
{
  sub_1C98C6824();
  sub_1C97A2CEC(&qword_1EC3CB4C0, &qword_1C9AAF8D0);
  sub_1C98C6800();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C98C67E8();
  sub_1C98C2030(v3, v4, v5);
  sub_1C98C68EC();
  if (v0)
  {
    sub_1C98C6904();
    v6 = sub_1C98C67BC(&qword_1EC3CB4D0);
    sub_1C98C6854(v6);
    sub_1C97F07FC();
    v7 = swift_allocObject();
    v8 = sub_1C98C6814(v7);
    *v9 = sub_1C98C677C;
    v9[1] = v8;
    v10 = sub_1C98C6790(&qword_1EC3CB4D8);
    sub_1C98C6874(v10);
    sub_1C98C6834();
  }

  return sub_1C98C6890();
}

uint64_t sub_1C98BFFF4()
{
  sub_1C98C6824();
  sub_1C97A2CEC(&qword_1EC3CB568, &unk_1C9AAF920);
  sub_1C98C6800();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C98C67E8();
  sub_1C98C2398(v3, v4, v5);
  sub_1C98C68EC();
  if (v0)
  {
    sub_1C98C6904();
    v6 = sub_1C98C67BC(&qword_1EC3CE470);
    sub_1C98C6854(v6);
    sub_1C97F07FC();
    v7 = swift_allocObject();
    v8 = sub_1C98C6814(v7);
    *v9 = sub_1C98C677C;
    v9[1] = v8;
    v10 = sub_1C98C6790(&qword_1EC3CB580);
    sub_1C98C6874(v10);
    sub_1C98C6834();
  }

  return sub_1C98C6890();
}

uint64_t sub_1C98C00FC()
{
  sub_1C98C6824();
  sub_1C97A2CEC(&qword_1EC3CB5D0, &qword_1C9AAF958);
  sub_1C98C6800();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C98C67E8();
  sub_1C98C2774(v3, v4, v5);
  sub_1C98C68EC();
  if (v0)
  {
    sub_1C98C6904();
    v6 = sub_1C98C67BC(&qword_1EC3CB5E0);
    sub_1C98C6854(v6);
    sub_1C97F07FC();
    v7 = swift_allocObject();
    v8 = sub_1C98C6814(v7);
    *v9 = sub_1C98C677C;
    v9[1] = v8;
    v10 = sub_1C98C6790(&qword_1EC3CB5E8);
    sub_1C98C6874(v10);
    sub_1C98C6834();
  }

  return sub_1C98C6890();
}

uint64_t sub_1C98C0204()
{
  sub_1C98C6824();
  sub_1C97A2CEC(&qword_1EC3CB568, &unk_1C9AAF920);
  sub_1C98C6800();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C98C67E8();
  sub_1C98C2ADC(v3, v4, v5);
  sub_1C98C68EC();
  if (v0)
  {
    sub_1C98C6904();
    v6 = sub_1C98C67BC(&qword_1EC3CE470);
    sub_1C98C6854(v6);
    sub_1C97F07FC();
    v7 = swift_allocObject();
    v8 = sub_1C98C6814(v7);
    *v9 = sub_1C98C677C;
    v9[1] = v8;
    v10 = sub_1C98C6790(&qword_1EC3CB580);
    sub_1C98C6874(v10);
    sub_1C98C6834();
  }

  return sub_1C98C6890();
}

uint64_t sub_1C98C030C()
{
  sub_1C98C6824();
  sub_1C97A2CEC(&qword_1EC3CB610, &qword_1C9AAF978);
  sub_1C98C6800();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C98C67E8();
  sub_1C98C2E44(v3, v4, v5);
  sub_1C98C68EC();
  if (v0)
  {
    sub_1C98C6904();
    v6 = sub_1C98C67BC(&qword_1EC3CB620);
    sub_1C98C6854(v6);
    sub_1C97F07FC();
    v7 = swift_allocObject();
    v8 = sub_1C98C6814(v7);
    *v9 = sub_1C98C677C;
    v9[1] = v8;
    v10 = sub_1C98C6790(&qword_1EC3CB628);
    sub_1C98C6874(v10);
    sub_1C98C6834();
  }

  return sub_1C98C6890();
}

uint64_t sub_1C98C0414()
{
  sub_1C98C6824();
  sub_1C97A2CEC(&qword_1EC3CB610, &qword_1C9AAF978);
  sub_1C98C6800();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C98C67E8();
  sub_1C98C3220(v3, v4, v5);
  sub_1C98C68EC();
  if (v0)
  {
    sub_1C98C6904();
    v6 = sub_1C98C67BC(&qword_1EC3CB620);
    sub_1C98C6854(v6);
    sub_1C97F07FC();
    v7 = swift_allocObject();
    v8 = sub_1C98C6814(v7);
    *v9 = sub_1C98C677C;
    v9[1] = v8;
    v10 = sub_1C98C6790(&qword_1EC3CB628);
    sub_1C98C6874(v10);
    sub_1C98C6834();
  }

  return sub_1C98C6890();
}

uint64_t sub_1C98C051C()
{
  sub_1C98C6824();
  sub_1C97A2CEC(&qword_1EC3CB700, &qword_1C9AAF9F8);
  sub_1C98C6800();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C98C67E8();
  sub_1C98C35FC(v3, v4, v5);
  sub_1C98C68EC();
  if (v0)
  {
    sub_1C98C6904();
    v6 = sub_1C98C67BC(&qword_1EC3CB710);
    sub_1C98C6854(v6);
    sub_1C97F07FC();
    v7 = swift_allocObject();
    v8 = sub_1C98C6814(v7);
    *v9 = sub_1C98C677C;
    v9[1] = v8;
    v10 = sub_1C98C6790(&qword_1EC3CB718);
    sub_1C98C6874(v10);
    sub_1C98C6834();
  }

  return sub_1C98C6890();
}

uint64_t sub_1C98C0624()
{
  sub_1C98C6824();
  sub_1C97A2CEC(&qword_1EC3CB6C0, &qword_1C9AAF9D8);
  sub_1C98C6800();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C98C67E8();
  sub_1C98C3964(v3, v4, v5);
  sub_1C98C68EC();
  if (v0)
  {
    sub_1C98C6904();
    v6 = sub_1C98C67BC(&qword_1EC3CB6D0);
    sub_1C98C6854(v6);
    sub_1C97F07FC();
    v7 = swift_allocObject();
    v8 = sub_1C98C6814(v7);
    *v9 = sub_1C98C677C;
    v9[1] = v8;
    v10 = sub_1C98C6790(&qword_1EC3CB6D8);
    sub_1C98C6874(v10);
    sub_1C98C6834();
  }

  return sub_1C98C6890();
}

uint64_t sub_1C98C072C()
{
  sub_1C98C6824();
  sub_1C97A2CEC(&qword_1EC3CB680, &qword_1C9AAF9B8);
  sub_1C98C6800();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C98C67E8();
  sub_1C98C3CCC(v3, v4, v5);
  sub_1C98C68EC();
  if (v0)
  {
    sub_1C98C6904();
    v6 = sub_1C98C67BC(&qword_1EC3CB690);
    sub_1C98C6854(v6);
    sub_1C97F07FC();
    v7 = swift_allocObject();
    v8 = sub_1C98C6814(v7);
    *v9 = sub_1C98C677C;
    v9[1] = v8;
    v10 = sub_1C98C6790(&qword_1EC3CB698);
    sub_1C98C6874(v10);
    sub_1C98C6834();
  }

  return sub_1C98C6890();
}

uint64_t sub_1C98C0834()
{
  sub_1C98C6824();
  sub_1C97A2CEC(&qword_1EC3CB680, &qword_1C9AAF9B8);
  sub_1C98C6800();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C98C67E8();
  sub_1C98C4034(v3, v4, v5);
  sub_1C98C68EC();
  if (v0)
  {
    sub_1C98C6904();
    v6 = sub_1C98C67BC(&qword_1EC3CB690);
    sub_1C98C6854(v6);
    sub_1C97F07FC();
    v7 = swift_allocObject();
    v8 = sub_1C98C6814(v7);
    *v9 = sub_1C98C677C;
    v9[1] = v8;
    v10 = sub_1C98C6790(&qword_1EC3CB698);
    sub_1C98C6874(v10);
    sub_1C98C6834();
  }

  return sub_1C98C6890();
}

uint64_t sub_1C98C093C()
{
  sub_1C98C6824();
  sub_1C97A2CEC(&qword_1EC3CB460, &unk_1C9AAF890);
  sub_1C98C6800();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C98C67E8();
  sub_1C98C439C(v3, v4, v5);
  sub_1C98C68EC();
  if (v0)
  {
    sub_1C98C6904();
    v6 = sub_1C98C67BC(&qword_1EC3CB470);
    sub_1C98C6854(v6);
    sub_1C97F07FC();
    v7 = swift_allocObject();
    v8 = sub_1C98C6814(v7);
    *v9 = sub_1C98C677C;
    v9[1] = v8;
    v10 = sub_1C98C6790(&qword_1EC3CB478);
    sub_1C98C6874(v10);
    sub_1C98C6834();
  }

  return sub_1C98C6890();
}

uint64_t sub_1C98C0A44()
{
  sub_1C98C6824();
  sub_1C97A2CEC(&qword_1EC3CB420, &qword_1C9AAF848);
  sub_1C98C6800();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C98C67E8();
  sub_1C98C4704(v3, v4, v5);
  sub_1C98C68EC();
  if (v0)
  {
    sub_1C98C6904();
    v6 = sub_1C98C67BC(&qword_1EC3CB430);
    sub_1C98C6854(v6);
    sub_1C97F07FC();
    v7 = swift_allocObject();
    v8 = sub_1C98C6814(v7);
    *v9 = sub_1C98C677C;
    v9[1] = v8;
    v10 = sub_1C98C6790(&qword_1EC3CB438);
    sub_1C98C6874(v10);
    sub_1C98C6834();
  }

  return sub_1C98C6890();
}

uint64_t sub_1C98C0B4C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v6 = sub_1C97A2CEC(&qword_1EC3CB4B0, &qword_1C9AAF8C0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - v8;
  type metadata accessor for SafeLock(v10);
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *v12 = 0;
  *(v11 + 16) = v12;
  v13 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v13;
    v15 = swift_allocObject();
    v20 = v7;
    *(v15 + 16) = sub_1C98C6780;
    *(v15 + 24) = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1C98C6780;
    *(v16 + 24) = v14;
    v21[0] = v23;
    memset(&v21[1], 0, 64);
    v21[9] = sub_1C98C678C;
    v21[10] = v15;
    memset(&v21[11], 0, 48);
    v21[17] = sub_1C97F075C;
    v21[18] = v16;
    v21[19] = 0;
    v21[20] = 0;
    swift_retain_n();

    v19[1] = sub_1C97A2CEC(&qword_1EC3CB4B8, &qword_1C9AAF8C8);
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    v23 = v6;
    sub_1C97AE67C(&qword_1EC3C5040, &qword_1EC3CB4B8, &qword_1C9AAF8C8, &unk_1C9AA4D68);
    sub_1C9A920A8();
    memcpy(v22, v21, 0xA8uLL);
    sub_1C97DA1E0(v22, &qword_1EC3CB4B8, &qword_1C9AAF8C8);
    sub_1C97AE67C(&qword_1EC3C4AB8, &qword_1EC3CB4B0, &qword_1C9AAF8C0, MEMORY[0x1E695BE58]);
    v17 = v23;
    a2 = sub_1C9A91F28();

    (*(v20 + 8))(v9, v17);
  }

  return a2;
}

uint64_t sub_1C98C0EB4(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v6 = sub_1C97A2CEC(&qword_1EC3CB440, &qword_1C9AAF858);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - v8;
  type metadata accessor for SafeLock(v10);
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *v12 = 0;
  *(v11 + 16) = v12;
  v13 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v13;
    v15 = swift_allocObject();
    v20 = v7;
    *(v15 + 16) = sub_1C98C6780;
    *(v15 + 24) = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1C98C6780;
    *(v16 + 24) = v14;
    v21[0] = v23;
    memset(&v21[1], 0, 64);
    v21[9] = sub_1C98C678C;
    v21[10] = v15;
    memset(&v21[11], 0, 48);
    v21[17] = sub_1C97EFF90;
    v21[18] = v16;
    v21[19] = 0;
    v21[20] = 0;
    swift_retain_n();

    v19[1] = sub_1C97A2CEC(&qword_1EC3CB448, &unk_1C9AAF860);
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    v23 = v6;
    sub_1C97AE67C(qword_1EC3C5048, &qword_1EC3CB448, &unk_1C9AAF860, &unk_1C9AA4D68);
    sub_1C9A920A8();
    memcpy(v22, v21, 0xA8uLL);
    sub_1C97DA1E0(v22, &qword_1EC3CB448, &unk_1C9AAF860);
    sub_1C97AE67C(&unk_1EC3C4AC0, &qword_1EC3CB440, &qword_1C9AAF858, MEMORY[0x1E695BE58]);
    v17 = v23;
    a2 = sub_1C9A91F28();

    (*(v20 + 8))(v9, v17);
  }

  return a2;
}

uint64_t sub_1C98C121C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v6 = sub_1C97A2CEC(&qword_1EC3CB4B0, &qword_1C9AAF8C0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - v8;
  type metadata accessor for SafeLock(v10);
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *v12 = 0;
  *(v11 + 16) = v12;
  v13 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v13;
    v15 = swift_allocObject();
    v20 = v7;
    *(v15 + 16) = sub_1C98C6780;
    *(v15 + 24) = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1C98C6780;
    *(v16 + 24) = v14;
    v21[0] = v23;
    memset(&v21[1], 0, 64);
    v21[9] = sub_1C98C678C;
    v21[10] = v15;
    memset(&v21[11], 0, 48);
    v21[17] = sub_1C97F075C;
    v21[18] = v16;
    v21[19] = 0;
    v21[20] = 0;
    swift_retain_n();

    v19[1] = sub_1C97A2CEC(&qword_1EC3CB4B8, &qword_1C9AAF8C8);
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    v23 = v6;
    sub_1C97AE67C(&qword_1EC3C5040, &qword_1EC3CB4B8, &qword_1C9AAF8C8, &unk_1C9AA4D68);
    sub_1C9A920A8();
    memcpy(v22, v21, 0xA8uLL);
    sub_1C97DA1E0(v22, &qword_1EC3CB4B8, &qword_1C9AAF8C8);
    sub_1C97AE67C(&qword_1EC3C4AB8, &qword_1EC3CB4B0, &qword_1C9AAF8C0, MEMORY[0x1E695BE58]);
    v17 = v23;
    a2 = sub_1C9A91F28();

    (*(v20 + 8))(v9, v17);
  }

  return a2;
}

uint64_t sub_1C98C1584(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v6 = sub_1C97A2CEC(&qword_1EC3CB4B0, &qword_1C9AAF8C0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - v8;
  type metadata accessor for SafeLock(v10);
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *v12 = 0;
  *(v11 + 16) = v12;
  v13 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v13;
    v15 = swift_allocObject();
    v20 = v7;
    *(v15 + 16) = sub_1C98C6780;
    *(v15 + 24) = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1C98C6780;
    *(v16 + 24) = v14;
    v21[0] = v23;
    memset(&v21[1], 0, 64);
    v21[9] = sub_1C98C678C;
    v21[10] = v15;
    memset(&v21[11], 0, 48);
    v21[17] = sub_1C97F075C;
    v21[18] = v16;
    v21[19] = 0;
    v21[20] = 0;
    swift_retain_n();

    v19[1] = sub_1C97A2CEC(&qword_1EC3CB4B8, &qword_1C9AAF8C8);
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    v23 = v6;
    sub_1C97AE67C(&qword_1EC3C5040, &qword_1EC3CB4B8, &qword_1C9AAF8C8, &unk_1C9AA4D68);
    sub_1C9A920A8();
    memcpy(v22, v21, 0xA8uLL);
    sub_1C97DA1E0(v22, &qword_1EC3CB4B8, &qword_1C9AAF8C8);
    sub_1C97AE67C(&qword_1EC3C4AB8, &qword_1EC3CB4B0, &qword_1C9AAF8C0, MEMORY[0x1E695BE58]);
    v17 = v23;
    a2 = sub_1C9A91F28();

    (*(v20 + 8))(v9, v17);
  }

  return a2;
}

uint64_t sub_1C98C18EC(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v6 = sub_1C97A2CEC(&qword_1EC3CB528, &qword_1C9AAF900);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - v8;
  type metadata accessor for SafeLock(v10);
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *v12 = 0;
  *(v11 + 16) = v12;
  v13 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v13;
    v15 = swift_allocObject();
    v20 = v7;
    *(v15 + 16) = sub_1C98C6780;
    *(v15 + 24) = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1C98C6780;
    *(v16 + 24) = v14;
    v21[0] = v23;
    memset(&v21[1], 0, 64);
    v21[9] = sub_1C98C678C;
    v21[10] = v15;
    memset(&v21[11], 0, 48);
    v21[17] = sub_1C97F075C;
    v21[18] = v16;
    v21[19] = 0;
    v21[20] = 0;
    swift_retain_n();

    v19[1] = sub_1C97A2CEC(&qword_1EC3CB530, &qword_1C9AAF908);
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    v23 = v6;
    sub_1C97AE67C(&qword_1EC3CB538, &qword_1EC3CB530, &qword_1C9AAF908, &unk_1C9AA4D68);
    sub_1C9A920A8();
    memcpy(v22, v21, 0xA8uLL);
    sub_1C97DA1E0(v22, &qword_1EC3CB530, &qword_1C9AAF908);
    sub_1C97AE67C(&qword_1EC3CB540, &qword_1EC3CB528, &qword_1C9AAF900, MEMORY[0x1E695BE58]);
    v17 = v23;
    a2 = sub_1C9A91F28();

    (*(v20 + 8))(v9, v17);
  }

  return a2;
}

uint64_t sub_1C98C1C54(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v28 = sub_1C97A2CEC(&qword_1EC3CB4E0, &qword_1C9AAF8E0);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v24 - v6;
  v8 = sub_1C97A2CEC(&qword_1EC3CB4E8, &qword_1C9AAF8E8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  type metadata accessor for SafeLock(v12);
  v13 = swift_allocObject();
  v14 = swift_slowAlloc();
  *v14 = 0;
  *(v13 + 16) = v14;
  v15 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    *(v16 + 24) = v15;
    v17 = swift_allocObject();
    v25 = v8;
    *(v17 + 16) = sub_1C98C6784;
    *(v17 + 24) = v16;
    v18 = swift_allocObject();
    v26 = v9;
    v19 = v18;
    *(v18 + 16) = sub_1C98C6784;
    *(v18 + 24) = v16;
    v20 = sub_1C97A2CEC(&qword_1EC3CB4F0, &unk_1C9AB7970);
    (*(*(v20 - 8) + 16))(v7, v27, v20);
    v21 = &v7[*(v28 + 36)];
    *(v21 + 2) = 0u;
    *(v21 + 3) = 0u;
    *v21 = 0u;
    *(v21 + 1) = 0u;
    *(v21 + 8) = sub_1C98C678C;
    *(v21 + 9) = v17;
    *(v21 + 5) = 0u;
    *(v21 + 6) = 0u;
    *(v21 + 7) = 0u;
    *(v21 + 16) = sub_1C97F075C;
    *(v21 + 17) = v19;
    *(v21 + 18) = 0;
    *(v21 + 19) = 0;
    swift_retain_n();

    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    sub_1C97AE67C(&qword_1EC3CB4F8, &qword_1EC3CB4E0, &qword_1C9AAF8E0, &unk_1C9AA4D68);
    sub_1C9A920A8();
    sub_1C97DA1E0(v7, &qword_1EC3CB4E0, &qword_1C9AAF8E0);
    sub_1C97AE67C(&qword_1EC3CB500, &qword_1EC3CB4E8, &qword_1C9AAF8E8, MEMORY[0x1E695BE58]);
    v22 = v25;
    a2 = sub_1C9A91F28();

    (*(v26 + 8))(v11, v22);
  }

  return a2;
}

uint64_t sub_1C98C2030(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v6 = sub_1C97A2CEC(&qword_1EC3CB548, &qword_1C9AAF910);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - v8;
  type metadata accessor for SafeLock(v10);
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *v12 = 0;
  *(v11 + 16) = v12;
  v13 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v13;
    v15 = swift_allocObject();
    v20 = v7;
    *(v15 + 16) = sub_1C98C6784;
    *(v15 + 24) = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1C98C6784;
    *(v16 + 24) = v14;
    v21[0] = v23;
    memset(&v21[1], 0, 64);
    v21[9] = sub_1C98C678C;
    v21[10] = v15;
    memset(&v21[11], 0, 48);
    v21[17] = sub_1C97F075C;
    v21[18] = v16;
    v21[19] = 0;
    v21[20] = 0;
    swift_retain_n();

    v19[1] = sub_1C97A2CEC(&qword_1EC3CB550, &qword_1C9AAF918);
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    v23 = v6;
    sub_1C97AE67C(&qword_1EC3CB558, &qword_1EC3CB550, &qword_1C9AAF918, &unk_1C9AA4D68);
    sub_1C9A920A8();
    memcpy(v22, v21, 0xA8uLL);
    sub_1C97DA1E0(v22, &qword_1EC3CB550, &qword_1C9AAF918);
    sub_1C97AE67C(&qword_1EC3CB560, &qword_1EC3CB548, &qword_1C9AAF910, MEMORY[0x1E695BE58]);
    v17 = v23;
    a2 = sub_1C9A91F28();

    (*(v20 + 8))(v9, v17);
  }

  return a2;
}

uint64_t sub_1C98C2398(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v28 = sub_1C97A2CEC(&qword_1EC3CB588, &qword_1C9AAF930);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v24 - v6;
  v8 = sub_1C97A2CEC(&qword_1EC3CB590, &qword_1C9AAF938);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  type metadata accessor for SafeLock(v12);
  v13 = swift_allocObject();
  v14 = swift_slowAlloc();
  *v14 = 0;
  *(v13 + 16) = v14;
  v15 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    *(v16 + 24) = v15;
    v17 = swift_allocObject();
    v25 = v8;
    *(v17 + 16) = sub_1C98C6784;
    *(v17 + 24) = v16;
    v18 = swift_allocObject();
    v26 = v9;
    v19 = v18;
    *(v18 + 16) = sub_1C98C6784;
    *(v18 + 24) = v16;
    v20 = sub_1C97A2CEC(&qword_1EC3CB598, &qword_1C9AAF940);
    (*(*(v20 - 8) + 16))(v7, v27, v20);
    v21 = &v7[*(v28 + 36)];
    *(v21 + 2) = 0u;
    *(v21 + 3) = 0u;
    *v21 = 0u;
    *(v21 + 1) = 0u;
    *(v21 + 8) = sub_1C98C678C;
    *(v21 + 9) = v17;
    *(v21 + 5) = 0u;
    *(v21 + 6) = 0u;
    *(v21 + 7) = 0u;
    *(v21 + 16) = sub_1C97F075C;
    *(v21 + 17) = v19;
    *(v21 + 18) = 0;
    *(v21 + 19) = 0;
    swift_retain_n();

    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    sub_1C97AE67C(&qword_1EC3CB5A0, &qword_1EC3CB588, &qword_1C9AAF930, &unk_1C9AA4D68);
    sub_1C9A920A8();
    sub_1C97DA1E0(v7, &qword_1EC3CB588, &qword_1C9AAF930);
    sub_1C97AE67C(&qword_1EC3CB5A8, &qword_1EC3CB590, &qword_1C9AAF938, MEMORY[0x1E695BE58]);
    v22 = v25;
    a2 = sub_1C9A91F28();

    (*(v26 + 8))(v11, v22);
  }

  return a2;
}

uint64_t sub_1C98C2774(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v6 = sub_1C97A2CEC(&qword_1EC3CB5F0, &qword_1C9AAF968);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - v8;
  type metadata accessor for SafeLock(v10);
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *v12 = 0;
  *(v11 + 16) = v12;
  v13 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v13;
    v15 = swift_allocObject();
    v20 = v7;
    *(v15 + 16) = sub_1C98C65DC;
    *(v15 + 24) = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1C98C65DC;
    *(v16 + 24) = v14;
    v21[0] = v23;
    memset(&v21[1], 0, 64);
    v21[9] = sub_1C98C678C;
    v21[10] = v15;
    memset(&v21[11], 0, 48);
    v21[17] = sub_1C97F075C;
    v21[18] = v16;
    v21[19] = 0;
    v21[20] = 0;
    swift_retain_n();

    v19[1] = sub_1C97A2CEC(&qword_1EC3CB5F8, &qword_1C9AAF970);
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    v23 = v6;
    sub_1C97AE67C(&qword_1EC3CB600, &qword_1EC3CB5F8, &qword_1C9AAF970, &unk_1C9AA4D68);
    sub_1C9A920A8();
    memcpy(v22, v21, 0xA8uLL);
    sub_1C97DA1E0(v22, &qword_1EC3CB5F8, &qword_1C9AAF970);
    sub_1C97AE67C(&qword_1EC3CB608, &qword_1EC3CB5F0, &qword_1C9AAF968, MEMORY[0x1E695BE58]);
    v17 = v23;
    a2 = sub_1C9A91F28();

    (*(v20 + 8))(v9, v17);
  }

  return a2;
}

uint64_t sub_1C98C2ADC(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v6 = sub_1C97A2CEC(&qword_1EC3CB5B0, &qword_1C9AAF948);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - v8;
  type metadata accessor for SafeLock(v10);
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *v12 = 0;
  *(v11 + 16) = v12;
  v13 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v13;
    v15 = swift_allocObject();
    v20 = v7;
    *(v15 + 16) = sub_1C98C6784;
    *(v15 + 24) = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1C98C6784;
    *(v16 + 24) = v14;
    v21[0] = v23;
    memset(&v21[1], 0, 64);
    v21[9] = sub_1C98C678C;
    v21[10] = v15;
    memset(&v21[11], 0, 48);
    v21[17] = sub_1C97F075C;
    v21[18] = v16;
    v21[19] = 0;
    v21[20] = 0;
    swift_retain_n();

    v19[1] = sub_1C97A2CEC(&qword_1EC3CB5B8, &qword_1C9AAF950);
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    v23 = v6;
    sub_1C97AE67C(&qword_1EC3CB5C0, &qword_1EC3CB5B8, &qword_1C9AAF950, &unk_1C9AA4D68);
    sub_1C9A920A8();
    memcpy(v22, v21, 0xA8uLL);
    sub_1C97DA1E0(v22, &qword_1EC3CB5B8, &qword_1C9AAF950);
    sub_1C97AE67C(&qword_1EC3CB5C8, &qword_1EC3CB5B0, &qword_1C9AAF948, MEMORY[0x1E695BE58]);
    v17 = v23;
    a2 = sub_1C9A91F28();

    (*(v20 + 8))(v9, v17);
  }

  return a2;
}

uint64_t sub_1C98C2E44(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v28 = sub_1C97A2CEC(&qword_1EC3CB630, &qword_1C9AAF988);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v24 - v6;
  v8 = sub_1C97A2CEC(&qword_1EC3CB638, &qword_1C9AAF990);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  type metadata accessor for SafeLock(v12);
  v13 = swift_allocObject();
  v14 = swift_slowAlloc();
  *v14 = 0;
  *(v13 + 16) = v14;
  v15 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    *(v16 + 24) = v15;
    v17 = swift_allocObject();
    v25 = v8;
    *(v17 + 16) = sub_1C98C660C;
    *(v17 + 24) = v16;
    v18 = swift_allocObject();
    v26 = v9;
    v19 = v18;
    *(v18 + 16) = sub_1C98C660C;
    *(v18 + 24) = v16;
    v20 = sub_1C97A2CEC(&qword_1EC3CB640, &qword_1C9AAF998);
    (*(*(v20 - 8) + 16))(v7, v27, v20);
    v21 = &v7[*(v28 + 36)];
    *(v21 + 2) = 0u;
    *(v21 + 3) = 0u;
    *v21 = 0u;
    *(v21 + 1) = 0u;
    *(v21 + 8) = sub_1C98C663C;
    *(v21 + 9) = v17;
    *(v21 + 5) = 0u;
    *(v21 + 6) = 0u;
    *(v21 + 7) = 0u;
    *(v21 + 16) = sub_1C97F075C;
    *(v21 + 17) = v19;
    *(v21 + 18) = 0;
    *(v21 + 19) = 0;
    swift_retain_n();

    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    sub_1C97AE67C(&qword_1EC3CB648, &qword_1EC3CB630, &qword_1C9AAF988, &unk_1C9AA4D68);
    sub_1C9A920A8();
    sub_1C97DA1E0(v7, &qword_1EC3CB630, &qword_1C9AAF988);
    sub_1C97AE67C(&qword_1EC3CB650, &qword_1EC3CB638, &qword_1C9AAF990, MEMORY[0x1E695BE58]);
    v22 = v25;
    a2 = sub_1C9A91F28();

    (*(v26 + 8))(v11, v22);
  }

  return a2;
}

uint64_t sub_1C98C3220(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v28 = sub_1C97A2CEC(&qword_1EC3CB658, &qword_1C9AAF9A0);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v24 - v6;
  v8 = sub_1C97A2CEC(&unk_1EC3CB660, &unk_1C9AAF9A8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  type metadata accessor for SafeLock(v12);
  v13 = swift_allocObject();
  v14 = swift_slowAlloc();
  *v14 = 0;
  *(v13 + 16) = v14;
  v15 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    *(v16 + 24) = v15;
    v17 = swift_allocObject();
    v25 = v8;
    *(v17 + 16) = sub_1C98C6784;
    *(v17 + 24) = v16;
    v18 = swift_allocObject();
    v26 = v9;
    v19 = v18;
    *(v18 + 16) = sub_1C98C6784;
    *(v18 + 24) = v16;
    v20 = sub_1C97A2CEC(&qword_1EC3C9AE8, &unk_1C9AA7DC0);
    (*(*(v20 - 8) + 16))(v7, v27, v20);
    v21 = &v7[*(v28 + 36)];
    *(v21 + 2) = 0u;
    *(v21 + 3) = 0u;
    *v21 = 0u;
    *(v21 + 1) = 0u;
    *(v21 + 8) = sub_1C98C678C;
    *(v21 + 9) = v17;
    *(v21 + 5) = 0u;
    *(v21 + 6) = 0u;
    *(v21 + 7) = 0u;
    *(v21 + 16) = sub_1C97F075C;
    *(v21 + 17) = v19;
    *(v21 + 18) = 0;
    *(v21 + 19) = 0;
    swift_retain_n();

    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    sub_1C97AE67C(&qword_1EC3CB670, &qword_1EC3CB658, &qword_1C9AAF9A0, &unk_1C9AA4D68);
    sub_1C9A920A8();
    sub_1C97DA1E0(v7, &qword_1EC3CB658, &qword_1C9AAF9A0);
    sub_1C97AE67C(&qword_1EC3CB678, &unk_1EC3CB660, &unk_1C9AAF9A8, MEMORY[0x1E695BE58]);
    v22 = v25;
    a2 = sub_1C9A91F28();

    (*(v26 + 8))(v11, v22);
  }

  return a2;
}

uint64_t sub_1C98C35FC(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v6 = sub_1C97A2CEC(&qword_1EC3CB720, &qword_1C9AAFA08);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - v8;
  type metadata accessor for SafeLock(v10);
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *v12 = 0;
  *(v11 + 16) = v12;
  v13 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v13;
    v15 = swift_allocObject();
    v20 = v7;
    *(v15 + 16) = sub_1C98C6780;
    *(v15 + 24) = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1C98C6780;
    *(v16 + 24) = v14;
    v21[0] = v23;
    memset(&v21[1], 0, 64);
    v21[9] = sub_1C98C678C;
    v21[10] = v15;
    memset(&v21[11], 0, 48);
    v21[17] = sub_1C97F075C;
    v21[18] = v16;
    v21[19] = 0;
    v21[20] = 0;
    swift_retain_n();

    v19[1] = sub_1C97A2CEC(&qword_1EC3CB728, &qword_1C9AAFA10);
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    v23 = v6;
    sub_1C97AE67C(&qword_1EC3CB730, &qword_1EC3CB728, &qword_1C9AAFA10, &unk_1C9AA4D68);
    sub_1C9A920A8();
    memcpy(v22, v21, 0xA8uLL);
    sub_1C97DA1E0(v22, &qword_1EC3CB728, &qword_1C9AAFA10);
    sub_1C97AE67C(qword_1EC3CB738, &qword_1EC3CB720, &qword_1C9AAFA08, MEMORY[0x1E695BE58]);
    v17 = v23;
    a2 = sub_1C9A91F28();

    (*(v20 + 8))(v9, v17);
  }

  return a2;
}

uint64_t sub_1C98C3964(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v6 = sub_1C97A2CEC(&qword_1EC3CB6E0, &qword_1C9AAF9E8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - v8;
  type metadata accessor for SafeLock(v10);
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *v12 = 0;
  *(v11 + 16) = v12;
  v13 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v13;
    v15 = swift_allocObject();
    v20 = v7;
    *(v15 + 16) = sub_1C98C6780;
    *(v15 + 24) = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1C98C6780;
    *(v16 + 24) = v14;
    v21[0] = v23;
    memset(&v21[1], 0, 64);
    v21[9] = sub_1C98C678C;
    v21[10] = v15;
    memset(&v21[11], 0, 48);
    v21[17] = sub_1C97F075C;
    v21[18] = v16;
    v21[19] = 0;
    v21[20] = 0;
    swift_retain_n();

    v19[1] = sub_1C97A2CEC(&qword_1EC3CB6E8, &qword_1C9AAF9F0);
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    v23 = v6;
    sub_1C97AE67C(&qword_1EC3CB6F0, &qword_1EC3CB6E8, &qword_1C9AAF9F0, &unk_1C9AA4D68);
    sub_1C9A920A8();
    memcpy(v22, v21, 0xA8uLL);
    sub_1C97DA1E0(v22, &qword_1EC3CB6E8, &qword_1C9AAF9F0);
    sub_1C97AE67C(&qword_1EC3CB6F8, &qword_1EC3CB6E0, &qword_1C9AAF9E8, MEMORY[0x1E695BE58]);
    v17 = v23;
    a2 = sub_1C9A91F28();

    (*(v20 + 8))(v9, v17);
  }

  return a2;
}

uint64_t sub_1C98C3CCC(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v6 = sub_1C97A2CEC(&qword_1EC3CB6A0, &qword_1C9AAF9C8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - v8;
  type metadata accessor for SafeLock(v10);
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *v12 = 0;
  *(v11 + 16) = v12;
  v13 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v13;
    v15 = swift_allocObject();
    v20 = v7;
    *(v15 + 16) = sub_1C98C6780;
    *(v15 + 24) = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1C98C6780;
    *(v16 + 24) = v14;
    v21[0] = v23;
    memset(&v21[1], 0, 64);
    v21[9] = sub_1C98C678C;
    v21[10] = v15;
    memset(&v21[11], 0, 48);
    v21[17] = sub_1C97F075C;
    v21[18] = v16;
    v21[19] = 0;
    v21[20] = 0;
    swift_retain_n();

    v19[1] = sub_1C97A2CEC(&qword_1EC3CB6A8, &qword_1C9AAF9D0);
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    v23 = v6;
    sub_1C97AE67C(&qword_1EC3CB6B0, &qword_1EC3CB6A8, &qword_1C9AAF9D0, &unk_1C9AA4D68);
    sub_1C9A920A8();
    memcpy(v22, v21, 0xA8uLL);
    sub_1C97DA1E0(v22, &qword_1EC3CB6A8, &qword_1C9AAF9D0);
    sub_1C97AE67C(&qword_1EC3CB6B8, &qword_1EC3CB6A0, &qword_1C9AAF9C8, MEMORY[0x1E695BE58]);
    v17 = v23;
    a2 = sub_1C9A91F28();

    (*(v20 + 8))(v9, v17);
  }

  return a2;
}

uint64_t sub_1C98C4034(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v6 = sub_1C97A2CEC(&qword_1EC3CB6A0, &qword_1C9AAF9C8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - v8;
  type metadata accessor for SafeLock(v10);
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *v12 = 0;
  *(v11 + 16) = v12;
  v13 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v13;
    v15 = swift_allocObject();
    v20 = v7;
    *(v15 + 16) = sub_1C98C6780;
    *(v15 + 24) = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1C98C6780;
    *(v16 + 24) = v14;
    v21[0] = v23;
    memset(&v21[1], 0, 64);
    v21[9] = sub_1C98C678C;
    v21[10] = v15;
    memset(&v21[11], 0, 48);
    v21[17] = sub_1C97F075C;
    v21[18] = v16;
    v21[19] = 0;
    v21[20] = 0;
    swift_retain_n();

    v19[1] = sub_1C97A2CEC(&qword_1EC3CB6A8, &qword_1C9AAF9D0);
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    v23 = v6;
    sub_1C97AE67C(&qword_1EC3CB6B0, &qword_1EC3CB6A8, &qword_1C9AAF9D0, &unk_1C9AA4D68);
    sub_1C9A920A8();
    memcpy(v22, v21, 0xA8uLL);
    sub_1C97DA1E0(v22, &qword_1EC3CB6A8, &qword_1C9AAF9D0);
    sub_1C97AE67C(&qword_1EC3CB6B8, &qword_1EC3CB6A0, &qword_1C9AAF9C8, MEMORY[0x1E695BE58]);
    v17 = v23;
    a2 = sub_1C9A91F28();

    (*(v20 + 8))(v9, v17);
  }

  return a2;
}

uint64_t sub_1C98C439C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v6 = sub_1C97A2CEC(&qword_1EC3CB480, &qword_1C9AAF8A0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - v8;
  type metadata accessor for SafeLock(v10);
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *v12 = 0;
  *(v11 + 16) = v12;
  v13 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v13;
    v15 = swift_allocObject();
    v20 = v7;
    *(v15 + 16) = sub_1C98C6530;
    *(v15 + 24) = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1C98C6530;
    *(v16 + 24) = v14;
    v21[0] = v23;
    memset(&v21[1], 0, 64);
    v21[9] = sub_1C98C678C;
    v21[10] = v15;
    memset(&v21[11], 0, 48);
    v21[17] = sub_1C97F075C;
    v21[18] = v16;
    v21[19] = 0;
    v21[20] = 0;
    swift_retain_n();

    v19[1] = sub_1C97A2CEC(&qword_1EC3CB488, &qword_1C9AAF8A8);
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    v23 = v6;
    sub_1C97AE67C(&qword_1EC3CB490, &qword_1EC3CB488, &qword_1C9AAF8A8, &unk_1C9AA4D68);
    sub_1C9A920A8();
    memcpy(v22, v21, 0xA8uLL);
    sub_1C97DA1E0(v22, &qword_1EC3CB488, &qword_1C9AAF8A8);
    sub_1C97AE67C(&qword_1EC3CB498, &qword_1EC3CB480, &qword_1C9AAF8A0, MEMORY[0x1E695BE58]);
    v17 = v23;
    a2 = sub_1C9A91F28();

    (*(v20 + 8))(v9, v17);
  }

  return a2;
}

uint64_t sub_1C98C4704(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v6 = sub_1C97A2CEC(&qword_1EC3CB440, &qword_1C9AAF858);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - v8;
  type metadata accessor for SafeLock(v10);
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *v12 = 0;
  *(v11 + 16) = v12;
  v13 = swift_allocObject();
  a1();
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v13;
    v15 = swift_allocObject();
    v20 = v7;
    *(v15 + 16) = sub_1C98C6780;
    *(v15 + 24) = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1C98C6780;
    *(v16 + 24) = v14;
    v21[0] = v23;
    memset(&v21[1], 0, 64);
    v21[9] = sub_1C98C678C;
    v21[10] = v15;
    memset(&v21[11], 0, 48);
    v21[17] = sub_1C97F075C;
    v21[18] = v16;
    v21[19] = 0;
    v21[20] = 0;
    swift_retain_n();

    v19[1] = sub_1C97A2CEC(&qword_1EC3CB448, &unk_1C9AAF860);
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    v23 = v6;
    sub_1C97AE67C(qword_1EC3C5048, &qword_1EC3CB448, &unk_1C9AAF860, &unk_1C9AA4D68);
    sub_1C9A920A8();
    memcpy(v22, v21, 0xA8uLL);
    sub_1C97DA1E0(v22, &qword_1EC3CB448, &unk_1C9AAF860);
    sub_1C97AE67C(&unk_1EC3C4AC0, &qword_1EC3CB440, &qword_1C9AAF858, MEMORY[0x1E695BE58]);
    v17 = v23;
    a2 = sub_1C9A91F28();

    (*(v20 + 8))(v9, v17);
  }

  return a2;
}

void sub_1C98C4A6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (os_unfair_lock_trylock(v3))
  {
    swift_beginAccess();
    v4 = *(a2 + 16);
    if (v4 != 1)
    {
      swift_beginAccess();
      *(a2 + 16) = 1;
      sub_1C98C6538(v4);
    }

    os_unfair_lock_unlock(v3);
  }
}

void sub_1C98C4AF8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *(a1 + 16);
  if (os_unfair_lock_trylock(v5))
  {
    swift_beginAccess();
    v6 = *(a2 + 16);
    if (v6)
    {
      swift_beginAccess();
      *(a2 + 16) = 0;
      a3(v6);
    }

    os_unfair_lock_unlock(v5);
  }
}

uint64_t sub_1C98C4B84(void *a1)
{
  v2 = a1;
  sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
  v3 = sub_1C9A93AE8();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = swift_allocError();
    *v5 = a1;
  }

  return v4;
}

BOOL sub_1C98C4C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_1C9A92438() & 1) != 0 && (v14[0] = a3, v14[1] = a4, v14[2] = a5, v14[3] = a6, v12 = type metadata accessor for SharedReformattedAudioSource.Configuration(0, v14), *(a1 + *(v12 + 52)) == *(a2 + *(v12 + 52))))
  {
    return *(a1 + *(v12 + 56)) == *(a2 + *(v12 + 56));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C98C4CBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x80000001C9AD41E0 == a2;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x436C656E6E616863 && a2 == 0xEC000000746E756FLL;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6152656C706D6173 && a2 == 0xEA00000000006574)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

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

uint64_t sub_1C98C4DE0(char a1)
{
  if (!a1)
  {
    return 0xD000000000000018;
  }

  if (a1 == 1)
  {
    return 0x436C656E6E616863;
  }

  return 0x6152656C706D6173;
}

void sub_1C98C4E48()
{
  sub_1C97AEB94();
  v14 = v0;
  v3 = v2;
  v5 = *(v4 + 16);
  v15 = *(v4 + 32);
  v16 = v5;
  v17[0] = v5;
  v17[1] = v15;
  v6 = type metadata accessor for SharedReformattedAudioSource.Configuration.CodingKeys(255, v17);
  sub_1C98C689C(v6);
  v7 = sub_1C9A93A78();
  sub_1C97AE9C8();
  v9 = v8;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v13 - v11;
  sub_1C97A5A8C(v3, v3[3]);
  sub_1C9A93DD8();
  LOBYTE(v17[0]) = 0;
  sub_1C9A93A18();
  if (!v1)
  {
    sub_1C98353B4(1);
    sub_1C98353B4(2);
  }

  (*(v9 + 8))(v12, v7);
  sub_1C97AEB5C();
}

void sub_1C98C4FC8()
{
  sub_1C97AEB94();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v38 = v11;
  sub_1C988EB84();
  v39 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v15;
  v47 = v16;
  v48 = v17;
  v49 = v18;
  v19 = type metadata accessor for SharedReformattedAudioSource.Configuration.CodingKeys(255, &v46);
  sub_1C98C689C(v19);
  sub_1C9A93978();
  sub_1C97AE9C8();
  v41 = v21;
  v42 = v20;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v36 - v23;
  v44 = v8;
  v46 = v8;
  v47 = v6;
  v40 = v6;
  v48 = v4;
  v49 = v2;
  v25 = type metadata accessor for SharedReformattedAudioSource.Configuration(0, &v46);
  sub_1C97AE9C8();
  v37 = v26;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v36 - v28;
  sub_1C97A5A8C(v10, v10[3]);
  v43 = v24;
  sub_1C9A93DB8();
  if (v0)
  {
    sub_1C97A592C(v10);
  }

  else
  {
    v30 = v29;
    v31 = v39;
    LOBYTE(v46) = 0;
    v32 = v44;
    v33 = v42;
    sub_1C9A938F8();
    (*(v31 + 32))(v30, v45, v32);
    *&v30[*(v25 + 52)] = sub_1C9835400(1);
    v34 = sub_1C9835400(2);
    (*(v41 + 8))(v43, v33);
    *&v30[*(v25 + 56)] = v34;
    v35 = v37;
    (*(v37 + 16))(v38, v30, v25);
    sub_1C97A592C(v10);
    (*(v35 + 8))(v30, v25);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C98C532C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C98C4CBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C98C5360(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C98C53B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1C98C5454()
{

  sub_1C97F07FC();

  return swift_deallocClassInstance();
}

_DWORD *sub_1C98C54BC(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((((*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v7 = a2 - v5;
    v8 = v6 & 0xFFFFFFF8;
    if ((v6 & 0xFFFFFFF8) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = v7 + 1;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    switch(v11)
    {
      case 1:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v12 = *(result + v6);
        if (!v12)
        {
          goto LABEL_22;
        }

LABEL_18:
        v13 = v12 - 1;
        if (v8)
        {
          v13 = 0;
          LODWORD(v8) = *result;
        }

        return (v5 + (v8 | v13) + 1);
      default:
LABEL_22:
        if (v5)
        {
          return sub_1C97ABF20(result, v5, v4);
        }

        return 0;
    }
  }

  return sub_1C97ABF20(result, v5, v4);
}

void sub_1C98C55C8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = a3 - v7;
    if (((((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
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
  }

  if (a2 <= v7)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:

          sub_1C97ACC50(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    if (((((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = a2 - v7;
    }

    else
    {
      v13 = 1;
    }

    if (((((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v14 = ~v7 + a2;
      bzero(a1, v8);
      *a1 = v14;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v13;
        break;
      case 2:
        *&a1[v8] = v13;
        break;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v8] = v13;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C98C579C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v9 = *(a3 + 56);
  a4[3] = swift_getAssociatedTypeWitness();
  a4[4] = swift_getAssociatedConformanceWitness();
  sub_1C981CDF0(a4);
  result = v9(a1, a2, a3);
  if (v4)
  {
    return sub_1C97C26F0(a4);
  }

  return result;
}

void sub_1C98C5878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v21;
  a20 = v22;
  a10 = v20;
  v116 = v23;
  v115 = v24;
  v114 = v25;
  v113 = v26;
  v119 = v27;
  v29 = v28;
  v112 = sub_1C97A2CEC(&qword_1EC3C7418, &unk_1C9AAF870);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v30);
  v117 = &v106 - v31;
  v32 = sub_1C97A2CEC(&qword_1EC3C7420, &qword_1C9A9FC38);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v106 - v34;
  v36 = sub_1C97A2CEC(&qword_1EC3C7428, &unk_1C9AAF880);
  sub_1C97AE9C8();
  v111 = v37;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v106 - v39;
  v41 = sub_1C9A91748();
  sub_1C97AE9C8();
  v43 = v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v106 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v29;
  v47 = a10;
  (v119)(&v124, v29);
  if (!v47)
  {
    v106 = v32;
    v107 = v35;
    v108 = v40;
    v109 = v36;
    v110 = 0;
    v119 = v43;
    a10 = v41;
    sub_1C9A91738();
    v49 = v127;
    v48 = v128;
    sub_1C97A5A8C(&v124, v127);
    v50 = (*(v48 + 24))(v49, v48);
    v120 = v113;
    v121 = v114;
    v122 = v115;
    v123 = v116;
    v51 = type metadata accessor for SharedReformattedAudioSource.Configuration(0, &v120);
    v52 = *(v118 + *(v51 + 56));
    if (v50 == v52)
    {
      sub_1C98C68C8();
      v53 = sub_1C97FB324();
      v54(v53, v40);
      sub_1C98C6A04();
      if (v55 == v56)
      {
        v57 = v127;
        v58 = v128;
        sub_1C97A5A8C(&v124, v127);
        v59 = (*(v58 + 8))(v57, v58);
        v60 = (*(v119 + 8))(v46, a10);
LABEL_5:
        type metadata accessor for SharedReformattedAudioSource.Instance(v60);
        sub_1C97F07FC();
        *(swift_allocObject() + 16) = v59;
        sub_1C97A592C(&v124);
        goto LABEL_14;
      }
    }

    v115 = v46;
    sub_1C98C68C8();
    v61 = sub_1C97FB324();
    v63 = v62(v61, v40);
    v120 = v63;
    sub_1C97AA878();
    v64 = swift_allocObject();
    *(v64 + 16) = sub_1C98063A0;
    *(v64 + 24) = 0;
    sub_1C97A2CEC(&unk_1EC3C7390, &unk_1C9A9C770);
    sub_1C97A2CEC(&unk_1EC3C7430, &unk_1C9AA3470);
    sub_1C97AE9EC();
    sub_1C97AE67C(v65, &unk_1EC3C7390, &unk_1C9A9C770, v66);
    v114 = v52;
    v67 = v117;
    sub_1C9A91F68();

    sub_1C97F07FC();
    v68 = swift_allocObject();
    *(v68 + 16) = 0x4000;
    v69 = v112;
    v70 = v67 + *(v112 + 84);
    *v70 = 0;
    *(v70 + 8) = 0;
    *(v70 + 16) = 2;
    v71 = (v67 + *(v69 + 88));
    *v71 = sub_1C97E79BC;
    v71[1] = v68;
    sub_1C98C68C8();
    v72 = sub_1C97FB324();
    v116 = v73(v72, v63);
    sub_1C98C68C8();
    v74 = sub_1C97FB324();
    v113 = v75(v74, v63);
    sub_1C98C6A04();
    v118 = v76;
    v120 = 0;
    v121 = 0xE000000000000000;
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0x206665645BLL, 0xE500000000000000);
    sub_1C98C6968();
    v77 = sub_1C97F09E4();
    MEMORY[0x1CCA90230](v77);
    MEMORY[0x1CCA90230](0xD000000000000011, 0x80000001C9AD4E00);
    MEMORY[0x1CCA90230](0x6665645B0A5D3120, 0xE900000000000020);
    MEMORY[0x1CCA90230](0x615274757074756FLL, 0xEA00000000006574);
    v78 = sub_1C97F09E4();
    MEMORY[0x1CCA90230](v78);
    sub_1C98C69C4();
    MEMORY[0x1CCA90230](0xD00000000000005DLL, 0x80000001C9AD4E40);
    sub_1C98C6968();
    sub_1C98C69A8();
    MEMORY[0x1CCA90230](0xD000000000000011, 0x80000001C9AD4E00);
    MEMORY[0x1CCA90230](0xD00000000000001CLL, 0x80000001C9AD4EA0);
    sub_1C98C6968();
    sub_1C98C69A8();
    sub_1C98C69C4();
    MEMORY[0x1CCA90230](0xD000000000000012, 0x80000001C9AD4EC0);
    MEMORY[0x1CCA90230](0x615274757074756FLL, 0xEA00000000006574);
    sub_1C98C69A8();
    sub_1C98C69C4();
    MEMORY[0x1CCA90230](10589, 0xE200000000000000);
    sub_1C97A2CEC(&qword_1EC3C6C58, &qword_1C9A9D620);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C9A9FB90;
    *(inited + 32) = 0x7461527475706E69;
    *(inited + 40) = 0xE900000000000065;
    v120 = v116;
    *(inited + 48) = sub_1C9A93A98();
    *(inited + 56) = v80;
    *(inited + 64) = 0xD000000000000011;
    *(inited + 72) = 0x80000001C9AD4E00;
    *(inited + 80) = sub_1C98C691C(&v125);
    *(inited + 88) = v81;
    *(inited + 96) = 0x615274757074756FLL;
    *(inited + 104) = 0xEA00000000006574;
    *(inited + 112) = sub_1C98C691C(&v126);
    *(inited + 120) = v82;
    *(inited + 128) = 0xD000000000000012;
    *(inited + 136) = 0x80000001C9AD4E20;
    *(inited + 144) = sub_1C98C691C(&a9);
    *(inited + 152) = v83;
    v84 = MEMORY[0x1E69E6168];
    sub_1C9A92348();
    v85 = objc_opt_self();
    v86 = sub_1C9A92478();

    sub_1C9A922F8();
    sub_1C97FB324();

    v87 = sub_1C9A92768();
    v88 = sub_1C9A7A268(v85, v86, v84, v87);

    if (v88)
    {
      sub_1C9A695C8(v88, 0x4000, v116, 1);
      sub_1C9A69B8C(v88);
      v89 = sub_1C9A6B6A4(v88);
      v90 = a10;
      v91 = v119;
      v92 = v115;
      if (v89 == 1 && sub_1C9A6BA18(v88) == 1 && sub_1C9A69A24(v88))
      {
        sub_1C97F07FC();
        v93 = swift_allocObject();
        *(v93 + 16) = v88;
        sub_1C97F07FC();
        v94 = swift_allocObject();
        *(v94 + 16) = v88;
        v95 = v107;
        sub_1C97E7AA4(v117, v107);
        v96 = v106;
        v97 = (v95 + *(v106 + 52));
        *v97 = sub_1C97E7A88;
        v97[1] = v94;
        v98 = (v95 + *(v96 + 56));
        *v98 = sub_1C97E7A6C;
        v98[1] = v93;
        v120 = 0;
        v121 = 0xE000000000000000;
        v99 = v88;
        sub_1C9A935B8();

        v120 = 0xD000000000000026;
        v121 = 0x80000001C9AD4F10;
        sub_1C97AE3DC();
        v100 = sub_1C9A93A98();
        MEMORY[0x1CCA90230](v100);

        MEMORY[0x1CCA90230](8250, 0xE200000000000000);
        v101 = v108;
        sub_1C97DC6CC(v120, v121);

        sub_1C97DA1E0(v95, &qword_1EC3C7420, &qword_1C9A9FC38);
        sub_1C97AE67C(&unk_1EC3C7450, &qword_1EC3C7428, &unk_1C9AAF880, MEMORY[0x1E695BCC0]);
        v102 = v109;
        sub_1C9A92008();
        sub_1C97A2CEC(&unk_1EC3CB450, &qword_1C9A9FC40);
        sub_1C97AA878();
        swift_allocObject();
        v103 = sub_1C98E3778();
        (*(v111 + 8))(v101, v102);
        v120 = v103;
        sub_1C97AE67C(&qword_1EC3C7460, &unk_1EC3CB450, &qword_1C9A9FC40, &unk_1C9AB4B80);
        v59 = sub_1C9A91F28();

        (*(v91 + 8))(v92, v90);
        goto LABEL_5;
      }

      sub_1C97E7A18();
      swift_allocError();
      *v104 = 1;
      swift_willThrow();
    }

    else
    {
      sub_1C97E79C4();
      swift_allocError();
      *v105 = 0xD000000000000020;
      v105[1] = 0x80000001C9AD4EE0;
      swift_willThrow();
      v90 = a10;
      v91 = v119;
      v92 = v115;
    }

    sub_1C97DA1E0(v117, &qword_1EC3C7418, &unk_1C9AAF870);
    (*(v91 + 8))(v92, v90);
    sub_1C97A592C(&v124);
  }

LABEL_14:
  sub_1C97AEB5C();
}

void sub_1C98C63E8()
{
  sub_1C97AEB48();
  WitnessTable = swift_getWitnessTable();
  sub_1C98C6984(WitnessTable);
}

void sub_1C98C6470()
{
  sub_1C97AEA3C();
  swift_getWitnessTable();
  v1 = *(v0 + 32);
  v2[0] = *(v0 + 16);
  v2[1] = v1;
  type metadata accessor for AudioStreamAnalyzerEnvironmentImpl(255, v2);
  swift_getWitnessTable();
  sub_1C98C69E0();
}

uint64_t sub_1C98C64F0@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1C98BF910(a1, a2, *a3);
  *a4 = result;
  return result;
}

uint64_t sub_1C98C6538(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1C98C6568@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*(v1 + 24) + 24))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *sub_1C98C665C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C98C6790(unint64_t *a1)
{

  return sub_1C97AE67C(a1, v1, v2, &unk_1C9AC7280);
}

uint64_t sub_1C98C67BC(unint64_t *a1)
{
  v4 = MEMORY[0x1E69E6328];

  return sub_1C97AE67C(a1, v1, v2, v4);
}

uint64_t sub_1C98C6834()
{

  return sub_1C97DA1E0(v1, v0, v2);
}

uint64_t sub_1C98C6854(uint64_t a1)
{

  return sub_1C9A92658();
}

uint64_t sub_1C98C6874(uint64_t a1)
{

  return sub_1C9A91F28();
}

uint64_t sub_1C98C689C(uint64_t a1)
{

  return swift_getWitnessTable();
}

void sub_1C98C68EC()
{

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1C98C6904()
{

  return sub_1C97A2CEC(v0, v1);
}

uint64_t sub_1C98C691C@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 160) = *(a1 - 256);

  return sub_1C9A93A98();
}

uint64_t sub_1C98C693C(uint64_t a1, ...)
{
  va_start(va, a1);
  v4 = *(v1 + 16);
  *(v2 - 64) = *v1;
  *(v2 - 48) = v4;
  *(v2 - 32) = *(v1 + 32);

  return sub_1C9791564(va);
}

void sub_1C98C6968()
{

  JUMPOUT(0x1CCA90230);
}

void sub_1C98C6984(uint64_t a1)
{

  sub_1C98BF3B0(v3, v2, v1, a1);
}

void sub_1C98C69A8()
{

  JUMPOUT(0x1CCA90230);
}

void sub_1C98C69C4()
{

  JUMPOUT(0x1CCA90230);
}

void sub_1C98C69E0()
{

  sub_1C98BF250();
}

void sub_1C98C6A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_1C98BF4E8(v21, v20, a1, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

id sub_1C98C6A38(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695FEB0]) init];
  v3 = v2;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = 3;
    }

    [v2 setComputeUnits_];
  }

  return v3;
}

uint64_t sub_1C98C6A9C(void *a1)
{
  result = sub_1C98C8854(a1);
  if (result == 3)
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C98134D8();
      swift_once();
    }

    v3 = sub_1C9A91B58();
    sub_1C97BFF6C(v3, qword_1EC3D3108);
    v4 = sub_1C9A91B38();
    v5 = sub_1C9A92FA8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1C9788000, v4, v5, "Forgiving an unsupported model configuration.", v6, 2u);
      MEMORY[0x1CCA93280](v6, -1, -1);
    }

    if ([a1 computeUnits])
    {
      return 2 * ([a1 computeUnits] == 3);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

__CFString *sub_1C98C6BB0(uint64_t a1)
{
  sub_1C9A924A8();
  sub_1C98CA8F8();
  sub_1C9A924A8();
  sub_1C98CA92C();
  v4 = v4 && v1 == v3;
  if (v4)
  {

    goto LABEL_38;
  }

  sub_1C98CA8E8();
  sub_1C98CA904();
  sub_1C9A93B18();
  sub_1C98CA938();

  if (v2)
  {
LABEL_38:
    v24 = SNDetectorIdentifierVGGishApplause;
    return *v24;
  }

  sub_1C9A924A8();
  sub_1C98CA8F8();
  sub_1C9A924A8();
  sub_1C98CA92C();
  if (v4 && v1 == v5)
  {

    goto LABEL_41;
  }

  sub_1C98CA8E8();
  sub_1C98CA904();
  sub_1C9A93B18();
  sub_1C98CA938();

  if (v2)
  {
LABEL_41:
    v24 = SNDetectorIdentifierVGGishBabble;
    return *v24;
  }

  sub_1C9A924A8();
  sub_1C98CA8F8();
  sub_1C9A924A8();
  sub_1C98CA92C();
  if (v4 && v1 == v7)
  {

    goto LABEL_43;
  }

  sub_1C98CA8E8();
  sub_1C98CA904();
  sub_1C9A93B18();
  sub_1C98CA938();

  if (v2)
  {
LABEL_43:
    v24 = SNDetectorIdentifierVGGishCheering;
    return *v24;
  }

  sub_1C9A924A8();
  sub_1C98CA8F8();
  sub_1C9A924A8();
  sub_1C98CA92C();
  if (v4 && v1 == v9)
  {

    goto LABEL_45;
  }

  sub_1C98CA8E8();
  sub_1C98CA904();
  sub_1C9A93B18();
  sub_1C98CA938();

  if (v2)
  {
LABEL_45:
    v24 = SNDetectorIdentifierVGGishLaughter;
    return *v24;
  }

  sub_1C9A924A8();
  sub_1C98CA8F8();
  sub_1C9A924A8();
  sub_1C98CA92C();
  if (v4 && v1 == v11)
  {

    goto LABEL_47;
  }

  sub_1C98CA8E8();
  sub_1C98CA904();
  sub_1C9A93B18();
  sub_1C98CA938();

  if (v2)
  {
LABEL_47:
    v24 = SNDetectorIdentifierVGGishMusic;
    return *v24;
  }

  sub_1C9A924A8();
  sub_1C98CA8F8();
  sub_1C9A924A8();
  sub_1C98CA92C();
  if (v4 && v1 == v13)
  {

    goto LABEL_49;
  }

  sub_1C98CA8E8();
  sub_1C98CA904();
  sub_1C9A93B18();
  sub_1C98CA938();

  if (v2)
  {
LABEL_49:
    v24 = SNDetectorIdentifierVGGishSpeech;
    return *v24;
  }

  sub_1C9A924A8();
  sub_1C98CA8F8();
  sub_1C9A924A8();
  sub_1C98CA92C();
  if (v4 && v1 == v15)
  {
  }

  else
  {
    sub_1C98CA8E8();
    sub_1C98CA904();
    sub_1C9A93B18();
    sub_1C98CA938();

    if ((v2 & 1) == 0)
    {
      type metadata accessor for SNError(v17);
      sub_1C98CA988();
      sub_1C9A935B8();
      MEMORY[0x1CCA90230](0xD00000000000001ELL, 0x80000001C9AD8150);
      type metadata accessor for SNSoundIdentifier(0);
      sub_1C9A93728();
      v18 = sub_1C97FB260();
      sub_1C9929478(v18, v19, v20, v21, v22, v25);

      return swift_willThrow();
    }
  }

  v24 = SNDetectorIdentifierSoundPrintASmokeAlarm;
  return *v24;
}

void *sub_1C98C6F38(void *a1)
{
  sub_1C9A924A8();
  sub_1C98CA8F8();
  sub_1C9A924A8();
  sub_1C98CA910();
  v5 = v5 && v1 == v4;
  if (v5)
  {

    goto LABEL_53;
  }

  v6 = sub_1C98CA8E8();
  sub_1C98CA970(v6);
  sub_1C98CA938();

  if (v2)
  {
LABEL_53:
    v40 = SNSoundIdentifierApplause;
LABEL_54:
    *v40;
LABEL_55:
    v41 = a1;
    return a1;
  }

  sub_1C9A924A8();
  sub_1C98CA8F8();
  sub_1C9A924A8();
  sub_1C98CA910();
  if (v5 && v1 == v7)
  {

    goto LABEL_58;
  }

  v9 = sub_1C98CA8E8();
  sub_1C98CA970(v9);
  sub_1C98CA938();

  if (v2)
  {
LABEL_58:
    v40 = SNSoundIdentifierBabble;
    goto LABEL_54;
  }

  sub_1C9A924A8();
  sub_1C98CA8F8();
  sub_1C9A924A8();
  sub_1C98CA910();
  if (v5 && v1 == v10)
  {

    goto LABEL_60;
  }

  v12 = sub_1C98CA8E8();
  sub_1C98CA970(v12);
  sub_1C98CA938();

  if (v2)
  {
LABEL_60:
    v40 = SNSoundIdentifierCheering;
    goto LABEL_54;
  }

  sub_1C9A924A8();
  sub_1C98CA8F8();
  sub_1C9A924A8();
  sub_1C98CA910();
  if (v5 && v1 == v13)
  {

    goto LABEL_62;
  }

  v15 = sub_1C98CA8E8();
  sub_1C98CA970(v15);
  sub_1C98CA938();

  if (v2)
  {
LABEL_62:
    v40 = SNSoundIdentifierLaughter;
    goto LABEL_54;
  }

  sub_1C9A924A8();
  sub_1C98CA8F8();
  sub_1C9A924A8();
  sub_1C98CA910();
  if (v5 && v1 == v16)
  {

    goto LABEL_64;
  }

  v18 = sub_1C98CA8E8();
  sub_1C98CA970(v18);
  sub_1C98CA938();

  if (v2)
  {
LABEL_64:
    v40 = SNSoundIdentifierMusic;
    goto LABEL_54;
  }

  sub_1C9A924A8();
  sub_1C98CA8F8();
  sub_1C9A924A8();
  sub_1C98CA910();
  if (v5 && v1 == v19)
  {

    goto LABEL_66;
  }

  v21 = sub_1C98CA8E8();
  sub_1C98CA970(v21);
  sub_1C98CA938();

  if (v2)
  {
LABEL_66:
    v40 = SNSoundIdentifierSpeech;
    goto LABEL_54;
  }

  sub_1C9A924A8();
  sub_1C98CA8F8();
  sub_1C9A924A8();
  sub_1C98CA910();
  if (v5 && v1 == v22)
  {

    goto LABEL_68;
  }

  v24 = sub_1C98CA8E8();
  sub_1C98CA970(v24);
  sub_1C98CA938();

  if (v2)
  {
LABEL_68:
    v43 = SNSoundIdentifierLaughter;
LABEL_69:
    v44 = *v43;
    goto LABEL_55;
  }

  sub_1C9A924A8();
  sub_1C98CA8F8();
  sub_1C9A924A8();
  sub_1C98CA910();
  if (v5 && v1 == v25)
  {

    goto LABEL_71;
  }

  v27 = sub_1C98CA8E8();
  sub_1C98CA970(v27);
  sub_1C98CA938();

  if (v2)
  {
LABEL_71:
    v45 = sub_1C9A70EA8();
    goto LABEL_55;
  }

  sub_1C9A924A8();
  sub_1C98CA8F8();
  sub_1C9A924A8();
  sub_1C98CA910();
  if (v5 && v1 == v28)
  {

    goto LABEL_73;
  }

  v30 = sub_1C98CA8E8();
  sub_1C98CA970(v30);
  sub_1C98CA938();

  if (v2)
  {
LABEL_73:
    v43 = SNSoundIdentifierSpeech;
    goto LABEL_69;
  }

  sub_1C9A924A8();
  sub_1C98CA8F8();
  sub_1C9A924A8();
  sub_1C98CA910();
  if (v5 && v1 == v31)
  {

    goto LABEL_75;
  }

  v33 = sub_1C98CA8E8();
  sub_1C98CA970(v33);
  sub_1C98CA938();

  if (v2)
  {
LABEL_75:
    v43 = SNSoundIdentifierSmokeAlarm;
    goto LABEL_69;
  }

  type metadata accessor for SNError(v34);
  sub_1C98CA988();
  sub_1C9A935B8();
  MEMORY[0x1CCA90230](0xD000000000000021, 0x80000001C9AD8120);
  type metadata accessor for SNDetectorIdentifier(0);
  sub_1C9A93728();
  a1 = v46;
  v35 = sub_1C97FB260();
  sub_1C9929478(v35, v36, v37, v38, v39, v46);
  sub_1C97C926C();

  swift_willThrow();
  return a1;
}

void sub_1C98C73E0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C97A2CEC(&qword_1EC3C7FE0, &unk_1C9AA1890);
  sub_1C97DACE4(v5);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  sub_1C99B8AAC(a1);
  if (!v2)
  {
    v9 = sub_1C9A91558();
    if (sub_1C97ABF20(v8, 1, v9) == 1)
    {
      sub_1C97F9D3C(v8, &qword_1EC3C7FE0, &unk_1C9AA1890);
      sub_1C98C9D48();
      swift_allocError();
      *v10 = a1;
      swift_willThrow();
    }

    else
    {
      (*(*(v9 - 8) + 32))(a2, v8, v9);
    }
  }
}

uint64_t sub_1C98C751C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C98C9104();
  v6 = (v5 + 48);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v2 = *(v6 - 16);
    if (*(v6 - 1) != a1 || *v6 != a2)
    {
      v6 += 3;
      if ((sub_1C9A93B18() & 1) == 0)
      {
        continue;
      }
    }

    return v2;
  }

  type metadata accessor for SNError(v9);
  sub_1C98CA988();
  sub_1C9A935B8();

  MEMORY[0x1CCA90230](a1, a2);
  v10 = sub_1C97FB260();
  sub_1C9929478(v10, v11, v12, v13, v14, 0x80000001C9AD8050);
  sub_1C97C926C();

  swift_willThrow();
  return v2;
}

uint64_t sub_1C98C7640(uint64_t a1, uint64_t a2)
{
  sub_1C9A93848();
  sub_1C97C926C();

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

unint64_t sub_1C98C7690(char a1)
{
  if (a1)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_1C98C76D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C98C7640(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1C98C7704@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C98C7690(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C98C7808(unsigned __int16 a1, __int16 a2)
{
  if (a2 != a1)
  {
    v2 = 0;
  }

  else
  {
    v3 = HIBYTE(a1);
    v4 = 0xE300000000000000;
    v5 = 0xE300000000000000;
    v6 = 7696483;
    if (v3 != 1)
    {
      v6 = 0x4E41646E41757063;
      v5 = 0xE900000000000045;
    }

    if (v3)
    {
      v7 = v6;
    }

    else
    {
      v7 = 7105633;
    }

    if (v3)
    {
      v8 = v5;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    v9 = 7696483;
    if (HIBYTE(a2) != 1)
    {
      v9 = 0x4E41646E41757063;
      v4 = 0xE900000000000045;
    }

    if (HIBYTE(a2))
    {
      v10 = v9;
    }

    else
    {
      v10 = 7105633;
    }

    if (HIBYTE(a2))
    {
      v11 = v4;
    }

    else
    {
      v11 = 0xE300000000000000;
    }

    if (v7 == v10 && v8 == v11)
    {
      v2 = 1;
    }

    else
    {
      sub_1C98CA904();
      v2 = sub_1C9A93B18();
    }
  }

  return v2 & 1;
}

uint64_t sub_1C98C7908(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

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

uint64_t sub_1C98C79D4(char a1)
{
  if (a1)
  {
    return 0x72756769666E6F63;
  }

  else
  {
    return 0x7465737361;
  }
}

uint64_t sub_1C98C7A14(void *a1, __int16 a2)
{
  v5 = sub_1C97A2CEC(&qword_1EC3CB850, &qword_1C9AAFFD0);
  sub_1C97AE9C8();
  v7 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  sub_1C98CA9DC(a1);
  sub_1C98CA450();
  sub_1C9A93DD8();
  v12[15] = a2;
  v12[14] = 0;
  sub_1C98CA4F8();
  sub_1C9A93A18();
  if (!v2)
  {
    v12[13] = HIBYTE(a2);
    v12[12] = 1;
    sub_1C97F9C3C();
    sub_1C9A93A18();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C98C7B8C(uint64_t a1, __int16 a2)
{
  MEMORY[0x1CCA91980](a2);
  sub_1C9A92528();
}

uint64_t sub_1C98C7C20(__int16 a1)
{
  v1 = a1;
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](v1);
  sub_1C9A92528();

  return sub_1C9A93D18();
}

uint64_t sub_1C98C7CD0(void *a1)
{
  sub_1C97A2CEC(&qword_1EC3CB838, &qword_1C9AAFFC8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97FB2C8();
  sub_1C98CA9DC(a1);
  v4 = sub_1C98CA450();
  sub_1C98CA998(&type metadata for SNMLModelFactory.ModelCacheKey.CodingKeys, v5, v4);
  if (v1)
  {
    return sub_1C97A592C(a1);
  }

  v18[0] = 0;
  v6 = sub_1C98CA4A4();
  sub_1C98CA950(&unk_1F4947E50, v18, v7, v8, v6);
  v9 = v18[1];
  v17[0] = 1;
  v10 = sub_1C97F9B3C();
  sub_1C98CA950(&type metadata for SNMLModelFactory.ModelConfiguration, v17, v11, v12, v10);
  v13 = sub_1C98CA91C();
  v14(v13);
  v15 = v17[1];
  sub_1C97A592C(a1);
  return v9 | (v15 << 8);
}

uint64_t sub_1C98C7E48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C98C7908(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C98C7E70(uint64_t a1)
{
  v2 = sub_1C98CA450();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98C7EAC(uint64_t a1)
{
  v2 = sub_1C98CA450();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98C7EE8@<X0>(void *a1@<X0>, _WORD *a2@<X8>)
{
  result = sub_1C98C7CD0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C98C7F40()
{
  v1 = *v0;
  sub_1C9A93CC8();
  sub_1C978C430(v3, v1);
  sub_1C9A92528();

  return sub_1C9A93D18();
}

uint64_t sub_1C98C7FF8()
{
  sub_1C97A2CEC(&qword_1EC3CB7C8, &qword_1C9AAFB48);
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
  sub_1C97A2CEC(&qword_1EC3CB7D0, &qword_1C9AAFB50);
  swift_allocObject();
  sub_1C97C926C();
  result = sub_1C9A37FC8();
  qword_1EC3C55D8 = result;
  return result;
}

unint64_t sub_1C98C8094(uint64_t a1, uint64_t a2)
{
  sub_1C9A93848();
  sub_1C97C926C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C98C80DC(char a1)
{
  if (!a1)
  {
    return 7105633;
  }

  if (a1 == 1)
  {
    return 7696483;
  }

  return 0x4E41646E41757063;
}

unint64_t sub_1C98C8134@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C98C8094(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C98C8164@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C98C80DC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C98C8258(unsigned __int8 a1, char a2)
{
  v2 = 7105633;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 7696483;
    }

    else
    {
      v4 = 0x4E41646E41757063;
    }

    if (v3 == 1)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE900000000000045;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7105633;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 7696483;
    }

    else
    {
      v2 = 0x4E41646E41757063;
    }

    if (a2 == 1)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xE900000000000045;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    sub_1C98CA904();
    v8 = sub_1C9A93B18();
  }

  return v8 & 1;
}

uint64_t sub_1C98C8344(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x55657475706D6F63 && a2 == 0xEB0000000074696ELL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9A93B18();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C98C83E0(void *a1, char a2)
{
  sub_1C97A2CEC(&qword_1EC3CB818, &qword_1C9AAFFC0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97FB2C8();
  sub_1C98CA9DC(a1);
  sub_1C98CA2AC();
  sub_1C9A93DD8();
  sub_1C98CA354();
  sub_1C9A93A18();
  v4 = sub_1C98CA91C();
  return v5(v4);
}

uint64_t sub_1C98C8500(char a1)
{
  sub_1C9A93CC8();
  sub_1C9A92528();

  return sub_1C9A93D18();
}

uint64_t sub_1C98C8598(void *a1)
{
  sub_1C97A2CEC(&qword_1EC3CB800, &qword_1C9AAFFB8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97FB2C8();
  sub_1C98CA9DC(a1);
  v5 = sub_1C98CA2AC();
  sub_1C98CA998(&type metadata for SNMLModelFactory.ModelConfiguration.CodingKeys, v6, v5);
  if (v2)
  {
    sub_1C97A592C(a1);
  }

  else
  {
    v7 = sub_1C98CA300();
    sub_1C98CA950(&type metadata for SNMLModelFactory.ModelConfiguration.SNMLModelComputeUnit, v8, v9, v10, v7);
    v11 = sub_1C98CA91C();
    v12(v11);
    v1 = v14;
    sub_1C97A592C(a1);
  }

  return v1;
}

uint64_t sub_1C98C86C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C98C8344(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C98C86EC(uint64_t a1)
{
  v2 = sub_1C98CA2AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98C8728(uint64_t a1)
{
  v2 = sub_1C98CA2AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98C8764@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C98C8598(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C98C87B4()
{
  sub_1C9A93CC8();
  sub_1C9A92528();

  return sub_1C9A93D18();
}

uint64_t sub_1C98C8854(uint64_t a1)
{
  v1 = objc_autoreleasePoolPush();
  sub_1C98C88A8(&v4, v2);
  objc_autoreleasePoolPop(v1);
  return v4;
}

void sub_1C98C88A8(char *a2@<X8>, double a3@<D0>)
{
  sub_1C97BD318(a3, 0, &qword_1EC3C54A0, 0x1E69E58C0);
  v4 = [objc_allocWithZone(MEMORY[0x1E695FEB0]) init];
  v5 = sub_1C9A931E8();

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E695FEB0]) init];
    [v7 setComputeUnits_];
    v8 = sub_1C9A931E8();

    if (v8)
    {
      v6 = 1;
    }

    else
    {
      v9 = [objc_allocWithZone(MEMORY[0x1E695FEB0]) init];
      [v9 setComputeUnits_];
      v10 = sub_1C9A931E8();

      if (v10)
      {
        v6 = 2;
      }

      else
      {
        v6 = 3;
      }
    }
  }

  *a2 = v6;
}

id sub_1C98C89D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = a2;
  v6 = sub_1C9A91558();
  v7 = sub_1C97DACE4(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEAD8();
  v10 = v9 - v8;
  if (v5 == 3)
  {
    v11 = 0;
  }

  else
  {
    v11 = v3;
  }

  v12 = sub_1C98C6A38(v11);
  sub_1C98C73E0(a1, v10);
  if (v2)
  {
  }

  else
  {
    sub_1C97BD318(v13, 0, &qword_1EC3C54C0, 0x1E695FE90);
    v14 = v12;
    v3 = sub_1C9A06DD8(v10, v14);
    if (qword_1EC3C5520 != -1)
    {
      sub_1C98134D8();
      swift_once();
    }

    v16 = sub_1C9A91B58();
    sub_1C97BFF6C(v16, qword_1EC3D3108);
    v17 = sub_1C9A91B38();
    v18 = sub_1C9A92FC8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v26;
      *v19 = 136315394;
      v20 = sub_1C9A924F8();
      v22 = sub_1C9849140(v20, v21, &v27);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2080;
      v23 = sub_1C9A924F8();
      v25 = sub_1C9849140(v23, v24, &v27);

      *(v19 + 14) = v25;
      _os_log_impl(&dword_1C9788000, v17, v18, "Sucessfuly created model from asset %s for execution on %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA93280](v26, -1, -1);
      MEMORY[0x1CCA93280](v19, -1, -1);
    }
  }

  return v3;
}

uint64_t sub_1C98C8C3C@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a3@<X8>)
{
  v6 = sub_1C9A91748();
  sub_1C97AE9C8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97AEAD8();
  v12 = v11 - v10;
  result = sub_1C98C89D4(*a1, a1[1]);
  if (!v3)
  {
    v15 = result;
    type metadata accessor for SNMLModelAdapter(v14);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    sub_1C9A91738();
    v17 = sub_1C9A916F8();
    v19 = v18;
    (*(v8 + 8))(v12, v6);
    MEMORY[0x1CCA90230](32, 0xE100000000000000);
    v20 = sub_1C9A924F8();
    MEMORY[0x1CCA90230](v20);

    type metadata accessor for SNMLLockedModel(v21);
    v22 = swift_allocObject();
    v24 = sub_1C98C9B90(v17, v19, v16, v22, v23);
    type metadata accessor for AnySNMLModel(v25);
    result = swift_allocObject();
    *(result + 16) = v24;
    *(result + 24) = &off_1F4937330;
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C98C8DE8()
{
  v38 = sub_1C9A91558();
  sub_1C97AE9C8();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97AEAD8();
  v37 = v4 - v3;
  result = sub_1C99B89AC();
  v6 = 0;
  v7 = result + 64;
  v39 = result;
  v8 = 1 << *(result + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(result + 64);
  v11 = (v8 + 63) >> 6;
  v36 = (v1 + 8);
  v33 = MEMORY[0x1E69E7CC0];
  while (v10)
  {
LABEL_9:
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v14 = v13 | (v6 << 6);
    v35 = *(*(v39 + 48) + v14);
    v15 = (*(v39 + 56) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];

    v34 = v17;
    v40 = v16;
    sub_1C9A91468();
    v18 = sub_1C9A91418();
    v20 = v19;
    (*v36)(v37, v38);
    v21 = 0;
    while (1)
    {
      v22 = byte_1F4929EE0[v21 + 32];
      if (byte_1F4929EE0[v21 + 32])
      {
        v23 = v22 == 1 ? 0x636C65646F6D6C6DLL : 0x656C646E7562;
        v24 = v22 == 1 ? 0xE800000000000000 : 0xE600000000000000;
      }

      else
      {
        v24 = 0xE700000000000000;
        v23 = 0x6C65646F6D6C6DLL;
      }

      if (v23 == v18 && v24 == v20)
      {
        break;
      }

      sub_1C98CA904();
      v26 = sub_1C9A93B18();

      if (v26)
      {
        goto LABEL_26;
      }

      if (++v21 == 3)
      {

        goto LABEL_27;
      }
    }

LABEL_26:

    if (v22 != 1)
    {
LABEL_27:

      continue;
    }

    v27 = v33;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C97B7C9C(0, *(v33 + 16) + 1, 1);
      v27 = v33;
    }

    v29 = *(v27 + 16);
    v28 = *(v27 + 24);
    if (v29 >= v28 >> 1)
    {
      v31 = sub_1C97CE0F4(v28);
      result = sub_1C97B7C9C(v31, v29 + 1, 1);
      v27 = v33;
    }

    *(v27 + 16) = v29 + 1;
    v33 = v27;
    v30 = v27 + 24 * v29;
    *(v30 + 32) = v35;
    *(v30 + 40) = v34;
    *(v30 + 48) = v40;
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      v32 = sub_1C97E8F68(v33);

      return v32;
    }

    v10 = *(v7 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C98C9104()
{
  v27 = sub_1C9A91558();
  sub_1C97AE9C8();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97ABF90();
  v26 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v24 - v5;
  v6 = sub_1C98C8DE8();
  v7 = *(v6 + 16);
  if (v7)
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1C97B7CBC(0, v7, 0);
    v8 = v29;
    v9 = (v1 + 8);
    v24 = v6;
    v10 = v6 + 48;
    do
    {
      v28 = *(v10 - 16);

      v11 = v25;
      sub_1C9A91468();
      v12 = v26;
      sub_1C9A91498();
      v13 = sub_1C9A91478();
      v15 = v14;

      v16 = *v9;
      v17 = v12;
      v18 = v27;
      (*v9)(v17, v27);
      v16(v11, v18);
      v29 = v8;
      v20 = *(v8 + 16);
      v19 = *(v8 + 24);
      if (v20 >= v19 >> 1)
      {
        v22 = sub_1C97CE0F4(v19);
        sub_1C97B7CBC(v22, v20 + 1, 1);
        v8 = v29;
      }

      *(v8 + 16) = v20 + 1;
      v21 = v8 + 24 * v20;
      *(v21 + 32) = v28;
      *(v21 + 40) = v13;
      *(v21 + 48) = v15;
      v10 += 24;
      --v7;
    }

    while (v7);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

uint64_t sub_1C98C9308()
{
  v0 = sub_1C97A2CEC(&qword_1EC3C7FE0, &unk_1C9AA1890);
  v1 = sub_1C97DACE4(v0);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97ABF90();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v68 - v3;
  v5 = sub_1C9A91558();
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97ABF90();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v9);
  v70 = &v68 - v10;
  v11 = sub_1C97A2CEC(&qword_1EC3CB7D8, &qword_1C9AAFB58);
  v12 = sub_1C97DACE4(v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v68 - v16;
  v18 = sub_1C97A2CEC(&unk_1EC3C76B0, &unk_1C9AAFB60);
  sub_1C97AE9C8();
  v82 = v19;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C97ABF90();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v21);
  v79 = &v68 - v22;
  type metadata accessor for SoundAnalysisBundleMarker(v23);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v77 = objc_opt_self();
  v76 = sub_1C97BD318(v24, 0, &qword_1EC3C54B8, 0x1E696AAE8);
  v25 = 0;
  v26 = 0;
  v83 = 0;
  v75 = "ure extractor class";
  v68 = v7;
  v69 = (v7 + 32);
  v27 = MEMORY[0x1E69E7CC0];
  v74 = xmmword_1C9A9DF30;
  v85 = v18;
  v86 = v5;
  v80 = v17;
  v81 = v15;
  do
  {
    LODWORD(v87) = v25;
    LODWORD(v84) = *(&unk_1F4929F08 + v26 + 32);
    if (v84)
    {
      v28 = 33;
    }

    else
    {
      v28 = 21;
    }

    sub_1C99BF4B4(v28);
    v30 = v29;
    sub_1C97A2CEC(&unk_1EC3C6E20, &qword_1C9A9FF60);
    v31 = swift_allocObject();
    *(v31 + 16) = v74;
    *(v31 + 32) = [v77 bundleForClass_];
    v88 = v31;
    if (sub_1C99B8C4C(0xD000000000000068, v75 | 0x8000000000000000))
    {
      MEMORY[0x1CCA90400]();
      v32 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v32 >> 1)
      {
        sub_1C97CE0F4(v32);
        sub_1C9A92808();
      }

      sub_1C9A92868();
    }

    v33 = v86;
    if (v30)
    {
      v34 = v4;
      v35 = v73;
      sub_1C98CA9BC();
      swift_bridgeObjectRetain_n();
      v36 = v83;
      sub_1C99B8448();
      v38 = v37;
      v83 = v36;
      swift_bridgeObjectRelease_n();

      v39 = v35;
      v4 = v34;
      sub_1C98C9E0C(v39, v34, &qword_1EC3C7FE0, &unk_1C9AA1890);
    }

    else
    {
      sub_1C98CA9BC();
    }

    v40 = v85;
    v42 = v80;
    v41 = v81;

    if (sub_1C97ABF20(v4, 1, v33) == 1)
    {
      sub_1C97F9D3C(v4, &qword_1EC3C7FE0, &unk_1C9AA1890);
      v43 = 1;
    }

    else
    {
      v44 = *v69;
      v45 = v70;
      (*v69)(v70, v4, v33);
      v46 = *(v40 + 48);
      *v41 = v84;
      v44(&v41[v46], v45, v33);
      v43 = 0;
    }

    sub_1C97ACC50(v41, v43, 1, v40);
    sub_1C98C9E0C(v41, v42, &qword_1EC3CB7D8, &qword_1C9AAFB58);
    if (sub_1C97ABF20(v42, 1, v40) == 1)
    {
      sub_1C97F9D3C(v42, &qword_1EC3CB7D8, &qword_1C9AAFB58);
    }

    else
    {
      sub_1C98C9E0C(v42, v79, &unk_1EC3C76B0, &unk_1C9AAFB60);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C97E6720();
        v27 = v49;
      }

      v48 = *(v27 + 16);
      v47 = *(v27 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_1C97CE0F4(v47);
        sub_1C97E6720();
        v27 = v50;
      }

      *(v27 + 16) = v48 + 1;
      sub_1C98C9E0C(v79, v27 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v48, &unk_1EC3C76B0, &unk_1C9AAFB60);
    }

    v25 = 1;
    v26 = 1u;
  }

  while ((v87 & 1) == 0);
  v51 = *(v27 + 16);
  if (v51)
  {
    v88 = MEMORY[0x1E69E7CC0];
    result = sub_1C97B81E0(0, v51, 0);
    v53 = 0;
    v54 = v88;
    v87 = v27 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
    v84 = (v68 + 8);
    while (v53 < *(v27 + 16))
    {
      v55 = v27;
      v56 = v71;
      sub_1C98C9D9C(v87 + *(v82 + 72) * v53, v71);
      v57 = *v56;
      v58 = v72;
      sub_1C9A91498();
      v59 = sub_1C9A91478();
      v61 = v60;
      (*v84)(v58, v86);
      result = sub_1C97F9D3C(v56, &unk_1EC3C76B0, &unk_1C9AAFB60);
      v88 = v54;
      v63 = *(v54 + 16);
      v62 = *(v54 + 24);
      if (v63 >= v62 >> 1)
      {
        v65 = sub_1C97CE0F4(v62);
        result = sub_1C97B81E0(v65, v63 + 1, 1);
        v54 = v88;
      }

      *(v54 + 16) = v63 + 1;
      v64 = v54 + 24 * v63;
      *(v64 + 32) = v57;
      ++v53;
      *(v64 + 40) = v59;
      *(v64 + 48) = v61;
      v27 = v55;
      if (v51 == v53)
      {

        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {

    v54 = MEMORY[0x1E69E7CC0];
LABEL_31:
    sub_1C97A2CEC(&unk_1EC3C69B0, &unk_1C9AAFB70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C9A9EDD0;
    *(inited + 32) = 1;
    *(inited + 40) = sub_1C9A924A8();
    *(inited + 48) = v67;
    v88 = v54;
    sub_1C98D03BC(inited);
    return v88;
  }

  return result;
}