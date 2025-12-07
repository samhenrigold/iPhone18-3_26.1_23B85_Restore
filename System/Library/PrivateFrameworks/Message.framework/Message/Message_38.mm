unint64_t sub_1B0A41704()
{
  v2 = qword_1EB6DBB00;
  if (!qword_1EB6DBB00)
  {
    _s9UIDsQueryV7EncodedV13UIDSetAsArrayVMa(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBB00);
    return WitnessTable;
  }

  return v2;
}

__n128 sub_1B0A41784(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E43308();
  (*(*(v2 - 8) + 32))(a2, a1);
  V7EncodedVMa = _s9UIDsQueryV7EncodedVMa(0);
  *(a2 + *(V7EncodedVMa + 20)) = *(a1 + *(V7EncodedVMa + 20));
  result = *(a1 + *(V7EncodedVMa + 24));
  *(a2 + *(V7EncodedVMa + 24)) = result;
  return result;
}

uint64_t sub_1B0A4181C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E43308();
  (*(*(v2 - 8) + 16))(a2, a1);
  V7EncodedVMa = _s9UIDsQueryV7EncodedVMa(0);
  v14 = *(V7EncodedVMa + 20);
  if ((*(a1 + v14 + 8) & 0xF000000000000000) == 0xF000000000000000)
  {
    *(a2 + v14) = *(a1 + v14);
  }

  else
  {
    v9 = *(a1 + v14);
    v10 = *(a1 + v14 + 8);
    sub_1B03B2000(v9, v10);
    v3 = (a2 + v14);
    *v3 = v9;
    v3[1] = v10;
  }

  v7 = a2 + *(V7EncodedVMa + 24);
  v8 = (a1 + *(V7EncodedVMa + 24));
  if ((v8[1] & 0xF000000000000000) == 0xF000000000000000)
  {
    *v7 = *v8;
  }

  else
  {
    v5 = *v8;
    v6 = v8[1];
    sub_1B03B2000(*v8, v6);
    *v7 = v5;
    *(v7 + 8) = v6;
  }

  return a2;
}

unint64_t sub_1B0A419A0()
{
  v2 = qword_1EB6DB568;
  if (!qword_1EB6DB568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E24F8, &qword_1B0E9CD00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB568);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A41A28(uint64_t a1)
{
  v5 = a1;
  v3[0] = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v4 = v3 - v3[0];
  sub_1B03D08AC(v1, v3 - v3[0]);
  sub_1B074F0FC(v4, v3[1]);
  return sub_1B03D09B8(v5);
}

uint64_t sub_1B0A41ACC(uint64_t a1)
{
  v18 = a1;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v30 = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v17 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v23 = &v6 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1BF8, &qword_1B0E9AFF0);
  v20 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v25 = &v6 - v20;
  v38 = &v6 - v20;
  v37 = v2;
  v36 = v1;
  v22 = v2[3];
  v21 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v22);
  sub_1B0E46D28();
  sub_1B03D08AC(v24, v23);
  sub_1B074B4A4();
  sub_1B0E45798();
  for (i = v27; ; i = 0)
  {
    v15 = i;
    sub_1B0E46518();
    v16 = v31;
    if (v32)
    {
      sub_1B03D09B8(v25);
      return __swift_destroy_boxed_opaque_existential_0(v33);
    }

    v14 = v16;
    v30 = v16;
    v8 = v29;
    v29[0] = v16;
    v7 = sub_1B07467B8();
    v3 = sub_1B041C1E8();
    BinaryInteger.init<A>(_:)(v8, MEMORY[0x1E69E7668], &type metadata for UID, v7, v3);
    v11 = v29[1];
    v9 = v34;
    v10 = v35;
    __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
    v4 = v15;
    sub_1B0E469D8();
    v12 = v4;
    v13 = v4;
    if (v4)
    {
      break;
    }
  }

  v6 = v13;
  sub_1B03D09B8(v25);
  return __swift_destroy_boxed_opaque_existential_0(v33);
}

unint64_t sub_1B0A41E14(uint64_t a1)
{
  v4 = sub_1B0A41EEC(319);
  if (v1 <= 0x3F)
  {
    v4 = sub_1B043B29C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

unint64_t sub_1B0A41EEC(uint64_t a1)
{
  v5 = qword_1EB6DB578;
  if (!qword_1EB6DB578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E2640, &qword_1B0E9B010);
    v4 = sub_1B0E45358();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EB6DB578);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1B0A41FE0(uint64_t a1)
{
  v4 = sub_1B0E43308();
  if (v1 <= 0x3F)
  {
    v4 = sub_1B0A420B8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

unint64_t sub_1B0A420B8(uint64_t a1)
{
  v5 = qword_1EB6DED08;
  if (!qword_1EB6DED08)
  {
    v4 = sub_1B0E45D88();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EB6DED08);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1B0A4219C(uint64_t a1)
{
  v3 = sub_1B043B29C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v3;
}

unint64_t sub_1B0A42234()
{
  v2 = qword_1EB6E3A98;
  if (!qword_1EB6E3A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E2640, &qword_1B0E9B010);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3A98);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A422BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v13 = a2;
  v14 = a1;
  v18 = 0;
  v17 = sub_1B0A43520;
  v27 = 0;
  v26 = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3AA0, &qword_1B0EA3A40);
  v15 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v12 - v15;
  v27 = *v3;
  v26 = v2;
  v21 = v27;
  sub_1B0A227DC(&v21);
  sub_1B0E45B88();
  sub_1B03F1A20(v17, v18, v19, MEMORY[0x1E69E73E0], &unk_1F270C638, v20, v22);
  result = sub_1B0A43600(v16);
  v5 = v13;
  v6 = v22[1];
  v7 = v22[2];
  v8 = v22[3];
  v9 = v22[4];
  v10 = v23 | (v24 << 32);
  v11 = v25;
  *v13 = v22[0];
  v5[1] = v6;
  v5[2] = v7;
  v5[3] = v8;
  v5[4] = v9;
  *(v5 + 10) = v10;
  *(v5 + 44) = BYTE4(v10);
  *(v5 + 45) = v11 & 1;
  return result;
}

uint64_t sub_1B0A42454(uint64_t a1, uint64_t a2)
{
  v7 = a1;
  v6 = a2;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v13 = sub_1B0E45B78();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v8 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v6 - v8;
  v17 = v3;
  v9 = *v4;
  v16 = v9;
  v15 = v2;
  sub_1B0A436A8(v3, &v6 - v8);
  v14 = v9;
  sub_1B0A227DC(&v14);
  sub_1B0E45BD8();
  return (*(v10 + 8))(v12, v13);
}

void *sub_1B0A4255C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v36 = a1;
  v33 = sub_1B0E45B38();
  v31 = v33;
  v32 = BYTE4(v33) & 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3AA8, &qword_1B0EA3A48);
  sub_1B039A570(sub_1B0A43F80, 0, v3, MEMORY[0x1E69E73E0], &type metadata for UIDValidity, v19, &v34);
  v14 = v34;
  v15 = v35;
  v27 = sub_1B0E45B48();
  v28 = v4 & 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3AB0, &qword_1B0EA3A50);
  sub_1B039A570(sub_1B0A43FF8, 0, v16, MEMORY[0x1E69E73E0], &type metadata for FetchedWindow, v19, &v29);
  v12 = v29;
  v13 = v30;
  v23 = sub_1B0E45B68();
  v24 = v5 & 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3AB8, &qword_1B0EA3A58);
  sub_1B039A570(sub_1B0A441A0, 0, v6, MEMORY[0x1E69E73E0], &type metadata for ModificationSequenceValue, v19, &v25);
  v10 = v25;
  v11 = v26;
  sub_1B0E45B58();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
  sub_1B039A570(sub_1B0A4420C, 0, v16, MEMORY[0x1E69E73E0], v7, v19, &v21);
  LODWORD(v20) = v14;
  BYTE4(v20) = v15 & 1;
  sub_1B0A42B34(v20, v12, v13 & 1, v10, v11 & 1, v21, v22 & 1, v38);
  memcpy(__b, v38, sizeof(__b));
  v8 = sub_1B0E45B78();
  (*(*(v8 - 8) + 8))(a1);
  return memcpy(a2, v38, 0x2DuLL);
}

uint64_t sub_1B0A428B8()
{
  v17 = 0;
  v5[1] = 0;
  v6 = (*(*(_s6LoggerVMa_1(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v13 = v5 - v6;
  v1 = _s18MailboxPersistenceVMa(v0);
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v14 = v5 - v7;
  v17 = v2;
  sub_1B03F4D78(v2 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxPersistence, v5 - v7);
  v8 = (v10 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxMetadata);
  v9 = &v16;
  swift_beginAccess();
  v12 = __dst;
  memcpy(__dst, v8, 0x2DuLL);
  swift_endAccess();
  v3 = *(v10 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxRowID);
  v11 = &v15;
  v15 = v3;
  sub_1B074B69C(v10 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v13);
  sub_1B07C1A10(v12, v11, v13);
  sub_1B074B764(v13);
  return sub_1B03F4F08(v14);
}

void *sub_1B0A42A60@<X0>(void *a1@<X8>)
{
  memset(__b, 0, 0x2DuLL);
  LODWORD(__src[0]) = 0;
  BYTE4(__src[0]) = 1;
  __src[1] = 0;
  LOBYTE(__src[2]) = 1;
  __src[3] = 0;
  LOBYTE(__src[4]) = 1;
  *(&__src[4] + 4) = 0;
  BYTE4(__src[5]) = 1;
  return memcpy(a1, __src, 0x2DuLL);
}

void *sub_1B0A42B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, void *a8@<X8>)
{
  LODWORD(__src[0]) = a1;
  BYTE4(__src[0]) = BYTE4(a1) & 1;
  __src[1] = a2;
  LOBYTE(__src[2]) = a3 & 1;
  __src[3] = a4;
  LOBYTE(__src[4]) = a5 & 1;
  *(&__src[4] + 4) = a6;
  BYTE4(__src[5]) = a7 & 1;
  return memcpy(a8, __src, 0x2DuLL);
}

uint64_t sub_1B0A42BC0(uint64_t a1, char a2)
{
  v10 = a1;
  v11 = a2 & 1;
  v9 = v2;
  v3 = sub_1B082AEBC(v8);
  *(v4 + 8) = a1;
  *(v4 + 16) = a2 & 1;
  return v3();
}

uint64_t sub_1B0A42C58(uint64_t a1, char a2)
{
  v10 = a1;
  v11 = a2 & 1;
  v9 = v2;
  v3 = sub_1B082AEBC(v8);
  *(v4 + 24) = a1;
  *(v4 + 32) = a2 & 1;
  return v3();
}

uint64_t sub_1B0A42CF0()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxMetadata);
  swift_beginAccess();
  v3 = *v2;
  v4 = *(v2 + 4);
  swift_endAccess();
  LODWORD(v5) = v3;
  BYTE4(v5) = v4 & 1;
  return v5;
}

uint64_t sub_1B0A42D78()
{
  v2 = v0 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxMetadata;
  swift_beginAccess();
  v3 = *(v2 + 8);
  swift_endAccess();
  return v3;
}

uint64_t sub_1B0A42DF0()
{
  v2 = v0 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxMetadata;
  swift_beginAccess();
  v3 = *(v2 + 36);
  swift_endAccess();
  return v3;
}

uint64_t sub_1B0A42E68(uint64_t a1, char a2)
{
  v10 = a1;
  v11 = a2 & 1;
  v9 = v2;
  v3 = sub_1B082AEBC(v8);
  *(v4 + 36) = a1;
  *(v4 + 44) = a2 & 1;
  return v3();
}

uint64_t sub_1B0A42F00(uint64_t a1)
{
  v11 = a1;
  v5 = a1;
  v6 = BYTE4(a1);
  v9 = a1;
  v10 = BYTE4(a1) & 1;
  v8 = v1;
  v2 = sub_1B082AEBC(v7);
  *v3 = v5;
  *(v3 + 4) = v6 & 1;
  return v2();
}

uint64_t sub_1B0A42FAC()
{
  v2 = v0 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxMetadata;
  swift_beginAccess();
  v3 = *(v2 + 24);
  swift_endAccess();
  return v3;
}

uint64_t sub_1B0A43024()
{
  LODWORD(v2) = *v0;
  BYTE4(v2) = *(v0 + 4) & 1;
  return v2;
}

uint64_t sub_1B0A4304C(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1B0A43084(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t sub_1B0A430A8(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t sub_1B0A430CC(uint64_t result, char a2)
{
  *(v2 + 36) = result;
  *(v2 + 44) = a2 & 1;
  return result;
}

BOOL sub_1B0A430E0(int *a1, int *a2)
{
  v32 = a1;
  v31 = a2;
  v47 = *a1;
  v48 = *(a1 + 4);
  v45 = *a2;
  v46 = *(a2 + 4);
  v27 = v47;
  v28 = v48;
  v29 = v45;
  v30 = v46;
  if ((v48 & 1) == 0)
  {
    if ((v30 & 1) == 0)
    {
      v8 = static UIDValidity.__derived_struct_equals(_:_:)(v47, v29);
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if ((v30 & 1) == 0)
  {
LABEL_9:
    v8 = 0;
    goto LABEL_7;
  }

  v8 = 1;
LABEL_7:
  if (v8)
  {
    v43 = *(a1 + 1);
    v44 = *(a1 + 16);
    v41 = *(a2 + 1);
    v42 = *(a2 + 16);
    v23 = v43;
    v24 = v44;
    v25 = v41;
    v26 = v42;
    if (v44)
    {
      if (v26)
      {
        v7 = 1;
LABEL_17:
        if (!v7)
        {
          return 0;
        }

        v39 = *(a1 + 3);
        v40 = *(a1 + 32);
        v37 = *(a2 + 3);
        v38 = *(a2 + 32);
        v19 = v39;
        v20 = v40;
        v21 = v37;
        v22 = v38;
        if (v40)
        {
          if (v22)
          {
            v6 = 1;
LABEL_27:
            if (!v6)
            {
              return 0;
            }

            v35 = *(a1 + 9);
            v36 = *(a1 + 44);
            v33 = *(a2 + 9);
            v34 = *(a2 + 44);
            v15 = v35;
            v16 = v36;
            v17 = v33;
            v18 = v34;
            if (v36)
            {
              if (v18)
              {
                v5 = 1;
                return (v5 & 1) != 0;
              }
            }

            else
            {
              v13 = v35;
              v14 = v36;
              if ((v18 & 1) == 0)
              {
                v12 = v13;
                v11 = v17;
                v2 = sub_1B041C1E8();
                v5 = static MessageIdentifierRange.__derived_struct_equals(_:_:)(&v12, &v11, &type metadata for UID, v2);
                return (v5 & 1) != 0;
              }
            }

            v5 = 0;
            return (v5 & 1) != 0;
          }
        }

        else if ((v22 & 1) == 0)
        {
          v6 = ModificationSequenceValue.distance(to:)(v21, v39) == 0;
          goto LABEL_27;
        }

        v6 = 0;
        goto LABEL_27;
      }
    }

    else if ((v26 & 1) == 0)
    {
      v7 = static FetchedWindow.__derived_struct_equals(_:_:)(v43, v25);
      goto LABEL_17;
    }

    v7 = 0;
    goto LABEL_17;
  }

  return 0;
}

BOOL sub_1B0A434B8(const void *a1, const void *a2)
{
  memcpy(__dst, a1, 0x2DuLL);
  memcpy(v5, a2, 0x2DuLL);
  return sub_1B0A430E0(__dst, v5);
}

void *sub_1B0A43520@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v12 = 0;
  v2 = sub_1B0E45B78();
  v8 = *(v2 - 8);
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v9 = &v6 - v7;
  v12 = v4;
  (*(v8 + 16))(v3);
  v11 = v13;
  sub_1B0A4255C(v9, v13);
  return memcpy(v10, v11, 0x2DuLL);
}

uint64_t sub_1B0A43600(uint64_t a1)
{
  v3 = sub_1B0E45B78();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1B0A436A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v31 = a1;
  v39 = 0;
  v41 = sub_1B0A43D3C;
  v26 = sub_1B0A43D9C;
  v27 = sub_1B0A43DFC;
  v28 = sub_1B0A43E24;
  v29 = sub_1B0A43DFC;
  v30 = sub_1B0A43E24;
  v70 = 0;
  v69 = 0;
  v32 = sub_1B0E45B78();
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  v35 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31);
  v36 = v9 - v35;
  v37 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v38 = v9 - v37;
  v70 = v9 - v37;
  v69 = v4;
  v77 = *v4;
  v78 = *(v4 + 4);
  v65 = v77;
  v66 = v78;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E31A0, &qword_1B0EA0998);
  sub_1B03F1A20(v41, v39, v5, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7668], v40, &v67);
  v42 = 0;
  v22 = v67;
  v23 = v68;
  v75 = *(v31 + 24);
  v76 = *(v31 + 32);
  v61 = v75;
  v62 = v76;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3AC0, &qword_1B0EA3A60);
  sub_1B03F1A20(v26, 0, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E76D8], v40, &v63);
  v24 = 0;
  v17 = v63;
  v18 = v64;
  v73 = *(v31 + 8);
  v74 = *(v31 + 16);
  v55 = v73;
  v56 = v74;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3AC8, &qword_1B0EA3A68);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3AD0, &qword_1B0EA3A70);
  sub_1B03F1A20(v27, 0, v19, MEMORY[0x1E69E73E0], v20, v40, &v57);
  v21 = 0;
  *&v53[3] = v57;
  v54 = v58 & 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3AD8, &qword_1B0EA3A78);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3AE0, &unk_1B0EA3A80);
  sub_1B03F1A20(v28, 0, v14, MEMORY[0x1E69E73E0], v15, v40, &v59);
  v16 = 0;
  v11 = v59;
  v12 = v60;
  v71 = *(v31 + 36);
  v72 = *(v31 + 44);
  v49 = v71;
  v50 = v72;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3638, &qword_1B0EA2090);
  sub_1B03F1A20(v29, 0, v7, MEMORY[0x1E69E73E0], v20, v40, &v51);
  v13 = 0;
  v47 = v51;
  v48 = v52 & 1;
  sub_1B03F1A20(v30, 0, v14, MEMORY[0x1E69E73E0], v15, v40, v53);
  v45 = v22;
  v46 = v23 & 1;
  v43 = 0;
  v44 = 1;
  sub_1B0E45B28();
  v10 = *(v33 + 32);
  v9[1] = v33 + 32;
  v10(v38, v36, v32);
  return (v10)(v25, v38, v32);
}

void *sub_1B0A43D3C(unsigned int *a1)
{
  v4 = *a1;
  v2 = sub_1B07467B8();
  return BinaryInteger.init(_:)(v4, MEMORY[0x1E69E7668], v2);
}

uint64_t sub_1B0A43D9C(uint64_t *a1)
{
  v3 = *a1;
  v1 = sub_1B0A44710();
  return BinaryInteger.init(_:)(v3, MEMORY[0x1E69E76D8], v1);
}

_DWORD *sub_1B0A43DFC@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X8>)
{
  v3 = result[1];
  *a2 = *result;
  a2[1] = v3;
  return result;
}

void *sub_1B0A43E24@<X0>(_DWORD *a1@<X0>, unsigned int *a2@<X8>)
{
  v14 = 0;
  v2 = *a1;
  v6 = a1[1];
  v14 = a1;
  v13[0] = v2;
  v7 = sub_1B07467B8();
  v8 = sub_1B041C1E8();
  v5 = MEMORY[0x1E69E7668];
  BinaryInteger.init<A>(_:)(v13, MEMORY[0x1E69E7668], &type metadata for UID, v7, v8);
  v9 = v13[1];
  v11 = v6;
  result = BinaryInteger.init<A>(_:)(&v11, v5, &type metadata for UID, v7, v8);
  v10 = v12;
  if (v12 < v9)
  {
    result = sub_1B0E465A8();
    __break(1u);
  }

  *a2 = v9;
  a2[1] = v10;
  return result;
}

unint64_t sub_1B0A43F80@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = 0;
  v6 = *a1;
  v5 = v6;
  v2 = sub_1B07467B8();
  result = UIDValidity.init<A>(exactly:)(&v5, MEMORY[0x1E69E7668], v2);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1B0A43FF8(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = 0;
  v16 = 0;
  v12 = 0;
  v2 = *a1;
  v5 = a1[1];
  v20 = a1;
  v17 = v2;
  v6 = sub_1B041C1E8();
  v7 = sub_1B07467B8();
  MessageIdentifier.init<A>(exactly:)(&v17, &type metadata for UID, MEMORY[0x1E69E7668], v6, v7, &v18);
  v8 = v18;
  if (v19 & 1) != 0 || (v16 = v18, v13 = v5, MessageIdentifier.init<A>(exactly:)(&v13, &type metadata for UID, MEMORY[0x1E69E7668], v6, v7, &v14), (v15))
  {
    *a2 = 0;
    *(a2 + 8) = 1;
  }

  else
  {
    v12 = v14;
    v10 = v8;
    v9 = v14;
    static MessageIdentifier.... infix(_:_:)(&v10, &v9, &type metadata for UID, &v11);
    FetchedWindow.init(_:)();
    *a2 = v3;
    *(a2 + 8) = 0;
  }
}

uint64_t sub_1B0A441A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = 0;
  v7 = *a1;
  v6 = v7;
  v2 = sub_1B0A44710();
  result = ModificationSequenceValue.init<A>(exactly:)(&v6, MEMORY[0x1E69E76D8], v2);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void *sub_1B0A4420C@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = 0;
  v18 = 0;
  v14 = 0;
  v2 = *a1;
  v6 = a1[1];
  v22 = a1;
  v19 = v2;
  v7 = sub_1B041C1E8();
  v8 = sub_1B07467B8();
  result = MessageIdentifier.init<A>(exactly:)(&v19, &type metadata for UID, MEMORY[0x1E69E7668], v7, v8, &v20);
  v9 = v20;
  if (v21 & 1) != 0 || (v18 = v20, v15 = v6, result = MessageIdentifier.init<A>(exactly:)(&v15, &type metadata for UID, MEMORY[0x1E69E7668], v7, v8, &v16), v4 = v16, (v17))
  {
    *a2 = 0;
    *(a2 + 8) = 1;
  }

  else
  {
    v14 = v16;
    v12 = v9;
    v11 = v16;
    if (!static MessageIdentifier.<= infix(_:_:)(&v12, &v11, &type metadata for UID, v7))
    {
      sub_1B0E465A8();
      __break(1u);
    }

    v10[0] = v9;
    v10[1] = v4;
    result = MessageIdentifierRange.init(_:)(v10, v13);
    *a2 = v13[0] | (v13[1] << 32);
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t sub_1B0A4446C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 45))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1B0A4454C(uint64_t result, int a2, int a3)
{
  v3 = (result + 45);
  if (a2)
  {
    *(result + 44) = 0;
    *(result + 40) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 32) = 0;
    if (a3)
    {
      *v3 = 1;
    }
  }

  else if (a3)
  {
    *v3 = 0;
  }

  return result;
}

unint64_t sub_1B0A44710()
{
  v2 = qword_1EB6DA318;
  if (!qword_1EB6DA318)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA318);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A44788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1E69E5928](a2);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a1;
  sub_1B03F04F4(sub_1B0A5D18C, v9);
}

uint64_t sub_1B0A44874(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void))
{
  v70 = a1;
  v71 = a2;
  v59 = a3;
  v60 = a4;
  v74 = sub_1B0A5D1A0;
  v57 = sub_1B0A5D220;
  v58 = sub_1B0A5D2F4;
  v103 = 0;
  v102 = 0;
  v101 = 0;
  v99 = 0;
  v100 = 0;
  v98 = 0;
  v97 = 0;
  v95 = 0;
  v94 = 0;
  v86 = 0;
  v61 = sub_1B0E439A8();
  v63 = *(v61 - 8);
  v62 = v61 - 8;
  v64 = v63;
  v65 = v63[8];
  v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v70);
  v67 = &v29 - v66;
  v68 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v69 = &v29 - v68;
  v103 = &v29 - v68;
  v102 = v7;
  v101 = v8;
  v99 = v9;
  v100 = v10;
  v98 = v4;
  v72 = static DownloadRequest.QoS.current()();
  v97 = v72;
  MEMORY[0x1E69E5928](v70);
  MEMORY[0x1E69E5928](v71);
  v73 = &v75;
  v76 = v70;
  v77 = v71;
  v78 = v72;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3AF0, &qword_1B0EA3AF0);
  sub_1B0A4EB4C(v74, v73, v11);
  MEMORY[0x1E69E5920](v70);
  MEMORY[0x1E69E5920](v71);
  v55 = v96;
  v95 = v96;
  MEMORY[0x1E69E5928](v96);
  if (v55)
  {
    v54 = v55;
    v52 = v55;
    v94 = v55;
    v41 = v64;
    v40 = v63[2];
    v39 = v63 + 2;
    v40(v69, v56 + OBJC_IVAR___MFSwiftIMAPTaskManager_logger, v61);
    v40(v67, v69, v61);
    MEMORY[0x1E69E5928](v56);
    MEMORY[0x1E69E5928](v70);

    v42 = *(v41 + 20);
    v43 = (v42 + 16) & ~v42;
    v46 = (v43 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
    v48 = (v47 + 15) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    v44 = v63[4];
    v45 = v63 + 4;
    v44(v49 + v43, v67, v61);
    v12 = v70;
    v13 = v47;
    v14 = v48;
    v15 = v59;
    v16 = v60;
    v17 = v57;
    v18 = v49;
    *(v49 + v46) = v56;
    *(v18 + v13) = v12;
    v19 = (v18 + v14);
    *v19 = v15;
    v19[1] = v16;
    v92 = v17;
    v93 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v88 = 1107296256;
    v89 = 0;
    v90 = sub_1B090E4EC;
    v91 = &block_descriptor_22;
    v53 = _Block_copy(&aBlock);

    v50 = v63[1];
    v51 = v63 + 1;
    v50(v69, v61);
    [v52 addSuccessBlock_];
    _Block_release(v53);
    v86 = v69;
    v40(v69, v56 + OBJC_IVAR___MFSwiftIMAPTaskManager_logger, v61);
    v40(v67, v69, v61);
    MEMORY[0x1E69E5928](v56);
    MEMORY[0x1E69E5928](v70);

    v33 = (v42 + 16) & ~v42;
    v34 = (v33 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    v44(v37 + v33, v67, v61);
    v20 = v70;
    v21 = v35;
    v22 = v36;
    v23 = v59;
    v24 = v60;
    v25 = v58;
    v26 = v37;
    *(v37 + v34) = v56;
    *(v26 + v21) = v20;
    v27 = (v26 + v22);
    *v27 = v23;
    v27[1] = v24;
    v84 = v25;
    v85 = v26;
    v79 = MEMORY[0x1E69E9820];
    v80 = 1107296256;
    v81 = 0;
    v82 = sub_1B0A5106C;
    v83 = &block_descriptor_9_3;
    v38 = _Block_copy(&v79);

    v50(v69, v61);
    [v52 addFailureBlock_];
    _Block_release(v38);
    MEMORY[0x1E69E5920](v52);
  }

  else
  {

    v30 = [objc_opt_self() ef_temporarilyUnavailableError];
    v31 = 0;
    v32 = 1;
    v59();
    sub_1B0A5D1D0(v30, v31, v32 & 1);
  }

  return MEMORY[0x1E69E5920](v55);
}

uint64_t sub_1B0A45238(uint64_t a1, uint64_t a2)
{
  v159 = a1;
  v160 = a2;
  v163 = sub_1B0A5D1A0;
  v136 = sub_1B0A5D3C8;
  v137 = sub_1B039BCF8;
  v138 = sub_1B0911A54;
  v139 = sub_1B0911A5C;
  v140 = sub_1B070B324;
  v141 = sub_1B0398F5C;
  v142 = sub_1B0398F5C;
  v143 = sub_1B039BCEC;
  v144 = sub_1B0398F5C;
  v145 = sub_1B0398F5C;
  v146 = sub_1B070B4B4;
  v147 = sub_1B0A5D3C8;
  v148 = sub_1B039BCF8;
  v149 = sub_1B0398F5C;
  v150 = sub_1B0398F5C;
  v151 = sub_1B039BCEC;
  v189 = *MEMORY[0x1E69E9840];
  v178 = 0;
  v177 = 0;
  v176 = 0;
  v175 = 0;
  v174 = 0;
  v173 = 0;
  v171 = 0;
  v170 = 0;
  v152 = sub_1B0E439A8();
  v153 = *(v152 - 8);
  v154 = v152 - 8;
  v155 = (*(v153 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v159);
  v156 = v56 - v155;
  v157 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v158 = v56 - v157;
  v178 = v5;
  v177 = v6;
  v176 = v2;
  v161 = static DownloadRequest.QoS.current()();
  v175 = v161;
  MEMORY[0x1E69E5928](v159);
  MEMORY[0x1E69E5928](v160);
  v162 = &v179;
  v180 = v159;
  v181 = v160;
  v182 = v161;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3AF0, &qword_1B0EA3AF0);
  sub_1B0A4EB4C(v163, v162, v7);
  MEMORY[0x1E69E5920](v159);
  MEMORY[0x1E69E5920](v160);
  v134 = v188;
  v174 = v188;
  MEMORY[0x1E69E5928](v188);
  if (v134)
  {
    v133 = v134;
    v130 = v134;
    v173 = v134;
    v187 = 0;
    v172 = 0;
    v132 = [v134 resultWithTimeout:&v172 error:120.0];
    v131 = v172;
    MEMORY[0x1E69E5928](v172);
    v8 = v187;
    v187 = v131;
    MEMORY[0x1E69E5920](v8);
    if (v132)
    {
      v129 = v132;
      v124 = v132;
      v125 = sub_1B0E42F38();
      v126 = v9;
      MEMORY[0x1E69E5920](v124);
      MEMORY[0x1E69E5920](v130);
      MEMORY[0x1E69E5920](v134);
      v127 = v125;
      v128 = v126;
    }

    else
    {
      v113 = v187;
      v115 = sub_1B0E42CD8();
      MEMORY[0x1E69E5920](v113);
      swift_willThrow();
      v114 = 0;
      v11 = v115;
      v171 = v115;
      v12 = v115;
      v121 = sub_1B0E42CC8();
      v170 = v121;

      v120 = [v121 domain];
      v116 = sub_1B0E44AD8();
      v119 = v13;
      v118 = *MEMORY[0x1E699B730];
      MEMORY[0x1E69E5928](v118);
      v14 = sub_1B0E44AD8();
      v117 = v15;
      v122 = MEMORY[0x1B2726DE0](v116, v119, v14);

      MEMORY[0x1E69E5920](v118);

      MEMORY[0x1E69E5920](v120);
      MEMORY[0x1E69E5928](v121);
      if (v122)
      {
        v111 = [v121 code];
        sub_1B041A044();
        v112 = v111 == v16;
      }

      else
      {
        v112 = 0;
      }

      v110 = v112;
      MEMORY[0x1E69E5920](v121);
      if (v110)
      {
        (*(v153 + 16))(v158, v135 + OBJC_IVAR___MFSwiftIMAPTaskManager_logger, v152);
        MEMORY[0x1E69E5928](v135);
        v99 = 7;
        v100 = swift_allocObject();
        *(v100 + 16) = v135;
        v108 = sub_1B0E43988();
        v109 = sub_1B0E458E8();
        v97 = 17;
        v102 = swift_allocObject();
        *(v102 + 16) = 34;
        v103 = swift_allocObject();
        *(v103 + 16) = 8;
        v98 = 32;
        v17 = swift_allocObject();
        v18 = v100;
        v101 = v17;
        *(v17 + 16) = v147;
        *(v17 + 24) = v18;
        v19 = swift_allocObject();
        v20 = v101;
        v105 = v19;
        *(v19 + 16) = v148;
        *(v19 + 24) = v20;
        v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v104 = sub_1B0E46A48();
        v106 = v21;

        v22 = v102;
        v23 = v106;
        *v106 = v149;
        v23[1] = v22;

        v24 = v103;
        v25 = v106;
        v106[2] = v150;
        v25[3] = v24;

        v26 = v105;
        v27 = v106;
        v106[4] = v151;
        v27[5] = v26;
        sub_1B0394964();

        if (os_log_type_enabled(v108, v109))
        {
          v28 = v114;
          v90 = sub_1B0E45D78();
          v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v91 = sub_1B03949A8(0, v89, v89);
          v92 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v93 = &v166;
          v166 = v90;
          v94 = &v184;
          v184 = v91;
          v95 = &v183;
          v183 = v92;
          sub_1B0394A48(2, &v166);
          sub_1B0394A48(1, v93);
          v164 = v149;
          v165 = v102;
          sub_1B03949FC(&v164, v93, v94, v95);
          v96 = v28;
          if (v28)
          {

            __break(1u);
          }

          else
          {
            v164 = v150;
            v165 = v103;
            sub_1B03949FC(&v164, &v166, &v184, &v183);
            v88 = 0;
            v164 = v151;
            v165 = v105;
            sub_1B03949FC(&v164, &v166, &v184, &v183);
            _os_log_impl(&dword_1B0389000, v108, v109, "[%{public}s] User-initiated download timed out", v90, 0xCu);
            sub_1B03998A8(v91, 0, v89);
            sub_1B03998A8(v92, 1, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v108);
        (*(v153 + 8))(v158, v152);
      }

      else
      {
        (*(v153 + 16))(v156, v135 + OBJC_IVAR___MFSwiftIMAPTaskManager_logger, v152);
        MEMORY[0x1E69E5928](v135);
        v67 = 24;
        v74 = 7;
        v29 = swift_allocObject();
        v30 = v115;
        v68 = v29;
        *(v29 + 16) = v135;
        v31 = v30;
        v72 = swift_allocObject();
        *(v72 + 16) = v115;
        sub_1B07575C4();

        v86 = sub_1B0E43988();
        v87 = sub_1B0E458E8();
        v70 = 17;
        v77 = swift_allocObject();
        *(v77 + 16) = 34;
        v78 = swift_allocObject();
        v71 = 8;
        *(v78 + 16) = 8;
        v73 = 32;
        v32 = swift_allocObject();
        v33 = v68;
        v69 = v32;
        *(v32 + 16) = v136;
        *(v32 + 24) = v33;
        v34 = swift_allocObject();
        v35 = v69;
        v79 = v34;
        *(v34 + 16) = v137;
        *(v34 + 24) = v35;
        v80 = swift_allocObject();
        *(v80 + 16) = 64;
        v81 = swift_allocObject();
        *(v81 + 16) = v71;
        v36 = swift_allocObject();
        v37 = v72;
        v75 = v36;
        *(v36 + 16) = v138;
        *(v36 + 24) = v37;
        v38 = swift_allocObject();
        v39 = v75;
        v76 = v38;
        *(v38 + 16) = v139;
        *(v38 + 24) = v39;
        v40 = swift_allocObject();
        v41 = v76;
        v83 = v40;
        *(v40 + 16) = v140;
        *(v40 + 24) = v41;
        v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v82 = sub_1B0E46A48();
        v84 = v42;

        v43 = v77;
        v44 = v84;
        *v84 = v141;
        v44[1] = v43;

        v45 = v78;
        v46 = v84;
        v84[2] = v142;
        v46[3] = v45;

        v47 = v79;
        v48 = v84;
        v84[4] = v143;
        v48[5] = v47;

        v49 = v80;
        v50 = v84;
        v84[6] = v144;
        v50[7] = v49;

        v51 = v81;
        v52 = v84;
        v84[8] = v145;
        v52[9] = v51;

        v53 = v83;
        v54 = v84;
        v84[10] = v146;
        v54[11] = v53;
        sub_1B0394964();

        if (os_log_type_enabled(v86, v87))
        {
          v55 = v114;
          v59 = sub_1B0E45D78();
          v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v58 = 1;
          v60 = sub_1B03949A8(1, v57, v57);
          v61 = sub_1B03949A8(v58, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v63 = &v169;
          v169 = v59;
          v64 = &v186;
          v186 = v60;
          v65 = &v185;
          v185 = v61;
          v62 = 2;
          sub_1B0394A48(2, &v169);
          sub_1B0394A48(v62, v63);
          v167 = v141;
          v168 = v77;
          sub_1B03949FC(&v167, v63, v64, v65);
          v66 = v55;
          if (v55)
          {

            __break(1u);
          }

          else
          {
            v167 = v142;
            v168 = v78;
            sub_1B03949FC(&v167, &v169, &v186, &v185);
            v56[4] = 0;
            v167 = v143;
            v168 = v79;
            sub_1B03949FC(&v167, &v169, &v186, &v185);
            v56[3] = 0;
            v167 = v144;
            v168 = v80;
            sub_1B03949FC(&v167, &v169, &v186, &v185);
            v56[2] = 0;
            v167 = v145;
            v168 = v81;
            sub_1B03949FC(&v167, &v169, &v186, &v185);
            v56[1] = 0;
            v167 = v146;
            v168 = v83;
            sub_1B03949FC(&v167, &v169, &v186, &v185);
            _os_log_impl(&dword_1B0389000, v86, v87, "[%{public}s] User-initiated download failed: %@", v59, 0x16u);
            v56[0] = 1;
            sub_1B03998A8(v60, 1, v57);
            sub_1B03998A8(v61, v56[0], MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v86);
        (*(v153 + 8))(v156, v152);
      }

      MEMORY[0x1E69E5920](v121);

      MEMORY[0x1E69E5920](v130);
      MEMORY[0x1E69E5920](v134);
      v127 = 0;
      v128 = 0xF000000000000000;
    }
  }

  else
  {
    MEMORY[0x1E69E5920](0);
    v127 = 0;
    v128 = 0xF000000000000000;
  }

  v123 = v128;
  return v127;
}

uint64_t sub_1B0A469A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v162 = a1;
  v163 = a2;
  v164 = a3;
  v165 = a4;
  v166 = a5;
  v167 = a6;
  v169 = sub_1B0A5E248;
  v138 = sub_1B0A5D3C8;
  v139 = sub_1B039BCF8;
  v140 = sub_1B0911A54;
  v141 = sub_1B0911A5C;
  v142 = sub_1B070B324;
  v143 = sub_1B0398F5C;
  v144 = sub_1B0398F5C;
  v145 = sub_1B039BCEC;
  v146 = sub_1B0398F5C;
  v147 = sub_1B0398F5C;
  v148 = sub_1B070B4B4;
  v149 = sub_1B0A5D3C8;
  v150 = sub_1B039BCF8;
  v151 = sub_1B0398F5C;
  v152 = sub_1B0398F5C;
  v153 = sub_1B039BCEC;
  v203 = *MEMORY[0x1E69E9840];
  v187 = 0;
  v188 = 0;
  v186 = 0;
  v185 = 0;
  v183 = 0;
  v184 = 0;
  v182 = 0;
  v181 = 0;
  v180 = 0;
  v179 = 0;
  v177 = 0;
  v176 = 0;
  v154 = sub_1B0E439A8();
  v155 = *(v154 - 8);
  v156 = v154 - 8;
  v157 = (*(v155 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v162);
  v158 = v63 - v157;
  v159 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v160 = v63 - v159;
  v187 = v9;
  v188 = v10;
  v186 = v11;
  v185 = v12;
  v183 = v13;
  v184 = v14;
  v182 = v6;
  v161 = static DownloadRequest.QoS.current()();
  v181 = v161;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](v164);
  MEMORY[0x1E69E5928](v165);

  v168 = &v189;
  v190 = v162;
  v191 = v163;
  v192 = v164;
  v193 = v165;
  v194 = v161;
  v195 = v166;
  v196 = v167;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3AF0, &qword_1B0EA3AF0);
  sub_1B0A4EB4C(v169, v168, v15);

  MEMORY[0x1E69E5920](v164);
  MEMORY[0x1E69E5920](v165);

  v136 = v202;
  v180 = v202;
  MEMORY[0x1E69E5928](v202);
  if (v136)
  {
    v135 = v136;
    v132 = v136;
    v179 = v136;
    v201 = 0;
    v178 = 0;
    v134 = [v136 resultWithTimeout:&v178 error:120.0];
    v133 = v178;
    MEMORY[0x1E69E5928](v178);
    v16 = v201;
    v201 = v133;
    MEMORY[0x1E69E5920](v16);
    if (v134)
    {
      v131 = v134;
      MEMORY[0x1E69E5920](v134);
      MEMORY[0x1E69E5920](v132);
      MEMORY[0x1E69E5920](v136);
      v130 = 1;
    }

    else
    {
      v120 = v201;
      v122 = sub_1B0E42CD8();
      MEMORY[0x1E69E5920](v120);
      swift_willThrow();
      v121 = 0;
      v18 = v122;
      v177 = v122;
      v19 = v122;
      v128 = sub_1B0E42CC8();
      v176 = v128;

      v127 = [v128 domain];
      v123 = sub_1B0E44AD8();
      v126 = v20;
      v125 = *MEMORY[0x1E699B730];
      MEMORY[0x1E69E5928](v125);
      v21 = sub_1B0E44AD8();
      v124 = v22;
      v129 = MEMORY[0x1B2726DE0](v123, v126, v21);

      MEMORY[0x1E69E5920](v125);

      MEMORY[0x1E69E5920](v127);
      MEMORY[0x1E69E5928](v128);
      if (v129)
      {
        v118 = [v128 code];
        sub_1B041A044();
        v119 = v118 == v23;
      }

      else
      {
        v119 = 0;
      }

      v117 = v119;
      MEMORY[0x1E69E5920](v128);
      if (v117)
      {
        (*(v155 + 16))(v160, v137 + OBJC_IVAR___MFSwiftIMAPTaskManager_logger, v154);
        MEMORY[0x1E69E5928](v137);
        v106 = 7;
        v107 = swift_allocObject();
        *(v107 + 16) = v137;
        v115 = sub_1B0E43988();
        v116 = sub_1B0E458E8();
        v104 = 17;
        v109 = swift_allocObject();
        *(v109 + 16) = 34;
        v110 = swift_allocObject();
        *(v110 + 16) = 8;
        v105 = 32;
        v24 = swift_allocObject();
        v25 = v107;
        v108 = v24;
        *(v24 + 16) = v149;
        *(v24 + 24) = v25;
        v26 = swift_allocObject();
        v27 = v108;
        v112 = v26;
        *(v26 + 16) = v150;
        *(v26 + 24) = v27;
        v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v111 = sub_1B0E46A48();
        v113 = v28;

        v29 = v109;
        v30 = v113;
        *v113 = v151;
        v30[1] = v29;

        v31 = v110;
        v32 = v113;
        v113[2] = v152;
        v32[3] = v31;

        v33 = v112;
        v34 = v113;
        v113[4] = v153;
        v34[5] = v33;
        sub_1B0394964();

        if (os_log_type_enabled(v115, v116))
        {
          v35 = v121;
          v97 = sub_1B0E45D78();
          v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v98 = sub_1B03949A8(0, v96, v96);
          v99 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v100 = &v172;
          v172 = v97;
          v101 = &v198;
          v198 = v98;
          v102 = &v197;
          v197 = v99;
          sub_1B0394A48(2, &v172);
          sub_1B0394A48(1, v100);
          v170 = v151;
          v171 = v109;
          sub_1B03949FC(&v170, v100, v101, v102);
          v103 = v35;
          if (v35)
          {

            __break(1u);
          }

          else
          {
            v170 = v152;
            v171 = v110;
            sub_1B03949FC(&v170, &v172, &v198, &v197);
            v95 = 0;
            v170 = v153;
            v171 = v112;
            sub_1B03949FC(&v170, &v172, &v198, &v197);
            _os_log_impl(&dword_1B0389000, v115, v116, "[%{public}s] User-initiated download timed out", v97, 0xCu);
            sub_1B03998A8(v98, 0, v96);
            sub_1B03998A8(v99, 1, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v115);
        (*(v155 + 8))(v160, v154);
      }

      else
      {
        (*(v155 + 16))(v158, v137 + OBJC_IVAR___MFSwiftIMAPTaskManager_logger, v154);
        MEMORY[0x1E69E5928](v137);
        v74 = 24;
        v81 = 7;
        v36 = swift_allocObject();
        v37 = v122;
        v75 = v36;
        *(v36 + 16) = v137;
        v38 = v37;
        v79 = swift_allocObject();
        *(v79 + 16) = v122;
        sub_1B07575C4();

        v93 = sub_1B0E43988();
        v94 = sub_1B0E458E8();
        v77 = 17;
        v84 = swift_allocObject();
        *(v84 + 16) = 34;
        v85 = swift_allocObject();
        v78 = 8;
        *(v85 + 16) = 8;
        v80 = 32;
        v39 = swift_allocObject();
        v40 = v75;
        v76 = v39;
        *(v39 + 16) = v138;
        *(v39 + 24) = v40;
        v41 = swift_allocObject();
        v42 = v76;
        v86 = v41;
        *(v41 + 16) = v139;
        *(v41 + 24) = v42;
        v87 = swift_allocObject();
        *(v87 + 16) = 64;
        v88 = swift_allocObject();
        *(v88 + 16) = v78;
        v43 = swift_allocObject();
        v44 = v79;
        v82 = v43;
        *(v43 + 16) = v140;
        *(v43 + 24) = v44;
        v45 = swift_allocObject();
        v46 = v82;
        v83 = v45;
        *(v45 + 16) = v141;
        *(v45 + 24) = v46;
        v47 = swift_allocObject();
        v48 = v83;
        v90 = v47;
        *(v47 + 16) = v142;
        *(v47 + 24) = v48;
        v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v89 = sub_1B0E46A48();
        v91 = v49;

        v50 = v84;
        v51 = v91;
        *v91 = v143;
        v51[1] = v50;

        v52 = v85;
        v53 = v91;
        v91[2] = v144;
        v53[3] = v52;

        v54 = v86;
        v55 = v91;
        v91[4] = v145;
        v55[5] = v54;

        v56 = v87;
        v57 = v91;
        v91[6] = v146;
        v57[7] = v56;

        v58 = v88;
        v59 = v91;
        v91[8] = v147;
        v59[9] = v58;

        v60 = v90;
        v61 = v91;
        v91[10] = v148;
        v61[11] = v60;
        sub_1B0394964();

        if (os_log_type_enabled(v93, v94))
        {
          v62 = v121;
          v66 = sub_1B0E45D78();
          v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v65 = 1;
          v67 = sub_1B03949A8(1, v64, v64);
          v68 = sub_1B03949A8(v65, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v70 = &v175;
          v175 = v66;
          v71 = &v200;
          v200 = v67;
          v72 = &v199;
          v199 = v68;
          v69 = 2;
          sub_1B0394A48(2, &v175);
          sub_1B0394A48(v69, v70);
          v173 = v143;
          v174 = v84;
          sub_1B03949FC(&v173, v70, v71, v72);
          v73 = v62;
          if (v62)
          {

            __break(1u);
          }

          else
          {
            v173 = v144;
            v174 = v85;
            sub_1B03949FC(&v173, &v175, &v200, &v199);
            v63[4] = 0;
            v173 = v145;
            v174 = v86;
            sub_1B03949FC(&v173, &v175, &v200, &v199);
            v63[3] = 0;
            v173 = v146;
            v174 = v87;
            sub_1B03949FC(&v173, &v175, &v200, &v199);
            v63[2] = 0;
            v173 = v147;
            v174 = v88;
            sub_1B03949FC(&v173, &v175, &v200, &v199);
            v63[1] = 0;
            v173 = v148;
            v174 = v90;
            sub_1B03949FC(&v173, &v175, &v200, &v199);
            _os_log_impl(&dword_1B0389000, v93, v94, "[%{public}s] User-initiated download failed: %@", v66, 0x16u);
            v63[0] = 1;
            sub_1B03998A8(v67, 1, v64);
            sub_1B03998A8(v68, v63[0], MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v93);
        (*(v155 + 8))(v158, v154);
      }

      MEMORY[0x1E69E5920](v128);

      MEMORY[0x1E69E5920](v132);
      MEMORY[0x1E69E5920](v136);
      v130 = 0;
    }
  }

  else
  {
    MEMORY[0x1E69E5920](0);
    v130 = 0;
  }

  return v130 & 1;
}

id sub_1B0A47B88(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v15 = a2;
  v14 = v2;
  MEMORY[0x1E69E5928](a1);
  MEMORY[0x1E69E5928](a2);
  v9 = a1;
  v10 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3AF0, &qword_1B0EA3AF0);
  sub_1B0A4EB4C(sub_1B0A5E288, v8, v3);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](a2);
  v11 = v12;
  if (v12)
  {
    return v11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E36D0, &unk_1B0EA1DA0);
  type metadata accessor for MFUIDSet();
  v4 = sub_1B09122B0();
  v13 = sub_1B0A47D18(v4);
  if (v11)
  {
    sub_1B06D4E94(&v11);
  }

  return v13;
}

id sub_1B0A47D18(uint64_t a1)
{
  v2 = [swift_getObjCClassFromMetadata() futureWithResult_];
  swift_unknownObjectRelease();
  return v2;
}

id sub_1B0A47D70(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v15 = a2;
  v14 = v2;
  MEMORY[0x1E69E5928](a2);
  v9 = a1;
  v10 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3AF0, &qword_1B0EA3AF0);
  sub_1B0A4EB4C(sub_1B0A5E2B4, v8, v3);
  MEMORY[0x1E69E5920](a2);
  v11 = v12;
  if (v12)
  {
    return v11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E36D0, &unk_1B0EA1DA0);
  type metadata accessor for MFUIDSet();
  v4 = sub_1B09122B0();
  v13 = sub_1B0A47D18(v4);
  if (v11)
  {
    sub_1B06D4E94(&v11);
  }

  return v13;
}

uint64_t sub_1B0A47F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v21 = a2;
  v19 = a3;
  v20 = a4;
  v18 = v4;
  MEMORY[0x1E69E5928](a2);

  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v16 = sub_1B0A5E2E0;
  v17 = v9;
  MEMORY[0x1E69E5928](v4);

  MEMORY[0x1E69E5928](a1);
  v12 = v4;
  v13 = sub_1B0A5E2E0;
  v14 = v9;
  v15 = a1;
  sub_1B0A4EB4C(sub_1B0A5E2F0, v11, MEMORY[0x1E69E7CA8] + 8);
  (MEMORY[0x1E69E5920])();

  MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1B0A480E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v21 = a2;
  v19 = a3;
  v20 = a4;
  v18 = v4;
  MEMORY[0x1E69E5928](a2);

  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v16 = sub_1B0A5E324;
  v17 = v9;
  MEMORY[0x1E69E5928](v4);

  MEMORY[0x1E69E5928](a1);
  v12 = v4;
  v13 = sub_1B0A5E324;
  v14 = v9;
  v15 = a1;
  sub_1B0A4EB4C(sub_1B0A5E334, v11, MEMORY[0x1E69E7CA8] + 8);
  (MEMORY[0x1E69E5920])();

  MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1B0A482AC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x1E69E5928](v5);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](a3);
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  *(v12 + 56) = a3;
  sub_1B0A4E0F4(sub_1B0A5E368, v12);
}

uint64_t sub_1B0A483E8()
{
  v76 = 0;
  v74 = 0;
  v75 = 0;
  v73 = 0;
  v71 = 0;
  v68 = 0;
  v63 = 0;
  v64 = 0;
  v62 = 0;
  v54 = 0;
  v49 = sub_1B0E43498();
  v50 = *(v49 - 8);
  v51 = v49 - 8;
  v52 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v49);
  v53 = &v15 - v52;
  v76 = v0;
  v57 = 1;
  v55 = sub_1B0E44838();
  v56 = v1;
  v74 = v55;
  v75 = v1;
  sub_1B0A5E384();
  v2 = sub_1B0E44838();
  v58 = sub_1B0A48B24(v2, v3);
  v73 = v58;
  MEMORY[0x1E69E5928](v58);
  if (v58)
  {
    v48 = v58;
    v45 = v58;
    sub_1B0E44838();
    v43 = v4;
    v44 = sub_1B0E44AC8();

    v46 = [v45 BOOLForKey_];
    MEMORY[0x1E69E5920](v44);
    MEMORY[0x1E69E5920](v45);
    v47 = v46;
  }

  else
  {
    v47 = 2;
  }

  v72 = v47;
  if (v47 == 2)
  {
    v42 = 0;
  }

  else
  {
    v42 = v72;
  }

  v71 = v42 & 1;
  if (v42)
  {
    v11 = sub_1B0A48B6C();
    v16 = WindowOfInterestSizes.init(_:specialSizes:)(0, 1, v11);
    v17 = v12;
    v18 = v13;
    MEMORY[0x1E69E5920](v58);

    v23 = v16;
    v24 = v17;
    v25 = v18;
  }

  else
  {
    MEMORY[0x1E69E5928](v58);
    if (v58)
    {
      v41 = v58;
      v37 = v58;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v36 = sub_1B0E44AC8();

      v38 = [v37 integerForKey_];
      MEMORY[0x1E69E5920](v36);
      MEMORY[0x1E69E5920](v37);
      v39 = v38;
      v40 = 0;
    }

    else
    {
      v39 = 0;
      v40 = 1;
    }

    v69 = v39;
    v70 = v40 & 1;
    if (v40)
    {
      v35 = 0;
    }

    else
    {
      v35 = v69;
    }

    v5 = v53;
    v32 = v35;
    v68 = v35;
    v66 = 50000;
    v65 = v35;
    sub_1B0E46B68();
    v33 = v67;
    v63 = v67;
    v64 = 0;
    (*(v50 + 104))(v5, *MEMORY[0x1E69ADB00], v49);
    v34 = sub_1B0E43488();
    (*(v50 + 8))(v53, v49);
    if (v34)
    {
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3AF8, &qword_1B0EA3AF8);
      sub_1B0E46A48();
      v6 = v33;
      *v7 = 1;
      *(v7 + 8) = v6;
      *(v7 + 16) = 0;
      *(v7 + 24) = 2;
      *(v7 + 32) = v6;
      *(v7 + 40) = 0;
      sub_1B0394964();
      v29 = v8;
      sub_1B0A5E3E8();
      v30 = sub_1B0E445D8();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v62 = v30;
      v31 = v30;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3AF8, &qword_1B0EA3AF8);
      v26 = sub_1B0E46A48();
      sub_1B0A5E3E8();
      v27 = sub_1B0E445D8();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v62 = v27;
      v31 = v27;
    }

    v19 = v31;
    v60 = 10000;
    v59 = v32;
    sub_1B0E46B68();
    v20 = WindowOfInterestSizes.init(_:specialSizes:)(v61, 0, v19);
    v21 = v9;
    v22 = v10;
    sub_1B039E440(&v62);
    MEMORY[0x1E69E5920](v58);

    v23 = v20;
    v24 = v21;
    v25 = v22;
  }

  return v23;
}

uint64_t sub_1B0A48B8C()
{
  v2 = *(v0 + OBJC_IVAR___MFSwiftIMAPTaskManager_workloopKey);

  return v2;
}

uint64_t sub_1B0A48BCC()
{
  v2 = *(v0 + OBJC_IVAR___MFSwiftIMAPTaskManager_workloop);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B0A48C14()
{
  v2 = *(v0 + OBJC_IVAR___MFSwiftIMAPTaskManager_callbackQueue);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B0A48C5C()
{
  v2 = *(v0 + OBJC_IVAR___MFSwiftIMAPTaskManager_queue);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B0A48CA4@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR___MFSwiftIMAPTaskManager_logger;
  v2 = sub_1B0E439A8();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1B0A48D18()
{
  v2 = *(v0 + OBJC_IVAR___MFSwiftIMAPTaskManager_identifier);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B0A48D64()
{
  v2 = *(v0 + OBJC_IVAR___MFSwiftIMAPTaskManager_makeEngineAndAdaptor);

  return v2;
}

uint64_t sub_1B0A48DB0()
{
  v2 = (v0 + OBJC_IVAR___MFSwiftIMAPTaskManager__engineAndAdaptor);
  swift_beginAccess();
  v3 = *v2;
  sub_1B03EEAD0(*v2, v2[1]);
  swift_endAccess();
  return v3;
}

uint64_t sub_1B0A48E24(uint64_t a1, uint64_t a2)
{
  sub_1B03EEAD0(a1, a2);
  v6 = (v2 + OBJC_IVAR___MFSwiftIMAPTaskManager__engineAndAdaptor);
  swift_beginAccess();
  v3 = *v6;
  v4 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  sub_1B0A5E460(v3, v4);
  swift_endAccess();
  return sub_1B0A5E460(a1, a2);
}

char *sub_1B0A48EFC(void *a1)
{
  v40 = a1;
  v33 = sub_1B0A5E4A8;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v50 = 0;
  v51 = 0;
  v39 = sub_1B0E439A8();
  v36 = *(v39 - 8);
  v37 = v39 - 8;
  v21 = v36;
  v22 = *(v36 + 64);
  v16 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40);
  v32 = &v16 - v16;
  v17 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v16 - v17;
  v54 = &v16 - v17;
  v52 = v4;
  v53 = v1;
  v18 = 1;
  v19 = sub_1B0E44838();
  v20 = v5;
  sub_1B0E44838();
  sub_1B0E43998();
  MEMORY[0x1E69E5928](v40);
  v25 = *(v36 + 16);
  v24 = v36 + 16;
  v25(v32, v38, v39);
  v23 = (*(v21 + 80) + 24) & ~*(v21 + 80);
  v6 = swift_allocObject();
  v7 = v23;
  v8 = v32;
  v9 = v36;
  v10 = v39;
  v35 = v6;
  *(v6 + 16) = v40;
  (*(v9 + 32))(v6 + v7, v8, v10);
  v50 = v33;
  v51 = v35;
  swift_getObjectType();
  MEMORY[0x1E69E5928](v40);
  v25(v32, v38, v39);

  v46 = sub_1B0A4945C();
  v47 = v11;
  v48 = v12;
  v49 = v13;
  v26 = v46;
  v27 = BYTE1(v46);
  v28 = BYTE2(v46);
  v29 = v11;
  v30 = v12;
  v31 = v13;
  v14 = sub_1B07188D8();
  LOBYTE(v42) = v26;
  BYTE1(v42) = v27;
  BYTE2(v42) = v28;
  v43 = v29;
  v44 = v30;
  v45 = v31;
  v41 = sub_1B0A494CC(v40, v32, v42, v29, v30, v31, v14, v33, v35);
  v34 = v53;
  MEMORY[0x1E69E5928](v41);
  v53 = v41;
  swift_getObjectType();
  swift_deallocPartialClassInstance();

  (*(v36 + 8))(v38, v39);
  MEMORY[0x1E69E5920](v40);
  MEMORY[0x1E69E5920](v53);
  return v41;
}

uint64_t sub_1B0A49364@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v11 = a3;
  v13 = a1;
  v9 = a2;
  v15 = 0;
  v14 = 0;
  v10 = sub_1B0E439A8();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v12 = &v6 - v6;
  v15 = v3;
  v14 = v4;
  MEMORY[0x1E69E5928](v3);
  (*(v7 + 16))(v12, v9, v10);
  return sub_1B06D876C(v13, v12, v11);
}

uint64_t sub_1B0A4945C()
{
  v2 = sub_1B07173D0();
  LOWORD(v1) = v2;
  BYTE2(v1) = BYTE2(v2);
  return v1;
}

char *sub_1B0A494CC(void *a1, uint64_t a2, int a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24 = a3;
  v25 = BYTE1(a3);
  v26 = BYTE2(a3);
  MEMORY[0x1E69E5928](a1);
  v31 = [a1 identifier];
  if (v31)
  {
    v16 = sub_1B0E44AD8();
    v17 = v9;
    MEMORY[0x1E69E5920](v31);
    v18 = v16;
    v19 = v17;
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  MEMORY[0x1E69E5920](a1);
  if (v19)
  {
    v14 = v18;
    v15 = v19;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](a1);
  MEMORY[0x1E69E5928](a7);
  v12 = swift_allocObject();
  *(v12 + 16) = a8;
  *(v12 + 24) = a9;
  *(v12 + 32) = v14;
  *(v12 + 40) = v15;
  *(v12 + 48) = a1;
  *(v12 + 56) = a7;
  *(v12 + 64) = v24;
  *(v12 + 65) = v25;
  *(v12 + 66) = v26;
  *(v12 + 72) = a4;
  *(v12 + 80) = a5;
  *(v12 + 88) = a6;
  *(v12 + 96) = v23;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v13 = sub_1B0A4B2C0(v14, v15, sub_1B0A5E520, v12);
  MEMORY[0x1E69E5928](v13);

  MEMORY[0x1E69E5920](a7);
  v10 = sub_1B0E439A8();
  (*(*(v10 - 8) + 8))(a2);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v13);
  return v13;
}

char *sub_1B0A498E8(void *a1, uint64_t a2, int a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, uint64_t a7)
{
  v55 = a1;
  v53 = a2;
  v50 = a7;
  v44 = sub_1B0A5E5B4;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v64 = 0u;
  v65 = 0u;
  v63 = 0;
  v61 = 0;
  v62 = 0;
  v70 = a3;
  v71 = a4;
  v72 = a5;
  v73 = a6;
  v37 = a3;
  v38 = BYTE1(a3);
  v39 = BYTE2(a3);
  v40 = a4;
  v41 = a5;
  v42 = a6;
  v22[1] = 0;
  v54 = sub_1B0E42E68();
  v51 = *(v54 - 8);
  v52 = v54 - 8;
  v30 = v51;
  v31 = *(v51 + 64);
  v23 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v34 = v22 - v23;
  v49 = sub_1B0E439A8();
  v46 = *(v49 - 8);
  v47 = v49 - 8;
  v28 = v46;
  v29 = *(v46 + 64);
  v24 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v55);
  v43 = v22 - v24;
  MEMORY[0x1EEE9AC00](v7);
  v48 = v22 - v8;
  v69 = v22 - v8;
  v67 = v9;
  v66 = v10;
  LOBYTE(v64) = v11;
  BYTE1(v64) = v12;
  BYTE2(v64) = v39;
  *(&v64 + 1) = v40;
  LOBYTE(v65) = v41;
  *(&v65 + 1) = v13;
  v63 = v14;
  v25 = 1;
  v26 = sub_1B0E44838();
  v27 = v15;
  sub_1B0E44838();
  sub_1B0E43998();
  MEMORY[0x1E69E5928](v55);
  v36 = *(v46 + 16);
  v35 = v46 + 16;
  v36(v43, v48, v49);
  (*(v51 + 16))(v34, v53, v54);
  v32 = (*(v28 + 80) + 24) & ~*(v28 + 80);
  v33 = (v32 + v29 + *(v30 + 80)) & ~*(v30 + 80);
  v16 = swift_allocObject();
  v17 = v32;
  v18 = v43;
  v19 = v46;
  v20 = v49;
  v45 = v16;
  *(v16 + 16) = v55;
  (*(v19 + 32))(v16 + v17, v18, v20);
  (*(v51 + 32))(v45 + v33, v34, v54);
  v61 = v44;
  v62 = v45;
  MEMORY[0x1E69E5928](v55);
  v36(v43, v48, v49);
  MEMORY[0x1E69E5928](v50);

  LOBYTE(v57) = v37;
  BYTE1(v57) = v38;
  BYTE2(v57) = v39;
  v58 = v40;
  v59 = v41;
  v60 = v42;
  v56 = sub_1B0A494CC(v55, v43, v57, v40, v41, v42, v50, v44, v45);
  MEMORY[0x1E69E5928](v56);
  v68 = v56;

  (*(v46 + 8))(v48, v49);
  MEMORY[0x1E69E5920](v50);
  (*(v51 + 8))(v53, v54);
  MEMORY[0x1E69E5920](v55);
  MEMORY[0x1E69E5920](v68);
  return v56;
}

_OWORD *sub_1B0A49F68@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v18 = a4;
  v32 = a1;
  v29 = a2;
  v25 = a3;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v33 = 0;
  v19 = sub_1B0E43BC8();
  v20 = *(v19 - 8);
  v21 = v19 - 8;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v23 = (&v14 - v22);
  v30 = sub_1B0E439A8();
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v24 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v14 - v24;
  v26 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3BA0, &qword_1B0EA3D20) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v14 - v26;
  v42 = &v14 - v26;
  v41 = v4;
  v40 = v5;
  v39 = v6;
  MEMORY[0x1E69E5928](v4);
  (*(v27 + 16))(v31, v29, v30);
  sub_1B06D876C(v32, v31, v34);
  v35 = type metadata accessor for Configuration(v33);
  v7 = *(v35 - 8);
  v36 = *(v7 + 48);
  v37 = v7 + 48;
  if (v36(v34, 1) == 0)
  {
    v17 = &v34[*(v35 + 20)];
    v17[*(type metadata accessor for ConnectionConfiguration(0) + 28)] = 0x80;
  }

  if ((v36)(v34, 1, v35) == 0)
  {
    v8 = sub_1B0E42E18();
    v9 = v20;
    v10 = v8;
    v11 = v23;
    *v23 = v10;
    v11[1] = v12;
    (*(v9 + 104))();
    (*(v20 + 40))(&v34[*(v35 + 20)], v23, v19);
  }

  if ((v36)(v34, 1, v35) == 0)
  {
    v34[*(v35 + 24)] = 0;
  }

  return sub_1B0A5F928(v34, v18);
}

uint64_t (**sub_1B0A4A340(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, const char *a10, unsigned __int8 a11, uint64_t (*a12)(uint64_t a1), uint64_t a13))(uint64_t a1)
{
  v100 = a1;
  v99 = a2;
  v105 = a3;
  v82 = a4;
  v92 = a5;
  v93 = a6;
  v94 = a7;
  v95 = a8;
  v83 = a13;
  v84 = sub_1B070B550;
  v85 = sub_1B039BCF8;
  v86 = sub_1B0398F5C;
  v87 = sub_1B0398F5C;
  v88 = sub_1B039BCEC;
  v89 = sub_1B0A5FC88;
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v127 = 0;
  v128 = 0;
  v125 = 0;
  v126 = 0;
  v124 = 0;
  v123 = 0;
  v121 = 0u;
  v122 = 0u;
  v90 = 0;
  v114 = 0;
  v115 = 0;
  v132 = a9;
  v133 = a10;
  v134 = a11;
  v135 = a12;
  v96 = a9;
  v97 = BYTE1(a9);
  v101 = BYTE2(a9);
  v102 = a10;
  v103 = a11;
  v98 = a12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3BA0, &qword_1B0EA3D20);
  v91 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v108 = (v50 - v91);
  v109 = type metadata accessor for Configuration(0);
  v106 = *(v109 - 8);
  v107 = v109 - 8;
  MEMORY[0x1EEE9AC00](v100);
  v104 = (v50 - v15);
  v131 = v50 - v15;
  v130 = v16;
  v129 = v17;
  v127 = v18;
  v128 = a4;
  v125 = v19;
  v126 = v20;
  v124 = v21;
  v123 = v22;
  LOBYTE(v121) = v23;
  BYTE1(v121) = v24;
  BYTE2(v121) = v101;
  *(&v121 + 1) = v102;
  LOBYTE(v122) = v103;
  *(&v122 + 1) = v25;

  v105(v26);
  if ((*(v106 + 48))(v108, 1, v109) == 1)
  {
    sub_1B0A5FB70(v108);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v70 = 32;
    v71 = 7;
    v27 = swift_allocObject();
    v28 = v93;
    v72 = v27;
    *(v27 + 16) = v92;
    *(v27 + 24) = v28;
    v80 = sub_1B0E43988();
    v81 = sub_1B0E458E8();
    v69 = 17;
    v74 = swift_allocObject();
    *(v74 + 16) = 34;
    v75 = swift_allocObject();
    *(v75 + 16) = 8;
    v29 = swift_allocObject();
    v30 = v72;
    v73 = v29;
    *(v29 + 16) = v84;
    *(v29 + 24) = v30;
    v31 = swift_allocObject();
    v32 = v73;
    v77 = v31;
    *(v31 + 16) = v85;
    *(v31 + 24) = v32;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v76 = sub_1B0E46A48();
    v78 = v33;

    v34 = v74;
    v35 = v78;
    *v78 = v86;
    v35[1] = v34;

    v36 = v75;
    v37 = v78;
    v78[2] = v87;
    v37[3] = v36;

    v38 = v77;
    v39 = v78;
    v78[4] = v88;
    v39[5] = v38;
    sub_1B0394964();

    if (os_log_type_enabled(v80, v81))
    {
      v48 = v90;
      v52 = sub_1B0E45D78();
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v53 = sub_1B03949A8(0, v51, v51);
      v54 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v55 = &v120;
      v120 = v52;
      v56 = &v119;
      v119 = v53;
      v57 = &v118;
      v118 = v54;
      sub_1B0394A48(2, &v120);
      sub_1B0394A48(1, v55);
      v116 = v86;
      v117 = v74;
      sub_1B03949FC(&v116, v55, v56, v57);
      v58 = v48;
      if (v48)
      {

        __break(1u);
      }

      else
      {
        v116 = v87;
        v117 = v75;
        sub_1B03949FC(&v116, &v120, &v119, &v118);
        v50[1] = 0;
        v116 = v88;
        v117 = v77;
        sub_1B03949FC(&v116, &v120, &v119, &v118);
        _os_log_impl(&dword_1B0389000, v80, v81, "[%{public}s] Unable to create engine configuration for account.", v52, 0xCu);
        sub_1B03998A8(v53, 0, v51);
        sub_1B03998A8(v54, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v80);
    v67 = 0;
    v68 = 0;
  }

  else
  {
    sub_1B06D98D8(v108, v104);

    MEMORY[0x1E69E5928](v100);
    MEMORY[0x1E69E5928](v94);
    MEMORY[0x1E69E5928](v95);
    v40 = swift_allocObject();
    v41 = v94;
    v42 = v95;
    v43 = v89;
    v64 = v40;
    v40[2] = v100;
    v40[3] = v41;
    v40[4] = v42;
    v114 = v43;
    v115 = v40;
    v60 = 0;
    v59 = type metadata accessor for Engine(0);
    v63 = sub_1B0A483E8();
    v61 = v44;
    v62 = v45;

    v46 = type metadata accessor for PersistenceAdaptor(v60);
    LOBYTE(v110) = v96;
    BYTE1(v110) = v97;
    BYTE2(v110) = v101;
    v111 = v102;
    v112 = v103;
    v113 = v98;
    v65 = static Engine.makeEngineAndPersistence<A>(configuration:windowOfInterestSizes:environment:makePersistence:)(v104, v63, v61, v62 & 1, v110, v102, v103, v98, v89, v64, v46, &off_1F2706168);
    v66 = v47;

    sub_1B06D9D34(v104);
    v67 = v65;
    v68 = v66;
  }

  return v67;
}

void *sub_1B0A4AEC4(unsigned int a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  type metadata accessor for PersistenceAdaptor(0);
  MEMORY[0x1E69E5928](a4);
  MEMORY[0x1E69E5928](a5);
  MEMORY[0x1E69E5928](a6);

  return sub_1B09B7000(a1, a4, a5, a6, a2, a3);
}

char *sub_1B0A4AF90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1E69E5928](a1);
  v17 = [a1 identifier];
  if (v17)
  {
    v9 = sub_1B0E44AD8();
    v10 = v4;
    MEMORY[0x1E69E5920](v17);
    v11 = v9;
    v12 = v10;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  MEMORY[0x1E69E5920](a1);
  if (v12)
  {
    v7 = v11;
    v8 = v12;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  MEMORY[0x1E69E5928](a1);
  MEMORY[0x1E69E5928](a2);

  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  return sub_1B0A4B2C0(v7, v8, sub_1B0A5E6A8, v5);
}

uint64_t sub_1B0A4B1D4(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for PersistenceAdaptor(0);
  v7 = *EngineTracingID.test.unsafeMutableAddressor();
  MEMORY[0x1E69E5928](a1);
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);

  sub_1B09B7000(v7, a1, a3, a4, a5, a6);
  return 0;
}

char *sub_1B0A4B314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v81 = a1;
  v85 = a2;
  v65 = a3;
  v84 = a4;
  ObjectType = swift_getObjectType();
  v98 = 0;
  v96 = 0;
  v97 = 0;
  v94 = 0;
  v95 = 0;
  v68 = 0;
  v80 = sub_1B0E439A8();
  v76 = *(v80 - 8);
  v77 = v80 - 8;
  v30 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v79 = &v29 - v30;
  v50 = sub_1B0E45C58();
  v31 = (*(*(v50 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v68);
  v61 = &v29 - v31;
  v32 = (*(*(sub_1B0E44288() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v68);
  v60 = &v29 - v32;
  v33 = (*(*(sub_1B0E45BE8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v68);
  v40 = &v29 - v33;
  v55 = sub_1B0E459C8();
  v36 = *(v55 - 8);
  v37 = v55 - 8;
  v34 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v81);
  v62 = &v29 - v34;
  v96 = v5;
  v97 = v6;
  v94 = v7;
  v95 = v8;
  v98 = v4;
  v9 = &v4[OBJC_IVAR___MFSwiftIMAPTaskManager__engineAndAdaptor];
  *v9 = 0;
  *(v9 + 1) = 0;
  v35 = v98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3488, &unk_1B0EA3B10);
  v10 = sub_1B0E441E8();
  v42 = &qword_1EB6E3000;
  *&v35[OBJC_IVAR___MFSwiftIMAPTaskManager_workloopKey] = v10;
  v41 = v98;
  sub_1B0A5E6BC();
  v69 = 1;
  v38 = sub_1B0E44838();
  v39 = v11;
  v54 = MEMORY[0x1E69E8098];
  v12 = *MEMORY[0x1E69E8098];
  v57 = *(v36 + 104);
  v56 = v36 + 104;
  v57(v62, v12, v55);
  sub_1B0A4BC44();
  v13 = sub_1B0E45BF8();
  v46 = &qword_1EB6E3000;
  *&v41[OBJC_IVAR___MFSwiftIMAPTaskManager_workloop] = v13;
  v44 = *&v98[OBJC_IVAR___MFSwiftIMAPTaskManager_workloop];
  MEMORY[0x1E69E5928](v44);
  v43 = *&v98[v42[353]];

  v92 = 0;
  v93 = 0;
  sub_1B0E459B8();

  MEMORY[0x1E69E5920](v44);
  v51 = v98;
  v53 = sub_1B06FF124();
  v49 = sub_1B0E44838();
  v47 = v14;
  sub_1B0E44278();
  v45 = sub_1B0E46A48();
  v52 = sub_1B06FF188();
  sub_1B0E46028();
  v57(v62, *v54, v55);
  v48 = *&v98[v46[354]];
  MEMORY[0x1E69E5928](v48);
  *&v51[OBJC_IVAR___MFSwiftIMAPTaskManager_queue] = sub_1B0E45C68();
  v63 = v98;
  v58 = sub_1B0E44838();
  v59 = v15;
  sub_1B0E44278();
  sub_1B0E46A48();
  sub_1B0E46028();
  v57(v62, *v54, v55);
  *&v63[OBJC_IVAR___MFSwiftIMAPTaskManager_callbackQueue] = sub_1B0E45C68();
  v64 = v98;

  v16 = v84;
  v17 = &v64[OBJC_IVAR___MFSwiftIMAPTaskManager_makeEngineAndAdaptor];
  *v17 = v65;
  v17[1] = v16;
  v78 = v98;
  v74 = sub_1B0E44838();
  v75 = v18;
  v66 = 12;
  v19 = sub_1B0E46A28();
  v71 = &v90;
  v90 = v19;
  v91 = v20;
  v21 = sub_1B0E44838();
  v67 = v22;
  MEMORY[0x1B2728B30](v21);

  v88 = v81;
  v89 = v85;
  sub_1B0E46A08();
  v23 = sub_1B0E44838();
  v70 = v24;
  MEMORY[0x1B2728B30](v23);

  v73 = v90;
  v72 = v91;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v71);
  sub_1B0E44C88();
  sub_1B0E43998();
  (*(v76 + 32))(&v78[OBJC_IVAR___MFSwiftIMAPTaskManager_logger], v79, v80);
  v82 = v98;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v25 = ObjectType;
  v26 = v85;
  v27 = &v82[OBJC_IVAR___MFSwiftIMAPTaskManager_identifier];
  *v27 = v81;
  v27[1] = v26;
  v87.receiver = v98;
  v87.super_class = v25;
  v86 = objc_msgSendSuper2(&v87, sel_init);
  MEMORY[0x1E69E5928](v86);
  v98 = v86;

  MEMORY[0x1E69E5920](v98);
  return v86;
}

uint64_t sub_1B0A4BC44()
{
  sub_1B0A5E158(0);
  sub_1B0E45BE8();
  sub_1B0A5F820();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3B90, &unk_1B0EDC490);
  sub_1B0A5F8A0();
  return sub_1B0E460A8();
}

unint64_t sub_1B0A4BCE4()
{
  ObjectType = swift_getObjectType();
  v24 = 0;
  v23 = 0;
  v26 = v0;
  v13 = (v0 + OBJC_IVAR___MFSwiftIMAPTaskManager__engineAndAdaptor);
  swift_beginAccess();
  v14 = *v13;
  v15 = v13[1];
  sub_1B03EEAD0(*v13, v15);
  swift_endAccess();
  if (v15)
  {
    v9 = v14;
    v10 = v15;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  if (!v10)
  {
    v7 = 0;
    v8 = 0;
LABEL_9:
    sub_1B04197E4(v7, v8);
    sub_1B04197E4(0, 0);
    v25.receiver = v11;
    v25.super_class = ObjectType;
    return objc_msgSendSuper2(&v25, sel_dealloc);
  }

  v24 = v9;
  v23 = v10;
  queue = *(v10 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue);
  MEMORY[0x1E69E5928](queue);

  v3 = swift_allocObject();
  *(v3 + 16) = v9;
  *(v3 + 24) = v10;

  v2 = swift_allocObject();
  *(v2 + 16) = sub_1B0A5E720;
  *(v2 + 24) = v3;

  v21 = sub_1B04020AC;
  v22 = v2;
  aBlock = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = 0;
  v19 = sub_1B0402058;
  v20 = &block_descriptor_155;
  block = _Block_copy(&aBlock);

  dispatch_sync(queue, block);
  _Block_release(block);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    MEMORY[0x1E69E5920](queue);

    v7 = sub_1B0A5E720;
    v8 = v3;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0A4C058(uint64_t a1)
{

  if (a1)
  {
    Engine.tearDown()();
  }

  return sub_1B09BA4CC();
}

uint64_t sub_1B0A4C224(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    sub_1B08D3A10();
    sub_1B0E465B8();
    __break(1u);
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2B58, &qword_1B0EA1120);
  sub_1B0A4C3C8(sub_1B0A4C32C, 0, v2, &v4);
  return sub_1B0A4C6BC();
}

uint64_t sub_1B0A4C32C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{

  result = a1;
  if (a1)
  {
    sub_1B09BBA68(a1, v2);

    *a2 = 0;
  }

  else
  {
    *a2 = 1;
  }

  return result;
}

uint64_t sub_1B0A4C3C8@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v27 = a2;
  v28 = a1;
  v29 = a4;
  v37 = 0;
  v32 = 0;
  v40 = a3;
  v38 = a1;
  v39 = a2;
  sub_1B06CCC58();
  v31 = *&v30[OBJC_IVAR___MFSwiftIMAPTaskManager_workloopKey];

  sub_1B0E459A8();

  v33 = v35;
  v34 = v36;
  v24 = (v36 & 1) == 0;
  if (v36)
  {
    v12 = v25;
    v11 = *&v30[OBJC_IVAR___MFSwiftIMAPTaskManager_queue];
    v5 = v11;
    v6 = v30;
    v7 = v25;
    v13 = &v8;
    MEMORY[0x1EEE9AC00](&v8);
    sub_1B0E459D8();
    v14 = v7;
    v15 = v7;
    if (v7)
    {
      v9 = v15;

      return v9;
    }

    else
    {

      result = v14;
      v16 = v14;
    }
  }

  else
  {
    v23 = &v30[OBJC_IVAR___MFSwiftIMAPTaskManager__engineAndAdaptor];
    v22 = &v30[OBJC_IVAR___MFSwiftIMAPTaskManager__engineAndAdaptor];
    swift_beginAccess();
    if (*(v23 + 1))
    {
      v20 = *(v22 + 1);

      swift_endAccess();
      v21 = v20;
    }

    else
    {
      swift_endAccess();
      v21 = 0;
    }

    v17 = v21;
    v32 = v21;
    v28();
    v18 = v25;
    v19 = v25;
    if (v25)
    {

      result = v19;
      v10 = v19;
    }

    else
    {

      v16 = 0;
    }
  }

  return result;
}

uint64_t sub_1B0A4C6BC()
{
  v2 = dispatch_semaphore_create(0);
  MEMORY[0x1E69E5928](v2);
  v1 = swift_allocObject();
  *(v1 + 16) = v2;
  sub_1B0A4C9BC(0, 0, sub_1B0A5E7D0, v1);

  sub_1B0A4D914();
  return MEMORY[0x1E69E5920](v2);
}

void sub_1B0A4C864(uint64_t a1)
{
  v4[1] = 0;
  v4[0] = 0;
  v4[2] = a1;
  MEMORY[0x1E69E5928](@"AccountInfoDidChange");
  MEMORY[0x1E69E5928](@"AccountInfoDidChange");
  v4[0] = @"AccountInfoDidChange";
  v3 = [objc_opt_self() defaultCenter];
  (MEMORY[0x1E69E5928])();
  MEMORY[0x1E69E5928](a1);
  [v3 addObserver:v2 selector:sel_accountDidChange_ name:@"AccountInfoDidChange" object:a1];
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](@"AccountInfoDidChange");
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v3);
  sub_1B06D4E94(v4);
}

uint64_t sub_1B0A4C9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v86 = a1;
  v87 = a2;
  v82 = a3;
  v79 = a4;
  v88 = sub_1B0A5D3C8;
  v90 = sub_1B039BCF8;
  v92 = sub_1B0A5E7D8;
  v94 = sub_1B0A5E844;
  v96 = sub_1B0A5E878;
  v98 = sub_1B0A5E8C0;
  v102 = sub_1B0A5E7E4;
  v104 = sub_1B0A5E844;
  v106 = sub_1B0A5E878;
  v110 = sub_1B0A5E8C0;
  v112 = sub_1B0398F5C;
  v114 = sub_1B0398F5C;
  v116 = sub_1B039BCEC;
  v118 = sub_1B0398F5C;
  v120 = sub_1B0398F5C;
  v122 = sub_1B0399178;
  v124 = sub_1B0398F5C;
  v126 = sub_1B0398F5C;
  v129 = sub_1B0399178;
  v77 = sub_1B0A5E8CC;
  v143 = 0;
  v144 = 0;
  v141 = 0;
  v142 = 0;
  v140 = 0;
  v78 = 0;
  v80 = sub_1B0E439A8();
  v83 = *(v80 - 8);
  v81 = v80 - 8;
  v4 = MEMORY[0x1EEE9AC00](v86);
  v84 = v68 - v5;
  v143 = v6;
  v144 = v7;
  v141 = v82;
  v142 = v8;
  v140 = v85;
  (*(v83 + 16))(v68 - v5, v85 + OBJC_IVAR___MFSwiftIMAPTaskManager_logger, v4);
  MEMORY[0x1E69E5928](v85);
  v108 = 7;
  v9 = swift_allocObject();
  v10 = v87;
  v11 = v9;
  v12 = v86;
  v89 = v11;
  *(v11 + 16) = v85;
  sub_1B03EEAD0(v12, v10);
  v107 = 32;
  v13 = swift_allocObject();
  v14 = v87;
  v15 = v13;
  v16 = v86;
  v93 = v15;
  *(v15 + 16) = v86;
  *(v15 + 24) = v14;
  sub_1B03EEAD0(v16, v14);
  v17 = swift_allocObject();
  v18 = v87;
  v103 = v17;
  *(v17 + 16) = v86;
  *(v17 + 24) = v18;
  v133 = sub_1B0E43988();
  v134 = sub_1B0E45908();
  v100 = 17;
  v113 = swift_allocObject();
  *(v113 + 16) = 34;
  v115 = swift_allocObject();
  *(v115 + 16) = 8;
  v19 = swift_allocObject();
  v20 = v89;
  v91 = v19;
  *(v19 + 16) = v88;
  *(v19 + 24) = v20;
  v21 = swift_allocObject();
  v22 = v91;
  v117 = v21;
  *(v21 + 16) = v90;
  *(v21 + 24) = v22;
  v119 = swift_allocObject();
  *(v119 + 16) = 0;
  v121 = swift_allocObject();
  v101 = 4;
  *(v121 + 16) = 4;
  v23 = swift_allocObject();
  v24 = v93;
  v95 = v23;
  *(v23 + 16) = v92;
  *(v23 + 24) = v24;
  v25 = swift_allocObject();
  v26 = v95;
  v97 = v25;
  *(v25 + 16) = v94;
  *(v25 + 24) = v26;
  v27 = swift_allocObject();
  v28 = v97;
  v99 = v27;
  *(v27 + 16) = v96;
  *(v27 + 24) = v28;
  v29 = swift_allocObject();
  v30 = v99;
  v123 = v29;
  *(v29 + 16) = v98;
  *(v29 + 24) = v30;
  v125 = swift_allocObject();
  *(v125 + 16) = 0;
  v127 = swift_allocObject();
  *(v127 + 16) = v101;
  v31 = swift_allocObject();
  v32 = v103;
  v105 = v31;
  *(v31 + 16) = v102;
  *(v31 + 24) = v32;
  v33 = swift_allocObject();
  v34 = v105;
  v109 = v33;
  *(v33 + 16) = v104;
  *(v33 + 24) = v34;
  v35 = swift_allocObject();
  v36 = v109;
  v111 = v35;
  *(v35 + 16) = v106;
  *(v35 + 24) = v36;
  v37 = swift_allocObject();
  v38 = v111;
  v130 = v37;
  *(v37 + 16) = v110;
  *(v37 + 24) = v38;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v128 = sub_1B0E46A48();
  v131 = v39;

  v40 = v113;
  v41 = v131;
  *v131 = v112;
  v41[1] = v40;

  v42 = v115;
  v43 = v131;
  v131[2] = v114;
  v43[3] = v42;

  v44 = v117;
  v45 = v131;
  v131[4] = v116;
  v45[5] = v44;

  v46 = v119;
  v47 = v131;
  v131[6] = v118;
  v47[7] = v46;

  v48 = v121;
  v49 = v131;
  v131[8] = v120;
  v49[9] = v48;

  v50 = v123;
  v51 = v131;
  v131[10] = v122;
  v51[11] = v50;

  v52 = v125;
  v53 = v131;
  v131[12] = v124;
  v53[13] = v52;

  v54 = v127;
  v55 = v131;
  v131[14] = v126;
  v55[15] = v54;

  v56 = v130;
  v57 = v131;
  v131[16] = v129;
  v57[17] = v56;
  sub_1B0394964();

  if (os_log_type_enabled(v133, v134))
  {
    v58 = v78;
    v70 = sub_1B0E45D78();
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v71 = sub_1B03949A8(0, v69, v69);
    v72 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v73 = &v139;
    v139 = v70;
    v74 = &v138;
    v138 = v71;
    v75 = &v137;
    v137 = v72;
    sub_1B0394A48(2, &v139);
    sub_1B0394A48(3, v73);
    v135 = v112;
    v136 = v113;
    sub_1B03949FC(&v135, v73, v74, v75);
    v76 = v58;
    if (v58)
    {

      __break(1u);
    }

    else
    {
      v135 = v114;
      v136 = v115;
      sub_1B03949FC(&v135, &v139, &v138, &v137);
      v68[8] = 0;
      v135 = v116;
      v136 = v117;
      sub_1B03949FC(&v135, &v139, &v138, &v137);
      v68[7] = 0;
      v135 = v118;
      v136 = v119;
      sub_1B03949FC(&v135, &v139, &v138, &v137);
      v68[6] = 0;
      v135 = v120;
      v136 = v121;
      sub_1B03949FC(&v135, &v139, &v138, &v137);
      v68[5] = 0;
      v135 = v122;
      v136 = v123;
      sub_1B03949FC(&v135, &v139, &v138, &v137);
      v68[4] = 0;
      v135 = v124;
      v136 = v125;
      sub_1B03949FC(&v135, &v139, &v138, &v137);
      v68[3] = 0;
      v135 = v126;
      v136 = v127;
      sub_1B03949FC(&v135, &v139, &v138, &v137);
      v68[2] = 0;
      v135 = v129;
      v136 = v130;
      sub_1B03949FC(&v135, &v139, &v138, &v137);
      _os_log_impl(&dword_1B0389000, v133, v134, "[%{public}s] Setting engine and adaptor. (%{BOOL}d, %{BOOL}d)", v70, 0x18u);
      sub_1B03998A8(v71, 0, v69);
      sub_1B03998A8(v72, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  v59 = v85;
  MEMORY[0x1E69E5920](v133);
  (*(v83 + 8))(v84, v80);
  MEMORY[0x1E69E5928](v59);
  MEMORY[0x1E69E5928](v59);
  sub_1B03EEAD0(v86, v87);

  v60 = swift_allocObject();
  v61 = v86;
  v62 = v87;
  v63 = v82;
  v64 = v79;
  v65 = v60;
  v66 = v77;
  v68[1] = v65;
  v65[2] = v59;
  v65[3] = v61;
  v65[4] = v62;
  v65[5] = v63;
  v65[6] = v64;
  sub_1B0A4E0F4(v66, v65);

  return MEMORY[0x1E69E5920](v85);
}

uint64_t sub_1B0A4D914()
{
  v41 = 0;
  v40 = 0;
  v27 = 0;
  v20 = sub_1B0E43108();
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (v21[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v24 = &v9 - v23;
  v25 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v26 = &v9 - v25;
  v41 = &v9 - v25;
  v28 = sub_1B0E44208();
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  v31 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v32 = (&v9 - v31);
  v33 = sub_1B0E443F8();
  v34 = *(v33 - 8);
  v35 = v33 - 8;
  v36 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v9 - v36;
  v38 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v9 - v36);
  v39 = &v9 - v38;
  v40 = v0;
  while (1)
  {
    sub_1B0E443D8();
    v4 = v29;
    *v32 = 1;
    (*(v4 + 104))();
    sub_1B0E443E8();
    (*(v29 + 8))(v32, v28);
    v18 = *(v34 + 8);
    v17 = v34 + 8;
    v18(v37, v33);
    v19 = sub_1B0E45C28();
    v18(v39, v33);
    result = sub_1B0E44218();
    if ((result & 1) == 0)
    {
      break;
    }

    v6 = v24;
    sub_1B0E43088();
    v10 = [objc_opt_self() currentRunLoop];
    v12 = v21[2];
    v11 = v21 + 2;
    v12(v6, v26, v20);
    v7 = sub_1B0E43068();
    v8 = v24;
    v9 = v7;
    v16 = v21[1];
    v15 = v21 + 1;
    v16(v24, v20);
    [v10 runUntilDate_];
    MEMORY[0x1E69E5920](v9);
    MEMORY[0x1E69E5920](v10);
    v13 = objc_opt_self();
    v12(v8, v26, v20);
    v14 = sub_1B0E43068();
    v16(v24, v20);
    [v13 sleepUntilDate_];
    MEMORY[0x1E69E5920](v14);
    v16(v26, v20);
  }

  return result;
}

uint64_t sub_1B0A4DDA0(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR___MFSwiftIMAPTaskManager_identifier);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

BOOL sub_1B0A4DDE4(uint64_t a1, uint64_t a2)
{
  sub_1B03EEAD0(a1, a2);
  if (a2)
  {

    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  v6 = v3;
  sub_1B0391AD4(&v6);
  return v3 != 0;
}

uint64_t sub_1B0A4DED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v17 = (a2 + OBJC_IVAR___MFSwiftIMAPTaskManager__engineAndAdaptor);
  swift_beginAccess();
  v18 = *v17;
  v19 = v17[1];
  sub_1B03EEAD0(*v17, v19);
  swift_endAccess();
  if (v19)
  {
    v11 = v18;
    v12 = v19;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  if (v12)
  {

    if (v11)
    {
      Engine.tearDown()();
    }

    sub_1B09BA4CC();
  }

  sub_1B03EEAD0(a3, a4);
  v10 = (a2 + OBJC_IVAR___MFSwiftIMAPTaskManager__engineAndAdaptor);
  swift_beginAccess();
  v6 = *v10;
  v7 = v10[1];
  *v10 = a3;
  v10[1] = a4;
  sub_1B0A5E460(v6, v7);
  swift_endAccess();

  a5(v8);
}

uint64_t sub_1B0A4E0F4(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v13 = a2;
  v14 = sub_1B0A5E8E4;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v16 = 0;
  v20 = sub_1B0E44238();
  v17 = *(v20 - 8);
  v18 = v20 - 8;
  v11 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v19 = &v11 - v11;
  v24 = sub_1B0E44288();
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v12 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v23 = &v11 - v12;
  v36 = v3;
  v37 = v4;
  v35 = v2;
  v27 = *(v2 + OBJC_IVAR___MFSwiftIMAPTaskManager_queue);
  MEMORY[0x1E69E5928](v27);
  MEMORY[0x1E69E5928](v26);
  MEMORY[0x1E69E5928](v26);

  v5 = swift_allocObject();
  v6 = v13;
  v7 = v14;
  v8 = v5;
  v9 = v15;
  v8[2] = v26;
  v8[3] = v9;
  v8[4] = v6;
  v33 = v7;
  v34 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = 0;
  v31 = sub_1B038C908;
  v32 = &block_descriptor_236;
  v25 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](v16, v23, v19, v25);
  (*(v17 + 8))(v19, v20);
  (*(v21 + 8))(v23, v24);
  _Block_release(v25);

  MEMORY[0x1E69E5920](v26);
  return MEMORY[0x1E69E5920](v27);
}

uint64_t sub_1B0A4E3C0(uint64_t a1)
{
  v27 = a1;
  v35 = sub_1B0A5D3C8;
  v39 = sub_1B039BCF8;
  v41 = sub_1B0398F5C;
  v43 = sub_1B0398F5C;
  v46 = sub_1B039BCEC;
  v25 = sub_1B0A4E9CC;
  v58 = 0;
  v57 = 0;
  v26 = 0;
  v28 = sub_1B0E439A8();
  v31 = *(v28 - 8);
  v29 = v28 - 8;
  v30 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v27);
  v32 = v16 - v30;
  v58 = v2;
  v57 = v33;
  (*(v31 + 16))(v16 - v30, v33 + OBJC_IVAR___MFSwiftIMAPTaskManager_logger, v1);
  MEMORY[0x1E69E5928](v33);
  v37 = 7;
  v38 = swift_allocObject();
  *(v38 + 16) = v33;
  v50 = sub_1B0E43988();
  v51 = sub_1B0E45908();
  v34 = 17;
  v42 = swift_allocObject();
  *(v42 + 16) = 34;
  v44 = swift_allocObject();
  *(v44 + 16) = 8;
  v36 = 32;
  v3 = swift_allocObject();
  v4 = v38;
  v40 = v3;
  *(v3 + 16) = v35;
  *(v3 + 24) = v4;
  v5 = swift_allocObject();
  v6 = v40;
  v47 = v5;
  *(v5 + 16) = v39;
  *(v5 + 24) = v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v45 = sub_1B0E46A48();
  v48 = v7;

  v8 = v42;
  v9 = v48;
  *v48 = v41;
  v9[1] = v8;

  v10 = v44;
  v11 = v48;
  v48[2] = v43;
  v11[3] = v10;

  v12 = v47;
  v13 = v48;
  v48[4] = v46;
  v13[5] = v12;
  sub_1B0394964();

  if (os_log_type_enabled(v50, v51))
  {
    v14 = v26;
    v18 = sub_1B0E45D78();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v19 = sub_1B03949A8(0, v17, v17);
    v20 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v21 = &v56;
    v56 = v18;
    v22 = &v55;
    v55 = v19;
    v23 = &v54;
    v54 = v20;
    sub_1B0394A48(2, &v56);
    sub_1B0394A48(1, v21);
    v52 = v41;
    v53 = v42;
    sub_1B03949FC(&v52, v21, v22, v23);
    v24 = v14;
    if (v14)
    {

      __break(1u);
    }

    else
    {
      v52 = v43;
      v53 = v44;
      sub_1B03949FC(&v52, &v56, &v55, &v54);
      v16[0] = 0;
      v52 = v46;
      v53 = v47;
      sub_1B03949FC(&v52, &v56, &v55, &v54);
      _os_log_impl(&dword_1B0389000, v50, v51, "[%{public}s] Account did change.", v18, 0xCu);
      sub_1B03998A8(v19, 0, v17);
      sub_1B03998A8(v20, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v50);
  (*(v31 + 8))(v32, v28);
  return sub_1B03F04F4(v25, 0);
}

uint64_t sub_1B0A4E9CC(uint64_t a1)
{

  result = a1;
  if (a1)
  {
    sub_1B09BC580();
  }

  return result;
}

void *sub_1B0A4EB4C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v20 = a3;
  v18 = a1;
  v19 = a2;
  v17 = v3;
  MEMORY[0x1E69E5928](v3);
  v10 = v3;
  sub_1B0A4C3C8(sub_1B0A5E9BC, v9, &unk_1F270E498, &v14);
  if (v8)
  {
    (MEMORY[0x1E69E5920])();
    __break(1u);
  }

  else
  {
    (MEMORY[0x1E69E5920])();
    v5 = v14;
    v6 = v15;
    v11 = v14;
    v12 = v15;
    v13 = v16;
    if (v16)
    {

      if (v5)
      {
        Engine.start()();
      }
    }

    a1(v6);
  }
}

void sub_1B0A4ED20(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v47 = a3;
  v49 = a1;
  v48 = a2;
  v65 = 0;
  v64 = 0;
  v60 = 0;
  v61 = 0;
  v50 = sub_1B0E439A8();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v49);
  v54 = &v22 - v53;
  v65 = v3;
  v64 = v4;
  v55 = (v4 + OBJC_IVAR___MFSwiftIMAPTaskManager__engineAndAdaptor);
  v56 = v63;
  swift_beginAccess();
  v57 = *v55;
  v58 = v55[1];
  sub_1B03EEAD0(v57, v58);
  swift_endAccess();
  v62[0] = v57;
  v62[1] = v58;
  v46 = v58 == 0;
  v45 = v46;
  sub_1B03EEB18(v62);
  if (v45)
  {
    v41 = *(v48 + OBJC_IVAR___MFSwiftIMAPTaskManager_makeEngineAndAdaptor);
    v40 = *(v48 + OBJC_IVAR___MFSwiftIMAPTaskManager_makeEngineAndAdaptor + 8);

    v43 = *(v48 + OBJC_IVAR___MFSwiftIMAPTaskManager_workloop);
    MEMORY[0x1E69E5928](v43);
    (*(v51 + 16))(v54, v48 + OBJC_IVAR___MFSwiftIMAPTaskManager_logger, v50);
    v42 = v41(v43, v54);
    v44 = v5;
    (*(v51 + 8))(v54, v50);
    MEMORY[0x1E69E5920](v43);
    if (v44)
    {
      v38 = v42;
      v39 = v44;
      v37 = v44;
      v36 = v42;
      v60 = v42;
      v61 = v44;

      v30 = (v48 + OBJC_IVAR___MFSwiftIMAPTaskManager__engineAndAdaptor);
      v31 = v59;
      swift_beginAccess();
      v6 = v30;
      v7 = v37;
      v8 = *v30;
      v9 = v30[1];
      *v30 = v36;
      v6[1] = v7;
      sub_1B0A5E460(v8, v9);
      swift_endAccess();

      v34 = 1;
      sub_1B08CF7DC();
      v32 = v10;
      v33 = v11;
      v35 = v12;

      v13 = v33;
      v14 = v34;
      v15 = v35;
      v16 = v47;
      *v47 = v32;
      v16[1] = v13;
      *(v16 + 16) = v15 & v14;

      return;
    }
  }

  v29 = (v48 + OBJC_IVAR___MFSwiftIMAPTaskManager__engineAndAdaptor);
  swift_beginAccess();
  if (v29[1])
  {
    v27 = *v29;

    swift_endAccess();
    v28 = v27;
  }

  else
  {
    swift_endAccess();
    v28 = 0;
  }

  v25 = v28;
  v26 = v48 + OBJC_IVAR___MFSwiftIMAPTaskManager__engineAndAdaptor;
  swift_beginAccess();
  if (*(v26 + 8))
  {
    v23 = *(v26 + 8);

    swift_endAccess();
    v24 = v23;
  }

  else
  {
    swift_endAccess();
    v24 = 0;
  }

  HIDWORD(v22) = 1;
  sub_1B08CF7DC();
  v17 = BYTE4(v22);
  v18 = v47;
  *v47 = v19;
  v18[1] = v20;
  *(v18 + 16) = v21 & v17;
}

uint64_t sub_1B0A4F2EC(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v6 = a1 + OBJC_IVAR___MFSwiftIMAPTaskManager__engineAndAdaptor;
  swift_beginAccess();
  if (*(v6 + 8))
  {
  }

  swift_endAccess();
  a2();
}

uint64_t sub_1B0A4F424(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v8 = OBJC_IVAR___MFSwiftIMAPTaskManager__engineAndAdaptor;
  v9 = a1 + OBJC_IVAR___MFSwiftIMAPTaskManager__engineAndAdaptor;
  swift_beginAccess();
  if (*(v9 + 8))
  {
    v4 = *(a1 + v8 + 8);

    swift_endAccess();
    v5 = v4;
  }

  else
  {
    swift_endAccess();
    v5 = 0;
  }

  a2(v5);
}

_BYTE *sub_1B0A4F520@<X0>(_BYTE *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{

  result = a1;
  if (a1)
  {
    v6 = sub_1B0949AA0(a2, a3, a4);

    result = v6;
    *a5 = v6;
  }

  else
  {
    *a5 = 0;
  }

  return result;
}

uint64_t sub_1B0A4F5E0(_BYTE *a1, _BYTE *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, _BYTE *a6)
{
  v36[6] = a1;
  v36[5] = a2;
  v36[4] = a3;
  v36[3] = a4;
  v36[1] = a5;
  v36[2] = a6;
  MEMORY[0x1E69E5928](a3);
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  MEMORY[0x1E69E5928](a4);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  v30 = sub_1B0E43988();
  v31 = sub_1B0E458C8();
  v23 = swift_allocObject();
  *(v23 + 16) = 34;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B0A5D3C8;
  *(v20 + 24) = v19;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1B039BCF8;
  *(v25 + 24) = v20;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 4;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1B0990E68;
  *(v22 + 24) = v21;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1B039BC08;
  *(v28 + 24) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  sub_1B0E46A48();
  v29 = v6;

  *v29 = sub_1B0398F5C;
  v29[1] = v23;

  v29[2] = sub_1B0398F5C;
  v29[3] = v24;

  v29[4] = sub_1B039BCEC;
  v29[5] = v25;

  v29[6] = sub_1B0398F5C;
  v29[7] = v26;

  v29[8] = sub_1B0398F5C;
  v29[9] = v27;

  v29[10] = sub_1B03991EC;
  v29[11] = v28;
  sub_1B0394964();

  if (os_log_type_enabled(v30, v31))
  {
    buf = sub_1B0E45D78();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v13 = sub_1B03949A8(0, v11, v11);
    v14 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v36[0] = buf;
    v35 = v13;
    v34 = v14;
    sub_1B0394A48(2, v36);
    sub_1B0394A48(2, v36);
    v32 = sub_1B0398F5C;
    v33 = v23;
    sub_1B03949FC(&v32, v36, &v35, &v34);
    v32 = sub_1B0398F5C;
    v33 = v24;
    sub_1B03949FC(&v32, v36, &v35, &v34);
    v32 = sub_1B039BCEC;
    v33 = v25;
    sub_1B03949FC(&v32, v36, &v35, &v34);
    v32 = sub_1B0398F5C;
    v33 = v26;
    sub_1B03949FC(&v32, v36, &v35, &v34);
    v32 = sub_1B0398F5C;
    v33 = v27;
    sub_1B03949FC(&v32, v36, &v35, &v34);
    v32 = sub_1B03991EC;
    v33 = v28;
    sub_1B03949FC(&v32, v36, &v35, &v34);
    _os_log_impl(&dword_1B0389000, v30, v31, "[%{public}s] User-initiated download completed successfully for UID %u", buf, 0x12u);
    sub_1B03998A8(v13, 0, v11);
    sub_1B03998A8(v14, 1, MEMORY[0x1E69E7CA0] + 8);
    sub_1B0E45D58();
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v30);

  MEMORY[0x1E69E5928](a1);
  v9 = sub_1B0E42F38();
  v10 = v7;
  (a5)();
  sub_1B0A5D1D0(v9, v10, 0);
  MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1B0A4FDA4(_BYTE *a1, _BYTE *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, _BYTE *a6)
{
  v75[7] = a1;
  v75[6] = a2;
  v75[5] = a3;
  v75[4] = a4;
  v75[2] = a5;
  v75[3] = a6;
  v6 = a1;
  v64 = sub_1B0E42CC8();
  v75[1] = v64;

  v63 = [v64 domain];
  v60 = sub_1B0E44AD8();
  v62 = v7;
  v61 = *MEMORY[0x1E699B730];
  MEMORY[0x1E69E5928](*MEMORY[0x1E699B730]);
  v8 = sub_1B0E44AD8();
  v65 = MEMORY[0x1B2726DE0](v60, v62, v8);

  MEMORY[0x1E69E5920](v61);

  MEMORY[0x1E69E5920](v63);
  MEMORY[0x1E69E5928](v64);
  if (v65)
  {
    v54 = [v64 code];
    sub_1B041A044();
    v55 = v54 == v9;
  }

  else
  {
    v55 = 0;
  }

  MEMORY[0x1E69E5920](v64);
  if (v55)
  {
    MEMORY[0x1E69E5928](a3);
    v41 = swift_allocObject();
    *(v41 + 16) = a3;
    MEMORY[0x1E69E5928](a4);
    v43 = swift_allocObject();
    *(v43 + 16) = a4;
    oslog = sub_1B0E43988();
    v53 = sub_1B0E458E8();
    v45 = swift_allocObject();
    *(v45 + 16) = 34;
    v46 = swift_allocObject();
    *(v46 + 16) = 8;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_1B0A5D3C8;
    *(v42 + 24) = v41;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_1B039BCF8;
    *(v47 + 24) = v42;
    v48 = swift_allocObject();
    *(v48 + 16) = 0;
    v49 = swift_allocObject();
    *(v49 + 16) = 4;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_1B0990E68;
    *(v44 + 24) = v43;
    v50 = swift_allocObject();
    *(v50 + 16) = sub_1B039BC08;
    *(v50 + 24) = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    sub_1B0E46A48();
    v51 = v10;

    *v51 = sub_1B0398F5C;
    v51[1] = v45;

    v51[2] = sub_1B0398F5C;
    v51[3] = v46;

    v51[4] = sub_1B039BCEC;
    v51[5] = v47;

    v51[6] = sub_1B0398F5C;
    v51[7] = v48;

    v51[8] = sub_1B0398F5C;
    v51[9] = v49;

    v51[10] = sub_1B03991EC;
    v51[11] = v50;
    sub_1B0394964();

    if (os_log_type_enabled(oslog, v53))
    {
      buf = sub_1B0E45D78();
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v39 = sub_1B03949A8(0, v37, v37);
      v40 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v70 = buf;
      v69 = v39;
      v68 = v40;
      sub_1B0394A48(2, &v70);
      sub_1B0394A48(2, &v70);
      v66 = sub_1B0398F5C;
      v67 = v45;
      sub_1B03949FC(&v66, &v70, &v69, &v68);
      v66 = sub_1B0398F5C;
      v67 = v46;
      sub_1B03949FC(&v66, &v70, &v69, &v68);
      v66 = sub_1B039BCEC;
      v67 = v47;
      sub_1B03949FC(&v66, &v70, &v69, &v68);
      v66 = sub_1B0398F5C;
      v67 = v48;
      sub_1B03949FC(&v66, &v70, &v69, &v68);
      v66 = sub_1B0398F5C;
      v67 = v49;
      sub_1B03949FC(&v66, &v70, &v69, &v68);
      v66 = sub_1B03991EC;
      v67 = v50;
      sub_1B03949FC(&v66, &v70, &v69, &v68);
      _os_log_impl(&dword_1B0389000, oslog, v53, "[%{public}s] User-initiated download timed out for UID %u", buf, 0x12u);
      sub_1B03998A8(v39, 0, v37);
      sub_1B03998A8(v40, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }

    else
    {
    }

    MEMORY[0x1E69E5920](oslog);
  }

  else
  {
    MEMORY[0x1E69E5928](a3);
    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    MEMORY[0x1E69E5928](a4);
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    v11 = a1;
    v22 = swift_allocObject();
    *(v22 + 16) = a1;
    sub_1B07575C4();

    log = sub_1B0E43988();
    v36 = sub_1B0E458E8();
    v25 = swift_allocObject();
    *(v25 + 16) = 34;
    v26 = swift_allocObject();
    *(v26 + 16) = 8;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1B0A5D3C8;
    *(v19 + 24) = v18;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1B039BCF8;
    *(v27 + 24) = v19;
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    v29 = swift_allocObject();
    *(v29 + 16) = 4;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1B0990E68;
    *(v21 + 24) = v20;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1B039BC08;
    *(v30 + 24) = v21;
    v31 = swift_allocObject();
    *(v31 + 16) = 64;
    v32 = swift_allocObject();
    *(v32 + 16) = 8;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1B0911A54;
    *(v23 + 24) = v22;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_1B0911A5C;
    *(v24 + 24) = v23;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_1B070B324;
    *(v33 + 24) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    sub_1B0E46A48();
    v34 = v12;

    *v34 = sub_1B0398F5C;
    v34[1] = v25;

    v34[2] = sub_1B0398F5C;
    v34[3] = v26;

    v34[4] = sub_1B039BCEC;
    v34[5] = v27;

    v34[6] = sub_1B0398F5C;
    v34[7] = v28;

    v34[8] = sub_1B0398F5C;
    v34[9] = v29;

    v34[10] = sub_1B03991EC;
    v34[11] = v30;

    v34[12] = sub_1B0398F5C;
    v34[13] = v31;

    v34[14] = sub_1B0398F5C;
    v34[15] = v32;

    v34[16] = sub_1B070B4B4;
    v34[17] = v33;
    sub_1B0394964();

    if (os_log_type_enabled(log, v36))
    {
      v15 = sub_1B0E45D78();
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v16 = sub_1B03949A8(1, v14, v14);
      v17 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v75[0] = v15;
      v74 = v16;
      v73 = v17;
      sub_1B0394A48(2, v75);
      sub_1B0394A48(3, v75);
      v71 = sub_1B0398F5C;
      v72 = v25;
      sub_1B03949FC(&v71, v75, &v74, &v73);
      v71 = sub_1B0398F5C;
      v72 = v26;
      sub_1B03949FC(&v71, v75, &v74, &v73);
      v71 = sub_1B039BCEC;
      v72 = v27;
      sub_1B03949FC(&v71, v75, &v74, &v73);
      v71 = sub_1B0398F5C;
      v72 = v28;
      sub_1B03949FC(&v71, v75, &v74, &v73);
      v71 = sub_1B0398F5C;
      v72 = v29;
      sub_1B03949FC(&v71, v75, &v74, &v73);
      v71 = sub_1B03991EC;
      v72 = v30;
      sub_1B03949FC(&v71, v75, &v74, &v73);
      v71 = sub_1B0398F5C;
      v72 = v31;
      sub_1B03949FC(&v71, v75, &v74, &v73);
      v71 = sub_1B0398F5C;
      v72 = v32;
      sub_1B03949FC(&v71, v75, &v74, &v73);
      v71 = sub_1B070B4B4;
      v72 = v33;
      sub_1B03949FC(&v71, v75, &v74, &v73);
      _os_log_impl(&dword_1B0389000, log, v36, "[%{public}s] User-initiated download for UID %u failed: %@", v15, 0x1Cu);
      sub_1B03998A8(v16, 1, v14);
      sub_1B03998A8(v17, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }

    else
    {
    }

    MEMORY[0x1E69E5920](log);
  }

  MEMORY[0x1E69E5928](v64);
  (a5)(v64);
  sub_1B0A5D1D0(v64, 0, 1);

  return MEMORY[0x1E69E5920](v64);
}

uint64_t sub_1B0A5106C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  MEMORY[0x1E69E5928](a2);
  v3(a2);
}

id sub_1B0A5111C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{

  result = a1;
  if (a1)
  {
    v10 = sub_1B09596E0(a2, a3, a4, a5, a6, a7, a8);

    result = v10;
    *a9 = v10;
  }

  else
  {
    *a9 = 0;
  }

  return result;
}

uint64_t sub_1B0A5121C(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v22 = a3;
  v23 = a4;
  v26 = sub_1B0A5FE30;
  v48 = 0;
  v47 = 0;
  v45 = 0;
  v46 = 0;
  v28 = 0;
  v32 = sub_1B0E44238();
  v29 = *(v32 - 8);
  v30 = v32 - 8;
  v15 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v31 = &v14 - v15;
  v36 = sub_1B0E44288();
  v33 = *(v36 - 8);
  v34 = v36 - 8;
  v16 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v14 - v16;
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2E10, &qword_1B0E9B598) - 8);
  v20 = v17;
  v21 = *(v17 + 64);
  v18 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v14 - v18;
  v48 = v5;
  v47 = a2;
  v45 = v6;
  v46 = v7;

  sub_1B08F5010(v19, v25);
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v8 = swift_allocObject();
  v9 = v23;
  v10 = v24;
  v11 = v8;
  v12 = v25;
  v27 = v11;
  *(v11 + 16) = v22;
  *(v11 + 24) = v9;
  sub_1B0A5FD08(v12, (v11 + v10));
  v43 = v26;
  v44 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v39 = 1107296256;
  v40 = 0;
  v41 = sub_1B038C908;
  v42 = &block_descriptor_821;
  v37 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](v28, v35, v31, v37);
  (*(v29 + 8))(v31, v32);
  (*(v33 + 8))(v35, v36);
  _Block_release(v37);
}

uint64_t sub_1B0A51578(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v70 = a1;
  v64 = a2;
  v61 = a3;
  v62 = a4;
  v63 = a5;
  v54 = sub_1B0A5D3C8;
  v55 = sub_1B039BCF8;
  v56 = sub_1B0398F5C;
  v57 = sub_1B0398F5C;
  v58 = sub_1B039BCEC;
  v81 = 0;
  v80 = 0;
  v78 = 0;
  v79 = 0;
  v77 = 0;
  v71 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2E10, &qword_1B0E9B598);
  v59 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v25 - v59;
  v65 = sub_1B0E439A8();
  v66 = *(v65 - 8);
  v67 = v65 - 8;
  v68 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v25 - v68;
  v81 = v6;
  v80 = v7;
  v78 = v8;
  v79 = v9;
  v77 = v10;

  if (v70)
  {
    v52 = v70;
    v37 = v70;
    v71 = v70;
    sub_1B096634C(v63, v61, v62);

    result = v53;
    v38 = v53;
  }

  else
  {
    (*(v66 + 16))(v69, v64 + OBJC_IVAR___MFSwiftIMAPTaskManager_logger, v65);
    MEMORY[0x1E69E5928](v64);
    v41 = 7;
    v42 = swift_allocObject();
    *(v42 + 16) = v64;
    v50 = sub_1B0E43988();
    v51 = sub_1B0E458E8();
    v39 = 17;
    v44 = swift_allocObject();
    *(v44 + 16) = 34;
    v45 = swift_allocObject();
    *(v45 + 16) = 8;
    v40 = 32;
    v11 = swift_allocObject();
    v12 = v42;
    v43 = v11;
    *(v11 + 16) = v54;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v43;
    v47 = v13;
    *(v13 + 16) = v55;
    *(v13 + 24) = v14;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v46 = sub_1B0E46A48();
    v48 = v15;

    v16 = v44;
    v17 = v48;
    *v48 = v56;
    v17[1] = v16;

    v18 = v45;
    v19 = v48;
    v48[2] = v57;
    v19[3] = v18;

    v20 = v47;
    v21 = v48;
    v48[4] = v58;
    v21[5] = v20;
    sub_1B0394964();

    if (os_log_type_enabled(v50, v51))
    {
      v30 = sub_1B0E45D78();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v31 = sub_1B03949A8(0, v29, v29);
      v32 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v33 = &v76;
      v76 = v30;
      v34 = &v75;
      v75 = v31;
      v35 = &v74;
      v74 = v32;
      sub_1B0394A48(2, &v76);
      sub_1B0394A48(1, v33);
      v23 = v53;
      v72 = v56;
      v73 = v44;
      sub_1B03949FC(&v72, v33, v34, v35);
      v36 = v23;
      if (v23)
      {

        __break(1u);
      }

      else
      {
        v72 = v57;
        v73 = v45;
        sub_1B03949FC(&v72, &v76, &v75, &v74);
        v27 = 0;
        v72 = v58;
        v73 = v47;
        sub_1B03949FC(&v72, &v76, &v75, &v74);
        v26 = 0;
        _os_log_impl(&dword_1B0389000, v50, v51, "[%{public}s] Failing download for watch. No PersistenceAdaptor.", v30, 0xCu);
        sub_1B03998A8(v31, 0, v29);
        sub_1B03998A8(v32, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v28 = v26;
      }
    }

    else
    {

      v28 = v53;
    }

    v25 = v28;
    MEMORY[0x1E69E5920](v50);
    (*(v66 + 8))(v69, v65);

    v24 = type metadata accessor for Message(0);
    (*(*(v24 - 8) + 56))(v60, 1);
    v61(v60);
    sub_1B07AF920(v60);

    return v25;
  }

  return result;
}

uint64_t sub_1B0A51DA0(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v22 = a3;
  v23 = a4;
  v26 = sub_1B0A5FE30;
  v48 = 0;
  v47 = 0;
  v45 = 0;
  v46 = 0;
  v28 = 0;
  v32 = sub_1B0E44238();
  v29 = *(v32 - 8);
  v30 = v32 - 8;
  v15 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v31 = &v14 - v15;
  v36 = sub_1B0E44288();
  v33 = *(v36 - 8);
  v34 = v36 - 8;
  v16 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v14 - v16;
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2E10, &qword_1B0E9B598) - 8);
  v20 = v17;
  v21 = *(v17 + 64);
  v18 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v14 - v18;
  v48 = v5;
  v47 = a2;
  v45 = v6;
  v46 = v7;

  sub_1B08F5010(v19, v25);
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v8 = swift_allocObject();
  v9 = v23;
  v10 = v24;
  v11 = v8;
  v12 = v25;
  v27 = v11;
  *(v11 + 16) = v22;
  *(v11 + 24) = v9;
  sub_1B0A5FD08(v12, (v11 + v10));
  v43 = v26;
  v44 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v39 = 1107296256;
  v40 = 0;
  v41 = sub_1B038C908;
  v42 = &block_descriptor_846;
  v37 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](v28, v35, v31, v37);
  (*(v29 + 8))(v31, v32);
  (*(v33 + 8))(v35, v36);
  _Block_release(v37);
}

uint64_t sub_1B0A520FC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v70 = a1;
  v64 = a2;
  v61 = a3;
  v62 = a4;
  v63 = a5;
  v54 = sub_1B0A5D3C8;
  v55 = sub_1B039BCF8;
  v56 = sub_1B0398F5C;
  v57 = sub_1B0398F5C;
  v58 = sub_1B039BCEC;
  v81 = 0;
  v80 = 0;
  v78 = 0;
  v79 = 0;
  v77 = 0;
  v71 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2E10, &qword_1B0E9B598);
  v59 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v25 - v59;
  v65 = sub_1B0E439A8();
  v66 = *(v65 - 8);
  v67 = v65 - 8;
  v68 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v25 - v68;
  v81 = v6;
  v80 = v7;
  v78 = v8;
  v79 = v9;
  v77 = v10;

  if (v70)
  {
    v52 = v70;
    v37 = v70;
    v71 = v70;
    sub_1B096634C(v63, v61, v62);

    result = v53;
    v38 = v53;
  }

  else
  {
    (*(v66 + 16))(v69, v64 + OBJC_IVAR___MFSwiftIMAPTaskManager_logger, v65);
    MEMORY[0x1E69E5928](v64);
    v41 = 7;
    v42 = swift_allocObject();
    *(v42 + 16) = v64;
    v50 = sub_1B0E43988();
    v51 = sub_1B0E458E8();
    v39 = 17;
    v44 = swift_allocObject();
    *(v44 + 16) = 34;
    v45 = swift_allocObject();
    *(v45 + 16) = 8;
    v40 = 32;
    v11 = swift_allocObject();
    v12 = v42;
    v43 = v11;
    *(v11 + 16) = v54;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v43;
    v47 = v13;
    *(v13 + 16) = v55;
    *(v13 + 24) = v14;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v46 = sub_1B0E46A48();
    v48 = v15;

    v16 = v44;
    v17 = v48;
    *v48 = v56;
    v17[1] = v16;

    v18 = v45;
    v19 = v48;
    v48[2] = v57;
    v19[3] = v18;

    v20 = v47;
    v21 = v48;
    v48[4] = v58;
    v21[5] = v20;
    sub_1B0394964();

    if (os_log_type_enabled(v50, v51))
    {
      v30 = sub_1B0E45D78();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v31 = sub_1B03949A8(0, v29, v29);
      v32 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v33 = &v76;
      v76 = v30;
      v34 = &v75;
      v75 = v31;
      v35 = &v74;
      v74 = v32;
      sub_1B0394A48(2, &v76);
      sub_1B0394A48(1, v33);
      v23 = v53;
      v72 = v56;
      v73 = v44;
      sub_1B03949FC(&v72, v33, v34, v35);
      v36 = v23;
      if (v23)
      {

        __break(1u);
      }

      else
      {
        v72 = v57;
        v73 = v45;
        sub_1B03949FC(&v72, &v76, &v75, &v74);
        v27 = 0;
        v72 = v58;
        v73 = v47;
        sub_1B03949FC(&v72, &v76, &v75, &v74);
        v26 = 0;
        _os_log_impl(&dword_1B0389000, v50, v51, "[%{public}s] Failing download for watch. No PersistenceAdaptor.", v30, 0xCu);
        sub_1B03998A8(v31, 0, v29);
        sub_1B03998A8(v32, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v28 = v26;
      }
    }

    else
    {

      v28 = v53;
    }

    v25 = v28;
    MEMORY[0x1E69E5920](v50);
    (*(v66 + 8))(v69, v65);

    v24 = type metadata accessor for Message(0);
    (*(*(v24 - 8) + 56))(v60, 1);
    v61(v60);
    sub_1B07AF920(v60);

    return v25;
  }

  return result;
}

id sub_1B0A52924(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B0A47B88(a1, a2);
  v4 = [v3 result];
  MEMORY[0x1E69E5920](v3);
  return v4;
}

id sub_1B0A5299C@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;

  result = a1;
  if (a1)
  {
    v6 = sub_1B099C000(a2, a3);

    v18 = sub_1B0A52B30;
    v19 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = 0;
    v16 = sub_1B0A52C38;
    v17 = &block_descriptor_852;
    v5 = _Block_copy(&aBlock);
    v7 = [v6 map_];
    _Block_release(v5);
    MEMORY[0x1E69E5920](v6);
    result = v7;
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    *a4 = v8;
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

id sub_1B0A52B30@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v12 = a2;
  v7 = a1;
  v14 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v5 - v6;
  v14 = v2;
  v11 = type metadata accessor for MFUIDSet();
  v8 = v7 + OBJC_IVAR____TtCVC7Message18PersistenceAdaptor11SearchState7Results_uids;
  v9 = &v13;
  swift_beginAccess();
  sub_1B03D08AC(v8, v10);
  swift_endAccess();
  result = sub_1B09127A4(v10);
  v4 = v12;
  v12[3] = v11;
  *v4 = result;
  return result;
}

id sub_1B0A52C38(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v17 = *(a1 + 32);
  v15 = *(a1 + 40);

  v17(v18, v16);
  if (v19)
  {
    v9 = v19;
    v12 = v18;
    __swift_project_boxed_opaque_existential_0(v18, v19);
    v7 = *(v9 - 8);
    v8 = v7;
    v11 = &v6;
    v2 = MEMORY[0x1EEE9AC00](&v6);
    v10 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v2);
    v13 = sub_1B0E46A58();
    (*(v8 + 8))(v10, v9);
    __swift_destroy_boxed_opaque_existential_0(v12);
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v6 = v14;

  v4 = v6;

  return v4;
}

id sub_1B0A52DD4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B0A47D70(a1, a2);
  v4 = [v3 result];
  MEMORY[0x1E69E5920](v3);
  return v4;
}

id sub_1B0A52E4C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;

  result = a1;
  if (a1)
  {
    v6 = sub_1B09A3CC4(a2, a3);

    v18 = sub_1B0A52B30;
    v19 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = 0;
    v16 = sub_1B0A52C38;
    v17 = &block_descriptor_849;
    v5 = _Block_copy(&aBlock);
    v7 = [v6 map_];
    _Block_release(v5);
    MEMORY[0x1E69E5920](v6);
    result = v7;
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    *a4 = v8;
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

uint64_t sub_1B0A53088(void (*a1)(void))
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3B80, &unk_1B0EA3D10);
  sub_1B0E46A48();
  sub_1B03EE50C();
  sub_1B039A494();
  sub_1B03EFF80();
  sub_1B0E445D8();
  a1();
}

id sub_1B0A53154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v10 = a3;
  v11 = a1;
  v17 = a2;
  v14 = 0;
  v16 = sub_1B0A535D4;
  v27 = sub_1B0A5F574;
  v31 = sub_1B0A5F67C;
  v52 = 0;
  v51 = 0;
  v43 = 0;
  v44 = 0;
  v36 = 0;
  v24 = sub_1B0E43108();
  v20 = *(v24 - 8);
  v21 = v24 - 8;
  v18 = v20;
  v19 = *(v20 + 64);
  v12 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v23 = v8 - v12;
  v52 = *v3;
  v51 = v4;
  v48[1] = v52;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2620, &unk_1B0E9DD90);
  v5 = sub_1B07F1A74();
  MEMORY[0x1B27270C0](v48, v13, v5);
  v47[3] = v48[0];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3B48, &qword_1B0EA3CC8);
  sub_1B0A5F4EC();
  sub_1B0E46738();
  v29 = v47;
  v47[0] = v48[2];
  v47[1] = v48[3];
  v47[2] = v48[4];
  (*(v20 + 16))(v23, v17, v24);
  v22 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v28 = swift_allocObject();
  (*(v20 + 32))(v28 + v22, v23, v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3B58, &qword_1B0EA3CD0);
  v26 = type metadata accessor for MFActivityMonitorNewMessagesState(v36);
  sub_1B0A5F5F4();
  sub_1B0E46728();

  sub_1B08A4F80();
  v33 = v46;
  v46[0] = v48[5];
  v46[1] = v48[6];
  v46[2] = v48[7];
  v46[3] = v48[8];
  v46[4] = v48[9];
  KeyPath = swift_getKeyPath();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3B68, &qword_1B0EA3D00);
  sub_1B0A5F684();
  sub_1B0E464E8();

  sub_1B0A5F71C();
  v35 = v45;
  v45[0] = v48[10];
  v45[1] = v48[11];
  v45[2] = v48[12];
  v45[3] = v48[13];
  v45[4] = v48[14];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3B70, &qword_1B0EA3D08);
  sub_1B0A5F760();
  sub_1B0E45058();
  sub_1B0A5F71C();
  v37 = v49;
  v38 = v50;
  v43 = v49;
  v39 = 1;
  v44 = v50 & 1;
  v40 = sub_1B039A494();
  v41 = v37;
  if (v38 & 1 & v39)
  {
    sub_1B041A044();
    v8[1] = v6;
    v9 = v6;
  }

  else
  {
    v9 = v41;
  }

  result = sub_1B0A538DC(v9);
  *v10 = result;
  return result;
}

uint64_t sub_1B0A535D4(void *a1)
{
  v2 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v3 = [v2 flags];
  MEMORY[0x1E69E5920](v2);
  v4 = [v3 read];
  MEMORY[0x1E69E5920](v3);
  return v4 ^ 1;
}

uint64_t sub_1B0A5366C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = a3;
  v8 = a1;
  v11 = a2;
  v19 = 0;
  v18 = 0;
  v14 = sub_1B0E43108();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v9 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v15 = &v6 - v9;
  v10 = *v3;
  v19 = v10;
  v18 = v4;
  MEMORY[0x1E69E5928](v10);
  v16 = [v10 dateReceived];
  sub_1B0E430D8();
  MEMORY[0x1E69E5920](v10);
  v17 = sub_1B0E43078();
  (*(v12 + 8))(v15, v14);
  MEMORY[0x1E69E5920](v16);
  result = v17;
  if ((v17 & 1) == 0)
  {
    goto LABEL_6;
  }

  result = EDConversationFlagsNotify([v10 conversationFlags]);
  if (result)
  {
    *v7 = 3;
    return result;
  }

  MEMORY[0x1E69E5928](v10);
  v6 = [v10 messageFlags];
  MEMORY[0x1E69E5920](v10);
  result = MFMessageFlagsVIPSender(v6);
  if (result)
  {
    *v7 = 2;
  }

  else
  {
LABEL_6:
    *v7 = 1;
  }

  return result;
}

uint64_t sub_1B0A53884(uint64_t *a1, uint64_t a2)
{

  swift_getAtKeyPath();
}

uint64_t sub_1B0A5391C(uint64_t a1)
{
  swift_unknownObjectRetain();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  sub_1B03F04F4(sub_1B0A5E9E4, v3);
}

uint64_t sub_1B0A539AC(uint64_t a1, void *a2)
{

  result = a1;
  if (a1)
  {
    sub_1B09D1384(a2);
  }

  return result;
}

uint64_t sub_1B0A53AD0(uint64_t a1)
{

  result = a1;
  if (a1)
  {
    sub_1B09CE0B4();
  }

  return result;
}

id sub_1B0A53B88(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v12 = a2;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v11 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v18 = v8 - v11;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v16 = *(v19 - 8);
  v17 = v19 - 8;
  v13 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v14 = v8 - v13;
  v23 = v8 - v13;
  v22 = v4;
  v21 = v5;
  v20 = v2;
  MEMORY[0x1E69E5928](v4);
  sub_1B09122DC(v15, v18);
  if ((*(v16 + 48))(v18, 1, v19) == 1)
  {
    sub_1B0754028(v18);
    v8[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E36D0, &unk_1B0EA1DA0);
    v8[1] = type metadata accessor for MFUIDSet();
    v6 = sub_1B09122B0();
    return sub_1B0A47D18(v6);
  }

  else
  {
    sub_1B074BA2C(v18, v14);
    v9 = sub_1B0A47D70(v14, v12);
    sub_1B03D09B8(v14);
    return v9;
  }
}

void *sub_1B0A53E84()
{
  v35 = sub_1B0A5D3C8;
  v39 = sub_1B039BCF8;
  v41 = sub_1B0398F5C;
  v43 = sub_1B0398F5C;
  v46 = sub_1B039BCEC;
  v26 = sub_1B06A3D64;
  v57 = 0;
  v27 = 0;
  v28 = sub_1B0E439A8();
  v31 = *(v28 - 8);
  v29 = v28 - 8;
  v30 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x1EEE9AC00](v28);
  v32 = v16 - v30;
  v57 = v33;
  (*(v31 + 16))(v16 - v30, v33 + OBJC_IVAR___MFSwiftIMAPTaskManager_logger, v0);
  MEMORY[0x1E69E5928](v33);
  v37 = 7;
  v38 = swift_allocObject();
  *(v38 + 16) = v33;
  v50 = sub_1B0E43988();
  v51 = sub_1B0E45908();
  v34 = 17;
  v42 = swift_allocObject();
  *(v42 + 16) = 34;
  v44 = swift_allocObject();
  *(v44 + 16) = 8;
  v36 = 32;
  v1 = swift_allocObject();
  v2 = v38;
  v40 = v1;
  *(v1 + 16) = v35;
  *(v1 + 24) = v2;
  v3 = swift_allocObject();
  v4 = v40;
  v47 = v3;
  *(v3 + 16) = v39;
  *(v3 + 24) = v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v45 = sub_1B0E46A48();
  v48 = v5;

  v6 = v42;
  v7 = v48;
  *v48 = v41;
  v7[1] = v6;

  v8 = v44;
  v9 = v48;
  v48[2] = v43;
  v9[3] = v8;

  v10 = v47;
  v11 = v48;
  v48[4] = v46;
  v11[5] = v10;
  sub_1B0394964();

  if (os_log_type_enabled(v50, v51))
  {
    v12 = v27;
    v19 = sub_1B0E45D78();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v20 = sub_1B03949A8(0, v18, v18);
    v21 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v22 = &v56;
    v56 = v19;
    v23 = &v55;
    v55 = v20;
    v24 = &v54;
    v54 = v21;
    sub_1B0394A48(2, &v56);
    sub_1B0394A48(1, v22);
    v52 = v41;
    v53 = v42;
    sub_1B03949FC(&v52, v22, v23, v24);
    v25 = v12;
    if (v12)
    {

      __break(1u);
    }

    else
    {
      v52 = v43;
      v53 = v44;
      sub_1B03949FC(&v52, &v56, &v55, &v54);
      v16[1] = 0;
      v52 = v46;
      v53 = v47;
      sub_1B03949FC(&v52, &v56, &v55, &v54);
      v16[0] = 0;
      _os_log_impl(&dword_1B0389000, v50, v51, "[%{public}s] Connect to server.", v19, 0xCu);
      sub_1B03998A8(v20, 0, v18);
      sub_1B03998A8(v21, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();

      v17 = v16[0];
    }
  }

  else
  {
    v13 = v27;

    v17 = v13;
  }

  v14 = v17;
  MEMORY[0x1E69E5920](v50);
  (*(v31 + 8))(v32, v28);
  result = sub_1B0A4EB4C(v26, 0, MEMORY[0x1E69E7CA8] + 8);
  if (!v14)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0A544C8()
{
  v31 = sub_1B0A5D3C8;
  v35 = sub_1B039BCF8;
  v37 = sub_1B0398F5C;
  v39 = sub_1B0398F5C;
  v42 = sub_1B039BCEC;
  v53 = 0;
  v23 = 0;
  v24 = sub_1B0E439A8();
  v27 = *(v24 - 8);
  v25 = v24 - 8;
  v26 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x1EEE9AC00](v24);
  v28 = v14 - v26;
  v53 = v29;
  (*(v27 + 16))(v14 - v26, v29 + OBJC_IVAR___MFSwiftIMAPTaskManager_logger, v0);
  MEMORY[0x1E69E5928](v29);
  v33 = 7;
  v34 = swift_allocObject();
  *(v34 + 16) = v29;
  v46 = sub_1B0E43988();
  v47 = sub_1B0E458C8();
  v30 = 17;
  v38 = swift_allocObject();
  *(v38 + 16) = 34;
  v40 = swift_allocObject();
  *(v40 + 16) = 8;
  v32 = 32;
  v1 = swift_allocObject();
  v2 = v34;
  v36 = v1;
  *(v1 + 16) = v31;
  *(v1 + 24) = v2;
  v3 = swift_allocObject();
  v4 = v36;
  v43 = v3;
  *(v3 + 16) = v35;
  *(v3 + 24) = v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v41 = sub_1B0E46A48();
  v44 = v5;

  v6 = v38;
  v7 = v44;
  *v44 = v37;
  v7[1] = v6;

  v8 = v40;
  v9 = v44;
  v44[2] = v39;
  v9[3] = v8;

  v10 = v43;
  v11 = v44;
  v44[4] = v42;
  v11[5] = v10;
  sub_1B0394964();

  if (os_log_type_enabled(v46, v47))
  {
    v12 = v23;
    v16 = sub_1B0E45D78();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v17 = sub_1B03949A8(0, v15, v15);
    v18 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v19 = &v52;
    v52 = v16;
    v20 = &v51;
    v51 = v17;
    v21 = &v50;
    v50 = v18;
    sub_1B0394A48(2, &v52);
    sub_1B0394A48(1, v19);
    v48 = v37;
    v49 = v38;
    sub_1B03949FC(&v48, v19, v20, v21);
    v22 = v12;
    if (v12)
    {

      __break(1u);
    }

    else
    {
      v48 = v39;
      v49 = v40;
      sub_1B03949FC(&v48, &v52, &v51, &v50);
      v14[1] = 0;
      v48 = v42;
      v49 = v43;
      sub_1B03949FC(&v48, &v52, &v51, &v50);
      _os_log_impl(&dword_1B0389000, v46, v47, "[%{public}s] Ignoring 'goOffline'.", v16, 0xCu);
      sub_1B03998A8(v17, 0, v15);
      sub_1B03998A8(v18, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v46);
  return (*(v27 + 8))(v28, v24);
}

uint64_t sub_1B0A54A88(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v33 = a2;
  v42 = sub_1B0A5D3C8;
  v46 = sub_1B039BCF8;
  v48 = sub_1B0398F5C;
  v50 = sub_1B0398F5C;
  v53 = sub_1B039BCEC;
  v31 = sub_1B0A5E9EC;
  v65 = 0;
  v66 = 0;
  v64 = 0;
  v32 = 0;
  v35 = sub_1B0E439A8();
  v38 = *(v35 - 8);
  v36 = v35 - 8;
  v37 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v34);
  v39 = v22 - v37;
  v65 = v3;
  v66 = v4;
  v64 = v40;
  (*(v38 + 16))(v22 - v37, v40 + OBJC_IVAR___MFSwiftIMAPTaskManager_logger, v2);
  MEMORY[0x1E69E5928](v40);
  v44 = 7;
  v45 = swift_allocObject();
  *(v45 + 16) = v40;
  v57 = sub_1B0E43988();
  v58 = sub_1B0E458C8();
  v41 = 17;
  v49 = swift_allocObject();
  *(v49 + 16) = 34;
  v51 = swift_allocObject();
  *(v51 + 16) = 8;
  v43 = 32;
  v5 = swift_allocObject();
  v6 = v45;
  v47 = v5;
  *(v5 + 16) = v42;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v47;
  v54 = v7;
  *(v7 + 16) = v46;
  *(v7 + 24) = v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v52 = sub_1B0E46A48();
  v55 = v9;

  v10 = v49;
  v11 = v55;
  *v55 = v48;
  v11[1] = v10;

  v12 = v51;
  v13 = v55;
  v55[2] = v50;
  v13[3] = v12;

  v14 = v54;
  v15 = v55;
  v55[4] = v53;
  v15[5] = v14;
  sub_1B0394964();

  if (os_log_type_enabled(v57, v58))
  {
    v16 = v32;
    v24 = sub_1B0E45D78();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v25 = sub_1B03949A8(0, v23, v23);
    v26 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v27 = &v63;
    v63 = v24;
    v28 = &v62;
    v62 = v25;
    v29 = &v61;
    v61 = v26;
    sub_1B0394A48(2, &v63);
    sub_1B0394A48(1, v27);
    v59 = v48;
    v60 = v49;
    sub_1B03949FC(&v59, v27, v28, v29);
    v30 = v16;
    if (v16)
    {

      __break(1u);
    }

    else
    {
      v59 = v50;
      v60 = v51;
      sub_1B03949FC(&v59, &v63, &v62, &v61);
      v22[2] = 0;
      v59 = v53;
      v60 = v54;
      sub_1B03949FC(&v59, &v63, &v62, &v61);
      _os_log_impl(&dword_1B0389000, v57, v58, "[%{public}s] Ignoring 'terminate'.", v24, 0xCu);
      sub_1B03998A8(v25, 0, v23);
      sub_1B03998A8(v26, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v57);
  (*(v38 + 8))(v39, v35);
  sub_1B070E90C(v34);
  v17 = swift_allocObject();
  v18 = v33;
  v19 = v17;
  v20 = v31;
  v22[1] = v19;
  *(v19 + 16) = v34;
  *(v19 + 24) = v18;
  sub_1B0A4E0F4(v20, v19);
}

uint64_t sub_1B0A55118(uint64_t a1, void (*a2)(uint64_t))
{
  v2 = sub_1B070E90C(a2);
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v2 = sub_1B0E465A8();
    __break(1u);
  }

  v4(v2);
}

uint64_t sub_1B0A55218(uint64_t a1, uint64_t a2, int a3)
{
  v31 = a1;
  v30 = a2;
  v34 = a3;
  v39 = sub_1B0A5D3C8;
  v43 = sub_1B039BCF8;
  v45 = sub_1B0398F5C;
  v47 = sub_1B0398F5C;
  v50 = sub_1B039BCEC;
  v63 = 0;
  v64 = 0;
  v62 = 0;
  v61 = 0;
  v29 = 0;
  v32 = sub_1B0E439A8();
  v35 = *(v32 - 8);
  v33 = v32 - 8;
  v3 = MEMORY[0x1EEE9AC00](v31);
  v36 = v20 - v4;
  v63 = v5;
  v64 = v6;
  v62 = v34 & 1;
  v61 = v37;
  (*(v35 + 16))(v20 - v4, v37 + OBJC_IVAR___MFSwiftIMAPTaskManager_logger, v3);
  MEMORY[0x1E69E5928](v37);
  v41 = 7;
  v42 = swift_allocObject();
  *(v42 + 16) = v37;
  v54 = sub_1B0E43988();
  v55 = sub_1B0E458C8();
  v38 = 17;
  v46 = swift_allocObject();
  *(v46 + 16) = 34;
  v48 = swift_allocObject();
  *(v48 + 16) = 8;
  v40 = 32;
  v7 = swift_allocObject();
  v8 = v42;
  v44 = v7;
  *(v7 + 16) = v39;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v44;
  v51 = v9;
  *(v9 + 16) = v43;
  *(v9 + 24) = v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v49 = sub_1B0E46A48();
  v52 = v11;

  v12 = v46;
  v13 = v52;
  *v52 = v45;
  v13[1] = v12;

  v14 = v48;
  v15 = v52;
  v52[2] = v47;
  v15[3] = v14;

  v16 = v51;
  v17 = v52;
  v52[4] = v50;
  v17[5] = v16;
  sub_1B0394964();

  if (os_log_type_enabled(v54, v55))
  {
    v18 = v29;
    v22 = sub_1B0E45D78();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v23 = sub_1B03949A8(0, v21, v21);
    v24 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v25 = &v60;
    v60 = v22;
    v26 = &v59;
    v59 = v23;
    v27 = &v58;
    v58 = v24;
    sub_1B0394A48(2, &v60);
    sub_1B0394A48(1, v25);
    v56 = v45;
    v57 = v46;
    sub_1B03949FC(&v56, v25, v26, v27);
    v28 = v18;
    if (v18)
    {

      __break(1u);
    }

    else
    {
      v56 = v47;
      v57 = v48;
      sub_1B03949FC(&v56, &v60, &v59, &v58);
      v20[0] = 0;
      v56 = v50;
      v57 = v51;
      sub_1B03949FC(&v56, &v60, &v59, &v58);
      _os_log_impl(&dword_1B0389000, v54, v55, "[%{public}s] Ignoring 'unselectMailboxConnections'.", v22, 0xCu);
      sub_1B03998A8(v23, 0, v21);
      sub_1B03998A8(v24, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v54);
  return (*(v35 + 8))(v36, v32);
}

uint64_t sub_1B0A55838()
{
  v31 = sub_1B0A5D3C8;
  v35 = sub_1B039BCF8;
  v37 = sub_1B0398F5C;
  v39 = sub_1B0398F5C;
  v42 = sub_1B039BCEC;
  v53 = 0;
  v23 = 0;
  v24 = sub_1B0E439A8();
  v27 = *(v24 - 8);
  v25 = v24 - 8;
  v26 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x1EEE9AC00](v24);
  v28 = v14 - v26;
  v53 = v29;
  (*(v27 + 16))(v14 - v26, v29 + OBJC_IVAR___MFSwiftIMAPTaskManager_logger, v0);
  MEMORY[0x1E69E5928](v29);
  v33 = 7;
  v34 = swift_allocObject();
  *(v34 + 16) = v29;
  v46 = sub_1B0E43988();
  v47 = sub_1B0E458C8();
  v30 = 17;
  v38 = swift_allocObject();
  *(v38 + 16) = 34;
  v40 = swift_allocObject();
  *(v40 + 16) = 8;
  v32 = 32;
  v1 = swift_allocObject();
  v2 = v34;
  v36 = v1;
  *(v1 + 16) = v31;
  *(v1 + 24) = v2;
  v3 = swift_allocObject();
  v4 = v36;
  v43 = v3;
  *(v3 + 16) = v35;
  *(v3 + 24) = v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v41 = sub_1B0E46A48();
  v44 = v5;

  v6 = v38;
  v7 = v44;
  *v44 = v37;
  v7[1] = v6;

  v8 = v40;
  v9 = v44;
  v44[2] = v39;
  v9[3] = v8;

  v10 = v43;
  v11 = v44;
  v44[4] = v42;
  v11[5] = v10;
  sub_1B0394964();

  if (os_log_type_enabled(v46, v47))
  {
    v12 = v23;
    v16 = sub_1B0E45D78();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v17 = sub_1B03949A8(0, v15, v15);
    v18 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v19 = &v52;
    v52 = v16;
    v20 = &v51;
    v51 = v17;
    v21 = &v50;
    v50 = v18;
    sub_1B0394A48(2, &v52);
    sub_1B0394A48(1, v19);
    v48 = v37;
    v49 = v38;
    sub_1B03949FC(&v48, v19, v20, v21);
    v22 = v12;
    if (v12)
    {

      __break(1u);
    }

    else
    {
      v48 = v39;
      v49 = v40;
      sub_1B03949FC(&v48, &v52, &v51, &v50);
      v14[1] = 0;
      v48 = v42;
      v49 = v43;
      sub_1B03949FC(&v48, &v52, &v51, &v50);
      _os_log_impl(&dword_1B0389000, v46, v47, "[%{public}s] Ignoring 'removeInvalidConnections'.", v16, 0xCu);
      sub_1B03998A8(v17, 0, v15);
      sub_1B03998A8(v18, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v46);
  return (*(v27 + 8))(v28, v24);
}

uint64_t sub_1B0A55DF8()
{
  v31 = sub_1B0A5D3C8;
  v35 = sub_1B039BCF8;
  v37 = sub_1B0398F5C;
  v39 = sub_1B0398F5C;
  v42 = sub_1B039BCEC;
  v53 = 0;
  v23 = 0;
  v24 = sub_1B0E439A8();
  v27 = *(v24 - 8);
  v25 = v24 - 8;
  v26 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x1EEE9AC00](v24);
  v28 = v14 - v26;
  v53 = v29;
  (*(v27 + 16))(v14 - v26, v29 + OBJC_IVAR___MFSwiftIMAPTaskManager_logger, v0);
  MEMORY[0x1E69E5928](v29);
  v33 = 7;
  v34 = swift_allocObject();
  *(v34 + 16) = v29;
  v46 = sub_1B0E43988();
  v47 = sub_1B0E458C8();
  v30 = 17;
  v38 = swift_allocObject();
  *(v38 + 16) = 34;
  v40 = swift_allocObject();
  *(v40 + 16) = 8;
  v32 = 32;
  v1 = swift_allocObject();
  v2 = v34;
  v36 = v1;
  *(v1 + 16) = v31;
  *(v1 + 24) = v2;
  v3 = swift_allocObject();
  v4 = v36;
  v43 = v3;
  *(v3 + 16) = v35;
  *(v3 + 24) = v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v41 = sub_1B0E46A48();
  v44 = v5;

  v6 = v38;
  v7 = v44;
  *v44 = v37;
  v7[1] = v6;

  v8 = v40;
  v9 = v44;
  v44[2] = v39;
  v9[3] = v8;

  v10 = v43;
  v11 = v44;
  v44[4] = v42;
  v11[5] = v10;
  sub_1B0394964();

  if (os_log_type_enabled(v46, v47))
  {
    v12 = v23;
    v16 = sub_1B0E45D78();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v17 = sub_1B03949A8(0, v15, v15);
    v18 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v19 = &v52;
    v52 = v16;
    v20 = &v51;
    v51 = v17;
    v21 = &v50;
    v50 = v18;
    sub_1B0394A48(2, &v52);
    sub_1B0394A48(1, v19);
    v48 = v37;
    v49 = v38;
    sub_1B03949FC(&v48, v19, v20, v21);
    v22 = v12;
    if (v12)
    {

      __break(1u);
    }

    else
    {
      v48 = v39;
      v49 = v40;
      sub_1B03949FC(&v48, &v52, &v51, &v50);
      v14[1] = 0;
      v48 = v42;
      v49 = v43;
      sub_1B03949FC(&v48, &v52, &v51, &v50);
      _os_log_impl(&dword_1B0389000, v46, v47, "[%{public}s] Ignoring close all connections.", v16, 0xCu);
      sub_1B03998A8(v17, 0, v15);
      sub_1B03998A8(v18, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v46);
  return (*(v27 + 8))(v28, v24);
}

uint64_t sub_1B0A56408()
{
  v31 = sub_1B0A5D3C8;
  v35 = sub_1B039BCF8;
  v37 = sub_1B0398F5C;
  v39 = sub_1B0398F5C;
  v42 = sub_1B039BCEC;
  v53 = 0;
  v23 = 0;
  v24 = sub_1B0E439A8();
  v27 = *(v24 - 8);
  v25 = v24 - 8;
  v26 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x1EEE9AC00](v24);
  v28 = v14 - v26;
  v53 = v29;
  (*(v27 + 16))(v14 - v26, v29 + OBJC_IVAR___MFSwiftIMAPTaskManager_logger, v0);
  MEMORY[0x1E69E5928](v29);
  v33 = 7;
  v34 = swift_allocObject();
  *(v34 + 16) = v29;
  v46 = sub_1B0E43988();
  v47 = sub_1B0E458C8();
  v30 = 17;
  v38 = swift_allocObject();
  *(v38 + 16) = 34;
  v40 = swift_allocObject();
  *(v40 + 16) = 8;
  v32 = 32;
  v1 = swift_allocObject();
  v2 = v34;
  v36 = v1;
  *(v1 + 16) = v31;
  *(v1 + 24) = v2;
  v3 = swift_allocObject();
  v4 = v36;
  v43 = v3;
  *(v3 + 16) = v35;
  *(v3 + 24) = v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v41 = sub_1B0E46A48();
  v44 = v5;

  v6 = v38;
  v7 = v44;
  *v44 = v37;
  v7[1] = v6;

  v8 = v40;
  v9 = v44;
  v44[2] = v39;
  v9[3] = v8;

  v10 = v43;
  v11 = v44;
  v44[4] = v42;
  v11[5] = v10;
  sub_1B0394964();

  if (os_log_type_enabled(v46, v47))
  {
    v12 = v23;
    v16 = sub_1B0E45D78();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v17 = sub_1B03949A8(0, v15, v15);
    v18 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v19 = &v52;
    v52 = v16;
    v20 = &v51;
    v51 = v17;
    v21 = &v50;
    v50 = v18;
    sub_1B0394A48(2, &v52);
    sub_1B0394A48(1, v19);
    v48 = v37;
    v49 = v38;
    sub_1B03949FC(&v48, v19, v20, v21);
    v22 = v12;
    if (v12)
    {

      __break(1u);
    }

    else
    {
      v48 = v39;
      v49 = v40;
      sub_1B03949FC(&v48, &v52, &v51, &v50);
      v14[1] = 0;
      v48 = v42;
      v49 = v43;
      sub_1B03949FC(&v48, &v52, &v51, &v50);
      _os_log_impl(&dword_1B0389000, v46, v47, "[%{public}s] Ignoring 'resetMaximumConnectionCount'.", v16, 0xCu);
      sub_1B03998A8(v17, 0, v15);
      sub_1B03998A8(v18, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v46);
  return (*(v27 + 8))(v28, v24);
}

uint64_t sub_1B0A569C8()
{
  v31 = sub_1B0A5D3C8;
  v35 = sub_1B039BCF8;
  v37 = sub_1B0398F5C;
  v39 = sub_1B0398F5C;
  v42 = sub_1B039BCEC;
  v53 = 0;
  v23 = 0;
  v24 = sub_1B0E439A8();
  v27 = *(v24 - 8);
  v25 = v24 - 8;
  v26 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x1EEE9AC00](v24);
  v28 = v14 - v26;
  v53 = v29;
  (*(v27 + 16))(v14 - v26, v29 + OBJC_IVAR___MFSwiftIMAPTaskManager_logger, v0);
  MEMORY[0x1E69E5928](v29);
  v33 = 7;
  v34 = swift_allocObject();
  *(v34 + 16) = v29;
  v46 = sub_1B0E43988();
  v47 = sub_1B0E458C8();
  v30 = 17;
  v38 = swift_allocObject();
  *(v38 + 16) = 34;
  v40 = swift_allocObject();
  *(v40 + 16) = 8;
  v32 = 32;
  v1 = swift_allocObject();
  v2 = v34;
  v36 = v1;
  *(v1 + 16) = v31;
  *(v1 + 24) = v2;
  v3 = swift_allocObject();
  v4 = v36;
  v43 = v3;
  *(v3 + 16) = v35;
  *(v3 + 24) = v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v41 = sub_1B0E46A48();
  v44 = v5;

  v6 = v38;
  v7 = v44;
  *v44 = v37;
  v7[1] = v6;

  v8 = v40;
  v9 = v44;
  v44[2] = v39;
  v9[3] = v8;

  v10 = v43;
  v11 = v44;
  v44[4] = v42;
  v11[5] = v10;
  sub_1B0394964();

  if (os_log_type_enabled(v46, v47))
  {
    v12 = v23;
    v16 = sub_1B0E45D78();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v17 = sub_1B03949A8(0, v15, v15);
    v18 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v19 = &v52;
    v52 = v16;
    v20 = &v51;
    v51 = v17;
    v21 = &v50;
    v50 = v18;
    sub_1B0394A48(2, &v52);
    sub_1B0394A48(1, v19);
    v48 = v37;
    v49 = v38;
    sub_1B03949FC(&v48, v19, v20, v21);
    v22 = v12;
    if (v12)
    {

      __break(1u);
    }

    else
    {
      v48 = v39;
      v49 = v40;
      sub_1B03949FC(&v48, &v52, &v51, &v50);
      v14[1] = 0;
      v48 = v42;
      v49 = v43;
      sub_1B03949FC(&v48, &v52, &v51, &v50);
      _os_log_impl(&dword_1B0389000, v46, v47, "[%{public}s] Ignoring 'cleanUp'.", v16, 0xCu);
      sub_1B03998A8(v17, 0, v15);
      sub_1B03998A8(v18, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v46);
  return (*(v27 + 8))(v28, v24);
}

void sub_1B0A56FB4(unsigned int a1, int a2)
{
  v108 = a2;
  v107 = a1;
  v92 = a2;
  v159 = 0;
  v123 = 0;
  v158 = 0;
  v157 = 0;
  v156 = 0;
  v155 = 0;
  v93 = 0;
  v94 = sub_1B0E439A8();
  v95 = *(v94 - 8);
  v102 = v95;
  v96 = v95;
  v99 = *(v95 + 64);
  v97 = v99;
  MEMORY[0x1EEE9AC00](v107);
  v101 = (v99 + 15) & 0xFFFFFFFFFFFFFFF0;
  v98 = &v56 - v101;
  MEMORY[0x1EEE9AC00](v2);
  v100 = &v56 - v101;
  v159 = &v56 - v101;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v103 = &v56 - v101;
  v158 = v5;
  v157 = v6;
  v156 = v7;
  v104 = *(v102 + 16);
  v105 = (v102 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v104(&v56 - v101, v7 + OBJC_IVAR___MFSwiftIMAPTaskManager_logger, v4);
  v8 = v106;
  v131 = 7;
  v113 = swift_allocObject();
  *(v113 + 16) = v106;
  v124 = 17;
  v118 = swift_allocObject();
  *(v118 + 16) = v107;
  v128 = swift_allocObject();
  *(v128 + 16) = v108;
  v148 = sub_1B0E43988();
  v109 = v148;
  v147 = sub_1B0E45908();
  v110 = v147;
  v135 = swift_allocObject();
  v111 = v135;
  *(v135 + 16) = 34;
  v136 = swift_allocObject();
  v112 = v136;
  *(v136 + 16) = 8;
  v130 = 32;
  v9 = swift_allocObject();
  v10 = v113;
  v114 = v9;
  *(v9 + 16) = sub_1B0A5D3C8;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v114;
  v137 = v11;
  v115 = v11;
  *(v11 + 16) = sub_1B039BCF8;
  *(v11 + 24) = v12;
  v138 = swift_allocObject();
  v116 = v138;
  *(v138 + 16) = v123;
  v139 = swift_allocObject();
  v117 = v139;
  v126 = 4;
  *(v139 + 16) = 4;
  v13 = swift_allocObject();
  v14 = v118;
  v119 = v13;
  *(v13 + 16) = sub_1B07F1F68;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v119;
  v120 = v15;
  *(v15 + 16) = sub_1B0A5E844;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  v18 = v120;
  v121 = v17;
  *(v17 + 16) = sub_1B0A5E878;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v121;
  v140 = v19;
  v122 = v19;
  *(v19 + 16) = sub_1B0A5E8C0;
  *(v19 + 24) = v20;
  v141 = swift_allocObject();
  v125 = v141;
  *(v141 + 16) = v123;
  v142 = swift_allocObject();
  v127 = v142;
  *(v142 + 16) = v126;
  v21 = swift_allocObject();
  v22 = v128;
  v129 = v21;
  *(v21 + 16) = sub_1B07F1F68;
  *(v21 + 24) = v22;
  v23 = swift_allocObject();
  v24 = v129;
  v132 = v23;
  *(v23 + 16) = sub_1B0A5E844;
  *(v23 + 24) = v24;
  v25 = swift_allocObject();
  v26 = v132;
  v133 = v25;
  *(v25 + 16) = sub_1B0A5E878;
  *(v25 + 24) = v26;
  v27 = swift_allocObject();
  v28 = v133;
  v145 = v27;
  v134 = v27;
  *(v27 + 16) = sub_1B0A5E8C0;
  *(v27 + 24) = v28;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v143 = sub_1B0E46A48();
  v144 = v29;

  v30 = v135;
  v31 = v144;
  *v144 = sub_1B0398F5C;
  v31[1] = v30;

  v32 = v136;
  v33 = v144;
  v144[2] = sub_1B0398F5C;
  v33[3] = v32;

  v34 = v137;
  v35 = v144;
  v144[4] = sub_1B039BCEC;
  v35[5] = v34;

  v36 = v138;
  v37 = v144;
  v144[6] = sub_1B0398F5C;
  v37[7] = v36;

  v38 = v139;
  v39 = v144;
  v144[8] = sub_1B0398F5C;
  v39[9] = v38;

  v40 = v140;
  v41 = v144;
  v144[10] = sub_1B0399178;
  v41[11] = v40;

  v42 = v141;
  v43 = v144;
  v144[12] = sub_1B0398F5C;
  v43[13] = v42;

  v44 = v142;
  v45 = v144;
  v144[14] = sub_1B0398F5C;
  v45[15] = v44;

  v46 = v144;
  v47 = v145;
  v144[16] = sub_1B0399178;
  v46[17] = v47;
  sub_1B0394964();

  if (os_log_type_enabled(v148, v147))
  {
    v48 = v93;
    v86 = sub_1B0E45D78();
    v83 = v86;
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v87 = sub_1B03949A8(0, v84, v84);
    v85 = v87;
    v88 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v153 = v86;
    v152 = v87;
    v151 = v88;
    v89 = &v153;
    sub_1B0394A48(2, &v153);
    sub_1B0394A48(3, v89);
    v149 = sub_1B0398F5C;
    v150 = v111;
    sub_1B03949FC(&v149, v89, &v152, &v151);
    v90 = v48;
    v91 = v48;
    if (v48)
    {
      v81 = 0;

      __break(1u);
    }

    else
    {
      v149 = sub_1B0398F5C;
      v150 = v112;
      sub_1B03949FC(&v149, &v153, &v152, &v151);
      v79 = 0;
      v80 = 0;
      v149 = sub_1B039BCEC;
      v150 = v115;
      sub_1B03949FC(&v149, &v153, &v152, &v151);
      v77 = 0;
      v78 = 0;
      v149 = sub_1B0398F5C;
      v150 = v116;
      sub_1B03949FC(&v149, &v153, &v152, &v151);
      v75 = 0;
      v76 = 0;
      v149 = sub_1B0398F5C;
      v150 = v117;
      sub_1B03949FC(&v149, &v153, &v152, &v151);
      v73 = 0;
      v74 = 0;
      v149 = sub_1B0399178;
      v150 = v122;
      sub_1B03949FC(&v149, &v153, &v152, &v151);
      v71 = 0;
      v72 = 0;
      v149 = sub_1B0398F5C;
      v150 = v125;
      sub_1B03949FC(&v149, &v153, &v152, &v151);
      v69 = 0;
      v70 = 0;
      v149 = sub_1B0398F5C;
      v150 = v127;
      sub_1B03949FC(&v149, &v153, &v152, &v151);
      v67 = 0;
      v68 = 0;
      v149 = sub_1B0399178;
      v150 = v134;
      sub_1B03949FC(&v149, &v153, &v152, &v151);
      v65 = 0;
      v66 = 0;
      _os_log_impl(&dword_1B0389000, v109, v110, "[%{public}s] 'syncAccount' forceFullSync: %{BOOL}d userInitiated: %{BOOL}d.", v83, 0x18u);
      sub_1B03998A8(v85, 0, v84);
      sub_1B03998A8(v88, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();

      v82 = v65;
    }
  }

  else
  {
    v49 = v93;

    v82 = v49;
  }

  v62 = v82;

  v63 = *(v96 + 8);
  v64 = (v96 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v63(v103, v94);
  if (v92)
  {
    v155 = 32;
    v61 = 32;
  }

  else
  {
    v155 = 512;
    v61 = 512;
  }

  v50 = v62;
  v154 = 0;
  v60 = &v56;
  MEMORY[0x1EEE9AC00](&v56);
  *(&v56 - 2) = &v154;
  *(&v56 - 2) = v51;
  sub_1B0A4EB4C(sub_1B0A5E9F8, (&v56 - 4), MEMORY[0x1E69E7CA8] + 8);
  if (v50)
  {
    __break(1u);
  }

  else
  {
    if (v154)
    {
      v59 = v154;
      v52 = v154;
      sub_1B0A4D914();
    }

    v53 = v106;
    (v104)(v100, &v106[OBJC_IVAR___MFSwiftIMAPTaskManager_logger], v94);
    (v104)(v98, v100, v94);
    v54 = v53;
    v56 = (*(v96 + 80) + 16) & ~*(v96 + 80);
    v57 = (v56 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = swift_allocObject();
    (*(v96 + 32))(v58 + v56, v98, v94);
    v55 = v58;
    *(v58 + v57) = v53;
    sub_1B0A4E0F4(sub_1B0A5EA24, v55);

    v63(v100, v94);
    sub_1B06D4E94(&v154);
  }
}

uint64_t sub_1B0A58200(uint64_t a1, dispatch_semaphore_t *a2, unsigned int a3)
{

  result = a1;
  if (a1)
  {
    v9 = dispatch_semaphore_create(0);
    MEMORY[0x1E69E5928](v9);
    v4 = *a2;
    *a2 = v9;
    MEMORY[0x1E69E5920](v4);
    MEMORY[0x1E69E5928](v9);
    v5 = swift_allocObject();
    *(v5 + 16) = v9;
    sub_1B03EEF98(a3, 0, sub_1B0A5F3E8, v5);

    MEMORY[0x1E69E5920](v9);
  }

  return result;
}

uint64_t sub_1B0A58388(_BYTE *a1, _BYTE *a2, _BYTE *a3)
{
  v30[3] = a1;
  v30[2] = a2;
  v30[1] = a3;
  MEMORY[0x1E69E5928](a3);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  v24 = sub_1B0E43988();
  v25 = sub_1B0E45908();
  v17 = swift_allocObject();
  *(v17 + 16) = 34;
  v18 = swift_allocObject();
  *(v18 + 16) = 8;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1B0A5D3C8;
  *(v12 + 24) = v11;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B039BCF8;
  *(v19 + 24) = v12;
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  v21 = swift_allocObject();
  *(v21 + 16) = 4;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1B0A5F3E0;
  *(v14 + 24) = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1B0A5E844;
  *(v15 + 24) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1B0A5E878;
  *(v16 + 24) = v15;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1B0A5E8C0;
  *(v22 + 24) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  sub_1B0E46A48();
  v23 = v3;

  *v23 = sub_1B0398F5C;
  v23[1] = v17;

  v23[2] = sub_1B0398F5C;
  v23[3] = v18;

  v23[4] = sub_1B039BCEC;
  v23[5] = v19;

  v23[6] = sub_1B0398F5C;
  v23[7] = v20;

  v23[8] = sub_1B0398F5C;
  v23[9] = v21;

  v23[10] = sub_1B0399178;
  v23[11] = v22;
  sub_1B0394964();

  if (os_log_type_enabled(v24, v25))
  {
    buf = sub_1B0E45D78();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v7 = sub_1B03949A8(0, v5, v5);
    v8 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v30[0] = buf;
    v29 = v7;
    v28 = v8;
    sub_1B0394A48(2, v30);
    sub_1B0394A48(2, v30);
    v26 = sub_1B0398F5C;
    v27 = v17;
    sub_1B03949FC(&v26, v30, &v29, &v28);
    v26 = sub_1B0398F5C;
    v27 = v18;
    sub_1B03949FC(&v26, v30, &v29, &v28);
    v26 = sub_1B039BCEC;
    v27 = v19;
    sub_1B03949FC(&v26, v30, &v29, &v28);
    v26 = sub_1B0398F5C;
    v27 = v20;
    sub_1B03949FC(&v26, v30, &v29, &v28);
    v26 = sub_1B0398F5C;
    v27 = v21;
    sub_1B03949FC(&v26, v30, &v29, &v28);
    v26 = sub_1B0399178;
    v27 = v22;
    sub_1B03949FC(&v26, v30, &v29, &v28);
    _os_log_impl(&dword_1B0389000, v24, v25, "[%{public}s] Done. Adaptor: %{BOOL}d", buf, 0x12u);
    sub_1B03998A8(v7, 0, v5);
    sub_1B03998A8(v8, 1, MEMORY[0x1E69E7CA0] + 8);
    sub_1B0E45D58();
  }

  else
  {
  }

  return MEMORY[0x1E69E5920](v24);
}

uint64_t sub_1B0A58B7C(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v28 = a2;
  v37 = sub_1B0A5D3C8;
  v41 = sub_1B039BCF8;
  v43 = sub_1B0398F5C;
  v45 = sub_1B0398F5C;
  v48 = sub_1B039BCEC;
  v60 = 0;
  v61 = 0;
  v59 = 0;
  v27 = 0;
  v30 = sub_1B0E439A8();
  v33 = *(v30 - 8);
  v31 = v30 - 8;
  v32 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v29);
  v34 = v18 - v32;
  v60 = v3;
  v61 = v4;
  v59 = v35;
  (*(v33 + 16))(v18 - v32, v35 + OBJC_IVAR___MFSwiftIMAPTaskManager_logger, v2);
  MEMORY[0x1E69E5928](v35);
  v39 = 7;
  v40 = swift_allocObject();
  *(v40 + 16) = v35;
  v52 = sub_1B0E43988();
  v53 = sub_1B0E458C8();
  v36 = 17;
  v44 = swift_allocObject();
  *(v44 + 16) = 34;
  v46 = swift_allocObject();
  *(v46 + 16) = 8;
  v38 = 32;
  v5 = swift_allocObject();
  v6 = v40;
  v42 = v5;
  *(v5 + 16) = v37;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v42;
  v49 = v7;
  *(v7 + 16) = v41;
  *(v7 + 24) = v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v47 = sub_1B0E46A48();
  v50 = v9;

  v10 = v44;
  v11 = v50;
  *v50 = v43;
  v11[1] = v10;

  v12 = v46;
  v13 = v50;
  v50[2] = v45;
  v13[3] = v12;

  v14 = v49;
  v15 = v50;
  v50[4] = v48;
  v15[5] = v14;
  sub_1B0394964();

  if (os_log_type_enabled(v52, v53))
  {
    v16 = v27;
    v20 = sub_1B0E45D78();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v21 = sub_1B03949A8(0, v19, v19);
    v22 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v23 = &v58;
    v58 = v20;
    v24 = &v57;
    v57 = v21;
    v25 = &v56;
    v56 = v22;
    sub_1B0394A48(2, &v58);
    sub_1B0394A48(1, v23);
    v54 = v43;
    v55 = v44;
    sub_1B03949FC(&v54, v23, v24, v25);
    v26 = v16;
    if (v16)
    {

      __break(1u);
    }

    else
    {
      v54 = v45;
      v55 = v46;
      sub_1B03949FC(&v54, &v58, &v57, &v56);
      v18[1] = 0;
      v54 = v48;
      v55 = v49;
      sub_1B03949FC(&v54, &v58, &v57, &v56);
      _os_log_impl(&dword_1B0389000, v52, v53, "[%{public}s] Ignoring 'resyncMailbox'.", v20, 0xCu);
      sub_1B03998A8(v21, 0, v19);
      sub_1B03998A8(v22, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v52);
  return (*(v33 + 8))(v34, v30);
}

uint64_t sub_1B0A59180(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v28 = a2;
  v37 = sub_1B0A5D3C8;
  v41 = sub_1B039BCF8;
  v43 = sub_1B0398F5C;
  v45 = sub_1B0398F5C;
  v48 = sub_1B039BCEC;
  v60 = 0;
  v61 = 0;
  v59 = 0;
  v27 = 0;
  v30 = sub_1B0E439A8();
  v33 = *(v30 - 8);
  v31 = v30 - 8;
  v32 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v29);
  v34 = v18 - v32;
  v60 = v3;
  v61 = v4;
  v59 = v35;
  (*(v33 + 16))(v18 - v32, v35 + OBJC_IVAR___MFSwiftIMAPTaskManager_logger, v2);
  MEMORY[0x1E69E5928](v35);
  v39 = 7;
  v40 = swift_allocObject();
  *(v40 + 16) = v35;
  v52 = sub_1B0E43988();
  v53 = sub_1B0E458C8();
  v36 = 17;
  v44 = swift_allocObject();
  *(v44 + 16) = 34;
  v46 = swift_allocObject();
  *(v46 + 16) = 8;
  v38 = 32;
  v5 = swift_allocObject();
  v6 = v40;
  v42 = v5;
  *(v5 + 16) = v37;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v42;
  v49 = v7;
  *(v7 + 16) = v41;
  *(v7 + 24) = v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v47 = sub_1B0E46A48();
  v50 = v9;

  v10 = v44;
  v11 = v50;
  *v50 = v43;
  v11[1] = v10;

  v12 = v46;
  v13 = v50;
  v50[2] = v45;
  v13[3] = v12;

  v14 = v49;
  v15 = v50;
  v50[4] = v48;
  v15[5] = v14;
  sub_1B0394964();

  if (os_log_type_enabled(v52, v53))
  {
    v16 = v27;
    v20 = sub_1B0E45D78();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v21 = sub_1B03949A8(0, v19, v19);
    v22 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v23 = &v58;
    v58 = v20;
    v24 = &v57;
    v57 = v21;
    v25 = &v56;
    v56 = v22;
    sub_1B0394A48(2, &v58);
    sub_1B0394A48(1, v23);
    v54 = v43;
    v55 = v44;
    sub_1B03949FC(&v54, v23, v24, v25);
    v26 = v16;
    if (v16)
    {

      __break(1u);
    }

    else
    {
      v54 = v45;
      v55 = v46;
      sub_1B03949FC(&v54, &v58, &v57, &v56);
      v18[1] = 0;
      v54 = v48;
      v55 = v49;
      sub_1B03949FC(&v54, &v58, &v57, &v56);
      _os_log_impl(&dword_1B0389000, v52, v53, "[%{public}s] Ignoring 'cancelMailboxSyncTask'.", v20, 0xCu);
      sub_1B03998A8(v21, 0, v19);
      sub_1B03998A8(v22, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v52);
  return (*(v33 + 8))(v34, v30);
}

uint64_t sub_1B0A59784(uint64_t a1)
{
  v44 = a1;
  v45 = sub_1B0A5D3C8;
  v47 = sub_1B039BCF8;
  v51 = sub_1B06BD0C0;
  v55 = sub_1B03B0DF8;
  v57 = sub_1B0398F5C;
  v59 = sub_1B0398F5C;
  v61 = sub_1B039BCEC;
  v63 = sub_1B0398F5C;
  v65 = sub_1B0398F5C;
  v68 = sub_1B0399260;
  v80 = 0;
  v79 = 0;
  v36 = 0;
  v37 = sub_1B0E439A8();
  v40 = *(v37 - 8);
  v38 = v37 - 8;
  v39 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v44);
  v41 = v26 - v39;
  v80 = v2;
  v79 = v42;
  (*(v40 + 16))(v26 - v39, v42 + OBJC_IVAR___MFSwiftIMAPTaskManager_logger, v1);
  MEMORY[0x1E69E5928](v42);
  v43 = 24;
  v53 = 7;
  v46 = swift_allocObject();
  *(v46 + 16) = v42;
  v54 = swift_allocObject();
  *(v54 + 16) = v44;
  v72 = sub_1B0E43988();
  v73 = sub_1B0E458C8();
  v49 = 17;
  v58 = swift_allocObject();
  *(v58 + 16) = 34;
  v60 = swift_allocObject();
  v50 = 8;
  *(v60 + 16) = 8;
  v52 = 32;
  v3 = swift_allocObject();
  v4 = v46;
  v48 = v3;
  *(v3 + 16) = v45;
  *(v3 + 24) = v4;
  v5 = swift_allocObject();
  v6 = v48;
  v62 = v5;
  *(v5 + 16) = v47;
  *(v5 + 24) = v6;
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  v66 = swift_allocObject();
  *(v66 + 16) = v50;
  v7 = swift_allocObject();
  v8 = v54;
  v56 = v7;
  *(v7 + 16) = v51;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v56;
  v69 = v9;
  *(v9 + 16) = v55;
  *(v9 + 24) = v10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v67 = sub_1B0E46A48();
  v70 = v11;

  v12 = v58;
  v13 = v70;
  *v70 = v57;
  v13[1] = v12;

  v14 = v60;
  v15 = v70;
  v70[2] = v59;
  v15[3] = v14;

  v16 = v62;
  v17 = v70;
  v70[4] = v61;
  v17[5] = v16;

  v18 = v64;
  v19 = v70;
  v70[6] = v63;
  v19[7] = v18;

  v20 = v66;
  v21 = v70;
  v70[8] = v65;
  v21[9] = v20;

  v22 = v69;
  v23 = v70;
  v70[10] = v68;
  v23[11] = v22;
  sub_1B0394964();

  if (os_log_type_enabled(v72, v73))
  {
    v24 = v36;
    v28 = sub_1B0E45D78();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v29 = sub_1B03949A8(0, v27, v27);
    v30 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v32 = &v78;
    v78 = v28;
    v33 = &v77;
    v77 = v29;
    v34 = &v76;
    v76 = v30;
    v31 = 2;
    sub_1B0394A48(2, &v78);
    sub_1B0394A48(v31, v32);
    v74 = v57;
    v75 = v58;
    sub_1B03949FC(&v74, v32, v33, v34);
    v35 = v24;
    if (v24)
    {

      __break(1u);
    }

    else
    {
      v74 = v59;
      v75 = v60;
      sub_1B03949FC(&v74, &v78, &v77, &v76);
      v26[4] = 0;
      v74 = v61;
      v75 = v62;
      sub_1B03949FC(&v74, &v78, &v77, &v76);
      v26[3] = 0;
      v74 = v63;
      v75 = v64;
      sub_1B03949FC(&v74, &v78, &v77, &v76);
      v26[2] = 0;
      v74 = v65;
      v75 = v66;
      sub_1B03949FC(&v74, &v78, &v77, &v76);
      v26[1] = 0;
      v74 = v68;
      v75 = v69;
      sub_1B03949FC(&v74, &v78, &v77, &v76);
      _os_log_impl(&dword_1B0389000, v72, v73, "[%{public}s] Ignoring 'supportsCapability' (%ld).", v28, 0x16u);
      sub_1B03998A8(v29, 0, v27);
      sub_1B03998A8(v30, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v72);
  (*(v40 + 8))(v41, v37);
  return 0;
}

uint64_t sub_1B0A5A0A4(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v28 = a2;
  v37 = sub_1B0A5D3C8;
  v41 = sub_1B039BCF8;
  v43 = sub_1B0398F5C;
  v45 = sub_1B0398F5C;
  v48 = sub_1B039BCEC;
  v60 = 0;
  v61 = 0;
  v59 = 0;
  v27 = 0;
  v30 = sub_1B0E439A8();
  v33 = *(v30 - 8);
  v31 = v30 - 8;
  v32 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v29);
  v34 = v18 - v32;
  v60 = v3;
  v61 = v4;
  v59 = v35;
  (*(v33 + 16))(v18 - v32, v35 + OBJC_IVAR___MFSwiftIMAPTaskManager_logger, v2);
  MEMORY[0x1E69E5928](v35);
  v39 = 7;
  v40 = swift_allocObject();
  *(v40 + 16) = v35;
  v52 = sub_1B0E43988();
  v53 = sub_1B0E458C8();
  v36 = 17;
  v44 = swift_allocObject();
  *(v44 + 16) = 34;
  v46 = swift_allocObject();
  *(v46 + 16) = 8;
  v38 = 32;
  v5 = swift_allocObject();
  v6 = v40;
  v42 = v5;
  *(v5 + 16) = v37;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v42;
  v49 = v7;
  *(v7 + 16) = v41;
  *(v7 + 24) = v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v47 = sub_1B0E46A48();
  v50 = v9;

  v10 = v44;
  v11 = v50;
  *v50 = v43;
  v11[1] = v10;

  v12 = v46;
  v13 = v50;
  v50[2] = v45;
  v13[3] = v12;

  v14 = v49;
  v15 = v50;
  v50[4] = v48;
  v15[5] = v14;
  sub_1B0394964();

  if (os_log_type_enabled(v52, v53))
  {
    v16 = v27;
    v20 = sub_1B0E45D78();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v21 = sub_1B03949A8(0, v19, v19);
    v22 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v23 = &v58;
    v58 = v20;
    v24 = &v57;
    v57 = v21;
    v25 = &v56;
    v56 = v22;
    sub_1B0394A48(2, &v58);
    sub_1B0394A48(1, v23);
    v54 = v43;
    v55 = v44;
    sub_1B03949FC(&v54, v23, v24, v25);
    v26 = v16;
    if (v16)
    {

      __break(1u);
    }

    else
    {
      v54 = v45;
      v55 = v46;
      sub_1B03949FC(&v54, &v58, &v57, &v56);
      v18[1] = 0;
      v54 = v48;
      v55 = v49;
      sub_1B03949FC(&v54, &v58, &v57, &v56);
      _os_log_impl(&dword_1B0389000, v52, v53, "[%{public}s] Ignoring 'fetchTotalSizeAndMessageCount'.", v20, 0xCu);
      sub_1B03998A8(v21, 0, v19);
      sub_1B03998A8(v22, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v52);
  (*(v33 + 8))(v34, v30);
  return 0;
}

uint64_t sub_1B0A5A6D4(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v28 = a2;
  v37 = sub_1B0A5D3C8;
  v41 = sub_1B039BCF8;
  v43 = sub_1B0398F5C;
  v45 = sub_1B0398F5C;
  v48 = sub_1B039BCEC;
  v60 = 0;
  v61 = 0;
  v59 = 0;
  v27 = 0;
  v30 = sub_1B0E439A8();
  v33 = *(v30 - 8);
  v31 = v30 - 8;
  v32 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v29);
  v34 = v18 - v32;
  v60 = v3;
  v61 = v4;
  v59 = v35;
  (*(v33 + 16))(v18 - v32, v35 + OBJC_IVAR___MFSwiftIMAPTaskManager_logger, v2);
  MEMORY[0x1E69E5928](v35);
  v39 = 7;
  v40 = swift_allocObject();
  *(v40 + 16) = v35;
  v52 = sub_1B0E43988();
  v53 = sub_1B0E458C8();
  v36 = 17;
  v44 = swift_allocObject();
  *(v44 + 16) = 34;
  v46 = swift_allocObject();
  *(v46 + 16) = 8;
  v38 = 32;
  v5 = swift_allocObject();
  v6 = v40;
  v42 = v5;
  *(v5 + 16) = v37;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v42;
  v49 = v7;
  *(v7 + 16) = v41;
  *(v7 + 24) = v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v47 = sub_1B0E46A48();
  v50 = v9;

  v10 = v44;
  v11 = v50;
  *v50 = v43;
  v11[1] = v10;

  v12 = v46;
  v13 = v50;
  v50[2] = v45;
  v13[3] = v12;

  v14 = v49;
  v15 = v50;
  v50[4] = v48;
  v15[5] = v14;
  sub_1B0394964();

  if (os_log_type_enabled(v52, v53))
  {
    v16 = v27;
    v20 = sub_1B0E45D78();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v21 = sub_1B03949A8(0, v19, v19);
    v22 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v23 = &v58;
    v58 = v20;
    v24 = &v57;
    v57 = v21;
    v25 = &v56;
    v56 = v22;
    sub_1B0394A48(2, &v58);
    sub_1B0394A48(1, v23);
    v54 = v43;
    v55 = v44;
    sub_1B03949FC(&v54, v23, v24, v25);
    v26 = v16;
    if (v16)
    {

      __break(1u);
    }

    else
    {
      v54 = v45;
      v55 = v46;
      sub_1B03949FC(&v54, &v58, &v57, &v56);
      v18[1] = 0;
      v54 = v48;
      v55 = v49;
      sub_1B03949FC(&v54, &v58, &v57, &v56);
      _os_log_impl(&dword_1B0389000, v52, v53, "[%{public}s] Ignoring 'createMailbox'.", v20, 0xCu);
      sub_1B03998A8(v21, 0, v19);
      sub_1B03998A8(v22, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v52);
  (*(v33 + 8))(v34, v30);
  return 0;
}

uint64_t sub_1B0A5ADD8(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v28 = a2;
  v37 = sub_1B0A5D3C8;
  v41 = sub_1B039BCF8;
  v43 = sub_1B0398F5C;
  v45 = sub_1B0398F5C;
  v48 = sub_1B039BCEC;
  v60 = 0;
  v61 = 0;
  v59 = 0;
  v27 = 0;
  v30 = sub_1B0E439A8();
  v33 = *(v30 - 8);
  v31 = v30 - 8;
  v32 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v29);
  v34 = v18 - v32;
  v60 = v3;
  v61 = v4;
  v59 = v35;
  (*(v33 + 16))(v18 - v32, v35 + OBJC_IVAR___MFSwiftIMAPTaskManager_logger, v2);
  MEMORY[0x1E69E5928](v35);
  v39 = 7;
  v40 = swift_allocObject();
  *(v40 + 16) = v35;
  v52 = sub_1B0E43988();
  v53 = sub_1B0E458C8();
  v36 = 17;
  v44 = swift_allocObject();
  *(v44 + 16) = 34;
  v46 = swift_allocObject();
  *(v46 + 16) = 8;
  v38 = 32;
  v5 = swift_allocObject();
  v6 = v40;
  v42 = v5;
  *(v5 + 16) = v37;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v42;
  v49 = v7;
  *(v7 + 16) = v41;
  *(v7 + 24) = v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v47 = sub_1B0E46A48();
  v50 = v9;

  v10 = v44;
  v11 = v50;
  *v50 = v43;
  v11[1] = v10;

  v12 = v46;
  v13 = v50;
  v50[2] = v45;
  v13[3] = v12;

  v14 = v49;
  v15 = v50;
  v50[4] = v48;
  v15[5] = v14;
  sub_1B0394964();

  if (os_log_type_enabled(v52, v53))
  {
    v16 = v27;
    v20 = sub_1B0E45D78();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v21 = sub_1B03949A8(0, v19, v19);
    v22 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v23 = &v58;
    v58 = v20;
    v24 = &v57;
    v57 = v21;
    v25 = &v56;
    v56 = v22;
    sub_1B0394A48(2, &v58);
    sub_1B0394A48(1, v23);
    v54 = v43;
    v55 = v44;
    sub_1B03949FC(&v54, v23, v24, v25);
    v26 = v16;
    if (v16)
    {

      __break(1u);
    }

    else
    {
      v54 = v45;
      v55 = v46;
      sub_1B03949FC(&v54, &v58, &v57, &v56);
      v18[1] = 0;
      v54 = v48;
      v55 = v49;
      sub_1B03949FC(&v54, &v58, &v57, &v56);
      _os_log_impl(&dword_1B0389000, v52, v53, "[%{public}s] Ignoring 'deleteMailbox'.", v20, 0xCu);
      sub_1B03998A8(v21, 0, v19);
      sub_1B03998A8(v22, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v52);
  (*(v33 + 8))(v34, v30);
  return 0;
}

uint64_t sub_1B0A5B4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a1;
  v33 = a2;
  v37 = a3;
  v32 = a4;
  v42 = sub_1B0A5D3C8;
  v46 = sub_1B039BCF8;
  v48 = sub_1B0398F5C;
  v50 = sub_1B0398F5C;
  v53 = sub_1B039BCEC;
  v67 = 0;
  v68 = 0;
  v65 = 0;
  v66 = 0;
  v64 = 0;
  v31 = 0;
  v35 = sub_1B0E439A8();
  v38 = *(v35 - 8);
  v36 = v35 - 8;
  v4 = MEMORY[0x1EEE9AC00](v34);
  v39 = v22 - v5;
  v67 = v6;
  v68 = v7;
  v65 = v37;
  v66 = v8;
  v64 = v40;
  (*(v38 + 16))(v22 - v5, v40 + OBJC_IVAR___MFSwiftIMAPTaskManager_logger, v4);
  MEMORY[0x1E69E5928](v40);
  v44 = 7;
  v45 = swift_allocObject();
  *(v45 + 16) = v40;
  v57 = sub_1B0E43988();
  v58 = sub_1B0E458C8();
  v41 = 17;
  v49 = swift_allocObject();
  *(v49 + 16) = 34;
  v51 = swift_allocObject();
  *(v51 + 16) = 8;
  v43 = 32;
  v9 = swift_allocObject();
  v10 = v45;
  v47 = v9;
  *(v9 + 16) = v42;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v47;
  v54 = v11;
  *(v11 + 16) = v46;
  *(v11 + 24) = v12;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v52 = sub_1B0E46A48();
  v55 = v13;

  v14 = v49;
  v15 = v55;
  *v55 = v48;
  v15[1] = v14;

  v16 = v51;
  v17 = v55;
  v55[2] = v50;
  v17[3] = v16;

  v18 = v54;
  v19 = v55;
  v55[4] = v53;
  v19[5] = v18;
  sub_1B0394964();

  if (os_log_type_enabled(v57, v58))
  {
    v20 = v31;
    v24 = sub_1B0E45D78();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v25 = sub_1B03949A8(0, v23, v23);
    v26 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v27 = &v63;
    v63 = v24;
    v28 = &v62;
    v62 = v25;
    v29 = &v61;
    v61 = v26;
    sub_1B0394A48(2, &v63);
    sub_1B0394A48(1, v27);
    v59 = v48;
    v60 = v49;
    sub_1B03949FC(&v59, v27, v28, v29);
    v30 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v59 = v50;
      v60 = v51;
      sub_1B03949FC(&v59, &v63, &v62, &v61);
      v22[0] = 0;
      v59 = v53;
      v60 = v54;
      sub_1B03949FC(&v59, &v63, &v62, &v61);
      _os_log_impl(&dword_1B0389000, v57, v58, "[%{public}s] Ignoring 'renameMailbox'.", v24, 0xCu);
      sub_1B03998A8(v25, 0, v23);
      sub_1B03998A8(v26, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v57);
  (*(v38 + 8))(v39, v35);
  return 0;
}

uint64_t sub_1B0A5BCFC(uint64_t a1)
{

  result = a1;
  if (a1)
  {
    sub_1B09EC1F4();
  }

  return result;
}

uint64_t sub_1B0A5BDB4()
{
  v7 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3B28, &unk_1B0EA3B20);
  sub_1B0A4C3C8(sub_1B0A5BEBC, 0, v3, v5);
  v4[0] = v5[0];
  v4[1] = v5[1];
  sub_1B03F1A20(sub_1B0A5BFA4, 0, v3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v2, &v6);
  sub_1B03B1198(v4);
  return v6;
}

uint64_t sub_1B0A5BEBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v13 = a1;

  result = a1;
  if (a1)
  {
    v3 = sub_1B09B03B8();
    v10 = v3;
    v11 = v4;
    v12 = v5;
    if (v3)
    {
      v6 = v11;
      v7 = v12;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0876CCC(&v10);

      *a2 = v6;
      a2[1] = v7;
      return result;
    }

    sub_1B0876CCC(&v10);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_1B0A5BFA4@<X0>(uint64_t *a2@<X8>)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = sub_1B0E44C88();
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t sub_1B0A5C0D0()
{
  v31 = sub_1B0A5D3C8;
  v35 = sub_1B039BCF8;
  v37 = sub_1B0398F5C;
  v39 = sub_1B0398F5C;
  v42 = sub_1B039BCEC;
  v53 = 0;
  v23 = 0;
  v24 = sub_1B0E439A8();
  v27 = *(v24 - 8);
  v25 = v24 - 8;
  v26 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x1EEE9AC00](v24);
  v28 = v14 - v26;
  v53 = v29;
  (*(v27 + 16))(v14 - v26, v29 + OBJC_IVAR___MFSwiftIMAPTaskManager_logger, v0);
  MEMORY[0x1E69E5928](v29);
  v33 = 7;
  v34 = swift_allocObject();
  *(v34 + 16) = v29;
  v46 = sub_1B0E43988();
  v47 = sub_1B0E458C8();
  v30 = 17;
  v38 = swift_allocObject();
  *(v38 + 16) = 34;
  v40 = swift_allocObject();
  *(v40 + 16) = 8;
  v32 = 32;
  v1 = swift_allocObject();
  v2 = v34;
  v36 = v1;
  *(v1 + 16) = v31;
  *(v1 + 24) = v2;
  v3 = swift_allocObject();
  v4 = v36;
  v43 = v3;
  *(v3 + 16) = v35;
  *(v3 + 24) = v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v41 = sub_1B0E46A48();
  v44 = v5;

  v6 = v38;
  v7 = v44;
  *v44 = v37;
  v7[1] = v6;

  v8 = v40;
  v9 = v44;
  v44[2] = v39;
  v9[3] = v8;

  v10 = v43;
  v11 = v44;
  v44[4] = v42;
  v11[5] = v10;
  sub_1B0394964();

  if (os_log_type_enabled(v46, v47))
  {
    v12 = v23;
    v16 = sub_1B0E45D78();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v17 = sub_1B03949A8(0, v15, v15);
    v18 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v19 = &v52;
    v52 = v16;
    v20 = &v51;
    v51 = v17;
    v21 = &v50;
    v50 = v18;
    sub_1B0394A48(2, &v52);
    sub_1B0394A48(1, v19);
    v48 = v37;
    v49 = v38;
    sub_1B03949FC(&v48, v19, v20, v21);
    v22 = v12;
    if (v12)
    {

      __break(1u);
    }

    else
    {
      v48 = v39;
      v49 = v40;
      sub_1B03949FC(&v48, &v52, &v51, &v50);
      v14[1] = 0;
      v48 = v42;
      v49 = v43;
      sub_1B03949FC(&v48, &v52, &v51, &v50);
      _os_log_impl(&dword_1B0389000, v46, v47, "[%{public}s] Ignoring 'beginPerformingLocalActionsIfNeeded'.", v16, 0xCu);
      sub_1B03998A8(v17, 0, v15);
      sub_1B03998A8(v18, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v46);
  return (*(v27 + 8))(v28, v24);
}

uint64_t sub_1B0A5C690(uint64_t a1)
{
  v26 = a1;
  v34 = sub_1B0A5D3C8;
  v38 = sub_1B039BCF8;
  v40 = sub_1B0398F5C;
  v42 = sub_1B0398F5C;
  v45 = sub_1B039BCEC;
  v57 = 0;
  v56 = 0;
  v25 = 0;
  v27 = sub_1B0E439A8();
  v30 = *(v27 - 8);
  v28 = v27 - 8;
  v29 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v26);
  v31 = v16 - v29;
  v57 = v2;
  v56 = v32;
  (*(v30 + 16))(v16 - v29, v32 + OBJC_IVAR___MFSwiftIMAPTaskManager_logger, v1);
  MEMORY[0x1E69E5928](v32);
  v36 = 7;
  v37 = swift_allocObject();
  *(v37 + 16) = v32;
  v49 = sub_1B0E43988();
  v50 = sub_1B0E458C8();
  v33 = 17;
  v41 = swift_allocObject();
  *(v41 + 16) = 34;
  v43 = swift_allocObject();
  *(v43 + 16) = 8;
  v35 = 32;
  v3 = swift_allocObject();
  v4 = v37;
  v39 = v3;
  *(v3 + 16) = v34;
  *(v3 + 24) = v4;
  v5 = swift_allocObject();
  v6 = v39;
  v46 = v5;
  *(v5 + 16) = v38;
  *(v5 + 24) = v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v44 = sub_1B0E46A48();
  v47 = v7;

  v8 = v41;
  v9 = v47;
  *v47 = v40;
  v9[1] = v8;

  v10 = v43;
  v11 = v47;
  v47[2] = v42;
  v11[3] = v10;

  v12 = v46;
  v13 = v47;
  v47[4] = v45;
  v13[5] = v12;
  sub_1B0394964();

  if (os_log_type_enabled(v49, v50))
  {
    v14 = v25;
    v18 = sub_1B0E45D78();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v19 = sub_1B03949A8(0, v17, v17);
    v20 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v21 = &v55;
    v55 = v18;
    v22 = &v54;
    v54 = v19;
    v23 = &v53;
    v53 = v20;
    sub_1B0394A48(2, &v55);
    sub_1B0394A48(1, v21);
    v51 = v40;
    v52 = v41;
    sub_1B03949FC(&v51, v21, v22, v23);
    v24 = v14;
    if (v14)
    {

      __break(1u);
    }

    else
    {
      v51 = v42;
      v52 = v43;
      sub_1B03949FC(&v51, &v55, &v54, &v53);
      v16[1] = 0;
      v51 = v45;
      v52 = v46;
      sub_1B03949FC(&v51, &v55, &v54, &v53);
      _os_log_impl(&dword_1B0389000, v49, v50, "[%{public}s] Ignoring 'addLocalAction'.", v18, 0xCu);
      sub_1B03998A8(v19, 0, v17);
      sub_1B03998A8(v20, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v49);
  return (*(v30 + 8))(v31, v27);
}

uint64_t sub_1B0A5CCE8(uint64_t a1)
{

  result = a1;
  if (a1)
  {
    sub_1B09F1950();
  }

  return result;
}

uint64_t sub_1B0A5CEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a1;
  v27 = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v17 = sub_1B0A60038;
  v46 = 0;
  v45 = 0;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v34 = 0;
  v18 = 0;
  v19 = sub_1B0E44238();
  v20 = *(v19 - 8);
  v21 = v19 - 8;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v23 = &v14 - v22;
  v28 = sub_1B0E44288();
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  v31 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v14 - v31;
  v46 = v5;
  v45 = v6;
  v43 = v7;
  v44 = v8;
  v42 = v9;

  if (v33)
  {
    v16 = v33;
    v14 = v33;
    v34 = v33;
    sub_1B09F07B4(v26, v27, v24, v25);
  }

  else
  {

    v10 = swift_allocObject();
    v11 = v25;
    v12 = v17;
    *(v10 + 16) = v24;
    *(v10 + 24) = v11;
    v40 = v12;
    v41 = v10;
    aBlock = MEMORY[0x1E69E9820];
    v36 = 1107296256;
    v37 = 0;
    v38 = sub_1B038C908;
    v39 = &block_descriptor_994;
    v15 = _Block_copy(&aBlock);
    sub_1B039B81C();
    sub_1B039B77C();
    MEMORY[0x1B2727B00](0, v32, v23, v15);
    (*(v20 + 8))(v23, v19);
    (*(v29 + 8))(v32, v28);
    _Block_release(v15);
  }
}

uint64_t sub_1B0A5D1D0(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x1E69E5920](a1);
  }

  else
  {
    return sub_1B0391D50(a1, a2);
  }
}

uint64_t sub_1B0A5D220(_BYTE *a1)
{
  v12 = *(sub_1B0E439A8() - 8);
  v2 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v3 = (v2 + *(v12 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + v3);
  v6 = *(v1 + v4);
  v7 = v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_1B0A4F5E0(a1, (v1 + v2), v5, v6, v8, v9);
}

uint64_t sub_1B0A5D2F4(_BYTE *a1)
{
  v12 = *(sub_1B0E439A8() - 8);
  v2 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v3 = (v2 + *(v12 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + v3);
  v6 = *(v1 + v4);
  v7 = v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_1B0A4FDA4(a1, (v1 + v2), v5, v6, v8, v9);
}

uint64_t sub_1B0A5D3D0(void (*a1)(void))
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3BB0, &qword_1B0E9C0E8);
  sub_1B0E46A48();
  sub_1B0E42E68();
  sub_1B07BAD2C();
  sub_1B0E445D8();
  a1();
}

uint64_t sub_1B0A5D490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v40 = a1;
  v34 = a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v33 = a7;
  v22 = sub_1B0A5FC98;
  v55 = 0;
  v54 = 0;
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  v41 = 0;
  v23 = 0;
  v24 = sub_1B0E44238();
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v28 = v18 - v27;
  v35 = sub_1B0E44288();
  v36 = *(v35 - 8);
  v37 = v35 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40);
  v39 = v18 - v38;
  v55 = v7;
  v54 = v8;
  v52 = v9;
  v53 = v10;
  v50 = v11;
  v51 = v12;
  v49 = v13;

  if (v40)
  {
    v21 = v40;
    v18[1] = v40;
    v41 = v40;
    sub_1B09F1030(v31, v32, v33, v29, v30);
  }

  else
  {
    v20 = *(v34 + OBJC_IVAR___MFSwiftIMAPTaskManager_queue);
    MEMORY[0x1E69E5928](v20);

    v14 = swift_allocObject();
    v15 = v30;
    v16 = v22;
    *(v14 + 16) = v29;
    *(v14 + 24) = v15;
    v47 = v16;
    v48 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v43 = 1107296256;
    v44 = 0;
    v45 = sub_1B038C908;
    v46 = &block_descriptor_796;
    v19 = _Block_copy(&aBlock);
    sub_1B039B81C();
    sub_1B039B77C();
    MEMORY[0x1B2727B00](0, v39, v28, v19);
    (*(v25 + 8))(v28, v24);
    (*(v36 + 8))(v39, v35);
    _Block_release(v19);

    return MEMORY[0x1E69E5920](v20);
  }
}

uint64_t sub_1B0A5D7F8(void (*a1)(uint64_t), uint64_t a2)
{
  v7 = a1;
  v9 = a2;
  v10 = 0;
  v11 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v8 = &v6 - v6;
  v10 = v3;
  v11 = a2;

  v4 = sub_1B0E42E68();
  (*(*(v4 - 8) + 56))(v8, 1);
  v7(v8);
  sub_1B06E3800(v8);
}

id sub_1B0A5D90C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v6 = sub_1B0E44AC8();

    v2 = [v7 initWithSuiteName_];
  }

  else
  {
    v2 = [v7 initWithSuiteName_];
  }

  v5 = v2;
  MEMORY[0x1E69E5920](v4);
  return v5;
}

uint64_t sub_1B0A5D9E4(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (a1 > 15)
  {
    sub_1B0E46298();
  }

  return 0;
}

uint64_t sub_1B0A5DA5C(uint64_t (*a1)(void))
{
  a1();
  v2 = _swift_stdlib_bridgeErrorToNSError();
  MEMORY[0x1E69E5928](v2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1B0A5DAAC(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x1E69E7CC0];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3AF8, &qword_1B0EA3AF8);
    v1 = sub_1B0E45278();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

unint64_t sub_1B0A5DB64(uint64_t a1)
{
  if (sub_1B03B1F78(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3BA8, &unk_1B0EA3D28);
    v16 = sub_1B0E466A8();
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC8];

    v16 = v15;
  }

  result = sub_1B03B1F90(a1);
  v14 = result;
  if (result)
  {
    if (result <= 0)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; ; ++i)
      {
        has_malloc_size = _swift_stdlib_has_malloc_size();
        v10 = sub_1B0A5DD54(i, has_malloc_size & 1, a1);
        v11 = v3;
        v12 = v4;
        result = sub_1B0A5DDE8(v10);
        if (v5)
        {
          break;
        }

        v16[result / 0x40 + 8] |= 1 << ((result % 0x40) & 0x3F);
        *(v16[6] + result) = v10;
        v6 = v16[7] + 16 * result;
        *v6 = v11;
        *(v6 + 8) = v12 & 1;
        v7 = v16[2];
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_17;
        }

        v16[2] = v9;
        if (i + 1 == v14)
        {
          goto LABEL_14;
        }
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_14:

    return v16;
  }

  return result;
}

uint64_t sub_1B0A5DD54(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    return *(a3 + 32 + 24 * a1);
  }

  result = sub_1B0A5DE60(a1, a3);
  __break(1u);
  __break(1u);
  return result;
}

unint64_t sub_1B0A5DDE8(char a1)
{
  sub_1B0E46C28();
  memcpy(__dst, v5, sizeof(__dst));
  WindowOfInterestSizes.MailboxType.hash(into:)(__dst, a1);
  v1 = sub_1B0E46CB8();
  return sub_1B0A5E054(a1, v1);
}

uint64_t sub_1B0A5DE60(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= *(a2 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x20 + 8 * result);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3AF8, &qword_1B0EA3AF8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1B0A5D9E4(82);
    v2 = sub_1B0E44838();
    MEMORY[0x1B2726E80](v2);

    v3 = sub_1B0E44838();
    MEMORY[0x1B2726E80](v3);

    v4 = sub_1B0E44838();
    MEMORY[0x1B2726E80](v4);

    swift_getObjectType();
    v5 = sub_1B0E46FF8();
    MEMORY[0x1B2726E80](v5);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E44C88();
    sub_1B0E465C8();
    __break(1u);
  }

  return v6;
}

unint64_t sub_1B0A5E054(char a1, uint64_t a2)
{
  v7 = (1 << (*(v2 + 32) & 0x3F)) - 1;
  for (i = a2 & v7; (*(v6 + 64 + 8 * (i / 0x40)) & (1 << ((i % 0x40) & 0x3F))) != 0; i = (i + 1) & v7)
  {
    if (static WindowOfInterestSizes.MailboxType.__derived_enum_equals(_:_:)(*(*(v6 + 48) + i), a1))
    {
      return i;
    }
  }

  return i;
}

uint64_t sub_1B0A5E158(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      sub_1B0E45BE8();
      v1 = sub_1B0E45278();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

    sub_1B0E45BE8();
    return v2;
  }

  return result;
}

unint64_t sub_1B0A5E384()
{
  v2 = qword_1EB6DEE10;
  if (!qword_1EB6DEE10)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DEE10);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B0A5E3E8()
{
  v2 = qword_1EB6E3B00;
  if (!qword_1EB6E3B00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3B00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A5E460(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1B0A5E4A8@<X0>(void *a1@<X8>)
{
  v2 = *(sub_1B0E439A8() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_1B0A49364(v3, v4, a1);
}

uint64_t (**sub_1B0A5E520(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  LOWORD(v4) = *(v2 + 64);
  BYTE2(v4) = *(v2 + 66);
  return sub_1B0A4A340(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v4, *(v2 + 72), *(v2 + 80), *(v2 + 88), *(v2 + 96));
}

_OWORD *sub_1B0A5E5B4@<X0>(_OWORD *a1@<X8>)
{
  v6 = *(sub_1B0E439A8() - 8);
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v7 = v9 + *(v6 + 64);
  v2 = *(sub_1B0E42E68() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((v7 + *(v2 + 80)) & ~*(v2 + 80));

  return sub_1B0A49F68(v3, v1 + v9, v4, a1);
}

unint64_t sub_1B0A5E6BC()
{
  v2 = qword_1EB6DA980;
  if (!qword_1EB6DA980)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA980);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper_153(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1B0A5E884@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t block_copy_helper_234(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_259(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1B0A5EA24(_BYTE *a1)
{
  v6 = *(sub_1B0E439A8() - 8);
  v2 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v3 = *(v1 + ((v2 + *(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B0A58388(a1, (v1 + v2), v3);
}

unint64_t sub_1B0A5EACC()
{
  v2 = qword_1EB6E3B30;
  if (!qword_1EB6E3B30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3B30);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for TaskManager(uint64_t a1)
{
  v2 = qword_1EB6DEEA0;
  if (!qword_1EB6DEEA0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1B0A5EBD8(uint64_t a1)
{
  updated = sub_1B0E439A8();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_1B0A5ED04(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 17))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (!HIDWORD(*a1))
      {
        v4 = *a1;
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B0A5EE34(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 17);
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 16) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1B0A5F020(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *sub_1B0A5F170(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t sub_1B0A5F364()
{
  v2 = qword_1EB6E3B40;
  if (!qword_1EB6E3B40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3B40);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_754(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_763(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B0A5F4EC()
{
  v2 = qword_1EB6DA500;
  if (!qword_1EB6DA500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3B48, &qword_1B0EA3CC8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA500);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A5F574@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = sub_1B0E43108();
  v4 = v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  return sub_1B0A5366C(a1, v4, a2);
}

unint64_t sub_1B0A5F5F4()
{
  v2 = qword_1EB6DA3D0;
  if (!qword_1EB6DA3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3B58, &qword_1B0EA3CD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA3D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A5F684()
{
  v2 = qword_1EB6DA3E0;
  if (!qword_1EB6DA3E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3B58, &qword_1B0EA3CD0);
    sub_1B086F29C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA3E0);
    return WitnessTable;
  }

  return v2;
}

void sub_1B0A5F71C()
{
}

unint64_t sub_1B0A5F760()
{
  v2 = qword_1EB6DA3F8;
  if (!qword_1EB6DA3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3B70, &qword_1B0EA3D08);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA3F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A5F820()
{
  v2 = qword_1EB6DA988;
  if (!qword_1EB6DA988)
  {
    sub_1B0E45BE8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA988);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A5F8A0()
{
  v2 = qword_1EB6DAF18;
  if (!qword_1EB6DAF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3B90, &unk_1B0EDC490);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAF18);
    return WitnessTable;
  }

  return v2;
}

_OWORD *sub_1B0A5F928(_OWORD *a1, _OWORD *a2)
{
  v10 = type metadata accessor for Configuration(0);
  v11 = *(v10 - 1);
  if ((*(v11 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3BA0, &qword_1B0EA3D20);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v6 = a2 + v10[5];
    v5 = a1 + v10[5];
    v2 = sub_1B0E43BC8();
    (*(*(v2 - 8) + 32))(v6, v5);
    v7 = type metadata accessor for ConnectionConfiguration(0);
    v6[v7[5]] = v5[v7[5]];
    *&v6[v7[6]] = *&v5[v7[6]];
    v6[v7[7]] = v5[v7[7]];
    *&v6[v7[8]] = *&v5[v7[8]];
    v6[v7[9]] = v5[v7[9]] & 1;
    *&v6[v7[10]] = *&v5[v7[10]];
    *(a2 + v10[6]) = *(a1 + v10[6]) & 1;
    *(a2 + v10[7]) = *(a1 + v10[7]) & 1;
    (*(v11 + 56))();
  }

  return a2;
}

uint64_t sub_1B0A5FB70(uint64_t a1)
{
  v5 = type metadata accessor for Configuration(0);
  if (!(*(*(v5 - 8) + 48))(a1, 1))
  {

    v3 = a1 + *(v5 + 20);
    v1 = sub_1B0E43BC8();
    (*(*(v1 - 8) + 8))(v3);
    type metadata accessor for ConnectionConfiguration(0);
  }

  return a1;
}

uint64_t block_copy_helper_794(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void *sub_1B0A5FD08(const void *a1, void *a2)
{
  v6 = type metadata accessor for Message(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2E10, &qword_1B0E9B598);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1B0A5FE30()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2E10, &qword_1B0E9B598) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1B09F18E0(v2, v3, v4);
}

uint64_t block_copy_helper_819(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_844(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_847(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_850(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_992(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1B0A600A8()
{
  result = sub_1B0E44838();
  qword_1EB738200 = result;
  qword_1EB738208 = v1;
  return result;
}

uint64_t *sub_1B0A600EC()
{
  if (qword_1EB6E0B78 != -1)
  {
    swift_once();
  }

  return &qword_1EB738200;
}

void sub_1B0A6014C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (a2 >= a1)
  {
    sub_1B0A60B8C(a1, a5, a6, a7);
  }

  else
  {
    sub_1B0A60274(a3, a4, a5, a6, a7);
  }
}

uint64_t sub_1B0A60274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v71 = a4;
  v70 = a3;
  v83 = a2;
  v82 = a1;
  v68 = a5;
  v101 = *MEMORY[0x1E69E9840];
  v69 = 0;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v72 = sub_1B0E42E68();
  v73 = *(v72 - 8);
  v74 = v73;
  v76 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v78 = (v76 + 15) & 0xFFFFFFFFFFFFFFF0;
  v75 = v25 - v78;
  MEMORY[0x1EEE9AC00](v5);
  v81 = v25 - v78;
  v77 = v25 - v78;
  MEMORY[0x1EEE9AC00](v6);
  v80 = v25 - v78;
  v79 = v25 - v78;
  v97 = v25 - v78;
  v95 = v7;
  v96 = v8;
  v93 = v9;
  v94 = v10;
  sub_1B0A61060();
  v11 = v84;
  v12 = static URL.makeTemporaryFile(baseDirectory:pathExtension:)(v80, v81, v82, v83);
  v85 = v11;
  v86 = v12;
  v87 = v11;
  if (v11)
  {
    v31 = v87;
    (*(v74 + 8))(v77, v72, 0);
    v40 = v31;
  }

  else
  {
    v13 = v75;
    v61 = v86;
    v63 = *(v74 + 8);
    v62 = v74 + 8;
    v59 = v63;
    v60 = (v74 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v63(v77, v72);
    v92 = v61;
    v100 = 0;
    v66 = [objc_opt_self() defaultManager];
    (*(v74 + 16))(v13, v79, v72);
    v65 = sub_1B0E42D58();
    v63(v75, v72);
    v91 = v100;
    v67 = [v66 removeItemAtURL:v65 error:&v91];
    v64 = v91;
    v14 = v91;
    v15 = v100;
    v100 = v64;

    if (v67)
    {
      v58 = v85;
    }

    else
    {
      v28 = v100;
      v29 = sub_1B0E42CD8();

      swift_willThrow();
      v30 = 0;

      v58 = v30;
    }

    v50 = v58;
    v45 = 24;
    v46 = 7;
    v53 = swift_allocObject();
    v47 = v53;
    v48 = (v53 + 16);
    v90 = v53 + 16;
    v49 = 0;
    *(v53 + 16) = 0;
    v16 = swift_allocObject();
    v17 = v50;
    v55 = v16;
    v51 = v16;
    v52 = (v16 + 16);
    v89 = v16 + 16;
    *(v16 + 16) = v49;

    v54 = v25;
    v18 = MEMORY[0x1EEE9AC00](v53);
    v19 = v61;
    v25[-4] = v55;
    LODWORD(v25[-3]) = v19;
    v25[-2] = v20;
    v21(sub_1B0A612FC, v18);
    v56 = v17;
    v57 = v17;
    if (v17)
    {
      v27 = v57;

      sub_1B091582C();
      v59(v79, v72);
      v40 = v27;
    }

    else
    {

      v43 = v99;
      swift_beginAccess();
      v44 = *v52;
      v42 = v44;
      v22 = v44;
      swift_endAccess();
      if (v44)
      {
        v41 = v42;
        v39 = v42;
        v88 = v42;
        swift_willThrow();

        sub_1B091582C();
        v59(v79, v72);
        v40 = v39;
      }

      else
      {
        v36 = v56;
        v34 = &v98;
        swift_beginAccess();
        v35 = *v48;
        swift_endAccess();
        v23 = v36;
        static DispatchData.makeMappedRead(fileDescriptor:count:)(v61, v35);
        v37 = v23;
        v38 = v23;
        if (!v23)
        {
          v32 = 0;

          sub_1B091582C();
          v59(v79, v72);
          result = v32;
          v33 = v32;
          return result;
        }

        v26 = v38;

        sub_1B091582C();
        v59(v79, v72);
        v40 = v26;
      }
    }
  }

  return v25[0];
}

void sub_1B0A60B8C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a3;
  v38 = a2;
  v44 = a1;
  v35 = a4;
  v37 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v39 = sub_1B0E442E8();
  v40 = *(v39 - 8);
  v41 = v40;
  v42 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](0);
  v43 = (v22 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = v4;
  v57 = v5;
  v58 = v6;
  v45 = sub_1B0A6130C();
  v46 = sub_1B0A60F88(v44);
  if (v46)
  {
    v33 = v46;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v30 = v33;
  v28 = v34;
  v56 = v33;
  v7 = v33;
  v8 = v28;
  v29 = v22;
  v9 = MEMORY[0x1EEE9AC00](v22);
  v10(sub_1B0A61370, v9);
  v31 = v8;
  v32 = v8;
  if (v8)
  {
    v22[1] = v32;
  }

  else
  {
    v27 = 0;

    v11 = v30;
    v12 = v30;
    v23 = [v30 bytes];
    v13 = v30;

    v55 = v23;
    v24 = v23;
    v54 = v30;
    sub_1B0A61378();
    v14 = sub_1B0E45718();
    v25 = MEMORY[0x1B2727210](v24, v14);
    v26 = v15;
    v16 = v30;
    v17 = swift_allocObject();
    *(v17 + 16) = v30;
    v52 = sub_1B06BAE4C;
    v53 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v48 = 1107296256;
    v49 = 0;
    v50 = sub_1B038C908;
    v51 = &block_descriptor_23;
    v18 = _Block_copy(&aBlock);
    v19 = v41;
    v20 = v18;
    v21 = v43;
    *v43 = 0;
    v21[1] = v20;
    (*(v19 + 104))();
    sub_1B0E442F8();
  }
}

id sub_1B0A60FC8(uint64_t a1, uint64_t a2, void *a3)
{
  result = sub_1B0E450C8();
  if (result)
  {
    return [a3 appendBytes:result length:sub_1B0E450E8()];
  }

  return result;
}

uint64_t sub_1B0A61060()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v2 = [v1 temporaryDirectory];
  MEMORY[0x1E69E5920](v1);
  sub_1B0E42DE8();
  return MEMORY[0x1E69E5920](v2);
}

void sub_1B0A610E4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v20 = a1;
  v21 = a2;
  v19 = a3 + 16;
  v18 = a4;
  v17[4] = (a5 + 16);
  swift_beginAccess();
  v15 = *(a3 + 16);
  v5 = v15;
  swift_endAccess();
  v17[0] = v15;
  sub_1B0A613F8(v17);
  if (!v15)
  {
    v16[0] = a1;
    v16[1] = a2;
    sub_1B0915888(v16, a4, MEMORY[0x1E69E6290]);
    v8 = sub_1B0E450E8();
    swift_beginAccess();
    v6 = *(a5 + 16);
    v9 = v6 + v8;
    if (__OFADD__(v6, v8))
    {
      __break(1u);
    }

    else
    {
      *(a5 + 16) = v9;
      swift_endAccess();
    }
  }
}

unint64_t sub_1B0A6130C()
{
  v2 = qword_1EB6DABF0;
  if (!qword_1EB6DABF0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DABF0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B0A61378()
{
  v2 = qword_1EB6DABE8;
  if (!qword_1EB6DABE8)
  {
    sub_1B0A6130C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DABE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A61424()
{
  result = sub_1B0E43B38();
  v2 = result;
  if ((result & 0x100000000) != 0)
  {
    if (sub_1B0A61510(18, 0, 0))
    {
      sub_1B09179C4();
      swift_willThrowTypedImpl();
    }

    sub_1B09179C4();
    result = swift_allocError();
    *v1 = v2;
  }

  return result;
}

uint64_t sub_1B0A61548()
{
  v10 = [v0 defaultConnectionSettings];
  if (v10)
  {
    sub_1B0A61724();
    v9 = v1;
    if (v1 == 3)
    {
      v5 = [v10 usesSSL];
      v6 = [v10 tryDirectSSL];
      if (v5)
      {
        if (v6)
        {
          v4 = sub_1B0A618D0() | 0x40;
          MEMORY[0x1E69E5920](v10);
          return v4;
        }

        else
        {
          v3 = sub_1B0A618D0();
          MEMORY[0x1E69E5920](v10);
          return v3;
        }
      }

      else
      {
        MEMORY[0x1E69E5920](v10);
        return 65408;
      }
    }

    else
    {
      if ([v10 tryDirectSSL])
      {
        v8 = v9 | 0x40;
      }

      else
      {
        v8 = v9;
      }

      MEMORY[0x1E69E5920](v10);
      return v8;
    }
  }

  else
  {
    return 65532;
  }
}

void sub_1B0A61724()
{
  v21 = 0;
  v16 = 0;
  v1 = v0;
  v18 = [v17 hostname];
  if (v18)
  {
    v15 = v18;
    v10 = v18;
    v11 = sub_1B0E44AD8();
    v12 = v2;

    v13 = v11;
    v14 = v12;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v8[1] = v14;
  v8[0] = v13;

  v19[0] = v13;
  v19[1] = v14;
  v3 = v17;
  v8[2] = v8;
  MEMORY[0x1EEE9AC00](v8);
  v9 = v7;
  v7[2] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3850, &qword_1B0E9B600);
  sub_1B039A570(sub_1B0A61B64, v9, v5, MEMORY[0x1E69E73E0], &type metadata for CertificateTrust.Policy, v6, &v20);

  sub_1B03B1198(v19);
}

uint64_t sub_1B0A618D0()
{
  v14[4] = 0;
  v9 = 0;
  MEMORY[0x1E69E5928](@"MFServerSSLCertificateIsTrusted");
  sub_1B0E44AD8();
  v6 = sub_1B0E44AC8();

  MEMORY[0x1E69E5920](@"MFServerSSLCertificateIsTrusted");
  v7 = [v5 valueInAccountPropertiesForKey_];
  MEMORY[0x1E69E5920](v6);
  if (v7)
  {
    sub_1B0E45FE8();
    sub_1B0392800(v8, v12);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v13 = 0;
  }

  if (!v13)
  {
    sub_1B041C0EC(v12);
    return 2;
  }

  sub_1B0392800(v12, v14);
  sub_1B039AEC8(v14, v11);
  sub_1B039A494();
  if (swift_dynamicCast())
  {
    v4 = v10;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    __swift_destroy_boxed_opaque_existential_0(v14);
    return 2;
  }

  v9 = v4;
  v0 = [v4 BOOLValue];
  if (v0)
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  MEMORY[0x1E69E5920](v4);
  __swift_destroy_boxed_opaque_existential_0(v14);
  return v3;
}

uint64_t sub_1B0A61AFC@<X0>(_BYTE *a1@<X8>, uint64_t *a2@<X0>)
{
  result = sub_1B0A61B90(*a2, a2[1]);
  *a1 = result;
  return result;
}

uint64_t sub_1B0A61B90(uint64_t a1, uint64_t a2)
{
  v99 = a2;
  v98 = a1;
  v111 = 0;
  v108 = 0;
  v112 = a1;
  v113 = a2;
  v96 = &unk_1F270F390;
  v95 = sub_1B0E46A48();
  v93 = v2;
  v92 = 12;
  v94 = 1;
  v3 = sub_1B0E44838();
  v5 = v4;
  v6 = v93;
  *v93 = v3;
  v6[1] = v5;
  v91 = 0;
  *(v6 + 16) = 0;
  v7 = sub_1B0E44838();
  v8 = v91;
  v10 = v9;
  v11 = v93;
  v93[3] = v7;
  v11[4] = v10;
  *(v11 + 40) = v8;
  v12 = sub_1B0E44838();
  v13 = v91;
  v15 = v14;
  v16 = v93;
  v93[6] = v12;
  v16[7] = v15;
  *(v16 + 64) = v13;
  v17 = sub_1B0E44838();
  v18 = v91;
  v20 = v19;
  v21 = v93;
  v93[9] = v17;
  v21[10] = v20;
  *(v21 + 88) = v18;
  v22 = sub_1B0E44838();
  v23 = v91;
  v25 = v24;
  v26 = v93;
  v93[12] = v22;
  v26[13] = v25;
  *(v26 + 112) = v23;
  v27 = sub_1B0E44838();
  v28 = v91;
  v29 = v93;
  v93[15] = v27;
  v29[16] = v30;
  *(v29 + 136) = v28;
  v31 = sub_1B0E44838();
  v32 = v93;
  v33 = v94;
  v93[18] = v31;
  v32[19] = v34;
  *(v32 + 160) = v33;
  sub_1B0394964();
  v97 = v35;
  v110 = v35;
  v109 = v35;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v105 = v98;
  v106 = v99;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3BB8, &qword_1B0EA3D38);
  v100 = v101;
  v102 = sub_1B0A6225C();
  v103 = 0;
  v104 = sub_1B0E45028();
  v90 = v104;

  if (v104)
  {

    v88 = 1;
    v89 = v103;
  }

  else
  {
    v36 = v103;

    v83 = &unk_1F270F390;
    v82 = sub_1B0E46A48();
    v80 = v37;
    v79 = 12;
    v81 = 1;
    v38 = sub_1B0E44838();
    v39 = v80;
    *v80 = v38;
    v39[1] = v40;
    v77 = 0;
    *(v39 + 16) = 0;
    v41 = sub_1B0E44838();
    v42 = v77;
    v44 = v43;
    v45 = v80;
    v80[3] = v41;
    v45[4] = v44;
    *(v45 + 40) = v42;
    v46 = sub_1B0E44838();
    v47 = v77;
    v49 = v48;
    v50 = v80;
    v80[6] = v46;
    v50[7] = v49;
    *(v50 + 64) = v47;
    v51 = sub_1B0E44838();
    v52 = v77;
    v54 = v53;
    v55 = v80;
    v80[9] = v51;
    v55[10] = v54;
    *(v55 + 88) = v52;
    v78 = 14;
    v56 = sub_1B0E44838();
    v57 = v77;
    v58 = v80;
    v80[12] = v56;
    v58[13] = v59;
    *(v58 + 112) = v57;
    v60 = sub_1B0E44838();
    v61 = v80;
    v62 = v81;
    v80[15] = v60;
    v61[16] = v63;
    *(v61 + 136) = v62;
    v64 = sub_1B0E44838();
    v65 = v81;
    v67 = v66;
    v68 = v80;
    v80[18] = v64;
    v68[19] = v67;
    *(v68 + 160) = v65;
    v69 = sub_1B0E44838();
    v70 = v80;
    v71 = v81;
    v80[21] = v69;
    v70[22] = v72;
    *(v70 + 184) = v71;
    sub_1B0394964();
    v84 = v73;
    v108 = v73;
    v107 = v73;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v85 = &v76;
    MEMORY[0x1EEE9AC00](&v76);
    v74 = sub_1B0E45028();
    v86 = v36;
    v87 = v74;
    v76 = v74;

    if (v76)
    {

      v88 = 0;
    }

    else
    {

      v88 = 3;
    }

    v89 = v86;
  }

  return v88;
}

unint64_t sub_1B0A6225C()
{
  v2 = qword_1EB6DB0C8;
  if (!qword_1EB6DB0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3BB8, &qword_1B0EA3D38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB0C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A622E4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E44B98();
    v7 = sub_1B0E44E68();

    v9 = v7;
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v5 = sub_1B0E44B98();
    v8 = MEMORY[0x1B2726DE0](v5);

    v9 = v8;
  }

  return v9 & 1;
}

uint64_t sub_1B0A62478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = a2;
  v7 = a1;
  v20 = sub_1B0A630B4;
  v24 = 0;
  v23 = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v8 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v16 = &v5 - v8;
  v15 = sub_1B0E43308();
  v12 = *(v15 - 8);
  v13 = v15 - 8;
  v10 = *(v12 + 64);
  v9 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v14 = &v5 - v9;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v17 = &v5 - v11;
  v24 = &v5 - v11;
  v23 = a1;
  sub_1B0E432F8();
  (*(v12 + 32))(v17, v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MessageIdentifierSet.ranges.getter(v16);
  v18 = &v21;
  v22 = v17;
  sub_1B0A3FF0C();
  sub_1B0E45018();
  sub_1B07D772C(v16);
  (*(v12 + 16))(v6, v17, v15);
  sub_1B03D09B8(v7);
  return (*(v12 + 8))(v17, v15);
}

uint64_t sub_1B0A626DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v10 = a1;
  v20 = 0;
  v23 = sub_1B0A62E1C;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v21 = sub_1B0E432D8();
  v11 = *(v21 - 8);
  v12 = v21 - 8;
  v13 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v19 = v6 - v13;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v15 = *(*(v3 - 8) + 64);
  v14 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v16 = v6 - v14;
  v17 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6 - v14);
  v18 = v6 - v17;
  v28 = v6 - v17;
  v27 = a1;
  sub_1B0E432E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
  sub_1B0A630DC();
  v24 = sub_1B0E44F58();
  v8 = v24;
  (*(v11 + 8))(v19, v21);
  v26 = v8;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = &v25;
  v25 = v8;
  v6[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24F8, &qword_1B0E9CD00);
  v6[1] = sub_1B041C1E8();
  sub_1B0820F14();
  MessageIdentifierSet.init<A>(_:)(v7, &type metadata for UID, v6[0]);
  sub_1B074BA2C(v16, v18);

  sub_1B03D08AC(v18, v9);
  v4 = sub_1B0E43308();
  (*(*(v4 - 8) + 8))(v10);
  return sub_1B03D09B8(v18);
}

unint64_t sub_1B0A6298C(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  v16 = 0;
  v15 = 0;
  v21 = a1;
  v22 = a2;
  v8 = sub_1B041C1E8();
  static MessageIdentifier.max.getter(&type metadata for UID, v8);
  v19[0] = v19[1];
  v9 = sub_1B03948EC();
  BinaryInteger.init<A>(_:)(v19, MEMORY[0x1E69E6530], &type metadata for UID, v9, v8);
  if (v20 < a1)
  {
    return 0;
  }

  static MessageIdentifier.min.getter(&type metadata for UID, v8);
  v17[0] = v17[1];
  BinaryInteger.init<A>(_:)(v17, MEMORY[0x1E69E6530], &type metadata for UID, v9, v8);
  if (v18 >= a2)
  {
    return 0;
  }

  result = sub_1B0A62C04(a1);
  v6 = result;
  v16 = result;
  if (!__OFSUB__(a2, 1))
  {
    v5 = sub_1B0A62C04(a2 - 1);
    v15 = v5;
    v13 = v6;
    v12 = v5;
    if (!static MessageIdentifier.<= infix(_:_:)(&v13, &v12, &type metadata for UID, v8))
    {
      sub_1B0E465A8();
      __break(1u);
    }

    v11[0] = v6;
    v11[1] = v5;
    MessageIdentifierRange.init(_:)(v11, &v14);
    v23 = v14;
    return v14 | (HIDWORD(v14) << 32);
  }

  __break(1u);
  return result;
}