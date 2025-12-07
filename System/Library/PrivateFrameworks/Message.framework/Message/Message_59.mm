void sub_1B0BC09E4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v72 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  MEMORY[0x1EEE9AC00](v72);
  v68 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v71 = &v66 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v66 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v66 - v15;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_99;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_100;
  }

  v20 = (a2 - a1) / v18;
  v79 = a1;
  v78 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v23 = v68;
    }

    else
    {
      v23 = v68;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    if (v22 < 1)
    {
      v43 = a4 + v22;
    }

    else
    {
      v40 = -v18;
      v41 = a4 + v22;
      v42 = v71;
      v43 = a4 + v22;
      v74 = a4;
      v70 = -v18;
      do
      {
        v66 = v43;
        v44 = a2;
        a2 += v40;
        v75 = a2;
        v69 = v44;
        while (1)
        {
          if (v44 <= a1)
          {
            v79 = v44;
            v77 = v66;
            goto LABEL_97;
          }

          v45 = a3;
          v67 = v43;
          v73 = v41 + v40;
          sub_1B0BC23D8(v41 + v40, v42, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
          sub_1B0BC23D8(a2, v23, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
          v47 = MessageIdentifierSet.startIndex.getter(v46);
          v49 = v48;
          v51 = v47 == MessageIdentifierSet.endIndex.getter(v46) && v49 == v50;
          v52 = v51;
          if (v51)
          {
            v53 = 0;
          }

          else
          {
            MessageIdentifierSet.subscript.getter(v49, v46, &v77);
            v53 = v77;
          }

          v54 = v68;
          v55 = MessageIdentifierSet.startIndex.getter(v46);
          v57 = v56;
          v59 = v55 == MessageIdentifierSet.endIndex.getter(v46) && v57 == v58;
          v60 = !v59;
          if (v59)
          {
            v61 = 0;
          }

          else
          {
            MessageIdentifierSet.subscript.getter(v57, v46, &v77);
            v61 = v77;
          }

          a2 = v75;
          v23 = v54;
          v62 = v53 < v61 && v60;
          v63 = v52 ? v60 : v62;
          a3 = v45 + v70;
          sub_1B0BC2440(v54, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
          sub_1B0BC2440(v71, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
          if (v63)
          {
            break;
          }

          v43 = v73;
          v64 = v74;
          if (v45 < v41 || a3 >= v41)
          {
            swift_arrayInitWithTakeFrontToBack();
            v42 = v71;
          }

          else
          {
            v42 = v71;
            if (v45 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v41 = v43;
          v44 = v69;
          v40 = v70;
          if (v73 <= v64)
          {
            a2 = v69;
            goto LABEL_96;
          }
        }

        v65 = v74;
        if (v45 < v69 || a3 >= v69)
        {
          swift_arrayInitWithTakeFrontToBack();
          v42 = v71;
          v43 = v67;
        }

        else
        {
          v42 = v71;
          v43 = v67;
          if (v45 != v69)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v40 = v70;
      }

      while (v41 > v65);
    }

LABEL_96:
    v79 = a2;
    v77 = v43;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v73 = a4 + v21;
    v77 = a4 + v21;
    if (v21 >= 1 && a2 < a3)
    {
      v69 = a3;
      v70 = v18;
      do
      {
        v75 = a2;
        sub_1B0BC23D8(a2, v16, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        v74 = a4;
        sub_1B0BC23D8(a4, v13, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
        v26 = MessageIdentifierSet.startIndex.getter(v25);
        v28 = v27;
        v30 = v26 == MessageIdentifierSet.endIndex.getter(v25) && v28 == v29;
        v31 = v30;
        if (v30)
        {
          v32 = 0;
        }

        else
        {
          MessageIdentifierSet.subscript.getter(v28, v25, &v76);
          v32 = v76;
        }

        v33 = MessageIdentifierSet.startIndex.getter(v25);
        v35 = v34;
        if (v33 == MessageIdentifierSet.endIndex.getter(v25) && v35 == v36)
        {
          sub_1B0BC2440(v13, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
          sub_1B0BC2440(v16, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
          v37 = v70;
        }

        else
        {
          MessageIdentifierSet.subscript.getter(v35, v25, &v76);
          if (v31)
          {
            sub_1B0BC2440(v13, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
            sub_1B0BC2440(v16, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
            v37 = v70;
LABEL_42:
            a4 = v74;
            a2 = v75 + v37;
            v38 = v69;
            if (a1 < v75 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v75)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            goto LABEL_47;
          }

          v39 = v76;
          sub_1B0BC2440(v13, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
          sub_1B0BC2440(v16, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
          v37 = v70;
          if (v32 < v39)
          {
            goto LABEL_42;
          }
        }

        a2 = v75;
        a4 = v74 + v37;
        v38 = v69;
        if (a1 < v74 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v74)
        {
          swift_arrayInitWithTakeBackToFront();
          v78 = a4;
          goto LABEL_47;
        }

        v78 = a4;
LABEL_47:
        a1 += v37;
        v79 = a1;
      }

      while (a4 < v73 && a2 < v38);
    }
  }

LABEL_97:
  sub_1B0BC11D4(&v79, &v78, &v77);
}

uint64_t sub_1B0BC10E4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4C40, &qword_1B0EC98A0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1B0BC11D4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_1B0BC12F8(uint64_t a1)
{
  sub_1B074F848(319);
  if (v1 <= 0x3F)
  {
    sub_1B0BC136C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B0BC136C(uint64_t a1)
{
  if (!qword_1EB6DDA88)
  {
    type metadata accessor for UploadFlagChanges.EncodedFlags(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1BE8, &qword_1B0ECD5D0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6DDA88);
    }
  }
}

void sub_1B0BC1430(uint64_t a1)
{
  sub_1B0BC1540(319, &qword_1EB6DDAA0, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B0BC1540(319, &qword_1EB6DB498, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B0BC1540(319, &qword_1EB6DA578, MEMORY[0x1E69E6948]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B0BC1540(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1B0BC15C8(uint64_t a1)
{
  sub_1B0AD428C(319, &qword_1EB6DE3E0, sub_1B041C1E8, &type metadata for UID, type metadata accessor for MessageIdentifierSet);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1B0BC169C(uint64_t a1)
{
  sub_1B0AD428C(319, &qword_1EB6DAD90, sub_1B0451ED8, &type metadata for SyncStep, MEMORY[0x1E69E64E8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UploadFlagChanges.FlagsToUpload(319);
    if (v2 <= 0x3F)
    {
      sub_1B0AD428C(319, &qword_1EB6DE3E0, sub_1B041C1E8, &type metadata for UID, type metadata accessor for MessageIdentifierSet);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1B0BC17F8()
{
  result = qword_1EB6E52C8;
  if (!qword_1EB6E52C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E52C8);
  }

  return result;
}

unint64_t sub_1B0BC184C()
{
  result = qword_1EB6DDA78;
  if (!qword_1EB6DDA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDA78);
  }

  return result;
}

unint64_t sub_1B0BC18A0()
{
  result = qword_1EB6DDA70;
  if (!qword_1EB6DDA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDA70);
  }

  return result;
}

unint64_t sub_1B0BC18F4(uint64_t a1)
{
  result = sub_1B0BC191C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0BC191C()
{
  result = qword_1EB6DDA68;
  if (!qword_1EB6DDA68)
  {
    type metadata accessor for UploadFlagChanges(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDA68);
  }

  return result;
}

void sub_1B0BC197C(__int128 *result, uint64_t a2, void *a3)
{
  v4 = *(result + 2);
  if (v4)
  {
    for (i = result + 2; ; i += 2)
    {
      v8 = i[1];
      v14[0] = *i;
      v14[1] = v8;
      v9 = i[1];
      v12 = *i;
      v13 = v9;
      sub_1B074EC14(v14, &v10);
      sub_1B0BBF5EC(&v12, a2, a3);
      if (v3)
      {
        break;
      }

      v10 = v12;
      v11 = v13;
      sub_1B03F5C58(&v10);
      if (!--v4)
      {
        return;
      }
    }

    v10 = v12;
    v11 = v13;
    sub_1B03F5C58(&v10);
  }
}

uint64_t sub_1B0BC1A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1B0AD4EFC(0, a2, a3, a4) & 1) != 0 || (result = sub_1B0AD4EFC(1, a2, a3, a4), (result))
  {
    sub_1B0BC23D8(a1, v10, type metadata accessor for UntaggedResponse);
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      memcpy(v16, v10, sizeof(v16));
      if (v16[64])
      {
        if (BYTE4(v16[1]) != 1)
        {
          v14 = v16[1];
          type metadata accessor for UploadFlagChanges(0);
          v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
          MessageIdentifierSet.remove(_:)(&v14, v12, &v15);
        }
      }

      return sub_1B0AA4C0C(v16);
    }

    else
    {
      return sub_1B0BC2440(v10, type metadata accessor for UntaggedResponse);
    }
  }

  return result;
}

void sub_1B0BC1BC4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v71 = a5;
  v70 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v70);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v67 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v67 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v67 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
  if (v27 == 16)
  {
    if (v5[1] == *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
    {
      v44 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v45 = *v5;
      v46 = *(*v5 + 16);
      if (v46 == *(v44 + 16))
      {
        v47 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v48 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        if (!v46 || v45 == v44)
        {
LABEL_12:
          if (sub_1B0AEC7C4(1, a2, a3, a4))
          {
            if ((v48 & 1) == 0)
            {
              *(v5 + *(type metadata accessor for UploadFlagChanges(0) + 48)) = 1;
            }

            v69 = v5;
            v51 = v71;
            sub_1B0BC23D8(v71, v14, type metadata accessor for MailboxTaskLogger);
            sub_1B0BC23D8(v51, v11, type metadata accessor for MailboxTaskLogger);
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            swift_bridgeObjectRetain_n();
            v52 = sub_1B0E43988();
            v53 = sub_1B0E45908();
            if (os_log_type_enabled(v52, v53))
            {
              v54 = swift_slowAlloc();
              v55 = swift_slowAlloc();
              v74 = v55;
              *v54 = 68159491;
              *(v54 + 4) = 2;
              *(v54 + 8) = 256;
              v56 = v70;
              v57 = &v11[*(v70 + 20)];
              *(v54 + 10) = *v57;
              *(v54 + 11) = 2082;
              v58 = &v14[*(v56 + 20)];
              *(v54 + 13) = sub_1B0399D64(*(v58 + 1), *(v58 + 2), &v74);
              *(v54 + 21) = 1040;
              *(v54 + 23) = 2;
              *(v54 + 27) = 512;
              LOWORD(v57) = *(v57 + 12);
              sub_1B0BC2440(v11, type metadata accessor for MailboxTaskLogger);
              *(v54 + 29) = v57;
              *(v54 + 31) = 2160;
              *(v54 + 33) = 0x786F626C69616DLL;
              *(v54 + 41) = 2085;
              v59 = *(v58 + 4);
              LODWORD(v58) = *(v58 + 10);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0BC2440(v14, type metadata accessor for MailboxTaskLogger);
              v72 = v59;
              v73 = v58;
              v60 = sub_1B0E44BA8();
              v62 = sub_1B0399D64(v60, v61, &v74);

              *(v54 + 43) = v62;
              *(v54 + 51) = 2048;
              v63 = *(v47 + 16);

              *(v54 + 53) = v63;

              _os_log_impl(&dword_1B0389000, v52, v53, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Received local flag changes for %ld messages.", v54, 0x3Du);
              swift_arrayDestroy();
              MEMORY[0x1B272C230](v55, -1, -1);
              MEMORY[0x1B272C230](v54, -1, -1);
            }

            else
            {

              sub_1B0BC2440(v11, type metadata accessor for MailboxTaskLogger);

              sub_1B0BC2440(v14, type metadata accessor for MailboxTaskLogger);
            }

            sub_1B0BBD1BC(v47, v71);
          }

          else
          {
            *(v5 + *(type metadata accessor for UploadFlagChanges(0) + 48)) = 1;
          }
        }

        else
        {
          v49 = (v45 + 32);
          v50 = (v44 + 32);
          while (*v49 == *v50)
          {
            ++v49;
            ++v50;
            if (!--v46)
            {
              goto LABEL_12;
            }
          }
        }
      }
    }
  }

  else if (v27 == 17)
  {
    v67 = v25;
    v69 = v5;
    v28 = &v67 - v26;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A8, &unk_1B0ECD730);
    v30 = swift_projectBox();
    sub_1B03B5C80(v30 + *(v29 + 48), v28, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v31 = v71;
    sub_1B0BC23D8(v71, v20, type metadata accessor for MailboxTaskLogger);
    sub_1B0BC23D8(v31, v17, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v68 = v28;
    sub_1B03B5C80(v28, v23, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v32 = sub_1B0E43988();
    v33 = sub_1B0E45908();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v74 = v71;
      *v34 = 68159491;
      *(v34 + 4) = 2;
      *(v34 + 8) = 256;
      v35 = v70;
      v36 = &v17[*(v70 + 20)];
      *(v34 + 10) = *v36;
      *(v34 + 11) = 2082;
      v37 = &v20[*(v35 + 20)];
      *(v34 + 13) = sub_1B0399D64(*(v37 + 1), *(v37 + 2), &v74);
      *(v34 + 21) = 1040;
      *(v34 + 23) = 2;
      *(v34 + 27) = 512;
      LOWORD(v36) = *(v36 + 12);
      sub_1B0BC2440(v17, type metadata accessor for MailboxTaskLogger);
      *(v34 + 29) = v36;
      *(v34 + 31) = 2160;
      *(v34 + 33) = 0x786F626C69616DLL;
      *(v34 + 41) = 2085;
      v38 = *(v37 + 4);
      LODWORD(v36) = *(v37 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0BC2440(v20, type metadata accessor for MailboxTaskLogger);
      v72 = v38;
      v73 = v36;
      v39 = sub_1B0E44BA8();
      v41 = sub_1B0399D64(v39, v40, &v74);

      *(v34 + 43) = v41;
      *(v34 + 51) = 2048;
      v42 = MessageIdentifierSet.count.getter();
      sub_1B0398EFC(v23, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      *(v34 + 53) = v42;
      _os_log_impl(&dword_1B0389000, v32, v33, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] %ld messages have flag changes after copy", v34, 0x3Du);
      v43 = v71;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v43, -1, -1);
      MEMORY[0x1B272C230](v34, -1, -1);
    }

    else
    {
      sub_1B0398EFC(v23, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0BC2440(v17, type metadata accessor for MailboxTaskLogger);

      sub_1B0BC2440(v20, type metadata accessor for MailboxTaskLogger);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    v64 = v68;
    v65 = sub_1B0E46E98();
    sub_1B0398EFC(v64, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (v65)
    {
      v66 = 2;
    }

    else
    {
      v66 = 3;
    }

    *(v69 + *(type metadata accessor for UploadFlagChanges(0) + 52)) = v66;
  }
}

uint64_t sub_1B0BC23D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0BC2440(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0BC24A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for DownloadRequest.QoS(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DownloadRequest.QoS(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B0BC2670()
{
  result = qword_1EB6E52F8;
  if (!qword_1EB6E52F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E52F8);
  }

  return result;
}

uint64_t sub_1B0BC26C4@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3] >> 1;
  if (v2 == v3)
  {
    *a1 = xmmword_1B0EC58F0;
  }

  else if (v2 < v3)
  {
    v4 = *(v1[1] + 16 * v2);
    *a1 = v4;
    v1[2] = v2 + 1;
    return sub_1B03B2000(v4, *(&v4 + 1));
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1B0BC270C(_BOOL8 *a1, uint64_t *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3 >> 60 == 11)
  {
    return v4 >> 60 == 11;
  }

  if (v3 >> 60 == 15)
  {
    return v4 >> 60 == 15;
  }

  if (((v4 >> 60) | 4) == 0xF)
  {
    return 0;
  }

  return sub_1B0AB8858(*a1, v3, *a2, v4);
}

BOOL sub_1B0BC2774(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = v7 & 0x3000000000000000;
  v9 = (v5 >> 60) & 3;
  if (!v9)
  {
    if (!v8)
    {
      return sub_1B0AB8858(v4, v5, v6, v7);
    }

    return 0;
  }

  if (v9 == 1)
  {
    if (v8 == 0x1000000000000000)
    {
      v5 &= 0xCFFFFFFFFFFFFFFFLL;
      v7 &= 0xCFFFFFFFFFFFFFFFLL;
      return sub_1B0AB8858(v4, v5, v6, v7);
    }

    return 0;
  }

  return v8 == 0x2000000000000000 && v6 == 0 && v7 == 0x2000000000000000;
}

uint64_t sub_1B0BC27E0()
{
  result = sub_1B03D0770(&unk_1F27111A0);
  qword_1EB737DA0 = result;
  return result;
}

uint64_t sub_1B0BC2808(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = v2 == v3;
  }

  v6 = v5;
  v8 = v4 == 1 && v2 == v3;
  v10 = v4 == 2 && v3 == 0;
  v12 = v4 == 2 && v3 == 1;
  if (v2)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  if (*(a1 + 8) == 1)
  {
    v13 = v8;
  }

  if (*(a1 + 8))
  {
    return v13;
  }

  else
  {
    return v6;
  }
}

void sub_1B0BC28D0(uint64_t a1)
{
  v2 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v20 - v6;
  sub_1B0A96394(a1, v20 - v6, type metadata accessor for MailboxTaskLogger);
  sub_1B0A96394(a1, v4, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v8 = sub_1B0E43988();
  v9 = sub_1B0E45908();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 68159235;
    *(v10 + 4) = 2;
    *(v10 + 8) = 256;
    v12 = &v4[*(v2 + 20)];
    *(v10 + 10) = *v12;
    *(v10 + 11) = 2082;
    v13 = &v7[*(v2 + 20)];
    *(v10 + 13) = sub_1B0399D64(*(v13 + 1), *(v13 + 2), &v22);
    *(v10 + 21) = 1040;
    *(v10 + 23) = 2;
    *(v10 + 27) = 512;
    v14 = *(v12 + 12);
    sub_1B0BC7C78(v4, type metadata accessor for MailboxTaskLogger);
    *(v10 + 29) = v14;
    *(v10 + 31) = 2160;
    *(v10 + 33) = 0x786F626C69616DLL;
    *(v10 + 41) = 2085;
    v15 = *(v13 + 4);
    v16 = *(v13 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0BC7C78(v7, type metadata accessor for MailboxTaskLogger);
    v20[1] = v15;
    v21 = v16;
    v17 = sub_1B0E44BA8();
    v19 = sub_1B0399D64(v17, v18, &v22);

    *(v10 + 43) = v19;
    _os_log_impl(&dword_1B0389000, v8, v9, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task.", v10, 0x33u);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v11, -1, -1);
    MEMORY[0x1B272C230](v10, -1, -1);
  }

  else
  {
    sub_1B0BC7C78(v4, type metadata accessor for MailboxTaskLogger);

    sub_1B0BC7C78(v7, type metadata accessor for MailboxTaskLogger);
  }
}

void sub_1B0BC2BA4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v94 = a4;
  v95 = a5;
  v96 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v92 = &v85 - v11;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v87 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v86 = &v85 - v14;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v93);
  v88 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v85 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v89 = &v85 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5308, &qword_1B0ECD990);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v85 - v22;
  v24 = type metadata accessor for UploadMessages.PendingUpload(0);
  v25 = *(v24 - 8);
  v26.n128_f64[0] = MEMORY[0x1EEE9AC00](v24);
  v28 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v6;
  if (*(v6 + 120) == 2 && !*(v6 + 112))
  {
    if ((sub_1B0B7148C(0, 0xF000000000000000, a2, a3, v26) & 1) == 0)
    {
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5310, &qword_1B0ECDD08);
      v43 = v96;
      v44 = v96 + *(v42 + 48);
      *v96 = xmmword_1B0EC58F0;
      v45 = *(v29 + 32);
      *v44 = *(v29 + 24);
      *(v44 + 2) = v45;
      *(v44 + 2) = &unk_1F27113F8;
      type metadata accessor for ClientCommand(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v42 - 8) + 56))(v43, 0, 1, v42);

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      return;
    }

    if ((sub_1B0A995C4(0, 0xF000000000000000, a1, a2, a3) & 1) == 0)
    {
LABEL_6:
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5310, &qword_1B0ECDD08);
      v31 = *(*(v30 - 8) + 56);
      v32 = v30;
      v33 = v96;

      v31(v33, 1, 1, v32);
      return;
    }
  }

  if (sub_1B0AECE50(1, a1, a2, a3))
  {
    goto LABEL_6;
  }

  v85 = type metadata accessor for UploadMessages(0);
  v34 = *(v85 + 52);
  sub_1B03B5C80(v29 + v34, v23, &qword_1EB6E5308, &qword_1B0ECD990);
  if ((*(v25 + 48))(v23, 1, v24) != 1)
  {
    sub_1B0BC7CD8(v23, v28);
    sub_1B0398EFC(v29 + v34, &qword_1EB6E5308, &qword_1B0ECD990);
    (*(v25 + 56))(v29 + v34, 1, 1, v24);
    v46 = *(v95 + 88);
    v47 = *(v95 + 120);
    v99[4] = *(v95 + 104);
    v99[5] = v47;
    v100 = *(v95 + 136);
    v48 = *(v95 + 56);
    v99[0] = *(v95 + 40);
    v99[1] = v48;
    v99[2] = *(v95 + 72);
    v99[3] = v46;
    v49 = 256;
    if ((v28[17] & 1) == 0)
    {
      v49 = 0;
    }

    v50 = 0x10000;
    if ((v28[18] & 1) == 0)
    {
      v50 = 0;
    }

    v51 = 0x1000000;
    if ((v28[19] & 1) == 0)
    {
      v51 = 0;
    }

    v52 = 0x100000000;
    if ((v28[20] & 1) == 0)
    {
      v52 = 0;
    }

    v53 = 0x10000000000;
    if ((v28[21] & 1) == 0)
    {
      v53 = 0;
    }

    v54 = v28[16] & 1 | (v28[22] << 48) | v49 | v50 | v51 | v52 | v53 | (v28[23] << 56);
    v97[0] = v28[24] & 1;
    *&v97[1] = 2;
    v98 = 0;
    v55 = FlagEncoder.encode(_:)(v54, *v97, 0);

    v56 = *v28;
    v57 = *(v28 + 1);
    v58 = (v29 + *(v85 + 56));
    v59 = *v58;
    v60 = v58[1];
    sub_1B03B2000(*v28, v57);
    sub_1B050755C(v59, v60);
    *v58 = v56;
    v58[1] = v57;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5310, &qword_1B0ECDD08);
    v62 = v96;
    v63 = v96 + *(v61 + 48);
    *v96 = *v28;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC0, &unk_1B0ED8640);
    v65 = *(v64 + 64);
    v66 = *(v64 + 80);
    v67 = *(v29 + 32);
    *v63 = *(v29 + 24);
    *(v63 + 2) = v67;
    *(v63 + 2) = v55;
    sub_1B03C60A4(&v28[*(v24 + 24)], &v63[v65], &unk_1EB6E2990, &qword_1B0E9B060);
    *&v63[v66] = *&v28[*(v24 + 28)];
    type metadata accessor for ClientCommand(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v61 - 8) + 56))(v62, 0, 1, v61);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return;
  }

  v35 = v85;
  sub_1B0398EFC(v23, &qword_1EB6E5308, &qword_1B0ECD990);
  if (sub_1B0BC3658(a1, a2, a3, v94) & 1) == 0 || (sub_1B0B7148C(0, 0xB000000000000000, a2, a3, v36))
  {
LABEL_38:
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5310, &qword_1B0ECDD08);
    (*(*(v76 - 8) + 56))(v96, 1, 1, v76);
    return;
  }

  v37 = *(v29 + *(v35 + 68));
  sub_1B03D06F8();
  sub_1B0E46EE8();
  v38 = *(v37 + 16);
  v39 = v93;
  if (!v38)
  {
LABEL_33:
    v68 = v89;
    sub_1B03C60A4(v18, v89, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v69 = v88;
    sub_1B03B5C80(v68, v88, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_1B0398EFC(v69, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v73 = 1;
      v72 = v92;
    }

    else
    {
      v70 = v87;
      sub_1B03C60A4(v69, v87, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v71 = v70;
      v72 = v92;
      sub_1B03C60A4(v71, v92, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v73 = 0;
    }

    v74 = v90;
    v75 = v91;
    (*(v90 + 56))(v72, v73, 1, v91);
    if ((*(v74 + 48))(v72, 1, v75) != 1)
    {
      v77 = v86;
      sub_1B03C60A4(v72, v86, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v78 = &unk_1F2710668;
      v79 = &unk_1F2710770;
      if (*(v29 + 105))
      {
        v78 = &unk_1F27106D8;
        v79 = &unk_1F2710808;
      }

      if (*(v29 + 104))
      {
        v80 = v78;
      }

      else
      {
        v80 = v79;
      }

      sub_1B0398EFC(v68, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5310, &qword_1B0ECDD08);
      v82 = v96;
      v83 = v96 + *(v81 + 48);
      *v96 = xmmword_1B0ECD820;
      v84 = v83 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48);
      sub_1B03C60A4(v77, v83, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      *v84 = v80;
      *(v84 + 8) = 0;
      *(v84 + 16) = 1;
      type metadata accessor for ClientCommand(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v81 - 8) + 56))(v82, 0, 1, v81);
      return;
    }

    sub_1B0398EFC(v68, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v72, &unk_1EB6E3670, &unk_1B0E9B260);
    goto LABEL_38;
  }

  v40 = 0;
  v41 = (v37 + 57);
  while (v40 < *(v37 + 16))
  {
    if ((*v41 & 1) == 0 && (*(v41 - 1) & 1) == 0)
    {
      *v97 = HIDWORD(*(v41 - 9));
      MessageIdentifierSet.insert(_:)(v99, v97, v39);
    }

    ++v40;
    v41 += 32;
    if (v38 == v40)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
}

uint64_t sub_1B0BC3658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B0B12358(0, 0x2000000000000000, a1, a2, a4);
  if ((result & 1) == 0)
  {
    return 0;
  }

  v8 = *(v4 + 128);
  v9 = (v8 + 40);
  v10 = -*(v8 + 16);
  v11 = -1;
  while (v10 + v11 != -1)
  {
    if (++v11 >= *(v8 + 16))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

    v12 = v9 + 2;
    v14 = *(v9 - 1);
    v13 = *v9;
    sub_1B03B2000(v14, *v9);
    v15 = sub_1B0A995C4(v14, v13, a1, a2, a3);
    result = sub_1B0391D50(v14, v13);
    v9 = v12;
    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  result = type metadata accessor for UploadMessages(0);
  v17 = *(v4 + *(result + 68));
  v18 = (v17 + 40);
  v19 = -*(v17 + 16);
  v20 = -1;
  do
  {
    v16 = v19 + v20 == -1;
    if (v19 + v20 == -1)
    {
      break;
    }

    if (++v20 >= *(v17 + 16))
    {
      goto LABEL_14;
    }

    v21 = v18 + 4;
    v23 = *(v18 - 1);
    v22 = *v18;
    sub_1B03B2000(v23, *v18);
    v24 = sub_1B0B12358(v23, v22, a1, a2, a4);
    result = sub_1B0391D50(v23, v22);
    v18 = v21;
  }

  while ((v24 & 1) != 0);
  return v16;
}

void sub_1B0BC37CC(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, void *a5, int a6, uint64_t a7, uint64_t a8)
{
  v195 = a8;
  v193 = a6;
  v191 = a4;
  v192 = a5;
  v194 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v180 - v11;
  v13 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v180 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v180 - v20;
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v180 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v180 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v180 - v30;
  MEMORY[0x1EEE9AC00](v32);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v180 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v44 = &v180 - v40;
  if (a2 >> 60 == 11)
  {
    return;
  }

  if (a2 >> 60 == 15)
  {
    if (*(v8 + 120) == 2 && !*(v8 + 112))
    {
      v45 = v37;
      v190 = v8;
      v46 = v195;
      sub_1B0A96394(v195, &v180 - v40, type metadata accessor for MailboxTaskLogger);
      sub_1B0A96394(v46, v35, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v47 = sub_1B0E43988();
      v48 = sub_1B0E458E8();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v198 = v50;
        *v49 = 68159235;
        *(v49 + 4) = 2;
        *(v49 + 8) = 256;
        v51 = v45;
        v52 = &v35[*(v45 + 20)];
        *(v49 + 10) = *v52;
        *(v49 + 11) = 2082;
        v53 = &v44[*(v51 + 20)];
        *(v49 + 13) = sub_1B0399D64(*(v53 + 1), *(v53 + 2), &v198);
        *(v49 + 21) = 1040;
        *(v49 + 23) = 2;
        *(v49 + 27) = 512;
        LOWORD(v52) = *(v52 + 12);
        sub_1B0BC7C78(v35, type metadata accessor for MailboxTaskLogger);
        *(v49 + 29) = v52;
        *(v49 + 31) = 2160;
        *(v49 + 33) = 0x786F626C69616DLL;
        *(v49 + 41) = 2085;
        v54 = *(v53 + 4);
        v55 = *(v53 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0BC7C78(v44, type metadata accessor for MailboxTaskLogger);
        v196 = v54;
        v197 = v55;
        v56 = sub_1B0E44BA8();
        v58 = sub_1B0399D64(v56, v57, &v198);

        *(v49 + 43) = v58;
        _os_log_impl(&dword_1B0389000, v47, v48, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Server supports mailbox specific APPENDLIMIT, but did not return its value.", v49, 0x33u);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v50, -1, -1);
        MEMORY[0x1B272C230](v49, -1, -1);
      }

      else
      {
        sub_1B0BC7C78(v35, type metadata accessor for MailboxTaskLogger);

        sub_1B0BC7C78(v44, type metadata accessor for MailboxTaskLogger);
      }

      v83 = v190;
      *(v190 + 112) = 1;
      *(v83 + 120) = 2;
    }

    return;
  }

  v187 = v38;
  v188 = v37;
  v183 = v31;
  v184 = v41;
  v185 = v39;
  v186 = v42;
  v59 = v43;
  v189 = type metadata accessor for UploadMessages(0);
  v60 = v189[14];
  v61 = *(v8 + v60);
  v62 = *(v8 + v60 + 8);
  if (v62 >> 60 == 15)
  {
    return;
  }

  *(v8 + v60) = xmmword_1B0EC58F0;
  v180 = v61;
  v63 = v61;
  sub_1B03B2000(v61, v62);
  v181 = v63;
  v182 = v62;
  sub_1B050755C(v63, v62);
  v190 = v8;
  if (!v193)
  {
    if ((~v194 & 0xF000000000000007) != 0 && ((v194 >> 59) & 0x1E | (v194 >> 2) & 1) == 7)
    {
      v84 = type metadata accessor for ResponseCodeAppend(0);
      v85 = swift_projectBox();
      v86 = *v85;
      sub_1B03B5C80(v85 + *(v84 + 20), v12, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      v88 = MessageIdentifierSet.startIndex.getter(v87);
      v90 = v89;
      if (v88 == MessageIdentifierSet.endIndex.getter(v87) && v90 == v91)
      {
        sub_1B0398EFC(v12, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        __break(1u);
        return;
      }

      MessageIdentifierSet.subscript.getter(v90, v87, &v196);
      v92 = v196;
      sub_1B0398EFC(v12, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v93 = v195;
      v94 = v184;
      sub_1B0A96394(v195, v184, type metadata accessor for MailboxTaskLogger);
      v95 = v183;
      sub_1B0A96394(v93, v183, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v96 = sub_1B0E43988();
      v97 = sub_1B0E45908();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v198 = v99;
        *v98 = 68159491;
        v194 = v92;
        v195 = v86;
        *(v98 + 4) = 2;
        *(v98 + 8) = 256;
        v100 = v188;
        v101 = v95 + *(v188 + 20);
        *(v98 + 10) = *v101;
        *(v98 + 11) = 2082;
        v102 = v94 + *(v100 + 20);
        *(v98 + 13) = sub_1B0399D64(*(v102 + 8), *(v102 + 16), &v198);
        *(v98 + 21) = 1040;
        *(v98 + 23) = 2;
        *(v98 + 27) = 512;
        LOWORD(v101) = *(v101 + 24);
        sub_1B0BC7C78(v95, type metadata accessor for MailboxTaskLogger);
        *(v98 + 29) = v101;
        *(v98 + 31) = 2160;
        *(v98 + 33) = 0x786F626C69616DLL;
        *(v98 + 41) = 2085;
        v103 = *(v102 + 32);
        LODWORD(v102) = *(v102 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0BC7C78(v94, type metadata accessor for MailboxTaskLogger);
        v196 = v103;
        v197 = v102;
        v104 = sub_1B0E44BA8();
        v106 = sub_1B0399D64(v104, v105, &v198);
        v86 = v195;

        *(v98 + 43) = v106;
        v92 = v194;
        *(v98 + 51) = 1024;
        *(v98 + 53) = v92;
        _os_log_impl(&dword_1B0389000, v96, v97, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] APPEND succeeded with UID %u.", v98, 0x39u);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v99, -1, -1);
        MEMORY[0x1B272C230](v98, -1, -1);
      }

      else
      {
        sub_1B0BC7C78(v95, type metadata accessor for MailboxTaskLogger);

        sub_1B0BC7C78(v94, type metadata accessor for MailboxTaskLogger);
      }

      v149 = v190;
      v150 = v189[17];
      v151 = *(v190 + v150);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v151 = sub_1B0B00CBC(0, *(v151 + 2) + 1, 1, v151);
      }

      v174 = *(v151 + 2);
      v173 = *(v151 + 3);
      if (v174 >= v173 >> 1)
      {
        v151 = sub_1B0B00CBC((v173 > 1), v174 + 1, 1, v151);
      }

      *(v151 + 2) = v174 + 1;
      v175 = &v151[32 * v174];
      v176 = v182;
      *(v175 + 4) = v181;
      *(v175 + 5) = v176;
      *(v175 + 6) = v86 | (v92 << 32);
      *(v175 + 28) = 0;
      goto LABEL_47;
    }

    v124 = v195;
    sub_1B0A96394(v195, v28, type metadata accessor for MailboxTaskLogger);
    sub_1B0A96394(v124, v25, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v125 = sub_1B0E43988();
    v126 = sub_1B0E45908();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v198 = v128;
      *v127 = 68159235;
      *(v127 + 4) = 2;
      *(v127 + 8) = 256;
      v129 = v188;
      v130 = &v25[*(v188 + 20)];
      *(v127 + 10) = *v130;
      *(v127 + 11) = 2082;
      v131 = &v28[*(v129 + 20)];
      *(v127 + 13) = sub_1B0399D64(*(v131 + 1), *(v131 + 2), &v198);
      *(v127 + 21) = 1040;
      *(v127 + 23) = 2;
      *(v127 + 27) = 512;
      LOWORD(v130) = *(v130 + 12);
      sub_1B0BC7C78(v25, type metadata accessor for MailboxTaskLogger);
      *(v127 + 29) = v130;
      *(v127 + 31) = 2160;
      *(v127 + 33) = 0x786F626C69616DLL;
      *(v127 + 41) = 2085;
      v132 = *(v131 + 4);
      LODWORD(v131) = *(v131 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0BC7C78(v28, type metadata accessor for MailboxTaskLogger);
      v196 = v132;
      v197 = v131;
      v133 = sub_1B0E44BA8();
      v135 = sub_1B0399D64(v133, v134, &v198);

      *(v127 + 43) = v135;
      _os_log_impl(&dword_1B0389000, v125, v126, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] APPEND succeeded without UIDValidity.", v127, 0x33u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v128, -1, -1);
      MEMORY[0x1B272C230](v127, -1, -1);
    }

    else
    {
      sub_1B0BC7C78(v25, type metadata accessor for MailboxTaskLogger);

      sub_1B0BC7C78(v28, type metadata accessor for MailboxTaskLogger);
    }

    v149 = v190;
    v150 = v189[17];
    v151 = *(v190 + v150);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v151 = sub_1B0B00CBC(0, *(v151 + 2) + 1, 1, v151);
    }

    v165 = *(v151 + 2);
    v164 = *(v151 + 3);
    if (v165 >= v164 >> 1)
    {
      v151 = sub_1B0B00CBC((v164 > 1), v165 + 1, 1, v151);
    }

    *(v151 + 2) = v165 + 1;
    v155 = &v151[32 * v165];
    v166 = v182;
    *(v155 + 4) = v181;
    *(v155 + 5) = v166;
    *(v155 + 6) = 0;
    v156 = 1;
LABEL_46:
    *(v155 + 28) = v156;
LABEL_47:
    *(v149 + v150) = v151;
    return;
  }

  if (v193 != 1)
  {
    v107 = v195;
    sub_1B0A96394(v195, v59, type metadata accessor for MailboxTaskLogger);
    sub_1B0A96394(v107, v15, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v108 = v194;
    sub_1B04420D8(v194);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v109 = sub_1B0E43988();
    v110 = sub_1B0E45908();
    sub_1B0447F00(v108);

    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v195 = swift_slowAlloc();
      v198 = v195;
      *v111 = 68159491;
      *(v111 + 4) = 2;
      *(v111 + 8) = 256;
      v112 = v188;
      v113 = &v15[*(v188 + 20)];
      *(v111 + 10) = *v113;
      *(v111 + 11) = 2082;
      v114 = v59 + *(v112 + 20);
      *(v111 + 13) = sub_1B0399D64(*(v114 + 8), *(v114 + 16), &v198);
      *(v111 + 21) = 1040;
      *(v111 + 23) = 2;
      *(v111 + 27) = 512;
      LOWORD(v113) = *(v113 + 12);
      sub_1B0BC7C78(v15, type metadata accessor for MailboxTaskLogger);
      *(v111 + 29) = v113;
      *(v111 + 31) = 2160;
      *(v111 + 33) = 0x786F626C69616DLL;
      *(v111 + 41) = 2085;
      v115 = *(v114 + 32);
      v116 = *(v114 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0BC7C78(v59, type metadata accessor for MailboxTaskLogger);
      v196 = v115;
      v197 = v116;
      v117 = sub_1B0E44BA8();
      v119 = sub_1B0399D64(v117, v118, &v198);

      *(v111 + 43) = v119;
      *(v111 + 51) = 2082;
      v120 = ResponseText.debugDescription.getter(v108, v191, v192);
      v122 = sub_1B0399D64(v120, v121, &v198);

      *(v111 + 53) = v122;
      _os_log_impl(&dword_1B0389000, v109, v110, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] APPEND failed: %{public}s", v111, 0x3Du);
      v123 = v195;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v123, -1, -1);
      MEMORY[0x1B272C230](v111, -1, -1);
    }

    else
    {
      sub_1B0BC7C78(v15, type metadata accessor for MailboxTaskLogger);

      sub_1B0BC7C78(v59, type metadata accessor for MailboxTaskLogger);
    }

    v149 = v190;
    v150 = v189[17];
    v151 = *(v190 + v150);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v151 = sub_1B0B00CBC(0, *(v151 + 2) + 1, 1, v151);
    }

    v152 = v180;
    v154 = *(v151 + 2);
    v153 = *(v151 + 3);
    if (v154 >= v153 >> 1)
    {
      v177 = sub_1B0B00CBC((v153 > 1), v154 + 1, 1, v151);
      v152 = v180;
      v151 = v177;
    }

    *(v151 + 2) = v154 + 1;
    v155 = &v151[32 * v154];
    *(v155 + 2) = v152;
    *(v155 + 6) = 0;
    v156 = 256;
    goto LABEL_46;
  }

  v64 = v194;
  if ((~v194 & 0xF000000000000007) != 0 && v194 == 0x800000000000002CLL)
  {
    v136 = v195;
    v137 = v185;
    sub_1B0A96394(v195, v185, type metadata accessor for MailboxTaskLogger);
    sub_1B0A96394(v136, v21, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v138 = sub_1B0E43988();
    v139 = sub_1B0E45908();
    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v198 = v141;
      *v140 = 68159235;
      *(v140 + 4) = 2;
      *(v140 + 8) = 256;
      v142 = v188;
      v143 = &v21[*(v188 + 20)];
      *(v140 + 10) = *v143;
      *(v140 + 11) = 2082;
      v144 = v137 + *(v142 + 20);
      *(v140 + 13) = sub_1B0399D64(*(v144 + 8), *(v144 + 16), &v198);
      *(v140 + 21) = 1040;
      *(v140 + 23) = 2;
      *(v140 + 27) = 512;
      LOWORD(v143) = *(v143 + 12);
      sub_1B0BC7C78(v21, type metadata accessor for MailboxTaskLogger);
      *(v140 + 29) = v143;
      *(v140 + 31) = 2160;
      *(v140 + 33) = 0x786F626C69616DLL;
      *(v140 + 41) = 2085;
      v145 = *(v144 + 32);
      LODWORD(v143) = *(v144 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0BC7C78(v137, type metadata accessor for MailboxTaskLogger);
      v196 = v145;
      v197 = v143;
      v146 = sub_1B0E44BA8();
      v148 = sub_1B0399D64(v146, v147, &v198);

      *(v140 + 43) = v148;
      _os_log_impl(&dword_1B0389000, v138, v139, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] APPEND failed with “No, try create”.", v140, 0x33u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v141, -1, -1);
      MEMORY[0x1B272C230](v140, -1, -1);
    }

    else
    {
      sub_1B0BC7C78(v21, type metadata accessor for MailboxTaskLogger);

      sub_1B0BC7C78(v137, type metadata accessor for MailboxTaskLogger);
    }

    v167 = v190;
    v168 = v189[16];
    v169 = *(v190 + v168);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v169 = sub_1B0B006F4(0, *(v169 + 2) + 1, 1, v169);
    }

    v170 = v180;
    v172 = *(v169 + 2);
    v171 = *(v169 + 3);
    if (v172 >= v171 >> 1)
    {
      v179 = sub_1B0B006F4((v171 > 1), v172 + 1, 1, v169);
      v170 = v180;
      v169 = v179;
    }

    *(v169 + 2) = v172 + 1;
    *&v169[16 * v172 + 32] = v170;
    *(v167 + v168) = v169;
  }

  else
  {
    v65 = v195;
    v66 = v186;
    sub_1B0A96394(v195, v186, type metadata accessor for MailboxTaskLogger);
    v67 = v187;
    sub_1B0A96394(v65, v187, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B04420D8(v64);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v68 = sub_1B0E43988();
    v69 = sub_1B0E45908();
    sub_1B0447F00(v64);

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v198 = v71;
      *v70 = 68159491;
      *(v70 + 4) = 2;
      *(v70 + 8) = 256;
      v72 = v188;
      v73 = v67 + *(v188 + 20);
      *(v70 + 10) = *v73;
      *(v70 + 11) = 2082;
      v74 = v66;
      v75 = v66 + *(v72 + 20);
      *(v70 + 13) = sub_1B0399D64(*(v75 + 8), *(v75 + 16), &v198);
      *(v70 + 21) = 1040;
      *(v70 + 23) = 2;
      *(v70 + 27) = 512;
      LOWORD(v73) = *(v73 + 24);
      sub_1B0BC7C78(v67, type metadata accessor for MailboxTaskLogger);
      *(v70 + 29) = v73;
      *(v70 + 31) = 2160;
      *(v70 + 33) = 0x786F626C69616DLL;
      *(v70 + 41) = 2085;
      v76 = *(v75 + 32);
      LODWORD(v75) = *(v75 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0BC7C78(v74, type metadata accessor for MailboxTaskLogger);
      v196 = v76;
      v197 = v75;
      v77 = sub_1B0E44BA8();
      v79 = sub_1B0399D64(v77, v78, &v198);

      *(v70 + 43) = v79;
      *(v70 + 51) = 2082;
      v80 = ResponseText.debugDescription.getter(v194, v191, v192);
      v82 = sub_1B0399D64(v80, v81, &v198);

      *(v70 + 53) = v82;
      _os_log_impl(&dword_1B0389000, v68, v69, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] APPEND failed: %{public}s", v70, 0x3Du);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v71, -1, -1);
      MEMORY[0x1B272C230](v70, -1, -1);
    }

    else
    {
      sub_1B0BC7C78(v67, type metadata accessor for MailboxTaskLogger);

      sub_1B0BC7C78(v66, type metadata accessor for MailboxTaskLogger);
    }

    v157 = v190;
    v158 = v189[17];
    v159 = *(v190 + v158);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v159 = sub_1B0B00CBC(0, *(v159 + 2) + 1, 1, v159);
    }

    v160 = v182;
    v162 = *(v159 + 2);
    v161 = *(v159 + 3);
    if (v162 >= v161 >> 1)
    {
      v178 = sub_1B0B00CBC((v161 > 1), v162 + 1, 1, v159);
      v160 = v182;
      v159 = v178;
    }

    *(v159 + 2) = v162 + 1;
    v163 = &v159[32 * v162];
    *(v163 + 4) = v181;
    *(v163 + 5) = v160;
    *(v163 + 6) = 0;
    *(v163 + 28) = 256;
    *(v157 + v158) = v159;
  }
}

void sub_1B0BC4C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v86 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v86);
  v90 = &v82[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v89 = &v82[-v8];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v82[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v82[-v13];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v82[-v16];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v82[-v19];
  v21 = type metadata accessor for UploadMessages(0);
  v22 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B0AFC4(v22);
  v23 = a2;

  v87 = a3;
  v88 = v21;
  if (*(a2 + *(v21 + 72)) == 1)
  {
    sub_1B0A96394(a3, v20, type metadata accessor for MailboxTaskLogger);
    sub_1B0A96394(a3, v17, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v24 = sub_1B0E43988();
    v25 = sub_1B0E45908();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v93 = v27;
      *v26 = 68159235;
      *(v26 + 4) = 2;
      *(v26 + 8) = 256;
      v28 = v86;
      v29 = *(v86 + 20);
      v85 = a1;
      v30 = &v17[v29];
      *(v26 + 10) = v17[v29];
      *(v26 + 11) = 2082;
      v31 = &v20[*(v28 + 20)];
      *(v26 + 13) = sub_1B0399D64(*(v31 + 1), *(v31 + 2), &v93);
      *(v26 + 21) = 1040;
      *(v26 + 23) = 2;
      *(v26 + 27) = 512;
      LOWORD(v30) = *(v30 + 12);
      sub_1B0BC7C78(v17, type metadata accessor for MailboxTaskLogger);
      *(v26 + 29) = v30;
      *(v26 + 31) = 2160;
      *(v26 + 33) = 0x786F626C69616DLL;
      *(v26 + 41) = 2085;
      v32 = *(v31 + 4);
      LODWORD(v30) = *(v31 + 10);
      v23 = a2;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0BC7C78(v20, type metadata accessor for MailboxTaskLogger);
      v91 = v32;
      v92 = v30;
      a1 = v85;
      v33 = sub_1B0E44BA8();
      v35 = sub_1B0399D64(v33, v34, &v93);

      *(v26 + 43) = v35;
      _os_log_impl(&dword_1B0389000, v24, v25, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence has more messages to upload. Will mark as needing to re-run.", v26, 0x33u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v27, -1, -1);
      MEMORY[0x1B272C230](v26, -1, -1);
    }

    else
    {
      sub_1B0BC7C78(v17, type metadata accessor for MailboxTaskLogger);

      sub_1B0BC7C78(v20, type metadata accessor for MailboxTaskLogger);
    }

    sub_1B03BDE74(6u);
    sub_1B03BDD7C(&v91, 6);
    v37 = v88;
  }

  else
  {
    v36 = *(type metadata accessor for MailboxSyncState(0) + 52);
    v37 = v88;
    if (*(a1 + v36) == 1)
    {
      v38 = v87;
      sub_1B0A96394(v87, v14, type metadata accessor for MailboxTaskLogger);
      sub_1B0A96394(v38, v11, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v39 = sub_1B0E43988();
      v40 = sub_1B0E45908();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v93 = v84;
        *v41 = 68159235;
        v83 = v40;
        *(v41 + 4) = 2;
        *(v41 + 8) = 256;
        v42 = v86;
        v43 = *(v86 + 20);
        v85 = v23;
        v44 = a1;
        v45 = &v11[v43];
        *(v41 + 10) = v11[v43];
        *(v41 + 11) = 2082;
        v46 = &v14[*(v42 + 20)];
        *(v41 + 13) = sub_1B0399D64(*(v46 + 1), *(v46 + 2), &v93);
        *(v41 + 21) = 1040;
        *(v41 + 23) = 2;
        *(v41 + 27) = 512;
        LOWORD(v45) = *(v45 + 12);
        sub_1B0BC7C78(v11, type metadata accessor for MailboxTaskLogger);
        *(v41 + 29) = v45;
        a1 = v44;
        *(v41 + 31) = 2160;
        *(v41 + 33) = 0x786F626C69616DLL;
        *(v41 + 41) = 2085;
        v47 = *(v46 + 4);
        LODWORD(v46) = *(v46 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0BC7C78(v14, type metadata accessor for MailboxTaskLogger);
        v91 = v47;
        v92 = v46;
        v48 = sub_1B0E44BA8();
        v50 = sub_1B0399D64(v48, v49, &v93);

        *(v41 + 43) = v50;
        v23 = v85;
        _os_log_impl(&dword_1B0389000, v39, v83, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removing all messages pending upload.", v41, 0x33u);
        v51 = v84;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v51, -1, -1);
        MEMORY[0x1B272C230](v41, -1, -1);
      }

      else
      {
        sub_1B0BC7C78(v11, type metadata accessor for MailboxTaskLogger);

        sub_1B0BC7C78(v14, type metadata accessor for MailboxTaskLogger);
      }

      *(a1 + v36) = 0;
    }
  }

  v52 = 0;
  v53 = 0;
  v54 = *(v23 + *(v37 + 68));
  v55 = *(v54 + 16);
  v56 = v54 + 57;
LABEL_12:
  v57 = (v56 + 32 * v52);
  while (v55 != v52)
  {
    if (v52 >= v55)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      return;
    }

    v58 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      goto LABEL_33;
    }

    v59 = *v57;
    v57 += 32;
    ++v52;
    if ((v59 & 1) == 0)
    {
      v52 = v58;
      if (!__OFADD__(v53++, 1))
      {
        goto LABEL_12;
      }

      __break(1u);
      break;
    }
  }

  if (v53 >= 1)
  {
    v61 = v87;
    sub_1B0A96394(v87, v89, type metadata accessor for MailboxTaskLogger);
    sub_1B0A96394(v61, v90, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v62 = sub_1B0E43988();
    v63 = sub_1B0E45908();
    if (!os_log_type_enabled(v62, v63))
    {
      sub_1B0BC7C78(v90, type metadata accessor for MailboxTaskLogger);

      sub_1B0BC7C78(v89, type metadata accessor for MailboxTaskLogger);
      v78 = *(v23 + 120);
      if (!*(v23 + 120))
      {
        return;
      }

      goto LABEL_26;
    }

    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v66 = v89;
    v67 = v90;
    v88 = v65;
    v93 = v65;
    *v64 = 68159491;
    *(v64 + 4) = 2;
    *(v64 + 8) = 256;
    v68 = v86;
    v69 = *(v86 + 20);
    v85 = a1;
    v70 = &v67[v69];
    *(v64 + 10) = v67[v69];
    *(v64 + 11) = 2082;
    v71 = &v66[*(v68 + 20)];
    *(v64 + 13) = sub_1B0399D64(*(v71 + 1), *(v71 + 2), &v93);
    *(v64 + 21) = 1040;
    *(v64 + 23) = 2;
    *(v64 + 27) = 512;
    LOWORD(v70) = *(v70 + 12);
    sub_1B0BC7C78(v67, type metadata accessor for MailboxTaskLogger);
    *(v64 + 29) = v70;
    *(v64 + 31) = 2160;
    *(v64 + 33) = 0x786F626C69616DLL;
    *(v64 + 41) = 2085;
    v72 = v23;
    v73 = *(v71 + 4);
    LODWORD(v70) = *(v71 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0BC7C78(v66, type metadata accessor for MailboxTaskLogger);
    v91 = v73;
    v92 = v70;
    a1 = v85;
    v74 = sub_1B0E44BA8();
    v76 = sub_1B0399D64(v74, v75, &v93);

    *(v64 + 43) = v76;
    v23 = v72;
    *(v64 + 51) = 2048;
    *(v64 + 53) = v53;
    _os_log_impl(&dword_1B0389000, v62, v63, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did successfully upload %ld message(s).", v64, 0x3Du);
    v77 = v88;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v77, -1, -1);
    MEMORY[0x1B272C230](v64, -1, -1);
  }

  v78 = *(v23 + 120);
  if (!*(v23 + 120))
  {
    return;
  }

LABEL_26:
  v79 = *(v23 + 112);
  if (v78 == 1)
  {
    v80 = 0;
  }

  else
  {
    if (!v79)
    {
      return;
    }

    v79 = 0;
    v80 = 1;
  }

  v81 = a1 + *(type metadata accessor for MailboxSyncState(0) + 72);
  *v81 = v79;
  *(v81 + 8) = v80;
  *(v81 + 9) = 0;
}

double sub_1B0BC55C8()
{
  if (qword_1EB6DDC30 != -1)
  {
    swift_once();
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

uint64_t sub_1B0BC5640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a6@<X8>)
{
  result = sub_1B0BC61E0(a1, a2, a3, a4);
  *a6 = result;
  a6[1] = v8;
  a6[2] = v9;
  return result;
}

uint64_t sub_1B0BC56C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(result + 8);
  if ((v5 & 0x3000000000000000) == 0x1000000000000000)
  {
    v7 = *result;
    v8 = v5 & 0xCFFFFFFFFFFFFFFFLL;
    result = sub_1B0A92A68(*result, v5 & 0xCFFFFFFFFFFFFFFFLL, *(v4 + *(a4 + 60)));
    if (result)
    {
      v9 = *(a4 + 68);
      v10 = *(v4 + v9);
      sub_1B03B2000(v7, v8);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B0B00CBC(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
      }

      v11 = *(v10 + 16);
      v12 = *(v10 + 24);
      v13 = v11 + 1;
      if (v11 >= v12 >> 1)
      {
        v17 = v11 + 1;
        v15 = v10;
        v16 = *(v10 + 16);
        result = sub_1B0B00CBC((v12 > 1), v11 + 1, 1, v15);
        v11 = v16;
        v13 = v17;
        v10 = result;
      }

      *(v10 + 16) = v13;
      v14 = v10 + 32 * v11;
      *(v14 + 32) = v7;
      *(v14 + 40) = v8;
      *(v14 + 48) = 0;
      *(v14 + 56) = 256;
      *(v4 + v9) = v10;
    }
  }

  return result;
}

uint64_t sub_1B0BC57C8(uint64_t result)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  if (*(result + 192) == 1)
  {
    v5 = *(result + 176);
    v4 = *(result + 184);
    v9 = *(result + 168);
    v6 = v9;
    v7 = result;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B2BE00(&v9, v2, v3, 0, sub_1B0BC61D8);
    result = sub_1B03BB638(v6, v5, v4, 1);
    v8 = v9;
    *(v7 + 176) = 0;
    *(v7 + 184) = 0;
    *(v7 + 168) = v8;
    *(v7 + 192) = 1;
  }

  return result;
}

unint64_t sub_1B0BC58A4()
{
  result = qword_1EB6E5300;
  if (!qword_1EB6E5300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5300);
  }

  return result;
}

BOOL sub_1B0BC58F8(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
{
  if ((a2 & 0x100) == 0)
  {
    if ((a4 & 0x100) == 0)
    {
      if (a2)
      {
        if (a4)
        {
          return 1;
        }
      }

      else if ((a4 & 1) == 0 && a1 == a3)
      {
        return 1;
      }
    }

    return 0;
  }

  return (a4 & 0x100) != 0;
}

BOOL sub_1B0BC592C(_BOOL8 a1, unint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, unint64_t a6, uint64_t a7, __int16 a8)
{
  if (!sub_1B0AB8858(a1, a2, a5, a6))
  {
    return 0;
  }

  if ((a4 & 0x100) == 0)
  {
    if ((a8 & 0x100) == 0)
    {
      if (a4)
      {
        if (a8)
        {
          return 1;
        }
      }

      else if ((a8 & 1) == 0 && a3 == a7)
      {
        return 1;
      }
    }

    return 0;
  }

  return (a8 & 0x100) != 0;
}

void sub_1B0BC59E8(uint64_t a1)
{
  sub_1B0BC5E38(319, &qword_1EB6DECE0, MEMORY[0x1E6969530]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t get_enum_tag_for_layout_string_13IMAP2Behavior14UploadMessagesV9CommandIDO(uint64_t a1)
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

uint64_t sub_1B0BC5AB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xB && *(a1 + 16))
  {
    return (*a1 + 11);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 16 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 3)
  {
    return v4 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0BC5B14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 11;
    if (a3 >= 0xB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((14 - a2) >> 2) | (4 * (14 - a2))) << 60;
    }
  }

  return result;
}

void *sub_1B0BC5B68(void *result, unsigned int a2)
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

void sub_1B0BC5C00(uint64_t a1)
{
  sub_1B043CC6C(319, &qword_1EB6DAD90, sub_1B0451ED8, &type metadata for SyncStep);
  if (v1 <= 0x3F)
  {
    sub_1B0BC5E8C(319, &qword_1EB6DB358, &type metadata for OpaquePersistedMessageIdentifier, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B0BC5E8C(319, &qword_1EB6DA568, &type metadata for OpaquePersistedMessageIdentifier, MEMORY[0x1E69E6948]);
      if (v3 <= 0x3F)
      {
        sub_1B0BC5E38(319, &qword_1EB6DDC38, type metadata accessor for UploadMessages.PendingUpload);
        if (v4 <= 0x3F)
        {
          sub_1B0BC5E8C(319, &qword_1EB6DCA08, &type metadata for OpaquePersistedMessageIdentifier, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1B043CC6C(319, &qword_1EB6DAD30, sub_1B03D00F4, &type metadata for OpaquePersistedMessageIdentifier);
            if (v6 <= 0x3F)
            {
              sub_1B0BC5E8C(319, &qword_1EB6DB4A0, &type metadata for UploadMessages.CompletedUpload, MEMORY[0x1E69E62F8]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1B0BC5E38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B0E45D88();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B0BC5E8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1B0BC5EDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 26))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0BC5F30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13IMAP2Behavior14UploadMessagesV8ActionIDO(uint64_t a1)
{
  if (((*(a1 + 8) >> 60) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return (*(a1 + 8) >> 60) & 3;
  }
}

uint64_t sub_1B0BC5FC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if ((~*(a1 + 8) & 0x3000000000000000) != 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1B0BC600C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = xmmword_1B0ECD830;
    }
  }

  return result;
}

void *sub_1B0BC6060(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[1] = result[1] & 0xCFFFFFFFFFFFFFFFLL | (a2 << 60);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0x2000000000000000;
  }

  return result;
}

unint64_t sub_1B0BC60AC()
{
  result = qword_1EB6DDC28;
  if (!qword_1EB6DDC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDC28);
  }

  return result;
}

unint64_t sub_1B0BC6104()
{
  result = qword_1EB6DDC20;
  if (!qword_1EB6DDC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDC20);
  }

  return result;
}

unint64_t sub_1B0BC6158(uint64_t a1)
{
  result = sub_1B0BC6180();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0BC6180()
{
  result = qword_1EB6DDC18;
  if (!qword_1EB6DDC18)
  {
    type metadata accessor for UploadMessages(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDC18);
  }

  return result;
}

uint64_t sub_1B0BC61E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a4;
  v47 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5308, &qword_1B0ECD990);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v44 = &v44 - v8;
  result = type metadata accessor for UploadMessages(0);
  v45 = result;
  v50 = *(v4 + *(result + 68));
  v11 = *(v50 + 16);
  v48 = v4;
  v49 = v11;
  if (v11)
  {
    v12 = 0;
    v13 = (v50 + 57);
    while (1)
    {
      if (v12 >= *(v50 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      v14 = *(v13 - 25);
      v15 = *(v13 - 17);
      v16 = *(v13 - 9);
      v17 = *(v13 - 1);
      v18 = *v13;
      sub_1B03B2000(v14, v15);
      sub_1B03B2000(v14, v15);
      v19 = a2;
      v20 = a2;
      v21 = a3;
      v23 = sub_1B0A9F2E4(v14, v15, v20, a3, v22);
      sub_1B0391D50(v14, v15);
      if ((v23 & 1) == 0)
      {
        break;
      }

      ++v12;
      result = sub_1B0391D50(v14, v15);
      v13 += 32;
      a3 = v21;
      a2 = v19;
      if (v49 == v12)
      {
        goto LABEL_6;
      }
    }

    v38 = swift_allocObject();
    v39 = *(v48 + 32);
    *(v38 + 16) = *(v48 + 24);
    *(v38 + 24) = v39;
    *(v38 + 32) = v14;
    *(v38 + 40) = v15;
    if ((v18 & 1) == 0)
    {
      *(v38 + 48) = v16;
      *(v38 + 56) = v17 & 1;
    }

    sub_1B03B2000(v14, v15);
    goto LABEL_21;
  }

LABEL_6:
  result = sub_1B0A9F2E4(0, 0x2000000000000000, a2, a3, v10);
  if (result)
  {
    v24 = v47;
    if ((sub_1B0B12358(0, 0x2000000000000000, v47, a2, a3) & 1) != 0 && (sub_1B0AEE074(2, v24, a2, a3) & 1) == 0)
    {
      v25 = v44;
      v26 = v48;
      sub_1B03B5C80(v48 + *(v45 + 52), v44, &qword_1EB6E5308, &qword_1B0ECD990);
      v27 = type metadata accessor for UploadMessages.PendingUpload(0);
      v28 = (*(*(v27 - 8) + 48))(v25, 1, v27);
      sub_1B0398EFC(v25, &qword_1EB6E5308, &qword_1B0ECD990);
      if (v28 == 1)
      {
        sub_1B0BC26C4(&v51);
        v29 = *(&v51 + 1);
        if (*(&v51 + 1) >> 60 != 15)
        {
          v14 = v51;
          sub_1B03B2000(v51, *(&v51 + 1));
          sub_1B0B01F68(&v51, v14, v29);
          sub_1B0391D50(v51, *(&v51 + 1));
          v30 = swift_allocObject();
          v31 = *(v26 + 32);
          *(v30 + 16) = *(v26 + 24);
          *(v30 + 24) = v31;
          *(v30 + 32) = v14;
          *(v30 + 40) = v29;
          sub_1B0B37C0C(v14, v29);
LABEL_21:
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          return v14;
        }
      }
    }

    return 0;
  }

  v32 = *(v46 + 176);
  v33 = *(v32 + 16);
  v34 = v33 + 7;
  if (!__OFADD__(v33, 7))
  {
    if (v34 <= 99)
    {
      if (v33)
      {
        v35 = sub_1B0B89188(*(v32 + 16), 0);
        v36 = sub_1B0B8C724(&v51, v35 + 2, v33, v32);
        v37 = v51;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03D91F8(v37);
        if (v36 != v33)
        {
          __break(1u);
          return 0;
        }
      }

      else
      {
        v35 = MEMORY[0x1E69E7CC0];
      }

      v40 = v48;
      v41 = *(v45 + 64);

      *(v40 + v41) = v35;
      v42 = swift_allocObject();
      v43 = *(v40 + 32);
      *(v42 + 16) = *(v40 + 24);
      *(v42 + 24) = v43;
      *(v42 + 32) = v34;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      return 0;
    }

    return 0;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_1B0BC6650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a6;
  v11 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  v17 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v6 + 120) == 2 && *(v6 + 112) == 0;
  if (v20 && (sub_1B0AD58EC(0, 0xF000000000000000, a2, a3, a4) & 1) != 0)
  {
    sub_1B0A96394(a1, v19, type metadata accessor for UntaggedResponse);
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      v21 = *v19;
      v22 = *(v19 + 2);
      v23 = *(v19 + 6);
      v49[4] = *(v19 + 5);
      v49[5] = v23;
      v24 = *(v19 + 8);
      v50 = *(v19 + 7);
      v51 = v24;
      v25 = *(v19 + 2);
      v49[0] = *(v19 + 1);
      v49[1] = v25;
      v26 = *(v19 + 4);
      v27 = *(v6 + 32) | (*(v6 + 32) << 32);
      v49[2] = *(v19 + 3);
      v49[3] = v26;
      if (v27 == (v22 | (v22 << 32)))
      {
        v28 = sub_1B04520BC(*(v6 + 24), v21);

        sub_1B0B11B9C(v49);
        if ((v28 & 1) != 0 && BYTE8(v50) != 1)
        {
          v44 = v6;
          v29 = v50;
          v30 = v45;
          sub_1B0A96394(v45, v16, type metadata accessor for MailboxTaskLogger);
          sub_1B0A96394(v30, v13, type metadata accessor for MailboxTaskLogger);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v31 = sub_1B0E43988();
          v32 = sub_1B0E45908();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            v48 = v34;
            *v33 = 68159491;
            *(v33 + 4) = 2;
            *(v33 + 8) = 256;
            v35 = &v13[*(v11 + 20)];
            *(v33 + 10) = *v35;
            *(v33 + 11) = 2082;
            v36 = *(v11 + 20);
            v45 = v29;
            v37 = &v16[v36];
            *(v33 + 13) = sub_1B0399D64(*&v16[v36 + 8], *&v16[v36 + 16], &v48);
            *(v33 + 21) = 1040;
            *(v33 + 23) = 2;
            *(v33 + 27) = 512;
            LOWORD(v35) = *(v35 + 12);
            sub_1B0BC7C78(v13, type metadata accessor for MailboxTaskLogger);
            *(v33 + 29) = v35;
            *(v33 + 31) = 2160;
            *(v33 + 33) = 0x786F626C69616DLL;
            *(v33 + 41) = 2085;
            v38 = *(v37 + 4);
            LODWORD(v37) = *(v37 + 10);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0BC7C78(v16, type metadata accessor for MailboxTaskLogger);
            v46 = v38;
            v47 = v37;
            v29 = v45;
            v39 = sub_1B0E44BA8();
            v41 = sub_1B0399D64(v39, v40, &v48);

            *(v33 + 43) = v41;
            *(v33 + 51) = 2048;
            *(v33 + 53) = v29;
            _os_log_impl(&dword_1B0389000, v31, v32, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Received a mailbox specific APPENDLIMIT of %ld.", v33, 0x3Du);
            swift_arrayDestroy();
            MEMORY[0x1B272C230](v34, -1, -1);
            MEMORY[0x1B272C230](v33, -1, -1);
          }

          else
          {
            sub_1B0BC7C78(v13, type metadata accessor for MailboxTaskLogger);

            sub_1B0BC7C78(v16, type metadata accessor for MailboxTaskLogger);
          }

          v42 = v44;
          *(v44 + 112) = v29;
          *(v42 + 120) = 1;
        }
      }

      else
      {
        sub_1B0B11B9C(v49);
      }
    }

    else
    {
      sub_1B0BC7C78(v19, type metadata accessor for UntaggedResponse);
    }
  }
}

void sub_1B0BC6AC0(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, NSObject *a5)
{
  v150 = a4;
  v149 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v139[-v9];
  v11 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v139[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v139[-v15];
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v139[-v20];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v139[-v23];
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v139[-v26];
  MEMORY[0x1EEE9AC00](v28);
  v33 = &v139[-v32];
  v34 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
  if (v34 == 15)
  {
    v148 = v29;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35E0, &unk_1B0EE3170);
    v57 = swift_projectBox();
    v58 = *v57;
    v59 = *(v57 + 8);
    v33 = *(v57 + 16);
    v60 = *(v57 + 24);
    v154 = *(v57 + 32);
    v155 = *(v57 + 40);
    if ((*(v151 + 32) | (*(v151 + 32) << 32)) != (v59 | (v59 << 32)))
    {
      return;
    }

    v61 = v57;
    v147 = v60;
    v62 = (v57 + *(v56 + 96));
    v63 = *v62;
    v64 = v62[1];
    if ((sub_1B04520BC(*(v151 + 24), v58) & 1) == 0)
    {
      return;
    }

    sub_1B03B5C80(v61 + *(v56 + 80), v10, &unk_1EB6E2990, &qword_1B0E9B060);
    v65 = v147;
    sub_1B03B2000(v33, v147);
    sub_1B03B2000(v33, v65);
    sub_1B03B2000(v63, v64);
    v66 = sub_1B0AEC344(v33, v65 | 0x1000000000000000, a2, a3, v150);
    sub_1B0391D50(v33, v65);
    if ((v66 & 1) == 0)
    {
      sub_1B0398EFC(v10, &unk_1EB6E2990, &qword_1B0E9B060);
      sub_1B0391D50(v33, v65);
      sub_1B0391D50(v63, v64);
      return;
    }

    v146 = v63;
    v150 = v64;
    v67 = type metadata accessor for UploadMessages(0);
    v68 = v151;
    sub_1B0B93050(v33, v65, &v153);
    sub_1B050755C(v153, *(&v153 + 1));
    if (*(v68 + 120) > 1u)
    {
      goto LABEL_55;
    }

    v69 = *(v68 + 112);
    v70 = v150 >> 62;
    if ((v150 >> 62) > 1)
    {
      if (v70 != 2)
      {
        if (v69 < 0)
        {
          goto LABEL_50;
        }

        goto LABEL_55;
      }

      v106 = *(v146 + 16);
      v105 = *(v146 + 24);
      v87 = __OFSUB__(v105, v106);
      v71 = v105 - v106;
      if (v87)
      {
        __break(1u);
        goto LABEL_45;
      }
    }

    else if (v70)
    {
      LODWORD(v71) = HIDWORD(v146) - v146;
      if (__OFSUB__(HIDWORD(v146), v146))
      {
        __break(1u);
        goto LABEL_75;
      }

      v71 = v71;
    }

    else
    {
      v71 = BYTE6(v150);
    }

    if (v69 < v71)
    {
LABEL_50:
      v143 = *(v68 + 112);
      v144 = v150 >> 62;
      v145 = v67;
      v108 = v149;
      sub_1B0A96394(v149, v16, type metadata accessor for MailboxTaskLogger);
      sub_1B0A96394(v108, v13, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v109 = v146;
      v110 = v150;
      sub_1B03B2000(v146, v150);
      sub_1B03B2000(v109, v110);
      v111 = sub_1B0E43988();
      v112 = sub_1B0E458E8();
      v149 = v111;
      if (!os_log_type_enabled(v111, v112))
      {
        sub_1B0391D50(v109, v110);
        sub_1B0BC7C78(v13, type metadata accessor for MailboxTaskLogger);
        sub_1B0391D50(v109, v110);

        sub_1B0BC7C78(v16, type metadata accessor for MailboxTaskLogger);
        v88 = v147;
LABEL_67:
        v86 = *(v145 + 68);
        v90 = *(v68 + v86);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
LABEL_73:
          v90 = sub_1B0B00CBC(0, *(v90 + 2) + 1, 1, v90);
        }

        v137 = *(v90 + 2);
        v136 = *(v90 + 3);
        if (v137 >= v136 >> 1)
        {
          v90 = sub_1B0B00CBC((v136 > 1), v137 + 1, 1, v90);
        }

        sub_1B0391D50(v146, v150);
        sub_1B0398EFC(v10, &unk_1EB6E2990, &qword_1B0E9B060);
        *(v90 + 2) = v137 + 1;
        v138 = &v90[32 * v137];
        *(v138 + 4) = v33;
        *(v138 + 5) = v88;
        *(v138 + 6) = 0;
        *(v138 + 28) = 256;
        *(v68 + v86) = v90;
        return;
      }

      v142 = v112;
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v152 = v114;
      *v113 = 68159747;
      *(v113 + 4) = 2;
      *(v113 + 8) = 256;
      v115 = v148;
      v116 = &v13[*(v148 + 20)];
      *(v113 + 10) = *v116;
      *(v113 + 11) = 2082;
      v117 = &v16[*(v115 + 20)];
      *(v113 + 13) = sub_1B0399D64(*(v117 + 1), *(v117 + 2), &v152);
      *(v113 + 21) = 1040;
      *(v113 + 23) = 2;
      *(v113 + 27) = 512;
      v118 = *(v116 + 12);
      sub_1B0BC7C78(v13, type metadata accessor for MailboxTaskLogger);
      *(v113 + 29) = v118;
      *(v113 + 31) = 2160;
      *(v113 + 33) = 0x786F626C69616DLL;
      *(v113 + 41) = 2085;
      v119 = *(v117 + 4);
      LODWORD(v117) = *(v117 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0BC7C78(v16, type metadata accessor for MailboxTaskLogger);
      *&v153 = v119;
      DWORD2(v153) = v117;
      v120 = sub_1B0E44BA8();
      v122 = sub_1B0399D64(v120, v121, &v152);

      *(v113 + 43) = v122;
      *(v113 + 51) = 2048;
      v123 = v114;
      if (v144 > 1)
      {
        v132 = v150;
        v125 = v146;
        if (v144 != 2)
        {
          sub_1B0391D50(v146, v150);
          v126 = 0;
          v127 = v132;
          goto LABEL_65;
        }

        v124 = *(v146 + 16);
        v133 = *(v146 + 24);
        sub_1B0391D50(v146, v150);
        v126 = v133 - v124;
        v68 = v151;
        if (!__OFSUB__(v133, v124))
        {
LABEL_63:
          v127 = v150;
          v134 = v146;
LABEL_66:
          v88 = v147;
          *(v113 + 53) = v126;
          sub_1B0391D50(v134, v127);
          *(v113 + 61) = 2048;
          *(v113 + 63) = v143;
          v135 = v149;
          _os_log_impl(&dword_1B0389000, v149, v142, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Message byte count (%{iec-bytes}ld) is above server’s APPENDLIMIT (%{iec-bytes}ld).", v113, 0x47u);
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v123, -1, -1);
          MEMORY[0x1B272C230](v113, -1, -1);

          goto LABEL_67;
        }

        __break(1u);
      }

      else
      {
        v124 = v150;
        v125 = v146;
        if (!v144)
        {
          sub_1B0391D50(v146, v150);
          v126 = BYTE6(v124);
          v127 = v124;
LABEL_65:
          v134 = v125;
          v68 = v151;
          goto LABEL_66;
        }
      }

      sub_1B0391D50(v125, v124);
      LODWORD(v126) = HIDWORD(v125) - v125;
      v68 = v151;
      if (!__OFSUB__(HIDWORD(v125), v125))
      {
        v126 = v126;
        goto LABEL_63;
      }

LABEL_75:
      __break(1u);
      return;
    }

LABEL_55:
    v128 = v68 + *(v67 + 52);
    sub_1B0398EFC(v128, &qword_1EB6E5308, &qword_1B0ECD990);
    v129 = type metadata accessor for UploadMessages.PendingUpload(0);
    sub_1B03C60A4(v10, v128 + *(v129 + 24), &unk_1EB6E2990, &qword_1B0E9B060);
    *v128 = v33;
    *(v128 + 8) = v65;
    *(v128 + 16) = v154;
    *(v128 + 24) = v155;
    v130 = (v128 + *(v129 + 28));
    v131 = v150;
    *v130 = v146;
    v130[1] = v131;
    (*(*(v129 - 8) + 56))(v128, 0, 1, v129);
    return;
  }

  if (v34 == 14)
  {
    v35 = a1 & 0xFFFFFFFFFFFFFFBLL;
    if ((*(v151 + 32) | (*(v151 + 32) << 32)) == (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)))
    {
      v36 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v37 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v147 = v30;
      v148 = v29;
      v38 = *(v151 + 24);
      v146 = v31;
      if (sub_1B04520BC(v38, *(v35 + 16)))
      {
        v39 = *(v36 + 16);
        if (v39)
        {
          LODWORD(v144) = v37;
          v40 = v149;
          sub_1B0A96394(v149, v33, type metadata accessor for MailboxTaskLogger);
          sub_1B0A96394(v40, v27, type metadata accessor for MailboxTaskLogger);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          swift_bridgeObjectRetain_n();
          v41 = sub_1B0E43988();
          v42 = sub_1B0E45908();
          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            v142 = v42;
            v44 = v43;
            v143 = swift_slowAlloc();
            v154 = v143;
            *v44 = 68159491;
            *(v44 + 4) = 2;
            *(v44 + 8) = 256;
            v45 = v148;
            v46 = *(v148 + 20);
            v145 = v36;
            v47 = &v27[v46];
            *(v44 + 10) = v27[v46];
            *(v44 + 11) = 2082;
            v48 = *(v45 + 20);
            v141 = v41;
            v49 = v33 + v48;
            *(v44 + 13) = sub_1B0399D64(*(v33 + v48 + 8), *(v33 + v48 + 16), &v154);
            *(v44 + 21) = 1040;
            *(v44 + 23) = 2;
            *(v44 + 27) = 512;
            v140 = *(v47 + 12);
            sub_1B0BC7C78(v27, type metadata accessor for MailboxTaskLogger);
            *(v44 + 29) = v140;
            *(v44 + 31) = 2160;
            *(v44 + 33) = 0x786F626C69616DLL;
            *(v44 + 41) = 2085;
            v50 = *(v49 + 32);
            LODWORD(v49) = *(v49 + 40);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0BC7C78(v33, type metadata accessor for MailboxTaskLogger);
            *&v153 = v50;
            DWORD2(v153) = v49;
            v51 = sub_1B0E44BA8();
            v53 = sub_1B0399D64(v51, v52, &v154);

            *(v44 + 43) = v53;
            v36 = v145;
            *(v44 + 51) = 2048;
            v54 = *(v36 + 16);

            *(v44 + 53) = v54;

            v33 = v141;
            _os_log_impl(&dword_1B0389000, v141, v142, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Received %ld message(s).", v44, 0x3Du);
            v55 = v143;
            swift_arrayDestroy();
            MEMORY[0x1B272C230](v55, -1, -1);
            MEMORY[0x1B272C230](v44, -1, -1);
          }

          else
          {

            sub_1B0BC7C78(v27, type metadata accessor for MailboxTaskLogger);

            sub_1B0BC7C78(v33, type metadata accessor for MailboxTaskLogger);
          }

          LOBYTE(v37) = v144;
        }

        if ((sub_1B0AEC344(0, 0x2000000000000000, a2, a3, v150) & 1) == 0)
        {
          *(v151 + *(type metadata accessor for UploadMessages(0) + 72)) = 1;
          return;
        }

        v145 = v36;
        v65 = v151;
        if ((v37 & 1) == 0)
        {
          *(v65 + *(type metadata accessor for UploadMessages(0) + 72)) = 1;
        }

        v10 = *(v65 + 128);
        if (*(v10 + 2))
        {
          v72 = v149;
          sub_1B0A96394(v149, v24, type metadata accessor for MailboxTaskLogger);
          sub_1B0A96394(v72, v21, type metadata accessor for MailboxTaskLogger);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v73 = sub_1B0E43988();
          v74 = sub_1B0E458E8();
          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            v150 = swift_slowAlloc();
            v154 = v150;
            *v75 = 68159235;
            *(v75 + 4) = 2;
            *(v75 + 8) = 256;
            v76 = v148;
            v77 = &v21[*(v148 + 20)];
            *(v75 + 10) = *v77;
            *(v75 + 11) = 2082;
            v78 = &v24[*(v76 + 20)];
            *(v75 + 13) = sub_1B0399D64(*(v78 + 1), *(v78 + 2), &v154);
            *(v75 + 21) = 1040;
            *(v75 + 23) = 2;
            *(v75 + 27) = 512;
            LOWORD(v77) = *(v77 + 12);
            sub_1B0BC7C78(v21, type metadata accessor for MailboxTaskLogger);
            *(v75 + 29) = v77;
            v65 = v151;
            *(v75 + 31) = 2160;
            *(v75 + 33) = 0x786F626C69616DLL;
            *(v75 + 41) = 2085;
            v79 = *(v78 + 4);
            LODWORD(v78) = *(v78 + 10);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0BC7C78(v24, type metadata accessor for MailboxTaskLogger);
            *&v153 = v79;
            DWORD2(v153) = v78;
            v80 = sub_1B0E44BA8();
            v33 = sub_1B0399D64(v80, v81, &v154);

            *(v75 + 43) = v33;
            _os_log_impl(&dword_1B0389000, v73, v74, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Unexpectedly received multiple .uploadMessages", v75, 0x33u);
            v82 = v150;
            swift_arrayDestroy();
            MEMORY[0x1B272C230](v82, -1, -1);
            MEMORY[0x1B272C230](v75, -1, -1);
          }

          else
          {
            sub_1B0BC7C78(v21, type metadata accessor for MailboxTaskLogger);

            sub_1B0BC7C78(v24, type metadata accessor for MailboxTaskLogger);
          }
        }

        v83 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v84 = sub_1B03D74A0(v83);

        v154 = v84;
        type metadata accessor for UploadMessages(0);
        v85 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0B0AFC4(v85);

        if (!v39)
        {

LABEL_46:
          v107 = (2 * *(v10 + 2)) | 1;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          swift_unknownObjectRelease();
          *(v65 + 136) = v10;
          *(v65 + 144) = v10 + 32;
          *(v65 + 152) = 0;
          *(v65 + 160) = v107;
          return;
        }

        v86 = 0;
        v68 = v145 + 40;
        do
        {
          v88 = *(v68 - 8);
          v89 = *v68;
          v90 = v154;
          sub_1B03B2000(v88, *v68);
          if ((sub_1B0A92A68(v88, v89, v90) & 1) != 0 || (v90 = *(v10 + 2), v90 > 6))
          {
            sub_1B0391D50(v88, v89);
            v87 = __OFADD__(v86++, 1);
            if (v87)
            {
              __break(1u);
              goto LABEL_73;
            }
          }

          else
          {
            sub_1B03B2000(v88, v89);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v10 = sub_1B0B006F4(0, (v90 + 1), 1, v10);
            }

            v33 = *(v10 + 2);
            v91 = *(v10 + 3);
            if (v33 >= v91 >> 1)
            {
              v10 = sub_1B0B006F4((v91 > 1), v33 + 1, 1, v10);
            }

            *(v10 + 2) = v33 + 1;
            v92 = &v10[16 * v33];
            *(v92 + 4) = v88;
            *(v92 + 5) = v89;
            *(v65 + 128) = v10;
            sub_1B0B01F68(&v153, v88, v89);
            sub_1B0391D50(v153, *(&v153 + 1));
          }

          v68 += 16;
          --v39;
        }

        while (v39);

        if (v86 < 1)
        {
          goto LABEL_46;
        }

        v93 = v149;
        v68 = v147;
        sub_1B0A96394(v149, v147, type metadata accessor for MailboxTaskLogger);
        v16 = v146;
        sub_1B0A96394(v93, v146, type metadata accessor for MailboxTaskLogger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v67 = sub_1B0E43988();
        v94 = sub_1B0E45908();
        if (os_log_type_enabled(v67, v94))
        {
          v95 = swift_slowAlloc();
          LODWORD(v150) = v94;
          v96 = v95;
          v151 = swift_slowAlloc();
          v152 = v151;
          *v96 = 68159491;
          *(v96 + 4) = 2;
          *(v96 + 8) = 256;
          v97 = v148;
          v98 = &v16[*(v148 + 20)];
          *(v96 + 10) = *v98;
          *(v96 + 11) = 2082;
          v99 = v68 + *(v97 + 20);
          *(v96 + 13) = sub_1B0399D64(*(v99 + 8), *(v99 + 16), &v152);
          *(v96 + 21) = 1040;
          *(v96 + 23) = 2;
          *(v96 + 27) = 512;
          LOWORD(v98) = *(v98 + 12);
          sub_1B0BC7C78(v16, type metadata accessor for MailboxTaskLogger);
          *(v96 + 29) = v98;
          *(v96 + 31) = 2160;
          *(v96 + 33) = 0x786F626C69616DLL;
          *(v96 + 41) = 2085;
          v100 = *(v99 + 32);
          LODWORD(v99) = *(v99 + 40);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0BC7C78(v68, type metadata accessor for MailboxTaskLogger);
          *&v153 = v100;
          DWORD2(v153) = v99;
          v101 = sub_1B0E44BA8();
          v103 = sub_1B0399D64(v101, v102, &v152);

          *(v96 + 43) = v103;
          *(v96 + 51) = 2048;
          *(v96 + 53) = v86;
          _os_log_impl(&dword_1B0389000, v67, v150, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Skipping %ld message(s).", v96, 0x3Du);
          v104 = v151;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v104, -1, -1);
          MEMORY[0x1B272C230](v96, -1, -1);

          goto LABEL_46;
        }

LABEL_45:
        sub_1B0BC7C78(v16, type metadata accessor for MailboxTaskLogger);

        sub_1B0BC7C78(v68, type metadata accessor for MailboxTaskLogger);
        goto LABEL_46;
      }
    }
  }
}

uint64_t sub_1B0BC7C78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0BC7CD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadMessages.PendingUpload(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_memcpy10_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for UploadMessages.CompletedUpload.Status(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UploadMessages.CompletedUpload.Status(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_1B0BC7D9C(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0BC7DB8(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = a2 - 1;
    *(result + 4) = 0;
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

BOOL sub_1B0BC7DF4(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  v5 = *(a1 + 24);
  if (sub_1B0AB8858(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16)))
  {
    if (v5)
    {
      if (v3 && (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v5, v3) & 1) != 0)
      {
        return v2 == v4;
      }
    }

    else if (!v3)
    {
      return v2 == v4;
    }
  }

  return 0;
}

uint64_t sub_1B0BC7E80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1B0BC7EDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1B0BC7F44(char *a1, uint64_t a2)
{
  v43 = a2;
  v38 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v39 = &v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v44 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v42 = &v35 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v35 - v16;
  v18 = _s19UserInitiatedSearchV5StateOMa(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  MEMORY[0x1EEE9AC00](MessagesVMa);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2 + *(_s19UserInitiatedSearchVMa(0) + 20);
  sub_1B0BC8BD0(v24, v20);
  v41 = v18;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_1B0BC8C98(v20, _s19UserInitiatedSearchV5StateOMa);
  }

  sub_1B0BC8C34(v20, v23);
  sub_1B03B5C80(v23, v7, &unk_1EB6E26C0, &unk_1B0E9DE10);
  MessageIdentifierSet.intersection(_:)(v7, v14);
  v38 = v7;
  sub_1B0398EFC(v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  MessageIdentifierSet.union(_:)(v14, v17);
  sub_1B0398EFC(v14, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v25 = v39;
  sub_1B03B5C80(&v23[*(MessagesVMa + 24)], v39, &qword_1EB6E3920, &qword_1B0E9B070);
  v26 = *(v44 + 48);
  v27 = v26(v25, 1, v8);
  v36 = MessagesVMa;
  v37 = v17;
  if (v27 == 1)
  {
    sub_1B03D06F8();
    v28 = v40;
    sub_1B0E46EE8();
    if (v26(v25, 1, v8) != 1)
    {
      sub_1B0398EFC(v25, &qword_1EB6E3920, &qword_1B0E9B070);
    }
  }

  else
  {
    v28 = v40;
    sub_1B074BA2C(v25, v40);
  }

  v30 = v38;
  sub_1B03B5C80(v23, v38, &unk_1EB6E26C0, &unk_1B0E9DE10);
  MessageIdentifierSet.intersection(_:)(v30, v14);
  v31 = v8;
  sub_1B0398EFC(v30, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v32 = v42;
  MessageIdentifierSet.union(_:)(v14, v42);
  sub_1B0398EFC(v14, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v28, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0BC8C98(v24, _s19UserInitiatedSearchV5StateOMa);
  sub_1B03B5C80(v23, v24, &unk_1EB6E26C0, &unk_1B0E9DE10);
  sub_1B0BC8C98(v23, _s19UserInitiatedSearchV13FetchMessagesVMa);
  v33 = v36;
  v34 = *(v36 + 24);
  sub_1B074BA2C(v32, v24 + v34);
  (*(v44 + 56))(v24 + v34, 0, 1, v31);
  sub_1B074BA2C(v37, v24 + *(v33 + 20));
  return swift_storeEnumTagMultiPayload();
}

BOOL sub_1B0BC8488(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if ((static SearchKey.__derived_enum_equals(_:_:)(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return static SearchRequest.RangesToExclude.__derived_struct_equals(_:_:)(v2, v3, v4, v5, v6, v7);
}

BOOL sub_1B0BC8548(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41F8, &unk_1B0EC4440);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  sub_1B03D06F8();
  if ((sub_1B0E46E08() & 1) == 0)
  {
    return 0;
  }

  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  if ((sub_1B0E46E08() & 1) == 0)
  {
    return 0;
  }

  v15 = *(MessagesVMa + 24);
  v16 = a1 + v15;
  v17 = *(v11 + 48);
  sub_1B03B5C80(v16, v13, &qword_1EB6E3920, &qword_1B0E9B070);
  sub_1B03B5C80(a2 + v15, &v13[v17], &qword_1EB6E3920, &qword_1B0E9B070);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_1B0398EFC(v13, &qword_1EB6E3920, &qword_1B0E9B070);
      return 1;
    }

    goto LABEL_8;
  }

  sub_1B03B5C80(v13, v10, &qword_1EB6E3920, &qword_1B0E9B070);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    sub_1B0398EFC(v10, &unk_1EB6E1AF0, &unk_1B0E9AF40);
LABEL_8:
    sub_1B0398EFC(v13, &qword_1EB6E41F8, &unk_1B0EC4440);
    return 0;
  }

  sub_1B074BA2C(&v13[v17], v7);
  v20 = sub_1B0E46E08();
  sub_1B0398EFC(v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v10, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v13, &qword_1EB6E3920, &qword_1B0E9B070);
  return (v20 & 1) != 0;
}

BOOL sub_1B0BC8890(uint64_t a1, uint64_t a2)
{
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  MEMORY[0x1EEE9AC00](MessagesVMa - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s19UserInitiatedSearchV5StateOMa(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A38, &unk_1B0ECDE10);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v29 - v14;
  v17 = &v29 + *(v16 + 56) - v14;
  sub_1B0BC8BD0(a1, &v29 - v14);
  sub_1B0BC8BD0(a2, v17);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B0BC8BD0(v15, v12);
    v20 = *v12;
    v19 = *(v12 + 1);
    v21 = *(v12 + 2);
    v22 = v12[24];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v24 = *v17;
      v23 = *(v17 + 1);
      v25 = *(v17 + 2);
      v26 = v17[24];
      if (static SearchKey.__derived_enum_equals(_:_:)(v20, v24))
      {
        v27 = static SearchRequest.RangesToExclude.__derived_struct_equals(_:_:)(v19, v21, v22, v23, v25, v26);
        sub_1B0B239C8(v24);

        sub_1B0B239C8(v20);

        if (v27)
        {
          sub_1B0BC8C98(v15, _s19UserInitiatedSearchV5StateOMa);
          return 1;
        }
      }

      else
      {
        sub_1B0B239C8(v24);

        sub_1B0B239C8(v20);
      }

      sub_1B0BC8C98(v15, _s19UserInitiatedSearchV5StateOMa);
      return 0;
    }

    sub_1B0B239C8(v20);

LABEL_7:
    sub_1B0398EFC(v15, &qword_1EB6E4A38, &unk_1B0ECDE10);
    return 0;
  }

  sub_1B0BC8BD0(v15, v9);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B0BC8C98(v9, _s19UserInitiatedSearchV13FetchMessagesVMa);
    goto LABEL_7;
  }

  sub_1B0BC8C34(v17, v6);
  v18 = sub_1B0BC8548(v9, v6);
  sub_1B0BC8C98(v6, _s19UserInitiatedSearchV13FetchMessagesVMa);
  sub_1B0BC8C98(v9, _s19UserInitiatedSearchV13FetchMessagesVMa);
  sub_1B0BC8C98(v15, _s19UserInitiatedSearchV5StateOMa);
  return v18;
}

uint64_t sub_1B0BC8BD0(uint64_t a1, uint64_t a2)
{
  v4 = _s19UserInitiatedSearchV5StateOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0BC8C34(uint64_t a1, uint64_t a2)
{
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  (*(*(MessagesVMa - 8) + 32))(a2, a1, MessagesVMa);
  return a2;
}

uint64_t sub_1B0BC8C98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0BC8CF8(uint64_t a1)
{
  result = _s19UserInitiatedSearchV13FetchMessagesVMa(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore29SearchKeyO(void *a1)
{
  v1 = (*a1 >> 59) & 0x1E | (*a1 >> 2) & 1;
  if (v1 == 31)
  {
    return (*a1 >> 3) + 31;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1B0BC8D88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1B0BC8DD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B0BC8E4C(uint64_t a1)
{
  sub_1B0B48D48(319, qword_1EB6DE250, type metadata accessor for MessageIdentifierSetNonEmpty);
  if (v1 <= 0x3F)
  {
    sub_1B0B48D48(319, &qword_1EB6DE3E0, type metadata accessor for MessageIdentifierSet);
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

uint64_t sub_1B0BC8F48(uint64_t a1)
{
  result = _s19UserInitiatedSearchV5StateOMa(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0BC8FC4(uint64_t result, char a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v8 = result;
  v9 = v4[1];
  v10 = *(v9 + 16);
  if (*v4)
  {
    result = sub_1B0BAE034();
    if ((v11 & 1) == 0)
    {
      v12 = result;
      if (a3 == 1)
      {
LABEL_4:
        sub_1B0BCAFCC(v12, v10);
        sub_1B0BCB1BC(v12, &v23);
      }

LABEL_17:
      v20 = v4[2];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B0B9466C(v20);
        v20 = result;
      }

      if ((v12 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v12 < *(v20 + 16))
      {
        v21 = v20 + 24 * v12;
        *(v21 + 32) = v8;
        *(v21 + 40) = a2;
        *(v21 + 48) = a3;

        v4[2] = v20;
        return result;
      }

      __break(1u);
      return result;
    }
  }

  else if (v10)
  {
    v12 = 0;
    while (*(v9 + 32 + 4 * v12) != a4)
    {
      if (v10 == ++v12)
      {
        v10 = 0;
        goto LABEL_10;
      }
    }

    v10 = 0;
    if (a3 == 1)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

LABEL_10:
  if (a3 != 1)
  {
    sub_1B0BC9E94(v5, v10, sub_1B0B0A044);
    v15 = v4[2];
    v13 = v4 + 2;
    v14 = v15;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v15;
    if ((result & 1) == 0)
    {
      result = sub_1B0B0A284(0, *(v14 + 16) + 1, 1);
      v14 = *v13;
    }

    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
    v18 = v16 + 1;
    if (v16 >= v17 >> 1)
    {
      v22 = *(v14 + 16);
      result = sub_1B0B0A284((v17 > 1), v16 + 1, 1);
      v16 = v22;
      v14 = *v13;
    }

    *(v14 + 16) = v18;
    v19 = v14 + 24 * v16;
    *(v19 + 32) = v8;
    *(v19 + 40) = a2;
    *(v19 + 48) = a3;
    *v13 = v14;
  }

  return result;
}

uint64_t sub_1B0BC918C(__int128 *a1, uint64_t a2, unsigned int a3)
{
  v7 = v3[1];
  v8 = *(v7 + 16);
  v9 = v7 + 32;
  if (*v3)
  {
    v10 = sub_1B0BA7CA4(a2, a3, v9, v8, (*v3 + 16), *v3 + 32);
    v12 = v11;
    v13 = a1[9];
    v94 = a1[8];
    v95 = v13;
    v96 = a1[10];
    v14 = a1[5];
    v90 = a1[4];
    v91 = v14;
    v15 = a1[7];
    v92 = a1[6];
    v93 = v15;
    v16 = a1[1];
    v86 = *a1;
    v87 = v16;
    v17 = a1[3];
    v88 = a1[2];
    v89 = v17;
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = sub_1B03A912C(a2, a3, v9, v8);
    v12 = 0;
    v20 = a1[9];
    v94 = a1[8];
    v95 = v20;
    v96 = a1[10];
    v21 = a1[5];
    v90 = a1[4];
    v91 = v21;
    v22 = a1[7];
    v92 = a1[6];
    v93 = v22;
    v23 = a1[1];
    v86 = *a1;
    v87 = v23;
    v24 = a1[3];
    v88 = a1[2];
    v89 = v24;
    if (v25)
    {
LABEL_3:
      v83 = v94;
      v84 = v95;
      v85 = v96;
      v79 = v90;
      v80 = v91;
      v81 = v92;
      v82 = v93;
      v75 = v86;
      v76 = v87;
      v77 = v88;
      v78 = v89;
      if (sub_1B0B37CA4(&v75) == 1)
      {
      }

      v72 = v94;
      v73 = v95;
      v74 = v96;
      v68 = v90;
      v69 = v91;
      v70 = v92;
      v71 = v93;
      v64 = v86;
      v65 = v87;
      v66 = v88;
      v67 = v89;
      sub_1B03A5284(a2, a3, v12);

      v30 = v3[2];
      v29 = v3 + 2;
      v28 = v30;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v29 = v30;
      if ((result & 1) == 0)
      {
        result = sub_1B0B09D24(0, *(v28 + 16) + 1, 1);
        v28 = *v29;
      }

      v32 = *(v28 + 16);
      v31 = *(v28 + 24);
      if (v32 >= v31 >> 1)
      {
        result = sub_1B0B09D24((v31 > 1), v32 + 1, 1);
        v28 = *v29;
      }

      *(v28 + 16) = v32 + 1;
      v33 = (v28 + 176 * v32);
      v34 = v64;
      v35 = v66;
      v33[3] = v65;
      v33[4] = v35;
      v33[2] = v34;
      v36 = v67;
      v37 = v68;
      v38 = v70;
      v33[7] = v69;
      v33[8] = v38;
      v33[5] = v36;
      v33[6] = v37;
      v39 = v71;
      v40 = v72;
      v41 = v74;
      v33[11] = v73;
      v33[12] = v41;
      v33[9] = v39;
      v33[10] = v40;
      *v29 = v28;
      return result;
    }
  }

  v26 = v10;

  v83 = v94;
  v84 = v95;
  v85 = v96;
  v79 = v90;
  v80 = v91;
  v81 = v92;
  v82 = v93;
  v75 = v86;
  v76 = v87;
  v77 = v88;
  v78 = v89;
  if (sub_1B0B37CA4(&v75) == 1)
  {
    sub_1B0BCAE88(v26, v12, v27);

    sub_1B0BCB2E8(v26, v63);
    return sub_1B03A3614(v63);
  }

  v60 = v94;
  v61 = v95;
  v62 = v96;
  v56 = v90;
  v57 = v91;
  v58 = v92;
  v59 = v93;
  v52 = v86;
  v53 = v87;
  v54 = v88;
  v55 = v89;
  v42 = v3[2];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0B946F0(v42);
    v42 = result;
  }

  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v26 < *(v42 + 16))
  {
    v43 = (v42 + 176 * v26);
    v44 = v43[2];
    v45 = v43[4];
    v63[1] = v43[3];
    v63[2] = v45;
    v63[0] = v44;
    v46 = v43[5];
    v47 = v43[6];
    v48 = v43[8];
    v63[5] = v43[7];
    v63[6] = v48;
    v63[3] = v46;
    v63[4] = v47;
    v49 = v43[9];
    v50 = v43[10];
    v51 = v43[12];
    v63[9] = v43[11];
    v63[10] = v51;
    v63[7] = v49;
    v63[8] = v50;
    v43[10] = v60;
    v43[11] = v61;
    v43[12] = v62;
    v43[6] = v56;
    v43[7] = v57;
    v43[8] = v58;
    v43[9] = v59;
    v43[2] = v52;
    v43[3] = v53;
    v43[4] = v54;
    v43[5] = v55;
    result = sub_1B03A3614(v63);
    v3[2] = v42;
    return result;
  }

  __break(1u);
  return result;
}

BOOL sub_1B0BC9510(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  return (sub_1B03B5CE8(*(a1 + 8), *(a2 + 8)) & 1) != 0 && (sub_1B03AC27C(v2, v3) & 1) != 0;
}

uint64_t sub_1B0BC9560(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  memcpy(v50, v3, sizeof(v50));
  v8 = LOBYTE(v50[3]);
  v44 = BYTE1(v50[3]);
  v9 = v50[4];
  v10 = sub_1B03A7A88();
  v11 = v50[7];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = sub_1B0397D14();
  v13 = v12;
  v42 = a1;
  v43 = a2;
  v41 = a3;
  if (v9 == 3 || v9 == 2)
  {

    v14 = 1;
    goto LABEL_4;
  }

  v32 = sub_1B0BAE1A4(v12);
  if (v44)
  {
    goto LABEL_12;
  }

  if (v9 == 1)
  {
    if (v8)
    {
      v14 = v8 == 1;
      goto LABEL_13;
    }

LABEL_12:
    v14 = v32 ^ 1;
    goto LABEL_13;
  }

  if (v9 || (v8 - 1) >= 2)
  {
    goto LABEL_12;
  }

  v14 = 0;
LABEL_13:
  sub_1B0397E04(&unk_1F2710548, v11);
  sub_1B0BAE1A4(v13);
  v33 = sub_1B039109C(v11);

  if (v33 & 1) == 0 && (v44)
  {
    sub_1B0BAE1A4(v13);
  }

LABEL_4:

  v15 = v50[32];
  v16 = sub_1B03A8380(v50[21], v50[22], v50[23], v50[24] & 1, v50[15], v10, v14 & 1, v50[26]);
  v18 = v17;
  v20 = v19;

  v40 = &v36;
  MEMORY[0x1EEE9AC00](v21);
  v35[2] = v4;
  v35[3] = v16;
  v35[4] = v18;
  v35[5] = v20;
  v22 = sub_1B03A944C(v16, v18, v20);
  v38 = v23;
  v39 = v22;
  v37 = v24;
  MEMORY[0x1EEE9AC00](v22);
  v34[2] = v4;
  v25 = *(v4 + 200);
  v48[3] = *(v4 + 184);
  v48[4] = v25;
  v49[0] = *(v4 + 216);
  *(v49 + 12) = *(v4 + 228);
  v48[2] = *(v4 + 168);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v26 = sub_1B03A967C();
  v27 = *(v4 + 184);
  v28 = *(v4 + 216);
  v47 = *(v4 + 200);
  v48[0] = v28;
  *(v48 + 12) = *(v4 + 228);
  v45 = *(v4 + 168);
  v46 = v27;
  v29 = sub_1B0398E54();
  v30 = sub_1B03A9934(v42, v43, v41 & 1, sub_1B0BCC8B0, v35, v39, v38, v37, sub_1B0BCC8DC, v34, v15, v26, v29, v44 & 1);

  return v30;
}

uint64_t sub_1B0BC985C(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (__dst[24])
  {
    v1 = __dst[22];
    v2 = __dst[23];
    v3 = __dst[26];
    v4 = __dst[21];
    v5 = __dst[15];
    v32[0] = __dst[15];
    if (__dst[15])
    {
      v6 = LOBYTE(__dst[3]);
      v7 = BYTE1(__dst[3]);
      v8 = __dst[4];
      v23 = LOBYTE(__dst[5]);
      v9 = __dst[7];
      swift_bridgeObjectRetain_n();
      sub_1B03B9A2C(v4, v1, v2, 1);
      sub_1B03B5C80(v32, v24, &qword_1EB6E4870, &qword_1B0EC6000);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v10 = sub_1B0397D14();
      v11 = v10;
      if (v8 == 2 || v8 == 3)
      {

        sub_1B0397D14();

        v12 = 0;
        LOBYTE(v6) = 1;
LABEL_6:
        v13 = BYTE1(__dst[2]);
        v14 = swift_allocObject();
        memcpy((v14 + 16), __dst, 0x108uLL);
        sub_1B03AD0B0(__dst, v24);
        v15 = sub_1B03B9A74();
        *&v26 = v4;
        *(&v26 + 1) = v5;
        LOBYTE(v27) = v13;
        *(&v27 + 1) = v3;
        LOBYTE(v28) = v6 & 1;
        BYTE1(v28) = v12;
        *(&v28 + 1) = sub_1B0B389B8;
        *&v29 = v14;
        *(&v29 + 1) = 7;
        v30 = v15;
        v25 = v15;
        v24[2] = v28;
        v24[3] = v29;
        v24[0] = v26;
        v24[1] = v27;
        v16 = sub_1B03B9B68();
        sub_1B03BB608(&v26);
        return v16;
      }

      v18 = sub_1B0BAE1A4(v10);
      if (v7)
      {
        goto LABEL_16;
      }

      if (v8 == 1)
      {
        if (!v6)
        {
LABEL_16:
          LOBYTE(v6) = v18 ^ 1;
LABEL_17:
          sub_1B0397E04(&unk_1F2710548, v9);
          sub_1B0BAE1A4(v11);
          v19 = sub_1B039109C(v9);

          if (v19 & 1) == 0 && (v7)
          {
            sub_1B0BAE1A4(v11);
          }

          v20 = sub_1B0397D14();
          sub_1B0BAE1A4(v20);
          sub_1B0397E04(&unk_1F2710548, v9);
          sub_1B0BAE1A4(v20);
          v21 = sub_1B039109C(v9);

          if (v21)
          {

            v12 = 0;
          }

          else if (v7)
          {
            v22 = sub_1B0BAE1A4(v20);

            v12 = v22 & 1;
          }

          else
          {

            v12 = 1;
          }

          if (v23 >= 2)
          {
            if (v23 == 2)
            {
              v12 *= 2;
            }
          }

          else
          {
            v12 = 0;
          }

          goto LABEL_6;
        }

        if (v6 == 1)
        {
          goto LABEL_17;
        }
      }

      else if (v8 || (v6 - 1) >= 2)
      {
        goto LABEL_16;
      }

      LOBYTE(v6) = 0;
      goto LABEL_17;
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1B0BC9B50()
{
  sub_1B03B8738(v0[2], v0[3], v0[4]);

  return swift_deallocClassInstance();
}

uint64_t sub_1B0BC9BB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B0BC9BF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0BC9C48(unsigned __int8 a1)
{
  sub_1B0E46C28();
  if ((a1 - 5) >= 6u)
  {
    MEMORY[0x1B2728D70](0);
  }

  else
  {
    a1 -= 4;
  }

  MEMORY[0x1B2728D70](a1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0BC9CBC()
{
  v1 = *v0;
  if ((v1 - 5) >= 6)
  {
    MEMORY[0x1B2728D70](0);
  }

  else
  {
    LOBYTE(v1) = v1 - 4;
  }

  return MEMORY[0x1B2728D70](v1);
}

uint64_t sub_1B0BC9D08(uint64_t a1)
{
  v2 = *v1;
  sub_1B0E46C28();
  if ((v2 - 5) >= 6)
  {
    MEMORY[0x1B2728D70](0);
  }

  else
  {
    LOBYTE(v2) = v2 - 4;
  }

  MEMORY[0x1B2728D70](v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0BC9D90()
{
  if (*v0)
  {
    return 0x69736956746F6E2ELL;
  }

  else
  {
    return 0x656C62697369762ELL;
  }
}

void sub_1B0BC9DD4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (sub_1B03B5DDC(*a1, v5, a2))
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a3 = v4;
  *(a3 + 8) = v5;
}

void sub_1B0BC9E34(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 12))
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 8);
    v3 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  *a2 = v3;
  *(a2 + 8) = v4;
}

uint64_t sub_1B0BC9E94(int a1, uint64_t a2, uint64_t (*a3)(BOOL, uint64_t, uint64_t))
{
  v5 = v3;
  v9 = v3[1];
  v7 = v3 + 1;
  v8 = v9;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v9;
  if ((result & 1) == 0)
  {
    result = a3(0, *(v8 + 16) + 1, 1);
    v8 = *v7;
  }

  v12 = *(v8 + 16);
  v11 = *(v8 + 24);
  if (v12 >= v11 >> 1)
  {
    result = a3(v11 > 1, v12 + 1, 1);
    v8 = *v7;
  }

  *(v8 + 16) = v12 + 1;
  *(v8 + 4 * v12 + 32) = a1;
  v5[1] = v8;
  v13 = *v5;
  if (*v5)
  {
    swift_beginAccess();
    if (MEMORY[0x1B2725670](*(v13 + 16) & 0x3FLL) > v12)
    {
      result = swift_isUniquelyReferenced_native();
      v14 = *v5;
      if ((result & 1) == 0)
      {
        if (!v14)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v15 = sub_1B0E43578();

        *v5 = v15;
        v14 = v15;
      }

      if (v14)
      {
        return sub_1B0E43518();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v12 < 0xF)
  {
    return result;
  }

  return sub_1B0BCA0B0();
}

uint64_t sub_1B0BCA00C()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  v4 = *(v3 + 16);
  if (v2 || v4 >= 0x10)
  {
    v6 = MEMORY[0x1B27256A0](v4);
    if (v2 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    v5 = sub_1B0BCA150(v3, v7, 0, v2);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  return result;
}

uint64_t sub_1B0BCA0B0()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  v4 = *(v3 + 16);
  if (v2 || v4 >= 0x10)
  {
    v6 = MEMORY[0x1B27256A0](v4);
    if (v2 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    v5 = sub_1B0BCA1D0(v3, v7, 0, v2);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  return result;
}

uint64_t sub_1B0BCA150(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x1B27256A0](v6, a2);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x1B27256B0](v8, a4);
    sub_1B0BCA250(a1, (v10 + 16), v10 + 32);
    return v10;
  }

  return result;
}

uint64_t sub_1B0BCA1D0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x1B27256A0](v6, a2);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x1B27256B0](v8, a4);
    sub_1B0BCA2A0(a1, (v10 + 16), v10 + 32);
    return v10;
  }

  return result;
}

uint64_t sub_1B0BCA2F0(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v7 = result + 8;
      while (1)
      {
        v8 = *(v7 + 16 * v6);
        sub_1B0E46C28();
        MEMORY[0x1B2728D70](v8 | (v8 << 32));
        result = sub_1B0E46CB8();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        if (sub_1B0E434F8())
        {
          while (1)
          {
            sub_1B0E43548();
          }
        }

        result = sub_1B0E43538();
        if (++v6 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B0BCA3FC(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        sub_1B0E46C28();
        sub_1B0E46C88();
        v7 = sub_1B0E46CB8();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        if (sub_1B0E434F8())
        {
          while (1)
          {
            sub_1B0E43548();
          }
        }

        v7 = sub_1B0E43538();
        if (++v6 == a2)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v7;
}

uint64_t sub_1B0BCA504(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v94 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v94 = *v94;
    if (!v94)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_123:
      result = sub_1B0B9443C(v9);
      v9 = result;
    }

    v86 = v9 + 16;
    v87 = *(v9 + 2);
    if (v87 >= 2)
    {
      while (*a3)
      {
        v88 = &v9[16 * v87];
        v89 = *v88;
        v90 = &v86[2 * v87];
        v91 = v90[1];
        sub_1B0BCAAAC((*a3 + 16 * *v88), (*a3 + 16 * *v90), (*a3 + 16 * v91), v94);
        if (v4)
        {
        }

        if (v91 < v89)
        {
          goto LABEL_115;
        }

        if (v87 - 2 >= *v86)
        {
          goto LABEL_116;
        }

        *v88 = v89;
        *(v88 + 1) = v91;
        v92 = *v86 - v87;
        if (*v86 < v87)
        {
          goto LABEL_117;
        }

        v87 = *v86 - 1;
        result = memmove(v90, v90 + 2, 16 * v92);
        *v86 = v87;
        if (v87 <= 1)
        {
        }
      }

      goto LABEL_127;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + 16 * v8 + 12);
      v12 = 16 * v10;
      v13 = *a3 + 16 * v10;
      v14 = *(v13 + 12);
      v15 = v10 + 2;
      v16 = (v13 + 44);
      while (v6 != v15)
      {
        v17 = *(v16 - 16) >= *v16;
        ++v15;
        v16 += 16;
        if ((((v14 < v11) ^ v17) & 1) == 0)
        {
          v8 = v15 - 1;
          if (v14 >= v11)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v14 >= v11)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_120;
      }

      if (v10 < v8)
      {
        v18 = 16 * v8 - 16;
        v19 = v8;
        v20 = v10;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_126;
            }

            v23 = (v22 + v12);
            v24 = (v22 + v18);
            v25 = *(v22 + v12);
            v26 = *(v22 + v12 + 8);
            v27 = *(v22 + v12 + 12);
            if (v12 != v18 || v23 >= v24 + 1)
            {
              *v23 = *v24;
            }

            v21 = v22 + v18;
            *v21 = v25;
            *(v21 + 8) = v26;
            *(v21 + 12) = v27;
          }

          ++v20;
          v18 -= 16;
          v12 += 16;
        }

        while (v20 < v19);
        v6 = a3[1];
      }
    }

LABEL_23:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_119;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_121;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v8 < v10)
    {
      goto LABEL_118;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B0AFF300(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v40 = *(v9 + 2);
    v39 = *(v9 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1B0AFF300((v39 > 1), v40 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v41;
    v42 = &v9[16 * v40];
    *(v42 + 4) = v10;
    *(v42 + 5) = v8;
    v43 = *v94;
    if (!*v94)
    {
      goto LABEL_128;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v9 + 4);
          v46 = *(v9 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_60:
          if (v48)
          {
            goto LABEL_106;
          }

          v61 = &v9[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_109;
          }

          v67 = &v9[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_113;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        v71 = &v9[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_74:
        if (v66)
        {
          goto LABEL_108;
        }

        v74 = &v9[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_111;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_81:
        v82 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
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
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (!*a3)
        {
          goto LABEL_125;
        }

        v83 = *&v9[16 * v82 + 32];
        v84 = *&v9[16 * v44 + 40];
        sub_1B0BCAAAC((*a3 + 16 * v83), (*a3 + 16 * *&v9[16 * v44 + 32]), (*a3 + 16 * v84), v43);
        if (v4)
        {
        }

        if (v84 < v83)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1B0B9443C(v9);
        }

        if (v82 >= *(v9 + 2))
        {
          goto LABEL_103;
        }

        v85 = &v9[16 * v82];
        *(v85 + 4) = v83;
        *(v85 + 5) = v84;
        result = sub_1B0B943B0(v44);
        v41 = *(v9 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v9[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_104;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_105;
      }

      v56 = &v9[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_107;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_110;
      }

      if (v60 >= v52)
      {
        v78 = &v9[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_114;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_60;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_91;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v8 + 12;
  v30 = v10 - v8;
LABEL_33:
  v31 = v30;
  v32 = v29;
  while (1)
  {
    v33 = *v32;
    if (*(v32 - 16) >= v33)
    {
LABEL_32:
      ++v8;
      v29 += 16;
      --v30;
      if (v8 != v6)
      {
        goto LABEL_33;
      }

      v8 = v6;
      goto LABEL_40;
    }

    if (!v28)
    {
      break;
    }

    v34 = v32 - 12;
    v35 = *(v32 - 28);
    *(v32 - 16) = v33;
    v32 -= 16;
    v36 = *(v32 + 4);
    v37 = *(v32 + 3);
    *v34 = v35;
    *(v32 - 12) = v36;
    *(v32 - 1) = v37;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
  return result;
}

uint64_t sub_1B0BCAAAC(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v13)
  {
    v14 = 16 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14);
    }

    v15 = &v4[v14];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[12] < v6[12])
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 16;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 16;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  v18 = 16 * v13;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v15 = &v4[v18];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 16;
    do
    {
      v19 = v5 + 16;
      if (*(v6 - 4) < *(v15 - 4))
      {
        v21 = v6 - 16;
        if (v19 != v6)
        {
          *v5 = *v21;
        }

        if (v15 <= v4 || (v6 -= 16, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v20 = v15 - 16;
      if (v19 != v15)
      {
        *v5 = *v20;
      }

      v5 -= 16;
      v15 -= 16;
    }

    while (v20 > v4);
    v15 = v20;
  }

LABEL_35:
  v22 = (v15 - v4 + (v15 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v6 != v4 || v6 >= &v4[v22])
  {
    memmove(v6, v4, v22);
  }

  return 1;
}

uint64_t sub_1B0BCACA8(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v3 = v2;
  v5 = result;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v7 + 24) >> 1)
  {
    v10 = *v3;
    if (*v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v7 + 16) <= v5)
    {
      v14 = v5;
    }

    else
    {
      v14 = *(v7 + 16);
    }

    sub_1B0B0A044(isUniquelyReferenced_nonNull_native, v14, 0);
    v7 = *v6;
    v10 = *v3;
    if (*v3)
    {
LABEL_5:
      swift_beginAccess();
      v11 = *(v10 + 16) & 0x3FLL;
      v12 = MEMORY[0x1B27256A0](v5);
      if (a2)
      {
        v13 = v12;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v16 = v12;
        swift_beginAccess();
        v12 = v16;
        v13 = *(v10 + 24) & 0x3FLL;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      if (v13 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }

      goto LABEL_30;
    }
  }

  v12 = MEMORY[0x1B27256A0](v5);
  v11 = 0;
  if (a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v12 > 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  if (v13 <= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = v13;
  }

  result = MEMORY[0x1B27256A0](*(v7 + 16));
  if (result <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = result;
  }

  if (v18 < v11)
  {
    if (v13 <= v18)
    {
      v15 = v18;
    }

    else
    {
      v15 = v13;
    }

LABEL_30:
    v19 = sub_1B0BCA1D0(v7, v15, 0, v13);

    *v3 = v19;
    return result;
  }

  if (!v10 || (result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v20 = *v3;
    if (*v3)
    {
      goto LABEL_35;
    }

LABEL_39:
    if (!v13)
    {
      return result;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (!*v3)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v20 = sub_1B0E43578();

  *v3 = v20;
  if (!v20)
  {
    goto LABEL_39;
  }

LABEL_35:
  result = swift_beginAccess();
  if ((*(v20 + 24) & 0x3FLL) != v13)
  {
    *(v20 + 24) = *(v20 + 24) & 0xFFFFFFFFFFFFFFC0 | v13 & 0x3F;
  }

  return result;
}

uint64_t sub_1B0BCAE88(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = v3[1];
  v6 = *(v5 + 16);
  v7 = *v3;
  if (!*v3)
  {
    if (!v6)
    {
      goto LABEL_16;
    }

    return sub_1B0BCB130(a1);
  }

  swift_beginAccess();
  if ((*(v7 + 16) & 0x3FLL) == (*(v7 + 24) & 0x3FLL))
  {
    if (!v6)
    {
      goto LABEL_16;
    }
  }

  else if (v6 <= MEMORY[0x1B2725680]())
  {
LABEL_16:
    v13 = sub_1B0BCB130(a1);
    sub_1B0BCA00C();
    return v13;
  }

  result = swift_isUniquelyReferenced_native();
  v10 = *v3;
  if ((result & 1) == 0)
  {
    if (!v10)
    {
      goto LABEL_20;
    }

    v11 = sub_1B0E43578();

    *v3 = v11;
    v10 = v11;
  }

  if (v10)
  {
    result = sub_1B0BCB424(a2, (v10 + 16), v10 + 32, v3);
    v12 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (v12 >= a1)
    {
      sub_1B0BCB7E4(a1, v12, v5, (v10 + 16), v10 + 32);
      return sub_1B0BCB130(a1);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B0BCAFCC(uint64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    return sub_1B0BCB25C(a1, sub_1B0B94634);
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= MEMORY[0x1B2725680]())
  {
LABEL_16:
    v12 = sub_1B0BCB25C(a1, sub_1B0B94634);
    sub_1B0BCA0B0();
    return v12;
  }

  result = swift_isUniquelyReferenced_native();
  v9 = *v2;
  if ((result & 1) == 0)
  {
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = sub_1B0E43578();

    *v2 = v10;
    v9 = v10;
  }

  if (v9)
  {
    result = sub_1B0BCB604(a2, (v9 + 16), v9 + 32, v2);
    v11 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (v11 >= a1)
    {
      sub_1B0BCBBD4(a1, v11, v4, (v9 + 16), v9 + 32);
      return sub_1B0BCB25C(a1, sub_1B0B94634);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

char *sub_1B0BCB130(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0B9458C(v3);
    v3 = result;
  }

  v5 = *(v3 + 2);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[16 * a1];
    v8 = *(v7 + 4);
    memmove(v7 + 32, v7 + 48, 16 * (v5 - 1 - a1));
    *(v3 + 2) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1B0BCB1BC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0B9466C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 24 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    result = memmove(v9, (v9 + 24), 24 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B0BCB25C(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 4 * a1;
    v10 = *(v9 + 32);
    memmove((v9 + 32), (v9 + 36), 4 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    return v10;
  }

  return result;
}

uint64_t sub_1B0BCB2E8@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0B946F0(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + 176 * a1);
    v9 = v8[11];
    v10 = v7 - 1;
    a2[8] = v8[10];
    a2[9] = v9;
    a2[10] = v8[12];
    v11 = v8[7];
    a2[4] = v8[6];
    a2[5] = v11;
    v12 = v8[9];
    a2[6] = v8[8];
    a2[7] = v12;
    v13 = v8[3];
    *a2 = v8[2];
    a2[1] = v13;
    v14 = v8[5];
    a2[2] = v8[4];
    a2[3] = v14;
    result = memmove(v8 + 2, v8 + 13, 176 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

char *sub_1B0BCB3A0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0B94750(v3);
    v3 = result;
  }

  v5 = *(v3 + 2);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = *(v7 + 16);
    memmove(v7 + 32, v7 + 34, 2 * (v5 - 1 - a1));
    *(v3 + 2) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_1B0BCB424(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v15 = sub_1B0E434F8();
  sub_1B0E43548();
  if (v15)
  {
    v7 = sub_1B0E43508();
    while (1)
    {
      result = sub_1B0E43528();
      if (v9)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v10 = *(a4 + 8);
      if (result >= *(v10 + 16))
      {
        goto LABEL_18;
      }

      v11 = *(v10 + 16 * result + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v11 | (v11 << 32));
      result = sub_1B0E46CB8();
      v12 = 1 << *a2;
      if (__OFSUB__(v12, 1))
      {
        goto LABEL_19;
      }

      v13 = (v12 - 1) & result;
      if (v6 >= v7)
      {
        break;
      }

      if (v13 < v7)
      {
        goto LABEL_12;
      }

LABEL_13:
      sub_1B0E43528();
      v6 = a1;
      sub_1B0E43518();
LABEL_3:
      sub_1B0E43548();
    }

    if (v13 < v7)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (v6 < v13)
    {
      goto LABEL_3;
    }

    goto LABEL_13;
  }

  return sub_1B0E43518();
}

unint64_t sub_1B0BCB604(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v13 = sub_1B0E434F8();
  sub_1B0E43548();
  if (v13)
  {
    v7 = sub_1B0E43508();
    while (1)
    {
      result = sub_1B0E43528();
      if (v9)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (result >= *(*(a4 + 8) + 16))
      {
        goto LABEL_18;
      }

      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
      v10 = 1 << *a2;
      if (__OFSUB__(v10, 1))
      {
        goto LABEL_19;
      }

      v11 = (v10 - 1) & result;
      if (v6 >= v7)
      {
        break;
      }

      if (v11 < v7)
      {
        goto LABEL_12;
      }

LABEL_13:
      sub_1B0E43528();
      v6 = a1;
      sub_1B0E43518();
LABEL_3:
      sub_1B0E43548();
    }

    if (v11 < v7)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (v6 < v11)
    {
      goto LABEL_3;
    }

    goto LABEL_13;
  }

  return sub_1B0E43518();
}

uint64_t sub_1B0BCB7E4(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_54;
  }

  if (v6 >= 1)
  {
    v9 = result;
    v10 = *(a3 + 16);
    if (result < (v10 - v6) / 2)
    {
      result = MEMORY[0x1B2725670](*a4 & 0x3FLL);
      if (result / 3 > v9)
      {
        if (v9 < 0)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        if (v10 < v9)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        if (v9)
        {
          v11 = 0;
          v12 = a3 + 40;
          while (1)
          {
            v13 = *(v12 + 16 * v11);
            sub_1B0E46C28();
            MEMORY[0x1B2728D70](v13 | (v13 << 32));
            result = sub_1B0E46CB8();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_1B0E434F8())
            {
              while (1)
              {
                v14 = sub_1B0E43528();
                if ((v15 & 1) == 0 && v14 == v11)
                {
                  break;
                }

                sub_1B0E43548();
              }
            }

            result = v11 + v6;
            if (__OFADD__(v11, v6))
            {
              goto LABEL_51;
            }

            ++v11;
            result = sub_1B0E43538();
            if (v11 == v9)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        goto LABEL_17;
      }

      sub_1B0E434F8();
      v22 = sub_1B0E43528();
      if ((v23 & 1) != 0 || v22 >= v9)
      {
LABEL_29:
        result = sub_1B0E43548();
LABEL_17:
        v16 = a4[1];
        if (__OFSUB__(v16 >> 6, v6))
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        v17 = 1 << *a4;
        v18 = __OFSUB__(v17, 1);
        v19 = v17 - 1;
        if (v18)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v20 = (v19 & (((v16 >> 6) - v6) >> 63)) + (v16 >> 6) - v6;
        if (v20 < v19)
        {
          v19 = 0;
        }

        a4[1] = a4[1] & 0x3FLL | ((v20 - v19) << 6);
        return result;
      }

      if (!__OFADD__(v22, v6))
      {
        sub_1B0E43538();
        goto LABEL_29;
      }

      __break(1u);
LABEL_35:
      sub_1B0E434F8();
      v24 = sub_1B0E43528();
      if ((v25 & 1) == 0 && v24 >= v5)
      {
        v18 = __OFSUB__(v24, v6);
        result = v24 - v6;
        if (v18)
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        sub_1B0E43538();
      }

      return sub_1B0E43548();
    }

    v5 = a2;
    v21 = v10 - a2;
    if (__OFSUB__(v10, a2))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    result = MEMORY[0x1B2725670](*a4 & 0x3FLL);
    if (v21 >= result / 3)
    {
      goto LABEL_35;
    }

    if (v10 < v5)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if (v5 < 0)
    {
LABEL_61:
      __break(1u);
      return result;
    }

    if (v10 != v5)
    {
      v26 = a3 + 40;
      while (1)
      {
        v27 = *(v26 + 16 * v5);
        sub_1B0E46C28();
        MEMORY[0x1B2728D70](v27 | (v27 << 32));
        result = sub_1B0E46CB8();
        if (__OFSUB__(1 << *a4, 1))
        {
          break;
        }

        if (sub_1B0E434F8())
        {
          while (1)
          {
            v28 = sub_1B0E43528();
            if ((v29 & 1) == 0 && v28 == v5)
            {
              break;
            }

            sub_1B0E43548();
          }
        }

        result = sub_1B0E43538();
        if (++v5 == v10)
        {
          return result;
        }
      }

      goto LABEL_53;
    }
  }

  return result;
}

uint64_t sub_1B0BCBBD4(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v6 >= 1)
  {
    v8 = result;
    v9 = *(a3 + 16);
    if (result < (v9 - v6) / 2)
    {
      result = MEMORY[0x1B2725670](*a4 & 0x3FLL);
      if (result / 3 > v8)
      {
        if (v8 < 0)
        {
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        if (v9 < v8)
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        if (v8)
        {
          v10 = 0;
          while (1)
          {
            sub_1B0E46C28();
            sub_1B0E46C88();
            result = sub_1B0E46CB8();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_1B0E434F8())
            {
              while (1)
              {
                v11 = sub_1B0E43528();
                if ((v12 & 1) == 0 && v11 == v10)
                {
                  break;
                }

                sub_1B0E43548();
              }
            }

            result = v10 + v6;
            if (__OFADD__(v10, v6))
            {
              goto LABEL_55;
            }

            ++v10;
            result = sub_1B0E43538();
            if (v10 == v8)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        goto LABEL_17;
      }

      sub_1B0E434F8();
      v23 = sub_1B0E43528();
      if ((v24 & 1) != 0 || v23 >= v8)
      {
LABEL_42:
        result = sub_1B0E43548();
LABEL_17:
        v13 = a4[1];
        if (__OFSUB__(v13 >> 6, v6))
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v14 = 1 << *a4;
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (v15)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v17 = (v16 & (((v13 >> 6) - v6) >> 63)) + (v13 >> 6) - v6;
        if (v17 < v16)
        {
          v16 = 0;
        }

        a4[1] = a4[1] & 0x3FLL | ((v17 - v16) << 6);
        return result;
      }

      if (!__OFADD__(v23, v6))
      {
        sub_1B0E43538();
        goto LABEL_42;
      }

      __break(1u);
LABEL_48:
      sub_1B0E434F8();
      v25 = sub_1B0E43528();
      if ((v26 & 1) == 0 && v25 >= v5)
      {
        v15 = __OFSUB__(v25, v6);
        result = v25 - v6;
        if (v15)
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        sub_1B0E43538();
      }

      return sub_1B0E43548();
    }

    v5 = a2;
    v18 = v9 - a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    result = MEMORY[0x1B2725670](*a4 & 0x3FLL);
    if (v18 >= result / 3)
    {
      goto LABEL_48;
    }

    if (v9 < v5)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (v5 < 0)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if (v9 != v5)
    {
      if (v9 <= v5)
      {
LABEL_68:
        __break(1u);
        return result;
      }

      while (1)
      {
        sub_1B0E46C28();
        sub_1B0E46C88();
        result = sub_1B0E46CB8();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_57;
        }

        if (sub_1B0E434F8())
        {
          while (1)
          {
            v19 = sub_1B0E43528();
            if ((v20 & 1) == 0 && v19 == v5)
            {
              break;
            }

            sub_1B0E43548();
          }
        }

        v21 = v5 + 1;
        v22 = __OFADD__(v5, 1);
        result = v5 - v6;
        if (__OFSUB__(v5, v6))
        {
          goto LABEL_58;
        }

        result = sub_1B0E43538();
        if (v22)
        {
          goto LABEL_59;
        }

        ++v5;
        if (v21 == v9)
        {
          return result;
        }
      }
    }
  }

  return result;
}

void sub_1B0BCBFD0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    v4 = *(a1 + 12);
    v5 = *(a1 + 2);
    *a2 = v3;
    *(a2 + 8) = v5;
    *(a2 + 12) = v4;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    __break(1u);
  }
}

void sub_1B0BCBFF8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    v4 = *(a1 + 2);
    *a2 = v3;
    *(a2 + 8) = v4;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    __break(1u);
  }
}

BOOL sub_1B0BCC018(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 7u)
  {
    switch(a1)
    {
      case 5u:
        return a2 == 5;
      case 6u:
        return a2 == 6;
      case 7u:
        return a2 == 7;
    }

LABEL_16:
    if (a2 - 5 >= 6)
    {
      return a1 == a2;
    }

    return 0;
  }

  if (a1 == 8)
  {
    return a2 == 8;
  }

  if (a1 != 9)
  {
    if (a1 == 10)
    {
      return a2 == 10;
    }

    goto LABEL_16;
  }

  return a2 == 9;
}

BOOL sub_1B0BCC0D8(unsigned __int16 a1, unsigned __int16 a2)
{
  if ((a1 >> 14) > 1u)
  {
    if (a1 >> 14 == 2)
    {
      if ((a2 & 0xC000) == 0x8000)
      {
        return (a2 ^ a1) == 0;
      }
    }

    else if (a1 > 0xC001u)
    {
      if (a1 == 49154)
      {
        if (a2 == 49154)
        {
          return 1;
        }
      }

      else if (a2 == 49155)
      {
        return 1;
      }
    }

    else if (a1 == 49152)
    {
      if (a2 == 49152)
      {
        return 1;
      }
    }

    else if (a2 == 49153)
    {
      return 1;
    }
  }

  else
  {
    if (!(a1 >> 14))
    {
      if (a2 < 0x4000u)
      {
        return a1 == a2;
      }

      return 0;
    }

    if ((a2 & 0xC000) == 0x4000)
    {
      return (a2 ^ a1) == 0;
    }
  }

  return 0;
}

void sub_1B0BCC1A8(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  sub_1B0BCACA8(v3, 0);
  sub_1B0B0A284(0, v3, 0);
  if (v3)
  {
    v4 = 0;
    v5 = a1 + 32;
    do
    {
      v6 = v5 + 32 * v4;
      v7 = *(v6 + 16);
      v8 = *v6;
      v9 = *(v6 + 24);
      v10 = *(v6 + 8);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v9 == 1)
      {
        break;
      }

      v11 = (v17 + 32);
      v12 = *(v17 + 16);
      if (v12)
      {
        while (1)
        {
          v13 = *v11++;
          if (v13 == v8)
          {
            break;
          }

          if (!--v12)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
        return;
      }

LABEL_7:
      sub_1B0BC9E94(v8, v12, sub_1B0B0A044);
      v15 = *(v2 + 16);
      v14 = *(v2 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1B0B0A284((v14 > 1), v15 + 1, 1);
      }

      *(v2 + 16) = v15 + 1;
      v16 = v2 + 24 * v15;
      *(v16 + 32) = v10;
      ++v4;
      *(v16 + 40) = v7;
      *(v16 + 48) = v9;
    }

    while (v4 != v3);
  }
}

void sub_1B0BCC328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _BYTE *a6)
{
  v73 = a6;
  v65 = type metadata accessor for State.Logger(0);
  MEMORY[0x1EEE9AC00](v65);
  v12 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v61 - v14;
  v17 = a5[2];
  v16 = a5[3];
  v18 = a5[4];
  if (!v16 || (sub_1B03B5CE8(a5[3], a2) & 1) == 0 || (sub_1B03AC27C(v18, a3) & 1) == 0)
  {
    a5[2] = a1;
    a5[3] = a2;
    a5[4] = a3;
    sub_1B03B8738(v17, v16, v18);
    v19 = *(a3 + 16);
    if (v19)
    {
      v20 = 255;
      if (v19 < 0xFF)
      {
        v20 = *(a3 + 16);
      }

      v69 = v20;
      v61[1] = a1;
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      v21 = 0;
      v22 = (a2 + 40);
      *&v23 = 68160003;
      v62 = v23;
      v71 = v12;
      v72 = a2;
      v63 = a3;
      v64 = a4;
      v70 = v19;
      while (1)
      {
        if (v21 >= *(a2 + 16))
        {
          __break(1u);
          return;
        }

        v25 = *(v22 - 1);
        v26 = *v22;
        v27 = *(a3 + 2 * v21 + 32);
        v28 = v21 + 1;
        v29 = v21 > 0xFE;
        v30 = v69;
        if (v29)
        {
          v30 = -1;
        }

        v75 = v30;
        v76 = v27;
        v31 = v29 ? -1 : v28;
        v74 = v31;
        v32 = sub_1B03B87EC(v25, v26, v73);
        if (v33)
        {
          v35 = v32;
          v36 = v33;
          v37 = v34;
        }

        else
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v35 = -1;
          v36 = v25;
          v37 = v26;
        }

        sub_1B03B8788(a4, v12);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v38 = sub_1B0E43988();
        v39 = sub_1B0E45908();
        if (os_log_type_enabled(v38, v39))
        {
          break;
        }

        sub_1B03B88DC(v12);

        swift_bridgeObjectRelease_n();
LABEL_9:
        v22 += 4;
        v21 = v28;
        v12 = v71;
        v24 = v70 == v28;
        a2 = v72;
        if (v24)
        {

          return;
        }
      }

      v67 = v39;
      v68 = v28;
      v40 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v79[0] = v66;
      *v40 = v62;
      *(v40 + 4) = 2;
      *(v40 + 8) = 256;
      v41 = v12[*(v65 + 20)];
      sub_1B03B88DC(v12);
      *(v40 + 10) = v41;
      *(v40 + 11) = 1040;
      *(v40 + 13) = 2;
      *(v40 + 17) = 512;
      *(v40 + 19) = v35;

      *(v40 + 21) = 2160;
      *(v40 + 23) = 0x786F626C69616DLL;
      *(v40 + 31) = 2085;
      v77 = v36;
      v78 = v37;
      v42 = sub_1B0E44BA8();
      v44 = sub_1B0399D64(v42, v43, v79);

      *(v40 + 33) = v44;
      *(v40 + 41) = 256;
      v45 = v75;
      *(v40 + 43) = v74;
      *(v40 + 44) = 256;
      *(v40 + 46) = v45;
      v46 = v76;
      v47 = v76 >> 14;
      *(v40 + 47) = 2082;
      if (v46 >> 14 > 1)
      {
        if (v47 != 2)
        {
          v28 = v68;
          v49 = v67;
          v48 = 0xA090806u >> (8 * v46);
          goto LABEL_29;
        }

        LOBYTE(v48) = 7;
      }

      else if (v47)
      {
        LOBYTE(v48) = 5;
      }

      else
      {
        v48 = v46 >> 8;
      }

      v28 = v68;
      v49 = v67;
LABEL_29:
      LOBYTE(v77) = v48;
      v50 = sub_1B0E44BA8();
      v52 = sub_1B0399D64(v50, v51, v79);

      *(v40 + 49) = v52;
      *(v40 + 57) = 2082;
      if (v47 > 2)
      {
        LOBYTE(v46) = 0;
      }

      LOBYTE(v77) = v46;
      v53 = sub_1B0E44BA8();
      v55 = sub_1B0399D64(v53, v54, v79);

      *(v40 + 59) = v55;
      _os_log_impl(&dword_1B0389000, v38, v49, "[%.*hhx] [{%.*hx}%{sensitive,mask.mailbox}s] [MailboxesToSelect] %hhu/%hhu: %{public}s - %{public}s", v40, 0x43u);
      v56 = v66;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v56, -1, -1);
      MEMORY[0x1B272C230](v40, -1, -1);

      a3 = v63;
      a4 = v64;
      goto LABEL_9;
    }

    sub_1B03B8788(a4, v15);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v57 = sub_1B0E43988();
    v58 = sub_1B0E45908();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 68157952;
      *(v59 + 4) = 2;
      *(v59 + 8) = 256;
      v60 = v15[*(v65 + 20)];
      sub_1B03B88DC(v15);
      *(v59 + 10) = v60;
      _os_log_impl(&dword_1B0389000, v57, v58, "[%.*hhx] [MailboxesToSelect] None.", v59, 0xBu);
      MEMORY[0x1B272C230](v59, -1, -1);
    }

    else
    {
      sub_1B03B88DC(v15);
    }
  }
}

uint64_t _s17MailboxesToSelectV6ReasonO4KindOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_20;
  }

  v2 = a2 + 10;
  if (a2 + 10 >= 0xFFFF00)
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

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 10;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 10;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 5)
  {
    v8 = v7 - 4;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 7)
  {
    return v8 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t _s17MailboxesToSelectV6ReasonO4KindOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 10;
  if (a3 + 10 >= 0xFFFF00)
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

  if (a3 < 0xF6)
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1B0BCCA4C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 5)
  {
    return v1 - 4;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1B0BCCA60(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

uint64_t _s17MailboxesToSelectV6ReasonOwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7FD)
  {
    goto LABEL_17;
  }

  if (a2 + 63491 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 63491 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 63491;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 63491;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 63491;
    }
  }

LABEL_17:
  v6 = (*a1 & 0xFC | (*a1 >> 14) | (*a1 >> 3) & 0x700) ^ 0x7FF;
  if (v6 >= 0x7FC)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *_s17MailboxesToSelectV6ReasonOwst(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 63491 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 63491 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7FD)
  {
    v4 = 0;
  }

  if (a2 > 0x7FC)
  {
    v5 = ((a2 - 2045) >> 16) + 1;
    *result = a2 - 2045;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    v6 = ((-a2 >> 2) & 0x1FF) - (a2 << 9);
    *result = (32 * v6) & 0xF800 | (4 * (v6 & 0x3F));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B0BCCC10(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1 >> 14;
  v3 = (v1 & 3 | (4 * ((v1 >> 8) & 7))) + 3;
  if (v2 == 3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

_WORD *sub_1B0BCCC44(_WORD *result, unsigned int a2)
{
  if (a2 < 3)
  {
    *result = *result & 0x703 | (a2 << 14);
  }

  else
  {
    *result = ((a2 - 3) << 6) & 0x700 | (a2 - 3) & 3 | 0xC000;
  }

  return result;
}

unint64_t sub_1B0BCCC90()
{
  result = qword_1EB6E5338;
  if (!qword_1EB6E5338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E5340, qword_1B0ECE3F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5338);
  }

  return result;
}

unint64_t sub_1B0BCCCF8()
{
  result = qword_1EB6E5348;
  if (!qword_1EB6E5348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5348);
  }

  return result;
}

unint64_t sub_1B0BCCD50()
{
  result = qword_1EB6E5350;
  if (!qword_1EB6E5350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5350);
  }

  return result;
}

unint64_t sub_1B0BCCDA8()
{
  result = qword_1EB6E5358;
  if (!qword_1EB6E5358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5358);
  }

  return result;
}

BOOL sub_1B0BCCE00(_BOOL8 *a1, uint64_t *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  v5 = v4 >> 60 == 15 && v3 >> 60 == 15;
  if (v3 >> 60 == 15 || v4 >> 60 == 15)
  {
    return v5;
  }

  else
  {
    return sub_1B0AB8858(*a1, v3, *a2, v4);
  }
}

BOOL sub_1B0BCCE44(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v2;
  v3 = *(a1 + 64);
  v4 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v4;
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  v13[4] = a2[4];
  v8 = *a2;
  v13[1] = a2[1];
  v12[4] = v3;
  v13[0] = v8;
  v10 = *(a2 + 10);
  v9 = *(a2 + 11);
  if ((sub_1B0C0FEBC(v12, v13) & 1) == 0)
  {
    return 0;
  }

  if (v6 >> 60 != 15)
  {
    return v9 >> 60 != 15 && sub_1B0AB8858(v5, v6, v10, v9);
  }

  return v9 >> 60 == 15;
}

uint64_t sub_1B0BCCF04()
{
  v2 = *(v0 + 88);
  if (v2 >> 60 == 15)
  {
    sub_1B0BCD47C();
    swift_allocError();
    *v3 = xmmword_1B0ECE570;
    *(v3 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    v1 = *(v0 + 80);
    sub_1B03B2000(v1, *(v0 + 88));
    sub_1B050755C(v1, v2);
    *(v0 + 80) = xmmword_1B0EC58F0;
  }

  return v1;
}

uint64_t sub_1B0BCCFB0()
{
  sub_1B0BCD47C();
  swift_allocError();
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 1;
  return swift_willThrow();
}

double variable initialization expression of CommandConnection.idle@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *(a1 + 44) = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t variable initialization expression of ConnectionConfiguration.prohibitedInterfaceTypes()
{
  return 0;
}

{
  return 0;
}

uint64_t variable initialization expression of ConnectionConfiguration.sourceApplicationBundleIdentifier()
{
  return 0;
}

{
  return 0;
}

uint64_t variable initialization expression of ConnectionConfiguration.networkAccountIdentifier()
{
  return 0;
}

{
  return 0;
}

uint64_t sub_1B0BCD0EC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B0E441D8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1B0BCD1B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
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

uint64_t sub_1B0BCD210(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

void sub_1B0BCD2E4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection14AuthenticationO10AppleTokenV5StateO(uint64_t a1)
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

uint64_t sub_1B0BCD374(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3A && *(a1 + 96))
  {
    return (*a1 + 58);
  }

  v3 = (*(a1 + 56) >> 58) & 0xC;
  v4 = (((*(a1 + 79) & 0x30 | v3) >> 3) & 0xFFFFFFC7 | (8 * (v3 & 7 | (*(a1 + 40) >> 60) & 3))) ^ 0x3F;
  if (v4 >= 0x39)
  {
    v4 = -1;
  }

  return v4 + 1;
}

uint64_t sub_1B0BCD3E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x39)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 58;
    if (a3 >= 0x3A)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3A)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      v3 = (-a2 >> 3) & 7 | (8 * (-a2 & 0x3F));
      *(result + 32) = 0;
      *(result + 40) = ((-a2 >> 3) & 3) << 60;
      *(result + 48) = 0;
      *(result + 56) = (v3 << 58) & 0x3000000000000000;
      *(result + 64) = 0;
      *(result + 72) = (v3 << 56) & 0x3000000000000000;
    }
  }

  return result;
}

unint64_t sub_1B0BCD47C()
{
  result = qword_1EB6E53B8;
  if (!qword_1EB6E53B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E53B8);
  }

  return result;
}

uint64_t sub_1B0BCD4D0(uint64_t a1, unsigned int a2)
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

uint64_t sub_1B0BCD524(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection14AuthenticationO11AppleToken2V5StateO(uint64_t a1)
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

uint64_t sub_1B0BCD5E0(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v18 = xmmword_1B0ECF4A0;
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 32;
    v4 = MEMORY[0x1E6969080];
    v5 = MEMORY[0x1E6969078];
    while (1)
    {
      v16 = v4;
      v17 = v5;
      v15 = *(v3 + 16 * v2);
      v14 = v15;
      v6 = __swift_project_boxed_opaque_existential_0(&v15, v4);
      v7 = *v6;
      v8 = v6[1] >> 62;
      if (v8 > 1)
      {
        if (v8 != 2)
        {
LABEL_18:
          sub_1B03B2000(v14, *(&v14 + 1));
          sub_1B03B2000(v14, *(&v14 + 1));
          sub_1B0E42EF8();
          goto LABEL_19;
        }

        v9 = *(v7 + 16);
        v10 = *(v7 + 24);
        sub_1B03B2000(v14, *(&v14 + 1));
        sub_1B03B2000(v14, *(&v14 + 1));
        if (sub_1B0E42A98() && __OFSUB__(v9, sub_1B0E42AC8()))
        {
          goto LABEL_25;
        }

        if (__OFSUB__(v10, v9))
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (!v8)
        {
          goto LABEL_18;
        }

        v11 = v7;
        if (v7 >> 32 < v7)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
        }

        sub_1B03B2000(v14, *(&v14 + 1));
        sub_1B03B2000(v14, *(&v14 + 1));
        if (sub_1B0E42A98() && __OFSUB__(v11, sub_1B0E42AC8()))
        {
          goto LABEL_26;
        }
      }

      sub_1B0E42AB8();
      sub_1B0E42EF8();
      v5 = MEMORY[0x1E6969078];
LABEL_19:
      __swift_destroy_boxed_opaque_existential_0(&v15);
      if (v2 >= v1 - 1)
      {
        sub_1B0391D50(v14, *(&v14 + 1));
      }

      else
      {
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
        v16 = v12;
        v17 = sub_1B039E3F8(&qword_1EB6DAE08, &qword_1EB6E21D0, &unk_1B0EA2E70, MEMORY[0x1E6969E08]);
        *&v15 = &unk_1F271B6B0;
        __swift_project_boxed_opaque_existential_0(&v15, v12);
        sub_1B0E42EF8();
        sub_1B0391D50(v14, *(&v14 + 1));
        __swift_destroy_boxed_opaque_existential_0(&v15);
      }

      if (v1 == ++v2)
      {
        return v18;
      }
    }
  }

  return 0;
}

uint64_t sub_1B0BCD964(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v38 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  v30 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_1B041D32C(0, v5 & ~(v5 >> 63), 0);
    v29 = v3;
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(v3 + 16);
      }

      else
      {
        v9 = v3;
      }
    }

    else
    {
      v9 = 0;
    }

    v34 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v37;
    v28 = v3 >> 32;
    v27 = &v35 + v9;
    v32 = v4;
    v33 = v3;
    v31 = v5;
    do
    {
      if (v10 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v34 + v10;
      if (v4 == 2)
      {
        if (v12 < *(v3 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(v3 + 24))
        {
          goto LABEL_45;
        }

        v17 = sub_1B0E42A98();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = sub_1B0E42AC8();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          LOWORD(v35) = v3;
          BYTE2(v35) = BYTE2(v3);
          BYTE3(v35) = BYTE3(v3);
          BYTE4(v35) = v30;
          BYTE5(v35) = BYTE5(v3);
          BYTE6(v35) = BYTE6(v3);
          HIBYTE(v35) = HIBYTE(v3);
          LOWORD(v36) = a2;
          BYTE2(v36) = BYTE2(a2);
          BYTE3(v36) = BYTE3(a2);
          BYTE4(v36) = BYTE4(a2);
          BYTE5(v36) = BYTE5(a2);
          v19 = v27[v10];
          goto LABEL_36;
        }

        if (v12 < v29 || v12 >= v28)
        {
          goto LABEL_44;
        }

        v13 = sub_1B0E42A98();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = sub_1B0E42AC8();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      LOBYTE(v35) = v19;
      sub_1B0BA1E94();
      v20 = sub_1B0E44E98();
      v35 = 30768;
      v36 = 0xE200000000000000;
      MEMORY[0x1B2726E80](v20);

      v22 = v35;
      v21 = v36;
      v37 = v8;
      v24 = *(v8 + 16);
      v23 = *(v8 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1B041D32C((v23 > 1), v24 + 1, 1);
        v8 = v37;
      }

      *(v8 + 16) = v24 + 1;
      v25 = v8 + 16 * v24;
      *(v25 + 32) = v22;
      *(v25 + 40) = v21;
      ++v10;
      v5 = v31;
      LODWORD(v4) = v32;
      v3 = v33;
    }

    while (v11 != v31);
  }

  return v8;
}

uint64_t sub_1B0BCDCB0()
{
  sub_1B0BCD964(*v0, v0[1]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0, MEMORY[0x1E69E6310]);
  v1 = sub_1B0E448E8();

  return v1;
}

uint64_t sub_1B0BCDD68(uint64_t result, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v3 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v3 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v3)
    {
      goto LABEL_11;
    }

    if (result == 32 && a2 == 0xE100000000000000)
    {
      result = 32;
      a2 = 0xE100000000000000;
LABEL_11:
      sub_1B0BCDEB0(result, a2, 0);
      return 0;
    }

    v4 = result;
    v5 = a2;
    if (sub_1B0E46A78())
    {
      result = v4;
      a2 = v5;
      goto LABEL_11;
    }

    sub_1B0BCDE5C();
    swift_allocError();
    swift_willThrow();
    return sub_1B0BCDEB0(v4, v5, 0);
  }

  return result;
}

unint64_t sub_1B0BCDE5C()
{
  result = qword_1EB6E53C0;
  if (!qword_1EB6E53C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E53C0);
  }

  return result;
}

uint64_t sub_1B0BCDEB0(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1B0391D50(a1, a2);
  }

  else
  {
  }
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection18AuthenticationTaskV5StateV4StepO(uint64_t a1)
{
  if (((*(a1 + 8) >> 60) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return (*(a1 + 8) >> 60) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection14AuthenticationO5ErrorO(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 2);
  }

  if ((~*(a1 + 8) & 0x3000000000000000) != 0)
  {
    v2 = -1;
  }

  else
  {
    v2 = 0;
  }

  return (v2 + 1);
}

uint64_t getEnumTagSinglePayload for MailboxSyncStatus(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DataTransferReportAccumulator.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1B0BCDF70(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
    if (a2)
    {
      *result = xmmword_1B0ECD830;
    }
  }

  return result;
}

uint64_t sub_1B0BCDFD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0BCE028(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t static AuthenticationFailure.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a3 <= 1)
  {
    if (!a3)
    {
      return !a6;
    }

    if (a3 == 1)
    {
      return a6 == 1;
    }

LABEL_10:
    if (a6 >= 4)
    {
      return static ResponseText.__derived_struct_equals(_:_:)(a1, a2, a3, a4, a5, a6);
    }

    return 0;
  }

  if (a3 != 2)
  {
    if (a3 == 3)
    {
      return a6 == 3;
    }

    goto LABEL_10;
  }

  return a6 == 2;
}

uint64_t AuthenticationFailure.hash(into:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v5 = 3;
      return MEMORY[0x1B2728D70](v5, a2, a3);
    }

    if (a4 == 3)
    {
      v5 = 4;
      return MEMORY[0x1B2728D70](v5, a2, a3);
    }
  }

  else
  {
    if (!a4)
    {
      v5 = 1;
      return MEMORY[0x1B2728D70](v5, a2, a3);
    }

    if (a4 == 1)
    {
      v5 = 2;
      return MEMORY[0x1B2728D70](v5, a2, a3);
    }
  }

  MEMORY[0x1B2728D70](0);
  sub_1B0E46C68();
  if ((~a2 & 0xF000000000000007) != 0)
  {
    ResponseTextCode.hash(into:)(a1, a2);
  }

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t AuthenticationFailure.hashValue.getter(unint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0E46C28();
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      MEMORY[0x1B2728D70](3);
      return sub_1B0E46CB8();
    }

    if (a3 == 3)
    {
      MEMORY[0x1B2728D70](4);
      return sub_1B0E46CB8();
    }
  }

  else
  {
    if (!a3)
    {
      MEMORY[0x1B2728D70](1);
      return sub_1B0E46CB8();
    }

    if (a3 == 1)
    {
      MEMORY[0x1B2728D70](2);
      return sub_1B0E46CB8();
    }
  }

  MEMORY[0x1B2728D70](0);
  sub_1B0E46C68();
  if ((~a1 & 0xF000000000000007) != 0)
  {
    ResponseTextCode.hash(into:)(v6, a1);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0BCE2F8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1B0E46C28();
  AuthenticationFailure.hash(into:)(v6, v2, v3, v4);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0BCE350(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[2];
  v5 = a2[2];
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      return v5 == 2;
    }

    if (v4 == 3)
    {
      return v5 == 3;
    }
  }

  else
  {
    if (!v4)
    {
      return v5 == 0;
    }

    if (v4 == 1)
    {
      return v5 == 1;
    }
  }

  if (v5 >= 4)
  {
    return static ResponseText.__derived_struct_equals(_:_:)(v3, a1[1], v4, *a2, a2[1], v5);
  }

  else
  {
    return 0;
  }
}

unint64_t AuthenticationFailure.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0x6F7571207265766FLL;
  v4 = 0x6B63757473;
  v5 = 0x726568746FLL;
  if (a3 != 3)
  {
    v5 = 0x6F7571207265766FLL;
  }

  if (a3 != 2)
  {
    v4 = v5;
  }

  if (a3 == 1)
  {
    v3 = 0xD000000000000015;
  }

  if (!a3)
  {
    v3 = 0x6465726320646162;
  }

  if (a3 <= 1)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1B0BCE480()
{
  v1 = *(v0 + 16);
  v2 = 0x6F7571207265766FLL;
  v3 = 0x6B63757473;
  v4 = 0x726568746FLL;
  if (v1 != 3)
  {
    v4 = 0x6F7571207265766FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000015;
  }

  if (!v1)
  {
    v2 = 0x6465726320646162;
  }

  if (v1 <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection21AuthenticationFailureO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B0BCE54C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 24))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0BCE5A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 3;
    }
  }

  return result;
}

void *sub_1B0BCE600(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1B0BCE634(unint64_t result)
{
  if ((~result & 0xF000000000000007) == 0)
  {
    goto LABEL_5;
  }

  if (((result >> 59) & 0x1E | (result >> 2) & 1) != 0x11 || __ROR8__(result + 0x7FFFFFFFFFFFFF94, 3) != 14)
  {
    sub_1B0447F00(result);
LABEL_5:

    return 0;
  }

  return result;
}

void sub_1B0BCE780(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - v12;
  if ((a1 & 1) == 0)
  {
    v30 = (v3[9] >> 59) & 6 | ((v3[7] & 0x2000000000000000) != 0);
    if (v30 > 2)
    {
      if ((v30 - 5) >= 2)
      {
        if (v30 == 3)
        {
          if (qword_1EB6E5378 != -1)
          {
            swift_once();
          }

          v31 = &qword_1EB738388;
        }

        else
        {
          if (qword_1EB6E5380 != -1)
          {
            swift_once();
          }

          v31 = &qword_1EB738398;
        }
      }

      else
      {
        if (qword_1EB6E5370 != -1)
        {
          swift_once();
        }

        v31 = &qword_1EB738378;
      }
    }

    else if (v30)
    {
      if (v30 == 1)
      {
        if (qword_1EB6DE340 != -1)
        {
          swift_once();
        }

        v31 = &qword_1EB737E98;
      }

      else
      {
        if (qword_1EB6DE338 != -1)
        {
          swift_once();
        }

        v31 = &qword_1EB737E88;
      }
    }

    else
    {
      v31 = AuthenticationMechanism.plain.unsafeMutableAddressor();
    }

    v36 = *v31;
    v35 = v31[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v37 = 0;
    v38 = 0;
    v39 = 0;
    goto LABEL_54;
  }

  v14 = v3[11];
  if (v14 >> 60 == 11)
  {
    v32 = 0;
    v14 = 0xC000000000000000;
LABEL_18:
    v33 = (v3[9] >> 59) & 6 | ((v3[7] & 0x2000000000000000) != 0);
    if (v33 > 2)
    {
      if ((v33 - 5) >= 2)
      {
        if (v33 == 3)
        {
          if (qword_1EB6E5378 != -1)
          {
            swift_once();
          }

          v34 = &qword_1EB738388;
        }

        else
        {
          if (qword_1EB6E5380 != -1)
          {
            swift_once();
          }

          v34 = &qword_1EB738398;
        }
      }

      else
      {
        if (qword_1EB6E5370 != -1)
        {
          swift_once();
        }

        v34 = &qword_1EB738378;
      }
    }

    else if (v33)
    {
      if (v33 == 1)
      {
        if (qword_1EB6DE340 != -1)
        {
          swift_once();
        }

        v34 = &qword_1EB737E98;
      }

      else
      {
        if (qword_1EB6DE338 != -1)
        {
          swift_once();
        }

        v34 = &qword_1EB737E88;
      }
    }

    else
    {
      v34 = AuthenticationMechanism.plain.unsafeMutableAddressor();
    }

    v36 = *v34;
    v35 = v34[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v37 = sub_1B0BD09D4(v32, v14, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
    v38 = v40;
    v39 = v41;
    sub_1B050755C(v32, v14);
LABEL_54:
    *a3 = v36;
    *(a3 + 8) = v35;
    *(a3 + 16) = v37;
    *(a3 + 24) = v38;
    *(a3 + 32) = v39;
    *(a3 + 38) = BYTE6(v39);
    *(a3 + 36) = WORD2(v39);
    *(a3 + 64) = 1;
    return;
  }

  if (v14 >> 60 != 15)
  {
    v32 = v3[10];
    sub_1B03B2000(v32, v3[11]);
    sub_1B05072A8(v32, v14);
    *(v3 + 5) = xmmword_1B0EC58F0;
    goto LABEL_18;
  }

  v15 = v11;
  sub_1B0BCD47C();
  v16 = swift_allocError();
  *v17 = xmmword_1B0ECE570;
  *(v17 + 16) = 1;
  swift_willThrow();
  sub_1B041C97C(a2, v13);
  sub_1B041C97C(a2, v9);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v18 = v16;
  v19 = sub_1B0E43988();
  v20 = sub_1B0E458E8();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44 = v43;
    *v21 = 68158466;
    *(v21 + 4) = 2;
    *(v21 + 8) = 256;
    v23 = v9[*(v15 + 20)];
    sub_1B041C9E0(v9);
    *(v21 + 10) = v23;
    *(v21 + 11) = 2082;
    v24 = *&v13[*(v15 + 20) + 4];
    sub_1B041C9E0(v13);
    v25 = ConnectionID.debugDescription.getter(v24);
    v27 = sub_1B0399D64(v25, v26, &v44);

    *(v21 + 13) = v27;
    *(v21 + 21) = 2112;
    v28 = sub_1B0E42CC8();
    *(v21 + 23) = v28;
    *v22 = v28;
    _os_log_impl(&dword_1B0389000, v19, v20, "[%.*hhx-%{public}s] Authentication failed: %@", v21, 0x1Fu);
    sub_1B0BD096C(v22);
    MEMORY[0x1B272C230](v22, -1, -1);
    v29 = v43;
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x1B272C230](v29, -1, -1);
    MEMORY[0x1B272C230](v21, -1, -1);
  }

  else
  {
    sub_1B041C9E0(v9);

    sub_1B041C9E0(v13);
  }

  swift_willThrow();
}

void sub_1B0BCEE04(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v73[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v73[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v73[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v73[-v18];
  if ((a1 & 1) == 0)
  {
    v33 = (*(v3 + 14) >> 59) & 6 | ((*(v3 + 12) & 0x2000000000000000) != 0);
    if (v33 <= 2)
    {
      if (!v33)
      {
LABEL_24:
        v34 = AuthenticationMechanism.plain.unsafeMutableAddressor();
LABEL_39:
        v64 = *v34;
        v63 = v34[1];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v65 = 0;
        v66 = 0;
        v67 = 0;
LABEL_40:
        *a3 = v64;
        *(a3 + 8) = v63;
        *(a3 + 16) = v65;
        *(a3 + 24) = v66;
        *(a3 + 38) = BYTE6(v67);
        *(a3 + 36) = WORD2(v67);
        *(a3 + 32) = v67;
        *(a3 + 39) = v94[0];
        *(a3 + 48) = *(v94 + 9);
        *(a3 + 64) = 1;
        return;
      }

LABEL_7:
      if (v33 == 1)
      {
        if (qword_1EB6DE340 != -1)
        {
          swift_once();
        }

        v34 = &qword_1EB737E98;
      }

      else
      {
        if (qword_1EB6DE338 != -1)
        {
          swift_once();
        }

        v34 = &qword_1EB737E88;
      }

      goto LABEL_39;
    }

LABEL_25:
    if ((v33 - 5) >= 2)
    {
      if (v33 == 3)
      {
        if (qword_1EB6E5378 != -1)
        {
          swift_once();
        }

        v34 = &qword_1EB738388;
      }

      else
      {
        if (qword_1EB6E5380 != -1)
        {
          swift_once();
        }

        v34 = &qword_1EB738398;
      }
    }

    else
    {
      if (qword_1EB6E5370 != -1)
      {
        swift_once();
      }

      v34 = &qword_1EB738378;
    }

    goto LABEL_39;
  }

  v20 = v3 + 120;
  v21 = *(v3 + 15);
  v22 = *(v3 + 18);
  if ((v22 - 1) < 2)
  {
    v77 = v3;
    v78 = v17;
    sub_1B041C97C(a2, v12);
    sub_1B041C97C(a2, v9);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v23 = sub_1B0E43988();
    v24 = sub_1B0E458C8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *&v79[0] = v76;
      *v25 = 68158210;
      *(v25 + 4) = 2;
      *(v25 + 8) = 256;
      v26 = v78;
      v27 = v9[*(v78 + 20)];
      sub_1B041C9E0(v9);
      *(v25 + 10) = v27;
      *(v25 + 11) = 2082;
      v28 = *&v12[*(v26 + 20) + 4];
      sub_1B041C9E0(v12);
      v29 = ConnectionID.debugDescription.getter(v28);
      v31 = sub_1B0399D64(v29, v30, v79);

      *(v25 + 13) = v31;
      _os_log_impl(&dword_1B0389000, v23, v24, "[%.*hhx-%{public}s] Authentication implementation has no initial response", v25, 0x15u);
      v32 = v76;
      __swift_destroy_boxed_opaque_existential_0(v76);
      MEMORY[0x1B272C230](v32, -1, -1);
      MEMORY[0x1B272C230](v25, -1, -1);
    }

    else
    {
      sub_1B041C9E0(v9);

      sub_1B041C9E0(v12);
    }

    v33 = (v77[14] >> 59) & 6 | ((v77[12] & 0x2000000000000000) != 0);
    if (v33 <= 2)
    {
      if (!v33)
      {
        goto LABEL_24;
      }

      goto LABEL_7;
    }

    goto LABEL_25;
  }

  if (!v22)
  {
    *v20 = 0;
    *(v3 + 16) = 0;
    *(v3 + 17) = 0;
    *(v3 + 18) = 1;
    *(v3 + 19) = 0;
    *(v3 + 20) = 0;
    *(v3 + 42) = 0;
    v35 = *v3;
    v85 = 0;
    v86 = 0xE000000000000000;
    v87 = 0;
    v88 = 0xE000000000000000;
    v89 = (v35 & 1) == 0;
    v36 = v3;
    v37 = sub_1B0C10BEC();
    v39 = v38;
    v40 = (*(v36 + 14) >> 59) & 6 | ((*(v36 + 12) & 0x2000000000000000) != 0);
    if (v40 <= 2)
    {
      if (v40)
      {
        goto LABEL_14;
      }

      goto LABEL_43;
    }

    goto LABEL_44;
  }

  v78 = v17;
  v75 = *(v3 + 16);
  v76 = v21;
  v42 = *(v3 + 42);
  v43 = *(v3 + 19);
  v44 = *(v3 + 20);
  v74 = v3[136];
  *v20 = 0;
  *(v3 + 16) = 0;
  *(v3 + 17) = 0;
  *(v3 + 18) = 2;
  *(v3 + 19) = 0;
  *(v3 + 20) = 0;
  *(v3 + 42) = 0;
  v45 = *(v3 + 1);
  v46 = *(v3 + 2);
  v47 = *(v3 + 3);
  v48 = *(v3 + 4);
  v72 = *v3;
  v77 = v43;
  v49 = v95;
  sub_1B0C154B8(v45, v46, v47, v48, v22, v43, v44, v42, &v81, v72);
  if (!v49)
  {
    v95 = 0;
    sub_1B0BD1280(v76, v75, v74);

    v79[0] = v83;
    v79[1] = v82;
    v79[2] = v81;
    *&v80[0] = 0;
    *(&v80[0] + 1) = 0xE000000000000000;
    *&v80[1] = 0;
    DWORD2(v80[1]) = v84 & 0x80201;
    BYTE12(v80[1]) = 0;
    v92 = v81;
    v93[0] = v80[0];
    v90 = v83;
    v91 = v82;
    *(v93 + 13) = *(v80 + 13);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v68 = v3;
    v37 = sub_1B0C11ACC();
    v39 = v69;
    sub_1B0BD12AC(v79);
    sub_1B0BD1300(&v81);
    v40 = (*(v68 + 14) >> 59) & 6 | ((*(v68 + 12) & 0x2000000000000000) != 0);
    if (v40 <= 2)
    {
      if (v40)
      {
LABEL_14:
        if (v40 == 1)
        {
          if (qword_1EB6DE340 != -1)
          {
            swift_once();
          }

          v41 = &qword_1EB737E98;
        }

        else
        {
          if (qword_1EB6DE338 != -1)
          {
            swift_once();
          }

          v41 = &qword_1EB737E88;
        }

        goto LABEL_60;
      }

LABEL_43:
      v41 = AuthenticationMechanism.plain.unsafeMutableAddressor();
LABEL_60:
      v64 = *v41;
      v63 = v41[1];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v65 = sub_1B0BD09D4(v37, v39, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
      v66 = v70;
      v67 = v71;
      sub_1B0391D50(v37, v39);
      goto LABEL_40;
    }

LABEL_44:
    if ((v40 - 5) >= 2)
    {
      if (v40 == 3)
      {
        if (qword_1EB6E5378 != -1)
        {
          swift_once();
        }

        v41 = &qword_1EB738388;
      }

      else
      {
        if (qword_1EB6E5380 != -1)
        {
          swift_once();
        }

        v41 = &qword_1EB738398;
      }
    }

    else
    {
      if (qword_1EB6E5370 != -1)
      {
        swift_once();
      }

      v41 = &qword_1EB738378;
    }

    goto LABEL_60;
  }

  sub_1B0BD1280(v76, v75, v74);

  sub_1B041C97C(a2, v19);
  sub_1B041C97C(a2, v15);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v50 = v49;
  v51 = sub_1B0E43988();
  v52 = sub_1B0E458E8();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    *&v79[0] = v95;
    *v53 = 68158466;
    *(v53 + 4) = 2;
    *(v53 + 8) = 256;
    v54 = v78;
    v55 = v15[*(v78 + 20)];
    sub_1B041C9E0(v15);
    *(v53 + 10) = v55;
    *(v53 + 11) = 2082;
    v56 = *&v19[*(v54 + 20) + 4];
    sub_1B041C9E0(v19);
    v57 = ConnectionID.debugDescription.getter(v56);
    v59 = sub_1B0399D64(v57, v58, v79);

    *(v53 + 13) = v59;
    *(v53 + 21) = 2112;
    v60 = sub_1B0E42CC8();
    *(v53 + 23) = v60;
    v61 = v77;
    *v77 = v60;
    _os_log_impl(&dword_1B0389000, v51, v52, "[%.*hhx-%{public}s] Authentication failed: %@", v53, 0x1Fu);
    sub_1B0BD096C(v61);
    MEMORY[0x1B272C230](v61, -1, -1);
    v62 = v95;
    __swift_destroy_boxed_opaque_existential_0(v95);
    MEMORY[0x1B272C230](v62, -1, -1);
    MEMORY[0x1B272C230](v53, -1, -1);
  }

  else
  {
    sub_1B041C9E0(v15);

    sub_1B041C9E0(v19);
  }

  swift_willThrow();
}